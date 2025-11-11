interface bpu_if(input clk, input rstn);
    logic pred;
clocking drv_cb @(posedge clk);
    default output #1ns;
    output pred;
endclocking

clocking mon_cb @(posedge clk);
    default input #1ns;
    input pred;
endclocking


endinterface