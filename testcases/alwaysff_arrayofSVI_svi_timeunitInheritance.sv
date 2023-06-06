// Assignment via `always_ff` to scalar members within an SVI interface.
// Array of SVIs.
// Interface timeunit inheritance from top module.
// NOTE: Lines 12, 33, and 36.

localparam int SIZE = 8;


interface I
  ( input logic i_clk
  );
  timeprecision 1ps;
  
  logic x;
  logic y;
  logic z;

  always_ff @(posedge i_clk) begin
    x <= 1'b1;
    y <= 1'b0;
    z <= 1'b1;
  end

endinterface


module top
  ( input logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  ); 
  timeunit 1ns; // Interface I should inherit this timeunit. LRM 3.14.2.3
  timeprecision 1ps;
  
  I u_I [SIZE-1:0] 
    ( .*
    );
    
  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;      
    assign o_b[i] = u_I[i].y;  
    assign o_c[i] = u_I[i].z;    
  end

endmodule
