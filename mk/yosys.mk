
include mk/common.mk

default: read

.PHONY: read

read: $(addprefix ${OUTDIR}/,$(addsuffix .yosys_read.txt,${TESTCASE_NAMES}))
${OUTDIR}/%.yosys_read.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-yosys -q -p "read_verilog -sv $^" -p proc -p opt >> $@ 2>&1
