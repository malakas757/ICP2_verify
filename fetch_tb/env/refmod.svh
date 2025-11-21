
class if_ref extends uvm_component;


   `uvm_component_utils(if_ref)

   //From ctr and bpu agent
   uvm_tlm_analysis_fifo #(exec_seq_item) exec_fifo; //master
   uvm_tlm_analysis_fifo #(bpu_seq_item) bpu_fifo; //master

   // To scoreborad
   uvm_analysis_port #(if_id_seq_item) ap;
   
   fetch_env_config         cfg;
   
   virtual if_id_if  vif;
   if_id_seq_item id_seq;   
   bit [7:0] MEM[131072];
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
   extern task debug_info();

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
   
   BASE_ADDR = cfg.BASE_ADDR;
   
       if ($value$plusargs("MEM_FILE=%s", BIN_PATH)) begin
   	   $display("MEM_File = %s",BIN_PATH);
    end 
    else begin
           $display("No MEM_FILE argument");
    end

   
   //$readmemb("./fetch_tb/rtl/instruction_mem.mem", MEM);
   

endfunction // build_phase

task if_ref::run_phase(uvm_phase phase);

   //load_binary_to_dut_mem(BASE_ADDR,BIN_PATH);

   
   exec_seq_item  exec_item;
   bpu_seq_item   bpu_item;
   
   id_seq = if_id_seq_item::type_id::create("id_seq");
   
  
   @(posedge vif.rstn);
   load_binary_to_dut_mem(BASE_ADDR,BIN_PATH);
   pc_reg = BASE_ADDR;
   `uvm_info("refmod",$sformatf("PC in refmod is initialized to 0x%h",BASE_ADDR),UVM_LOW);
   @(posedge vif.clk);
   while(1) begin
      @(posedge vif.clk);
      id_seq.pc_out = pc_reg;
      id_seq.if_id_flush = 0;
      id_seq.id_ex_flush = 0;
      id_seq.instruction_out = decode_instr(pc_reg);
            


      //pc_update
      
      pc_reg_next  = (id_seq.instruction_out[1:0] != 2'b11)? pc_reg+2 : pc_reg+4;
     
            
      if(bpu_fifo.try_get(bpu_item)) begin
	 if(bpu_item.pred) begin
	    pc_reg_next   =  bpu_item.bpu_target;  
	    //pc_reg_next   <=  pc_reg;
	 end
      end
     
	
      
       
      if(exec_fifo.try_get(exec_item)) begin
	 if(exec_item.redirect_flag) begin
	    pc_reg_next  = exec_item.redirect_target;
	    id_seq.if_id_flush = 1;
	    id_seq.id_ex_flush = 1;
	    id_seq.instruction_out = 0;	    
	 end
	 else if(!exec_item.pc_write) begin
	    pc_reg_next  = pc_reg;
	    id_seq.if_id_flush = 1;
	    id_seq.id_ex_flush = 1;
	    id_seq.instruction_out = 0;	    
	 end
      end
     
      debug_info();      
      ap.write(id_seq);
      pc_reg = pc_reg_next;
 
      
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
      `uvm_info("refmod: load one byte", $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_LOW)
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
   return instr_after_decode;
endfunction


task if_ref::debug_info();
  `uvm_info("refmod","send an instruction",UVM_LOW);
  `uvm_info("refmod",$sformatf("pc=%h",id_seq.pc_out),UVM_LOW);
  `uvm_info("refmod",$sformatf("instruction=%h",id_seq.instruction_out),UVM_LOW);
  `uvm_info("refmod",$sformatf("if_id_flush=%b",id_seq.if_id_flush),UVM_LOW);
  `uvm_info("refmod",$sformatf("id_ex_flush=%b",id_seq.id_ex_flush),UVM_LOW);
endtask
