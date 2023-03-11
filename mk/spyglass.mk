include mk/common.mk

default: lint
	mkdir -p ${SPYWkDIR}
	mkdir -p ${OUTDIR}
	spyglass -shell -tcl tcl/sg_batch_run.tcl
.PHONY: lint
