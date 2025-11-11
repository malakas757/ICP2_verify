class bpu_seq_item extends uvm_sequence_item;

`uvm_object_utils_begin(bpu_seq_item)
    `uvm_field_int(pred, UVM_DEFAULT)
    //`uvm_field_int(delay_cycles, UVM_DEFAULT);
`uvm_object_utils_end

rand logic pred;
rand int delay_cycles;

/*
constraint delay_bounds {
    delay_cycles inside {[0 : 20]};
}
*/

extern function new(string name = "bpu_sequence_item");
endclass

function bpu_seq_item::new(string name = "bpu_sequence_item");
    super.new(name);
endfunction


