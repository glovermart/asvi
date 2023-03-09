include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .questa_linter.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.questa_linter.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-vlog -sv -lint $^ >> $@ 2>&1
