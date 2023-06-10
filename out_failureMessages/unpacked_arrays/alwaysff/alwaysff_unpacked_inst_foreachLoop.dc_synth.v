/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 10:47:56 2023
/////////////////////////////////////////////////////////////


module top ( i_a, i_clk, o_a );
  output [0:7] o_a;
  input i_a, i_clk;


  FD1S \u_I.x_reg[0]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[0])
         );
  FD1S \u_I.x_reg[1]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[1])
         );
  FD1S \u_I.x_reg[2]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[2])
         );
  FD1S \u_I.x_reg[3]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[3])
         );
  FD1S \u_I.x_reg[4]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[4])
         );
  FD1S \u_I.x_reg[5]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[5])
         );
  FD1S \u_I.x_reg[6]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[6])
         );
  FD1S \u_I.x_reg[7]  ( .D(i_a), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[7])
         );
endmodule

