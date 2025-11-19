class bpu_driver extends uvm_driver #(bpu_seq_item, bpu_seq_item);
`uvm_component_utils(bpu_driver)

virtual bpu_if BPU;

extern function new(string name = "bpu_driver", uvm_component parent = null);
//extern function void build_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
//extern function bit [31:0] get_target(predictor_info info);

endclass

function bpu_driver::new(string name = "bpu_driver", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void bpu_driver::connect_phase(uvm_phase phase);
   
endfunction

task bpu_driver::run_phase(uvm_phase phase);
    bpu_seq_item req;
    predictor_info pred_info;
    bit [31:0] target;
    @(posedge BPU.rstn)
    forever begin
        @(BPU.drv_cb);
        `uvm_info(get_type_name(), "driver waiting get_next_item", UVM_LOW)
        seq_item_port.get_next_item(req);
        BPU.drv_cb.pred <= req.pred;
        BPU.drv_cb.bpu_target <= req.bpu_target; 
        seq_item_port.item_done();
    end
endtask

/*
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
*/