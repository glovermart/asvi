set_option enableSV yes
read_file testcases/force_inst.sv
current_goal lint/lint_rtl -alltop
run_goal
