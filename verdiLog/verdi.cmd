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
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/EXEC"
wvGetSignalSetScope -win $_nWave2 "/top_tb/DUT"
wvGetSignalSetScope -win $_nWave2 "/top_tb/IFID"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/IFID/clk} \
{/top_tb/IFID/id_ex_flush} \
{/top_tb/IFID/if_id_flush} \
{/top_tb/IFID/instruction_out\[31:0\]} \
{/top_tb/IFID/pc_out\[31:0\]} \
{/top_tb/IFID/rstn} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 124964.761159 -snap {("G1" 6)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 138410.336727 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 137619.420517 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 130501.174628 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 136037.588097 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 162928.739233 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 166092.404072 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 166092.404072 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 136828.504307 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 164510.571652 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 137619.420517 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 109146.436962 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 136828.504307 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 161346.906813 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 139992.169146 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 158974.158183 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 138410.336727 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 124964.761159 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 136828.504307 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 159765.074393 -snap {("G1" 1)}
verdiWindowResize -win $_Verdi_1 "292" "92" "1384" "631"
wvSetCursor -win $_nWave2 189558.481488 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 162478.698419 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 154514.056339 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 160089.305795 -snap {("G1" 1)}
