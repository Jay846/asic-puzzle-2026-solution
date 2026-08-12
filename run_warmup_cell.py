#!/usr/bin/env python3
"""Run cell identification on the official warmup."""

from pathlib import Path
from tools.cell_identifier import identify_cells
from tools.utils import save_json

ROOT = Path(__file__).resolve().parent
WARMUP_GDS = ROOT / "warmup" / "04_final.gds"
OUT = ROOT / "extracted" / "warmup_cells.json"

if not WARMUP_GDS.exists():
    raise FileNotFoundError(f"Cannot find {WARMUP_GDS}")

print("Running cell identification on warmup ...\n")
result = identify_cells(WARMUP_GDS, verbose=True)

# Save a lighter version (without full instance lists)
light = {k: v for k, v in result.items() if k != "fingerprints"}
light["fingerprints_sample"] = dict(list(result["fingerprints"].items())[:20])
save_json(light, OUT)

print("Done.")
