/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:32:46 2023
/////////////////////////////////////////////////////////////


module top ( i_clk, \u_I[7].x , \u_I[6].x , \u_I[5].x , \u_I[4].x , \u_I[3].x , 
        \u_I[2].x , \u_I[1].x , \u_I[0].x  );
  input i_clk;
  inout \u_I[7].x ,  \u_I[6].x ,  \u_I[5].x ,  \u_I[4].x ,  \u_I[3].x , 
     \u_I[2].x ,  \u_I[1].x ,  \u_I[0].x ;

  tri   \u_I[7].x ;
  tri   \u_I[6].x ;
  tri   \u_I[5].x ;
  tri   \u_I[4].x ;
  tri   \u_I[3].x ;
  tri   \u_I[2].x ;
  tri   \u_I[1].x ;
  tri   \u_I[0].x ;

  FD1S \u_I[0].x_reg  ( .D(1'b1), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[0].x ) );
  FD1S \u_I[1].x_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[1].x ) );
  FD1S \u_I[2].x_reg  ( .D(1'b1), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[2].x ) );
  FD1S \u_I[3].x_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[3].x ) );
  FD1S \u_I[4].x_reg  ( .D(1'b1), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[4].x ) );
  FD1S \u_I[5].x_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[5].x ) );
  FD1S \u_I[6].x_reg  ( .D(1'b1), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[6].x ) );
  FD1S \u_I[7].x_reg  ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(
        \u_I[7].x ) );
endmodule

