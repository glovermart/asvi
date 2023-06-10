/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Tue May 30 04:04:59 2023
/////////////////////////////////////////////////////////////


module M1 ( \p.x , \p.i_clk , \p.o_a  );
  input [3:0] \p.x ;
  output [3:0] \p.o_a ;
  input \p.i_clk ;


  FD1S \p.o_a_reg[3]  ( .D(\p.x [0]), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), 
        .Q(\p.o_a [3]) );
endmodule

