#Load mentor onespin tool
#module load mentor/onespin/2023.1

include mk/common.mk

default: compile

.PHONY: compile
compile: $(addprefix ${OUTDIR}/,$(addsuffix \
.onespin_compile.stdout,${TESTCASE_NAMES}))

export TESTCASE = $^

#See mentor Onespin360 User Manual, version 2023.1 (User_Manual.pdf)
#page 19
#--gui=no: Invokes the Onespin tool in the Unix shell window; commnad line mode
#See mentor Onespin360 Reference Manual, version 2023.1(Reference_Manual.pdf)
#pages 437, 330, 331, 192, 136,361 for commands used in the tcl file.

${OUTDIR}/%.onespin_compile.stdout: testcases/%.sv | ${OUTDIR}
	-onespin --gui=no tcl/onespin_batch_run.tcl ${REDIRECT}
