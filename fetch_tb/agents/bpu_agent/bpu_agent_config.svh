class bpu_agent_config extends uvm_object;

`uvm_object_utils(bpu_agent_config)

virtual bpu_if BPU;

uvm_active_passive_enum active = UVM_ACTIVE;

extern function new(string name = "bpu_agent_config");

endclass

function bpu_agent_config::new(string name = "bpu_agent_config");
    super.new(name);
endfunction