// Assignment via `always_ff` to a packed array within an interface.
// Write to each bit location every rising edge of i_clk.
// No for loop.
// Ordered port connection in module top.

interface I
  ( input logic i_a
  , input logic i_clk
  , output logic [7:0] o_a
  );

  logic [7:0] x; //Packed array x
  
  int i = 0;
  
  always_ff @(posedge i_clk)
    x[i] <= i_a;
  
  always_ff @(posedge i_clk)
    i <= i + 'd1;
 
  assign o_a = x;
  
endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I        // Ordered port connection: Interface I and module top have  
    ( i_a      // the same port order/position.
    , i_clk    // The port names do not have to be the same;
    , o_a      // kept project naming convention.
    );     

endmodule
