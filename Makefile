# ===== User config =====
# riscv-dv 仓库路径（改成你的实际路径）
RISCV_DV_DIR ?= ./vendor/google_riscv-dv
USR_EXT    ?= $(RISCV_DV_DIR)/user_extension
UVM_TEST_NAME ?= base_test
SEED ?=  

# 交叉工具链（仅用于可选的 elf/hex 转换）
LDS     ?= $(RISCV_DV_DIR)/scripts/link.ld

# riscv-dv 生成参数（按需覆盖：make TEST=... ISA=... ）
TEST ?= riscv_rand_instr_test
ISA  ?= rv32im
MABI ?= ilp32
ITER ?= 1
CUSTOM_TARGET ?= my_rv32i
STEPS ?= gen,compile
# 有的老工具链不识别 _zifencei，这里可覆盖 GCC 选项（可留空）
# 例如：make EXTRA_GCC_OPTS="-march=rv32imc -mabi=ilp32"
EXTRA_GCC_OPTS ?=

# 结果收集目录
BIN_DIR ?= $(RISCV_DV_DIR)/bins



#=======vcs=======
DESIGN_FILE  = fileset/design.f
TOP_TB_FILE  = fileset/top_tb.f
AGENT_FILE	 = fileset/agent.f
MEM_FILE     = fileset/mem.f
COSIM_FILE   = fileset/cosim.f
TEST_FILE    = fileset/uvm_tb.f
TEST_NAME_FILE = fileset/testname.f
TEST_NAME   ?= fetch_random_test
TEST_NAMES	 = `cat $(TEST_NAME_FILE)` 
CM       = -cm line+cond+fsm+branch+tgl
CM_NAME  = -cm_name $(TEST_NAME)
CM_DIR   = -cm_dir cover/$(TEST_NAME).vdb
ASS_ON   = +define+SVA+ASSERT_ON
ASS_RUN  = +sva_success

# Coverage paths
DESIGN_VDB := cover/simv.vdb
REPORT_DIR := cover/html
MERGED_VDB := cover/merged.vdb

