"""
gds_reader.py  –  Stage 2 foundation
Reads a GDSII file with gdstk and extracts useful structural information.
Works on both warmup/04_final.gds and the real puzzle.gds.
"""

from __future__ import annotations
import gdstk
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Tuple, Any
import json


def load_gds(path: str | Path) -> gdstk.Library:
    """Load a GDSII file and return the gdstk Library object."""
    path = Path(path)
    if not path.exists():
        raise FileNotFoundError(f"GDS file not found: {path}")
    lib = gdstk.read_gds(str(path))
    return lib


def summarize_library(lib: gdstk.Library) -> Dict[str, Any]:
    """High-level statistics about the GDS."""
    cells = list(lib.cells)
    top_cells = [c for c in cells if not any(c in other.dependencies(True) for other in cells if other is not c)]

    layer_counts = defaultdict(int)
    total_polygons = 0
    total_paths = 0
    total_references = 0

    for cell in cells:
        total_polygons += len(cell.polygons)
        total_paths += len(cell.paths)
        total_references += len(cell.references)
        for poly in cell.polygons:
            layer_counts[(poly.layer, poly.datatype)] += 1
        for path in cell.paths:
            for layer, datatype in zip(path.layers, path.datatypes):
                layer_counts[(layer, datatype)] += 1

    return {
        "num_cells": len(cells),
        "cell_names": sorted(c.name for c in cells),
        "top_cells": [c.name for c in top_cells],
        "total_polygons": total_polygons,
        "total_paths": total_paths,
        "total_references": total_references,
        "unique_layers": sorted(layer_counts.keys()),
        "layer_polygon_counts": {f"{l}/{d}": cnt for (l, d), cnt in sorted(layer_counts.items())},
    }


def extract_cell_instances(lib: gdstk.Library, top_cell_name: str | None = None) -> List[Dict]:
    """
    Walk the hierarchy and return every cell instance with its
    master name, absolute origin, rotation, and reflection.
    """
    if top_cell_name is None:
        # Heuristic: pick the cell with the largest bounding box
        cells = list(lib.cells)
        top = max(cells, key=lambda c: (c.bounding_box()[1][0] - c.bounding_box()[0][0]) *
                                       (c.bounding_box()[1][1] - c.bounding_box()[0][1])
                  if c.bounding_box() else 0)
    else:
        top = lib[top_cell_name]

    instances = []

    for ref in top.references:
        origin = ref.origin
        rotation = ref.rotation
        x_reflection = ref.x_reflection

        instances.append({
            "master": ref.cell.name if hasattr(ref.cell, "name") else str(ref.cell),
            "origin": (float(origin[0]), float(origin[1])),
            "rotation": float(rotation),
            "x_reflection": bool(x_reflection),
            "parent": top.name,
        })

    return instances


def get_top_cell(lib: gdstk.Library) -> gdstk.Cell:
    """Return the most likely top-level cell."""
    cells = list(lib.cells)
    # Prefer cells that are not referenced by anyone else
    referenced = set()
    for c in cells:
        for ref in c.references:
            if hasattr(ref.cell, "name"):
                referenced.add(ref.cell.name)
    tops = [c for c in cells if c.name not in referenced]
    if tops:
        return max(tops, key=lambda c: len(c.polygons) + len(c.references))
    # Fallback
    return max(cells, key=lambda c: len(c.polygons) + len(c.references))


def analyze_gds(path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    """
    Full analysis entry point.
    Returns a dict that can be saved as JSON for later stages.
    """
    lib = load_gds(path)
    summary = summarize_library(lib)
    top = get_top_cell(lib)
    summary["chosen_top_cell"] = top.name

    instances = extract_cell_instances(lib, top.name)
    summary["num_instances"] = len(instances)

    # Count how many times each master is used
    master_counts = defaultdict(int)
    for inst in instances:
        master_counts[inst["master"]] += 1
    summary["master_usage"] = dict(sorted(master_counts.items(), key=lambda x: -x[1]))

    if verbose:
        print(f"=== GDS Analysis: {path} ===")
        print(f"Top cell          : {top.name}")
        print(f"Total cells       : {summary['num_cells']}")
        print(f"Total instances   : {summary['num_instances']}")
        print(f"Total polygons    : {summary['total_polygons']}")
        print(f"Unique layers     : {len(summary['unique_layers'])}")
        print("\nMost common cell masters:")
        for master, cnt in list(summary["master_usage"].items())[:15]:
            print(f"  {cnt:5d}  ×  {master}")
        print()

    summary["instances"] = instances  # full list (can be large)
    return summary


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python -m tools.gds_reader <path-to.gds>")
        sys.exit(1)

    result = analyze_gds(sys.argv[1])
    # Save a lightweight version (without the full instance list)
    light = {k: v for k, v in result.items() if k != "instances"}
    out = Path("extracted") / (Path(sys.argv[1]).stem + "_summary.json")
    out.parent.mkdir(parents=True, exist_ok=True)
    with open(out, "w") as f:
        json.dump(light, f, indent=2)
    print(f"Summary written to {out}")
