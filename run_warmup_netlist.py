#!/usr/bin/env python3
from pathlib import Path
from tools.netlist_extractor import run_extraction

ROOT = Path(__file__).resolve().parent
WARMUP_GDS = ROOT / "warmup" / "04_final.gds"

run_extraction(WARMUP_GDS, mode="both", out_dir=ROOT / "extracted")
