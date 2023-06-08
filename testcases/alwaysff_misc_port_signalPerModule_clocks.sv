// Assignment via `always_ff` to scalar members of an SVI port.
// NOTE: Lines 36, 50 to 54, and 68 to 72. Attempts to resolve signal
// driven by multiple clocks issue from testcase *singleModuleInstantiation.

interface I
  ( output logic z
  , output logic y
  , output logic x
  , input logic i_clk
  , input logic i_srst
  , input logic i_arst
  );

  logic w = 1'b1;

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

endmodule


module M2
  ( I.P p
  );

  M1 u_M1
    ( .p  (p)
    );

  //Synchronous reset
  always_ff @(posedge p.i_clk)
    if (p.i_srst)
      p.y <= 1'b0;
    else
      p.y <= 1'b1;

endmodule


module M3
  ( I.P p
  );

  M2 u_M2
    ( .p  (p)
    );

  //Asynchronous reset
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
  );

  I u_I
    ( .* // Connect ports using implicit port connection style.
    );

  M3 u_M3
    ( .p  (u_I)
    );

endmodule
