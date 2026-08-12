"""
connectivity.py  –  v3.1
Physical geometric connectivity engine using:
  - Sweep-line polygon overlap detection
  - Layer-adjacency connectivity rules (excluding licon to prevent silicon shorts)
  - Union-Find (Disjoint Set Union) component grouping
  - Exact GDS label pin matching
"""

from __future__ import annotations
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Any, Tuple
import math
import gdstk

from .gds_reader import load_gds, get_top_cell, extract_cell_instances
from .cell_identifier import classify_by_name, is_infrastructure
from .utils import save_json, load_json
from .geometry_collector import layer_name


# ------------------------------------------------------------------
# Helpers & Union-Find
# ------------------------------------------------------------------

class UnionFind:
    def __init__(self, n: int):
        self.parent = list(range(n))

    def find(self, i: int) -> int:
        if self.parent[i] == i:
            return i
        self.parent[i] = self.find(self.parent[i])
        return self.parent[i]

    def union(self, i: int, j: int):
        root_i = self.find(i)
        root_j = self.find(j)
        if root_i != root_j:
            self.parent[root_i] = root_j


def transform_point(x: float, y: float,
                    origin: Tuple[float, float],
                    rotation: float,
                    x_reflection: bool) -> Tuple[float, float]:
    if x_reflection:
        y = -y
    if rotation:
        rad = rotation
        cos_r, sin_r = math.cos(rad), math.sin(rad)
        x, y = x * cos_r - y * sin_r, x * sin_r + y * cos_r
    return (origin[0] + x, origin[1] + y)



def point_to_segment_distance(px: float, py: float, x1: float, y1: float, x2: float, y2: float) -> float:
    dx = x2 - x1
    dy = y2 - y1
    if dx == 0 and dy == 0:
        return math.hypot(px - x1, py - y1)
    t = ((px - x1) * dx + (py - y1) * dy) / (dx * dx + dy * dy)
    t = max(0.0, min(1.0, t))
    proj_x = x1 + t * dx
    proj_y = y1 + t * dy
    return math.hypot(px - proj_x, py - proj_y)


def point_in_polygon(px: float, py: float, pts: List[Tuple[float, float]]) -> bool:
    n = len(pts)
    if n < 3:
        return False
    inside = False
    p1x, p1y = pts[0]
    for i in range(n + 1):
        p2x, p2y = pts[i % n]
        if py > min(p1y, p2y):
            if py <= max(p1y, p2y):
                if px <= max(p1x, p2x):
                    if p1y != p2y:
                        xints = (py - p1y) * (p2x - p1x) / (p2y - p1y) + p1x
                    if p1x == p2x or px <= xints:
                        inside = not inside
        p1x, p1y = p2x, p2y
    return inside


def point_to_polygon_distance(px: float, py: float, pts: List[Tuple[float, float]]) -> float:
    if point_in_polygon(px, py, pts):
        return 0.0
    min_dist = float('inf')
    n = len(pts)
    for i in range(n):
        x1, y1 = pts[i]
        x2, y2 = pts[(i + 1) % n]
        dist = point_to_segment_distance(px, py, x1, y1, x2, y2)
        if dist < min_dist:
            min_dist = dist
    return min_dist


def point_in_bbox(px: float, py: float,
                  bbox: Tuple[float, float, float, float],
                  tolerance: float = 0.08) -> bool:
    xmin, ymin, xmax, ymax = bbox
    return (xmin - tolerance) <= px <= (xmax + tolerance) and \
           (ymin - tolerance) <= py <= (ymax + tolerance)



def is_routing_layer(name: str) -> bool:
    """Exclude licon to avoid transistor/silicon-level short circuits."""
    name = name.lower()
    if name == "via_or_label":
        return False
    return any(x in name for x in ("met", "via", "li1", "mcon"))


def layers_connected(l1: str, l2: str) -> bool:
    if l1 == l2:
        return True
    pair = {l1, l2}
    if "mcon" in pair and "li1" in pair: return True
    if "mcon" in pair and "met1" in pair: return True
    if "via1" in pair and "met1" in pair: return True
    if "via1" in pair and "met2" in pair: return True
    if "via2" in pair and "met2" in pair: return True
    if "via2" in pair and "met3" in pair: return True
    if "via3" in pair and "met3" in pair: return True
    if "via3" in pair and "met4" in pair: return True
    if "via4" in pair and "met4" in pair: return True
    if "via4" in pair and "met5" in pair: return True
    return False


