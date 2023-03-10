set_option enableSV yes
read_file testcases/test1.sv
current_goal lint/lint_rtl -top add_mult
run_goal
