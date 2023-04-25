include mk/common.mk

default: read

.PHONY: read

read: $(addprefix ${OUTDIR}/,$(addsuffix .yosys_read.stdout,${TESTCASE_NAMES}))
# See Yosys Manual, Version 2023
#  Pages 157, 281, 89, 232, 207, and 313
# -q: Suppress yosys invocation message on start-up; do not print output.
# -p: Specify yosys commands on the command line.
# -sv: Enable support for SystemVeerilog features.
# -top: Specify top module.
#
# https://yosyshq.net/yosys/about.html

${OUTDIR}/%.yosys_read.stdout: testcases/%.sv | ${OUTDIR}
	-yosys -q -p "read_verilog -sv $^; synth -top top; write_verilog $@_synth.v" ${REDIRECT}
