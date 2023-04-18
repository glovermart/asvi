global env
set TESTNAME $env(TESTCASE)
new_project spyglass_lint -projectwdir spyglass -force
set_option enableSV12 yes
read_file ${TESTNAME}
current_goal lint/lint_rtl_enhanced -top top
run_goal
write_report moresimple
exit -force
