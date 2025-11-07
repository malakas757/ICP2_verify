
class ibex_rvfi_seq_item extends uvm_sequence_item;



  bit        irq_only;
  bit        trap;
  bit [31:0] pc;
  bit [4:0]  rd_addr;
  bit [31:0] rd_wdata;
  bit [63:0] order;
  bit [31:0] pre_mip;
  bit [31:0] post_mip;
  bit        nmi;
  bit        nmi_int;
  bit        debug_req;
  bit        rf_wr_suppress;
  bit [63:0] mcycle;

  bit [31:0] mhpmcounters  [10];
  bit [31:0] mhpmcountersh [10];
  bit        ic_scr_key_valid;

  `uvm_object_utils_begin(ibex_rvfi_seq_item)
    `uvm_field_int (trap, uvm_default)
    `uvm_field_int (pc, uvm_default)
    `uvm_field_int (rd_addr, uvm_default)
    `uvm_field_int (rd_wdata, uvm_default)
    `uvm_field_int (order, uvm_default)
    `uvm_field_int (pre_mip, uvm_default)
    `uvm_field_int (post_mip, uvm_default)
    `uvm_field_int (nmi, uvm_default)
    `uvm_field_int (nmi_int, uvm_default)
    `uvm_field_int (debug_req, uvm_default)
    `uvm_field_int (rf_wr_suppress, uvm_default)
    `uvm_field_int (mcycle, uvm_default)
    `uvm_field_sarray_int (mhpmcounters, uvm_default)
    `uvm_field_sarray_int (mhpmcountersh, uvm_default)
    `uvm_field_int (ic_scr_key_valid, uvm_default)
  `uvm_object_utils_end

	function new(string name);
		super.new(name);
	endfunction








endclass
