include mk/common.mk

default: read

.PHONY: read
read: $(addprefix ${OUTDIR}/,$(addsuffix .formality_read.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.formality_read.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	fm_shell -version >> $@
	fm_shell -work_path out/formality -x "read_sverilog -r testcases/test1.sv;quit"
