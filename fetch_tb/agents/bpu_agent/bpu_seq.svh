class bpu_seq extends uvm_sequence #(bpu_seq_item);
`uvm_object_utils(bpu_seq)

function new(string name = "bpu_seq");
    super.new(name);
endfunction

task body();
    bpu_seq_item req;
    begin
        req = bpu_seq_item::type_id::create("req");
        start_item(req);
        if(!req.randomize()) begin
            `uvm_error("seq body", "req randomization fail")
        end
        finish_item(req);
    end

endtask

endclass