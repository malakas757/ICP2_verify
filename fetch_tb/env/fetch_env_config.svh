class fetch_env_config extends uvm_object;

`uvm_object_utils(fetch_env_config)

bpu_agent_config m_bpu_agent_cfg;
exec_agent_config m_exec_agent_cfg;
if_id_agent_config m_if_id_agent_cfg;

function new(string name = "fetch_env_config");
    super.new(name);
endfunction

endclass