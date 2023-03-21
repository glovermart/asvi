
# All generated files should go under a single directory.
OUTDIR := out
QWORKDIR := work
SPYWkDIR := spyglass
TESTCASES := $(wildcard testcases/*.sv)
TESTCASE_NAMES := $(basename $(notdir ${TESTCASES}))

.PHONY: default
default:

.PHONY: clean
clean:
	rm -rf ${OUTDIR}
	rm -rf ${QWORKDIR}
	rm -rf ${SPYWkDIR}
	rm -f command.log
	rm -f default.svf
	rm -rf simv.da*
	rm -f *.psp
	rm -rf impl_*
	rm -rf rc.*
	rm -f sg_shell.log
	rm -rf xcelium.d
	rm -f xmsim.log
	rm -f xmelab.log
