
# All generated files should go under a single directory.
OUTDIR := out
QWORKDIR := work
TESTCASES := $(wildcard testcases/*.sv)
TESTCASE_NAMES := $(basename $(notdir ${TESTCASES}))

.PHONY: default
default:

.PHONY: clean
clean:
	rm -rf ${OUTDIR}
	rm -rf ${QWORKDIR}

