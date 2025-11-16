package seq_pkg;
    import uvm_pkg::*;
	`include "uvm_macros.svh"
    import bpu_agent_pkg::*;
	import exec_agent_pkg::*;
    
    `include "exec_base_seq.svh"
    `include "bpu_base_seq.svh"
    `include "bpu_weighted_random_seq.svh"
    `include "exec_weighted_random_seq.svh"
    `include "exec_pc_jalr_conflict_seq.svh"
endpackage