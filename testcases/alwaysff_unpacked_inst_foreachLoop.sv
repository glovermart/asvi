// Assignment via `always_ff` to an unpacked array of an interface instance.
// Use `foreach` loop to iterate through array elements.

interface I;

  logic x [8]; // Unpacked array x
  
endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a [8]
  );

  I u_I ();

  always_ff @ (posedge i_clk)
    foreach (u_I.x[i])
      u_I.x[i] <= i_a; 
  
  assign o_a = u_I.x;
  
endmodule
