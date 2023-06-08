// Assignment via `always_ff` to scalar members within an SVI interface.
// Array of SVIs.
// Removed timeunit and timeprecision keywords.
// NOTE: Lines 17 to 21 and 33.

localparam int SIZE = 8;


interface I
  ( input logic i_clk
  );

  logic x;
  logic y;
  logic z;

  always_ff @(posedge i_clk) begin
    x <= 1'b1;
    y <= 1'b0;
    z <= 1'b1;
  end

endinterface


module top
  ( input logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );

  I u_I [SIZE-1:0]
    ( .* // Implicit port connection of clock signals.
    );

  /* Each interface 'array' element has 3 outputs being
  copied to the output pins of module 'top'. */
  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
