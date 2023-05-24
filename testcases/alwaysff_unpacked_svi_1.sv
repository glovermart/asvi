// Assignment via `always_ff` to an unpacked array within an interface.
// Use `foreach` loop to iterate through array elements.
// Always_ff with event control and non-blocking assignment.

interface I
  ( input logic i_clk
  , input logic i_a
  , output logic o_a [8] // SV allows C-like declaration of an unpacked array.
  );

  logic x [7:0]; // Unpacked array x with starting and ending addresses.
  
  always_ff @ (posedge i_clk)
    foreach (x[i])
      x[i] <= i_a;
   
  assign o_a = x; // Copy array to output pins.

endinterface


module top
  ( input logic i_clk
  , input logic i_a
  , output logic o_a [7:0]
  );

  I u_I 
  ( .* // Implicit port connection (dot-star).
  );
  
endmodule
