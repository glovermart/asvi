include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .precision_read.log,${TESTCASE_NAMES}))

${OUTDIR}/%.precision_read.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	-precision -shell -logfile out/precision.log -file tcl/pcn_batch_run.tcl \
	-fileargs $^ >> $@ 2>&1
