package pipeline_agent_pkg;

import uvm_pkg::*;
import common::*;
`include "uvm_macros.svh"

`include "pipeline_seq_item.svh"
//typedef uvm_sequencer #(pipeline_seq_item) pipeline_sequencer;
`include "pipeline_agent_config.svh"
//`include "pipeline_driver.svh"
//`include "pipeline_coverage_monitor.svh"
`include "pipeline_monitor.svh"
`include "pipeline_agent.svh"

// Utility Sequences
//`include "pipeline_seq.svh"

endpackage