def polygons_touch(pts1: List[Tuple[float, float]], pts2: List[Tuple[float, float]], tolerance: float = 0.08) -> bool:
    # Check if any vertex of pts1 is close to pts2
    for x, y in pts1:
        if point_to_polygon_distance(x, y, pts2) <= tolerance:
            return True
    # Check if any vertex of pts2 is close to pts1
    for x, y in pts2:
        if point_to_polygon_distance(x, y, pts1) <= tolerance:
            return True
    return False




# ------------------------------------------------------------------
# Main Extraction
# ------------------------------------------------------------------

def build_connectivity(gds_path: str | Path,
                       pin_library_path: str | Path,
                       expand: float = 0.08,
                       verbose: bool = True) -> Dict[str, Any]:
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)
    pin_lib = load_json(pin_library_path)["cells"]

    # ------------------------------------------------------------------
    # 1. Absolute pins with exact landing pads
    # ------------------------------------------------------------------
    abs_pins = []
    pin_id = 0

    for idx, inst in enumerate(instances):
        master = inst["master"]
        if is_infrastructure(master) or master not in pin_lib:
            continue

        info = pin_lib[master]
        origin = inst["origin"]
        rot = inst["rotation"]
        refl = inst["x_reflection"]

        # Try to load cell geometry to associate landing pads
        cell = None
        try:
            cell = lib[master]
        except Exception:
            pass

        for pin in info["pins"]:
            # Exclude power pins and the cell name labels (which are placed at origin)
            if pin["dir"] == "power" or pin["name"] == master or pin["name"].lower() == "sky130":
                continue
            ax, ay = transform_point(pin["x"], pin["y"], origin, rot, refl)

            # Find all connected routing polygons inside the master cell for this pin
            landing_pads = []
            if cell is not None:
                # 1. Find all routing polygons in the master cell
                all_routing_polys = []
                for p_idx, poly in enumerate(cell.polygons):
                    p_name = layer_name(poly.layer, poly.datatype)
                    if is_routing_layer(p_name):
                        pts = [(float(x), float(y)) for x, y in poly.points]
                        all_routing_polys.append((p_idx, p_name, pts))

                # 2. Find start nodes close to the pin label location
                visited = set()
                queue = []
                for p_idx, p_name, pts in all_routing_polys:
                    if point_to_polygon_distance(pin["x"], pin["y"], pts) <= 0.08:
                        visited.add(p_idx)
                        queue.append(p_idx)

                # 3. Local BFS within the master cell to trace the entire pin net
                while queue:
                    curr = queue.pop(0)
                    curr_name = next(n for i, n, pts in all_routing_polys if i == curr)
                    curr_pts = next(pts for i, n, pts in all_routing_polys if i == curr)
                    for p_idx, p_name, pts in all_routing_polys:
                        if p_idx not in visited:
                            if layers_connected(curr_name, p_name):
                                if polygons_touch(curr_pts, pts, tolerance=0.08):
                                    visited.add(p_idx)
                                    queue.append(p_idx)

                # 4. Transform all traced polygons to absolute coordinates
                for p_idx in visited:
                    p_name = next(n for i, n, pts in all_routing_polys if i == p_idx)
                    pts = next(pts for i, n, pts in all_routing_polys if i == p_idx)
                    abs_pts = [transform_point(x, y, origin, rot, refl) for x, y in pts]
                    landing_pads.append({
                        "layer": p_name,
                        "points": abs_pts
                    })

            # Fallback to single point if no landing pad polygons found
            if not landing_pads:
                landing_pads.append({
                    "layer": "li1",
                    "points": [(ax, ay)]
                })

            abs_pins.append({
                "id": f"p{pin_id}",
                "cell_id": f"u{idx}",
                "master": master,
                "type": info["type"],
                "pin_name": pin["name"],
                "dir": pin["dir"],
                "x": round(ax, 3),
                "y": round(ay, 3),
                "landing_pads": landing_pads,
            })
            pin_id += 1

    # 1.5 Extract top-level ports as absolute pins from top cell labels
    ignored_port_names = {"VGND", "VPWR", "vccd", "vssd", "vccd1", "vssd1", "VDD", "GND"}
    for l in top.labels:
        name = l.text.strip()
        if name in ignored_port_names:
            continue
        lbl_layer_name = layer_name(l.layer, 20)
        lx, ly = l.origin
        pad = [
            (lx - 0.01, ly - 0.01),
            (lx + 0.01, ly - 0.01),
            (lx + 0.01, ly + 0.01),
            (lx - 0.01, ly + 0.01)
        ]
        port_dir = "input"
        if name == "S" or name == "success" or name.startswith("out") or "data_out" in name:
            port_dir = "output"
        abs_pins.append({
            "id": f"p{pin_id}",
            "cell_id": "PIN",
            "master": "PORT",
            "type": "PORT",
            "pin_name": name,
            "dir": port_dir,
            "x": round(lx, 3),
            "y": round(ly, 3),
            "landing_pads": [{"layer": lbl_layer_name, "points": pad}],
        })
        pin_id += 1

    if verbose:
        print(f"Absolute signal pins : {len(abs_pins)}")

    # ------------------------------------------------------------------
    # 2. Collect routing shapes (top-level routing + VIA instances only)
    #    Apply size filtering to discard large power rails/straps.
    # ------------------------------------------------------------------
    routing_bboxes = []   # list of (xmin, ymin, xmax, ymax, layer_name, points)
    discarded_power_shapes = 0

    def add_polygon(poly, origin=(0.0, 0.0), rot=0.0, refl=False):
        nonlocal discarded_power_shapes
        name = layer_name(poly.layer, poly.datatype)
        if not is_routing_layer(name):
            return
        pts = [transform_point(x, y, origin, rot, refl) for x, y in poly.points]
        xs = [p[0] for p in pts]
        ys = [p[1] for p in pts]
        if not xs:
            return
        xmin, ymin, xmax, ymax = min(xs), min(ys), max(xs), max(ys)
        w = xmax - xmin
        h = ymax - ymin
        area = w * h
        # Power strap filter: reject wide structures (power rails/straps) while keeping long narrow signal wires
        if min(w, h) > 1.0:
            discarded_power_shapes += 1
            return
        routing_bboxes.append((xmin, ymin, xmax, ymax, name, pts))

    # A. Top-level shapes
    for poly in top.polygons:
        add_polygon(poly)
    for path in top.paths:
        try:
            for poly in path.to_polygons():
                add_polygon(poly)
        except Exception:
            pass

    # B. Transformed master cell internal shapes (VIA cells and DIODE cells to connect layers)
    for inst in instances:
        master = inst["master"]
        if not (master.startswith("VIA") or "diode" in master.lower()):
            continue
        try:
            cell = lib[master]
        except Exception:
            continue
        origin = inst["origin"]
        rot = inst["rotation"]
        refl = inst["x_reflection"]
        for poly in cell.polygons:
            add_polygon(poly, origin, rot, refl)

    if verbose:
        print(f"Routing shapes (top + masters)       : {len(routing_bboxes)}")
        print(f"Discarded large power shapes         : {discarded_power_shapes}")

    # ------------------------------------------------------------------
    # 3. Sweep-line physical overlap grouping
    # ------------------------------------------------------------------
    # Sort shapes by xmin to run O(N log N) sweep-line overlap search
    shapes_sorted = sorted(
        [(s[0], s[1], s[2], s[3], s[4], s[5], idx) for idx, s in enumerate(routing_bboxes)],
        key=lambda x: x[0]
    )

    uf = UnionFind(len(routing_bboxes))
    overlap_tolerance = 0.05

    for i in range(len(shapes_sorted)):
        xmin_i, ymin_i, xmax_i, ymax_i, layer_i, pts_i, idx_i = shapes_sorted[i]
        for j in range(i + 1, len(shapes_sorted)):
            xmin_j, ymin_j, xmax_j, ymax_j, layer_j, pts_j, idx_j = shapes_sorted[j]
            if xmin_j > xmax_i + overlap_tolerance:
                break
            # Y overlap check
            if not (ymax_i < ymin_j - overlap_tolerance or ymax_j < ymin_i - overlap_tolerance):
                if layers_connected(layer_i, layer_j):
                    uf.union(idx_i, idx_j)

    # ------------------------------------------------------------------
    # 4. Match pins to components
    # ------------------------------------------------------------------
    pin_to_component = {}
    for pin in abs_pins:
        matched_indices = []
        for idx, (xmin, ymin, xmax, ymax, name, pts) in enumerate(routing_bboxes):
            matched = False
            for pad in pin["landing_pads"]:
                pad_layer = pad["layer"]
                pad_pts = pad["points"]
                if not layers_connected(name, pad_layer):
                    continue
                # Quick bbox check between pad and shape
                pad_xs = [p[0] for p in pad_pts]
                pad_ys = [p[1] for p in pad_pts]
                pad_xmin, pad_ymin, pad_xmax, pad_ymax = min(pad_xs), min(pad_ys), max(pad_xs), max(pad_ys)
                # Check if bboxes overlap within 0.08 tolerance
                if not (xmax < pad_xmin - 0.08 or xmin > pad_xmax + 0.08 or ymax < pad_ymin - 0.08 or ymin > pad_ymax + 0.08):
                    # Bboxes overlap, check true polygon touch
                    if polygons_touch(pts, pad_pts, tolerance=0.08):
                        matched = True
                        break
            if matched:
                matched_indices.append(idx)

        if matched_indices:
            # Union all matched shapes' components
            base_comp = uf.find(matched_indices[0])
            for idx in matched_indices[1:]:
                uf.union(matched_indices[0], idx)
            pin_to_component[pin["id"]] = uf.find(base_comp)



    # Group pins by component
    component_to_pins = defaultdict(list)
    for pin_id, comp in pin_to_component.items():
        component_to_pins[uf.find(comp)].append(pin_id)

    # Convert to list of nets
    net_list = []
    net_id_counter = 0
    for comp, pin_ids in component_to_pins.items():
        if len(pin_ids) < 2:
            continue
        net_list.append({
            "net_id": f"n{net_id_counter}",
            "pins": sorted(pin_ids),
            "size": len(pin_ids),
        })
        net_id_counter += 1

    if verbose:
        print(f"Nets with ≥ 2 pins       : {len(net_list)}")
        if net_list:
            sizes = [n["size"] for n in net_list]
            print(f"  avg pins / net         : {sum(sizes)/len(sizes):.1f}")
            print(f"  max pins in one net    : {max(sizes)}")

    # ------------------------------------------------------------------
    # 5. Build connections list
    # ------------------------------------------------------------------
    pin_map = {p["id"]: p for p in abs_pins}
    connections = []

    for net in net_list:
        pins = [pin_map[pid] for pid in net["pins"] if pid in pin_map]
        outputs = [p for p in pins if p["dir"] == "output"]
        inputs  = [p for p in pins if p["dir"] == "input"]
        if outputs and inputs:
            driver = outputs[0]
            for inp in inputs:
                connections.append({
                    "from": f"{driver['cell_id']}.{driver['pin_name']}",
                    "to":   f"{inp['cell_id']}.{inp['pin_name']}",
                    "net":  net["net_id"],
                })

    if verbose:
        print(f"\nSample connections (first 12):")
        for c in connections[:12]:
            print(f"  {c['from']:20s} → {c['to']}")

    result = {
        "source_gds": str(gds_path),
        "top_cell": top.name,
        "absolute_pins": len(abs_pins),
        "routing_shapes": len(routing_bboxes),
        "nets_found": len(net_list),
        "connection_count": len(connections),
        "connections_sample": connections[:40],
        "net_summary": net_list[:25],
        "abs_pins_raw": abs_pins,
        "nets_raw": net_list,
    }
    return result


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 3:
        print("Usage: python -m tools.connectivity <gds> <pin_library.json>")
        sys.exit(1)
    res = build_connectivity(sys.argv[1], sys.argv[2])
    json_res = res.copy()
    json_res.pop("abs_pins_raw", None)
    json_res.pop("nets_raw", None)
    save_json(json_res, Path("extracted") / "connectivity_report.json")
