/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:57:53 2023
/////////////////////////////////////////////////////////////


module top ( i_a, i_b, o_a );
  input i_a, i_b;
  output o_a;


  EO U2 ( .A(i_b), .B(i_a), .Z(o_a) );
endmodule

