//Assignment via `always_ff` to scalar members of an SVI port.
// Array of SVIs

interface I;

  logic w = 1'b1;

  logic z;
  logic y;
  logic x;

  var logic i_clk;
  var logic i_srst;
  var logic i_arst;

  modport P
    ( output z
    , output y
    , output x
    , input i_clk
    , input i_srst
    , input i_arst
    , input w
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
  M1 u_M1 (.p(p));
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
  M2 u_M2 (.p(p));
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
  ( input var logic i_clk
  , input var logic i_srst
  , input var logic i_arst
  , output logic z
  , output logic y
  , output logic x
  );

  I u_I (I.P);  // Error during elaboration
  // I u_I ();  //Input and ouput elaborated but no connection to blocks.
  // I u_I (.*);  //Same as I u_I (); No errors in vivado matching signals.
  M2 u_M2
    ( .p(u_I)
    );

  M3 u_M3
    ( .p(u_I)
    );

endmodule
