// Assignment via `always_latch` to a scalar member within an SVI.
// Reverse a 4 bit vector.
// Use modport during module instantiation.

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
  ( I u_I
  );
 
  always_ff @(posedge u_I.i_clk)
    u_I.o_a[3] <= u_I.x[0];

endmodule


module M2
  ( I u_I
  );

  always_ff @(posedge u_I.i_clk) 
    u_I.o_a[2] <= u_I.x[1];
   
endmodule


module M3
  ( I u_I
  );
  
  always_ff @(posedge u_I.i_clk)
    u_I.o_a[1] <= u_I.x[2];
     
endmodule


module M4
  ( I u_I
  );
  
  always_ff @(posedge u_I.i_clk)
    u_I.o_a[0] <= u_I.x[3];

endmodule


module top
  ( input logic i_clk
  , input logic i_en
  , output logic [3:0] o_a
  , input logic [3:0] i_a
  );

  I u_I
    ( .*
    );

  M1 u_M1 
    ( .u_I  (u_I.P)
    );

  M2 u_M2 
    ( .u_I  (u_I.P)
    );

  M3 u_M3 
    ( .u_I  (u_I.P)
    );

  M4 u_M4 
    ( .u_I  (u_I.P)
    );

endmodule
