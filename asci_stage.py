"""
ASIC Reverse-Engineering SOP Orchestrator (Jane Street Puzzle 2026)
Role: Hardware Reverse Engineer
8 Stages: Environment → Layout → Cell ID → Netlist → Port Map → Simulation → Analysis → Solver
"""
import os, sys, json, ast, re, time
from typing import Dict, Any, List, Optional, Callable, TypedDict
from langgraph.graph import StateGraph, END
# ── SKILL CATALOG ─────────────────────────────────────────────────────────────
ASIC_SKILL_CATALOG: List[Dict[str, str]] = [
# ── Stage 1: Environment & Toolchain Setup ────────────────────────────────
{
"id": "toolchain_dependency_installer",
"stage": "S1",
"concept": (
"Installs and verifies system-level open-source EDA binaries required for chip layout analysis, "
"simulation, and netlist extraction. Checks that each binary is reachable on PATH. "
"Tools include: klayout, iverilog/verilator, yosys, gtkwave, ngspice. "
"Example: subprocess.run(['klayout', '--version']) and raises EnvironmentError on failure."
        ),
    },
    {
"id": "python_hardware_env_builder",
"stage": "S1",
"concept": (
"Creates and configures an isolated Python virtual environment with all hardware-analysis "
"libraries needed for GDS parsing, waveform comparison, and SAT solving. "
"Installs: gdstk, klayout.db, cocotb, pyverilog, z3-solver, vcdvcd. "
"Example: pip install gdstk klayout z3-solver vcdvcd pyverilog inside venv."
        ),
    },
    {
"id": "repo_cloner_and_validator",
"stage": "S1",
"concept": (
"Clones the puzzle repository (janestreet/asic-puzzle-2026) and validates that all required "
"assets are present: puzzle.gds, example_inputs.vcd, and warmup/ directory. "
"Performs a SHA256 checksum of puzzle.gds to confirm file integrity. "
"Example: git clone https://github.com/janestreet/asic-puzzle-2026 && ls puzzle.gds example_inputs.vcd."
        ),
    },
    {
"id": "warmup_netlist_sanity_check",
"stage": "S1",
"concept": (
"Parses the warmup/01_netlist.v file to cross-validate that our toolchain can correctly read "
"synthesized Verilog gate-level netlists and reproduce the known warmup behavior (A+B==496 → success). "
"Acts as integration test to confirm end-to-end flow before touching the real puzzle. "
"Example: python -m pyverilog warmup/01_netlist.v → confirm module ports and cell instances."
        ),
    },
# ── Stage 2: Physical Layout & Geometry Inspection ────────────────────────
    {
"id": "gds_polygon_parser",
"stage": "S2",
"concept": (
"Reads the binary GDSII file using gdstk or klayout.db to enumerate all cells, layers, "
"and polygon counts. Builds a hierarchical JSON tree of cell→instance relationships. "
"Formula: for cell in lib.cells: collect [(layer, datatype, polygon_count)]. "
"Example: gdstk.read_gds('puzzle.gds').cells gives list of GdsCell objects with polygons."
        ),
    },
    {
"id": "layer_stack_mapper",
"stage": "S2",
"concept": (
"Maps numeric GDS layer/datatype pairs to standard SKY130 or custom technology semantic names "
"(e.g., layer 65/20 → nwell, layer 68/16 → poly, layer 70/20 → active). "
"Builds a lookup dict {(layer,datatype): semantic_name} for all polygons. "
"Example: LAYER_MAP = {(65,20): 'nwell', (68,16): 'poly', (71,20): 'contact'}."
        ),
    },
    {
"id": "layout_region_separator",
"stage": "S2",
"concept": (
"Partitions the die area into functional regions (core logic, I/O ring, power grid, decap cells) "
"by clustering bounding boxes of top-level cell instances using spatial proximity analysis. "
"Formula: cluster cells by (x_center, y_center) using DBSCAN or grid-binning. "
"Example: cells within central 80% of die area classified as core logic."
        ),
    },
    {
"id": "cell_instance_extractor",
"stage": "S2",
"concept": (
"Extracts every standard cell instance from the flattened GDS layout, recording its reference "
"cell name (master), transformation matrix (rotation/mirror/offset), and bounding box. "
"Output is a list of CellInstance records: {master, x, y, rotation, mirror}. "
"Example: gdstk cell.references → [Reference(cell='sky130_fd_sc_hd__nand2_1', origin=(5.0,3.2))]."
        ),
    },
# ── Stage 3: Standard Cell Identification & Footprint Mapping ────────────
    {
"id": "cell_footprint_hasher",
"stage": "S3",
"concept": (
"Computes a canonical geometric hash for each unique cell master by normalizing its internal "
"polygon geometries to origin and hashing the sorted coordinates of active layers. "
"Formula: hash = SHA256(sorted([(layer, round(x,3), round(y,3)) for poly in cell])). "
"Example: Two NAND2 cells with different placements produce identical hash → grouped as 'NAND2'."
        ),
    },
    {
"id": "gate_logic_classifier",
"stage": "S3",
"concept": (
"Deduces the Boolean logic function of each unique cell type by analyzing transistor-level "
"topology: PMOS pull-up network and NMOS pull-down network connectivity. "
"Formula: map (series/parallel PMOS, series/parallel NMOS) → NOT/NAND/NOR/XOR/DFF. "
"Example: 2 PMOS in parallel + 2 NMOS in series → NAND2 gate."
        ),
    },
    {
"id": "flip_flop_detector",
"stage": "S3",
"concept": (
"Specifically identifies D-type Flip-Flop cells (DFF, DFFR, DFFS) by detecting the master-slave "
"latch topology: back-to-back tri-state inverter pairs gated by clock and clock-bar. "
"Formula: find cells with ≥2 transmission gates and ≥1 clock net feeding both halves. "
"Example: sky130_fd_sc_hd__dfxtp_1 identified as positive-edge-triggered D-FF with Q output."
        ),
    },
# ── Stage 4: Netlist Extraction & Connectivity Tracing ───────────────────
    {
"id": "via_contact_intersection_finder",
"stage": "S4",
"concept": (
"Finds all electrical connections between adjacent routing layers by computing geometric "
"intersections between via polygons and the metal polygons above and below them. "
"Formula: net_A ∩ via_shape ∩ net_B → electrical node merging A and B into one net. "
"Example: Via1 polygon at (10.0, 5.0) intersects Metal1 polygon and Metal2 polygon → merge nets."
        ),
    },
    {
"id": "electrical_graph_builder",
"stage": "S4",
"concept": (
"Performs a multi-layer flood-fill connectivity search treating touching/overlapping metal "
"polygons on the same layer as the same electrical net, then merging nets through vias. "
"Output: NetworkX DiGraph where nodes=gates, edges=nets with (driver_pin → receiver_pin) labels. "
"Example: nx.DiGraph with node 'NAND2_inst_047' → edges to 'DFF_inst_12.D' and 'NOR2_inst_99.A'."
        ),
    },
    {
"id": "pin_location_matcher",
"stage": "S4",
"concept": (
"Maps each net endpoint to a specific standard cell pin by comparing the net polygon's "
"intersection location against known pin coordinates for each classified cell type. "
"Formula: for each net_terminal: find cell_instance where |terminal_xy - pin_xy| < epsilon. "
"Example: Metal1 segment endpoint at (5.12, 3.40) → NAND2_inst_47.A pin at (5.12, 3.40)."
        ),
    },
# ── Stage 5: Port Mapping & Netlist Cleaning ──────────────────────────────
    {
"id": "port_role_classifier",
"stage": "S5",
"concept": (
"Identifies primary I/O port roles by analyzing net fanout topology: net driving all DFF "
"clock pins → 'clk', net connected to reset pins of all DFFs → 'rst_n', single net with "
"no driver inside core logic → primary input. "
"Formula: if net.fanout ⊆ {all DFF.CLK pins} → label net 'clk'. "
"Example: Net_003 connects to CLK of 32 DFFs and nothing else → port_role = 'clk'."
        ),
    },
    {
"id": "netlist_verilog_exporter",
"stage": "S5",
"concept": (
"Serializes the extracted circuit graph into a syntactically valid gate-level Verilog netlist "
"file, declaring module ports, wire declarations, and cell instantiations. "
"Formula: for each gate in graph: emit '{cell_type} {inst_name} (.A(net_x), .B(net_y), .Y(net_z));'. "
"Example: NAND2 nand2_047 (.A(net_012), .B(net_045), .Y(net_078)); written to extracted_puzzle.v."
        ),
    },
    {
"id": "netlist_optimizer",
"stage": "S5",
"concept": (
"Prunes electrically inert nets (VDD/GND ties), removes buffer-only chains by direct wire "
"substitution, and merges duplicate net aliases to produce a minimal clean netlist. "
"Formula: collapse chain A→BUF→BUF→B to direct wire A→B if no side-effects. "
"Example: 12 buffer stages on reset net collapsed to single wire; VDD/GND pins removed."
        ),
    },
# ── Stage 6: Cycle-Accurate Circuit Simulation ────────────────────────────
    {
"id": "python_gate_simulator_generator",
"stage": "S6",
"concept": (
"Compiles the Verilog gate-level netlist into a Python class with a clock() method that "
"evaluates all combinational logic in topological order and updates all flip-flop states. "
"Formula: topological_sort(circuit_graph) → evaluate gates in dependency order each cycle. "
"Example: sim.clock(data_in=0b10110101) → updates all DFF.Q values and returns {success: 0, outputs: [...]}."
        ),
    },
    {
"id": "waveform_vcd_comparator",
"stage": "S6",
"concept": (
"Parses the provided example_inputs.vcd using vcdvcd library, replays each timestep "
"through the Python gate simulator, and computes a per-signal match rate to validate extraction. "
"Formula: match_rate = Σ(sim_output[t]==vcd_value[t]) / total_timesteps * 100%. "
"Example: 18/20 timesteps match → 90% fidelity; investigate discrepant DFF at t=120ns."
        ),
    },
    {
"id": "iverilog_cross_validator",
"stage": "S6",
"concept": (
"Runs the extracted Verilog netlist through the open-source Icarus Verilog (iverilog) simulator "
"as a second independent validation against the example VCD, confirming no extraction errors. "
"Formula: iverilog -o sim extracted_puzzle.v testbench.v && vvp sim → compare stdout vs VCD. "
"Example: iverilog simulation matches reference VCD at 100% → extraction confirmed correct."
        ),
    },
# ── Stage 7: Architectural Analysis & Reverse Cryptanalysis ──────────────
    {
"id": "submodule_boundary_detector",
"stage": "S7",
"concept": (
"Partitions the netlist into functional sub-modules by applying graph community detection "
"(Louvain algorithm) on the circuit connectivity graph to find strongly cohesive gate clusters. "
"Formula: apply nx.community.louvain_communities(G) → label clusters as FSM/LFSR/Adder/Comparator. "
"Example: Cluster of 32 DFFs with XOR feedback identified as 32-bit LFSR sub-module."
        ),
    },
    {
"id": "lfsr_polynomial_extractor",
"stage": "S7",
"concept": (
"Detects linear feedback shift register (LFSR) structures by finding DFF chains where XOR "
"gates feed back selected tap positions to the input, then extracts the feedback polynomial. "
"Formula: if DFF[i].D = XOR(DFF[j].Q, DFF[k].Q, ...) → primitive polynomial x^n+x^j+x^k+1. "
"Example: 16-DFF chain with taps at positions 16,14,13,11 → Galois LFSR, poly = x^16+x^14+x^13+x^11+1."
        ),
    },
    {
"id": "fsm_state_transition_mapper",
"stage": "S7",
"concept": (
"Reconstructs the finite state machine transition table by symbolically evaluating all "
"combinational next-state logic for each possible current state encoding. "
"Formula: for each state s ∈ {0..2^n-1}: next_state(s) = eval_combinational(DFF.D, inputs=s). "
"Example: 8-DFF FSM with 256 states → full transition table; identify 'success' state = 0xFF."
        ),
    },
    {
"id": "math_logic_deconstructor",
"stage": "S7",
"concept": (
"Converts the gate-level Boolean equations of adders and comparators into algebraic form, "
"identifying the mathematical relationship the chip computes (hash, checksum, CRC, equality). "
"Formula: trace carry-chain through full-adders → recover A+B arithmetic; trace XOR tree → CRC poly. "
"Example: 16-bit ripple adder identified: output = (input_A[15:0] + input_B[15:0]) mod 2^16."
        ),
    },
    {
"id": "circuit_purpose_summarizer",
"stage": "S7",
"concept": (
"Uses GPT-4o-mini / DeepSeek to provide a natural language summary of what the full circuit "
"does based on the extracted sub-module descriptions and their interconnections. "
"Input: JSON of {submodule_type, port_connections, data_width} for each cluster. "
"Example: LLM output: 'The chip is a 32-bit LFSR-based sequence validator that sets success=1 when input matches golden key'."
        ),
    },
# ── Stage 8: State-Space Optimization & Solver Execution ─────────────────
    {
"id": "sat_solver_constraint_compiler",
"stage": "S8",
"concept": (
"Translates the cycle-by-cycle state transition logic of the circuit into Z3 SMT/SAT boolean "
"constraints, asking: 'what input sequence over N cycles produces success=1?'. "
"Formula: Z3 BitVec variables for each input bit each cycle; add circuit transition as assertions. "
"Example: z3.solve(circuit_transitions(cycles=10) & z3.Bool('success') == True) → model."
        ),
    },
    {
"id": "brute_force_input_scanner",
"stage": "S8",
"concept": (
"For small input spaces, exhaustively iterates over all possible input vectors and simulates "
"them through the Python gate simulator to find which triggers success=1. "
"Formula: for x in range(2^n): sim.reset(); sim.clock(x); if sim.success: return x. "
"Example: 16-bit input space (65536 candidates) fully scanned in <2s using vectorized numpy."
        ),
    },
    {
"id": "lfsr_golden_key_reverser",
"stage": "S8",
"concept": (
"Given an identified LFSR structure and known output sequence, mathematically inverts the "
"LFSR to recover the initial seed (key) that produces the required output pattern. "
"Formula: seed = LFSR_matrix^(-N) @ target_state (mod 2), using GF(2) matrix inversion. "
"Example: 32-bit LFSR, target output observed after 100 clocks → recover seed via matrix inversion."
        ),
    },
    {
"id": "secret_vector_decoder",
"stage": "S8",
"concept": (
"Takes the winning bitstream found by the solver, decodes it from binary to ASCII by grouping "
"8 bits per character, and formats the final answer string. "
"Formula: answer = ''.join(chr(int(bits[i:i+8],2)) for i in range(0,len(bits),8)). "
"Example: bitstream '0100101001000001010011100100010101010011' → ASCII = 'JANES'."
        ),
    },
    {
"id": "rst_n_toggle_validator",
"stage": "S8",
"concept": (
"Validates the reset protocol: asserts rst_n=0 for ≥1 clock cycle before each input attempt "
"to clear all DFF state to known values, then de-asserts rst_n=1 before clocking in data. "
"Formula: sim.clock(rst_n=0); sim.clock(rst_n=1, data=candidate); assert success in outputs. "
"Example: Without toggle, DFFs retain stale state → false negatives; rst_n toggle required."
        ),
    },
]
# ── SHARED STATE ──────────────────────────────────────────────────────────────
class ASICSharedState:
    def __init__(self):
        self.gds_path: str = ""
        self.vcd_path: str = ""
        self.layer_map: Dict = {}
        self.cell_instances: List = []
        self.gate_labels: Dict = {}
        self.netlist_graph = None
        self.verilog_netlist_path: str = ""
        self.simulator = None
        self.sim_fidelity_pct: float = 0.0
        self.submodules: Dict = {}
        self.circuit_purpose: str = ""
        self.winning_input: Optional[str] = None
        self.final_answer: str = ""
        self.execution_history: List[str] = []
        self.human_override: Optional[str] = None
