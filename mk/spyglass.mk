include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .spyglass_lint.txt,${TESTCASE_NAMES}))
export T_CASE = $^
export T_REPORT = $@
${OUTDIR}/%.spyglass_lint.txt: testcases/%.sv
	mkdir -p ${SPYWkDIR}
	mkdir -p ${OUTDIR}
	sg_shell < tcl/sg_batch_run.tcl
