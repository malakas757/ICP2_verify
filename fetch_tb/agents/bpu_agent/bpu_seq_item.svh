class bpu_seq_item extends uvm_sequence_item;

rand bit pred;
rand bit [31:0] bpu_target;

`uvm_object_utils_begin(bpu_seq_item)
    `uvm_field_int(pred, UVM_DEFAULT)
    `uvm_field_int(bpu_target, UVM_DEFAULT)
`uvm_object_utils_end


extern function new(string name = "bpu_sequence_item");
endclass

function bpu_seq_item::new(string name = "bpu_sequence_item");
    super.new(name);
endfunction


