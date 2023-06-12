/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Mon Jun 12 04:20:39 2023
/////////////////////////////////////////////////////////////


module M ( \p.x , i_clk, o_a );
  input \p.x , i_clk;
  output o_a;


  FD1S o_a_reg ( .D(\p.x ), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a) );
endmodule

