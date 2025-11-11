interface if_id_if(input clk, input rstn);
    logic [31:0] address;
    logic [31:0] pc_out;
    logic [31:0] instruction_out;
    logic if_id_flush;
    logic id_ex_flush;
    logic decompress_failed;
    logic run_finished_next;
    logic is_conditional_branch;

    logic run_flag;

    clocking mon_cb @(posedge clk);
        default input #1ns;
        input address, pc_out, instruction_out, if_id_flush, id_ex_flush, 
        decompress_failed, run_finished_next, is_conditional_branch;
    endclocking

    // Waiting for base_test to drive
    clocking ctrl_cb @(posedge clk);
        default output #1ns;
        output run_flag;
    endclocking

endinterface