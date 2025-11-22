class exec_driver extends uvm_driver #(exec_seq_item, exec_seq_item);
`uvm_component_utils(exec_driver)

virtual exec_if EXEC;

extern function new(string name = "exec_driver", uvm_component parent = null);
//extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern task drive_idle();

endclass

function exec_driver::new(string name = "exec_driver", uvm_component parent = null);
    super.new(name, parent);
endfunction

/*
function void exec_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(exec_agent_config)::get(this, "", "exec_agent_config", cfg)) begin
        `uvm_error("build_phase", "Unable to get exec_agent_config")
    end
endfunction
*/
task exec_driver::run_phase(uvm_phase phase);
    exec_seq_item req;
    @(posedge EXEC.rstn)
    //wait(EXEC.run_flag);
    repeat(2) begin
        @(EXEC.drv_cb);
        drive_idle();
    end
    forever begin
        @(EXEC.drv_cb);
        seq_item_port.get_next_item(req);
        EXEC.drv_cb.pc_src <= req.pc_src;
        EXEC.drv_cb.redirect_flag <= req.redirect_flag;
        EXEC.drv_cb.redirect_target <= req.redirect_target;
        EXEC.drv_cb.pc_write <= req.pc_write;
        EXEC.drv_cb.exe_isbranch <= req.exe_isbranch;
        EXEC.drv_cb.exe_pc_in <= req.exe_pc_in;
        seq_item_port.item_done();
    end
    
endtask

task exec_driver::drive_idle();
    EXEC.drv_cb.pc_src <= 1'b0;
    EXEC.drv_cb.redirect_flag <= 1'b0;
    EXEC.drv_cb.redirect_target <= 'b0;
    EXEC.drv_cb.pc_write <= 1'b1;
    EXEC.drv_cb.exe_isbranch <= 1'b0;
    EXEC.drv_cb.exe_pc_in <= 1'b0;
endtask
