// Assignment via `always_latch` to scalar members of an SVI instance.
// Array of SVIs

interface I;
 logic y;
 logic x;

endinterface

module M1
  ( I u_I1
  , input logic i_clk
  , input logic i_arst
  );
  always_latch
    if (!i_arst)
      u_I1.y <= 1'b0;
    else if (i_clk)
      u_I1.y <= u_I1.x;

endmodule

module M2
  ( I u_I1
  , input logic i_clk
  , input logic i_arst
  );

  M1 u_M1
    (.u_I1(u_I1)
    );

  always_latch
    if (!i_arst)
      u_I1.y <= 1'b0;
    else if (i_clk)
      u_I1.y <= u_I1.x;

endmodule

module top( );
  I u_I ();
  M2 u_M2
    (.u_I1(u_I)
    );

endmodule

