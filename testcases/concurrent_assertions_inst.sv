//Concurrent assertion experiment; instance of an interface.
/* This testcase is modified from "Who Put Assertions In My RTL Code? And Why?
How RTL Design Engineers Can Benefit from the Use of 
SystemVerilog Assertions" by Stuart Sutherland, SNUG 2015.Example 13, Page 14.*/

interface I
  ( input logic i_clk
  , input logic i_srst
  );

  assert property (@(posedge i_clk) $fell(i_srst) |-> !i_srst[*4])
  else $error("Reset did not remain low for at least 4 clock cycles");

endinterface


module top 
  ( output logic [3:0] o_q
  , input logic i_clk
  , input logic i_srst
  );

  I u_I 
    (.*
    );

  always_ff @(posedge i_clk) begin
    o_q[0] <= ~o_q[3] & i_srst;
    o_q[1] <= o_q[0];
    o_q[2] <= o_q[1];
    o_q[3] <= o_q[2];
  end

endmodule
