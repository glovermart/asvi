/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:31:02 2023
/////////////////////////////////////////////////////////////


module M ( \u_I[7].x , \u_I[7].y , \u_I[7].z , \u_I[6].x , \u_I[6].y , 
        \u_I[6].z , \u_I[5].x , \u_I[5].y , \u_I[5].z , \u_I[4].x , \u_I[4].y , 
        \u_I[4].z , \u_I[3].x , \u_I[3].y , \u_I[3].z , \u_I[2].x , \u_I[2].y , 
        \u_I[2].z , \u_I[1].x , \u_I[1].y , \u_I[1].z , \u_I[0].x , \u_I[0].y , 
        \u_I[0].z , i_a );
  input i_a;
  inout \u_I[7].x ,  \u_I[7].y ,  \u_I[7].z ,  \u_I[6].x ,  \u_I[6].y , 
     \u_I[6].z ,  \u_I[5].x ,  \u_I[5].y ,  \u_I[5].z ,  \u_I[4].x , 
     \u_I[4].y ,  \u_I[4].z ,  \u_I[3].x ,  \u_I[3].y ,  \u_I[3].z , 
     \u_I[2].x ,  \u_I[2].y ,  \u_I[2].z ,  \u_I[1].x ,  \u_I[1].y , 
     \u_I[1].z ,  \u_I[0].x ,  \u_I[0].y ,  \u_I[0].z ;

  tri   \*Logic1* ;
  tri   \*Logic0* ;
  tri   i_a;
  assign \u_I[0].y  = 1'b1;
  assign \u_I[1].y  = 1'b1;
  assign \u_I[2].y  = 1'b1;
  assign \u_I[3].y  = 1'b1;
  assign \u_I[4].y  = 1'b1;
  assign \u_I[5].y  = 1'b1;
  assign \u_I[6].y  = 1'b1;
  assign \u_I[7].y  = 1'b1;
  assign \u_I[0].x  = 1'b0;
  assign \u_I[1].x  = 1'b0;
  assign \u_I[2].x  = 1'b0;
  assign \u_I[3].x  = 1'b0;
  assign \u_I[4].x  = 1'b0;
  assign \u_I[5].x  = 1'b0;
  assign \u_I[6].x  = 1'b0;
  assign \u_I[7].x  = 1'b0;
  tran( i_a, \u_I[0].z );
  tran( i_a, \u_I[1].z );
  tran( i_a, \u_I[2].z );
  tran( i_a, \u_I[3].z );
  tran( i_a, \u_I[4].z );
  tran( i_a, \u_I[5].z );
  tran( i_a, \u_I[6].z );
  tran( i_a, \u_I[7].z );

endmodule

