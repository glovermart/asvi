// Assignment via `always_ff` to scalar members within an SVI.
// Hierachical referencing - module intance.
// NOTE: Lines 29 to 31, 43 to 45, 65 to 67, and 88 to 90. 

interface I
  ( input logic i_clk
  );

  logic z;
  logic y;
  logic x;

  localparam bit Z = 1'b0;

  always_ff @(posedge i_clk) z = Z;      // Constant
  always_ff @(posedge i_clk) y = 1'b1;   // Literal
  always_ff @(posedge i_clk) x = z;      // Signal

endinterface


module M1
  ( I u_I
  , output logic a
  , output logic b
  , output logic c
  );

  assign a = u_I.z;
  assign b = u_I.y;
  assign c = u_I.x;

endmodule


module M2
  ( I u_I
  , output logic a
  , output logic b
  , output logic c
  );

  assign a = u_M1.a;
  assign b = u_M1.b;
  assign c = u_M1.c;

  M1 u_M1 
    ( .*
    );

endmodule


module M3
  ( I u_I
  , output logic a
  , output logic b
  , output logic c
  );
  
  M2 u_M2 
    ( .*
    );

  assign a = u_M2.a;
  assign b = u_M2.b;
  assign c = u_M2.c;

endmodule


module top
  ( input logic i_clk
  , output logic a
  , output logic b
  , output logic c
  );
  
  I u_I 
    ( .*
    );

  M3 u_M3 
    ( .u_I  (u_I)
    , .*
    );
  
  assign a = u_M3.a;
  assign b = u_M3.b;
  assign c = u_M3.c;

endmodule
