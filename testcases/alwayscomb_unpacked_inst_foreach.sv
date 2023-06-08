// Assignment via `always_comb` to an unpacked array of an interface instance.
// Use `foreach` loop to iterate through array elements.
// NOTE: Lines 7, 20, 21, and 22.

interface I;

  logic x [8]; // Unpacked array x.

endinterface


module top
  ( input logic i_a
  , output logic o_a [7:0]
  );

  I u_I ();

  // Procedural for loop scheme with foreach construct.
  always_comb
    foreach (u_I.x[i])
      u_I.x[i] = i_a;

  assign o_a = u_I.x;

endmodule
