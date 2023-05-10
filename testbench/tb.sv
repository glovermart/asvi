`default_nettype none
module tb;
  logic o_a [7:0];
  logic i_clk;
  logic i_a;
  logic en;

  parameter clk_period = 2;
  parameter sim_end = clk_period*5;
  always #clk_period i_clk = ~ i_clk;

  top u_DUT(.*);
  
  initial begin: l_tb_initial
    $info("Simulation started.");
    i_clk <= 0;
    i_a <= 0;
    en <= 1;
    $display("output values at time %0t",$time);
    $display("value of o_a is %0p",o_a); /* Use assignment pattern format %p
    since the data type is unpacked: LRM 21.2.1.7 */
    @ (posedge i_clk);
    $display("output values at time %0t",$time);
    $display("value of o_a is %0p",o_a);       
    @ (posedge i_clk);
    en <= 0;
    @ (posedge i_clk);
    $display("output values at time %0t",$time);
    $display("value of o_a is %0p",o_a);
    @ (posedge i_clk);
    i_a <= 1;
    #sim_end
    $display("output values at time %0t",$time);
    $display("value of o_a is %0p",o_a);    
    $finish;
  end: l_tb_initial
endmodule
