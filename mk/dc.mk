include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .dc_read.log,${TESTCASE_NAMES}))

${OUTDIR}/%.dc_read.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	dc_shell -x "read_sverilog $^;compile;remove_design -designs;quit" >> $@ 2>&1

