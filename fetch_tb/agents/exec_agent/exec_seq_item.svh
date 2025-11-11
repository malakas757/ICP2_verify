class exec_seq_item extends uvm_sequence_item;

`uvm_object_utils_begin(exec_seq_item)
    //`uvm_field_int(delay_cycles, UVM_DEFAULT);
    `uvm_field_int(jalr_target_offset, UVM_DEFAULT);    
    `uvm_field_int(jalr_flag, UVM_DEFAULT);
    `uvm_field_int(pc_src, UVM_DEFAULT);
`uvm_object_utils_end

rand logic [31:0] jalr_target_offset;
rand logic jalr_flag;
rand logic pc_src;
rand int delay_cycles;

/*
constraint delay_bounds {
    delay_cycles inside {[0 : 20]};
}
*/
constraint c_jalr_alignment{
    if(jalr_flag) {
        jalr_target_offset[0] == 1'b0;
        pc_src == 1'b0;
    }
}

constraint pc_src_alignment{
    if(pc_src) {
        jalr_flag == 1'b0;
        jalr_target_offset == 'b0;
    }
}




extern function new(string name = "exec_sequence_item");
endclass

function exec_seq_item::new(string name = "exec_sequence_item");
    super.new(name);
endfunction


