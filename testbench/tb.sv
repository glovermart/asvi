`default_nettype none
module tb;
  logic i_clk;
  logic i_a;
  logic i_b;
  logic i_c;
  logic [7:0] o_a;
  logic [7:0] o_b;
  logic [7:0] o_c;
  parameter clk_period = 50;
  always #clk_period  i_clk = ~i_clk;
  
  top u_DUT (.*);
  
  initial begin: l_tb_initial
    $info("Simulation started.");
    i_clk <= 0;
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    $display("value of o_b is %0b",o_b);
    $display("value of o_c is %0b",o_c);
    #clk_period 
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    $display("value of o_b is %0b",o_b);
    $display("value of o_c is %0b",o_c);
    $finish;
  end: l_tb_initial
endmodule
