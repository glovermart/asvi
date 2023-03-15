include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .rcread.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.rc_read.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	rc -version >> $@
