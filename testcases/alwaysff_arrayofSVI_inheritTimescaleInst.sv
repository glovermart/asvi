// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs.
// Timescale specified in top module only.
/* Use C-style delcaration for interface 'array' size; unpacked array
syntax assumed. */ 
// NOTE: Lines 24 and 61. 
// NOTE: Lines 31 to 35 and 41 to 47. Signals a, b, and c.
// NOTE: Lines 58, 59 and 61, 63.

localparam int SIZE = 8;


interface I;
  
  logic x;
  logic y;
  logic z;

endinterface


module M
  ( input logic i_clk
  , I u_I [SIZE]
  );
  
  logic a [SIZE:0];
  logic b [SIZE:0];
  logic c [SIZE:0];
  
  for (genvar i = 0; i < SIZE; i++) begin
    assign u_I[i].x = a[i]; // Signal
    assign u_I[i].y = b[i]; // Signal
    assign u_I[i].z = c[i]; // Signal
  end  
  
  // An always_ff block cannot be used to drive signals of an array of 
  // interfaces directly. It does not resolve; generate block and 
  // integer issues.
  // Assign and intermediate variables used as a workaround.
  always_ff @(posedge i_clk) begin
    for (int i = 0; i < SIZE; i++) begin
      a[i] <= 1'b1; // Literal
      b[i] <= 1'b0; // Literal
      c[i] <= 1'b1; // Literal
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
  
  I u_I [SIZE] (); // Inherit timescale from top module. LRM 3.14.2.3.

  M u_M  // Inherit timescale from top module. LRM 3.14.2.3.
    ( .* // Implicit port connection. u_I from module M's port and u_I from 
    );   // interface instance in top module.
  
  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
