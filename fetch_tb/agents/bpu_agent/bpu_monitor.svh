class bpu_monitor extends uvm_component;

`uvm_component_utils(bpu_monitor)

virtual bpu_if BPU;

uvm_analysis_port #(bpu_seq_item) ap;

extern function new(string name = "bpu_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
//extern function void report_phase(uvm_phase phase);

endclass

function bpu_monitor::new(string name = "bpu_monitor", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void bpu_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
endfunction

task bpu_monitor::run_phase(uvm_phase phase);
    bpu_seq_item item;
    bpu_seq_item cloned_item;

    item = bpu_seq_item::type_id::create("item");
    @(posedge BPU.rstn);
    @(posedge BPU.clk); // Add one cycle delay to sync with driver
    forever begin
        @(posedge BPU.clk);
        item.pred = BPU.mon_cb.pred;
        $cast(cloned_item, item.clone());
        ap.write(cloned_item);
    end

endtask



