/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:04:36 2023
/////////////////////////////////////////////////////////////


module M1 ( \u_I1.z , \u_I1.y , \u_I1.x  );
  inout \u_I1.z ,  \u_I1.y ,  \u_I1.x ;

  tri   \*Logic1* ;
  tri   \*Logic0* ;
  assign \u_I1.y  = 1'b1;
  assign \u_I1.z  = 1'b0;

endmodule

