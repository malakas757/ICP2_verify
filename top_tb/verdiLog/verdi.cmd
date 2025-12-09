debImport "-full64"
nsMsgSwitchTab -tab general
debImport "/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb/tb/uvm_tb/top_tb.sv" \
          "-sv" -path {/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb}
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb/test.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/WB_IF"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 )} 
wvSetPosition -win $_nWave2 {("G1" 49)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvScrollUp -win $_nWave2 23
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 181656.231861 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 166391.002292 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 178603.185947 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 163337.956379 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 175550.140033 -snap {("G1" 4)}
wvScrollDown -win $_nWave2 14
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetCursor -win $_nWave2 164864.479336 -snap {("G1" 35)}
wvSetCursor -win $_nWave2 189288.846645 -snap {("G1" 35)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetCursor -win $_nWave2 161811.433422 -snap {("G1" 35)}
wvSetCursor -win $_nWave2 190815.369601 -snap {("G1" 35)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 160284.910465 -snap {("G1" 35)}
wvSetCursor -win $_nWave2 178603.185947 -snap {("G1" 35)}
wvSetCursor -win $_nWave2 212186.690997 -snap {("G1" 35)}
wvSelectSignal -win $_nWave2 {( "G1" 47 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetCursor -win $_nWave2 232169.320164 -snap {("G1" 49)}
wvSetCursor -win $_nWave2 256608.195971 -snap {("G1" 49)}
wvSetCursor -win $_nWave2 229114.460688 -snap {("G1" 49)}
wvSetCursor -win $_nWave2 261190.485185 -snap {("G1" 49)}
wvScrollUp -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetCursor -win $_nWave2 163434.981958 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 177181.849599 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 161907.552220 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 183291.568551 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 143578.395365 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 212312.733571 -snap {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 158992.743009 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 188039.494135 -snap {("G1" 18)}
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 8
wvScrollUp -win $_nWave2 21
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvSelectSignal -win $_nWave2 {( "G1" 24 )} 
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 15
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/PIPELINE_IF/mon_cb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/PIPELINE_IF"
wvGetSignalSetScope -win $_nWave2 "/top_tb/MEM_IF/mon_cb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/MEM_IF"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
{/top_tb/DUT/inst_fetch_stage/current_instr\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetCursor -win $_nWave2 174364.085764 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 136126.347658 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 152950.952424 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 134596.838133 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 162128.009570 -snap {("G1" 50)}
wvSetCursor -win $_nWave2 183541.142909 -snap {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 47)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSetPosition -win $_nWave2 {("G1" 45)}
wvSetPosition -win $_nWave2 {("G1" 44)}
wvSetPosition -win $_nWave2 {("G1" 43)}
wvSetPosition -win $_nWave2 {("G1" 42)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSetPosition -win $_nWave2 {("G1" 38)}
wvSetPosition -win $_nWave2 {("G1" 37)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetCursor -win $_nWave2 209542.804821 -snap {("G1" 25)}
wvSetCursor -win $_nWave2 189659.181006 -snap {("G1" 25)}
wvSetCursor -win $_nWave2 208013.295297 -snap {("G1" 25)}
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 14
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvShowFilterTextField -win $_nWave2 -on
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 11
wvScrollUp -win $_nWave2 18
wvScrollUp -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollDown -win $_nWave2 25
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/inst_fetch_stage/current_instr\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/decode_failed} \
{/top_tb/DUT/inst_decode_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction_illegal} \
{/top_tb/DUT/inst_decode_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/reg_illegal} \
{/top_tb/DUT/inst_decode_stage/reg_rd_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/reset_n} \
{/top_tb/DUT/inst_decode_stage/rf_read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/rf_read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_en} \
{/top_tb/DUT/inst_decode_stage/write_id\[4:0\]} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 28
wvScrollDown -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
wvScrollDown -win $_nWave2 26
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvSelectSignal -win $_nWave2 {( "G1" 66 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/decode_failed} \
{/top_tb/DUT/inst_decode_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction_illegal} \
{/top_tb/DUT/inst_decode_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/reg_illegal} \
{/top_tb/DUT/inst_decode_stage/reg_rd_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/reset_n} \
{/top_tb/DUT/inst_decode_stage/rf_read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/rf_read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_en} \
{/top_tb/DUT/inst_decode_stage/write_id\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 367082.285819 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 165187.028618 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 192718.200055 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 177644.781150 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 206741.771166 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 263404.330670 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 254215.807507 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 234307.340654 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/decode_failed} \
{/top_tb/DUT/inst_decode_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction_illegal} \
{/top_tb/DUT/inst_decode_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/reg_illegal} \
{/top_tb/DUT/inst_decode_stage/reg_rd_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/reset_n} \
{/top_tb/DUT/inst_decode_stage/rf_read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/rf_read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_en} \
{/top_tb/DUT/inst_decode_stage/write_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/inst_control/decode_failed} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetCursor -win $_nWave2 295564.161741 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 260341.489616 -snap {("G1" 15)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage/inst_control"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage/inst_control"
wvGetSignalNavigateScope -win $_nWave2 -prev \
           "/top_tb/DUT/inst_decode_stage/inst_control"
wvGetSignalNavigateScope -win $_nWave2 -next
wvGetSignalNavigateScope -win $_nWave2 -prev
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetOptions -win $_nWave2 -signalnavigation on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -overlap on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -order on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
verdiDockWidgetRestore -dock windowDock_nWave_2
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.MEM_IF" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
debReload
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_decode_stage"
verdiDockWidgetRestore -dock windowDock_nWave_2
srcHBSelect "top_tb.MEM_IF" -win $_nTrace1
srcHBSelect "top_tb.PIPELINE_IF" -win $_nTrace1
srcHBSelect "top_tb.WB_IF" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
nsMsgSwitchTab -tab general
debImport "/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb/tb/uvm_tb/top_tb.sv" \
          "-sv" -path {/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb}
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.DUT" -delim "."
srcHBSelect "top_tb.DUT" -win $_nTrace1
srcHBSelect "top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb" -delim "."
srcHBSelect "top_tb" -win $_nTrace1
srcHBSelect "top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb" -delim "."
srcHBSelect "top_tb" -win $_nTrace1
srcHBSelect "top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb" -delim "."
srcHBSelect "top_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "DUT" -line 13 -pos 1 -win $_nTrace1
srcAction -pos 12 2 1 -win $_nTrace1 -name "DUT" -ctrlKey off
debReload
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/sjp/Desktop/ICP2_verify/ICP2_verify/top_tb/test.fsdb}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvSetPosition -win $_nWave3 {("G1" 20)}
wvSetPosition -win $_nWave3 {("G1" 20)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/control_signals} \
{/top_tb/DUT/inst_decode_stage/controls} \
{/top_tb/DUT/inst_decode_stage/decode_failed} \
{/top_tb/DUT/inst_decode_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction} \
{/top_tb/DUT/inst_decode_stage/instruction_illegal} \
{/top_tb/DUT/inst_decode_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/reg_illegal} \
{/top_tb/DUT/inst_decode_stage/reg_rd_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/reset_n} \
{/top_tb/DUT/inst_decode_stage/rf_read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/rf_read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_en} \
{/top_tb/DUT/inst_decode_stage/write_id\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 )} 
wvSetPosition -win $_nWave3 {("G1" 20)}
wvGetSignalClose -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvExpandBus -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 26)}
wvSetCursor -win $_nWave3 198402.361537 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 209085.565620 -snap {("G1" 8)}
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSetRadix -win $_nWave3 -format Hex
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvExpandBus -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 36)}
wvSetCursor -win $_nWave3 158845.161593 -snap {("G1" 4)}
wvSetCursor -win $_nWave3 183282.878761 -snap {("G1" 4)}
wvSetCursor -win $_nWave3 160372.518916 -snap {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvScrollDown -win $_nWave3 10
wvSelectSignal -win $_nWave3 {( "G1" 29 )} 
wvSetCursor -win $_nWave3 184810.236084 -snap {("G1" 29)}
wvSelectSignal -win $_nWave3 {( "G1" 30 )} 
wvSetCursor -win $_nWave3 209247.953252 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 187864.950730 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 210775.310575 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 187864.950730 -snap {("G1" 24)}
wvSetCursor -win $_nWave3 207720.595929 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 166481.948208 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 177173.449469 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 210775.310575 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 187864.950730 -snap {("G1" 30)}
wvSetCursor -win $_nWave3 210775.310575 -snap {("G1" 30)}
wvSelectSignal -win $_nWave3 {( "G1" 29 )} 
wvSelectSignal -win $_nWave3 {( "G1" 24 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSetCursor -win $_nWave3 160372.518916 -snap {("G1" 6)}
wvSetCursor -win $_nWave3 186337.593407 -snap {("G1" 6)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 209247.953252 -snap {("G1" 30)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 187864.950730 -snap {("G1" 30)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSetCursor -win $_nWave3 214083.124205 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 186558.151093 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 214083.124205 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 188087.316266 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 215612.289378 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 185028.985920 -snap {("G1" 14)}
wvScrollDown -win $_nWave3 10
wvScrollUp -win $_nWave3 10
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G1" 37)}
wvSetPosition -win $_nWave3 {("G1" 37)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/clk} \
{/top_tb/DUT/inst_decode_stage/control_signals} \
{/top_tb/DUT/inst_decode_stage/control_signals.alu_op\[3:0\]} \
{/top_tb/DUT/inst_decode_stage/control_signals.encoding\[2:0\]} \
{/top_tb/DUT/inst_decode_stage/control_signals.alu_src} \
{/top_tb/DUT/inst_decode_stage/control_signals.mem_read} \
{/top_tb/DUT/inst_decode_stage/control_signals.mem_write} \
{/top_tb/DUT/inst_decode_stage/control_signals.reg_write} \
{/top_tb/DUT/inst_decode_stage/control_signals.mem_to_reg} \
{/top_tb/DUT/inst_decode_stage/control_signals.mem_size\[1:0\]} \
{/top_tb/DUT/inst_decode_stage/control_signals.mem_sign} \
{/top_tb/DUT/inst_decode_stage/control_signals.is_branch} \
{/top_tb/DUT/inst_decode_stage/controls} \
{/top_tb/DUT/inst_decode_stage/decode_failed} \
{/top_tb/DUT/inst_decode_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction} \
{/top_tb/DUT/inst_decode_stage/instruction.funct7\[6:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction.rs2\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction.rs1\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction.funct3\[2:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction.rd\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction.opcode\[6:0\]} \
{/top_tb/DUT/inst_decode_stage/instruction_illegal} \
{/top_tb/DUT/inst_decode_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/reg_illegal} \
{/top_tb/DUT/inst_decode_stage/reg_rd_id\[4:0\]} \
{/top_tb/DUT/inst_decode_stage/reset_n} \
{/top_tb/DUT/inst_decode_stage/rf_read_data1\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/rf_read_data2\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_data\[31:0\]} \
{/top_tb/DUT/inst_decode_stage/write_en} \
{/top_tb/DUT/inst_decode_stage/write_id\[4:0\]} \
{/top_tb/DUT/if_id_reg} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 37 )} 
wvSetPosition -win $_nWave3 {("G1" 37)}
wvGetSignalClose -win $_nWave3
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 30 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSetCursor -win $_nWave3 207966.463513 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 186558.151093 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 217141.454550 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 188087.316266 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 160562.343154 -snap {("G1" 14)}
wvSetCursor -win $_nWave3 180441.490401 -snap {("G1" 14)}
wvSelectSignal -win $_nWave3 {( "G1" 19 )} 
wvSelectSignal -win $_nWave3 {( "G1" 19 20 )} 
wvSelectSignal -win $_nWave3 {( "G1" 19 20 )} 
wvSetRadix -win $_nWave3 -format Hex
wvSelectSignal -win $_nWave3 {( "G1" 19 20 )} 
wvSetRadix -win $_nWave3 -format Hex
wvSelectSignal -win $_nWave3 {( "G1" 19 20 )} 
wvSetRadix -win $_nWave3 -format Oct
wvSetCursor -win $_nWave3 212553.959032 -snap {("G1" 19)}
wvSetCursor -win $_nWave3 186558.151093 -snap {("G1" 19)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvAddAllSignals -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 6
wvScrollDown -win $_nWave3 9
wvSelectSignal -win $_nWave3 {( "G1" 36 )} 
wvSetCursor -win $_nWave3 833395.019225 -snap {("G1" 36)}
wvScrollDown -win $_nWave3 9
wvScrollDown -win $_nWave3 32
wvScrollUp -win $_nWave3 9
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 15
wvScrollUp -win $_nWave3 102
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G1" 60)}
wvSetPosition -win $_nWave3 {("G1" 60)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/branch_id_ex_flush} \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_control} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/ex_mem_reg_next} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_control} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/id_ex_reg_next} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/if_id_reg_next} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/mem_wb_reg} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_control} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 \
           41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 )} 
wvSetPosition -win $_nWave3 {("G1" 60)}
wvSetPosition -win $_nWave3 {("G1" 60)}
wvSetPosition -win $_nWave3 {("G1" 60)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/branch_id_ex_flush} \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_control} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/ex_mem_reg_next} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_control} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/id_ex_reg_next} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/if_id_reg_next} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/mem_wb_reg} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_control} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 \
           41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 )} 
