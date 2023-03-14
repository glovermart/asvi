include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .formality_read.log,${TESTCASE_NAMES}))

${OUTDIR}/%.formality_read.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	fm_shell -version >> $@
	fm_shell -work_path out/formality -x "read_sverilog -r $^;quit" >> $@ 2>&1
