class if_scoreboard extends uvm_component;

`uvm_component_utils(if_scoreboard)

function new(string name = "if_scoreboard", uvm_component parent = null);
	super.new(name, parent);
endfunction

uvm_tlm_analysis_fifo #(if_id_sequence_item) dut_fifo;
uvm_tlm_analysis_fifo #(if_id_seq_item) ref_fifo;


int unsigned no_matches;       
int unsigned no_mismatches;    
int unsigned no_total;   

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    dut_fifo = new("dut_fifo", this);
    ref_fifo = new("ref_fifo", this);
endfunction

task run_phase(uvm_phase phase);
    no_matches    = 0;
    no_mismatches = 0;
    no_total      = 0;

    fork
        monitor_dut();
        monitor_ref();
    join
endtask

if_id_sequence_item dut_q[$];
task monitor_dut();
    if_id_sequence_item dut_item;
    forever begin
        dut_fifo.get(dut_item);
        dut_q.push_back(dut_item);
        compare_if_ready();
    end
endtask

if_id_seq_item ref_q[$];
task monitor_ref();
    if_id_seq_item ref_item;
    forever begin
        ref_fifo.get(ref_item);
        ref_q.push_back(ref_item);
        compare_if_ready();
    end
endtask

task compare_if_ready();
    if (dut_q.size() > 0 && ref_q.size() > 0) begin
        if_id_sequence_item d = dut_q.pop_front();
        if_id_seq_item r = ref_q.pop_front();

        no_total++;

        if (d.pc_out !== r.pc_out) begin
            no_mismatches++;
            `uvm_error("FETCH_SCOREBOARD", $sformatf(
                "PC mismatch: DUT=%h REF=%h", d.pc_out, r.pc_out))
        end
        else if (d.instruction_out !== r.instruction_out) begin
            no_mismatches++;
            `uvm_error("FETCH_SCOREBOARD", $sformatf(
                "INSTR mismatch: DUT=%h REF=%h", d.instruction_out, r.instruction_out))
        end
        else begin
            no_matches++;
            `uvm_info("FETCH_SCOREBOARD", $sformatf(
                "MATCH OK: PC=%h INSTR=%h", d.pc_out, d.instruction_out), UVM_LOW)
        end
    end
endtask


function void report_phase(uvm_phase phase);
    `uvm_info("FETCH_SCOREBOARD", $sformatf(
        "Total comparisons: %0d, Matches: %0d, Mismatches: %0d",
        no_total, no_matches, no_mismatches), UVM_LOW)

    if (no_mismatches == 0)
        `uvm_info("FETCH_SCOREBOARD", "All DUT and REF outputs match!", UVM_LOW)
    else
        `uvm_error("FETCH_SCOREBOARD", $sformatf("%0d mismatches found!", no_mismatches))
endfunction
endclass