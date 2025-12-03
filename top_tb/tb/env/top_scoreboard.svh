class top_scoreboard extends uvm_component;

uvm_tlm_analysis_fifo #(wb_seq_item) wb_fifo;
top_cosim_config m_cfg;

uvm_event reset_e;

virtual wb_if vif;

wb_seq_item req;

`uvm_component_utils(top_scoreboard)


//uvm_analysis_port #() ap;

extern function new(string name = "top_scoreboard", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);
extern task run_cosim_wb();
extern function string get_cosim_error_str();
extern task handle_reset();
extern function void init_cosim();
extern function void cleanup_cosim();
extern task debug_info();


endclass

function top_scoreboard::new(string name = "top_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    wb_fifo = new("wb_fifo", this);
    reset_e = new("reset_e");
endfunction

function void top_scoreboard::build_phase(uvm_phase phase);
    // get global top_cosim_cfg from test
    if(!uvm_config_db #(top_cosim_config)::get(this, "", "top_cosim_config", m_cfg)) begin
        `uvm_fatal(`gfn, "Cannot get top_cosim_config")
    end
    init_cosim();

endfunction


task top_scoreboard::run_phase(uvm_phase phase);
    forever begin 
        @(posedge vif.rstn)
        fork
            run_cosim_wb();
        join_none
        reset_e.wait_trigger();
        disable fork;
        handle_reset();
    end
endtask

function void top_scoreboard::report_phase(uvm_phase phase);

endfunction

task top_scoreboard::run_cosim_wb();

    forever begin
        wb_fifo.get(req);
        if (!riscv_cosim_step(m_cfg.cosim_handle, req.rd_id, req.data, req.pc,
                                0, 0)) begin
            if (m_cfg.relax_cosim_check) begin 
            `uvm_info(`gfn, "Find ERROR(relax_check)", UVM_LOW)
             `uvm_fatal(`gfn, get_cosim_error_str())
            end else begin
            `uvm_info(`gfn, "Find ERROR", UVM_LOW)
            `uvm_fatal(`gfn, get_cosim_error_str())
            end
        end
	else begin  
	   debug_info();
        end
    end
endtask

function string top_scoreboard::get_cosim_error_str();
      string error = "Cosim mismatch ";
      for (int i = 0; i < riscv_cosim_get_num_errors(m_cfg.cosim_handle); ++i) begin
        error = {error, riscv_cosim_get_error(m_cfg.cosim_handle, i), "\n"};
      end
      riscv_cosim_clear_errors(m_cfg.cosim_handle);

      return error;
  endfunction : get_cosim_error_str

function void top_scoreboard::init_cosim();
    cleanup_cosim();
    m_cfg.cosim_handle = spike_cosim_init(m_cfg.isa_string, m_cfg.start_pc, m_cfg.start_mtvec, m_cfg.log_file,
        m_cfg.pmp_num_regions, m_cfg.pmp_granularity, m_cfg.mhpm_counter_num, m_cfg.secure_ibex, m_cfg.icache,
        m_cfg.dm_start_addr, m_cfg.dm_end_addr);
    if (m_cfg.cosim_handle == null) begin
        `uvm_fatal(`gfn, "Can not initialize spike")
    end
endfunction

function void top_scoreboard::cleanup_cosim();
     if (m_cfg.cosim_handle) begin
        spike_cosim_release(m_cfg.cosim_handle);
     end
     m_cfg.cosim_handle = null;
endfunction

task top_scoreboard::handle_reset();
    init_cosim();
endtask

task top_scoreboard::debug_info();
  `uvm_info("scoreboard","complete an instruction",UVM_LOW);
  `uvm_info("scoreboard",$sformatf("pc=%h",req.pc),UVM_LOW);
  `uvm_info("scoreboard",$sformatf("rd_id=%d",req.rd_id),UVM_LOW);
  `uvm_info("scoreboard",$sformatf("data=%b",req.data),UVM_LOW);
endtask

