interface exec_if(input clk, input rstn);
    logic [31:0] jalr_target_offset;
    logic jalr_flag;
    logic pc_src;
    clocking drv_cb @(posedge clk);
        default output #1ns;
        output jalr_flag, jalr_target_offset, pc_src;
    endclocking
    clocking mon_cb @(posedge clk);
        default input #1ns;
        input jalr_flag, jalr_target_offset, pc_src;
    endclocking

endinterface