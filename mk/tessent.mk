include mk/common.mk
#Load the Tessent DFT tool.
#module load mentor/tessent/2022.4

#Load Design Compiler
#module load synopsys/syn/2212-sp2

default: scan

.PHONY: scan
scan: $(addprefix ${OUTDIR}/,\
	$(addsuffix .tessent_scan.stdout,${TESTCASE_NAMES}))

#See Design Compile User GUide Version P-2019.03,March 2019
#Pages 551, 369, 460, 408; 474
#-scan:Perform test-ready compile
#Replaces flip-flops with flip-flops that contain testability logic
#Used with -incremental to optimize can chains
#Pages 349, 484
#-incremental:Perform incremental compile
#Optimize post synthesis flow(e.g retiming, and DFT) with minor netlist edits
#Pages 186, 187, 189, 72, 
#-format: Specify file format for generated top-level synthesiszed netlist
#-hierarchy: Save the entire design including top-level design
#-output: Specify filename for netlist

${OUTDIR}/%_syn.v: testcases/%.sv | ${OUTDIR}
	-dc_shell  -x "read_sverilog $^;compile -scan;insert_dft;\
		compile -incremental -scan;\
		write_file -format verilog -hierarchy -output $@;quit" >> $@.txt
#See tessent Shell Reference Manual, version 2023.1
#Pages 91, 92
#-shell: Invoke Tessent shell in command0 line mode
#-dofile: Specify do file to be run on invokation of tessent tool
#-Arguments: Specify variables for use in do file

#See tessent Shell Reference Manual, version 2023.1 for tcl/dofile commands

${OUTDIR}/%.tessent_scan.stdout: ${OUTDIR}/%_syn.v
	-tessent -shell -dofile tcl/tessent_batch.do -Arguments netlist=$^ ${REDIRECT}
