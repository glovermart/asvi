/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:13:44 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1.o_a , \p1.i_a , \p1.i_en  );
  output [3:0] \p1.o_a ;
  input \p1.i_a , \p1.i_en ;


  LD1 \p1.o_a_reg[0]  ( .G(\p1.i_en ), .D(\p1.i_a ), .Q(\p1.o_a [0]) );
endmodule

