debImport "-full64"
nsMsgSwitchTab -tab general
debImport "/home/sjp/Desktop/ibex/ibex/dv/uvm/my_core/tb/mem_test.sv" "-sv" -path \
          {/home/sjp/Desktop/ibex/ibex/dv/uvm/my_core}
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/sjp/Desktop/ibex/ibex/dv/uvm/my_core/test.fsdb}
srcSignalView -on
srcHBSelect "mem_load_bin_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "mem_load_bin_tb" -delim "."
srcHBSelect "mem_load_bin_tb" -win $_nTrace1
srcSignalViewExpand "mem_load_bin_tb.BASE_ADDR\[31:0\]"
srcSignalViewCollapse "mem_load_bin_tb.BASE_ADDR\[31:0\]"
srcHBSelect "mem_load_bin_tb.load_binary_to_dut_mem" -win $_nTrace1
srcSetScope -win $_nTrace1 "mem_load_bin_tb.load_binary_to_dut_mem" -delim "."
srcHBSelect "mem_load_bin_tb.load_binary_to_dut_mem" -win $_nTrace1
srcHBSelect "mem_load_bin_tb.sanity_peek" -win $_nTrace1
srcSetScope -win $_nTrace1 "mem_load_bin_tb.sanity_peek" -delim "."
srcHBSelect "mem_load_bin_tb.sanity_peek" -win $_nTrace1
srcHBSelect "mem_load_bin_tb.load_binary_to_dut_mem" -win $_nTrace1
srcSetScope -win $_nTrace1 "mem_load_bin_tb.load_binary_to_dut_mem" -delim "."
srcHBSelect "mem_load_bin_tb.load_binary_to_dut_mem" -win $_nTrace1
srcHBSelect "mem_load_bin_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "mem_load_bin_tb" -delim "."
srcHBSelect "mem_load_bin_tb" -win $_nTrace1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave2 "/mem_load_bin_tb"
wvGetSignalSetScope -win $_nWave2 "/mem_model_pkg"
wvGetSignalSetScope -win $_nWave2 "/mem_model_pkg"
wvGetSignalSetScope -win $_nWave2 "/uvm_custom_install_recording"
wvGetSignalSetScope -win $_nWave2 "/uvm_custom_install_recording/unnamed\$\$_0"
wvGetSignalSetScope -win $_nWave2 "/uvm_custom_install_verdi_recording"
