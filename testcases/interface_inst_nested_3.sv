// Nested interfaces and instantiation of interfaces in interfaces.
// Use of `always_ff` in nested interface.
// Assignment of top input signal 'i_a' to scalar within
// interface I in nested interface.
// NOTE: Lines 7, 19, 27, 30, 35, 46, 48, and 53. 

interface I;
  
  logic x;

endinterface


interface I1
  ( input logic i_clk
  , input logic i_a
  );

  I u_I ();


  interface I2;
  
    logic y;

    always_ff @(posedge i_clk)
      u_I.x <= i_a;

    always_ff @(posedge i_clk) 
      y <= u_I.x;

  endinterface


  I2 u_I2 ();

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_b
  );

  I u_I ();

  I1 u_I1 
    ( .i_clk
    , .i_a
    );

  assign o_b = u_I1.u_I2.y;

endmodule
