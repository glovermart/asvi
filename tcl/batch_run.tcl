new_project spyG_lint -projectwdir out -force
set_option enableSV yes
read_file testcases/*.sv
current_goal lint/lint_rtl -alltop
run_goal
exit -force
