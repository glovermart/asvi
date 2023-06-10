/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:12:16 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1.o_a , \p1.i_a , \p1.i_en  );
  input \p1.i_a , \p1.i_en ;
  output \p1.o_a ;


  LD1 \p1.o_a_reg  ( .G(\p1.i_en ), .D(\p1.i_a ), .Q(\p1.o_a ) );
endmodule

