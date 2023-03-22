set path [pwd]
new_project -name "precision_runs" -folder "out/" -createimpl -createimpl_name prn_run -force
setup_design -hdl SystemVerilog2012
setup_design -manufacturer Xilinx -family KINTEX-7 -part 7K70TFBG676 -speed -1
setup_design -max_fanout=1000
add_input_file $path/$argv
compile
synthesize
remove_design -designs
remove_input_file -all
