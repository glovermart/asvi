// Assignment via `always_ff` to scalar members of an SVI instance.

interface I;

  logic z;
  logic y;
  logic x;

endinterface

module top
  ( input var logic i_clk
  , input var logic i_srst
  , input var logic i_arst
  );

  localparam bit Z = 1'b0;
  logic a;

  I u_I1(); // No reset.
  always_ff @(posedge i_clk) u_I1.z <= Z;      // Constant
  always_ff @(posedge i_clk) u_I1.y <= 1'b1;   // Literal
  always_ff @(posedge i_clk) u_I1.x <= a;      // Signal

  I u_I2(); // Synchronous reset.
  always_ff @(posedge i_clk)
    if (i_srst)
      u_I2.z <= 1'b0;
    else
      u_I2.z <= Z;      // Constant
  always_ff @(posedge i_clk)
    if (i_srst)
      u_I2.y <= 1'b0;
    else
      u_I2.y <= 1'b1;   // Literal
  always_ff @(posedge i_clk)
    if (i_srst)
      u_I2.x <= 1'b0;
    else
      u_I2.x <= a;      // Signal

  I u_I3(); // Asynchronous reset.
  always_ff @(posedge i_clk, posedge i_arst)
    if (i_arst)
      u_I3.z <= 1'b0;
    else
      u_I3.z <= Z;      // Constant
  always_ff @(posedge i_clk, posedge i_arst)
    if (i_arst)
      u_I3.y <= 1'b0;
    else
      u_I3.y <= 1'b1;   // Literal
  always_ff @(posedge i_clk, posedge i_arst)
    if (i_arst)
      u_I3.x <= 1'b0;
    else
      u_I3.x <= a;      // Signal

endmodule
