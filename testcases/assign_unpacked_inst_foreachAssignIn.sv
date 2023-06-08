// Assignment via `assign` to an unpacked array of an interface instance.
// Use `foreach` loop to iterate through array elements.
// NOTE: Lines 20 and 21.

interface I;

  logic x [7:0]; // Unpacked array x with start and end address.

endinterface


module top
  ( input logic i_a
  , output logic [7:0] o_x
  );

  I u_I ();

  initial
    foreach (u_I.x[i])
      assign u_I.x[i] = i_a;

  assign o_x = u_I.x;

endmodule
