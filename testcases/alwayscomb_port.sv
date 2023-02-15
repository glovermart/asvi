// Assignment via `always_comb` to scalar members of an SVI port.

interface I;

  logic z;
  logic y;
  logic x;

  modport P
    ( input  z
    , output y
    , inout  x
    );

endinterface

module M
  ( I.P
  );

  localparam bit Z = 1'b0;
  logic a;

  always_comb I.z = Z;      // Constant
  always_comb I.y = 1'b1;   // Literal
  always_comb I.x = a;      // Signal

endmodule
