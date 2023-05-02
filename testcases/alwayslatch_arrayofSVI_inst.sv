// Assignment via `always_latch` to scalar members of an SVI instance.
// Array of SVIs
// Copy output from interface to module output pins using assign construct.
`define V 8

interface I;
  timeunit 1ns;
  timeprecision 1ps;
  logic y;
  logic x;

endinterface

module top
  ( input logic en
  , input logic i_arst
  , output logic [`V-1:0]o_a 
  );
  
  timeunit 1ns;
  timeprecision 1ps;
  
  I u_I [`V-1:0]();
  logic a = 1'b1;
  logic [`V-1:0] a_a;

  genvar i;
  for(i =0; i< `V;i++) begin 
    //Use always_latch with intermediate signal (variable) a.
    //Would normally use always_comb here.
    always_latch  u_I[i].x <= a;
  always_latch begin
    if (!i_arst) //Vary output during simulation, may be omitted.
      u_I[i].y <= 1'b0; 
    else if (en) // Actual implementation of latch
      u_I[i].y <= u_I[i].x;
   end
  always_comb a_a[i] = u_I[i].y;
  end

   assign o_a = a_a; // Copy output 

endmodule
