class mem_agent_config extends uvm_object;

`uvm_object_utils(mem_agent_config)

virtual mem_if vif;

uvm_active_passive_enum active = UVM_PASSIVE;
chandle cosim_h;

function new(string name = "mem_agent_config");
    super.new(name);
endfunction



endclass