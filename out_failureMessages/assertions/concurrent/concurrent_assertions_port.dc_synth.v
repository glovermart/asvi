/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 10:39:15 2023
/////////////////////////////////////////////////////////////


module M ( \p.i_clk , \p.i_srst , o_q );
  output [3:0] o_q;
  input \p.i_clk , \p.i_srst ;
  wire   N0, n6;

  FD1S \o_q_reg[0]  ( .D(N0), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), .Q(o_q[0])
         );
  FD1S \o_q_reg[1]  ( .D(o_q[0]), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), .Q(
        o_q[1]) );
  FD1S \o_q_reg[2]  ( .D(o_q[1]), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), .Q(
        o_q[2]) );
  FD1S \o_q_reg[3]  ( .D(o_q[2]), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), .Q(
        o_q[3]), .QN(n6) );
  AN2 U9 ( .A(\p.i_srst ), .B(n6), .Z(N0) );
endmodule

