class fetch_inorder_test extends fetch_test_base;

`uvm_component_utils(fetch_inorder_test)

extern function new(string name = "fetch_inorder_test", uvm_component parent = null);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);

endclass

function fetch_inorder_test::new(string name = "fetch_inorder_test", uvm_component parent = null);
    super.new(name, parent);
endfunction

task fetch_inorder_test::run_phase(uvm_phase phase);

    fetch_random_vseq vseq;
    vseq = fetch_random_vseq::type_id::create("vseq");
    phase.raise_objection(this);
    fork
        set_run_flag(0);
        init_input(0);
    join
    #10000;
    phase.drop_objection(this);
endtask

function void fetch_inorder_test::report_phase(uvm_phase phase);
    //to do
endfunction
