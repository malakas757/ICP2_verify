package bpu_agent_pkg;

import uvm_pkg::*;
import common::*;
import if_id_agent_pkg::*;
`include "uvm_macros.svh"

`include "bpu_seq_item.svh"
typedef uvm_sequencer #(bpu_seq_item) bpu_sequencer;
`include "bpu_agent_config.svh"
`include "bpu_driver.svh"
//`include "bpu_coverage_monitor.svh"
`include "bpu_monitor.svh"
`include "bpu_predictor.svh"
`include "bpu_agent.svh"

// Utility Sequences
`include "bpu_seq.svh"

endpackage
