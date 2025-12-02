class mem_monitor extends uvm_component;
    `uvm_component_utils(mem_monitor)

virtual mem_if vif;
uvm_analysis_port#(mem_seq_item) ap;
chandle cosim_h;

extern function new(string name = "mem_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);

endclass

function mem_monitor::new(string name = "mem_monitor", uvm_component parent);
    super.new(name, parent);
endfunction

function void mem_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
    mem_agent_config m_cfg;

    if (!uvm_config_db#(mem_agent_config)::get(this, "", "mem_agent_config", m_cfg)) begin
      `uvm_fatal("NOCONFIG", "mem_monitor: cannot get mem_agent_config")
    end

    cosim_h = m_cfg.cosim_h; 
endfunction

task mem_monitor::run_phase(uvm_phase phase);
    mem_seq_item tr;
    mem_seq_item cloned_tr;
    tr = mem_seq_item::type_id::create("tr");
    
    @(posedge vif.rstn);
    wait(vif.run_flag == 1);
    @(vif.mon_cb);
    forever begin
        @(vif.mon_cb);
        
        tr.address     = vif.mon_cb.alu_data_in;
        tr.store_data  = vif.mon_cb.memory_data_in;
        tr.mem_write   = vif.mon_cb.control_in.mem_write;
        tr.control      = vif.mon_cb.control_in;
        tr.pc           = vif.mon_cb.pc_in;
        tr.load_data    = vif.mon_cb.memory_data_out;
        
        if(vif.mon_cb.control_in.mem_write) begin
            riscv_cosim_notify_dside_access(
                cosim_h,
                1'b1,
                vif.mon_cb.alu_data_in,
                vif.mon_cb.memory_data_in,
                4'b1111,
                0,0,0,0,
                1
            );
            $cast(cloned_tr, tr.clone());
            ap.write(cloned_tr);
        end
        else if (vif.mon_cb.control_in.mem_read) begin
             riscv_cosim_notify_dside_access(
                cosim_h,
                1'b0,
                vif.mon_cb.alu_data_in,
                vif.mon_cb.memory_data_out,
                4'b1111,
                0,0,0,0,
                1
            );
            $cast(cloned_tr, tr.clone());
            ap.write(cloned_tr);
        end
    end
endtask