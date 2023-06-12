// Interface hierachcy - instance of interface
// NOTE: Line 4, 13, 21, 44, 45, and 51

interface I;
  
  logic y;

endinterface


interface I1;
  
  I u_I ();

  logic x;
  
  modport P
    ( input x
    );
  
  always_comb x = ~u_I.y;

endinterface


module M
  ( I1.P p
  , input logic i_clk
  , output logic o_a
  );

  always_ff @(posedge i_clk)
    o_a <= p.x;

endmodule


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );

  I1 u_I1 ();
  M u_M
    ( u_I1
    , i_clk
    , o_a
    );
  
  I u_I ();
  assign u_I.y = i_a;

endmodule
