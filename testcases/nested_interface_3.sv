// Nested interface.
// NOTE: Lines 10, 14, ,18, 29, 32, and 34.

interface I;
  
  logic x;
  logic y;
  logic z;

  always_comb x = ~y;

    interface I1;

      assign z = ~x;

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

  assign o_a = u_I.z;

endmodule
