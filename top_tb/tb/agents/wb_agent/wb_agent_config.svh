class wb_agent_config extends uvm_object;

`uvm_object_utils(wb_agent_config)

virtual wb_if vif;

uvm_active_passive_enum active = UVM_PASSIVE;

extern function new(string name = "wb_agent_config");

endclass

function wb_agent_config::new(string name = "wb_agent_config");
    super.new(name);
endfunction
