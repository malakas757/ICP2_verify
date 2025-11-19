verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
debImport "-full64"
nsMsgSwitchTab -tab general
debImport "/home/sjp/Desktop/ICP2_verify/ICP2_verify/fetch_tb/uvm_tb/top_tb.sv" \
          "-sv" -path {/home/sjp/Desktop/ICP2_verify/ICP2_verify}
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/sjp/Desktop/ICP2_verify/ICP2_verify/test.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 8
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 8
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 133684.990440 -snap {("G1" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 41133.843212 -snap {("G1" 1)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 12687.283401 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 12316.077617 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 12581.224606 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 12435.393762 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 12514.937859 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 12501.680509 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 12501.680509 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 12528.195208 -snap {("G1" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 12500.000000
wvSetCursor -win $_nWave2 3393.881453 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 33938.814532 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 55999.043977 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 72968.451243 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 84847.036329 -snap {("G1" 1)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 122179.732314 -snap {("G1" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 766117.829828 -snap {("G1" 3)}
wvGoToTime -win $_nWave2 13800
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 37706.022945 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 11568.893403 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 136255.855641 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137969.765774 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 162392.985182 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 164963.850382 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137541.288241 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 138398.243308 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 162392.985182 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137969.765774 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 125115.439771 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137112.810707 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 160679.075048 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 138826.720841 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 163678.417782 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 139255.198375 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 136255.855641 -snap {("G1" 3)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvScrollDown -win $_nWave2 8
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 161536.030115 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 167106.238050 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 164535.372849 -snap {("G1" 4)}
wvZoom -win $_nWave2 162392.985182 165820.805449
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 25748.884640 334735.500319
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 136670.944092 -snap {("G1" 4)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetSignalFilter -win $_nWave2 "in"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "instruction*"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "instruction*"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "instruction*"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "i*"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/IFID/instruction_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 151243.926604 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 138640.266053 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 163059.858370 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 150850.062212 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 139427.994838 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 148880.740251 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 161484.400801 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 137064.808485 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 150456.197819 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 161878.265193 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 186297.857509 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 211111.314218 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 154000.977349 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 149274.604643 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 159515.078840 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 139821.859230 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 319424.022072 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 328089.038700 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 311940.598620 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 141003.452407 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 159121.214448 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 139034.130446 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 159515.078840 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 140609.588014 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 161878.265193 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 137064.808485 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvGetSignalSetScope -win $_nWave2 \
           "/top_tb/DUT/inst_fetch_stage/optimized_pc_update"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage/flush_logic"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage/decompressor"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_mem"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/IFID/instruction_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalSetSignalFilter -win $_nWave2 "data"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/BPU"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT/inst_fetch_stage"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/DUT/inst_fetch_stage/pc_write} \
{/top_tb/IFID/instruction_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/current_instr\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/run_flag} \
{/top_tb/DUT/inst_fetch_stage/reset_n} \
{/top_tb/DUT/inst_fetch_stage/clk} \
{/top_tb/DUT/inst_fetch_stage/address\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/id_ex_flush} \
{/top_tb/DUT/inst_fetch_stage/if_id_flush} \
{/top_tb/DUT/inst_fetch_stage/jalr_flag} \
{/top_tb/DUT/inst_fetch_stage/jalr_target_offset\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_out\[31:0\]} \
{/top_tb/DUT/inst_fetch_stage/pc_src} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 163059.858370 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 177632.840881 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 160302.807624 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137852.537269 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 168967.824253 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 312728.327405 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 139034.130446 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 150062.333427 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 159515.078840 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 164241.451546 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 185116.264333 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvExpandBus -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvScrollUp -win $_nWave2 20
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvCollapseBus -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
