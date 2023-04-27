// Assignment via `always_comb` to scalar members of an SVI instance.
// Array of SVIs
`define duplicate 8
interface I;

  logic x;
  logic y;
  logic z;

endinterface

module M
  ( I u_I[`duplicate-1:0]
  );

  localparam bit Z = 1'b0;
  logic a;

  for (genvar i=0; i<`duplicate; i++) begin
    always_comb u_I[i].x = Z;      // Constant
    always_comb u_I[i].y = 1'b1;   // Literal
    always_comb u_I[i].z = a;      // Signal
  end

endmodule

module top
  ( input logic clk 
  , output logic [`duplicate-1:0] o_a
  , output logic [`duplicate-1:0] o_b
  , output logic [`duplicate-1:0] o_c
  );
  
  I u_I[`duplicate-1:0] ();
  
  M u_M 
    ( .*
    );

  for (genvar i=0;i<`duplicate;i++)begin
    assign o_a[i] = u_I[i].x;      
    assign o_b[i] = u_I[i].y;  
    assign o_c[i] = u_I[i].z;    
  end

endmodule
