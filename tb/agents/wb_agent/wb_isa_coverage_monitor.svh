class wb_isa_coverage_monitor extends uvm_subscriber #(wb_seq_item);
    `uvm_component_utils(wb_isa_coverage_monitor)

    wb_seq_item m_item;

    //Covergroup 1: alu&encoding
     //alu_op, encoding, alu_src

    covergroup isa_cg;
        option.per_instance = 1;
        option.comment = "Instruction Type and ALU Op Coverage";

        // alu_op_type
        cp_alu_op: coverpoint m_item.control.alu_op {
            bins logical[]    = {ALU_AND, ALU_OR, ALU_XOR};
            bins arithmetic[] = {ALU_ADD, ALU_SUB, ALU_LUI};
            bins shift[]      = {ALU_SLL, ALU_SRL, ALU_SRA};
            bins compare[]    = {ALU_SLT, ALU_SLTU};
            bins branch[]     = {B_BNE, B_BLT, B_BGE, B_LTU, B_GEU}; 
            // The BEQ is missing in common and also skipped in exe_stage of DUT:)
        }

        // encoding_type
        cp_encoding: coverpoint m_item.control.encoding {
            bins r_type = {R_TYPE};
            bins i_type = {I_TYPE};
            bins s_type = {S_TYPE};
            bins b_type = {B_TYPE};
            bins u_type = {U_TYPE};
            bins j_type = {J_TYPE};
            ignore_bins none = {NONE_TYPE};
        }

        // alu_src
        cp_alu_src: coverpoint m_item.control.alu_src {
            bins src_reg = {0};
            bins src_imm = {1};
        }


        
        cross cp_encoding, cp_alu_op {
            // Define only the VALID combinations.            
            bins valid_r = binsof(cp_encoding) intersect {R_TYPE} &&
                           binsof(cp_alu_op) intersect {
                               ALU_ADD, ALU_SUB,  
                               ALU_AND, ALU_OR, ALU_XOR,
                               ALU_SLL, ALU_SRL, ALU_SRA,
                               ALU_SLT, ALU_SLTU
                           };

            bins valid_i = binsof(cp_encoding) intersect {I_TYPE} &&
                           binsof(cp_alu_op) intersect {
                               ALU_ADD,           
                               ALU_AND, ALU_OR, ALU_XOR,
                               ALU_SLL, ALU_SRL, ALU_SRA,
                               ALU_SLT, ALU_SLTU
                           };

            bins valid_s = binsof(cp_encoding) intersect {S_TYPE} &&
                           binsof(cp_alu_op) intersect {ALU_ADD};

            bins valid_b = binsof(cp_encoding) intersect {B_TYPE} &&
                           binsof(cp_alu_op) intersect {
                               ALU_SUB, B_BNE, B_BLT, B_BGE, B_LTU, B_GEU
                           };

            bins valid_u = binsof(cp_encoding) intersect {U_TYPE} &&
                           binsof(cp_alu_op) intersect {ALU_LUI, ALU_ADD};

            bins valid_j = binsof(cp_encoding) intersect {J_TYPE} &&
                           binsof(cp_alu_op) intersect {ALU_ADD};
        }

    endgroup

    // Covergroup 2:MEM access
    // mem_read, mem_write, mem_size, mem_sign
    covergroup lsu_cg;
	option.per_instance = 1;
        option.comment = "Memory Access Coverage";

        cp_mem_read: coverpoint m_item.control.mem_read {
            bins enable  = {1};
            bins is_disable = {0};
        }

        cp_mem_write: coverpoint m_item.control.mem_write {
            bins enable  = {1};
            bins is_disable = {0};
        }

        cp_mem_size: coverpoint m_item.control.mem_size {
            bins byte_access = {2'b00};
            bins half_access = {2'b01};
            bins word_access = {2'b10};
        }

        cp_mem_sign: coverpoint m_item.control.mem_sign {
            bins sign_ext   = {0};
            bins zero_ext   = {1};
        }

        cross cp_mem_write, cp_mem_size;
        cross cp_mem_read, cp_mem_size, cp_mem_sign;

    endgroup

    // Covergroup 3: WB & Branch
    // reg_write, mem_to_reg, is_branch, rd_id

    covergroup ctrl_cg;
	option.per_instance = 1;
        option.comment = "Control Flow and Register Writeback";

        cp_reg_write: coverpoint m_item.control.reg_write {
            bins write = {1};
            bins none  = {0};
        }

        cp_mem_to_reg: coverpoint m_item.control.mem_to_reg {
            bins from_alu = {0}; 
            bins from_mem = {1}; 
        }

        cp_is_branch: coverpoint m_item.control.is_branch {
            bins branch_inst = {1};
            bins normal_inst = {0};
        }

        cp_rd_id: coverpoint m_item.rd_id {
            bins x0      = {0};
            bins ra_link = {1}; // x1
            bins sp_stack= {2}; // x2
            bins others[]  = {[3:31]};
        }

        cross cp_reg_write, cp_mem_to_reg {
            ignore_bins none_write = binsof(cp_reg_write) intersect {0};
        }
        
        cross cp_reg_write, cp_rd_id{
            ignore_bins none_write = binsof(cp_reg_write) intersect {0};
                        
        }

    endgroup

    function new(string name, uvm_component parent);
        super.new(name, parent);
        isa_cg  = new();
        lsu_cg  = new();
        ctrl_cg = new();
    endfunction

    virtual function void write(wb_seq_item t);
        m_item = t; 
        if(m_item.mem_wb_valid) begin
            isa_cg.sample();
            lsu_cg.sample();
            ctrl_cg.sample();
        end
    endfunction

endclass
