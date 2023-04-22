#Load Palladium tool
#module load cadence/vxe/22.04.001

include mk/common.mk

default: synthesize
synthesize: $(addprefix ${OUTDIR}/,$(addsuffix .palladium_synth.stdout,\
	${TESTCASE_NAMES}))

#See UXE User Guide, Version 17.5 (uxeUserGUide.pdf)
#Page 63, 129, 130, 135, 136

#See Compiling Designs for ICE, Version VXE 22.04 (compileICE.pdf)
#Pages 9, 25, 26, 27, 33 for commands used in tcl script.

export TESTCASE = $^
${OUTDIR}/%.palladium_synth.stdout: testcases/%.sv | ${OUTDIR}
	xeCompile tcl/palladium_batch_run.tcl ${REDIRECT}
