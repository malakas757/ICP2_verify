import common::*;
interface wb_if(input clk, input rstn);

    mem_wb_type  mem_wb_reg;
    logic run_flag;
    	
    clocking mon_cb @(posedge clk);
        default input #1ns;
        input run_flag, mem_wb_reg;
    endclocking



endinterface
