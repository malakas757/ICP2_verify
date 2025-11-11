class if_id_seq_item extends uvm_sequence_item;

`uvm_object_utils_begin(if_id_seq_item)
    `uvm_field_int(address, UVM_DEFAULT)
    `uvm_field_int(pc_out, UVM_DEFAULT)
    `uvm_field_int(if_id_flush, UVM_DEFAULT)
    `uvm_field_int(id_ex_flush, UVM_DEFAULT)
    `uvm_field_int(decompress_failed, UVM_DEFAULT)
    `uvm_field_int(run_finished_next, UVM_DEFAULT)
    `uvm_field_int(is_conditional_branch, UVM_DEFAULT)
    `uvm_field_int(instruction_out, UVM_DEFAULT)
    
`uvm_object_utils_end

logic [31:0] address;
logic [31:0] pc_out;
logic [31:0] instruction_out;
logic if_id_flush;
logic id_ex_flush;
logic decompress_failed;
logic run_finished_next;
logic is_conditional_branch;


extern function new(string name = "if_id_sequence_item");

endclass

function if_id_seq_item::new(string name = "if_id_sequence_item");
    super.new(name);
endfunction


