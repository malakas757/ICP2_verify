class mem_seq_item extends uvm_sequence_item;
    logic [31:0] address;       
    logic [31:0] store_data;   
    logic mem_write;  
    control_type control;        
    logic [31:0] pc;             
    logic [31:0] load_data;

`uvm_object_utils_begin(mem_seq_item)
    `uvm_field_int(address, UVM_DEFAULT)
    `uvm_field_int(store_data, UVM_DEFAULT)
    `uvm_field_int(mem_write, UVM_DEFAULT)
    `uvm_field_enum(control_type, control, UVM_DEFAULT)
    `uvm_field_int(pc, UVM_DEFAULT)
    `uvm_field_int(load_data, UVM_DEFAULT)
`uvm_object_utils_end

function  new(string name = "mem_seq_item");
    super.new(name);
endfunction
endclass