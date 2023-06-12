// Nested interface.
// NOTE: Lines 12, 17. 

interface I
  ( input logic i_clk
  , input logic i_a
  , output logic o_a
  );

  logic x;

  always_comb x = 1'b1;

  interface I1;

    always_ff @(posedge i_clk)
      o_a <= i_a ^ x;

  endinterface

  I1 u_I1 ();

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );

  I u_I 
    (.*
    );

endmodule
