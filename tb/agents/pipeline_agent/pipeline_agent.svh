class pipeline_agent extends uvm_component;

    `uvm_component_utils(pipeline_agent);
    //pipeline_driver driver;
    pipeline_monitor monitor;
    //pipeline_sequencer sequencer;
    //pipeline_coverage_monitor fcov_monitor;
    pipeline_agent_config cfg;
    uvm_analysis_port #(pipeline_seq_item) ap;

    extern function new(string name = "pipeline_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function pipeline_agent::new(string name = "pipeline_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void pipeline_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(pipeline_agent_config)::get(this, "", "pipeline_agent_config", cfg)) begin
        `uvm_error("build_phase", "PIPELINE agent config not found")
    end

    monitor = pipeline_monitor::type_id::create("monitor", this);
    
/* Will not be created in this case
    if(cfg.active == UVM_ACTIVE) begin
        driver = pipeline_driver::type_id::create("driver", this);
        sequencer = pipeline_sequencer::type_id::create("sequencer", this);
    end
*/
    ap = new("ap", this);

// To do: fcov monitor

endfunction

function void pipeline_agent::connect_phase(uvm_phase phase);
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
    //monitor.ap.connect(isa_cov.analysis_export);

endfunction
