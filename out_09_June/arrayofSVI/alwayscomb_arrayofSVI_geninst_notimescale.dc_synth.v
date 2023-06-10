/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:00:18 2023
/////////////////////////////////////////////////////////////


module M ( \u_I.x , \u_I.y , i_clk, o_a, o_b );
  input i_clk;
  output o_a, o_b;
  inout \u_I.x ,  \u_I.y ;

  tri   \u_I.x ;
  tri   \u_I.y ;

  FD1S o_a_reg ( .D(\u_I.x ), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a) );
  FD1S o_b_reg ( .D(\u_I.y ), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_b) );
endmodule

