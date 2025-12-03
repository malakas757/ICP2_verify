package top_env_pkg;
`define gfn get_full_name()

	import uvm_pkg::*;
	import wb_agent_pkg::*;
	import mem_agent_pkg::*;
	import cosim_agent_pkg::*;
//	import mem_model_pkg::*;
	
	`include "uvm_macros.svh"
	`include "spike_cosim_dpi.svh"
	`include "cosim_dpi.svh"

	`include "top_env_config.svh"
	//`include "top_cosim_config.svh"
	`include "top_scoreboard.svh"
	`include "top_env.svh"




endpackage
