// Nested modules, Interface declaration within a module.
// Instantiation of interface in nested module.

module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );


  interface I;  // Interface declaration in module top.
    
    logic x;
    always_comb x = ~i_a;

  endinterface


  module M   // Nested module.
    ( input logic i_m
    , output logic o_m
    );
    
    I u_I (); // Instance of interface.

    always_ff @(posedge i_clk)
      o_m <= u_I.x ^ i_m;

  endmodule


  M u_M
    ( .i_m  (i_a)
    , .o_m  (o_a)
    );

endmodule
