class exec_base_seq extends uvm_sequence #(exec_seq_item);

`uvm_object_utils_begin(exec_base_seq)
    `uvm_field_int(nitem, UVM_DEFAULT)
    `uvm_field_int(offset_boundary, UVM_DEFAULT)
`uvm_object_utils_end


rand int offset_boundary;
rand int nitem;


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