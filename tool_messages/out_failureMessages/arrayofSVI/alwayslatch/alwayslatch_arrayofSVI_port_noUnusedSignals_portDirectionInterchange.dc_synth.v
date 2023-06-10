/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:19:47 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1[7].y , \p1[6].y , \p1[5].y , \p1[4].y , \p1[3].y , \p1[2].y , 
        \p1[1].y , \p1[0].y , o_a, en, i_arst );
  output [7:0] o_a;
  output \p1[7].y , \p1[6].y , \p1[5].y , \p1[4].y , \p1[3].y , \p1[2].y ,
         \p1[1].y , \p1[0].y , en, i_arst;

  assign o_a[7] = 1'b0;
  assign \p1[7].y  = 1'b0;
  assign o_a[6] = 1'b0;
  assign \p1[6].y  = 1'b0;
  assign o_a[5] = 1'b0;
  assign \p1[5].y  = 1'b0;
  assign o_a[4] = 1'b0;
  assign \p1[4].y  = 1'b0;
  assign o_a[3] = 1'b0;
  assign \p1[3].y  = 1'b0;
  assign o_a[2] = 1'b0;
  assign \p1[2].y  = 1'b0;
  assign o_a[1] = 1'b0;
  assign \p1[1].y  = 1'b0;
  assign o_a[0] = 1'b0;
  assign \p1[0].y  = 1'b0;

endmodule

