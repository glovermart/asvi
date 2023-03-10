include mk/common.mk

default: lint
	mkdir -p ${OUTDIR}
	spyglass -shell -tcl tcl/batch_run.tcl
.PHONY: lint
