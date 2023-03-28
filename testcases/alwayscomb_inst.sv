// Assignment via `always_comb` to scalar members of an SVI instance.

interface I;

  logic z;
  logic y;
  logic x;

endinterface

module top;

  localparam bit Z = 1'b0;
  logic a;
  I u_I();

  always_comb u_I.z = Z;      // Constant
  always_comb u_I.y = 1'b1;   // Literal
  always_comb u_I.x = a;      // Signal

endmodule
