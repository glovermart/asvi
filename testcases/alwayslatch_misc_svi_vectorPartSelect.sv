// Assignment via `always_latch` to a scalar member within an SVI.
// Reverse part of a vector.

interface I
  ( input logic i_clk
  , input logic i_en
  , input logic [3:0] i_a
  , output logic [3:0] o_a
  );
  
  modport P
    ( input x
    , input i_clk
    , output o_a
    );

  logic [3:0] x;

  always_latch
    if (i_en)
      x <= i_a;

endinterface


module M1
  ( I.P p
  );
 
  always_ff @(posedge p.i_clk)
    p.o_a[3] <= p.x[0];
  
  logic [3:0] a;

  always_comb a = ~p.x;

endmodule


module M2
  ( I.P p
  , output logic [3:0] o_c
  );

  always_ff @(posedge p.i_clk)
    p.o_a[2] <= p.x[1];

  M1 u_M1 
    ( .p  (p)
    );

  always_comb o_c = u_M1.a;

endmodule


module top
  ( input logic i_clk
  , input logic i_en
  , output logic [3:0] o_a
  , output logic [3:0] o_b
  , input logic [3:0] i_a
  );

  I u_I 
    ( .*
    );
  
  M2 u_M2 
    ( .p    (u_I)
    , .o_c  (o_b)
    );

endmodule
