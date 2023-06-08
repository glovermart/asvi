// Assignment via `always_comb` to an unpacked array within an interface.
// Use `foreach` loop to iterate through array elements.
/* NOTE: Lines 7, 8, 28, 29, 23, and 24; ordered port list connection.
Also 8, 11, and 24; range and size array declarations. */

interface I
  ( input logic i_a
  , output logic o_a [8] // SV allows C-like declaration of an unpacked array.
  );

  logic x [7:0]; // Unpacked array x with starting and ending addresses.

  always_comb
    foreach (x[i])
      x[i] = i_a;

  assign o_a = x; // Copy array to output pins.

endinterface


module top
  ( input logic i_a
  , output logic o_a [7:0] // Unpacked array size, range style.
  );

  I u_I
    ( i_a // Ordered port list connection.
    , o_a
    );

endmodule
