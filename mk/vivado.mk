
include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .vivado_reader.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.vivado_reader.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-vivado -mode batch -nojournal -nolog -source tcl/vv_batch_run.tcl -tclargs $^ >> $@ 2>&1
