// Nested interfaces and instantiation of interfaces in interfaces.
// Use of `always_comb` and 'assign' in nested interface.
// Assignment of top input signal 'i_a' to scalar within
// interface I in nested interface.
// NOTE: Lines 7, 18, 25, 27, 32, 42, 44, and 48. 

interface I;
  
  logic x;

endinterface


interface I1
  ( input logic i_a
  );

  I u_I ();


  interface I2;
    
    logic y;
  
    always_comb u_I.x = i_a;

    assign y = u_I.x;

  endinterface


  I2 u_I2 ();

endinterface


module top
  ( input logic i_a
  , output logic o_b
  );

  I u_I ();
  
  I1 u_I1 
    ( .i_a
    );

  assign o_b = u_I1.u_I2.y;

endmodule
