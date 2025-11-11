class exec_agent extends uvm_component;

    `uvm_component_utils(exec_agent);
    exec_driver driver;
    exec_monitor monitor;
    exec_sequencer sequencer;
    //exec_coverage_monitor fcov_monitor;
    exec_agent_config cfg;
    uvm_analysis_port #(exec_seq_item) ap;

    extern function new(string name = "exec_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function exec_agent::new(string name = "exec_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void exec_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(exec_agent_config)::get(this, "", "exec_agent_config", cfg)) begin
        `uvm_error("build_phase", "exec agent config not found")
    end

    monitor = exec_monitor::type_id::create("monitor", this);

    if(cfg.active == UVM_ACTIVE) begin
        driver = exec_driver::type_id::create("driver", this);
        sequencer = exec_sequencer::type_id::create("sequencer", this);
    end
    ap = new("ap", this);
// To do: fcov monitor

endfunction

function void exec_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    monitor.EXEC = cfg.EXEC;
    monitor.ap.connect(ap);
    if(cfg.active == UVM_ACTIVE) begin
        driver.EXEC = cfg.EXEC;
        driver.seq_item_port.connect(sequencer.seq_item_export);
    end
    // To do: Connect monitor ap with fcov monitor 

endfunction
