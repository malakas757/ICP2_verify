interface exec_if(input clk, input rstn);
    logic [31:0] jalr_target_offset;
    logic jalr_flag;
    logic pc_src;

endinterface