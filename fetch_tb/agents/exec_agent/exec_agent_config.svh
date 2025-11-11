class exec_agent_config extends uvm_object;

`uvm_object_utils(exec_agent_config)

virtual exec_if EXEC;

uvm_active_passive_enum active = UVM_ACTIVE;

extern function new(string name = "exec_agent_config");

endclass

function exec_agent_config::new(string name = "exec_agent_config");
    super.new(name);
endfunction