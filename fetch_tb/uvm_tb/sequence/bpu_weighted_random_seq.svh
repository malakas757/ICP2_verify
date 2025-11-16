class bpu_weighted_random_seq extends bpu_base_seq;

`uvm_object_utils_begin(bpu_weighted_random_seq)
    `uvm_field_int(pred_0_weight, UVM_DEFAULT)
`uvm_object_utils_end

rand int pred_0_weight;   

constraint weight_alignment{
    pred_0_weight inside {[0:10]};
}

function new(string name = "bpu_weighted_random_seq");
	super.new(name);
endfunction

virtual task send_item();
    bpu_seq_item req;
    `uvm_do_with(req, {
        pred dist {
            0:= pred_0_weight,
            1:= 10 - pred_0_weight
        };
    })
    `uvm_info(get_type_name(), req.sprint(), UVM_HIGH)
endtask

endclass