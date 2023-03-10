set_option enableSV yes
read_file testcases/alwayscomb_port.sv
current_goal lint/lint_rtl -alltop
capture -stdout -stderr -append out/report.log {run_goal}
