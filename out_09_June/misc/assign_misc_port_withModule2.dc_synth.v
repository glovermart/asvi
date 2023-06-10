/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 11:20:43 2023
/////////////////////////////////////////////////////////////


module M1 ( \p1.y , \p1.x , \p2.z , \p2.w  );
  input \p1.y , \p1.x ;
  output \p2.z , \p2.w ;


  AN2 U3 ( .A(\p1.x ), .B(\p1.y ), .Z(\p2.z ) );
  EO U4 ( .A(\p1.y ), .B(\p1.x ), .Z(\p2.w ) );
endmodule

