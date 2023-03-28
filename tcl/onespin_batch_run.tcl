global env
set TEST_NAME $env(TESTCASE)
set TEST_REPORT $env(TESTCASE_REPORT)
start_message_log -append ${TEST_REPORT}
read_verilog -version sv2012 ${TEST_NAME}
elaborate
compile
report_message_statistics
exit -force
