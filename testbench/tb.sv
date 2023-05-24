`default_nettype none
module tb;
//  timeunit 1ns;
//  timeprecision 1ps;

/*timescale keywords commented to avoid parse error from yosys and not replicating these keywords
in design modules and interfaces.*/
  
  logic i_clk;
  logic i_srst;
  logic i_arst;
  logic en;
  logic i_a;
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
    i_a <= '0;
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    repeat (9)
    @ (posedge i_clk);
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);   
    repeat (4)
    @ (posedge i_clk);
    en  <= 0;
    repeat (9)
    @ (posedge i_clk);    
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);    
    repeat (9)
    @ (posedge i_clk);    
    en <= 0;
    i_a <= '1;
    #sim_end
    $display("output values at time %0t",$time);
    $display("value of o_a is %0b",o_a);
    $finish;
  end: l_tb_initial
endmodule
