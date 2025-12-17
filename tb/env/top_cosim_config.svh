class top_cosim_config extends uvm_object;
  string     isa_string;
  bit [31:0] start_pc;
  bit [31:0] start_mtvec;
  bit        probe_imem_for_errs;
  string     log_file;
  bit [31:0] pmp_num_regions;
  bit [31:0] pmp_granularity;
  bit [31:0] mhpm_counter_num;
  bit        relax_cosim_check;
  bit        secure_ibex;
  bit        icache;
  bit [31:0] dm_start_addr;
  bit [31:0] dm_end_addr;

  chandle cosim_handle;

  
  `uvm_object_utils_begin(top_cosim_config)
    `uvm_field_string(isa_string, UVM_DEFAULT)
    `uvm_field_int(start_pc,    UVM_DEFAULT)
    `uvm_field_int(start_mtvec, UVM_DEFAULT)
    `uvm_field_int(probe_imem_for_errs, UVM_DEFAULT)
    `uvm_field_string(log_file, UVM_DEFAULT)
    `uvm_field_int(pmp_num_regions, UVM_DEFAULT)
    `uvm_field_int(pmp_granularity, UVM_DEFAULT)
    `uvm_field_int(mhpm_counter_num, UVM_DEFAULT)
    `uvm_field_int(secure_ibex, UVM_DEFAULT)
    `uvm_field_int(icache, UVM_DEFAULT)
    `uvm_field_int(dm_start_addr, UVM_DEFAULT | UVM_HEX)
    `uvm_field_int(dm_end_addr, UVM_DEFAULT | UVM_HEX)
  `uvm_object_utils_end

  function new(string name = "cosim_config");
	  super.new(name);
  endfunction
  
endclass
