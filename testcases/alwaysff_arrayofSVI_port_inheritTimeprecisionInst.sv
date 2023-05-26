// Assignment via `always_ff` to scalar members of an SVI port.
// Array of SVIs
// No timeprecision specified in Interface.
// Use of modport in interface definition. Lines 17, 26, and 67.
// NOTE: Lines 11 and 64. Timeprecision inheritance.
// NOTE: Lines 38 to 42 and 44 to 50. Signals a, b, and c.

localparam int SIZE = 8;

interface I;
  timeunit 1ns; // Only timeunit is specified for interface timescale.
  
  logic z;
  logic y;
  logic x;

  modport P
    ( output x 
    , output y 
    , output z 
    );

endinterface

module M
  ( I.P p [SIZE-1:0]
  , input logic i_clk
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic [SIZE-1:0] a;
  logic [SIZE-1:0] b;
  logic [SIZE-1:0] c;
  
  // always_comb + always_ff combination with signals a, b, and c.
  // Avoid always_ff in generate block issues.
  for (genvar i = 0; i < SIZE; i++) begin
    always_comb p[i].x = a[i]; // Signal.
    always_comb p[i].y = b[i]; // Signal.
    always_comb p[i].z = c[i]; // Signal.
  end
  
  always_ff @(posedge i_clk) begin
      for (int i = 0; i < SIZE; i++) begin
        a[i] <= 1'b1; // Literal.
        b[i] <= 1'b0; // Literal. 
        c[i] <= 1'b1; // Literal.
    end
  end

endmodule


module top
  ( input logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  ); 
  timeunit 1ns;
  timeprecision 1ps;
  
  I u_I [SIZE-1:0] (); // Interface should inherit timeprecision from top.
                       // LRM 3.14.2.3.
  M u_M
    ( .p  (u_I)
    , .i_clk  // .name port connection - module M and top. 
    );
    
  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;      
    assign o_b[i] = u_I[i].y;  
    assign o_c[i] = u_I[i].z;    
  end

endmodule
