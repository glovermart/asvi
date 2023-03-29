// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs

interface I
  ( input var logic i_clk
  , input var logic i_srst
  , input var logic i_arst
  );

  logic z;
  logic y;
  logic x;

endinterface

module top
  ( input var logic i_clk
  , input var logic i_srst
  , input var logic i_arst
  );
  I u_I4 (.*);
  M1 u_M1 (.u_I1(u_I4));
  M2 u_M2 (.u_I2(u_I4));
  M3 u_M3 (.u_I3(u_I4));

endmodule

module M1
  ( I u_I1
  );
  localparam bit Z = 1'b0;
  logic a;

  // No reset.
  always_ff @(posedge u_I1.i_clk) u_I1.z <= Z;      // Constant
  always_ff @(posedge u_I1.i_clk) u_I1.y <= 1'b1;   // Literal
  always_ff @(posedge u_I1.i_clk) u_I1.x <= a;      // Signal
endmodule

module M2
  ( I u_I2
  );
  localparam bit Z = 1'b0;
  logic a;

  // Synchronous reset.
  always_ff @(posedge u_I2.i_clk)
    if (u_I2.i_srst)
      u_I2.z <= 1'b0;
    else
      u_I2.z <= Z;      // Constant
  always_ff @(posedge u_I2.i_clk)
    if (u_I2.i_srst)
      u_I2.y <= 1'b0;
    else
      u_I2.y <= 1'b1;   // Literal
  always_ff @(posedge u_I2.i_clk)
    if (u_I2.i_srst)
      u_I2.x <= 1'b0;
    else
      u_I2.x <= a;      // Signal
endmodule

module M3
  ( I u_I3
  );
  localparam bit Z = 1'b0;
  logic a;

  // Asynchronous reset.
  always_ff @(posedge u_I3.i_clk, posedge u_I3.i_arst)
    if (u_I3.i_arst)
      u_I3.z <= 1'b0;
    else
      u_I3.z <= Z;      // Constant
  always_ff @(posedge u_I3.i_clk, posedge u_I3.i_arst)
    if (u_I3.i_arst)
      u_I3.y <= 1'b0;
    else
      u_I3.y <= 1'b1;   // Literal
  always_ff @(posedge u_I3.i_clk, posedge u_I3.i_arst)
    if (u_I3.i_arst)
      u_I3.x <= 1'b0;
    else
      u_I3.x <= a;      // Signal
endmodule
