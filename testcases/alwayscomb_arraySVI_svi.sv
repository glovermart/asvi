// Assignment via `always_comb` to scalar members within an SVI interface.
// Array of SVIs

localparam int SIZE = 8
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
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );
  timeunit 10ns;
  timeprecision 1ns; 
  
  I u_I [SIZE-1:0]();
  wire logic a1;
  wire logic b1;
  
  for (genvar i=0;i<SIZE;i++) begin
    M u_M
     (.u_I(u_I[i])
     , .i_clk(i_clk)
     , .o_a(a1)
     , .o_b(b1)
     );
  end   
   
  logic a;
  logic [SIZE-1:0] a_a;
  logic b;
  logic [SIZE-1:0] b_b;
  
  always_comb a = a1;
  always_comb b = b1;
  
  always_ff @ (posedge i_clk) begin
    for (int i=0;i<SIZE;i++) begin
      a_a[i] <= a; 
      b_b[i] <= b;  
    end
  end
  
  assign o_a = a_a;
  assign o_b = b_b;

endmodule
