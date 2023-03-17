set path [pwd]
new_project -name "precision_runs" -folder "out/" -createimpl -createimpl_name prn_run -force
setup_design -hdl SystemVerilog2012
setup_design -manufacturer Xilinx -family VIRTEX-5 -part 5VLX30FF324 -speed -3
setup_design -max_fanout=1000
add_input_file $path/$argv
compile
remove_design -designs
remove_input_file -all
