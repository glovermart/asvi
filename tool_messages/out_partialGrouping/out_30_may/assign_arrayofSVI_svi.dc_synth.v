/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:06:34 2023
/////////////////////////////////////////////////////////////


module top ( i_a, o_a, o_b );
  output [7:0] o_a;
  output [7:0] o_b;
  input i_a;
  wire   \o_b[7] ;
  assign o_b[0] = \o_b[7] ;
  assign o_b[1] = \o_b[7] ;
  assign o_b[2] = \o_b[7] ;
  assign o_b[3] = \o_b[7] ;
  assign o_b[4] = \o_b[7] ;
  assign o_b[5] = \o_b[7] ;
  assign o_b[6] = \o_b[7] ;
  assign o_b[7] = \o_b[7] ;
  assign \o_b[7]  = i_a;

endmodule

