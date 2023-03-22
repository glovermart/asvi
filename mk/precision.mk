include mk/common.mk

default: synth

.PHONY: synth
synth: $(addprefix ${OUTDIR}/,$(addsuffix \
.precision_synth.log,${TESTCASE_NAMES}))

${OUTDIR}/%.precision_synth.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	-precision -shell -logfile out/precision.log \
	-file tcl/precision_batch_run.tcl -fileargs $^ >> $@ 2>&1
