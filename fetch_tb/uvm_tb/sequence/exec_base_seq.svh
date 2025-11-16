class exec_base_seq extends uvm_sequence #(exec_seq_item);

`uvm_object_utils_begin(exec_base_seq)
    `uvm_field_int(jalr_target_offset, UVM_DEFAULT)
    `uvm_field_int(jalr_flag, UVM_DEFAULT)
    `uvm_field_int(pc_src, UVM_DEFAULT)
    `uvm_field_int(jalr_target_offset, UVM_DEFAULT)
    `uvm_field_int(jalr_0_weight, UVM_DEFAULT)
    `uvm_field_int(nitem, UVM_DEFAULT)
    `uvm_field_int(offset_boundary, UVM_DEFAULT)
`uvm_object_utils_end

rand int jalr_target_offset;
rand bit jalr_flag;
rand bit pc_src;
//  rand int delay_cycles;
rand int offset_boundary;
rand int jalr_0_weight;
rand int pc_write_0_weight;
rand int nitem;

constraint weight_alignment{
    jalr_0_weight inside {[0:10]};
    pc_write_0_weight inside {[0:10]};
}

function new(string name = "exec_base_seq");
    super.new(name);
endfunction

task body();
    repeat(nitem) send_item();
endtask

virtual task send_item();
    exec_seq_item req;
    `uvm_do_with(req,{})
    `uvm_info(get_type_name(), req.sprint(), UVM_LOW)
endtask

function void post_randomize();
      string s;
      s = {s, "AFTER RANDOMIZATION \n"};
      s = {s, "=======================================\n"};
      s = {s, "exec_seq is randomized as : \n"};
      s = {s, super.sprint()};
      s = {s, "=======================================\n"};
      `uvm_info(get_type_name(), s, UVM_LOW)
    endfunction

endclass