global env
set TEST_NAME $env(TESTCASE)
set TEST_REPORT $env(TESTCASE_REPORT)
new_project spyglass_lint -projectwdir spyglass -force
set_option enableSV yes
set_option sfcu yes
read_file ${TEST_NAME}
current_goal lint/lint_rtl -alltop
run_goal
capture ${TEST_REPORT} {write_report moresimple}
exit -force
