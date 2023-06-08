// Assignment via `always_ff` to an unpacked array within an interface.
// Use `foreach` loop to iterate through array elements.
// Always_ff without event control; blocking assignment used in always_ff block.

interface I
  ( input logic i_a
  , output logic o_a [8] // SV allows C-like declaration of an unpacked array.
  );

  logic x [7:0]; // Unpacked array x with starting and ending addresses.

  always_ff
    foreach (x[i])
      x[i] = i_a;

  assign o_a = x; // Copy array to output pins.

endinterface


module top
  ( input logic i_a
  , output logic o_a [7:0]
  );

  I u_I
  ( i_a // Ordered port list connection.
  , o_a
  );

endmodule
