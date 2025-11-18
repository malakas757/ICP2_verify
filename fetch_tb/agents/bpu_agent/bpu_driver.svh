class bpu_driver extends uvm_driver #(bpu_seq_item, bpu_seq_item);
`uvm_component_utils(bpu_driver)

virtual bpu_if BPU;
uvm_blocking_get_port #(predictor_info) info_bg_port;

extern function new(string name = "bpu_driver", uvm_component parent = null);
//extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
extern function bit [31:0] get_target(predictor_info info);

endclass

function bpu_driver::new(string name = "bpu_driver", uvm_component parent = null);
    super.new(name, parent);
	info_bg_port = new("info_bg_port", this);
endfunction

/*
function void bpu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(bpu_agent_config)::get(this, "", "bpu_agent_config", cfg)) begin
        `uvm_error("build_phase", "Unable to get bpu_agent_config")
    end
endfunction
*/
function void bpu_driver::connect_phase(uvm_phase phase);
   
endfunction

task bpu_driver::run_phase(uvm_phase phase);
    bpu_seq_item req;
    predictor_info pred_info;
    bit [31:0] target;
    @(posedge BPU.rstn)
    forever begin
        @(posedge BPU.clk);
        `uvm_info(get_type_name(), "driver waiting get_next_item", UVM_LOW)
        seq_item_port.get_next_item(req);
        `uvm_info(get_type_name(), $sformatf("driver got seq_item (pred=%0d)", req.pred), UVM_LOW)
        info_bg_port.get(pred_info);
        `uvm_info(get_type_name(), $sformatf("driver got predictor info (pc=%0h)" , pred_info.id_pc), UVM_LOW)
        target = get_target(pred_info);
        BPU.drv_cb.pred <= req.pred;
        BPU.drv_cb.bpu_target <= target; 
        seq_item_port.item_done();
    end
endtask

function bit [31:0] bpu_driver::get_target(predictor_info info);
    bit [31:0] pc;
    instruction_type instr;
    encoding_type instr_encoding;
    bit[31:0] imm_offset;

    instr = info.id_instr;
    pc = info.id_pc;
    case(instr.opcode)
        7'b1100011: instr_encoding = B_TYPE;
        7'b1101111: instr_encoding = J_TYPE;
        default: return 32'b0;
    endcase
    imm_offset = immediate_extension(instr, instr_encoding);
    return pc + imm_offset;

endfunction