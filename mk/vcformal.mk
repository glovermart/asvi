#Load Synopsys VC Formal
#module load synopsys/vc-static/2022.06-sp2

include mk/common.mk

default: compile

.PHONY: compile
compile: $(addprefix ${OUTDIR}/,$(addsuffix \
.vcformal_compile.stdout,${TESTCASE_NAMES}))

export TESTCASE = $^

#See VC FormalUser Guide, Version T-2022.06-SP2
#pages 34, 35, 36, 75, and 101.

#See VC Static Platform Command Reference Guide, Version T-2022-06-SP2
#pages 161, 867, and 963.

#See VC Formal Quick Reference Guide, Version T-2022.06-SP2
#pages 2 and 4.

${OUTDIR}/%.vcformal_compile.stdout: testcases/%.sv | ${OUTDIR}
	-vcf -batch -out_dir vcformal -f tcl/vcformal_batch_run.tcl ${REDIRECT}
