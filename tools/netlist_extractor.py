"""
netlist_extractor.py
Stage 4–5: Connectivity + Verilog emission

Supports two modes:
  Path A (named)   – uses master names still present in the GDS (works on warmup)
  Path B (geometric) – skeleton for pure geometry-based extraction (needed for real puzzle)
"""

from __future__ import annotations
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Any, Optional
import gdstk

from .gds_reader import load_gds, get_top_cell, extract_cell_instances
from .cell_identifier import classify_by_name, geometric_fingerprint
from .utils import save_json


# ------------------------------------------------------------------
# Helpers
# ------------------------------------------------------------------

def is_infrastructure(master: str) -> bool:
    t = classify_by_name(master)
    return t in ("VIA", "FILL/DECAP")


def clean_cell_name(master: str) -> str:
    """Make a legal Verilog identifier from a master name."""
    name = master.replace("sky130_fd_sc_hd__", "")
    name = name.replace("-", "_").replace(".", "_")
    return name


# ------------------------------------------------------------------
# Path A – Named extraction (works on warmup right now)
# ------------------------------------------------------------------

def extract_named_netlist(gds_path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    """
    Path A: Use the cell names that are still present in the GDS.
    This is reliable for the warmup and gives us a working netlist quickly.
    """
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)

    # Keep only real logic cells
    logic_instances = []
    for i, inst in enumerate(instances):
        master = inst["master"]
        if is_infrastructure(master):
            continue
        logic_instances.append({
            "id": f"u{i}",
            "master": master,
            "type": classify_by_name(master),
            "origin": inst["origin"],
            "rotation": inst["rotation"],
            "x_reflection": inst["x_reflection"],
        })

    if verbose:
        print(f"[Path A] Logic cells kept : {len(logic_instances)}")
        type_count = defaultdict(int)
        for inst in logic_instances:
            type_count[inst["type"]] += 1
        for t, c in sorted(type_count.items(), key=lambda x: -x[1]):
            print(f"  {c:4d} × {t}")

    return {
        "mode": "named",
        "top_cell": top.name,
        "instances": logic_instances,
    }


# ------------------------------------------------------------------
# Path B – Geometric skeleton (to be completed)
# ------------------------------------------------------------------

def extract_geometric_netlist(gds_path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    """
    Path B: Pure geometry route (required for the real puzzle.gds).
    Currently returns the same instance list + fingerprints.
    Real connectivity (via intersection + flood-fill + pin matching)
    will be added in the next iteration.
    """
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)

    # Group by geometric fingerprint
    fp_map = defaultdict(list)
    for inst in instances:
        master = inst["master"]
        if is_infrastructure(master):
            continue
        try:
            cell_obj = lib[master]
            fp = geometric_fingerprint(cell_obj)
        except Exception:
            fp = f"name:{master}"
        fp_map[fp].append(inst)

    if verbose:
        print(f"[Path B] Unique logic fingerprints : {len(fp_map)}")
        print("  (Full geometric connectivity not yet implemented)")

    return {
        "mode": "geometric_skeleton",
        "top_cell": top.name,
        "fingerprints": {fp: len(lst) for fp, lst in fp_map.items()},
        "note": "Connectivity tracing still TODO – this is only the skeleton",
    }


# ------------------------------------------------------------------
# Verilog emission (works with Path A result)
# ------------------------------------------------------------------

def emit_verilog(named_result: Dict[str, Any], out_path: str | Path,
                 module_name: str = "extracted") -> None:
    """
    Emit a minimal gate-level Verilog from the named extraction.
    This is intentionally simple – it declares the cells but does
    not yet have the real net connectivity (that comes with Path B).
    """
    lines = []
    lines.append(f"// Auto-generated netlist – mode = {named_result['mode']}")
    lines.append(f"// Top cell in GDS: {named_result['top_cell']}")
    lines.append("")
    lines.append(f"module {module_name} (")
    lines.append("  input  clk,")
    lines.append("  input  rst_n,")
    lines.append("  input  enable,")
    lines.append("  input  [7:0] data_in,   // placeholder width")
    lines.append("  output success,")
    lines.append("  output [7:0] data_out   // placeholder")
    lines.append(");")
    lines.append("")

    # Declare instances (no real nets yet)
    for inst in named_result["instances"]:
        cell = clean_cell_name(inst["master"])
        inst_id = inst["id"]
        lines.append(f"  // {inst['type']} @ {inst['origin']}")
        lines.append(f"  {cell} {inst_id} ( /* nets still TODO */ );")
        lines.append("")

    lines.append("endmodule")
    lines.append("")

    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines))
    print(f"Verilog written → {out_path}")


# ------------------------------------------------------------------
# Main entry
# ------------------------------------------------------------------

def run_extraction(gds_path: str | Path,
                   mode: str = "both",
                   out_dir: str | Path = "extracted") -> None:
    gds_path = Path(gds_path)
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    print(f"=== Netlist Extraction: {gds_path} ===\n")

    if mode in ("named", "both", "A"):
        print(">>> Path A (named cells)")
        named = extract_named_netlist(gds_path, verbose=True)
        save_json(named, out_dir / "named_instances.json")
        emit_verilog(named, out_dir / "extracted_named.v")
        print()

    if mode in ("geometric", "both", "B"):
        print(">>> Path B (geometric skeleton)")
        geo = extract_geometric_netlist(gds_path, verbose=True)
        save_json(geo, out_dir / "geometric_skeleton.json")
        print()

    print("Done.")


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python -m tools.netlist_extractor <file.gds> [named|geometric|both]")
        sys.exit(1)

    gds = sys.argv[1]
    mode = sys.argv[2] if len(sys.argv) > 2 else "both"
    run_extraction(gds, mode=mode)
