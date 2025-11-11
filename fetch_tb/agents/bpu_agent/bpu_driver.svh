class bpu_driver extends uvm_driver #(bpu_seq_item, bpu_seq_item);
`uvm_component_utils(bpu_driver)

virtual bpu_if BPU;

extern function new(string name = "bpu_driver", uvm_component parent = null);
//extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);

endclass

function bpu_driver::new(string name = "bpu_driver", uvm_component parent = null);
    super.new(name, parent);
endfunction

/*
function void bpu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(bpu_agent_config)::get(this, "", "bpu_agent_config", cfg)) begin
        `uvm_error("build_phase", "Unable to get bpu_agent_config")
    end
endfunction
*/

task bpu_driver::run_phase(uvm_phase phase);
    bpu_seq_item req;
    @(posedge BPU.rstn)
    forever begin
        @(posedge BPU.clk);
        seq_item_port.get_next_item(req);
        BPU.pred <= req.pred;
        seq_item_port.item_done();
    end
    
endtask