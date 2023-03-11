new_project spyG_lint -projectwdir spyglass -force
set_option enableSV yes
set_option sfcu yes
read_file {testcases/*.sv}
current_goal lint/lint_rtl -alltop
run_goal
capture out/spyglass_lint.rpt {write_report moresimple}
exit -force
