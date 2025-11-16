class fetch_vseq_base extends uvm_sequence;

`uvm_object_utils(fetch_vseq_base)

bpu_sequencer bpu_sqr;
exec_sequencer exec_sqr;

bpu_weighted_random_seq bpu_weighted_random_seq;
exec_pc_jalr_conflict_seq exec_pc_jalr_conflict_seq;
exec_weighted_random_seq exec_weighted_random_seq;

function new(string name = "fetch_vseq_base");
    super.new(name);
endfunction

virtual task body();
    `uvm_info(get_type_name(), "=====================STARTED=====================", UVM_LOW)
    fork 
        this.do_bpu();
        this.do_exec();
    join
    `uvm_info(get_type_name(), "=====================FINISHED=====================", UVM_LOW)
endtask 

virtual task do_bpu();

endtask
virtual task do_exec();

endtask

endclass