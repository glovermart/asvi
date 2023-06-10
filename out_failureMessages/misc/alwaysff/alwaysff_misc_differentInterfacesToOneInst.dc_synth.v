/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:18:27 2023
/////////////////////////////////////////////////////////////


module M1 ( \u_I1.i_clk , \u_I1.i_srst , \u_I1.i_arst , \u_I1.z , \u_I1.y , 
        \u_I1.x  );
  input \u_I1.i_clk , \u_I1.i_srst , \u_I1.i_arst ;
  inout \u_I1.z ,  \u_I1.y ,  \u_I1.x ;

  tri   \u_I1.z ;
  tri   \u_I1.y ;
  tri   \u_I1.x ;

  FD1S \u_I1.z_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(\u_I1.i_clk ), .Q(
        \u_I1.z ) );
  FD1S \u_I1.y_reg  ( .D(1'b1), .TI(1'b0), .TE(1'b0), .CP(\u_I1.i_clk ), .Q(
        \u_I1.y ) );
  FD1S \u_I1.x_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(\u_I1.i_clk ), .Q(
        \u_I1.x ) );
endmodule

