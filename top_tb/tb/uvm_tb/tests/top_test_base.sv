import uvm_pkg::*;
import common::*;
import cosim_agent_pkg::*;
import wb_agent_pkg::*;
import mem_agent_pkg::*;
import pipeline_agent_pkg::*;
import top_env_pkg::*;

`include "uvm_macros.svh"

class top_test_base extends uvm_test;

top_env m_env;
top_env_config m_env_cfg;
wb_agent_config m_wb_agent_cfg;
mem_agent_config m_mem_agent_cfg;
pipeline_agent_config m_pipeline_agent_cfg;
top_cosim_config m_top_cosim_cfg;

string BIN_PATH = "./dv_out/out_base_test_seed/asm_test/riscv_rand_instr_test_0.bin";

`uvm_component_utils(top_test_base)

function new(string name = "base_test", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    m_env_cfg = top_env_config::type_id::create("m_env_config");
    m_wb_agent_cfg = wb_agent_config::type_id::create("m_wb_config");
    m_mem_agent_cfg = mem_agent_config::type_id::create("m_mem_config");  
    m_pipeline_agent_cfg = pipeline_agent_config::type_id::create("m_pipeline_config");  
    m_top_cosim_cfg = top_cosim_config::type_id::create("m_cosim_config");

    configure_cosim_params();

    m_env = top_env::type_id::create("m_env", this);
    
    uvm_config_db #(virtual wb_if)::get(this, "", "WB_IF", m_wb_agent_cfg.vif);
    uvm_config_db #(virtual mem_if)::get(this, "", "MEM_IF", m_mem_agent_cfg.vif);
    uvm_config_db #(virtual pipeline_if)::get(this, "", "PIPELINE_IF", m_pipeline_agent_cfg.vif);
    m_env_cfg.m_wb_agent_cfg = m_wb_agent_cfg;
    m_env_cfg.m_mem_agent_cfg = m_mem_agent_cfg;
    m_env_cfg.m_pipeline_agent_cfg = m_pipeline_agent_cfg;
    uvm_config_db #(top_env_config)::set(this, "m_env*", "top_env_config", m_env_cfg);
    uvm_config_db #(top_cosim_config)::set(this, "*", "top_cosim_config", m_top_cosim_cfg); //Set global config
endfunction

virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    `uvm_info(`gfn, "Initializing spike...",UVM_HIGH)
    if ($value$plusargs("MEM_FILE=%s", BIN_PATH)) begin
   	   $display("SPIKE MEM_File = %s", BIN_PATH);
    end else begin
           $display("No MEM_FILE argument");
    end
    load_binary_to_mems();
    set_run_flag(0);
    fork
      handle_reset();
    join_none
    wait_for_test_done();
    
    phase.drop_objection(this);
  endtask



virtual function void configure_cosim_params();
    if (m_top_cosim_cfg == null) begin
        `uvm_fatal(`gfn, "m_top_cosim_cfg is null")
    end
    
    m_top_cosim_cfg.isa_string          = "rv32ic";           
    m_top_cosim_cfg.start_pc            = 32'h0000_0000;      
    m_top_cosim_cfg.start_mtvec         = 32'hf000_0000;     
    
    m_top_cosim_cfg.log_file            = "sk_log";           
    m_top_cosim_cfg.probe_imem_for_errs = 1'b0;              
    
    m_top_cosim_cfg.pmp_num_regions     = 0;                  
    m_top_cosim_cfg.pmp_granularity     = 0;                  
    m_top_cosim_cfg.mhpm_counter_num    = 0;                  
    m_top_cosim_cfg.relax_cosim_check   = 1'b1;   //relax check for default            
    m_top_cosim_cfg.secure_ibex         = 1'b0;              
    m_top_cosim_cfg.icache              = 1'b0;               
    
    m_top_cosim_cfg.dm_start_addr       = 32'h1A11_0000;      
    m_top_cosim_cfg.dm_end_addr         = 32'h0000_0FFF;     
endfunction

task set_run_flag(int delay_cycles);
    `uvm_info(get_type_name(), $sformatf("Waiting %0d cycles to set run_flag",delay_cycles), UVM_LOW)
    repeat(delay_cycles) @(posedge m_wb_agent_cfg.vif.clk);
    //@(posedge m_if_id_agent_cfg.IFID.clk);
    m_wb_agent_cfg.vif.run_flag <= 1'b1;
    `uvm_info(get_type_name(), "run_flag is set to 1", UVM_LOW)
endtask

virtual task handle_reset();
    forever begin
        @(negedge m_wb_agent_cfg.vif.rstn);
        `uvm_info(`gfn, "Reset now active", UVM_LOW)
        // Tear-down testbench components
        // Flush FIFOs
        
        //item_collected_port.flush(); to do: item collected from spike 

        @(posedge m_wb_agent_cfg.vif.rstn);
        `uvm_info(`gfn, "Reset now inactive", UVM_LOW)
        // Build-up testbench components

    	m_env.load_binary_to_mem(m_top_cosim_cfg.start_pc, BIN_PATH); // Backdoor-load, 0-time 
        // Cosim must be re-initialized before loading the memory
        m_env.reset();

    end
endtask : handle_reset

function void load_binary_to_mems();
    //Initialize the RTL memory model via byte-writes, skip right now
    //load_binary_to_dut_mem(m_top_cosim_cfg.start_pc, BIN_PATH);
    
    // Initialize the cosim memory model
    m_env.load_binary_to_mem(m_top_cosim_cfg.start_pc, BIN_PATH);
endfunction

/* Use mem ip?

function void load_binary_to_dut_mem(bit[31:0] base_addr, string bin);
     bit [7:0]  r8;
     bit [31:0] addr = base_addr;
     int        bin_fd;
    bin_fd = $fopen(bin,"rb");
    if (!bin_fd)
      `uvm_fatal(get_full_name(), $sformatf("Cannot open file %0s", bin))
    while ($fread(r8, bin_fd)) begin
      `uvm_info(`gfn, $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_FULL)
      mem.write(addr, r8);
      addr++;
    end
  endfunction
*/
virtual task wait_for_test_done();
    int max_cycles = 100000;
    `uvm_info(get_type_name(), $sformatf("Waiting for test to complete (max %0d cycles)...", max_cycles), UVM_LOW)
    repeat(max_cycles) @(posedge m_wb_agent_cfg.vif.clk);
    `uvm_info(get_type_name(), "Test completed", UVM_LOW)
endtask

endclass
