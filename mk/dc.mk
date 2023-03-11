include mk/common.mk

default: read
	mkdir out
	dc_shell -f tcl/dc_batch_run.tcl
.PHONY: read
