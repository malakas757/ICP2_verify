class fetch_env extends uvm_component;

`uvm_component_utils(fetch_env)

bpu_agent m_bpu_agent;
exec_agent m_exec_agent;
if_id_agent m_if_id_agent;
virtual bpu_if BPU;
virtual exec_if EXEC;
virtual if_id_if IFID;
fetch_env_config m_cfg;

function new(string name = "uvm_env", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!(uvm_config_db #(fetch_env_config)::get(this, "", "fetch_env_config", m_cfg))) begin
        `uvm_fatal("build phase", "Unable to get env_config")
    end

    m_bpu_agent = bpu_agent::type_id::create("m_bpu_agent", this);
    m_exec_agent = exec_agent::type_id::create("m_exec_agent", this);
    m_if_id_agent = if_id_agent::type_id::create("m_if_id_agent", this);

    uvm_config_db #(bpu_agent_config)::set(this, "m_bpu_agent*", "bpu_agent_config", m_cfg.m_bpu_agent_cfg);
    uvm_config_db #(exec_agent_config)::set(this, "m_exec_agent*", "exec_agent_config", m_cfg.m_exec_agent_cfg);
    uvm_config_db #(if_id_agent_config)::set(this, "m_if_id_agent*", "if_id_agent_config", m_cfg.m_if_id_agent_cfg);

endfunction

function void connect_phase(uvm_phase phase);
    // to do
endfunction

endclass