#Load Synopsys Spyglass
#module load synopsys/spyglass/2023.03

include mk/common.mk
SPYGLASS_WORK_DIR := spyglass
default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,\
	$(addsuffix .spyglass_lint.stdout,${TESTCASE_NAMES}))

export TESTCASE = $^

# See Spyglass Tcl Shell Interface User Guide, Version U-2023.03
# SpyGlass_TclShellInterface_UserGuide.pdf
# pages 39, 40, 42
#
# For commands used in tcl script,
# see pages 92, 93, 129, 169, 216, 889, 890, 316, 317, 108, 109 
#
# For argument enableSV12 used with the set_option command in tcl script,
# see SpyGlass Explorer User Guide, Version U-2023.03
# SpyGlass_Explorer_UserGuide.pdf page 852
#
${OUTDIR}/%.spyglass_lint.stdout: testcases/%.sv | ${OUTDIR}
	mkdir -p ${SPYGLASS_WORK_DIR}
	sg_shell < tcl/spyglass_batch_run.tcl ${REDIRECT}
