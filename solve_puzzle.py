#!/usr/bin/env python3
import sys
import time
from pathlib import Path
from tools.simulator import GateSimulator, get_base_cell_type
from z3 import *

def solve_with_ascii(lsb_first=False):
    print(f"Solving with ASCII constraint (lsb_first={lsb_first})...")
    sim = GateSimulator()
    sim.load_netlist("extracted/geometric_puzzle.v")
    sim.compile()
    
    solver = Solver()
    
    NUM_CYCLES = 140
    nets_symbolic = {}
    dff_states = {}
    
    def get_net(name, cycle):
        if not name:
            return False
        key = (name, cycle)
        if key not in nets_symbolic:
            nets_symbolic[key] = Bool(f"net_{name}_t{cycle}")
        return nets_symbolic[key]
        
    def get_dff(inst, cycle):
        key = (inst, cycle)
        if key not in dff_states:
            dff_states[key] = Bool(f"state_{inst}_t{cycle}")
        return dff_states[key]

    # Initialize DFF states
    for dff in sim.dffs:
        inst = dff["inst_name"]
        solver.add(get_dff(inst, 0) == False)
        
    # Start protocol
    for t in range(NUM_CYCLES):
        # rst_n is 0 for first 3 cycles, 1 afterwards
        rst_n_val = False if t < 3 else True
        solver.add(get_net("rst_n", t) == rst_n_val)
        
        # enable is 0 for first 4 cycles, then 1 afterwards
        enable_val = False if t < 4 else True
        solver.add(get_net("enable", t) == enable_val)
        
        solver.add(get_net("clk", t) == True)

    # Constrain input bits to be valid ASCII characters starting at cycle 4
    # Since we want to find a string of characters, we group every 8 cycles into a byte.
    # For a cycle t, the bit is I_t.
    # Since NUM_CYCLES is 140, we have (140-4)//8 = 17 bytes.
    num_bytes = (NUM_CYCLES - 4) // 8
    for b in range(num_bytes):
        byte_bits = [get_net("I", 4 + 8*b + i) for i in range(8)]
        if lsb_first:
            # LSB first: b0, b1, ..., b7
            b_bits = byte_bits
        else:
            # MSB first: b7, b6, ..., b0
            b_bits = byte_bits[::-1]
            
        # Standard printable ASCII constraint (32 to 126) represented as pure boolean constraints:
        # 1. MSB (b7) is False
        solver.add(b_bits[7] == False)
        # 2. b6 or b5 is True (val >= 32)
        solver.add(Or(b_bits[6], b_bits[5]))
        # 3. Not all of b6..b0 are True (val != 127)
        solver.add(Not(And(b_bits[6], b_bits[5], b_bits[4], b_bits[3], b_bits[2], b_bits[1], b_bits[0])))

    # Z3 gate definitions
    def z3_nand2(p): return Not(And(p["A"], p["B"]))
    def z3_nand3(p): return Not(And(p["A"], p["B"], p["C"]))
    def z3_nand4(p): return Not(And(p["A"], p["B"], p["C"], p["D"]))
    def z3_and2(p): return And(p["A"], p["B"])
    def z3_and3(p): return And(p["A"], p["B"], p["C"])
    def z3_and4(p): return And(p["A"], p["B"], p["C"], p["D"])
    def z3_and4bb(p): return And(Not(p["A_N"]), Not(p["B_N"]), p["C"], p["D"])
    def z3_or2(p): return Or(p["A"], p["B"])
    def z3_or3(p): return Or(p["A"], p["B"], p["C"])
    def z3_or4(p): return Or(p["A"], p["B"], p["C"], p["D"])
    def z3_nor2(p): return Not(Or(p["A"], p["B"]))
    def z3_nor3(p): return Not(Or(p["A"], p["B"], p["C"]))
    def z3_nor4(p): return Not(Or(p["A"], p["B"], p["C"], p["D"]))
    def z3_xor2(p): return Xor(p["A"], p["B"])
    def z3_xnor2(p): return Not(Xor(p["A"], p["B"]))
    def z3_inv(p): return Not(p["A"])
    def z3_buf(p): return p["A"]
    def z3_mux2(p): return Or(And(p["S"], p["A1"]), And(Not(p["S"]), p["A0"]))
    def z3_conb(p): return {"HI": True, "LO": False}
    def z3_a21o(p): return Or(And(p["A1"], p["A2"]), p["B1"])
    def z3_a21bo(p): return Or(And(p["A1"], p["A2"]), Not(p["B1_N"]))
    def z3_a21boi(p): return Not(Or(And(p["A1"], p["A2"]), Not(p["B1_N"])))
    def z3_a31o(p): return Or(And(p["A1"], p["A2"], p["A3"]), p["B1"])
    def z3_o21ai(p): return Not(And(Or(p["A1"], p["A2"]), p["B1"]))
    def z3_o21bai(p): return Not(And(Or(p["A1"], p["A2"]), Not(p["B1_N"])))
    def z3_a2111oi(p): return Not(Or(And(p["A1"], p["A2"]), p["B1"], p["C1"], p["D1"]))
    def z3_a211o(p): return Or(And(p["A1"], p["A2"]), p["B1"], p["C1"])
    def z3_a211oi(p): return Not(Or(And(p["A1"], p["A2"]), p["B1"], p["C1"]))
    def z3_a21oi(p): return Not(Or(And(p["A1"], p["A2"]), p["B1"]))
    def z3_a221o(p): return Or(And(p["A1"], p["A2"]), And(p["B1"], p["B2"]), p["C1"])
    def z3_a221oi(p): return Not(Or(And(p["A1"], p["A2"]), And(p["B1"], p["B2"]), p["C1"]))
    def z3_a22o(p): return Or(And(p["A1"], p["A2"]), And(p["B1"], p["B2"]))
    def z3_a22oi(p): return Not(Or(And(p["A1"], p["A2"]), And(p["B1"], p["B2"])))
    def z3_a311o(p): return Or(And(p["A1"], p["A2"], p["A3"]), p["B1"], p["C1"])
    def z3_a31oi(p): return Not(Or(And(p["A1"], p["A2"], p["A3"]), p["B1"]))
    def z3_a32o(p): return Or(And(p["A1"], p["A2"], p["A3"]), And(p["B1"], p["B2"]))
    def z3_a41oi(p): return Not(Or(And(p["A1"], p["A2"], p["A3"], p["A4"]), p["B1"]))
    def z3_and2b(p): return And(Not(p["A_N"]), p["B"])
    def z3_and3b(p): return And(Not(p["A_N"]), p["B"], p["C"])
    def z3_and4b(p): return And(Not(p["A_N"]), p["B"], p["C"], p["D"])
    def z3_nand2b(p): return Not(And(Not(p["A_N"]), p["B"]))
    def z3_nand3b(p): return Not(And(Not(p["A_N"]), p["B"], p["C"]))
    def z3_nor3b(p): return Not(Or(p["A"], p["B"], Not(p["C_N"])))
    def z3_nor4b(p): return Not(Or(p["A"], p["B"], p["C"], Not(p["D_N"])))
    def z3_o211a(p): return And(Or(p["A1"], p["A2"]), p["B1"], p["C1"])
    def z3_o211ai(p): return Not(And(Or(p["A1"], p["A2"]), p["B1"], p["C1"]))
    def z3_o21a(p): return And(Or(p["A1"], p["A2"]), p["B1"])
    def z3_o21ba(p): return And(Or(p["A1"], p["A2"]), Not(p["B1_N"]))
    def z3_o221a(p): return And(Or(p["A1"], p["A2"]), Or(p["B1"], p["B2"]), p["C1"])
    def z3_o22a(p): return And(Or(p["A1"], p["A2"]), Or(p["B1"], p["B2"]))
    def z3_o22ai(p): return Not(And(Or(p["A1"], p["A2"]), Or(p["B1"], p["B2"])))
    def z3_o2bb2a(p): return And(Or(Not(p["A1_N"]), Not(p["A2_N"])), Or(p["B1"], p["B2"]))
    def z3_o311a(p): return And(Or(p["A1"], p["A2"], p["A3"]), p["B1"], p["C1"])
    def z3_o31a(p): return And(Or(p["A1"], p["A2"], p["A3"]), p["B1"])
    def z3_o31ai(p): return Not(And(Or(p["A1"], p["A2"], p["A3"]), p["B1"]))
    def z3_o32a(p): return And(Or(p["A1"], p["A2"], p["A3"]), Or(p["B1"], p["B2"]))
    def z3_o32ai(p): return Not(And(Or(p["A1"], p["A2"], p["A3"]), Or(p["B1"], p["B2"])))
    def z3_or3b(p): return Or(p["A"], p["B"], Not(p["C_N"]))
    def z3_or4b(p): return Or(p["A"], p["B"], p["C"], Not(p["D_N"]))
    def z3_or4bb(p): return Or(p["A"], p["B"], Not(p["C_N"]), Not(p["D_N"]))

    Z3_EVAL_MAP = {
        "nand2": z3_nand2, "nand3": z3_nand3, "nand4": z3_nand4,
        "and2": z3_and2, "and3": z3_and3, "and4": z3_and4, "and4bb": z3_and4bb,
        "or2": z3_or2, "or3": z3_or3, "or4": z3_or4,
        "nor2": z3_nor2, "nor3": z3_nor3, "nor4": z3_nor4,
        "xor2": z3_xor2, "xnor2": z3_xnor2,
        "inv": z3_inv, "not": z3_inv, "clkinv": z3_inv,
        "buf": z3_buf, "clkbuf": z3_buf, "clkdly": z3_buf,
        "mux2": z3_mux2, "conb": z3_conb,
        "a21o": z3_a21o, "a21bo": z3_a21bo, "a21boi": z3_a21boi, "a31o": z3_a31o,
        "o21ai": z3_o21ai, "o21bai": z3_o21bai,
        "a2111oi": z3_a2111oi, "a211o": z3_a211o, "a211oi": z3_a211oi, "a21oi": z3_a21oi,
        "a221o": z3_a221o, "a221oi": z3_a221oi, "a22o": z3_a22o, "a22oi": z3_a22oi,
        "a311o": z3_a311o, "a31oi": z3_a31oi, "a32o": z3_a32o, "a41oi": z3_a41oi,
        "and2b": z3_and2b, "and3b": z3_and3b, "and4b": z3_and4b,
        "nand2b": z3_nand2b, "nand3b": z3_nand3b,
        "nor3b": z3_nor3b, "nor4b": z3_nor4b,
        "o211a": z3_o211a, "o211ai": z3_o211ai, "o21a": z3_o21a, "o21ba": z3_o21ba,
        "o221a": z3_o221a, "o22a": z3_o22a, "o22ai": z3_o22ai, "o2bb2a": z3_o2bb2a,
        "o311a": z3_o311a, "o31a": z3_o31a, "o31ai": z3_o31ai, "o32a": z3_o32a, "o32ai": z3_o32ai,
        "or3b": z3_or3b, "or4b": z3_or4b, "or4bb": z3_or4bb,
    }

    # Simulation transitions
    for t in range(NUM_CYCLES):
        # A. Update DFF states to get dff_states[(inst, t+1)]
        for dff in sim.dffs:
            inst = dff["inst_name"]
            reset_net = dff["connections"].get("RESET_B")
            set_net = dff["connections"].get("SET_B")
            d_net = dff["connections"].get("D")
            
            # D input is from previous cycle (t-1). For t=0, it is False.
            if t == 0:
                d_val = False
            else:
                d_val = get_net(d_net, t-1) if d_net else False
                
            next_state = get_dff(inst, t+1)
            
            if reset_net:
                reset_b = get_net(reset_net, t)
                solver.add(next_state == If(reset_b == False, False, d_val))
            elif set_net:
                set_b = get_net(set_net, t)
                solver.add(next_state == If(set_b == False, True, d_val))
            else:
                solver.add(next_state == d_val)

        # B. Drive Q nets at current cycle t using the new state dff_states[(inst, t+1)]
        for dff in sim.dffs:
            inst = dff["inst_name"]
            q_net = dff["connections"].get("Q")
            if q_net:
                solver.add(get_net(q_net, t) == get_dff(inst, t+1))
                
        # C. Evaluate combinational gates at current cycle t
        for gate in sim.comb_gates:
            base_type = gate["base_type"]
            eval_func = Z3_EVAL_MAP.get(base_type, z3_buf)
            input_vars = {pin: get_net(net, t) for pin, net in gate["inputs"].items()}
            
            if base_type == "conb":
                out_vals = eval_func(input_vars)
            else:
                out_expr = eval_func(input_vars)
                out_vals = {pin: out_expr for pin in gate["outputs"]}
                
            for pin, val in out_vals.items():
                out_net = gate["outputs"].get(pin)
                if out_net:
                    solver.add(get_net(out_net, t) == val)

    # success must go high at some cycle
    success_vars = [get_net("success", t) for t in range(NUM_CYCLES)]
    solver.add(Or(success_vars))
    
    start_time = time.time()
    result = solver.check()
    elapsed = time.time() - start_time
    print(f"Result: {result} (took {elapsed:.2f}s)")
    
    if result == sat:
        model = solver.model()
        success_cycle = -1
        for t in range(NUM_CYCLES):
            if is_true(model.evaluate(get_net("success", t))):
                success_cycle = t
                break
        print(f"Success at cycle: {success_cycle}")
        
        # Recover active input
        input_bits = []
        for t in range(4, success_cycle):
            val = model.evaluate(get_net("I", t))
            input_bits.append(1 if is_true(val) else 0)
            
        bitstr = "".join(str(b) for b in input_bits)
        print(f"Active bitstream (length {len(bitstr)}): {bitstr}")
        
        chars = []
        for i in range(0, len(bitstr), 8):
            chunk = bitstr[i:i+8]
            if len(chunk) < 8:
                break
            if lsb_first:
                chunk = chunk[::-1]
            val = int(chunk, 2)
            chars.append(chr(val))
        print(f"Decoded Answer: {''.join(chars)}")
        return True
    else:
        print("UNSAT")
        return False

if __name__ == "__main__":
    if not solve_with_ascii(lsb_first=False):
        solve_with_ascii(lsb_first=True)
