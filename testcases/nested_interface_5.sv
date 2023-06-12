// Nested interface.
// NOTE: Line 26. 

interface I;
  
  logic x;
  logic y;


  interface I1;
    modport P
      ( input x
      );

    always_comb x = ~y;

  endinterface


  I1 u_I1 ();

endinterface


module M
  ( I.u_I1.P p
  , input logic i_clk
  , output logic o_a
  );

  always_ff @(posedge i_clk)
    o_a = p.x;

endmodule


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );

  I u_I ();
  M u_M
    ( u_I
    , i_clk
    , o_a
    );

  assign u_I.y = i_a;

endmodule
