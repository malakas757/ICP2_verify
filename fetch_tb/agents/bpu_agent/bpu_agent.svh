class bpu_agent extends uvm_component;

    `uvm_component_utils(bpu_agent);
    bpu_driver driver;
    bpu_monitor monitor;
    bpu_sequencer sequencer;
    //bpu_predictor predictor;
    
    //bpu_coverage_monitor fcov_monitor;
    bpu_agent_config cfg;
    uvm_analysis_port #(bpu_seq_item) ap;

    extern function new(string name = "bpu_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function bpu_agent::new(string name = "bpu_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void bpu_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(bpu_agent_config)::get(this, "", "bpu_agent_config", cfg)) begin
        `uvm_error("build_phase", "BPU agent config not found")
    end

    monitor = bpu_monitor::type_id::create("monitor", this);

    if(cfg.active == UVM_ACTIVE) begin
        driver = bpu_driver::type_id::create("driver", this);
        sequencer = bpu_sequencer::type_id::create("sequencer", this);
    end
    ap = new("ap", this);
// To do: fcov monitor

endfunction

function void bpu_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    monitor.BPU = cfg.BPU;
    monitor.ap.connect(ap);
    if(cfg.active == UVM_ACTIVE) begin
        driver.BPU = cfg.BPU;
        driver.seq_item_port.connect(sequencer.seq_item_export);
    end
    // To do: Connect monitor ap with fcov monitor 

endfunction
