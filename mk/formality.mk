include mk/common.mk

default: formal

.PHONY: formal
formal: $(addprefix ${OUTDIR}/,$(addsuffix .formal_formality.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.formal_formality.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	fm_shell -version >> $@
