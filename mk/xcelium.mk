include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .xcelium_read.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.xcelium_read.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	xmsim -version >> $@
