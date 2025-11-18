class exec_seq_item extends uvm_sequence_item;

`uvm_object_utils_begin(exec_seq_item)
    `uvm_field_int(redirect_target, UVM_DEFAULT)    
    `uvm_field_int(redirect_flag, UVM_DEFAULT)
    `uvm_field_int(pc_src, UVM_DEFAULT)
    `uvm_field_int(pc_write, UVM_DEFAULT)
`uvm_object_utils_end

rand bit [31:0] redirect_target;
rand bit redirect_flag;
rand bit pc_src;
rand bit pc_write; 

constraint c_redirect_alignment{
        redirect_target[0] == 1'b0;
}

extern function new(string name = "exec_sequence_item");
endclass

function exec_seq_item::new(string name = "exec_sequence_item");
    super.new(name);
endfunction


