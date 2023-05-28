// Assignment via `always_latch` to scalar members within an SVI.
// Hierachical designs and use of dot-name port connection.

interface I
  ( input logic i_clk
  , input logic i_en
  , input logic i_a
  , output logic o_a
  );
  logic x;
  always_latch
    if (i_en)
      x <= i_a;
 endinterface

 module M1
   ( I u_I
   , output logic o_a
   );

   always_ff @(posedge u_I.i_clk)
     o_a <= u_I.x;

 endmodule

 module M2
   ( I u_I
   );

   M1 u_M1 
     ( .u_I
     );

   logic a;
   always_ff @(posedge u_I.i_clk)
     a <= ~u_M1.o_a;

 endmodule

 module M3
   ( I u_I
   );

   M2 u_M2 
     ( .*
     );

   logic a;  
   always_ff @(posedge u_I.i_clk)
     a <= u_M2.a;
 endmodule

 module M4
   ( I u_I
   );

   M3 u_M3 
     ( .*
     );

   always_ff @(posedge u_I.i_clk)
     u_I.o_a <= ~u_M3.a;

 endmodule

 module top
  ( input logic i_clk
  , input logic i_en
  , output logic o_a
  , input logic i_a
  );

  I u_I
    ( .*
    );
    
  M4 u_M4 
    ( .u_I(u_I)
    );

 endmodule
