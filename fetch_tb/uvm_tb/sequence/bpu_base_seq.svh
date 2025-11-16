class bpu_base_seq extends uvm_sequence #(bpu_seq_item);
    rand int nitem;
    rand int pred;

`uvm_object_utils_begin(bpu_base_seq)
    `uvm_field_int(pred, UVM_DEFAULT)
    `uvm_field_int(nitem, UVM_DEFAULT)

`uvm_object_utils_end


function new(string name = "bpu_base_seq");
    super.new(name);
endfunction

task body();
    `uvm_info(get_type_name(), $sformatf("body() entered, nitem=%0d", nitem), UVM_LOW)
    repeat(nitem) send_item();
endtask

virtual task send_item();
    bpu_seq_item req;
    `uvm_do_with(req, {});
    `uvm_info(get_type_name(), req.sprint(), UVM_LOW)
endtask

function void post_randomize();
      string s;
      s = {s, "AFTER RANDOMIZATION \n"};
      s = {s, "=======================================\n"};
      s = {s, "bpu_seq is randomized as : \n"};
      s = {s, super.sprint()};
      s = {s, "=======================================\n"};
      `uvm_info(get_type_name(), s, UVM_LOW)
    endfunction

endclass
