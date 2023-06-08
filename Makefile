include mk/common.mk

# Mostly ordered by function, but slowest runs last.
# Spyglass: ~0.5 minute per testcase.
# Vivado: ~1 minute per testcase.
default:
	make -f mk/verilator.mk
	make -f mk/yosys.mk
	make -f mk/svlint.mk
	make -f mk/icarus.mk
	make -f mk/xcelium.mk
	make -f mk/questa.mk
	make -f mk/dc.mk
	make -f mk/precision.mk
	make -f mk/palladium.mk
	make -f mk/formality.mk
	make -f mk/vcformal.mk
	make -f mk/onespin.mk
	make -f mk/tessent.mk
	make -f mk/spyglass.mk
	make -f mk/vivado.mk
