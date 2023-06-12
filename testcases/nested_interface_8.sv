// Interface hierachcy - instance of interface
// NOTE: Lines 4, 11, 48 to 57. 

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
  , I u_I
  , input logic i_clk
  , input logic i_a
  , output logic o_a
  );

  always_ff @(posedge i_clk)
    o_a <= p.x;
    
  assign u_I.y = i_a;

endmodule


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );

  I1 u_I1 ();
  I u_I ();

  M u_M
    ( u_I1
    , u_I
    , i_clk
    , i_a
    , o_a
    );
  
endmodule
