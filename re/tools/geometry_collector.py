"""
geometry_collector.py
Step 2A: Collect metal + via polygons from a GDS and build a spatial summary.

This is the foundation for geometric connectivity (Path B).
"""

from __future__ import annotations
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Any, Tuple
import gdstk

from .gds_reader import load_gds, get_top_cell
from .utils import save_json


# ------------------------------------------------------------------
# SKY130 / common open-source PDK layer map (layer, datatype) → name
# This covers the layers typically present in the Jane Street warmup/puzzle.
# ------------------------------------------------------------------

LAYER_MAP = {
    # Wells / Substrate
    (64, 20): "pwell",
    (64, 16): "pwell",
    (65, 20): "diff",
    (65, 44): "tap",

    # Active / Poly
    (66, 20): "poly",
    (66, 44): "licon",

    # Local Interconnect
    (67, 20): "li1",
    (67, 16): "li1",
    (67, 44): "mcon",

    # Metal 1
    (68, 20): "met1",
    (68, 16): "met1",
    (68, 44): "via1",

    # Metal 2
    (69, 20): "met2",
    (69, 16): "met2",
    (69, 44): "via2",

    # Metal 3
    (70, 20): "met3",
    (70, 16): "met3",
    (70, 44): "via3",

    # Metal 4
    (71, 20): "met4",
    (71, 16): "met4",
    (71, 44): "via4",

    # Metal 5
    (72, 20): "met5",
    (72, 16): "met5",
    (72, 44): "via5",

    # Higher / other
    (78, 44): "via_or_label",
    (81,  4): "label",
    (93, 44): "label",
    (94, 20): "label",
    (95, 20): "label",
    (122,16): "label",
    (235, 4): "label",
    (236, 0): "label",
}



def layer_name(layer: int, datatype: int) -> str:
    key = (layer, datatype)
    if key in LAYER_MAP:
        return LAYER_MAP[key]
    return f"unknown_{layer}_{datatype}"


def is_routing_layer(name: str) -> bool:
    """Return True for layers that participate in signal routing."""
    name = name.lower()
    return any(x in name for x in ("met", "via", "li1", "mcon", "licon"))


def collect_geometry(gds_path: str | Path, verbose: bool = True) -> Dict[str, Any]:
    lib = load_gds(gds_path)
    top = get_top_cell(lib)

    # We flatten everything into the top cell coordinate system
    # gdstk can do this with flatten(), but we collect carefully.

    layer_polys: Dict[str, List[Dict]] = defaultdict(list)
    layer_counts = defaultdict(int)
    total_polys = 0

    # Walk all cells and collect polygons + paths
    # For a first version we collect from every cell (including masters)
    # Later we can restrict to the flattened top-level view.
    for cell in lib.cells:
        # Polygons
        for poly in cell.polygons:
            name = layer_name(poly.layer, poly.datatype)
            layer_counts[name] += 1
            total_polys += 1

            # Store a lightweight representation (bounding box + layer)
            # Full point lists are kept only for routing layers to save memory
            bb = poly.bounding_box()
            entry = {
                "layer": name,
                "gds_layer": poly.layer,
                "datatype": poly.datatype,
                "bbox": [round(bb[0][0], 3), round(bb[0][1], 3),
                         round(bb[1][0], 3), round(bb[1][1], 3)] if bb else None,
            }
            if is_routing_layer(name):
                # keep simplified points for later connectivity
                pts = [(round(x, 3), round(y, 3)) for x, y in poly.points]
                entry["points"] = pts
            layer_polys[name].append(entry)

        # Paths (FlexPath / RobustPath)
        for path in cell.paths:
            layers = getattr(path, "layers", [getattr(path, "layer", 0)])
            datatypes = getattr(path, "datatypes", [getattr(path, "datatype", 0)])
            for lyr, dt in zip(layers, datatypes):
                name = layer_name(lyr, dt)
                layer_counts[name] += 1
                total_polys += 1
                # Paths are converted to polygons internally by gdstk if needed;
                # for now we just count them.

    # Summary
    routing_layers = {k: v for k, v in layer_counts.items() if is_routing_layer(k)}
    other_layers   = {k: v for k, v in layer_counts.items() if not is_routing_layer(k)}

    result = {
        "source_gds": str(gds_path),
        "top_cell": top.name,
        "total_polygons": total_polys,
        "routing_layer_counts": dict(sorted(routing_layers.items(), key=lambda x: -x[1])),
        "other_layer_counts": dict(sorted(other_layers.items(), key=lambda x: -x[1])),
        "routing_layers_present": sorted(routing_layers.keys()),
        # We do not dump all polygons into the JSON (too large).
        # Full geometry stays in memory for the next step.
    }

    if verbose:
        print(f"=== Geometry Collector: {gds_path} ===")
        print(f"Top cell          : {top.name}")
        print(f"Total polygons    : {total_polys}")
        print(f"\nRouting layers (metal / via / li):")
        for name, cnt in result["routing_layer_counts"].items():
            print(f"  {cnt:6d}  ×  {name}")
        print(f"\nOther layers:")
        for name, cnt in list(result["other_layer_counts"].items())[:10]:
            print(f"  {cnt:6d}  ×  {name}")
        if len(result["other_layer_counts"]) > 10:
            print(f"  ... and {len(result['other_layer_counts'])-10} more")
        print()

    return result


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python -m tools.geometry_collector <file.gds>")
        sys.exit(1)

    res = collect_geometry(sys.argv[1])
    out = Path("extracted") / "geometry_summary.json"
    save_json(res, out)
