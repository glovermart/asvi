include mk/common.mk

default: simulate

.PHONY: simulate
simulate: $(addprefix ${OUTDIR}/,$(addsuffix .xcelium_simulate.txt,${TESTCASE_NAMES}))

XCELIUM_TOP ?= top
${OUTDIR}/%.xcelium_simulate.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-xmvlog -sv -nocopyright -nolog $^ >> $@ 2>&1
	-xmelab -nocopyright -nolog ${XCELIUM_TOP} >> $@ 2>&1
	-xmsim -nocopyright -nolog ${XCELIUM_TOP} >> $@ 2>&1
