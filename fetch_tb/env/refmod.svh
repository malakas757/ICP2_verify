
class if_ref extends uvm_component;


   `uvm_component_utils(if_ref)

   //From ctr and bpu agent
   uvm_tlm_analysis_fifo #(exec_seq_item) exec_fifo; //master
   uvm_tlm_analysis_fifo #(bpu_seq_item) bpu_fifo; //master

   // To scoreborad
   uvm_analysis_port #(if_id_seq_item) ap;
   
   fetch_env_config         cfg;
   
   virtual exec_if  vif;
   
   bit [15:0] MEM[];
   string     BIN_PATH;             
   logic [31:0] BASE_ADDR;
   logic [31:0] pc_reg;
   logic [31:0] pc_reg_next;
   logic [31:0] instr_reg;
   
   

   extern function new (string name,uvm_component parent);
   extern function void build_phase (uvm_phase phase);
   extern virtual task run_phase (uvm_phase phase);
   extern virtual function void load_binary_to_dut_mem(bit[31:0] base_addr, string bin);
   extern virtual function logic[31:0] decode_instr(bit[31:0] pc_addr);

endclass // if_ref

function if_ref::new(string name, uvm_component parent);
   super.new(name,parent);  
endfunction // new

function void if_ref::build_phase(uvm_phase phase);
   super.build_phase(phase);
   exec_fifo = new("exec_fifo",this);
   bpu_fifo  = new("bpu_fifo",this);
   ap   = new("ap",this);
   
   if(!uvm_config_db #(fetch_env_config)::get(this, "", "fetch_env_config", cfg)) begin
      `uvm_error("build_phase", "env config not found")
   end
   BIN_PATH = cfg.BIN_PATH;
   BASE_ADDR = cfg.BASE_ADDR;
   MEM = new[cfg.MEM_DEPTH];
   load_binary_to_dut_mem(BASE_ADDR,BIN_PATH);
   
   

endfunction // build_phase

task if_ref::run_phase(uvm_phase phase);


   exec_seq_item  exec_item;
   bpu_seq_item   bpu_item;
   
   if_id_seq_item id_seq;
   
   @(posedge vif.rstn);
   pc_reg = BASE_ADDR;

   while(1) begin
      @(posedge vif.clk);
      id_seq.pc_out = pc_reg;
      id_seq.if_id_flush = 0;
      id_seq.instruction_out = decode_instr(pc_reg);
            


      //pc_update      
      if(bpu_fifo.try_get(bpu_item)) begin
	 if(bpu_item.pred) begin
	   // pc_reg_next   <=  bpu_item.bpu_target;  //TO DO
	    pc_reg_next   <=  pc_reg;
	 end
	 else begin
	    pc_reg_next  <= (id_seq.instruction_out[1:0] != 2'b11)? pc_reg+2 : pc_reg+4;
	 end	 
      end
      //TO DO need change name
      if(exec_fifo.try_get(exec_item)) begin
	 if(exec_item.redirect_flag/*exec_item.jalr_flag*/) begin
	    pc_reg_next  <= exec_item.redirect_target/*exec_item.jalr_target_offset*/;
	    id_seq.if_id_flush = 0;
	    id_seq.instruction_out = 0;	    
	 end
	 else if(!exec_item.pc_write) begin
	    pc_reg_next  <= pc_reg;
	    id_seq.if_id_flush = 0;
	    id_seq.instruction_out = 0;	    
	 end
	 else begin
	    pc_reg_next  <= (id_seq.instruction_out[1:0] != 2'b11)? pc_reg+2 : pc_reg+4;
	 end	 
	 
      end // if (exec_fifo.try_get(exec_item))
      
      ap.write(id_seq);
      pc_reg <= pc_reg_next;
 
      
   end // while (1)
	       



endtask // run_phase




function void if_ref::load_binary_to_dut_mem(bit[31:0] base_addr, string bin);
   bit [7:0]  r8;
   int unsigned addr = base_addr; // use int cause dynamic array need int to index
   int 		bin_fd;
   bin_fd = $fopen(bin,"rb");
   if (!bin_fd)
     `uvm_fatal("load_dut_mem", $sformatf("Cannot open file %0s", bin))
   while ($fread(r8, bin_fd)) begin
      `uvm_info("load one byte", $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_NONE)
      MEM[addr] = r8;
      addr++;
   end
endfunction // load_binary_to_dut_mem

function logic[31:0] if_ref::decode_instr(bit[31:0] pc_addr);
   int unsigned addr;
   logic [31:0] instr;
   logic [31:0] instr_after_decode;
   addr = pc_addr;
   instr = {MEM[addr+3],MEM[addr+2],MEM[addr+1],MEM[addr]};
   instr_after_decode = (instr[1:0]!= 2'b11)? {16'b0, instr[15:0]} : instr;
   return decode_instr;
endfunction
