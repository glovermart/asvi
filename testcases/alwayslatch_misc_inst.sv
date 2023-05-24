// Assignment via `always_latch` to scalar members of an SVI instance.
// Hierarchical modules.

interface I;
  
  logic y;
  logic z;
  localparam logic x = 1'b1;

endinterface

module M1
  ( I u_I
  , input logic i_en
  );

  always_latch
    if (i_en)
      u_I.y <= u_I.x;

endmodule

module M2
  ( I u_I
  , input logic i_en
  );

  M1 u_M1
    ( .u_I
    , .i_en
    );

  always_latch
    if (i_en)
      u_I.z <= u_I.y;

endmodule

module top
  ( output logic o_a
  , input logic i_en
  );
  I u_I ();
  M2 u_M2
    ( .u_I
    , .i_en
    );
  assign o_a = u_I.z;
endmodule
