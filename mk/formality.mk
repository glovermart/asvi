#To Do: Add implementation design & match step before verify command
#To Do: Make similar designs without interfaces
include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .formality_read.log,${TESTCASE_NAMES}))

${OUTDIR}/%.formality_read.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	-fm_shell -work_path out/formality -x \
	"read_sverilog -r $^;set_top -auto;verify;quit" >> $@ 2>&1
