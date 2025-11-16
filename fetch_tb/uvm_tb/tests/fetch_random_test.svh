class fetch_random_test extends fetch_test_base;

`uvm_component_utils(fetch_random_test)

extern function new(string name = "fetch_random_test", uvm_component parent = null);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);

endclass

function fetch_random_test::new(string name = "fetch_random_test", uvm_component parent = null);
    super.new(name, parent);
endfunction

task fetch_random_test::run_phase(uvm_phase phase);
    fetch_random_vseq vseq = fetch_random_vseq::type_id::create("vseq");
    phase.raise_objection(this);
    init_vseq(vseq);
    fork
        set_run_flag(0);
        vseq.start(null);
    join
    phase.drop_objection(this);
endtask

function void fetch_random_test::report_phase(uvm_phase phase);
    //to do
endfunction