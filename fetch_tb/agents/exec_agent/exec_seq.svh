class exec_seq extends uvm_sequence #(exec_seq_item);
`uvm_object_utils(exec_seq)

function new(string name = "exec_seq");
    super.new(name);
endfunction

task body();
    exec_seq_item req;
    begin
        req = exec_seq_item::type_id::create("req");
        start_item(req);
        if(!req.randomize()) begin
            `uvm_error("seq body", "req randomization fail")
        end
        finish_item(req);
    end

endtask

endclass