include mk/common.mk

default: compile

.PHONY: compile
compile: $(addprefix ${OUTDIR}/,$(addsuffix \
.vcformal_compile.log,${TESTCASE_NAMES}))

${OUTDIR}/%.vcformal_compile.log: testcases/%.sv
	mkdir -p ${OUTDIR}
	vcf -f tcl/vcformal_batch_run.tcl -out_dir out
