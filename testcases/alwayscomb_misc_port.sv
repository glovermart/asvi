// Assignment via `always_comb` to scalar members of an SVI port.
// Two instances of an interface.
// NOTE: Lines 27, 41, 57, 58, 61, and 65. 33, 34, 35, 48, 49, and 50.

interface I;

  logic x;
  logic y;
  logic z;

  modport P1
    ( input x
    , input y
    , input z
    );

  modport P2
    ( output x
    , output y
    , output z
    );

endinterface


module M1
  ( I.P1 p1 // Specify modport view during module definition.
  );        // View signals x, y, and z as input signals.

  localparam bit Z = 1'b0;
  logic a;

  always_comb p1.x = Z;      // Constant
  always_comb p1.y = 1'b1;   // Literal
  always_comb p1.z = a;      // Signal

endmodule


module M2
  ( I.P2 p2 // View signals x, y, and z as ouput signals.
  );

  logic a;
  logic b;
  logic c;

  always_comb a = p2.x;
  always_comb b = p2.y;
  always_comb c = p2.z;

endmodule


module top;

  I u_I1();
  I u_I2();

  M1 u_M1
    ( .p1(u_I1)
    );

  M2 u_M2
    ( .p2(u_I2)
    );

endmodule
