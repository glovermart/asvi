`default_nettype none
module tb;
  logic [7:0] o_a;
  logic clk;
  logic i_a;
  always #2 clk = ~ clk;
  top u_DUT(.*);
  initial begin: l_tb_initial
    $info("Simulation started.");
    clk <= 0;
    i_a <= 1;
    $display("The output is %b", o_a);
    repeat (15)
    @ (posedge clk);
    $display("The output is now %b", o_a);
    $finish;
  end: l_tb_initial
endmodule
