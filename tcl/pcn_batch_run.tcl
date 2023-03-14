new_project -name "precision_runs" -folder "out" -createimpl -createimpl_name prn_run -force
setup_design -hdl SystemVerilog2012
add_input_file testcases/test1.sv
remove_design -designs
remove_input_file -all
exit -force
