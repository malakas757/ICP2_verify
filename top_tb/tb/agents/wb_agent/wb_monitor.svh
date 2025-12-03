class wb_monitor extends uvm_component;

`uvm_component_utils(wb_monitor)

virtual wb_if vif;

wb_seq_item item;

uvm_analysis_port #(wb_seq_item) ap;

extern function new(string name = "wb_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern task debug_info();
//extern function void report_phase(uvm_phase phase);

endclass

function wb_monitor::new(string name = "wb_monitor", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void wb_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
endfunction

task wb_monitor::run_phase(uvm_phase phase);

    //wb_seq_item cloned_item;

    item = wb_seq_item::type_id::create("item");
    @(posedge vif.rstn);
    wait(vif.run_flag == 1);
    @(vif.mon_cb);
    forever begin
        @(vif.mon_cb);
        // copy all monitored signals into the sequence item
       item.pc    = vif.mon_cb.mem_wb_reg.pc;
       item.rd_id = vif.mon_cb.mem_wb_reg.reg_rd_id;
       item.data  = vif.mon_cb.mem_wb_reg.control.mem_read ? vif.mon_cb.mem_wb_reg.memory_data : vif.mon_cb.mem_wb_reg.alu_data;
       item.control = vif.mon_cb.mem_wb_reg.control;

       if(vif.mon_cb.mem_wb_reg != '0) begin
//          $cast(cloned_item, item.clone());
  	  `uvm_info("WB_MON",
            $sformatf("pc=%0h rd_id=%0d data=%0h mem_read=%0b",
                      item.pc,
                      item.rd_id,
                      item.data,
                      item.control),
            UVM_LOW)       
          ap.write(item);
       end
    end

endtask

task wb_monitor::debug_info();
  `uvm_info("wb_mon","send an seq",UVM_LOW);
  `uvm_info("wb_mon",$sformatf("pc=%h",item.pc),UVM_LOW);
  `uvm_info("wb_mon",$sformatf("data=%h",item.data),UVM_LOW);
  `uvm_info("wb_mon",$sformatf("rd_id=%d",item.rd_id),UVM_LOW);
endtask


