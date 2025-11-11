class if_id_agent extends uvm_component;

    `uvm_component_utils(if_id_agent);
    //if_id_driver driver;
    if_id_monitor monitor;
    //if_id_sequencer sequencer;
    //if_id_coverage_monitor fcov_monitor;
    if_id_agent_config cfg;
    uvm_analysis_port #(if_id_seq_item) ap;

    extern function new(string name = "if_id_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function if_id_agent::new(string name = "if_id_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void if_id_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(if_id_agent_config)::get(this, "", "if_id_agent_config", cfg)) begin
        `uvm_error("build_phase", "IF_ID agent config not found")
    end

    monitor = if_id_monitor::type_id::create("monitor", this);

/* Will not be created in this case
    if(cfg.active == UVM_ACTIVE) begin
        driver = if_id_driver::type_id::create("driver", this);
        sequencer = if_id_sequencer::type_id::create("sequencer", this);
    end
*/
    ap = new("ap", this);

// To do: fcov monitor

endfunction

function void if_id_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    monitor.IFID = cfg.IFID;
    monitor.ap.connect(ap);
    /* Will not connect in this case
    if(cfg.active == UVM_ACTIVE) begin
        driver.IFID = cfg.IFID;
        driver.seq_item_port.connect(sequencer.seq_item_export);
    end
    */
    // To do: Connect monitor ap with fcov monitor 

endfunction
