module top_tb;
import common::*;
import uvm_pkg::*;

logic clk;
logic rstn;

wb_if WB_IF(.clk(clk), .rstn(rstn));
mem_if MEM_IF(.clk(clk), .rstn(rstn));


cpu DUT (
    .clk(clk),
    .reset_n(rstn),
    .io_rx(1'b1),
    .indication()
);

//TO DO MEM IF
//MEM_IF
assign MEM_IF.alu_data_in = DUT.ex_mem_reg.alu_data;
assign MEM_IF.memory_data_in = DUT.ex_mem_reg.memory_data;
assign MEM_IF.control_in = DUT.ex_mem_reg.control;
assign MEM_IF.pc_in = DUT.ex_mem_reg.pc;
assign MEM_IF.memory_data_out = DUT.memory_memory_data;


//WB_IF
assign WB_IF.mem_wb_reg = DUT.mem_wb_reg;

initial begin
    uvm_config_db #(virtual mem_if)::set(null, "uvm_test_top", "MEM_IF", MEM_IF);
    uvm_config_db #(virtual wb_if)::set(null, "uvm_test_top", "WB_IF", WB_IF);
    run_test();
end

initial begin
    clk = 0;
    rstn = 0;
    repeat(10) #12.5ns clk = ~clk;
    rstn = 1;
    forever begin
        #12.5ns clk = ~clk;
    end 
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0, top_tb);
end

endmodule
