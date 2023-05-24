// Assignment via `always_latch` to a scalar member within an SVI.
// Reverse a 4 bit vector.
// Use modport in module ports and during module instantiation.

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

endmodule

module M2
  ( I.P p
  );

  always_ff @(posedge p.i_clk)
    p.o_a[2] <= p.x[1];
   
endmodule

module M3
  ( I.P p
  );
  
  always_ff @(posedge p.i_clk)
    p.o_a[1] <= p.x[2];
     
endmodule

module M4
  ( I.P p
  );
  
  always_ff @(posedge p.i_clk)
    p.o_a[0] <= p.x[3];

endmodule

module top
 ( input logic i_clk
 , input logic i_en
 , output logic [3:0] o_a
 , input logic [3:0] i_a
 );

  I u_I(.*);
  M1 u_M1 (.p(u_I.P));
  M2 u_M2 (.p(u_I.P));
  M3 u_M3 (.p(u_I.P));
  M4 u_M4 (.p(u_I.P));

endmodule
