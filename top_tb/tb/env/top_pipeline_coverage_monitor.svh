class top_pipeline_coverage_monitor extends uvm_component;
    `uvm_component_utils(top_pipeline_coverage_monitor)

    uvm_tlm_analysis_fifo #(pipeline_seq_item) pipeline_fifo;
    uvm_tlm_analysis_fifo #(wb_seq_item) wb_fifo;
    
    bit is_fwd_ex;
    bit is_fwd_mem;
    bit is_stall_load_use;
    bit wb_is_compressed;
	
	bit [3:0] wb_alu_op;
	bit [2:0] wb_encoding;
	
	bit [4:0] hazard_reg_id;
	
    pipeline_seq_item pending_instr_q[$];
    
    covergroup compressed_cg;
        option.per_instance = 1;
        option.comment = "Compressed instruction coverage";

        cp_compressed_flag: coverpoint wb_is_compressed{
            bins is_comp = {1};
        }
        cp_alu: coverpoint wb_alu_op {
            bins c_arith[]   = {ALU_ADD, ALU_SUB, ALU_LUI}; // C.ADD, C.SUB, C.LUI
            bins c_logic[]   = {ALU_AND, ALU_OR, ALU_XOR};  // C.AND, C.OR, C.XOR
            bins c_shift[]   = {ALU_SLL, ALU_SRL, ALU_SRA}; // C.SLL, C.SRL, C.SRA
            bins c_branch[]  = {B_BNE};                     // C.BNEZ BEQ is ignored in DUT
        }

        cp_enc: coverpoint wb_encoding {
            bins c_load  = {I_TYPE}; 
            bins c_store = {S_TYPE}; 
            bins c_jump  = {J_TYPE}; 
            bins c_calc  = {R_TYPE}; 
            bins c_branch= {B_TYPE}; 
        }

        cross cp_compressed_flag, cp_alu, cp_enc {

            bins valid_math = 
                binsof(cp_compressed_flag) &&
                binsof(cp_enc) intersect {R_TYPE, I_TYPE} &&
                binsof(cp_alu) intersect {ALU_ADD, ALU_SUB, ALU_AND, ALU_OR, ALU_XOR}; 
            bins valid_ls = 
                binsof(cp_compressed_flag) &&
                binsof(cp_enc) intersect {I_TYPE, S_TYPE} && 
                binsof(cp_alu) intersect {ALU_ADD};
            bins valid_br =
                binsof(cp_compressed_flag) &&
                binsof(cp_enc) intersect {B_TYPE} &&
                binsof(cp_alu) intersect {B_BNE, ALU_SUB}; // In DUT, ALU_SUB + B_type is BEQ
        }

    endgroup

    covergroup hazard_cg;
        option.per_instance = 1;
        option.comment = "Pipeline hazards(stall/forwarding) coverage";

        cp_fwd_ex: coverpoint is_fwd_ex {
            bins hit = {1};
        }
        cp_fwd_mem: coverpoint is_fwd_mem {
            bins hit = {1};
        }
        cp_stall: coverpoint is_stall_load_use {
            bins hit = {1};
        }
        cp_hazard_reg: coverpoint hazard_reg_id {
            bins lo = {[1:15]};
            bins hi = {[16:31]};
        }

        cross cp_fwd_mem, cp_hazard_reg;
        cross cp_fwd_ex, cp_hazard_reg;
        cross cp_stall, cp_hazard_reg;
    endgroup
   

    function new(string name, uvm_component parent);
        super.new(name, parent);
        compressed_cg  = new();
        hazard_cg = new();
    endfunction

    function void build_phase(uvm_phase phase);
        pipeline_fifo = new("pipeline_fifo", this);
        wb_fifo = new("wb_fifo", this);
    endfunction

    task run_phase(uvm_phase phase);
        fork
            process_stream(); // Thread A: Calculate Hazard & Buffer
        join_none
    endtask

    task process_stream();
        pipeline_seq_item pipe_item;
        wb_seq_item wb_item;
        forever begin
            pipeline_fifo.get(pipe_item);
            pending_instr_q.push_back(pipe_item);
            wb_fifo.get(wb_item);
            if(pipe_item.id_ex_valid && pipe_item.ex_mem_valid && wb_item.mem_wb_valid) begin
                hazard_sample(pipe_item, wb_item);
            end
            if(wb_item.mem_wb_valid) begin
                forever begin
                    pipeline_seq_item pipe_item_t;
                    if(pending_instr_q.size() > 0) begin
                        pipe_item_t = pending_instr_q.pop_front();
                        if(pipe_item_t.if_id_pc == wb_item.pc) begin
                            wb_is_compressed = pipe_item_t.is_compressed;
                            wb_alu_op = wb_item.control.alu_op;
                            wb_encoding = wb_item.control.encoding;
                            compressed_cg.sample();
                            break;
                        end
                    end else begin
                        `uvm_fatal("top_pipeline_cov", "pending_queue is empty, monitoring bug happened");
                    end
                end
            end
        end
    endtask


    function void hazard_sample(pipeline_seq_item pipe_item, wb_seq_item wb_item);
        bit rs1_act, rs2_act;
	    is_fwd_ex = 0;
        is_fwd_mem = 0;
        is_stall_load_use = 0;
        hazard_reg_id = 0;
	

        rs1_act = is_rs1_needed(pipe_item.id_ex_control);
        rs2_act = is_rs2_needed(pipe_item.id_ex_control);

        // EX fwd
        if (pipe_item.ex_mem_control.reg_write && pipe_item.ex_mem_rd != 0) begin
            if ((rs1_act && pipe_item.id_ex_rs1 == pipe_item.ex_mem_rd) || 
                (rs2_act && pipe_item.id_ex_rs2 == pipe_item.ex_mem_rd)) begin
                is_fwd_ex = 1;
                hazard_reg_id = pipe_item.ex_mem_rd;
            end
        end


        // MEM fwd
        if (wb_item.control.reg_write && wb_item.rd_id != 0) begin
            bit m1 = (rs1_act && pipe_item.id_ex_rs1 == wb_item.rd_id);
            bit m2 = (rs2_act && pipe_item.id_ex_rs2 == wb_item.rd_id);
            bit ex_hides = (pipe_item.ex_mem_control.reg_write && 
                           (pipe_item.ex_mem_rd == pipe_item.id_ex_rs1 || pipe_item.ex_mem_rd == pipe_item.id_ex_rs2));
            
            if ((m1 || m2) && !ex_hides) begin
                is_fwd_mem = 1;
                hazard_reg_id = wb_item.rd_id;
            end
        end

        // Stall
        if (is_fwd_ex && pipe_item.ex_mem_control.mem_read) begin
            is_stall_load_use = 1;
            hazard_reg_id = pipe_item.ex_mem_rd;
        end
        
        if (is_fwd_ex || is_fwd_mem || is_stall_load_use) begin
            hazard_cg.sample();
        end

    endfunction

    function bit is_rs1_needed(control_type ctrl);
        if (ctrl.encoding == U_TYPE || ctrl.encoding == J_TYPE) return 0; else return 1;
    endfunction
    function bit is_rs2_needed(control_type ctrl);
        if (ctrl.encoding == R_TYPE || ctrl.encoding == S_TYPE || ctrl.encoding == B_TYPE) return 1; else return 0;
    endfunction


endclass
