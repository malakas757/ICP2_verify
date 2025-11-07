class ibex_cosim_scoreboard extends uvm_component;
	
	uvm_tlm_analysis_fifo #(ibex_rvfi_seq_item) m_fifo;

	`uvm_component_utils(ibex_cosim_scoreboard);

	function new(string name, uvm_parent parent);
		super.new(name,parent);
	endfunction	
	
	function build_phase(uvm_phase phase);
		super.build_phase(phase);
		m_fifo = uvm_tlm_analysis_fifo #(ibex_rvfi_seq_item)::type_id::create("m_fifo",this);


	endfunction
	











endclass
