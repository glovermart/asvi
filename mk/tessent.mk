include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .tessent_read.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.tessent_read.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	tessent -shell -VERSION >> $@
