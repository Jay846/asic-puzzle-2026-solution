"""
cell_identifier.py – Stage 3 foundation
Takes the instance list from gds_reader and groups cells by geometric fingerprint.
Also provides a first-pass classification for common SKY130 cells when names are present.
"""

from __future__ import annotations
from collections import defaultdict
from typing import Dict, List, Any
import hashlib
import gdstk
from pathlib import Path

from .gds_reader import load_gds, get_top_cell, extract_cell_instances  # adjust import if needed


def geometric_fingerprint(cell: gdstk.Cell, precision: int = 3) -> str:
    """
    Create a stable hash of a cell's geometry (polygons + paths).
    Used when cell names have been stripped.
    """
    coords = []

    for poly in cell.polygons:
        # layer/datatype + rounded points
        pts = [(round(x, precision), round(y, precision)) for x, y in poly.points]
        coords.append((poly.layer, poly.datatype, tuple(sorted(pts))))

    for path in cell.paths:
        # FlexPath / RobustPath handling
        layers = path.layers if hasattr(path, "layers") else [path.layer]
        datatypes = path.datatypes if hasattr(path, "datatypes") else [path.datatype]
        for lyr, dt in zip(layers, datatypes):
            pts = [(round(x, precision), round(y, precision)) for x, y in path.spine()]
            coords.append((lyr, dt, tuple(pts)))

    # deterministic string
    blob = str(sorted(coords)).encode()
    return hashlib.sha256(blob).hexdigest()[:16]


def classify_by_name(master: str) -> str:
    """Improved classification for SKY130 standard cells + vias."""
    m = master.lower()

    # --- Infrastructure (can be filtered later) ---
    if m.startswith("via_") or "via" in m and "sky130" not in m:
        return "VIA"
    if "tapvpwrvgnd" in m or "decap" in m or "fill" in m or "diode" in m:
        return "FILL/DECAP"

    # --- Flip-flops ---
    if any(x in m for x in ["dfrtp", "dfxtp", "dfxbp", "dfbbp", "dfsbp", "dfrbp", "dff"]):
        return "DFF"

    # --- Basic gates (order matters due to substrings) ---
    if "nand" in m:
        return "NAND"
    if "xnor" in m or "xor" in m:
        return "XOR"
    if "nor" in m:
        return "NOR"
    if "inv" in m or "clkinv" in m:
        return "INV"
    if "buf" in m:
        return "BUF"
    if "and" in m:
        return "AND"
    if "or" in m:
        return "OR"
    if "mux" in m:
        return "MUX"

    # --- Complex / AOI / OAI ---
    if any(x in m for x in ["a21o", "a22o", "a31o", "a32o", "a41o", "a21bo", "a21boi"]):
        return "AOI/OA"
    if any(x in m for x in ["o21a", "o22a", "o31a", "o32a", "o21bai", "o21ba", "o21ai"]):
        return "AOI/OA"

    # --- Misc ---
    if "fa" in m or "ha" in m:          # full/half adder
        return "ADDER"
    if "maj" in m:
        return "MAJ"
    if "clkbuf" in m or "clkdly" in m:
        return "CLKBUF"

    return "UNKNOWN"


def is_infrastructure(master: str) -> bool:
    t = classify_by_name(master)
    return t in ("VIA", "FILL/DECAP")


def identify_cells(gds_path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    """
    Main entry point.
    Returns:
      - fingerprint → list of instances
      - fingerprint → guessed type
      - statistics
    """
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)

    # Group by geometric fingerprint
    fp_to_instances = defaultdict(list)
    fp_to_master = {}
    fp_to_type = {}

    # Also keep a master-name based view (useful on warmup)
    master_to_count = defaultdict(int)
    master_to_type = {}

    for inst in instances:
        master = inst["master"]
        master_to_count[master] += 1

        # We need the actual cell object to compute fingerprint
        # (in flat designs the master name usually exists in lib)
        try:
            cell_obj = lib[master]
            fp = geometric_fingerprint(cell_obj)
        except Exception:
            # fallback – use master name as fingerprint when geometry not available
            fp = f"name:{master}"

        fp_to_instances[fp].append(inst)
        fp_to_master[fp] = master
        fp_to_type[fp] = classify_by_name(master)
        master_to_type[master] = classify_by_name(master)

    # ---------- counting (instance-based) ----------
    type_instance_counts = defaultdict(int)
    for fp, inst_list in fp_to_instances.items():
        t = fp_to_type[fp]
        type_instance_counts[t] += len(inst_list)

    logic_only = {k: v for k, v in type_instance_counts.items()
                  if k not in ("VIA", "FILL/DECAP")}

    result = {
        "top_cell": top.name,
        "total_instances": len(instances),
        "unique_fingerprints": len(fp_to_instances),
        "type_distribution": dict(sorted(type_instance_counts.items(), key=lambda x: -x[1])),
        "logic_only": dict(sorted(logic_only.items(), key=lambda x: -x[1])),
        "master_usage": dict(sorted(master_to_count.items(), key=lambda x: -x[1])),
        "fingerprints": {
            fp: {
                "master": fp_to_master[fp],
                "type": fp_to_type[fp],
                "count": len(fp_to_instances[fp]),
                "example_origin": fp_to_instances[fp][0]["origin"] if fp_to_instances[fp] else None,
            }
            for fp in fp_to_instances
        },
    }

    if verbose:
        print(f"=== Cell Identification: {gds_path} ===")
        print(f"Top cell            : {result['top_cell']}")
        print(f"Total instances     : {result['total_instances']}")
        print(f"Unique fingerprints : {result['unique_fingerprints']}")

        print("\nType distribution (by instance count):")
        for t, c in result["type_distribution"].items():
            print(f"  {c:5d}  ×  {t}")

        print("\nLogic cells only (excluding VIA & FILL/DECAP):")
        for t, c in result["logic_only"].items():
            print(f"  {c:5d}  ×  {t}")

        print("\nTop masters:")
        for m, c in list(result["master_usage"].items())[:15]:
            print(f"  {c:5d}  ×  {m}")
        print()

    return result


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python -m tools.cell_identifier <file.gds>")
        sys.exit(1)
    identify_cells(sys.argv[1])
