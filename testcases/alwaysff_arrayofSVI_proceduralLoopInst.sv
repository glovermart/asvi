// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs.
// Procedural loop and instance of array of SVIs.
// NOTE: Lines 19, 22 to 27.

localparam int SIZE = 8;
 
interface I;
  
  logic x;
  logic y;
  logic z;

endinterface


module M
  ( input logic i_clk
  , I u_I [SIZE]
  );
  
  always_ff @(posedge i_clk)
    for (int i = 0; i < SIZE; i++) begin
      u_I[i].x <= 1'b1; // Literal.
      u_I[i].y <= 1'b0; // Literal.
      u_I[i].z <= 1'b1; // Literal.
    end  
  
endmodule


module top
  ( input logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );
  
  I u_I [SIZE] ();

  M u_M 
    ( .* // Implicit port connection. Interface instance to module M's port.
    );   // Enforces type checking.
  
  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
