// Assignment via `always_comb` to a packed array within an interface.
// Write 4 most and least significant bits; part-select.
// NOTE: Lines 9, 10, and 21.

interface I;

  logic [7:0] x;

  always_comb x[3:0] = '0; // Write 0000.
  always_comb x[7:4] = '1; // Write 1111.

endinterface


module top
  ( output logic [7:0] o_a
  );

  I u_I ();

  assign o_a = u_I.x; // Output 1111_0000.

endmodule
