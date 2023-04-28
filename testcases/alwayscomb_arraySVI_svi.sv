// Assignment via `always_comb` to scalar members within an SVI interface.
// Array of SVIs

`define duplicate 8
interface I;
  `timescale 1 ns / 1 ps
  var logic x;
  var logic y;
  var logic z;
  
  always_comb x = 1'b0;      
  always_comb y = 1'b1;   
  always_comb z = 1'bx;      
    
endinterface

module M
  ( I u_I
  , input logic i_clk
  , output logic  o_a
  , output logic  o_b
  , output logic  o_c
  );
  
  always_ff @ (posedge i_clk) begin
     o_a <= u_I.x;      
     o_b <= u_I.y;  
     o_c <= u_I.z;    
  end
  
endmodule

module top
  ( input logic i_clk
  , input logic i_a
  , input logic i_b
  , input logic i_c
  , output logic [`duplicate-1:0] o_a
  , output logic [`duplicate-1:0] o_b
  , output logic [`duplicate-1:0] o_c
  );
  
  I u_I [`duplicate-1:0]();
  
  for (genvar i=0;i<`duplicate;i++) begin
    M u_M
     (.u_I(u_I[i])
     , .i_clk(i_clk)
     , .o_a(i_a)
     , .o_b(i_b)
     , .o_c(i_c)
     );
  end   
   
  logic a;
  logic b;
  logic c;
  
  always_comb a = i_a;
  always_comb b = i_b;
  always_comb c = i_c;
  
  always @ (posedge i_clk) begin
  for (int i=0;i<`duplicate;i++) begin
    o_a[i] <= a; 
    o_b[i] <= b; 
    o_c[i] <= c; 
  end
  end

endmodule
