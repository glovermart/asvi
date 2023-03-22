
include mk/common.mk

default: synth

.PHONY: synth
synth: $(addprefix ${OUTDIR}/,$(addsuffix .vivado_synth.log,${TESTCASE_NAMES}))

${OUTDIR}/%.vivado_synth.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	-vivado -mode batch -nojournal -nolog -source tcl/vivado_batch_run.tcl \
	-tclargs	$^ >> $@ 2>&1
