set_tcl_shell_options -abort_dofile_on_error exit
array set params {
  netlist ""
}
array set params $tessent_user_arg

#Perform Automatic Test Pattern Generation (ATPG)

#Invoke the Tessent tool for pattern generation
set_context patterns -scan
#Read in library for mapping cells to design components
#Location of cell library unknown - ATPG run without library
#read_cell_library [insert library name]

#Load synthesized netlist with scan chain already inserted.
read_verilog $params(netlist)
#Specify the design top
set_current_design top
#add_black_boxes used here to suppress errors due to blackboxes
#generated;possibly from  no cells in use or unconnected nets
#in synthesized netlist
add_black_boxes -auto
#Set Tessent shell to analysis mode
set_system_mode analysis
#Specify the fault model
set_fault_type stuck
#Generate test patterns
create_patterns -auto
#Print statistics fault test using the patterns generated
report_statistics
#Print faults/fault location in DUT
report_faults -all

exit -force
