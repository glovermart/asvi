/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:36:40 2023
/////////////////////////////////////////////////////////////


module top ( i_a, o_b );
  input i_a;
  output o_b;


  IV U2 ( .A(i_a), .Z(o_b) );
endmodule

