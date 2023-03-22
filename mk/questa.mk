include mk/common.mk

default: opt

.PHONY: opt
opt: $(addprefix ${OUTDIR}/,$(addsuffix .questa_opt.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.questa_opt.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-vlog -sv -sv17compat -lint $^ >> $@ 2>&1
	-vopt top -o optversion >> $@ 2>&1
