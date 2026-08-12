cat > tools/cleanup_connectivity.py << 'EOF'
"""
cleanup_connectivity.py
Removes self-connections and keeps only inter-cell nets.
"""

from pathlib import Path
from collections import defaultdict
from .utils import load_json, save_json


def cleanup(report_path: str | Path, out_path: str | Path = None):
    data = load_json(report_path)

    connections = data.get("connections_sample", []) or data.get("connections", [])
    # Also try the full list if it exists
    if "connection_count" in data and data["connection_count"] > len(connections):
        # We only stored a sample earlier – for now work with what we have
        pass

    clean = []
    self_loops = 0

    for c in connections:
        src_cell = c["from"].split(".")[0]
        dst_cell = c["to"].split(".")[0]
        if src_cell == dst_cell:
            self_loops += 1
            continue
        clean.append(c)

    print(f"Original connections (sample) : {len(connections)}")
    print(f"Self-loops removed            : {self_loops}")
    print(f"Clean inter-cell connections  : {len(clean)}")
    print()

    if clean:
        print("Clean connections (first 20):")
        for c in clean[:20]:
            print(f"  {c['from']:22s} → {c['to']}")
    else:
        print("No clean inter-cell connections found in the sample.")
        print("We should tighten the expand value or improve matching.")

    result = {
        "original_sample_size": len(connections),
        "self_loops_removed": self_loops,
        "clean_connections": clean,
        "clean_count": len(clean),
    }

    if out_path is None:
        out_path = Path(report_path).parent / "connectivity_clean.json"
    save_json(result, out_path)
    return result


if __name__ == "__main__":
    import sys
    report = sys.argv[1] if len(sys.argv) > 1 else "extracted/connectivity_report.json"
    cleanup(report)
EOF