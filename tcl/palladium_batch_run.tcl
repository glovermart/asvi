global env
set TEST_NAME $env(TESTCASE)

#See UXE Command Reference Manual, Version 17.5 (uxecmdref.pdf)
#Pages 179, 174, 176, 184, 185, 189, 190, 192 

hdlInputFile ${TEST_NAME}
#-sv: Enable recognition of SystemVerilog keywords/ features
hdlImport -sv
#-add -f: Writes the synthesized file in some file format
hdlOutputFIle -add -f verilog ${TEST_NAME}_palladium_synth.v
#-dontStopOnError: Continue with sythesis when errors are detected
#-append: Append new output to an existing file
hdlSynthesize -dontStopOnError -append top
