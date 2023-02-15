// Assignment via `assign` to scalar members of an SVI instance.

interface I;

  logic z;
  logic y;
  logic x;

endinterface

module M;

  localparam bit Z = 1'b0;
  logic a;
  I u_I();

  assign u_I.z = Z;      // Constant
  assign u_I.y = 1'b1;   // Literal
  assign u_I.x = a;      // Signal

endmodule
