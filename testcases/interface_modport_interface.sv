// Instance of interface (modport) in portlist of another interface.
// NOTE: Lines 8, 16, and 34.

interface I1;
  
  logic x;

  modport P
    ( input x
    );

endinterface


interface I2
  ( I1.P p
  );
  
  logic y;

  always_comb y = ~p.x;

endinterface


module top
  ( input logic i_a
  , output logic o_b
  );

  I1 u_I1 ();

  I2 u_I2
    ( u_I1
    );

  always_comb u_I1.x = i_a;

  assign o_b = u_I2.y;

endmodule
