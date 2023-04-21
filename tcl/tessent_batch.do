set_tcl_shell_options -abort_dofile_on_error exit
array set params {
  netlist ""
}
array set params $tessent_user_arg

#Insert Scan chain procedure
set_context dft -scan -hierarchical_scan_insertion
#read_cell_library
read_verilog $params(netlist)
set_current_design top
add_black_boxes -auto
#add_clocks 0 i_clk
report_clocks
set_test_logic -clock on -reset on
report_environment
set_system_mode analysis
set_scan_insertion_options -chain_count 10
analyze_scan_chains
insert_test_logic
report_scan_chains
report_test_logic
write_design -output $params(netlist).scan.v
write_atpg_setup $params(netlist).atpg.v

#Perform ATPG
#set_context patterns -scan
#read_cell_library [insert library name]
#read_verilog $params(netlist)
#dofile
#set_system_mode analysis
#set_fault_type stuck
#create_patterns -auto
#report_statistics

exit -force
