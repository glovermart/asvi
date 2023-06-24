/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:17:36 2023
/////////////////////////////////////////////////////////////


module M ( \u_I[7].i_arst , \u_I[7].en , \u_I[7].i_a , \u_I[7].o_a , 
        \u_I[7].o_b , \u_I[7].y , \u_I[7].z , \u_I[6].i_arst , \u_I[6].en , 
        \u_I[6].i_a , \u_I[6].o_a , \u_I[6].o_b , \u_I[6].y , \u_I[6].z , 
        \u_I[5].i_arst , \u_I[5].en , \u_I[5].i_a , \u_I[5].o_a , \u_I[5].o_b , 
        \u_I[5].y , \u_I[5].z , \u_I[4].i_arst , \u_I[4].en , \u_I[4].i_a , 
        \u_I[4].o_a , \u_I[4].o_b , \u_I[4].y , \u_I[4].z , \u_I[3].i_arst , 
        \u_I[3].en , \u_I[3].i_a , \u_I[3].o_a , \u_I[3].o_b , \u_I[3].y , 
        \u_I[3].z , \u_I[2].i_arst , \u_I[2].en , \u_I[2].i_a , \u_I[2].o_a , 
        \u_I[2].o_b , \u_I[2].y , \u_I[2].z , \u_I[1].i_arst , \u_I[1].en , 
        \u_I[1].i_a , \u_I[1].o_a , \u_I[1].o_b , \u_I[1].y , \u_I[1].z , 
        \u_I[0].i_arst , \u_I[0].en , \u_I[0].i_a , \u_I[0].o_a , \u_I[0].o_b , 
        \u_I[0].y , \u_I[0].z  );
  input \u_I[7].i_arst , \u_I[7].en , \u_I[7].i_a , \u_I[6].i_arst ,
         \u_I[6].en , \u_I[6].i_a , \u_I[5].i_arst , \u_I[5].en , \u_I[5].i_a ,
         \u_I[4].i_arst , \u_I[4].en , \u_I[4].i_a , \u_I[3].i_arst ,
         \u_I[3].en , \u_I[3].i_a , \u_I[2].i_arst , \u_I[2].en , \u_I[2].i_a ,
         \u_I[1].i_arst , \u_I[1].en , \u_I[1].i_a , \u_I[0].i_arst ,
         \u_I[0].en , \u_I[0].i_a ;
  output \u_I[7].o_a , \u_I[7].o_b , \u_I[6].o_a , \u_I[6].o_b , \u_I[5].o_a ,
         \u_I[5].o_b , \u_I[4].o_a , \u_I[4].o_b , \u_I[3].o_a , \u_I[3].o_b ,
         \u_I[2].o_a , \u_I[2].o_b , \u_I[1].o_a , \u_I[1].o_b , \u_I[0].o_a ,
         \u_I[0].o_b ;
  inout \u_I[7].y ,  \u_I[7].z ,  \u_I[6].y ,  \u_I[6].z ,  \u_I[5].y , 
     \u_I[5].z ,  \u_I[4].y ,  \u_I[4].z ,  \u_I[3].y ,  \u_I[3].z , 
     \u_I[2].y ,  \u_I[2].z ,  \u_I[1].y ,  \u_I[1].z ,  \u_I[0].y , 
     \u_I[0].z ;

  tri   \u_I[7].y ;
  tri   \u_I[7].z ;
  tri   \u_I[6].y ;
  tri   \u_I[6].z ;
  tri   \u_I[5].y ;
  tri   \u_I[5].z ;
  tri   \u_I[4].y ;
  tri   \u_I[4].z ;
  tri   \u_I[3].y ;
  tri   \u_I[3].z ;
  tri   \u_I[2].y ;
  tri   \u_I[2].z ;
  tri   \u_I[1].y ;
  tri   \u_I[1].z ;
  tri   \u_I[0].y ;
  tri   \u_I[0].z ;

  AN2P C22 ( .A(\u_I[7].y ), .B(1'b0), .Z(\u_I[7].z ) );
  AN2P C21 ( .A(\u_I[6].y ), .B(1'b0), .Z(\u_I[6].z ) );
  AN2P C20 ( .A(\u_I[5].y ), .B(1'b0), .Z(\u_I[5].z ) );
  AN2P C19 ( .A(\u_I[4].y ), .B(1'b0), .Z(\u_I[4].z ) );
  AN2P C18 ( .A(\u_I[3].y ), .B(1'b0), .Z(\u_I[3].z ) );
  AN2P C17 ( .A(\u_I[2].y ), .B(1'b0), .Z(\u_I[2].z ) );
  AN2P C16 ( .A(\u_I[1].y ), .B(1'b0), .Z(\u_I[1].z ) );
  AN2P C15 ( .A(\u_I[0].y ), .B(1'b0), .Z(\u_I[0].z ) );
endmodule

