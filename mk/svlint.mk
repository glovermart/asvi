
include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .svlint_lint.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.svlint_lint.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	svlint --version > $@
	svlint -- --lint $^ >> $@ 2>&1 #To fix - only first file is linted


