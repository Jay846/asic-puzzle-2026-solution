#!/usr/bin/env python3
"""Quick test of the GDS reader on the official warmup."""

import sys
from pathlib import Path

# Add the 're' directory to sys.path so we can import 'tools'
ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "re"))

from tools.gds_reader import analyze_gds

WARMUP_GDS = ROOT / "warmup" / "04_final.gds"

if not WARMUP_GDS.exists():
    raise FileNotFoundError(f"Cannot find {WARMUP_GDS}. Are you in the repo root?")

print("Analyzing warmup/04_final.gds ...\n")
result = analyze_gds(WARMUP_GDS, verbose=True)

print("Done. Next we will look at the real puzzle.gds the same way.")
