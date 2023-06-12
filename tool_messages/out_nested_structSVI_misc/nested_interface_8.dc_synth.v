/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Mon Jun 12 04:19:38 2023
/////////////////////////////////////////////////////////////


module M ( \p.x , \u_I.y , i_clk, i_a, o_a );
  input \p.x , i_clk, i_a;
  output o_a;
  inout \u_I.y ;

  tri   i_a;
  tran( i_a, \u_I.y );

  FD1S o_a_reg ( .D(\p.x ), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a) );
endmodule

