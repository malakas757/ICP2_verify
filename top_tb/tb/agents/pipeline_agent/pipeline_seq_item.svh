class pipeline_seq_item extends uvm_sequence_item;
`uvm_object_utils(pipeline_seq_item)

logic is_compressed;
logic [31:0] if_id_pc;

logic [4:0] id_ex_rs1, id_ex_rs2;
control_type id_ex_control;
logic id_ex_valid;

logic [4:0] ex_mem_rd;
control_type ex_mem_control;
logic ex_mem_valid;

//wb_rd, wb_reg_write


/*
`uvm_object_utils_begin(pipeline_seq_item)
    `uvm_field_int(is_compressed, UVM_DEFAULT)
    `uvm_field_int(if_id_pc, UVM_DEFAULT)
    `uvm_field_int(id_ex_rs1, UVM_DEFAULT)
    `uvm_field_int(id_ex_rs2, UVM_DEFAULT)
    //`uvm_field_enum(control_type, id_ex_control, UVM_DEFAULT)
    `uvm_field_int(ex_mem_rd, UVM_DEFAULT)
    `uvm_field_int(ex_mem_reg_write, UVM_DEFAULT)
    `uvm_field_int(ex_mem_mem_read, UVM_DEFAULT)
`uvm_object_utils_end
*/

extern function new(string name = "pipeline_sequence_item");

endclass

function pipeline_seq_item::new(string name = "pipeline_sequence_item");
    super.new(name);
endfunction


