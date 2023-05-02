`default_nettype none
module tb;
  timeunit 1ns;
  timeprecision 1ps;
  logic i_clk;
  logic i_srst;
  logic i_arst;
  logic en;
  logic [7:0] o_a;
  logic [7:0] o_b;
  logic [7:0] o_c;
  parameter clk_period = 2;
  parameter sim_end = clk_period*5;
  always #clk_period  i_clk = ~i_clk;
  
  top u_DUT (.*);
  
  initial begin: l_tb_initial
    $info("Simulation started.");
    i_clk <= 0;
    en <= 1;
    i_arst <= 1;
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    $display("value of o_b is %0b",o_b);
    $display("value of o_c is %0b",o_c);
    repeat (2)
    @ (posedge i_clk);
    i_arst <= 0;
    repeat (4)
    @ (posedge i_clk);
    i_arst <= 1;
    repeat (2)
    @ (posedge i_clk);    
    i_arst <= 0;
    repeat (2)
    @ (posedge i_clk);    
    en <= 0;
    #sim_end
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    $display("value of o_b is %0b",o_b);
    $display("value of o_c is %0b",o_c);
    $finish;
  end: l_tb_initial
endmodule
