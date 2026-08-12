"""
simulator.py
Stage 6: Cycle-accurate gate-level simulation

Parses a structural Verilog netlist, builds a topological evaluation graph,
and runs cycle-by-cycle simulation of inputs to verify functionality.
"""

from __future__ import annotations
import re
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Any, Set, Tuple

# ------------------------------------------------------------------
# Gate Evaluation Functions
# ------------------------------------------------------------------

def eval_nand2(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) & pins.get("B", 0))}

def eval_nand3(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) & pins.get("B", 0) & pins.get("C", 0))}

def eval_nand4(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) & pins.get("B", 0) & pins.get("C", 0) & pins.get("D", 0))}

def eval_and2(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) & pins.get("B", 0)
    return {"X": val, "Y": val}

def eval_and3(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) & pins.get("B", 0) & pins.get("C", 0)
    return {"X": val, "Y": val}

def eval_and4(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) & pins.get("B", 0) & pins.get("C", 0) & pins.get("D", 0)
    return {"X": val, "Y": val}

def eval_and4bb(pins: Dict[str, int]) -> Dict[str, int]:
    # Two inputs inverted (A_N, B_N) and two inputs active-high (C, D)
    a_n = pins.get("A_N", 0)
    b_n = pins.get("B_N", 0)
    c = pins.get("C", 0)
    d = pins.get("D", 0)
    return {"X": (1 - a_n) & (1 - b_n) & c & d}

def eval_or2(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) | pins.get("B", 0)
    return {"X": val, "Y": val}

def eval_or3(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0)
    return {"X": val, "Y": val}

def eval_or4(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0) | pins.get("D", 0)
    return {"X": val, "Y": val}

def eval_nor2(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) | pins.get("B", 0))}

def eval_nor3(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0))}

def eval_nor4(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0) | pins.get("D", 0))}

def eval_xor2(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0) ^ pins.get("B", 0)
    return {"X": val, "Y": val}

def eval_xnor2(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) ^ pins.get("B", 0))}

def eval_inv(pins: Dict[str, int]) -> Dict[str, int]:
    val = 1 - pins.get("A", 0)
    return {"Y": val, "X": val}

def eval_buf(pins: Dict[str, int]) -> Dict[str, int]:
    val = pins.get("A", 0)
    return {"Y": val, "X": val}

def eval_mux2(pins: Dict[str, int]) -> Dict[str, int]:
    a0 = pins.get("A0", 0)
    a1 = pins.get("A1", 0)
    s = pins.get("S", 0)
    return {"X": a1 if s else a0}

def eval_a21o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0)) | pins.get("B1", 0)}

def eval_a21bo(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0)) | (1 - pins.get("B1_N", 0))}

def eval_a21boi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | (1 - pins.get("B1_N", 0)))}

def eval_a31o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0) & pins.get("A3", 0)) | pins.get("B1", 0)}

def eval_o21ai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0)) & pins.get("B1", 0))}

def eval_o21bai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0)) & (1 - pins.get("B1_N", 0)))}

def eval_conb(pins: Dict[str, int]) -> Dict[str, int]:
    return {"HI": 1, "LO": 0}

def eval_a2111oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | pins.get("B1", 0) | pins.get("C1", 0) | pins.get("D1", 0))}

def eval_a211o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0)) | pins.get("B1", 0) | pins.get("C1", 0)}

def eval_a211oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | pins.get("B1", 0) | pins.get("C1", 0))}

def eval_a21oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | pins.get("B1", 0))}

def eval_a221o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0)) | (pins.get("B1", 0) & pins.get("B2", 0)) | pins.get("C1", 0)}

def eval_a221oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | (pins.get("B1", 0) & pins.get("B2", 0)) | pins.get("C1", 0))}

def eval_a22o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0)) | (pins.get("B1", 0) & pins.get("B2", 0))}

def eval_a22oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0)) | (pins.get("B1", 0) & pins.get("B2", 0)))}

def eval_a311o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0) & pins.get("A3", 0)) | pins.get("B1", 0) | pins.get("C1", 0)}

def eval_a31oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0) & pins.get("A3", 0)) | pins.get("B1", 0))}

def eval_a32o(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) & pins.get("A2", 0) & pins.get("A3", 0)) | (pins.get("B1", 0) & pins.get("B2", 0))}

def eval_a41oi(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) & pins.get("A2", 0) & pins.get("A3", 0) & pins.get("A4", 0)) | pins.get("B1", 0))}

def eval_and2b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (1 - pins.get("A_N", 0)) & pins.get("B", 0)}

