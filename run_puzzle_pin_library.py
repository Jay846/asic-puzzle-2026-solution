#!/usr/bin/env python3
from pathlib import Path
from tools.pin_library_builder import build_pin_library
from tools.utils import save_json

ROOT = Path(__file__).resolve().parent
PUZZLE_GDS = ROOT / "puzzle.gds"
OUT = ROOT / "extracted" / "puzzle_pin_library.json"

print("Building pin library from puzzle.gds ...\n")
result = build_pin_library(PUZZLE_GDS, verbose=True)
save_json(result, OUT)
print("Done.")
