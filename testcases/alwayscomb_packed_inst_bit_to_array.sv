// Assignment via `always_comb` to a packed array of an interface instance.
// Assignment without unbased_unsized_ literal.
// NOTE: Lines 6, 12, and 18.

interface I;

  logic [7:0] x; //Packed array x

endinterface


module top
  ( input logic i_a // Defaults to bit.
  , output logic [7:0] o_a
  );

  I u_I ();

  always_comb u_I.x = i_a; //scalar to array without `'`
  assign o_a = u_I.x;

endmodule
