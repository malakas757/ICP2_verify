class exec_weighted_random_seq extends exec_base_seq;

`uvm_object_utils_begin(exec_weighted_random_seq)
    `uvm_field_int(pc_write_0_weight, UVM_DEFAULT)
    `uvm_field_int(redirect_0_weight, UVM_DEFAULT)
    `uvm_field_int(exe_isbranch_0_weight, UVM_DEFAULT)
`uvm_object_utils_end

rand int redirect_0_weight;
rand int pc_write_0_weight;
rand int exe_isbranch_0_weight;

constraint weight_alignment{
    redirect_0_weight inside {[0:10]};
    pc_write_0_weight inside {[0:10]};
    exe_isbranch_0_weight inside {[0:10]};
}

// Uncompressed test
constraint boundary_alignment{
    offset_boundary[1:0] == 2'b0;
    exe_pc_boundary[1:0] == 2'b0;   
}

function new(string name = "exec_weighted_random_seq");
    super.new(name);
endfunction

virtual task send_item();
    exec_seq_item req;
    `uvm_do_with(req, {
        redirect_flag -> (pc_src == 0 &&
        redirect_target inside {[0:offset_boundary]});  
        pc_src -> (redirect_flag == 0);
        pc_write == 0 -> (pc_src == 0 && redirect_flag == 0);
        redirect_flag == 0 -> (redirect_target == 0);
        redirect_flag dist {0 := redirect_0_weight, 
                        1 := 10 - redirect_0_weight};
        pc_write dist {0 := pc_write_0_weight,
                       1 := 10 - pc_write_0_weight};  
        exe_isbranch -> (exe_pc_in inside {[0:exe_pc_boundary]});
        exe_isbranch == 0 -> exe_pc_in == 0;
        exe_isbranch dist {0 := exe_isbranch_0_weight,
                           1 := 10 - exe_isbranch_0_weight};
           
    })
    `uvm_info(get_type_name(), req.sprint(), UVM_LOW)
endtask

endclass