wvSetPosition -win $_nWave3 {("G1" 60)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 55 )} 
wvSelectSignal -win $_nWave3 {( "G1" 54 )} 
wvScrollUp -win $_nWave3 8
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 34 )} 
wvSelectSignal -win $_nWave3 {( "G1" 35 )} 
wvSelectSignal -win $_nWave3 {( "G1" 37 )} 
wvSelectSignal -win $_nWave3 {( "G1" 36 )} 
wvSelectSignal -win $_nWave3 {( "G1" 37 )} 
wvSelectSignal -win $_nWave3 {( "G1" 36 )} 
wvScrollUp -win $_nWave3 2
wvScrollUp -win $_nWave3 15
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 17
wvSelectSignal -win $_nWave3 {( "G1" 31 )} 
wvSetPosition -win $_nWave3 {("G1" 31)}
wvExpandBus -win $_nWave3 {("G1" 31)}
wvSetPosition -win $_nWave3 {("G1" 63)}
wvSelectSignal -win $_nWave3 {( "G1" 33 )} 
wvSelectSignal -win $_nWave3 {( "G1" 34 )} 
wvSelectSignal -win $_nWave3 {( "G1" 28 )} 
wvSelectSignal -win $_nWave3 {( "G1" 27 )} 
wvSetPosition -win $_nWave3 {("G1" 27)}
wvExpandBus -win $_nWave3 {("G1" 27)}
wvSetPosition -win $_nWave3 {("G1" 73)}
wvScrollDown -win $_nWave3 30
wvScrollUp -win $_nWave3 5
wvScrollUp -win $_nWave3 42
wvSelectSignal -win $_nWave3 {( "G1" 13 )} 
wvSelectSignal -win $_nWave3 {( "G1" 20 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSetPosition -win $_nWave3 {("G1" 14)}
wvExpandBus -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 83)}
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSetPosition -win $_nWave3 {("G1" 14)}
wvCollapseBus -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 73)}
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSetPosition -win $_nWave3 {("G1" 14)}
wvExpandBus -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 83)}
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 13 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 2
wvScrollDown -win $_nWave3 4
wvScrollDown -win $_nWave3 4
wvScrollUp -win $_nWave3 10
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvExpandBus -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 88)}
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvCollapseBus -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 83)}
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvExpandBus -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 88)}
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvCollapseBus -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 83)}
wvScrollDown -win $_nWave3 7
wvSelectSignal -win $_nWave3 {( "G1" 30 )} 
wvSetCursor -win $_nWave3 564261.948797 -snap {("G1" 30)}
wvScrollDown -win $_nWave3 27
wvSelectSignal -win $_nWave3 {( "G1" 30 47 )} 
wvScrollDown -win $_nWave3 0
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSelectGroup -win $_nWave3 {G2}
wvSelectGroup -win $_nWave3 {G1}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_execute_stage"
wvSetPosition -win $_nWave3 {("G1" 24)}
wvSetPosition -win $_nWave3 {("G1" 24)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_result\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/control_in} \
{/top_tb/DUT/inst_execute_stage/control_out} \
{/top_tb/DUT/inst_execute_stage/data1\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2_or_imm\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs1\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs2\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/jalr_flag} \
{/top_tb/DUT/inst_execute_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/left_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/mem_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/memory_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/overflow} \
{/top_tb/DUT/inst_execute_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_src} \
{/top_tb/DUT/inst_execute_stage/right_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/store_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/wb_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/zero_flag} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 )} 
wvSetPosition -win $_nWave3 {("G1" 24)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 24 )} 
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSelectSignal -win $_nWave3 {( "G1" 21 )} 
wvSelectSignal -win $_nWave3 {( "G1" 24 )} 
wvSelectSignal -win $_nWave3 {( "G1" 23 )} 
wvSelectSignal -win $_nWave3 {( "G1" 22 )} 
wvSelectSignal -win $_nWave3 {( "G1" 21 )} 
wvSelectSignal -win $_nWave3 {( "G1" 20 )} 
wvSelectSignal -win $_nWave3 {( "G1" 19 )} 
wvSelectSignal -win $_nWave3 {( "G1" 18 )} 
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 21 )} 
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_execute_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalClose -win $_nWave3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_execute_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G1" 27)}
wvSetPosition -win $_nWave3 {("G1" 27)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_result\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/control_in} \
{/top_tb/DUT/inst_execute_stage/control_out} \
{/top_tb/DUT/inst_execute_stage/data1\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2_or_imm\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs1\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs2\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/jalr_flag} \
{/top_tb/DUT/inst_execute_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/left_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/mem_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/memory_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/overflow} \
{/top_tb/DUT/inst_execute_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_src} \
{/top_tb/DUT/inst_execute_stage/right_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/store_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/wb_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/zero_flag} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/if_id_flush} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 27 )} 
wvSetPosition -win $_nWave3 {("G1" 27)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 25 )} 
wvSelectSignal -win $_nWave3 {( "G1" 25 26 27 )} 
wvSetPosition -win $_nWave3 {("G1" 25)}
wvSetPosition -win $_nWave3 {("G1" 26)}
wvSetPosition -win $_nWave3 {("G1" 27)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 3)}
wvSetPosition -win $_nWave3 {("G2" 3)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSetPosition -win $_nWave3 {("G1" 17)}
wvSetPosition -win $_nWave3 {("G1" 18)}
wvSetPosition -win $_nWave3 {("G1" 19)}
wvSetPosition -win $_nWave3 {("G1" 20)}
wvSetPosition -win $_nWave3 {("G1" 21)}
wvSetPosition -win $_nWave3 {("G1" 22)}
wvSetPosition -win $_nWave3 {("G1" 23)}
wvSetPosition -win $_nWave3 {("G1" 24)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 1)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G2" 2 )} 
wvSetPosition -win $_nWave3 {("G2" 2)}
wvExpandBus -win $_nWave3 {("G2" 2)}
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 7)}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_execute_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G2" 8)}
wvSetPosition -win $_nWave3 {("G2" 8)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_result\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/control_in} \
{/top_tb/DUT/inst_execute_stage/control_out} \
{/top_tb/DUT/inst_execute_stage/data1\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2_or_imm\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs1\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs2\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/jalr_flag} \
{/top_tb/DUT/inst_execute_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/left_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/mem_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/memory_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_src} \
{/top_tb/DUT/inst_execute_stage/right_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/store_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/wb_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/zero_flag} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
{/top_tb/DUT/inst_execute_stage/overflow} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/ex_mem_reg.reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_reg.control} \
{/top_tb/DUT/ex_mem_reg.alu_data\[31:0\]} \
{/top_tb/DUT/ex_mem_reg.pc\[31:0\]} \
{/top_tb/DUT/ex_mem_reg.memory_data\[31:0\]} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/id_ex_reg} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
}
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSetPosition -win $_nWave3 {("G2" 8)}
wvGetSignalClose -win $_nWave3
wvZoom -win $_nWave3 490862.020498 585670.261217
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 566220.520726 -snap {("G2" 9)}
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSetPosition -win $_nWave3 {("G2" 9)}
wvExpandBus -win $_nWave3 {("G2" 9)}
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSetPosition -win $_nWave3 {("G2" 8)}
wvExpandBus -win $_nWave3 {("G2" 8)}
wvSetPosition -win $_nWave3 {("G2" 22)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 10 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSetPosition -win $_nWave3 {("G2" 9)}
wvExpandBus -win $_nWave3 {("G2" 9)}
wvSetPosition -win $_nWave3 {("G2" 54)}
wvScrollUp -win $_nWave3 15
wvSelectSignal -win $_nWave3 {( "G2" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSetPosition -win $_nWave3 {("G2" 9)}
wvCollapseBus -win $_nWave3 {("G2" 9)}
wvSetPosition -win $_nWave3 {("G2" 9)}
wvSetPosition -win $_nWave3 {("G2" 22)}
wvSelectSignal -win $_nWave3 {( "G2" 10 )} 
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSetPosition -win $_nWave3 {("G2" 8)}
wvCollapseBus -win $_nWave3 {("G2" 8)}
wvSetPosition -win $_nWave3 {("G2" 8)}
wvSetPosition -win $_nWave3 {("G2" 19)}
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSetPosition -win $_nWave3 {("G2" 9)}
wvCollapseBus -win $_nWave3 {("G2" 9)}
wvSetPosition -win $_nWave3 {("G2" 9)}
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSelectSignal -win $_nWave3 {( "G2" 8 )} 
wvSelectSignal -win $_nWave3 {( "G2" 2 )} 
wvSetPosition -win $_nWave3 {("G2" 2)}
wvCollapseBus -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 4)}
wvSetCursor -win $_nWave3 520073.607927 -snap {("G2" 4)}
wvSelectSignal -win $_nWave3 {( "G2" 3 )} 
wvSetPosition -win $_nWave3 {("G2" 3)}
wvExpandBus -win $_nWave3 {("G2" 3)}
wvSetPosition -win $_nWave3 {("G2" 7)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_forwarding_unit"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_gshare_predictor"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_uart_wrapper"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT/inst_decode_stage"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G2" 9)}
wvSetPosition -win $_nWave3 {("G2" 9)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_result\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/control_in} \
{/top_tb/DUT/inst_execute_stage/control_out} \
{/top_tb/DUT/inst_execute_stage/data1\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2_or_imm\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs1\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs2\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/jalr_flag} \
{/top_tb/DUT/inst_execute_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/left_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/mem_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/memory_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_src} \
{/top_tb/DUT/inst_execute_stage/right_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/store_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/wb_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/zero_flag} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
{/top_tb/DUT/inst_execute_stage/overflow} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/if_id_reg.pc\[31:0\]} \
{/top_tb/DUT/if_id_reg.instruction} \
{/top_tb/DUT/if_id_reg.decpompress_failed} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/indication} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
}
wvSelectSignal -win $_nWave3 {( "G2" 9 )} 
wvSetPosition -win $_nWave3 {("G2" 9)}
wvGetSignalClose -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 24987232.614058 -snap {("G2" 8)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 0
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvSetPosition -win $_nWave3 {("G2" 69)}
wvSetPosition -win $_nWave3 {("G2" 69)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/alu_result\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/control_in} \
{/top_tb/DUT/inst_execute_stage/control_out} \
{/top_tb/DUT/inst_execute_stage/data1\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/data2_or_imm\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs1\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/forward_rs2\[1:0\]} \
{/top_tb/DUT/inst_execute_stage/immediate_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/jalr_flag} \
{/top_tb/DUT/inst_execute_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/left_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/mem_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/memory_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_in\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/pc_src} \
{/top_tb/DUT/inst_execute_stage/right_operand\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/store_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/wb_forward_data\[31:0\]} \
{/top_tb/DUT/inst_execute_stage/zero_flag} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
{/top_tb/DUT/inst_execute_stage/overflow} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/if_id_reg.pc\[31:0\]} \
{/top_tb/DUT/if_id_reg.instruction} \
{/top_tb/DUT/if_id_reg.decpompress_failed} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/inst_execute_stage/alu_data\[31:0\]} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/branch_id_ex_flush} \
{/top_tb/DUT/clk} \
{/top_tb/DUT/decode_control} \
{/top_tb/DUT/decode_data1\[31:0\]} \
{/top_tb/DUT/decode_data2\[31:0\]} \
{/top_tb/DUT/decode_immediate_data\[31:0\]} \
{/top_tb/DUT/decode_instruction_illegal} \
{/top_tb/DUT/decode_pc_out\[31:0\]} \
{/top_tb/DUT/decode_reg_rd_id\[4:0\]} \
{/top_tb/DUT/ex_mem_flush} \
{/top_tb/DUT/ex_mem_reg} \
{/top_tb/DUT/ex_mem_reg_next} \
{/top_tb/DUT/execute_alu_data\[31:0\]} \
{/top_tb/DUT/execute_control} \
{/top_tb/DUT/execute_forwardA\[1:0\]} \
{/top_tb/DUT/execute_forwardB\[1:0\]} \
{/top_tb/DUT/execute_jalr_flag} \
{/top_tb/DUT/execute_jalr_target_offset\[31:0\]} \
{/top_tb/DUT/execute_memory_data\[31:0\]} \
{/top_tb/DUT/execute_overflow} \
{/top_tb/DUT/execute_pc_out\[31:0\]} \
{/top_tb/DUT/fetch_decpompress_failed} \
{/top_tb/DUT/fetch_pc\[31:0\]} \
{/top_tb/DUT/fetch_prediction} \
{/top_tb/DUT/fetch_read_address\[31:0\]} \
{/top_tb/DUT/id_ex_flush} \
{/top_tb/DUT/id_ex_reg} \
{/top_tb/DUT/id_ex_reg_next} \
{/top_tb/DUT/id_ex_write} \
{/top_tb/DUT/if_id_flush} \
{/top_tb/DUT/if_id_reg} \
{/top_tb/DUT/if_id_reg_next} \
{/top_tb/DUT/if_id_write} \
{/top_tb/DUT/indication} \
{/top_tb/DUT/indication_extended} \
{/top_tb/DUT/indication_extended_next} \
{/top_tb/DUT/indication_trigger} \
{/top_tb/DUT/io_rx} \
{/top_tb/DUT/mem_wb_reg} \
{/top_tb/DUT/memory_alu_data\[31:0\]} \
{/top_tb/DUT/memory_control} \
{/top_tb/DUT/memory_memory_data\[31:0\]} \
{/top_tb/DUT/memory_pc_out\[31:0\]} \
{/top_tb/DUT/pc_src} \
{/top_tb/DUT/pc_write} \
{/top_tb/DUT/program_mem_address\[31:0\]} \
{/top_tb/DUT/program_mem_read_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_data\[31:0\]} \
{/top_tb/DUT/program_mem_write_enable} \
{/top_tb/DUT/reset_n} \
{/top_tb/DUT/run_finished} \
{/top_tb/DUT/run_flag} \
{/top_tb/DUT/run_flag_next} \
{/top_tb/DUT/stall_id_ex_flush} \
{/top_tb/DUT/stall_pc_write} \
{/top_tb/DUT/uart_write_address\[31:0\]} \
{/top_tb/DUT/uncompressed_instr\[31:0\]} \
{/top_tb/DUT/wb_reg_rd_id\[4:0\]} \
{/top_tb/DUT/wb_result\[31:0\]} \
{/top_tb/DUT/wb_write_back_en} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
}
wvSelectSignal -win $_nWave3 {( "G2" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 \
           46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 \
           68 69 )} 
