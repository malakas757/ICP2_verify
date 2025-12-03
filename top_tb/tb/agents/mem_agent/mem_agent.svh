class mem_agent extends uvm_component;

    `uvm_component_utils(mem_agent);

    mem_monitor monitor;
    mem_agent_config cfg;
    uvm_analysis_port #(mem_seq_item) ap;

    extern function new(string name = "mem_agent", uvm_component parent = null);
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);

endclass

function mem_agent::new(string name = "mem_agent", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void mem_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);

    if(!uvm_config_db #(mem_agent_config)::get(this, "", "mem_agent_config", cfg)) begin
        `uvm_error("build_phase", "MEM agent config not found")
    end

    monitor = mem_monitor::type_id::create("monitor", this);
    ap = new("ap", this);

endfunction

function void mem_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    monitor.vif = cfg.vif;
    monitor.ap.connect(ap);

endfunction
