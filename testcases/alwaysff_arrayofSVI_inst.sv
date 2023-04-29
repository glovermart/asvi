// Assignment via `always_ff` to scalar members of an SVI instance.
// Array of SVIs

`define shift 4

interface I;

  logic x;

endinterface

module top
  ( input var logic i_clk
  , I u_I[`shift-1:0]
  );

  always_ff @(posedge i_clk) begin
    u_I.x[0] <= 1'b1;
    u_I.x[1] <= 1'b0;
    u_I.x[2] <= 1'b1;
    u_I.x[3] <= 1'b0;
    u_I.x[4] <= 1'b1;
    u_I.x[5] <= 1'b0;
    u_I.x[6] <= 1'b1;
    u_I.x[7] <= 1'b0;
  end   

endmodule
