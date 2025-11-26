class ibex_rvfi_monitor extends uvm_monitor;
	
	`uvm_component_utils(ibex_rvfi_monitor)
	
	virtual rvfi_if   	vif;
	uvm_analysis_port#(ibex_rvfi_seq_item) ap;
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction

	function build_phase(uvm_phase phase);
		super.new(phase);
		if(!(uvm_config_db #(rvfi_if) ::get(this,"","rvfi",vif)))
			`uvm_fatal("build_phase","Fail to get rvfi vif");
	endfunction
	
	task run_phase(uvm_phase phase);
		ibex_rvfi_seq_item trans_collected;

		wait(vif.monitor_cb.reset === '0);
		forever begin
			while(!(vif.monitor_cb.valid || vif.monitor_cb.ext_irq_valid))
			      vif.wait_clks(1);
			      trans_collected = ibex_rvfi_seq_item::type_id::create("trans_collected");
			      trans_collected.irq_only         = !vif.monitor_cb.valid && vif.monitor_cb.ext_irq_valid;
			      trans_collected.trap             = vif.monitor_cb.trap;
			      trans_collected.pc               = vif.monitor_cb.pc_rdata;
			      trans_collected.rd_addr          = vif.monitor_cb.rd_addr;
			      trans_collected.rd_wdata         = vif.monitor_cb.rd_wdata;
			      trans_collected.order            = vif.monitor_cb.order;
			      trans_collected.pre_mip          = vif.monitor_cb.ext_pre_mip;
			      trans_collected.post_mip         = vif.monitor_cb.ext_post_mip;
			      trans_collected.nmi              = vif.monitor_cb.ext_nmi;
			      trans_collected.nmi_int          = vif.monitor_cb.ext_nmi_int;
			      trans_collected.debug_req        = vif.monitor_cb.ext_debug_req;
			      trans_collected.rf_wr_suppress   = vif.monitor_cb.ext_rf_wr_suppress;
			      trans_collected.mcycle           = vif.monitor_cb.ext_mcycle;
			      trans_collected.ic_scr_key_valid = vif.monitor_cb.ext_ic_scr_key_valid;
			
			      for (int i=0; i < 10; i++) begin
			       trans_collected.mhpmcounters[i]  = vif.monitor_cb.ext_mhpmcounters[i];
			       trans_collected.mhpmcountersh[i] = vif.monitor_cb.ext_mhpmcountersh[i];
			      end
			
			      `uvm_info(get_full_name(), $sformatf("Seen instruction:\n%s", trans_collected.sprint()),
			        UVM_HIGH)	
		               ap.write(trans_collected);
		end



	endtask





endclass
