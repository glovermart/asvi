include mk/common.mk

default: scan

.PHONY: scan
scan: $(addprefix ${OUTDIR}/,$(addsuffix .tessent_scan.stdout,${TESTCASE_NAMES}))
${OUTDIR}/%.syn.v: testcases/%.sv | ${OUTDIR}
	-dc_shell -x "read_sverilog $^;compile -incremental -scan;write_file -format verilog -hierarchy -output $@;quit"
${OUTDIR}/%.tessent_scan.stdout: ${OUTDIR}/%.syn.v
	-tessent -shell -dofile tcl/tessent_batch.do -Arguments netlist=$^ ${REDIRECT}
