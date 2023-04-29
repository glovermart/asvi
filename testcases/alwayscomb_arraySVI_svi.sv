// Assignment via `always_comb` to scalar members within an SVI interface.
// Array of SVIs

`define duplicate 8
interface I;
  timeunit 1ns;
  timeprecision 1ps;
  //alternative: timeunit 1ns/ 1ps
  //section 3.14.2.2: page 57 of LRM 1800:2017
  logic x;
  logic y;

  always_comb x = 1'b0;      
  always_comb y = 1'b1;       
    
endinterface

module M
  ( I u_I
  , input logic i_clk
  , output logic  o_a
  , output logic  o_b
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  always_ff @ (posedge i_clk) begin
     o_a <= u_I.x;      
     o_b <= u_I.y;  
  end
  
endmodule

module top
  ( input logic i_clk
  , output logic [`duplicate-1:0] o_a
  , output logic [`duplicate-1:0] o_b
  );
  timeunit 10ns;
  timeprecision 1ns; 
  
  I u_I [`duplicate-1:0]();
  wire logic i_a;
  wire logic i_b;
  
  for (genvar i=0;i<`duplicate;i++) begin
    M u_M
     (.u_I(u_I[i])
     , .i_clk(i_clk)
     , .o_a(i_a)
     , .o_b(i_b)
     );
  end   
   
  logic a;
  logic [`duplicate-1:0] a_a;
  logic b;
  logic [`duplicate-1:0] b_b;
  
  always_comb a = i_a;
  always_comb b = i_b;
  
  always_ff @ (posedge i_clk) begin
    for (int i=0;i<`duplicate;i++) begin
      a_a[i] <= a; 
      b_b[i] <= b;  
    end
  end
  
  assign o_a = a_a;
  assign o_b = b_b;

endmodule
