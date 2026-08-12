#!/usr/bin/env python3
from pathlib import Path
from tools.pin_library_builder import build_pin_library
from tools.utils import save_json

ROOT = Path(__file__).resolve().parent
WARMUP_GDS = ROOT / "warmup" / "04_final.gds"
OUT = ROOT / "extracted" / "pin_library.json"

print("Building pin library from warmup ...\n")
result = build_pin_library(WARMUP_GDS, verbose=True)
save_json(result, OUT)
print("Done.")
