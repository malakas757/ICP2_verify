class top_env_config extends uvm_object;

wb_agent_config m_wb_agent_cfg;
mem_agent_config m_mem_agent_cfg;

`uvm_object_utils(top_env_config)

// other cfgs


function new(string name = "top_env_config");
    super.new(name);
endfunction

endclass