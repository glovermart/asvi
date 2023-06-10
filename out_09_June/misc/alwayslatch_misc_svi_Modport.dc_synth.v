/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:04:32 2023
/////////////////////////////////////////////////////////////


module M1 ( \u_I.i_clk , \u_I.i_en , \u_I.i_a , \u_I.o_a , \u_I.x  );
  input [3:0] \u_I.i_a ;
  output [3:0] \u_I.o_a ;
  inout [3:0] \u_I.x ;
  input \u_I.i_clk , \u_I.i_en ;

  tri   \u_I.x[0] ;

  FD1S \u_I.o_a_reg[3]  ( .D(\u_I.x [0]), .TI(1'b0), .TE(1'b0), .CP(
        \u_I.i_clk ), .Q(\u_I.o_a [3]) );
endmodule

