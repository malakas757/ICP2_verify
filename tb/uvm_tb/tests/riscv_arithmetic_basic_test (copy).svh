class riscv_arithmetic_basic_test extends top_test_base;

`uvm_component_utils(riscv_arithmetic_basic_test)

extern function new(string name = "riscv_arithmetic_basic_test", uvm_component parent = null);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);

endclass

function riscv_arithmetic_basic_test::new(string name = "riscv_arithmetic_basic_test", uvm_component parent = null);
    super.new(name, parent);
endfunction

task riscv_arithmetic_basic_test::run_phase(uvm_phase phase);
   super.run_phase(phase);	
endtask

function void riscv_arithmetic_basic_test::report_phase(uvm_phase phase);
    //to do
endfunction
