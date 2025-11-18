class exec_pc_jalr_conflict_seq extends exec_base_seq;
    `uvm_object_utils(exec_pc_jalr_conflict_seq)

    function new(string name = "exec_pc_jalr_conflict_seq");
        super.new(name);
    endfunction

    virtual task send_item();
        exec_seq_item req;
        `uvm_do_with(req, {
            pc_src == 1'b1;
            jalr_flag == 1'b1;
            jalr_target_offset inside {[0:offset_boundary]};
        })
        `uvm_info(get_type_name(), req.sprint(), UVM_HIGH)
    endtask

endclass