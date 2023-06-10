/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:16:39 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1[7].y , \p1[6].y , \p1[5].y , \p1[4].y , \p1[3].y , \p1[2].y , 
        \p1[1].y , \p1[0].y , o_a, en, i_arst );
  output [7:0] o_a;
  input en, i_arst;
  output \p1[7].y , \p1[6].y , \p1[5].y , \p1[4].y , \p1[3].y , \p1[2].y ,
         \p1[1].y , \p1[0].y ;
  wire   N4, N5, n2;
  assign \p1[7].y  = o_a[7];
  assign \p1[6].y  = o_a[6];
  assign \p1[5].y  = o_a[5];
  assign \p1[4].y  = o_a[4];
  assign \p1[3].y  = o_a[3];
  assign \p1[2].y  = o_a[2];
  assign \p1[1].y  = o_a[1];
  assign \p1[0].y  = o_a[0];

  LD1 \p1[2].y_reg  ( .G(N4), .D(N5), .Q(o_a[2]) );
  LD1 \p1[3].y_reg  ( .G(N4), .D(N5), .Q(o_a[3]) );
  LD1 \p1[4].y_reg  ( .G(N4), .D(N5), .Q(o_a[4]) );
  LD1 \p1[5].y_reg  ( .G(N4), .D(N5), .Q(o_a[5]) );
  LD1 \p1[6].y_reg  ( .G(N4), .D(N5), .Q(o_a[6]) );
  LD1 \p1[7].y_reg  ( .G(N4), .D(N5), .Q(o_a[7]) );
  LD1 \p1[0].y_reg  ( .G(N4), .D(N5), .Q(o_a[0]) );
  AN2 U6 ( .A(en), .B(i_arst), .Z(N5) );
  ND2 U7 ( .A(i_arst), .B(n2), .Z(N4) );
  IV U8 ( .A(en), .Z(n2) );
  LD1 \p1[1].y_reg  ( .G(N4), .D(N5), .Q(o_a[1]) );
endmodule

