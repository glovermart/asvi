include mk/common.mk

default: lint
	spyglass -shell -tcl tcl/batch_run.tcl
.PHONY: lint
