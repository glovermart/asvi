/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:58:13 2023
/////////////////////////////////////////////////////////////


module M1 ( \u_I.y , \u_I.z , i_en );
  input i_en;
  inout \u_I.y ,  \u_I.z ;

  tri   \u_I.y ;

  LD1 \u_I.y_reg  ( .G(i_en), .D(1'b1), .Q(\u_I.y ) );
endmodule

