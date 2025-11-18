interface exec_if(input clk, input rstn);
    logic [31:0] redirect_target;
    logic redirect_flag;
    logic pc_src;
    logic pc_write;

    clocking drv_cb @(posedge clk);
        default output #1ns;
        output redirect_flag, redirect_target, pc_src, pc_write;
    endclocking
    clocking mon_cb @(posedge clk);
        default input #1ns;
        input redirect_flag, redirect_target, pc_src, pc_write;
    endclocking

endinterface