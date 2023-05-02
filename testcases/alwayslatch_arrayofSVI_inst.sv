// Assignment via `always_latch` to scalar members of an SVI instance.
// Array of SVIs
`define V 8

interface I;
  timeunit 1ns;
  timeprecision 1ps;
  logic y;
  logic x;

endinterface

module top
  ( input logic en
  , input logic i_clk
  , input logic i_arst
  , output logic [`V-1:0]o_a 
  );
  
  timeunit 1ns;
  timeprecision 1ps;
  
  I u_I [`V-1:0]();
  localparam bit a = 1'b1;
  logic [`V-1:0] a_a;

  genvar i;
  for(i =0; i< `V;i++) begin 
    always_comb u_I[i].x = a;
  always_latch begin
    if (!i_arst)
      u_I[i].y <= 1'b0;
    else if (en)
      u_I[i].y <= u_I[i].x;
   end
  assign a_a[i] = u_I[i].y;
  end


  int i_i =0;
  always_ff @(posedge i_clk ) begin
    if (i_i >= `V )
      i_i <= 0;
    else begin
      o_a[i_i]  <= a_a[i_i];
      i_i++;
    end
  end
 
endmodule