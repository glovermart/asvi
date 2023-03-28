include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .vcs_lint.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.vcs_lint.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	vcs -sverilog +lint=all testcases/test1.sv
