#Load Palladium tool
#module load cadence/vxe/22.04.001

#Load other prerequisites/tool dependencies
#module load cadence/hdlice/22.04.160 
#module load cadence/xcelium/22.03.004

include mk/common.mk

default: synthesize
synthesize: $(addprefix ${OUTDIR}/,$(addsuffix .palladium_synth.stdout,\
	${TESTCASE_NAMES}))

#See UXE User Guide, Version 17.5 (uxeUserGUide.pdf)
#Page 63, 129, 130, 135, 136

#See Compiling Designs for ICE, Version VXE 22.04 (compileICE.pdf)
#Pages 9, 25, 26, 27, 33 for commands used in tcl script.

export TESTCASE = $^
export TESTCASE_NAME_NO_DIR = $(@F)

${OUTDIR}/%.palladium_synth.stdout: testcases/%.sv | ${OUTDIR}
	xeCompile tcl/palladium_batch_run.tcl ${REDIRECT}
