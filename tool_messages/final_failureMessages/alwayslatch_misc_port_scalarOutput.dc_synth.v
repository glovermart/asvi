/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:44:27 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1.o_a , \p1.i_a , \p1.i_en  );
  input \p1.i_a , \p1.i_en ;
  output \p1.o_a ;


  LD1 \p1.o_a_reg  ( .G(\p1.i_en ), .D(\p1.i_a ), .Q(\p1.o_a ) );
endmodule

