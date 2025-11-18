interface bpu_if(input clk, input rstn);
    logic pred;
    logic [31:0] bpu_target;
clocking drv_cb @(posedge clk);
    default output #1ns;
    output pred, bpu_target;
endclocking

clocking mon_cb @(posedge clk);
    default input #1ns;
    input pred, bpu_target;
endclocking


endinterface