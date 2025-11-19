class fetch_env_config extends uvm_object;

`uvm_object_utils(fetch_env_config)

bpu_agent_config m_bpu_agent_cfg;
exec_agent_config m_exec_agent_cfg;
if_id_agent_config m_if_id_agent_cfg;

//ref mod
	string     BIN_PATH = /*"/home/sjp/Desktop/ICP2_verify/ICP2_verify/fetch_tb/rtl/test.bin";*/ "/home/rfic/ICP2_verify/fetch_tb/rtl/test.bin";  // MEM BIN file
	bit[31:0]  BASE_ADDR  = 32'h0000_0000;
	int        MEM_DEPTH = 1024;

function new(string name = "fetch_env_config");
    super.new(name);
endfunction

endclass
