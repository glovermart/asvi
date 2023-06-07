// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs.
// Infer net and inout. 
// NOTE: Lines 8, 15, 20 to 27.

interface I;

  logic x;

endinterface


module top
  ( input logic i_clk
  , I u_I[7:0] // Infer net.
  );
  
  // No loop scheme. 
  always_ff @(posedge i_clk) begin
    u_I[0].x <= 1'b1; // Literal to net assignment.
    u_I[1].x <= 1'b0;
    u_I[2].x <= 1'b1;
    u_I[3].x <= 1'b0;
    u_I[4].x <= 1'b1;
    u_I[5].x <= 1'b0;
    u_I[6].x <= 1'b1;
    u_I[7].x <= 1'b0;
  end   

endmodule
