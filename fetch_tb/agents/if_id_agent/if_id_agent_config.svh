class if_id_agent_config extends uvm_object;

`uvm_object_utils(if_id_agent_config)

virtual if_id_if IFID;

uvm_active_passive_enum active = UVM_PASSIVE;

extern function new(string name = "if_id_agent_config");

endclass

function if_id_agent_config::new(string name = "if_id_agent_config");
    super.new(name);
endfunction