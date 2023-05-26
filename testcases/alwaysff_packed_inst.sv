// Assignment via `always_ff` to a packed array within an interface of an interface instance.

interface I;

  logic [7:0] x; // Packed array x
  
endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I ();
  
  always_ff @(posedge i_clk) begin
    for(int i = 0; i < 8; i++) // 8 processes/ registers.
      u_I.x[i] <= i_a;
  end

  assign o_a = u_I.x;

endmodule
