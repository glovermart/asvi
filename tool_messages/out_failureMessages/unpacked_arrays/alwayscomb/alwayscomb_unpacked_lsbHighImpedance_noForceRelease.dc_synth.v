/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:19:00 2023
/////////////////////////////////////////////////////////////


module top ( i_a, i_en, o_a );
  output [7:0] o_a;
  input i_a, i_en;
  wire   \o_a[7] , n1;
  tri   \o_a[3] ;
  tri   \o_a[2] ;
  tri   \o_a[1] ;
  tri   \o_a[0] ;
  assign o_a[4] = \o_a[7] ;
  assign o_a[5] = \o_a[7] ;
  assign o_a[6] = \o_a[7] ;
  assign o_a[7] = \o_a[7] ;
  assign \o_a[7]  = i_a;

  BTS4 \u_I.x_tri[0]  ( .A(\o_a[7] ), .E(n1), .Z(o_a[0]) );
  BTS4 \u_I.x_tri[1]  ( .A(\o_a[7] ), .E(n1), .Z(o_a[1]) );
  BTS4 \u_I.x_tri[2]  ( .A(\o_a[7] ), .E(n1), .Z(o_a[2]) );
  BTS4 \u_I.x_tri[3]  ( .A(\o_a[7] ), .E(n1), .Z(o_a[3]) );
  IV U2 ( .A(i_en), .Z(n1) );
endmodule

