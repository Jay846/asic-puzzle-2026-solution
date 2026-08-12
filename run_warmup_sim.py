#!/usr/bin/env python3
"""Run cycle-accurate simulation test on the warmup netlist."""

from pathlib import Path
from tools.simulator import GateSimulator

ROOT = Path(__file__).resolve().parent
NETLIST = ROOT / "warmup" / "01_netlist.v"

if not NETLIST.exists():
    raise FileNotFoundError(f"Netlist not found: {NETLIST}")

print("Loading netlist ...")
sim = GateSimulator()
sim.load_netlist(NETLIST)
sim.compile()

print("\nResetting simulator ...")
sim.reset()

# Shifting in 248 (11111000) for both A and B over 8 cycles
pattern = [1, 1, 1, 1, 1, 0, 0, 0]

print("\nStarting simulation (shifting in A=248, B=248)...")
print("-" * 50)
print(f"Cycle | en | A | B | a_reg    | b_reg    | sum | S")
print("-" * 50)

# Shift in bits cycle by cycle
for cycle in range(8):
    bit_a = pattern[cycle]
    bit_b = pattern[cycle]
    
    sim.set_input("en", 1)
    sim.set_input("A", bit_a)
    sim.set_input("B", bit_b)
    sim.set_input("rst_n", 1)
    
    # Step the clock
    sim.step()
    
    # Extract internal states for debugging (e.g. DFF Q values)
    # We can reconstruct a_reg and b_reg from Q outputs of sr_a and sr_b
    a_val = 0
    b_val = 0
    for idx in range(8):
        # Escaped names in Netlist: \a_reg[index]
        a_bit = sim.get_net_value(f"\\a_reg[{idx}]")
        b_bit = sim.get_net_value(f"\\b_reg[{idx}]")
        a_val |= (a_bit << idx)
        b_val |= (b_bit << idx)
        
    # Reconstruct sum value
    sum_val = 0
    for idx in range(9):
        # Escaped names in Netlist: \sum[index]
        sum_bit = sim.get_net_value(f"\\sum[{idx}]")
        sum_val |= (sum_bit << idx)
        
    s_val = sim.get_net_value("S")
    
    print(f" {cycle+1:4d} |  1 | {bit_a:1d} | {bit_b:1d} | {a_val:8d} | {b_val:8d} | {sum_val:3d} | {s_val:1d}")

print("-" * 50)

# Disable shift register and run one more cycle to check persistence
sim.set_input("en", 0)
sim.step()
a_val = sum(sim.get_net_value(f"\\a_reg[{idx}]") << idx for idx in range(8))
b_val = sum(sim.get_net_value(f"\\b_reg[{idx}]") << idx for idx in range(8))
sum_val = sum(sim.get_net_value(f"\\sum[{idx}]") << idx for idx in range(9))
s_val = sim.get_net_value("S")
print(f" Hold |  0 | - | - | {a_val:8d} | {b_val:8d} | {sum_val:3d} | {s_val:1d}")
print("-" * 50)

if s_val == 1:
    print("\nSUCCESS: Success signal S asserted successfully!")
else:
    print("\nFAILURE: Success signal S did not assert.")
