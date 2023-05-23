// Assignment via `always_latch` to a scalar member within an SVI.
// Hierachical modules
// Use .* connection in port connection for M1 instance in top module.

interface I
  ( input logic i_en
  , input logic [3:0] i_a
  , output logic [3:0] o_a
  );
  modport P
    ( input x
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
  
  logic [3:0] a;
  always_comb a = ~p.x;
  assign p.o_a = p.x;
endmodule

module M2
  ( I.P p
  , output logic [3:0] o_c
  );

  M1 u_M1 
    ( .* // .* instead of .name
    );
  always_comb o_c = u_M1.a;
endmodule

module top
 ( input logic i_en
 , output logic [3:0] o_a
 , output logic [3:0] o_b
 , input logic [3:0] i_a
 );

  I u_I 
    ( .*
    );
  
  M2 u_M2 
    ( .p(u_I)
    , .o_c(o_b)
    );

endmodule
