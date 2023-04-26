global env
set TEST_NAME $env(TESTCASE)
read_file -format sverilog -top top ${TEST_NAME}
check_fv_setup
report_fv_setup -list
quit
