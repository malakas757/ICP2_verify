// mem_load_bin_tb.sv
// 最小示例：把 .bin 的内容逐字节写入 mem_model.system_memory

`timescale 1ns/1ps

`include "uvm_macros.svh"



import uvm_pkg::*;
import cosim_agent_pkg::*;
import mem_model_pkg::*;
// ===== 如果 mem_model 定义在单独文件，请确保已在编译列表中包含 =====
// 这里假设你已把题主给出的 mem_model 类编译进来
// class mem_model #(int AddrWidth=32, int DataWidth=32) extends uvm_object; ... endclass

module mem_load_bin_tb;

  import uvm_pkg::*;

  // 配置：地址/数据宽度、要加载的 bin 路径、基地址
  localparam int ADDR_W = 32;
  localparam int DATA_W = 32;

  string BIN_PATH   = "/home/sjp/Desktop/ibex/ibex/dv/uvm/my_core/out_2025-10-07/asm_test/prog.bin";              // 改成你的 .bin 路径
  logic [ADDR_W-1:0] BASE_ADDR = 32'h8000_0000; // bin 写入的起始地址

  // 实例化内存模型
  mem_model #(ADDR_W, DATA_W) mem;
  
  //DPIC test
  chandle cosim_handle;
  


  // 任务：加载 .bin 到 mem_model


  // 简单自测：读几字节看看（可删）
/*

  function void load_binary_to_dut_mem(bit[31:0] base_addr, string bin);
     bit [7:0]  r8;
     bit [31:0] addr = base_addr;
     int        bin_fd;
    bin_fd = $fopen(bin,"rb");
    if (!bin_fd)
      `uvm_fatal("load_dut_mem", $sformatf("Cannot open file %0s", bin))
    while ($fread(r8, bin_fd)) begin
      `uvm_info("load one byte", $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_NONE)
      mem.write(addr, r8);
      addr++;
    end
  endfunction

  function void read_binary_in_dut_mem(bit[31:0] base_addr);
     bit [7:0]  r8;
     bit [31:0] addr = base_addr;
     int        bin_fd;
    while (addr != 32'h0000ffff) begin
      r8 = mem.read(addr);
      `uvm_info("read one byte", $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_NONE)
      addr++;
    end
  endfunction
  */
  function void write_mem_byte(bit [31:0] addr, bit [7:0] d);
    riscv_cosim_write_mem_byte(cosim_handle, addr, d);
  endfunction

  function void write_mem_word(bit [31:0] addr, bit [DATA_W-1:0] d);
    for (int i = 0; i < DATA_W / 8; i++) begin
      write_mem_byte(addr + i, d[7:0]);
      d = d >> 8;
    end
  endfunction

  // Backdoor-load the test binary file into the cosim memory model
  function void load_binary_to_mem(bit[31:0] base_addr, string bin);
     bit [7:0]   r8;
     bit [31:0]  addr = base_addr;
     int         bin_fd;
     addr = base_addr;
     $display ("base addr = %h \n",addr);
    bin_fd = $fopen(bin,"rb");
    if (!bin_fd)
      `uvm_fatal("load mem to cosim", $sformatf("Cannot open file %0s", bin))
    while ($fread(r8,bin_fd)) begin
      `uvm_info("load mem to cosim", $sformatf("Init mem [0x%h] = 0x%0h", addr, r8), UVM_NONE)
      write_mem_byte(addr, r8);
      addr++;
    end
  endfunction
   function string get_cosim_error_str();
      string error = "Cosim mismatch ";
        error = {error, riscv_cosim_get_error(cosim_handle, 0), "\n"};
      return error;
  endfunction : get_cosim_error_str


  initial begin
    // new 并加载 bin
    mem = new("mem");
    //load_binary_to_dut_mem(BASE_ADDR,BIN_PATH);

    // 简单 peek
    #100;

    `uvm_info("DONE", $sformatf("Total written bytes = %0d", mem.get_written_bytes()), UVM_LOW)
	
    //read_binary_in_dut_mem(BASE_ADDR);
      cosim_handle = spike_cosim_init("rv32im", 32'h80000000, 32'hffff00000, "sk_log",'0, '0, '0, '0, '0,32'h1A11_0000, 32'h0000_0FFF);
      if(cosim_handle == null) begin
      		$display("handle is NULL");
      end
      else 
      		$display("handle exists");
      	load_binary_to_mem(32'h80000000,BIN_PATH);
      	for(int i=0;i<1;i++) begin

   	   	if(riscv_cosim_step(cosim_handle,5'd7,32'd0,32'h80000000,0,0)) begin
      			//$display(get_cosim_error_str());
      			$display("you success");
      		end
      		else 
      		  	$display("you failed");
      	end
    $finish;
  end

initial begin
	$fsdbDumpfile("test.fsdb");
	$fsdbDumpvars;

end

endmodule