wvSetPosition -win $_nWave3 {("G2" 69)}
wvGetSignalClose -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 23488525.330310 -snap {("G2" 60)}
wvScrollDown -win $_nWave3 0
wvZoom -win $_nWave3 24271839.593727 25232641.983297
wvZoom -win $_nWave3 24868406.444030 25114977.416080
wvSelectSignal -win $_nWave3 {( "G2" 69 )} 
wvSelectSignal -win $_nWave3 {( "G2" 63 )} 
wvScrollUp -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G2" 53 )} 
wvSelectSignal -win $_nWave3 {( "G2" 53 )} 
wvScrollUp -win $_nWave3 6
wvSelectSignal -win $_nWave3 {( "G2" 46 )} 
wvSelectSignal -win $_nWave3 {( "G2" 45 )} 
wvSelectSignal -win $_nWave3 {( "G2" 44 )} 
wvScrollUp -win $_nWave3 18
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 2
wvScrollUp -win $_nWave3 4
wvScrollUp -win $_nWave3 4
wvSelectSignal -win $_nWave3 {( "G2" 6 )} 
wvScrollUp -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G2" 16 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G2" 51 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 24985492.967193 -snap {("G2" 52)}
wvSetCursor -win $_nWave3 24961451.335752 -snap {("G2" 52)}
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave3 "/top_tb"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave3 "/top_tb/DUT"
