global env
set TEST_NAME $env(TESTCASE)
read_verilog -version sv2012 ${TEST_NAME}
elaborate
compile
report_message_statistics
exit -force
