class exec_monitor extends uvm_component;

`uvm_component_utils(exec_monitor)

virtual exec_if EXEC;

uvm_analysis_port #(exec_seq_item) ap;

extern function new(string name = "exec_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
//extern function void report_phase(uvm_phase phase);

endclass

function exec_monitor::new(string name = "exec_monitor", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void exec_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
endfunction

task exec_monitor::run_phase(uvm_phase phase);
    exec_seq_item item;
    exec_seq_item cloned_item;

    item = exec_seq_item::type_id::create("item");
    @(posedge EXEC.rstn);
    repeat(3) @(posedge EXEC.clk) // Add one more cycle to sync with driver
    forever begin
        @(posedge EXEC.clk);
        item.pc_src = EXEC.mon_cb.pc_src;
        item.redirect_flag = EXEC.mon_cb.redirect_flag;
        item.redirect_target = EXEC.mon_cb.redirect_target;
        item.pc_write = EXEC.mon_cb.pc_write;
        $cast(cloned_item, item.clone());
        ap.write(cloned_item);
    end

endtask



