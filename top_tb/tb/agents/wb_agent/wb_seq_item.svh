class wb_seq_item extends uvm_sequence_item;


`uvm_object_utils_begin(wb_seq_item)
/*
    `uvm_field_int(rd_id, UVM_DEFAULT)
    `uvm_field_int(pc, UVM_DEFAULT)
    `uvm_field_int(data, UVM_DEFAULT)
    `uvm_field_int(control_type, UVM_DEFAULT)
*/
`uvm_object_utils_end

   logic [4:0]  rd_id;   
   logic [31:0] pc;
   logic [31:0] data;
   control_type control;
   


extern function new(string name = "wb_sequence_item");

endclass

function wb_seq_item::new(string name = "wb_sequence_item");
    super.new(name);
endfunction