def eval_and3b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (1 - pins.get("A_N", 0)) & pins.get("B", 0) & pins.get("C", 0)}

def eval_and4b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (1 - pins.get("A_N", 0)) & pins.get("B", 0) & pins.get("C", 0) & pins.get("D", 0)}

def eval_nand2b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((1 - pins.get("A_N", 0)) & pins.get("B", 0))}

def eval_nand3b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((1 - pins.get("A_N", 0)) & pins.get("B", 0) & pins.get("C", 0))}

def eval_nor3b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) | pins.get("B", 0) | (1 - pins.get("C_N", 0)))}

def eval_nor4b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - (pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0) | (1 - pins.get("D_N", 0)))}

def eval_o211a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0)) & pins.get("B1", 0) & pins.get("C1", 0)}

def eval_o211ai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0)) & pins.get("B1", 0) & pins.get("C1", 0))}

def eval_o21a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0)) & pins.get("B1", 0)}

def eval_o21ba(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0)) & (1 - pins.get("B1_N", 0))}

def eval_o221a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0)) & (pins.get("B1", 0) | pins.get("B2", 0)) & pins.get("C1", 0)}

def eval_o22a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0)) & (pins.get("B1", 0) | pins.get("B2", 0))}

def eval_o22ai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0)) & (pins.get("B1", 0) | pins.get("B2", 0)))}

def eval_o2bb2a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": ((1 - pins.get("A1_N", 0)) | (1 - pins.get("A2_N", 0))) & (pins.get("B1", 0) | pins.get("B2", 0))}

def eval_o311a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0) | pins.get("A3", 0)) & pins.get("B1", 0) & pins.get("C1", 0)}

def eval_o31a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0) | pins.get("A3", 0)) & pins.get("B1", 0)}

def eval_o31ai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0) | pins.get("A3", 0)) & pins.get("B1", 0))}