# ── ORCHESTRATOR STATE ────────────────────────────────────────────────────────
class ASICOrchestratorState(TypedDict):
    shared_state: ASICSharedState
    loopback_count: int
    max_loopbacks: int
    logs: List[str]
    validation_approved: bool
    human_abort: bool
# ── LANGGRAPH ORCHESTRATOR ────────────────────────────────────────────────────
class ASICOrchestrator:
    """
    LangGraph-based 8-Stage SOP Orchestrator for ASIC Reverse Engineering.
    Role Designation: Hardware Reverse Engineer
    Models: gpt-4o-mini, deepseek-v4-flash (via OpenRouter)
    Context Isolation: each stage exposes only its own N<=5 skills to the LLM agent.
    """
    STAGE_SKILL_MAP: Dict[str, List[str]] = {
        "S1": ["toolchain_dependency_installer", "python_hardware_env_builder",
               "repo_cloner_and_validator", "warmup_netlist_sanity_check"],
        "S2": ["gds_polygon_parser", "layer_stack_mapper",
               "layout_region_separator", "cell_instance_extractor"],
        "S3": ["cell_footprint_hasher", "gate_logic_classifier", "flip_flop_detector"],
        "S4": ["via_contact_intersection_finder", "electrical_graph_builder", "pin_location_matcher"],
        "S5": ["port_role_classifier", "netlist_verilog_exporter", "netlist_optimizer"],
        "S6": ["python_gate_simulator_generator", "waveform_vcd_comparator", "iverilog_cross_validator"],
        "S7": ["submodule_boundary_detector", "lfsr_polynomial_extractor",
               "fsm_state_transition_mapper", "math_logic_deconstructor", "circuit_purpose_summarizer"],
        "S8": ["sat_solver_constraint_compiler", "brute_force_input_scanner",
               "lfsr_golden_key_reverser", "secret_vector_decoder", "rst_n_toggle_validator"],
    }
    STAGE_NAMES: Dict[str, str] = {
        "S1": "Environment & Toolchain Setup",
        "S2": "Physical Layout & Geometry Inspection",
        "S3": "Standard Cell Identification & Footprint Mapping",
        "S4": "Netlist Extraction & Connectivity Tracing",
        "S5": "Port Mapping & Netlist Cleaning",
        "S6": "Cycle-Accurate Circuit Simulation",
        "S7": "Architectural Analysis & Reverse Cryptanalysis",
        "S8": "State-Space Optimization & Solver Execution",
    }
    def __init__(self, agent_runner: Optional[Callable] = None):
        self.agent_runner = agent_runner
        self._skill_index = {s["id"]: s for s in ASIC_SKILL_CATALOG}
        self.graph = self._build_graph()
    def get_stage_skills(self, stage_key: str) -> List[Dict[str, str]]:
        ids = self.STAGE_SKILL_MAP.get(stage_key, [])
        return [self._skill_index[sid] for sid in ids if sid in self._skill_index]
    def _make_stage_node(self, stage_key: str):
        def node(state: ASICOrchestratorState) -> ASICOrchestratorState:
            name = self.STAGE_NAMES[stage_key]
            state["logs"].append(f"[{stage_key}] {name} ...")
            state["shared_state"].execution_history.append(f"{stage_key}_started")
            if self.agent_runner:
                self.agent_runner(stage_key, self.get_stage_skills(stage_key), state["shared_state"])
            state["shared_state"].execution_history.append(f"{stage_key}_completed")
            state["logs"].append(f"[{stage_key}] {name} DONE.")
            return state
        node.__name__ = f"stage_{stage_key.lower()}_node"
        return node
    def _validation_node(self, state: ASICOrchestratorState) -> ASICOrchestratorState:
        ss = state["shared_state"]
        approved = bool(ss.final_answer and ss.sim_fidelity_pct >= 90.0)
        state["validation_approved"] = approved
        state["logs"].append(
            f"[Validation] approved={approved} | answer='{ss.final_answer}' | fidelity={ss.sim_fidelity_pct:.1f}%"
        )
        if not approved:
            state["loopback_count"] += 1
        return state
    def _human_remediation_node(self, state: ASICOrchestratorState) -> ASICOrchestratorState:
        override = state["shared_state"].human_override
        if override and override.lower() == "abort":
            state["human_abort"] = True
        elif override:
            state["loopback_count"] = 0
            state["human_abort"] = False
        else:
            state["human_abort"] = True
        return state
    def _route_after_validation(self, state: ASICOrchestratorState) -> str:
        if state["validation_approved"]:
            return "END"
        if state["loopback_count"] > state["max_loopbacks"]:
            return "human_remediation"
        ss = state["shared_state"]
        if ss.sim_fidelity_pct < 90.0:
            return "S6"
        return "S8"
    def _route_after_remediation(self, state: ASICOrchestratorState) -> str:
        return "END" if state["human_abort"] else "S6"
    def _build_graph(self) -> StateGraph:
        workflow = StateGraph(ASICOrchestratorState)
        for key in self.STAGE_SKILL_MAP:
            workflow.add_node(key, self._make_stage_node(key))
        workflow.add_node("validation", self._validation_node)
        workflow.add_node("human_remediation", self._human_remediation_node)
        workflow.set_entry_point("S1")
        for src, dst in [("S1","S2"),("S2","S3"),("S3","S4"),("S4","S5"),
                         ("S5","S6"),("S6","S7"),("S7","S8"),("S8","validation")]:
            workflow.add_edge(src, dst)
        workflow.add_conditional_edges(
            "validation",
            self._route_after_validation,
            {"END": END, "S6": "S6", "S8": "S8", "human_remediation": "human_remediation"}
        )
        workflow.add_conditional_edges(
            "human_remediation",
            self._route_after_remediation,
            {"END": END, "S6": "S6"}
        )
        return workflow.compile()
    def run(self, gds_path: str, vcd_path: str, max_loopbacks: int = 2,
            agent_runner: Optional[Callable] = None) -> Dict[str, Any]:
        if agent_runner:
            self.agent_runner = agent_runner
        ss = ASICSharedState()
        ss.gds_path = gds_path
        ss.vcd_path = vcd_path
        init: ASICOrchestratorState = {
            "shared_state": ss,
            "loopback_count": 0,
            "max_loopbacks": max_loopbacks,
            "logs": [],
            "validation_approved": False,
            "human_abort": False,
        }
        return self.graph.invoke(init)
