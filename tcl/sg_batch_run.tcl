global env
set TEST_NAME $env(T_CASE)
new_project spyG_lint -projectwdir spyglass -force
set_option enableSV yes
set_option sfcu yes
read_file ${TEST_NAME}
current_goal lint/lint_rtl -alltop
run_goal
capture out/spyglass_lint.rpt {write_report moresimple}
exit -force
