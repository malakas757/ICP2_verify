class exec_seq_item extends uvm_sequence_item;

rand bit [31:0] redirect_target;
rand bit redirect_flag;
rand bit pc_src;
rand bit pc_write; 
rand bit exe_isbranch;
rand bit [31:0] exe_pc_in;

`uvm_object_utils_begin(exec_seq_item)
    `uvm_field_int(redirect_target, UVM_DEFAULT)    
    `uvm_field_int(redirect_flag, UVM_DEFAULT)
    `uvm_field_int(pc_src, UVM_DEFAULT)
    `uvm_field_int(pc_write, UVM_DEFAULT)
    `uvm_field_int(exe_isbranch, UVM_DEFAULT)
    `uvm_field_int(exe_pc_in, UVM_DEFAULT)
`uvm_object_utils_end

/*
constraint c_redirect_alignment{
        redirect_target[0] == 1'b0;
}
//debug
constraint c_redirect_flag{
        redirect_flag == 1'b0;
}
constraint c_pc_write{
        pc_write == 1'b1;
}
*/

extern function new(string name = "exec_sequence_item");
endclass

function exec_seq_item::new(string name = "exec_sequence_item");
    super.new(name);
endfunction


