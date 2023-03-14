include mk/common.mk

default: formal

.PHONY: formal
formal: $(addprefix ${OUTDIR}/,$(addsuffix .formal_formality.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.formal_formality.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	fm_shell -version >> $@
	fm_shell -work_path out/formality -file tcl/fm_batch_run.tcl
