from __future__ import annotations
from pathlib import Path
from typing import Any
import json

def save_json(data: Any, path: str | Path):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        json.dump(data, f, indent=2)
    print(f"Saved → {path}")

def load_json(path: str | Path):
    with open(path) as f:
        return json.load(f)
