class if_id_monitor extends uvm_component;

`uvm_component_utils(if_id_monitor)

virtual if_id_if IFID;

if_id_seq_item item;

uvm_analysis_port #(if_id_seq_item) ap;

extern function new(string name = "if_id_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern task debug_info();
//extern function void report_phase(uvm_phase phase);

endclass

function if_id_monitor::new(string name = "if_id_monitor", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void if_id_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
endfunction

task if_id_monitor::run_phase(uvm_phase phase);

    if_id_seq_item cloned_item;

    item = if_id_seq_item::type_id::create("item");
    @(posedge IFID.rstn);
    wait(IFID.run_flag == 1);
    @(posedge IFID.clk);
   // @(posedge IFID.clk);//to align with refmod
    forever begin
        @(posedge IFID.clk);
        // copy all monitored signals into the sequence item
        item.address = IFID.mon_cb.address;
        item.pc_out = IFID.mon_cb.pc_out;
        item.instruction_out = IFID.mon_cb.instruction_out;
        item.if_id_flush = IFID.mon_cb.if_id_flush;
        item.id_ex_flush = IFID.mon_cb.id_ex_flush;
        item.decompress_failed = IFID.mon_cb.decompress_failed;
        item.run_finished_next = IFID.mon_cb.run_finished_next;
        item.is_conditional_branch = IFID.mon_cb.is_conditional_branch;
        $cast(cloned_item, item.clone());
        debug_info();       
        ap.write(cloned_item);
    end

endtask

task if_id_monitor::debug_info();
  `uvm_info("if_id_mon","send an instruction",UVM_LOW);
  `uvm_info("if_id_mon",$sformatf("pc=%h",item.pc_out),UVM_LOW);
  `uvm_info("if_id_mon",$sformatf("instruction=%h",item.instruction_out),UVM_LOW);
  `uvm_info("if_id_mon",$sformatf("if_id_flush=%b",item.if_id_flush),UVM_LOW);
  `uvm_info("if_id_mon",$sformatf("id_ex_flush=%b",item.id_ex_flush),UVM_LOW);
endtask


