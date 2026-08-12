#!/usr/bin/env python3
"""Run cycle-accurate simulation test on the geometric extracted warmup netlist."""

from pathlib import Path
from tools.simulator import GateSimulator

ROOT = Path(__file__).resolve().parent
NETLIST = ROOT / "extracted" / "geometric_warmup.v"

if not NETLIST.exists():
    raise FileNotFoundError(f"Netlist not found: {NETLIST}")

print("Loading geometric netlist ...")
sim = GateSimulator()
sim.load_netlist(NETLIST)
sim.compile()

print("\nResetting simulator ...")
sim.reset()

# Shifting in 248 (11111000) for both A and B over 8 cycles
pattern = [1, 1, 1, 1, 1, 0, 0, 0]

print("\nStarting simulation (shifting in A=248, B=248)...")
print("-" * 50)
print(f"Cycle | en | A | B | S")
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
    
    s_val = sim.get_net_value("S")
    print(f" {cycle+1:4d} |  1 | {bit_a:1d} | {bit_b:1d} | {s_val:1d}")

print("-" * 50)

# Disable shift register and run one more cycle to check persistence
sim.set_input("en", 0)
sim.step()
s_val = sim.get_net_value("S")
print(f" Hold |  0 | - | - | {s_val:1d}")
print("-" * 50)

if s_val == 1:
    print("\nSUCCESS: Success signal S asserted successfully on geometric netlist!")
else:
    print("\nFAILURE: Success signal S did not assert on geometric netlist.")
