/* Concurrent assertion experiment;
   Assertion within interface.
   Hierachical referencing using modport.
*/
/* This testcase is modified from "Who Put Assertions In My RTL Code? And Why?
How RTL Design Engineers Can Benefit from the Use of
SystemVerilog Assertions" by Stuart Sutherland, SNUG 2015.Example 13, Page 14.*/

interface I
  ( logic i_clk
  , logic i_srst
  );

  modport P
    ( input i_clk
    , input i_srst
    );

endinterface


module M
  ( I.P p
  , output logic [3:0] o_q
  );

  always_ff @(posedge p.i_clk) begin
    o_q[0] <= ~o_q[3] & p.i_srst;
    o_q[1] <= o_q[0];
    o_q[2] <= o_q[1];
    o_q[3] <= o_q[2];
  end

  assert property (@(posedge p.i_clk) $fell(p.i_srst) |-> !p.i_srst[*4])
  else $error("Reset did not remain low for at least 4 clock cycles");

endmodule


module top
  ( output logic [3:0] o_q
  , input logic i_clk
  , input logic i_srst
  );

  I u_I
    (.*
    );

  M u_M
    ( .p(u_I.P)
    , .o_q(o_q)
    );

endmodule
