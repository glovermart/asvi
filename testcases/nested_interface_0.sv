// Nested interfaces.
// NOTE: Lines 12 to 18, 21, 32, 35 and 37.

interface I;
  
  logic x;
  logic y;

  always_comb x = ~y;

 
  interface I1
    ( output logic o_a
    );

    assign o_a = ~x;

  endinterface


  I1 u_I1 ();

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );

  I u_I ();

  always_ff @(posedge i_clk)
    u_I.y <= i_a;

  assign o_a = u_I.o_a;

endmodule
