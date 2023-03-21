include mk/common.mk

default: compile

.PHONY: compile
compile: $(addprefix ${OUTDIR}/,$(addsuffix .xcelium_compile.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.xcelium_compile.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-xmvlog -sv -nocopyright -messages $^ >> $@ 2>&1
