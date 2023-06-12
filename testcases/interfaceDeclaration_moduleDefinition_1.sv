// Nested modules, Interface Declaration in a module.
// Instantiation of interface in nested module.
// Signal declared within enclosing module.

module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_a
  );
  
  logic a;
  always_comb a = i_a; // Assignment of input signal to intermediate variable.


  interface I; // Interface declaration within module.
    
    logic x;
    always_comb x = ~a;

  endinterface


  module M  // Nested module.
    ( input logic i_m
    , output logic o_m
    );
    
    I u_I ();  // Instance of interface.

    always_ff @(posedge i_clk)
      o_m <= u_I.x ^ i_m;

  endmodule


  M u_M
    ( .i_m  (a)
    , .o_m  (o_a)
    );

endmodule