def eval_o32a(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": (pins.get("A1", 0) | pins.get("A2", 0) | pins.get("A3", 0)) & (pins.get("B1", 0) | pins.get("B2", 0))}

def eval_o32ai(pins: Dict[str, int]) -> Dict[str, int]:
    return {"Y": 1 - ((pins.get("A1", 0) | pins.get("A2", 0) | pins.get("A3", 0)) & (pins.get("B1", 0) | pins.get("B2", 0)))}

def eval_or3b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": pins.get("A", 0) | pins.get("B", 0) | (1 - pins.get("C_N", 0))}

def eval_or4b(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": pins.get("A", 0) | pins.get("B", 0) | pins.get("C", 0) | (1 - pins.get("D_N", 0))}

def eval_or4bb(pins: Dict[str, int]) -> Dict[str, int]:
    return {"X": pins.get("A", 0) | pins.get("B", 0) | (1 - pins.get("C_N", 0)) | (1 - pins.get("D_N", 0))}

CELL_EVAL_MAP = {
    "nand2": eval_nand2,
    "nand3": eval_nand3,
    "nand4": eval_nand4,
    "and2": eval_and2,
    "and3": eval_and3,
    "and4": eval_and4,
    "and4bb": eval_and4bb,
    "or2": eval_or2,
    "or3": eval_or3,
    "or4": eval_or4,
    "nor2": eval_nor2,
    "nor3": eval_nor3,
    "nor4": eval_nor4,
    "xor2": eval_xor2,
    "xnor2": eval_xnor2,
    "inv": eval_inv,
    "not": eval_inv,
    "clkinv": eval_inv,
    "buf": eval_buf,
    "clkbuf": eval_buf,
    "clkdly": eval_buf,
    "mux2": eval_mux2,
    "a21o": eval_a21o,
    "a21bo": eval_a21bo,
    "a21boi": eval_a21boi,
    "a31o": eval_a31o,
    "o21ai": eval_o21ai,
    "o21bai": eval_o21bai,
    "conb": eval_conb,
    "a2111oi": eval_a2111oi,
    "a211o": eval_a211o,
    "a211oi": eval_a211oi,
    "a21oi": eval_a21oi,
    "a221o": eval_a221o,
    "a221oi": eval_a221oi,
    "a22o": eval_a22o,
    "a22oi": eval_a22oi,
    "a311o": eval_a311o,
    "a31oi": eval_a31oi,
    "a32o": eval_a32o,
    "a41oi": eval_a41oi,
    "and2b": eval_and2b,
    "and3b": eval_and3b,
    "and4b": eval_and4b,
    "nand2b": eval_nand2b,
    "nand3b": eval_nand3b,
    "nor3b": eval_nor3b,
    "nor4b": eval_nor4b,
    "o211a": eval_o211a,
    "o211ai": eval_o211ai,
    "o21a": eval_o21a,
    "o21ba": eval_o21ba,
    "o221a": eval_o221a,
    "o22a": eval_o22a,
    "o22ai": eval_o22ai,
    "o2bb2a": eval_o2bb2a,
    "o311a": eval_o311a,
    "o31a": eval_o31a,
    "o31ai": eval_o31ai,
    "o32a": eval_o32a,
    "o32ai": eval_o32ai,
    "or3b": eval_or3b,
    "or4b": eval_or4b,
    "or4bb": eval_or4bb,
}

# Helper to normalize/clean cell names to match our evaluation map
def get_base_cell_type(cell_type: str) -> str:
    name = cell_type.lower()
    if name.startswith("sky130_fd_sc_hd__"):
        name = name[len("sky130_fd_sc_hd__"):]
    # Remove drive strength suffix (e.g., _2, _4)
    name = re.sub(r'_\d+$', '', name)
    return name


class GateSimulator:
    def __init__(self):
        self.inputs: Set[str] = set()
        self.outputs: Set[str] = set()
        self.wires: Set[str] = set()
        
        self.comb_gates: List[Dict[str, Any]] = []
        self.dffs: List[Dict[str, Any]] = []
        
        # Simulation state
        self.net_values: Dict[str, int] = {}
        self.dff_states: Dict[str, int] = {} # inst_name -> Q value
        
        # Drivers map: net -> index of gate in self.comb_gates
        self.drivers: Dict[str, int] = {}

    def load_netlist(self, netlist_path: str | Path) -> None:
        netlist_path = Path(netlist_path)
        content = netlist_path.read_text()
        
        # Remove comments
        content = re.sub(r'//.*', '', content)
        content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
        
        # Split by statements
        statements = [s.strip() for s in content.split(";") if s.strip()]
        
        for s in statements:
            # Parse module declaration
            if s.startswith("module"):
                continue
            if s.startswith("endmodule"):
                continue
                
            # Parse inputs, outputs, wires
            if s.startswith("input") or s.startswith("output") or s.startswith("wire"):
                parts = s.split()
                decl_type = parts[0]
                nets_str = "".join(parts[1:])
                # Split by comma
                for net in nets_str.split(","):
                    net = net.strip()
                    if decl_type == "input":
                        self.inputs.add(net)
                    elif decl_type == "output":
                        self.outputs.add(net)
                    elif decl_type == "wire":
                        self.wires.add(net)
                continue
            
            # Parse cell instantiations
            # Example: sky130_fd_sc_hd__nand2_2 \add0/_32_ (.A(\b_reg[0] ), .B(\a_reg[0] ), .Y(\add0/_00_ ))
            m = re.match(r'^([a-zA-Z0-9_]+)\s+(\S+)\s*\((.*)\)$', s, re.DOTALL)
            if m:
                cell_type, inst_name, ports_str = m.groups()
                
                # Skip physical layout fillers/decaps/taps/diode/internal
                base_type = get_base_cell_type(cell_type)
                if base_type in ("decap", "tapvpwrvgnd", "fill", "diode") or "internal" in base_type:
                    continue
                
                # Parse pin connections
                pins = re.findall(r'\.([a-zA-Z0-9_]+)\s*\(\s*(.*?)\s*\)', ports_str)
                pin_connections = {}
                for pin, net in pins:
                    # Clean net name (strip whitespace, but preserve escaped identifier backslash)
                    net = net.strip()
                    pin_connections[pin] = net
                
                # Identify if it is a sequential flip-flop
                is_dff = any(x in base_type for x in ["dfrtp", "dfstp", "dfxtp", "dfxbp", "dfbbp", "dfsbp", "dfrbp", "dff"])
                
                gate_info = {
                    "cell_type": cell_type,
                    "base_type": base_type,
                    "inst_name": inst_name,
                    "connections": pin_connections,
                }
                
                if is_dff:
                    self.dffs.append(gate_info)
                else:
                    self.comb_gates.append(gate_info)

    def compile(self) -> None:
        """Topological sort of the combinational gates to guarantee correct cycle evaluation."""
        # Map output nets to gate index
        self.drivers.clear()
        
        # Build inputs and outputs dictionaries for comb gates
        for i, gate in enumerate(self.comb_gates):
            base_type = gate["base_type"]
            eval_func = CELL_EVAL_MAP.get(base_type)
            if not eval_func:
                # Default empty/unknown evaluation (warning/buffer fallback)
                print(f"Warning: Unknown gate type {gate['cell_type']}, using buffer fallback")
                eval_func = eval_buf
            gate["eval_func"] = eval_func
            
            # Divide connections into inputs and outputs
            gate_inputs = {}
            gate_outputs = {}
            
            # Standard sky130 pin outputs are usually X or Y
            for pin, net in gate["connections"].items():
                if pin in ("X", "Y", "HI", "LO"):
                    gate_outputs[pin] = net
                    self.drivers[net] = i
                else:
                    if pin in ("no_jumper_check", "resistive_li1_ok"):
                        continue
                    gate_inputs[pin] = net
                    
            gate["inputs"] = gate_inputs
            gate["outputs"] = gate_outputs
            
        # Topologically sort the comb gates
        adj = defaultdict(list)
        in_degree = defaultdict(int)
        
        for g_id in range(len(self.comb_gates)):
            in_degree[g_id] = 0
            
        for g_id, gate in enumerate(self.comb_gates):
            for pin, net in gate["inputs"].items():
                if net in self.drivers:
                    driver_id = self.drivers[net]
                    adj[driver_id].append(g_id)
                    in_degree[g_id] += 1
                    
        # Find 0 in-degree nodes
        queue = [g_id for g_id in range(len(self.comb_gates)) if in_degree[g_id] == 0]
        order = []
        
        while queue:
            curr = queue.pop(0)
            order.append(curr)
            for neighbor in adj[curr]:
                in_degree[neighbor] -= 1
                if in_degree[neighbor] == 0:
                    queue.append(neighbor)
                    
        if len(order) != len(self.comb_gates):
            # Print loop info for debugging
            loop_nodes = [g_id for g_id, deg in in_degree.items() if deg > 0]
            print(f"Warning: Combinational loop detected in {len(loop_nodes)} gates!")
            # Keep order as is for fallback
            order = order + sorted(list(set(range(len(self.comb_gates))) - set(order)))
            
        self.comb_gates = [self.comb_gates[i] for i in order]
        print(f"Compiled {len(self.comb_gates)} combinational gates and {len(self.dffs)} flip-flops successfully.")

    def reset(self) -> None:
        """Reset all net values and set flip-flops to 0."""
        self.net_values = {net: 0 for net in self.inputs | self.outputs | self.wires}
        self.dff_states = {dff["inst_name"]: 0 for dff in self.dffs}
        
        # Propagate the initial 0/reset values through combinational logic
        self._evaluate_comb()

    def set_input(self, name: str, value: int) -> None:
        if name in self.inputs:
            self.net_values[name] = value
        else:
            raise KeyError(f"Net {name} is not an input port.")

    def get_net_value(self, name: str) -> int:
        return self.net_values.get(name, 0)

    def _evaluate_comb(self) -> None:
        """Run one pass of combinational evaluation in sorted order."""
        # Drive DFF outputs onto Q nets
        for dff in self.dffs:
            q_net = dff["connections"].get("Q")
            if q_net:
                self.net_values[q_net] = self.dff_states[dff["inst_name"]]
                
        # Evaluate combinational gates in topological order
        for gate in self.comb_gates:
            input_vals = {pin: self.net_values.get(net, 0) for pin, net in gate["inputs"].items()}
            output_vals = gate["eval_func"](input_vals)
            for pin, val in output_vals.items():
                out_net = gate["outputs"].get(pin)
                if out_net:
                    self.net_values[out_net] = val

    def step(self) -> None:
        """Advance simulation by one clock cycle (clock posedge)."""
        # 1. Update DFF states based on D values, RESET_B (active-low) or SET_B (active-low)
        new_states = {}
        for dff in self.dffs:
            inst = dff["inst_name"]
            reset_net = dff["connections"].get("RESET_B")
            set_net = dff["connections"].get("SET_B")
            d_net = dff["connections"].get("D")
            
            if reset_net:
                reset_b = self.net_values.get(reset_net, 1)
                if reset_b == 0:
                    new_states[inst] = 0
                    continue
            if set_net:
                set_b = self.net_values.get(set_net, 1)
                if set_b == 0:
                    new_states[inst] = 1
                    continue
                    
            new_states[inst] = self.net_values.get(d_net, 0) if d_net else 0
                
        self.dff_states.update(new_states)
        
        # 2. Propagate values through combinational logic
        self._evaluate_comb()
