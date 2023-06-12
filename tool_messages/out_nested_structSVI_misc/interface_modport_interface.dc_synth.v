/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Mon Jun 12 04:21:57 2023
/////////////////////////////////////////////////////////////


module top ( i_a, o_b );
  input i_a;
  output o_b;


  IV U2 ( .A(i_a), .Z(o_b) );
endmodule

