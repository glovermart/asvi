// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs

`define shift 8
 
interface I;
  timeunit 1ns;
  timeprecision 1ps;
  
  logic x;
  logic y;
  logic z;

endinterface

module M
  ( input logic i_clk
  , I u_I[`shift]
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic a [`shift:0];
  logic b [`shift:0];
  logic c [`shift:0];
  
  for (genvar i=0;i<`shift;i++)begin
    assign u_I[i].x = a[i];
    assign u_I[i].y = b[i];  
    assign u_I[i].z = c[i];        
  end  
  
  always_ff @(posedge i_clk) begin
    for (int i=0;i<`shift;i++)begin
      a[i] <= 1'b1;
      b[i] <= 1'b0;  
      c[i] <= 1'b1;      
    end 
  end
  
endmodule

module top
  ( input logic i_clk
  , output logic [`shift-1:0] o_a
  , output logic [`shift-1:0] o_b
  , output logic [`shift-1:0] o_c
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  I u_I [`shift]();
  M u_M (.*);
  
  for (genvar i=0;i<`shift;i++)begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule