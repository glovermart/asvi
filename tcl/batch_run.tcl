set_option enableSV yes
read_file testcases/force_port.sv
current_goal lint/lint_rtl -alltop
run_goal
