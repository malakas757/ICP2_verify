package top_env_pkg;
`define gfn get_full_name()

	import uvm_pkg::*;
	import common::*;
	import wb_agent_pkg::*;
	import mem_agent_pkg::*;
	import pipeline_agent_pkg::*;
	import cosim_agent_pkg::*;
//	import mem_model_pkg::*;
	
	`include "uvm_macros.svh"

	`include "top_env_config.svh"
	//`include "top_cosim_config.svh"
	`include "top_pipeline_coverage_monitor.svh"
	`include "top_scoreboard.svh"
	`include "top_env.svh"




endpackage