# Collect all test vdbs under cover/, EXCEPT the design vdb
TEST_VDBS  := $(filter-out $(DESIGN_VDB),$(wildcard cover/*.vdb))

#==============================================================



# ===== Internals =====
PYTHON ?= python3
RUNPY  := $(RISCV_DV_DIR)/run.py
TEST_YAML := ./testlist.yaml 
# 运行 riscv-dv 的命令（用 run.py 避免入口脚本环境问题）
DV_GEN_OUT ?= $(abspath ./dv_out/out_$(TEST_NAME)_seed$(SEED))
RUN_CMD := $(PYTHON) $(RUNPY) --custom_target=$(RISCV_DV_DIR)/target/$(CUSTOM_TARGET) --isa=$(ISA) --mabi=$(MABI) --test=$(TEST)  --iterations=$(ITER) --testlist=$(TEST_YAML) \
	--o $(DV_GEN_OUT)
ifneq ($(strip $(EXTRA_GCC_OPTS)),)
	RUN_CMD += -gcc_opts "$(EXTRA_GCC_OPTS)"
endif

LATEST_OUT := $(DV_GEN_OUT)

.PHONY:	gens bin_compile clean_dv vcs_compile vcs_sim buildso clean_so


#setup:
# 	@echo "==> Installing riscv-dv dependencies (user mode)"
# 	cd $(RISCV_DV_DIR) && $(PYTHON) -m pip install --user -r requirements.txt
# 	cd $(RISCV_DV_DIR) && $(PYTHON) -m pip install --user -e .

# 生成并编译（riscv-dv 会在 out_xxx/asm_test 下产生 .S/.o/.bin）
gens:   
	@echo "==> Running riscv-dv: $(TEST), ISA=$(ISA), MABI=$(MABI), ITER=$(ITER)"
	$(RUN_CMD)

bin_compile:
	@test -n "$(LATEST_OUT)" || (echo "No out_* found. Run 'make gens' first." && exit 1)
	@echo "==> Compile .S -> .o -> .elf -> .bin under $(LATEST_OUT)/asm_test"
	@set -e; \
	for s in $(LATEST_OUT)/asm_test/*.S; do \
	  [ -f "$$s" ] || { echo "No .S found in $(LATEST_OUT)/asm_test"; exit 1; }; \
	  b=$${s%.S}; \
	  echo "  CC -c  $$s -> $$b.o"; \
	  $(RISCV_GCC) -c -march=$(ISA) -mabi=$(MABI) $$s -o $$b.o; \
	  echo "  LD     $$b.o -> $$b.elf"; \
	  $(RISCV_GCC) -nostdlib -nostartfiles -static -mcmodel=medany -fvisibility=hidden \
	    -march=$(ISA) -mabi=$(MABI) -T $(LDS) $$b.o -o $$b.elf; \
	  echo "  OBJCOPY $$b.elf -> $$b.bin"; \
	  $(RISCV_OBJCOPY) -O binary $$b.elf $$b.bin; \
	done

clean_dv: 
	@echo "==> Clean out_*"
	rm -rf ./dv_out/out_*

# 收集 .bin 到 BIN_DIR
#collect:
# 	@test -n "$(LATEST_OUT)" || (echo "No out_* dir found. Run 'make gens' first." && exit 1)
# 	@echo "==> Latest out dir: $(LATEST_OUT)"
# 	mkdir -p $(BIN_DIR)
# 	cp -v $(LATEST_OUT)/asm_test/*.bin $(BIN_DIR)/
# 	@echo "==> Collected BINs -> $(BIN_DIR)"

# 一键生成并收集
#bins: gens collect

# 可选：把 .o（其实是 ELF）转成 Verilog memory（便于 `include`）
# 用法：make hex  或 make hex WIDTH=32 BASE=0x00000000 END=0x0003FFFF
#WIDTH ?= 32
#BASE  ?= 0x00000000
#END   ?= 0x0003FFFF
#hex:
# 	@test -n "$(LATEST_OUT)" || (echo "No out_* dir found. Run 'make gens' first." && exit 1)
# 	@echo "==> Generating Verilog memory files (.vh) from ELF(.o)"
# 	for f in $(LATEST_OUT)/asm_test/*_test_*.o; do \
# 	  b=$$(basename $$f .o); \
# 	  $(OBJCOPY) -O verilog $$f $(BIN_DIR)/$$b.vh; \
# 	  echo "  -> $(BIN_DIR)/$$b.vh"; \
# 	done
# 	@echo "TIP: 也可用 elf2hex 生成给 $readmemh 用的扁平 hex（若你装了 elf2hex）："
 #	@echo "     elf2hex <elf> -b $(BASE) -w $(WIDTH) -e $(END) -o <out.hex>"

## 显示最新 out 目录和其中的文件
#list:
# 	@echo "Latest out: $(LATEST_OUT)"
# 	@ls -l $(LATEST_OUT)/asm_test 2>/dev/null || true

# 清理


# 彻底清理（包含 riscv-dv 的 out_*）


#======================SPIKE_LIB=================================
# ---- tool & paths ----
CXX        ?= g++
COSIM_DIR  ?= $(HOME)/Desktop/ibex/ibex/dv/cosim
SPK_PREFIX ?= /opt/spike-cosim
BUILD_DIR  ?= $(COSIM_DIR)/build

# 仿真器 svdpi.h（VCS/Questa 二选一；没装的话用空也行）
SIM_INC    ?= -I$(VCS_HOME)/include
# SIM_INC  ?= -I$(QUESTA_HOME)/include

# ---- spike headers & libs (prefer pkg-config) ----
PKGCFG_PATH := $(SPK_PREFIX)/lib/pkgconfig
SPK_CFLAGS  := $(shell PKG_CONFIG_PATH=$(PKGCFG_PATH) pkg-config --cflags riscv-fesvr riscv-disasm 2>/dev/null)
SPK_LIBS    := -L$(SPK_PREFIX)/lib -lfesvr -lriscv -ldisasm -lsoftfloat 
SPK_CFLAGS  := $(SPK_CFLAGS)  -I$(SPK_PREFIX)/include/softfloat

# 如果上面两个是空（常见：没装 .pc），用手写兜底
EXTRA_LIBS := -lriscv -lsoftfloat -lstdc++ -lpthread -ldl
RPATH      := -Wl,-rpath,$(SPK_PREFIX)/lib

COSIM_SRCS := $(COSIM_DIR)/cosim_dpi.cc $(COSIM_DIR)/spike_cosim.cc $(COSIM_DIR)/spike_cosim_dpi.cc
COSIM_HDRS := $(COSIM_DIR)/cosim_dpi.h  $(COSIM_DIR)/spike_cosim.h  $(COSIM_DIR)/cosim.h
DPI_SO     := $(BUILD_DIR)/libcosim_dpi.so



buildso: $(DPI_SO)

$(DPI_SO): $(COSIM_SRCS) $(COSIM_HDRS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) -fPIC -shared -O2 \
	  $(SIM_INC) -I$(COSIM_DIR) $(SPK_CFLAGS) $(SPK_SOFTFLOAT) \
	  -o $@ $(COSIM_SRCS) \
	  $(SPK_LIBS) $(EXTRA_LIBS) $(RPATH)  -Wl,-z,defs
	@echo "Built $@"
	@ldd $@ || true

clean_so:
	rm -rf $(BUILD_DIR)

show:
	@echo "CXX=$(CXX)"
	@echo "SIM_INC=$(SIM_INC)"
	@echo "SPK_CFLAGS=$(SPK_CFLAGS)"
	@echo "SPK_LIBS=$(SPK_LIBS)"
	@echo "EXTRA_LIBS=$(EXTRA_LIBS)"
#=============================================================
#=======vcs=======




buildso: $(DPI_SO)

vcs_compile:
	@mkdir -p work_lib cover log
	vcs -sverilog -ntb_opts uvm-1.2 \
	    -full64 -debug_access+all -fsdb -kdb \
	    -timescale=1ns/1ns +vcs+lic+wait +vcsd +memcbk +vpi \
	    -l vcs_compile.log \
	    -o work_lib/simv \
	    $(CM) $(ASS_ON) \
	    -f $(DESIGN_FILE) \
		-f $(AGENT_FILE)\
		-f $(TEST_FILE)\
		-f $(TOP_TB_FILE)
	#	-f $(MEM_FILE) \
	#   -f $(TOP_TB_FILE)\ 
	

vcs_sim:
	@echo "Running Tests"
	@mkdir -p log
	$(MAKE) gens
	./work_lib/simv -l log/${TEST_NAME}.log +MEM_FILE=./dv_out/out_$(TEST_NAME)_seed$(SEED)/asm_test/test.bin  +UVM_TIMEOUT=900000000 +UVM_TESTNAME=${TEST_NAME};

vcs_sim_all:
	@echo "Running Tests"
	@mkdir -p log
	@for i in $(TEST_NAMES); do \
		./work_lib/simv -l log/$$i.log +UVM_TIMEOUT=900000000 +UVM_TESTNAME=$$i;\
	done

vcs_sim_cov:
	@echo "====================================================="
	@echo " Running Tests with Coverage"
	@echo "====================================================="
	@rm -rf cover log $(MERGED_VDB) $(REPORT_DIR)
	@mkdir -p cover log $(REPORT_DIR)

	@for i in $(TEST_NAMES); do \
		echo "==> Running Test: $$i"; \
		./work_lib/simv \
			+UVM_TIMEOUT=900000000 +UVM_TESTNAME=$$i \
			-cm_dir cover/$$i.vdb \
			-l log/$$i.log; \
	done

	@echo "====================================================="
	@echo "==> Merging coverage reports..."
	@echo "====================================================="
	urg -dir work_lib/simv.vdb \
		-dir cover/*.vdb \
		-elfile exclusion.el \
		-excl_bypass_checks \
		-report $(REPORT_DIR)

vcs_check:
	vcs -sverilog -full64 -ntb_opts uvm-1.2 -l compile.log -f ./fileset/test.f
	
vcs_clean:
	rm -rf *fsdb* *.log

test-list:
			@for i in $(TEST_NAMES); do \
				echo $$i; \
			done



