include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .spyglass_linter.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.spyglass_linter.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	spyglass -shell -tcl tcl/batch_run.tcl
