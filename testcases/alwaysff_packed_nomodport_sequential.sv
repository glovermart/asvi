// Assignment via `always_ff`to a packed array within an interface.
// No modport.

interface I;

  logic [7:0] x; //Packed array x

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I ();

  int i = 0;
  
  always_ff @(posedge i_clk) begin // Introduce sequential block; begin...end. 
    u_I.x[i] <= i_a;
    i <= i + 'd1; // Single processes with clock enable inferred.
  end             // Each register is written @ i_clk posedge.

  assign o_a = u_I.x;

endmodule
