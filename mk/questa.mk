include mk/common.mk

default: opt

.PHONY: opt
opt: $(addprefix ${OUTDIR}/,$(addsuffix .questa_opt.log,${TESTCASE_NAMES}))

${OUTDIR}/%.questa_opt.log: testcases/%.sv testbench/tb.sv
	mkdir -p ${OUTDIR}
	-vlog -sv -sv17compat -lint $^ >> $@ 2>&1
	-vopt tb -o optversion >> $@ 2>&1
	-vsim -c optversion -do "run -all; quit -f" >> $@ 2>&1
