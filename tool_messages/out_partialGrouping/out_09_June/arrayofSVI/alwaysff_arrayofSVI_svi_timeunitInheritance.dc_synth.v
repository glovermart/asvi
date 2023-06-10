/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 10:58:04 2023
/////////////////////////////////////////////////////////////


module top ( i_clk, o_a, o_b, o_c );
  output [7:0] o_a;
  output [7:0] o_b;
  output [7:0] o_c;
  input i_clk;

  assign o_a[7] = 1'b1;
  assign o_a[6] = 1'b1;
  assign o_a[5] = 1'b1;
  assign o_a[4] = 1'b1;
  assign o_a[3] = 1'b1;
  assign o_a[2] = 1'b1;
  assign o_a[1] = 1'b1;
  assign o_a[0] = 1'b1;
  assign o_b[7] = 1'b0;
  assign o_b[6] = 1'b0;
  assign o_b[5] = 1'b0;
  assign o_b[4] = 1'b0;
  assign o_b[3] = 1'b0;
  assign o_b[2] = 1'b0;
  assign o_b[1] = 1'b0;
  assign o_b[0] = 1'b0;
  assign o_c[7] = 1'b1;
  assign o_c[6] = 1'b1;
  assign o_c[5] = 1'b1;
  assign o_c[4] = 1'b1;
  assign o_c[3] = 1'b1;
  assign o_c[2] = 1'b1;
  assign o_c[1] = 1'b1;
  assign o_c[0] = 1'b1;

endmodule