# ── ENTRYPOINT ────────────────────────────────────────────────────────────────
if __name__ == "__main__":
    print("=" * 70)
    print("ASIC REVERSE-ENGINEERING SOP — Skill Catalog Summary")
    print("=" * 70)
    by_stage: Dict[str, List] = {}
    for s in ASIC_SKILL_CATALOG:
        by_stage.setdefault(s["stage"], []).append(s)
    for stage_key in ["S1","S2","S3","S4","S5","S6","S7","S8"]:
        skills = by_stage.get(stage_key, [])
        stage_name = ASICOrchestrator.STAGE_NAMES.get(stage_key, stage_key)
        print(f"\n[{stage_key}] {stage_name} ({len(skills)} skills)")
        for sk in skills:
            desc_first_line = sk["concept"].split(".")[0]
            print(f" • {sk['id']}: {desc_first_line}.")
    print("\n" + "=" * 70)
    print("LangGraph Orchestrator compiled successfully.")
    print("Role Designation: Hardware Reverse Engineer")
    print("Models: gpt-4o-mini | deepseek-v4-flash")
    print("Context per node: N <= 5 skills (partitioned SOP)")
    print("=" * 70)
    orch = ASICOrchestrator()
    print("\nAll 8 stages built and graph compiled. Ready for execution.")
    print("Run: orch.run(gds_path='puzzle.gds', vcd_path='example_inputs.vcd')")
