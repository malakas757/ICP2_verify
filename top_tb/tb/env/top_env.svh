class top_env extends uvm_component;

`uvm_component_utils(top_env)

top_scoreboard top_sb;
wb_agent m_wb_agent;
mem_agent m_mem_agent;

top_env_config m_env_cfg;
top_cosim_config m_cosim_cfg;



function new(string name = "top_env", uvm_component parent = null);
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!(uvm_config_db #(top_env_config)::get(this, "", "top_env_config", m_env_cfg))) begin
        `uvm_fatal("build phase", "Unable to get env_config")
    end
    if(!uvm_config_db #(top_cosim_config)::get(this, "", "top_cosim_config", m_cosim_cfg)) begin
        `uvm_fatal(`gfn, "Cannot get cosim_config")
    end
    
    m_wb_agent = wb_agent::type_id::create("m_wb_agent", this);
    m_mem_agent = mem_agent::type_id::create("m_mem_agent", this);
    top_sb = top_scoreboard::type_id::create("m_top_sb", this);
    

    uvm_config_db #(wb_agent_config)::set(this, "m_wb_agent*", "wb_agent_config", m_env_cfg.m_wb_agent_cfg);
    uvm_config_db #(mem_agent_config)::set(this, "m_mem_agent*", "mem_agent_config", m_env_cfg.m_mem_agent_cfg);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    m_wb_agent.ap.connect(top_sb.wb_fifo.analysis_export);
    top_sb.vif = m_env_cfg.m_wb_agent_cfg.vif;
endfunction



function void write_mem_byte(bit [31:0] addr, bit [7:0] d);
    riscv_cosim_write_mem_byte(m_cosim_cfg.cosim_handle, addr, d);
endfunction

function void write_mem_word(bit [31:0] addr, bit [31:0] d);
    for (int i = 0; i < 4; i++) begin
        write_mem_byte(addr + i, d[7:0]);
        d = d >> 8;
    end
endfunction

  // Backdoor-load the test binary file into the cosim memory model
function void load_binary_to_mem(bit[31:0] base_addr, string bin);
    bit [7:0]   r8;
    bit [31:0]  addr = base_addr;
    int         bin_fd;
    bin_fd = $fopen(bin,"rb");
    if (!bin_fd)
        `uvm_fatal(get_full_name(), $sformatf("Cannot open file %0s", bin))
    while ($fread(r8,bin_fd)) begin
        `uvm_info(`gfn, $sformatf("Init spike mem [0x%h] = 0x%0h", addr, r8), UVM_LOW)
        write_mem_byte(addr, r8);
        addr++;
    end
endfunction

function void reset();
    top_sb.wb_fifo.flush();
    top_sb.reset_e.trigger();
endfunction

endclass
