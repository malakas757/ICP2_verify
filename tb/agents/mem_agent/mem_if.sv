import common::*;
interface mem_if(input clk, input rstn );
    logic [31:0] alu_data_in;       
    logic [31:0] memory_data_in;     
    control_type control_in;        
    logic [31:0] pc_in;             
    logic [31:0] memory_data_out;
    logic run_flag;

    clocking mon_cb @(posedge clk);
        default input #1ns;
        input alu_data_in;
        input memory_data_in;
        input control_in;
        input pc_in;
        input memory_data_out;
        input run_flag;
    endclocking    

endinterface