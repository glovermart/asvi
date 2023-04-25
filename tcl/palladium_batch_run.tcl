global env
set TEST_NAME $env(TESTCASE)
set TESTCASE_NAME $env(TESTCASE_NAME_NO_DIR)

#See UXE Command Reference Manual, Version 17.5 (uxecmdref.pdf)
#Pages 179, 174, 177, 176, 184, 185, 189, 190, 192 

hdlInputFile ${TEST_NAME}

#-sv: Enable recognition of SystemVerilog keywords/ features.
#-atb: Enable synthesis of force, release, and other contructs
#that are otherwise 'non-sythesizable'
#(See UXE User Guide Version 17.5,page 155).
hdlImport -sv -atb

#-add -f: Writes the synthesized file in some file format.
hdlOutputFile -add -f verilog out/${TESTCASE_NAME}.palladium_synth.v

#-dontStopOnError: Continue with sythesis when errors are detected.
#-append: Append new output to an existing file.
hdlSynthesize -dontStopOnError -append top
