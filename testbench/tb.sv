`default_nettype none
module tb;
  timeunit 1ns; 
  timeprecision 1ps;
  top u_DUT();
  initial begin: l_tb_initial
    $info("Simulation started.");
    $finish;
  end: l_tb_initial
endmodule
