global env
set TEST_NAME $env(TESTCASE)
set TEST_REPORT $env(TESTCASE_REPORT)
read_file -format sverilog -top top ${TEST_NAME} >> ${TEST_REPORT}
quit
