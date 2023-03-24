include mk/common.mk

default: compile

.PHONY: compile
compile: $(addprefix ${OUTDIR}/,$(addsuffix \
.onespin_compile.log,${TESTCASE_NAMES}))

export TESTCASE = $^

${OUTDIR}/%.onespin_compile.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	-onespin --gui=no tcl/onespin_batch_run.tcl
