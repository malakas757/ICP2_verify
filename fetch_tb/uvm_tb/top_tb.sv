module top_tb;

import uvm_pkg::*;

logic clk;
logic rstn;

bpu_if BPU(.clk(clk), .rstn(rstn));
exec_if EXEC(.clk(clk), .rstn(rstn));
if_id_if IFID(.clk(clk), .rstn(rstn));

ifu DUT (
    .clk(clk),
    .reset_n(rstn),
    .execute_jalr_target_offset(EXEC.redirect_target),
    .execute_jalr_flag(EXEC.redirect_flag),
    .run_flag(IFID.run_flag),
    .fetch_prediction(BPU.pred),
    .pc_src(EXEC.pc_src),
    .pc_write(EXEC.pc_write),
    .fetch_pc(IFID.pc_out),
    .uncompressed_instr(IFID.instruction_out),
    .fetch_read_address(IFID.address),
    .if_id_flush(IFID.if_id_flush),
    .branch_id_ex_flush(IFID.id_ex_flush),
    .run_finished(IFID.run_finished_next),
    .fetch_decpompress_failed(IFID.decompress_failed),
    .is_conditional_branch(IFID.is_conditional_branch)
);

initial begin
    uvm_config_db #(virtual bpu_if)::set(null, "uvm_test_top", "BPU", BPU);
    uvm_config_db #(virtual exec_if)::set(null, "uvm_test_top", "EXEC", EXEC);
    uvm_config_db #(virtual if_id_if)::set(null, "uvm_test_top", "IFID", IFID);
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
    $fsdbDumpvars;
end

endmodule
