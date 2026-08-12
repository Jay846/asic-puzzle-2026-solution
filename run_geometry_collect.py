#!/usr/bin/env python3
from pathlib import Path
from tools.geometry_collector import collect_geometry
from tools.utils import save_json

ROOT = Path(__file__).resolve().parent
WARMUP_GDS = ROOT / "warmup" / "04_final.gds"
OUT = ROOT / "extracted" / "geometry_summary.json"

print("Collecting geometry from warmup ...\n")
result = collect_geometry(WARMUP_GDS, verbose=True)
save_json(result, OUT)
print("Done.")
