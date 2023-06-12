// Nested interfaces and instantiation of interfaces in interfaces.
// Use of `assign` in nested interface.
// NOTE: Lines 5, 17, 20, 24, 29, 40, 42, 45, and 47.

interface I;
  
  logic x;

endinterface


/* Interface I1 encloses another interface and instances of interfaces nested,
and hierachically declared outside its definition*/

interface I1;

  I u_I (); // Instance of interface I in interface I1.


  interface I2; // Nested interface.
    
    logic y;
    
    assign y = u_I.x; // Use of assign construct in nested interface.

  endinterface


  I2 u_I2 (); // Instance of interface I2 in interface I1.

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_b
  );

  I u_I (); // Instance of interface I in top module.

  I1 u_I1 (); // Instance of interface I1 in top module.

  always_ff @(posedge i_clk)
    u_I.x <= i_a;

  assign o_b = u_I1.u_I2.y; // Hierachical assignment.

endmodule
