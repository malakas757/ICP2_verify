class bpu_predictor extends uvm_subscriber #(if_id_seq_item);

`uvm_component_utils(bpu_predictor)

// current pc and instr from if_id interface
uvm_tlm_fifo #(predictor_info) predictor_fifo;
predictor_info pred_info;

function new(string name = "bpu_predictor", uvm_component parent = null);
    super.new(name, parent);
    predictor_fifo = new("predictor_fifo", this);
endfunction

virtual function void write(if_id_seq_item t);
    `uvm_info("bpu_predictor", "Received seq_item from if_id", UVM_LOW);
    pred_info.id_instr = t.instruction_out;
    pred_info.id_pc = t.pc_out;
    if(predictor_fifo.try_put(pred_info)) begin
		`uvm_info("bpu_predictor", "Successfully put into FIFO", UVM_LOW);
	end else begin
		`uvm_warning("bpu_predictor", "FIFO is full, dropping pred_info");
	end
endfunction

endclass
