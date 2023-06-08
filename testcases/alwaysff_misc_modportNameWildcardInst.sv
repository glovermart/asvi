//Assignment via `always_ff` to scalar members of an SVI port.
// NOTE: Line 113.
// NOTE: Lines 48,78 and 116, 120.

interface I;

  logic i_clk;
  logic i_srst;
  logic i_arst;

  logic w = 1'b1;
  logic z;
  logic y;
  logic x;

  modport P
    ( output z
    , output y
    , output x
    , input w
    , input i_clk
    , input i_srst
    , input i_arst
    );

endinterface


module M1
  ( I.P p
  );

  localparam bit Z = 1'b0;
  //No reset
  always_ff @(posedge p.i_clk) p.z <= Z;
  always_ff @(posedge p.i_clk) p.y <= 1'b1;
  always_ff @(posedge p.i_clk) p.x <= p.w;

endmodule


module M2
  ( I.P p
  );

  localparam bit Z = 1'b0;

  M1 u_M1
    ( .p (p)
    );

  //Synchronous reset
  always_ff @(posedge p.i_clk)
    if (p.i_srst)
      p.z <= 1'b1;
    else
      p.z <= Z;
  always_ff @(posedge p.i_clk)
    if (p.i_srst)
      p.y <= 1'b0;
    else
      p.y <= 1'b1;
  always_ff @(posedge p.i_clk)
    if (p.i_srst)
      p.x <= 1'b0;
    else
      p.x <= p.w;

endmodule


module M3
  ( I.P p
  );

  localparam bit Z = 1'b1;

  M2 u_M2
    ( .p (p)
    );

  //Asynchronous reset
  always_ff @(posedge p.i_clk , posedge p.i_arst)
    if (p.i_arst)
      p.z <= 1'b0;
    else
      p.z <= Z;
  always_ff @(posedge p.i_clk, posedge p.i_arst)
    if (p.i_arst)
      p.y <= 1'b0;
    else
      p.y <= 1'b1;
  always_ff @(posedge p.i_clk, posedge p.i_arst)
    if (p.i_arst)
      p.x <= 1'b0;
    else
      p.x <= p.w;

endmodule


module top
  ( input logic i_clk
  , input logic i_srst
  , input logic i_arst
  , output logic z
  , output logic y
  , output logic x
  , output logic w
  );

  I u_I
    ( .P (.*) // Port with direction to top portlist?
    );

  M2 u_M2      // Second instantiation of M2.
    ( .p  (u_I)
    );

  M3 u_M3
    ( .p  (u_I)
    );

endmodule
