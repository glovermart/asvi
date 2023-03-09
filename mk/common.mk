
# All generated files should go under a single directory.
OUTDIR := out
QWORKDIR := work
SPYWkDIR := spyglass-1
TESTCASES := $(wildcard testcases/*.sv)
TESTCASE_NAMES := $(basename $(notdir ${TESTCASES}))

.PHONY: default
default:

.PHONY: clean
clean:
	rm -rf ${OUTDIR}
	rm -rf ${QWORKDIR}
	rm -rf ${SPYWkDIR}
	rm -f gui_command.log
	rm -f sg_shell_command.log
	rm -f spyglass.out

