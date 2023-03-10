include mk/common.mk

default: lint
	mkdir -p ${SPYWkDIR}
	spyglass -shell -tcl tcl/batch_run.tcl
.PHONY: lint
