// Assignment via `always_comb` to scalar members of an SVI port.

interface I;

  logic z;
  logic y;
  logic x;

  modport P
    ( output z
    , output y
    , output x
    );

endinterface

module M
  ( I.P p
  );

  localparam bit Z = 1'b0;
  logic a;

  always_comb p.z = Z;      // Constant
  always_comb p.y = 1'b1;   // Literal
  always_comb p.x = a;      // Signal

endmodule

module top;
  I u_I();
  M u_M
    ( .p(u_I)
    );
endmodule
