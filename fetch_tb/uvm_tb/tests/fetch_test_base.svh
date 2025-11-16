class fetch_test_base extends uvm_test;
`uvm_component_utils(fetch_test_base)

fetch_env m_env;
fetch_env_config m_env_config;
bpu_agent_config m_bpu_agent_cfg;
exec_agent_config m_exec_agent_cfg;
if_id_agent_config m_if_id_agent_cfg;

function new(string name = "fetch_test_base", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    m_env_config = fetch_env_config::type_id::create("m_env_config");
    m_bpu_agent_cfg = bpu_agent_config::type_id::create("m_bpu_config");
    m_if_id_agent_cfg = if_id_agent_config::type_id::create("m_if_id_config");
    m_exec_agent_cfg = exec_agent_config::type_id::create("m_exec_config");
    m_env = fetch_env::type_id::create("m_env", this);

    uvm_config_db #(virtual bpu_if)::get(this, "", "BPU", m_bpu_agent_cfg.BPU);
    uvm_config_db #(virtual exec_if)::get(this, "", "EXEC", m_exec_agent_cfg.EXEC);
    uvm_config_db #(virtual if_id_if)::get(this, "", "IFID", m_if_id_agent_cfg.IFID);  

    m_env_config.m_bpu_agent_cfg = m_bpu_agent_cfg;
    m_env_config.m_exec_agent_cfg = m_exec_agent_cfg;
    m_env_config.m_if_id_agent_cfg = m_if_id_agent_cfg;

    uvm_config_db #(fetch_env_config)::set(this, "m_env*", "fetch_env_config", m_env_config);
    
    
endfunction

virtual task set_run_flag(int delay_cycles);
    `uvm_info(get_type_name(), $sformatf("Waiting %0d cycles to set run_flag",delay_cycles), UVM_LOW)
    repeat(delay_cycles) @(posedge m_if_id_agent_cfg.IFID.clk);
    @(posedge m_if_id_agent_cfg.IFID.clk);
    m_if_id_agent_cfg.IFID.run_flag <= 1'b1;
    `uvm_info(get_type_name(), "run_flag is set to 1", UVM_LOW)
endtask

function init_vseq(fetch_vseq_base vseq);
    vseq.bpu_sqr = m_env.m_bpu_agent.sequencer;
    vseq.exec_sqr = m_env.m_exec_agent.sequencer;
    
endfunction

endclass
