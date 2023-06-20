// Nested interfaces and instantiation of interfaces in interfaces.
// Use of `always_ff` in nested interface.
// NOTE: Lines 5, 18, 20, 24, 30, 41, 43, 48, and 50.

interface I;
  
  logic x;

endinterface

 /* Interface I1 encloses another interface and instances of interfaces nested,
 and hierachically declared outside its definition*/

interface I1
  ( input logic i_clk // Instance of interface I in interface I1. 
  );

  I u_I ();

  interface I2; // Nested interface.
    
    logic y;
    
    always_ff @(posedge i_clk) // Use of `always_ff` construct in nested interface.
      y <= u_I.x;

  endinterface


  I2 u_I2 (); // Instance of interface I2 in interface I1.

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_b
  );

  I u_I (); // Instance of interface I in top module.

  I1 u_I1  // Instance of interface I1 in top module.
    ( .i_clk 
    );

  always_ff @(posedge i_clk)
    u_I.x <= i_a;

  assign o_b = u_I1.u_I2.y; // Hierachical assignment.

endmodule
