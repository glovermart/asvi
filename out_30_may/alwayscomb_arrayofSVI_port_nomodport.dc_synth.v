/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:11:44 2023
/////////////////////////////////////////////////////////////


module M ( \ifc_I[7].x , \ifc_I[7].y , \ifc_I[7].z , \ifc_I[6].x , 
        \ifc_I[6].y , \ifc_I[6].z , \ifc_I[5].x , \ifc_I[5].y , \ifc_I[5].z , 
        \ifc_I[4].x , \ifc_I[4].y , \ifc_I[4].z , \ifc_I[3].x , \ifc_I[3].y , 
        \ifc_I[3].z , \ifc_I[2].x , \ifc_I[2].y , \ifc_I[2].z , \ifc_I[1].x , 
        \ifc_I[1].y , \ifc_I[1].z , \ifc_I[0].x , \ifc_I[0].y , \ifc_I[0].z 
 );
  inout \ifc_I[7].x ,  \ifc_I[7].y ,  \ifc_I[7].z ,  \ifc_I[6].x , 
     \ifc_I[6].y ,  \ifc_I[6].z ,  \ifc_I[5].x ,  \ifc_I[5].y ,  \ifc_I[5].z , 
     \ifc_I[4].x ,  \ifc_I[4].y ,  \ifc_I[4].z ,  \ifc_I[3].x ,  \ifc_I[3].y , 
     \ifc_I[3].z ,  \ifc_I[2].x ,  \ifc_I[2].y ,  \ifc_I[2].z ,  \ifc_I[1].x , 
     \ifc_I[1].y ,  \ifc_I[1].z ,  \ifc_I[0].x ,  \ifc_I[0].y ,  \ifc_I[0].z ;

  tri   \*Logic1* ;
  tri   \*Logic0* ;
  tri   \ifc_I[0].z ;
  assign \ifc_I[0].y  = 1'b1;
  assign \ifc_I[1].y  = 1'b1;
  assign \ifc_I[2].y  = 1'b1;
  assign \ifc_I[3].y  = 1'b1;
  assign \ifc_I[4].y  = 1'b1;
  assign \ifc_I[5].y  = 1'b1;
  assign \ifc_I[6].y  = 1'b1;
  assign \ifc_I[7].y  = 1'b1;
  assign \ifc_I[0].x  = 1'b0;
  assign \ifc_I[1].x  = 1'b0;
  assign \ifc_I[2].x  = 1'b0;
  assign \ifc_I[3].x  = 1'b0;
  assign \ifc_I[4].x  = 1'b0;
  assign \ifc_I[5].x  = 1'b0;
  assign \ifc_I[6].x  = 1'b0;
  assign \ifc_I[7].x  = 1'b0;
  tran( \ifc_I[0].z , \ifc_I[1].z );
  tran( \ifc_I[0].z , \ifc_I[2].z );
  tran( \ifc_I[0].z , \ifc_I[3].z );
  tran( \ifc_I[0].z , \ifc_I[4].z );
  tran( \ifc_I[0].z , \ifc_I[5].z );
  tran( \ifc_I[0].z , \ifc_I[6].z );
  tran( \ifc_I[0].z , \ifc_I[7].z );

endmodule

