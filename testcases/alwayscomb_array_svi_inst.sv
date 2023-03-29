// Assignment via `always_comb` to scalar members of an SVI instance.
// Array of SVIs

interface I;

  logic x;
  logic y;
  logic z;

endinterface

module M
  ( I u_I1
  );

  localparam bit Z = 1'b0;
  logic a;

  always_comb u_I1.z = Z;      // Constant
  always_comb u_I1.y = 1'b1;   // Literal
  always_comb u_I1.x = a;      // Signal

endmodule

module top;

  I u_I2 ();
  M u_M
    ( .u_I1(u_I2)
    );

endmodule
