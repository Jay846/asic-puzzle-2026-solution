#!/usr/bin/env python3
import json
from pathlib import Path
from collections import defaultdict
from typing import Union
from tools.connectivity import build_connectivity

def emit_verilog(gds_path: Union[str, Path], pin_lib_path: Union[str, Path], out_path: Union[str, Path]):
    gds_path = Path(gds_path)
    pin_lib_path = Path(pin_lib_path)
    out_path = Path(out_path)

    # 1. Run connectivity engine to get raw pins and nets
    print("Running connectivity extraction...")
    conn = build_connectivity(gds_path, pin_lib_path, verbose=False)
    
    abs_pins = conn["abs_pins_raw"]
    net_list = conn["nets_raw"]

    pin_map = {p["id"]: p for p in abs_pins}
    
    # 2. Build pin_id to net_name mapping
    pin_id_to_net_name = {}
    declared_wires = set()
    ports = {"input": [], "output": []}
    
    # Identify all ports
    for p in abs_pins:
        if p["cell_id"] == "PIN":
            ports[p["dir"]].append(p["pin_name"])

    # Map net names
    for net in net_list:
        pins = [pin_map[pid] for pid in net["pins"] if pid in pin_map]
        
        # Check if the net connects to any top-level ports
        port_pins = [p for p in pins if p["cell_id"] == "PIN"]
        if port_pins:
            # Use the port name as the net name
            net_name = port_pins[0]["pin_name"]
        else:
            # Use the net_id as the net name
            net_name = f"net_{net['net_id']}"
            declared_wires.add(net_name)
            
        for p in pins:
            pin_id_to_net_name[p["id"]] = net_name

    module_name = conn.get("top_cell", "extracted_module")

    # 3. Generate Verilog code
    lines = []
    lines.append("// Auto-generated structural Verilog netlist from GDS geometric extraction")
    lines.append(f"// Source GDS: {gds_path.name}")
    lines.append("")
    lines.append(f"module {module_name} (")
    
    # Port list header
    all_port_names = sorted(ports["input"] + ports["output"])
    lines.append("  " + ",\n  ".join(all_port_names))
    lines.append(");")
    lines.append("")
    
    # Input/Output declarations
    for inp in sorted(ports["input"]):
        lines.append(f"  input {inp};")
    for outp in sorted(ports["output"]):
        lines.append(f"  output {outp};")
    lines.append("")

    # Wire declarations
    for wire in sorted(list(declared_wires)):
        lines.append(f"  wire {wire};")
    lines.append("")

    # Group pins by cell_id to instantiate cells
    cell_pins = defaultdict(list)
    for p in abs_pins:
        if p["cell_id"] != "PIN":
            cell_pins[p["cell_id"]].append(p)

    # Load master cell info from GDS to get all cell placements (including those without nets)
    from tools.connectivity import load_gds, get_top_cell, extract_cell_instances, is_infrastructure
    lib = load_gds(gds_path)
    top = get_top_cell(lib)
    instances = extract_cell_instances(lib, top.name)

    # Load pin library to know all pins per master cell type
    pin_lib = json.load(open(pin_lib_path))["cells"]

    # Write out each cell instance
    for idx, inst in enumerate(instances):
        master = inst["master"]
        # Skip infrastructure and cells not in library
        if is_infrastructure(master) or master not in pin_lib:
            continue
        
        inst_id = f"u{idx}"
        info = pin_lib[master]
        
        lines.append(f"  // Cell: {master} at {inst['origin']}")
        lines.append(f"  {master} {inst_id} (")
        
        # Connect each pin
        connections = []
        for pin in info["pins"]:
            # Skip power pins
            if pin["dir"] == "power" or pin["name"] == master or pin["name"].lower() == "sky130":
                continue
            
            # Find the absolute pin object for this instance and pin name
            matching_pins = [p for p in cell_pins[inst_id] if p["pin_name"] == pin["name"]]
            net_name = ""
            if matching_pins:
                p_obj = matching_pins[0]
                net_name = pin_id_to_net_name.get(p_obj["id"], "")
                
            connections.append(f"    .{pin['name']}({net_name})")
            
        lines.append(",\n".join(connections))
        lines.append("  );")
        lines.append("")

    lines.append("endmodule")
    lines.append("")

    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines))
    print(f"Emitted Verilog netlist to {out_path}")

if __name__ == "__main__":
    import sys
    gds = "warmup/04_final.gds"
    pin_lib = "extracted/pin_library.json"
    out = "extracted/geometric_warmup.v"
    if len(sys.argv) >= 4:
        gds, pin_lib, out = sys.argv[1], sys.argv[2], sys.argv[3]
    emit_verilog(gds, pin_lib, out)
