class wb_agent extends uvm_component;

    `uvm_component_utils(wb_agent);
    //wb_driver driver;
    wb_monitor monitor;
    //wb_sequencer sequencer;
    //wb_coverage_monitor fcov_monitor;
    wb_agent_config cfg;
    uvm_analysis_port #(wb_seq_item) ap;

    extern function new(string name = "wb_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function wb_agent::new(string name = "wb_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void wb_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(wb_agent_config)::get(this, "", "wb_agent_config", cfg)) begin
        `uvm_error("build_phase", "WB agent config not found")
    end

    monitor = wb_monitor::type_id::create("monitor", this);

/* Will not be created in this case
    if(cfg.active == UVM_ACTIVE) begin
        driver = wb_driver::type_id::create("driver", this);
        sequencer = wb_sequencer::type_id::create("sequencer", this);
    end
*/
    ap = new("ap", this);

// To do: fcov monitor

endfunction

function void wb_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    monitor.vif = cfg.vif;
    monitor.ap.connect(ap);
    /* Will not connect in this case
    if(cfg.active == UVM_ACTIVE) begin
        driver.IFID = cfg.IFID;
        driver.seq_item_port.connect(sequencer.seq_item_export);
    end
    */
    // To do: Connect monitor ap with fcov monitor 

endfunction
