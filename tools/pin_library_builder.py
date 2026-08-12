"""
pin_library_builder.py
Step 1: Build an exact pin-location library from the warmup GDS labels.

For every unique logic cell we record:
  - master name
  - bounding box
  - list of pins with exact relative coordinates (x, y) extracted from GDS labels
"""

from __future__ import annotations
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Any, Tuple
import gdstk

from .gds_reader import load_gds, get_top_cell, extract_cell_instances
from .cell_identifier import classify_by_name, is_infrastructure
from .utils import save_json


def get_bbox(cell: gdstk.Cell) -> Tuple[float, float, float, float]:
    """Return (xmin, ymin, xmax, ymax) of a cell."""
    bb = cell.bounding_box()
    if bb is None:
        return (0.0, 0.0, 0.0, 0.0)
    (xmin, ymin), (xmax, ymax) = bb
    return (float(xmin), float(ymin), float(xmax), float(ymax))


def pin_direction(pin_name: str) -> str:
    name = pin_name.upper()
    if name in ("VPWR", "VGND", "VDD", "VSS", "VPB", "VNB"):
        return "power"
    if name in ("X", "Y", "Q", "COUT", "SUM"):
        return "output"
    return "input"


def build_pin_library(gds_path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)

    # Collect unique logic masters
    masters = {}
    for inst in instances:
        master = inst["master"]
        if is_infrastructure(master):
            continue
        if master not in masters:
            try:
                cell_obj = lib[master]
                masters[master] = cell_obj
            except Exception:
                continue

    library = {}

    for master, cell_obj in masters.items():
        cell_type = classify_by_name(master)
        xmin, ymin, xmax, ymax = get_bbox(cell_obj)
        width = xmax - xmin
        height = ymax - ymin

        # Extract exact pin coordinates from labels
        pin_coords = defaultdict(list)
        for label in cell_obj.labels:
            txt = label.text
            lx, ly = float(label.origin[0]), float(label.origin[1])
            # Ignore cell name labels and metadata at the cell origin (0, 0)
            if abs(lx) < 1e-5 and abs(ly) < 1e-5:
                continue
            if txt == master or txt.lower() in (master.lower(), "sky130"):
                continue
            if not txt.isidentifier():
                continue
            pin_coords[txt].append((lx, ly))

        pins = []
        for name, coords in sorted(pin_coords.items()):
            # Average the coordinates to get the centroid of landing pads.
            avg_x = sum(c[0] for c in coords) / len(coords)
            avg_y = sum(c[1] for c in coords) / len(coords)
            pins.append({
                "name": name,
                "x": round(avg_x, 3),
                "y": round(avg_y, 3),
                "dir": pin_direction(name),
                "label_count": len(coords)
            })

        library[master] = {
            "type": cell_type,
            "bbox": {
                "xmin": round(xmin, 3),
                "ymin": round(ymin, 3),
                "xmax": round(xmax, 3),
                "ymax": round(ymax, 3),
                "width": round(width, 3),
                "height": round(height, 3),
            },
            "pins": pins,
            "pin_count": len(pins),
            "note": "Pin coordinates extracted exactly from GDS labels",
        }

    if verbose:
        print(f"=== Pin Library Builder (Exact): {gds_path} ===")
        print(f"Unique logic masters found : {len(library)}")
        print()
        for master, info in sorted(library.items(), key=lambda x: x[1]["type"]):
            print(f"{info['type']:8s}  {master}")
            print(f"         bbox: {info['bbox']['width']:.2f} × {info['bbox']['height']:.2f} µm")
            print(f"         pins:")
            for p in info["pins"]:
                print(f"           {p['name']:8s} @ ({p['x']:.3f}, {p['y']:.3f}) [{p['dir']}]")
            print()

    return {
        "source_gds": str(gds_path),
        "top_cell": top.name,
        "cell_count": len(library),
        "cells": library,
    }


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python -m tools.pin_library_builder <file.gds>")
        sys.exit(1)

    result = build_pin_library(sys.argv[1])
    out = Path("extracted") / "pin_library.json"
    save_json(result, out)
