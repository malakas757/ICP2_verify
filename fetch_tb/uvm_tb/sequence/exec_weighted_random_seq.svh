class exec_weighted_random_seq extends exec_base_seq;

`uvm_object_utils_begin(exec_weighted_random_seq)
    `uvm_field_int(pc_write_0_weight, UVM_DEFAULT)
    `uvm_field_int(jalr_0_weight, UVM_DEFAULT)
`uvm_object_utils_end

rand int jalr_0_weight;
rand int pc_write_0_weight;

constraint weight_alignment{
    jalr_0_weight inside {[0:10]};
    pc_write_0_weight inside {[0:10]};
}

function new(string name = "exec_weighted_random_seq");
    super.new(name);
endfunction

virtual task send_item();
    exec_seq_item req;
    `uvm_do_with(req, {
        jalr_flag -> (pc_src == 0 &&
        jalr_target_offset inside {[0:offset_boundary]});  
        pc_src -> (jalr_flag == 0);
        pc_write == 0 -> (pc_src == 0 && jalr_flag == 0);
        jalr_flag == 0 -> (jalr_target_offset == 0);
        jalr_flag dist {0 := jalr_0_weight, 
                        1 := 10 - jalr_0_weight};
        pc_write dist {0 := pc_write_0_weight,
                       1 := 10 - pc_write_0_weight};     
    })
    `uvm_info(get_type_name(), req.sprint(), UVM_LOW)
endtask

endclass