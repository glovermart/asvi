/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:07:58 2023
/////////////////////////////////////////////////////////////


module top ( i_clk, o_a );
  output [7:0] o_a;
  input i_clk;

  assign o_a[7] = 1'b1;
  assign o_a[6] = 1'b1;
  assign o_a[5] = 1'b1;
  assign o_a[4] = 1'b1;
  assign o_a[3] = 1'b1;
  assign o_a[2] = 1'b1;
  assign o_a[1] = 1'b1;
  assign o_a[0] = 1'b1;

endmodule

