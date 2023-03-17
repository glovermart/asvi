set path [pwd]
new_project -name "precision_runs" -folder "out/" -createimpl -createimpl_name prn_run -force
setup_design -hdl SystemVerilog2012
add_input_file $path/$argv
puts $path/$argv
remove_design -designs
remove_input_file -all
