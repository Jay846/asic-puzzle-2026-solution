#!/usr/bin/env python3
from pathlib import Path
from tools.connectivity import build_connectivity
from tools.utils import save_json

ROOT = Path(__file__).resolve().parent
GDS = ROOT / "warmup" / "04_final.gds"
PIN_LIB = ROOT / "extracted" / "pin_library.json"
OUT = ROOT / "extracted" / "connectivity_report.json"

print("Running first geometric connectivity pass ...\n")
result = build_connectivity(GDS, PIN_LIB, expand=0.25, verbose=True)
save_json(result, OUT)
print("\nDone.")
