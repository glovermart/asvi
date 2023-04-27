// Assignment via `always_comb` to scalar members of an SVI instance.
// Array of SVIs
`define duplicate 8
interface I;

  logic x;
  logic y;
  logic z;

endinterface

module M
  ( I u_I1[`duplicate-1:0]
  );

  localparam bit Z = 1'b0;
  logic a;

  for (genvar i=0; i<`duplicate; i++) begin
    always_comb u_I1[i].x = Z;      // Constant
    always_comb u_I1[i].y = 1'b1;   // Literal
    always_comb u_I1[i].z = a;      // Signal
  end

endmodule

module top(input logic clk, output logic [7:0] o_a, o_b, o_c);
  I u_I1[`duplicate-1:0] ();
  M u_M (.u_I1(u_I1));
  
  for (genvar i=0;i<`duplicate;i++)begin
    assign o_a[i] = u_I1[i].x;      
    assign o_b[i] = u_I1[i].y;  
    assign o_c[i] = u_I1[i].z;    
  end
endmodule
