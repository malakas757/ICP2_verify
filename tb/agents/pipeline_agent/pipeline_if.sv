import common::*;
interface pipeline_if(input clk, input rstn);

    logic is_compressed;
    logic [31:0] if_id_pc;

    logic [4:0] id_ex_rs1, id_ex_rs2;
    control_type id_ex_control;

    logic [4:0] ex_mem_rd;
    control_type ex_mem_control;
    	
    clocking mon_cb @(posedge clk);
        default input #1ns;
        input if_id_pc, is_compressed, id_ex_rs1, id_ex_rs2, id_ex_control,
              ex_mem_rd, ex_mem_control;
    endclocking

endinterface
