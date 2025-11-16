class fetch_random_vseq extends fetch_vseq_base;
`uvm_object_utils(fetch_random_vseq)

function new(string name = "fetch_random_vseq");
    super.new(name);
endfunction

virtual task do_bpu();
    `uvm_do_on_with(bpu_weighted_random_seq, bpu_sqr, {nitem == 100; pred_0_weight == 7;})
endtask
virtual task do_exec();
    `uvm_do_on_with(exec_weighted_random_seq, exec_sqr, {nitem == 100; jalr_0_weight == 9; offset_boundary inside {[0:80]}; 
    pc_write_0_weight == 1; offset_boundary == 20;})
endtask




endclass
