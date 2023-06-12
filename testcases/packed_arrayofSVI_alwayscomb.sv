// Packed array of interfaces.
// NOTE: Lines 21 and 22.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  );

  logic [7:0] a;
  I u_I ();

  always_comb u_I.x = i_a;

  always_comb 
    a = {8{u_I}};

  assign o_a = a;

endmodule
