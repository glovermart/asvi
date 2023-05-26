// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs.
// Removed timeunit and timeprecision keywords.
// NOTE: Lines 28 to 32 and 34 to 40. Signals a, b, and c.

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
  
  logic a [SIZE:0];
  logic b [SIZE:0];
  logic c [SIZE:0];
  
  // assign - always_ff combination for 'array' of 
  // interfaces assignments.
  for (genvar i = 0; i < SIZE; i++) begin
    assign u_I[i].x = a[i]; // Signal.
    assign u_I[i].y = b[i]; // Signal.
    assign u_I[i].z = c[i]; // Signal.       
  end  
  
  always_ff @(posedge i_clk) begin
    for (int i = 0; i < SIZE; i++) begin
      a[i] <= 1'b1; // Literal.
      b[i] <= 1'b0; // Literal. 
      c[i] <= 1'b1; // Literal.     
    end 
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
