module top_tb;
import common::*;
import uvm_pkg::*;

logic clk;
logic rstn;

wb_if WB_IF(.clk(clk), .rstn(rstn));
mem_if MEM_IF(.clk(clk), .rstn(rstn));
pipeline_if PIPELINE_IF(.clk(clk), .rstn(rstn));


cpu DUT (
    .clk(clk),
    .reset_n(rstn),
    .io_rx(1'b1),
    .indication()
);

//MEM IF


//WB_IF
assign WB_IF.mem_wb_reg = DUT.mem_wb_reg;
//PIPELINE_IF
assign PIPELINE_IF.is_compressed = DUT.inst_fetch_stage.is_compressed;
assign PIPELINE_IF.if_id_pc = DUT.fetch_pc;
assign PIPELINE_IF.id_ex_rs1 = DUT.id_ex_reg.reg_rs1_id;
assign PIPELINE_IF.id_ex_rs2 = DUT.id_ex_reg.reg_rs2_id;
assign PIPELINE_IF.id_ex_control = DUT.id_ex_reg.control;
assign PIPELINE_IF.ex_mem_rd = DUT.ex_mem_reg.reg_rd_id;
assign PIPELINE_IF.ex_mem_control = DUT.ex_mem_reg.control;



initial begin
    uvm_config_db #(virtual mem_if)::set(null, "uvm_test_top", "MEM_IF", MEM_IF);
    uvm_config_db #(virtual wb_if)::set(null, "uvm_test_top", "WB_IF", WB_IF);
    uvm_config_db #(virtual pipeline_if)::set(null, "uvm_test_top", "PIPELINE_IF", PIPELINE_IF);
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
