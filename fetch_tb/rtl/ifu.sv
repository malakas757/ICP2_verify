`timescale 1ns / 1ps

module ifu(
    input clk,
    input reset_n,
    input [31:0] execute_jalr_target_offset,
    input execute_jalr_flag,
    input run_flag,
    input fetch_prediction,
    input pc_src,
    input pc_write,
    output logic [31:0] fetch_pc,
    output logic [31:0] uncompressed_instr,
    output logic [31:0] fetch_read_address,
    output logic if_id_flush,
    output logic branch_id_ex_flush,
    output logic run_finished,
    output logic fetch_decpompress_failed,
    output logic is_conditional_branch
);

    logic [31:0] program_mem_read_data;

    fetch_stage inst_fetch_stage(
        .clk(clk), 
        .reset_n(reset_n),
        .data(program_mem_read_data),
        .pc_src(pc_src),
        .pc_write(pc_write),
        .prediction(fetch_prediction),
        .jalr_target_offset(execute_jalr_target_offset),
        .jalr_flag(execute_jalr_flag),
        .run_flag(run_flag),
        .address(fetch_read_address),
        .pc_out(fetch_pc),
        .instruction_out(uncompressed_instr),
        .if_id_flush(if_id_flush),
        .id_ex_flush(branch_id_ex_flush),
        .run_finished_next(run_finished),
        .decompress_failed(fetch_decpompress_failed),
        .is_conditional_branch(is_conditional_branch)
    );


    program_memory inst_mem(
        .clk(clk),        
        .byte_address(fetch_read_address),
        .write_enable(1'b0),
        .write_data(32'b0),
        .read_data(program_mem_read_data)
    );

endmodule