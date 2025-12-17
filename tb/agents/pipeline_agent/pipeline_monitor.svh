class pipeline_monitor extends uvm_component;

`uvm_component_utils(pipeline_monitor)

virtual pipeline_if vif;

pipeline_seq_item item;

uvm_analysis_port #(pipeline_seq_item) ap;

extern function new(string name = "pipeline_monitor", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern task debug_info();
//extern function void report_phase(uvm_phase phase);

endclass

function pipeline_monitor::new(string name = "pipeline_monitor", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void pipeline_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
endfunction

task pipeline_monitor::run_phase(uvm_phase phase);

    //pipeline_seq_item cloned_item;

    
    @(posedge vif.rstn);
    @(vif.mon_cb);
    forever begin
        item = pipeline_seq_item::type_id::create("item");
        @(vif.mon_cb);
        // copy all monitored signals into the sequence item
        item.if_id_pc    = vif.mon_cb.if_id_pc;
        item.is_compressed = vif.mon_cb.is_compressed;

        item.id_ex_control = vif.mon_cb.id_ex_control;
        item.id_ex_rs1 = vif.mon_cb.id_ex_rs1;
        item.id_ex_rs2 = vif.mon_cb.id_ex_rs2;

        item.ex_mem_rd = vif.mon_cb.ex_mem_rd;
        item.ex_mem_control = vif.mon_cb.ex_mem_control;

        if(vif.mon_cb.id_ex_control != '0) begin
            item.id_ex_valid = 1'b1;
        end else begin
           item.id_ex_valid = 1'b0; 
        end
        if(vif.mon_cb.ex_mem_control != '0) begin
           item.ex_mem_valid = 1'b1;
        end else begin
           item.ex_mem_valid = 1'b0; 
        end
     
        ap.write(item);
        debug_info();
    end

endtask

task pipeline_monitor::debug_info();
    string info_msg;
    info_msg = $sformatf({"if_id_pc=%h, is_compressed=%b, ",
                      "id_ex_control=%h, id_ex_rs1=%h, id_ex_rs2=%h, ex_mem_rd=%h, ",
                      "ex_mem_control=%h, id_ex_valid=%b, ex_mem_valid=%b"}, 
                      item.if_id_pc, item.is_compressed, item.id_ex_control, item.id_ex_rs1, item.id_ex_rs2, 
                      item.ex_mem_rd, item.ex_mem_control, item.id_ex_valid, item.ex_mem_valid);
    `uvm_info("pipeline_mon", info_msg, UVM_LOW);
endtask


