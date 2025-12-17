class pipeline_agent_config extends uvm_object;

`uvm_object_utils(pipeline_agent_config)

virtual pipeline_if vif;

uvm_active_passive_enum active = UVM_PASSIVE;

extern function new(string name = "pipeline_agent_config");

endclass

function pipeline_agent_config::new(string name = "pipeline_agent_config");
    super.new(name);
endfunction
