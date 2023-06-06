// Assignment via `always_comb` to scalar members within an SVI.
// Module definition with only port defined in module port list.
// NOTE: Lines 21, 29, and 31.

interface I;

  localparam bit Z = 1'b0;

  logic x;
  logic y;
  logic z;

  always_comb z = Z;      // Constant
  always_comb y = 1'b1;   // Literal
  always_comb x = z;      // Signal

endinterface


module M
  ( I ifc_I // Interface instance in module port. 
  );
  // Only module port is defined during module definition.
endmodule


module top;

  I u_I ();
  M u_M
    ( .ifc_I  (u_I) // Module instantiation and port connection.
    );

endmodule
