/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:10:02 2023
/////////////////////////////////////////////////////////////


module top ( o_q, i_clk, i_srst );
  output [3:0] o_q;
  input i_clk, i_srst;
  wire   N0, n6;

  FD1S \u_I.o_q_reg[0]  ( .D(N0), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_q[0])
         );
  FD1S \u_I.o_q_reg[1]  ( .D(o_q[0]), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        o_q[1]) );
  FD1S \u_I.o_q_reg[2]  ( .D(o_q[1]), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        o_q[2]) );
  FD1S \u_I.o_q_reg[3]  ( .D(o_q[2]), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        o_q[3]), .QN(n6) );
  AN2 U9 ( .A(i_srst), .B(n6), .Z(N0) );
endmodule

