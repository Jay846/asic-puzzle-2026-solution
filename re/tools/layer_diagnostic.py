"""
layer_diagnostic.py
Prints every unique (layer, datatype) pair found in a GDS with counts.
"""

from __future__ import annotations
from pathlib import Path
from collections import defaultdict
import gdstk
import sys

def diagnose_layers(gds_path: str | Path) -> None:
    lib = gdstk.read_gds(str(gds_path))
    counts = defaultdict(int)

    for cell in lib.cells:
        for poly in cell.polygons:
            key = (poly.layer, poly.datatype)
            counts[key] += 1
        for path in cell.paths:
            layers = getattr(path, "layers", [getattr(path, "layer", None)])
            datatypes = getattr(path, "datatypes", [getattr(path, "datatype", None)])
            for lyr, dt in zip(layers, datatypes):
                if lyr is not None and dt is not None:
                    counts[(lyr, dt)] += 1

    sorted_counts = sorted(counts.items(), key=lambda x: -x[1])

    print(f"=== Layer Diagnostic: {gds_path} ===")
    print(f"Unique (layer, datatype) pairs : {len(sorted_counts)}")
    print()
    print(f"{'Count':>8}  {'Layer':>6}  {'Datatype':>8}  Suggested name")
    print("-" * 50)

    for (layer, datatype), cnt in sorted_counts:
        suggestion = ""
        if layer in (65, 64):
            suggestion = "nwell / pwell"
        elif layer in (68,) and datatype in (16, 20):
            suggestion = "poly / diff"
        elif layer in (66, 67):
            suggestion = "li / licon related"
        elif layer in (70, 71, 72, 73, 74, 75, 76):
            suggestion = "metal / via / contact"
        elif layer >= 90:
            suggestion = "possibly text / label / other"

        print(f"{cnt:8d}  {layer:6d}  {datatype:8d}  {suggestion}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python layer_diagnostic.py <file.gds>")
        sys.exit(1)
    diagnose_layers(sys.argv[1])
