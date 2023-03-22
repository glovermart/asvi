include mk/common.mk
SPYGLASS_WORK_DIR := spyglass
default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .spyglass_lint.txt,${TESTCASE_NAMES}))
export TESTCASE = $^
export TESTCASE_REPORT = $@
${OUTDIR}/%.spyglass_lint.txt: testcases/%.sv
	mkdir -p ${SPYGLASS_WORK_DIR}
	mkdir -p ${OUTDIR}
	sg_shell < tcl/spyglass_batch_run.tcl
