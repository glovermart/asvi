// Packed array of interfaces.
// NOTE: Lines 23 and 24, 29 and 30, 32 and 33.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  , output logic [3:0] o_a1
  , output logic [3:0] o_a2
  );

  logic [7:0] a;
  I u_I ();

  always_comb u_I.x = i_a;

  always_comb
    a = {8{u_I}};

  logic [7:4] a1;
  logic [3:0] a2;

  always_comb
    a1 = a [7:4];

  always_comb
    a2 = a [3:0];

  assign o_a = a;
  assign o_a1 = a1;
  assign o_a2 = a2;

endmodule
