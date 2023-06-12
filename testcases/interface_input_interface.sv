// Instance of interface in portlist of another interface.
// NOTE lines 14, 28, and 31.

interface I1;
  
  logic x;
  logic y;
  logic z;

endinterface


interface I2
  ( I1 u_I1
  );

  always_comb u_I1.z = u_I1.x ^ u_I1.y;

endinterface


module top
  ( input logic i_a
  , input logic i_b
  , output logic o_a
  );

  I1 u_I1 ();

  I2 u_I2 
    ( u_I1
    );

  assign u_I1.x = i_a;
  assign u_I1.y = i_b;

  assign o_a = u_I1.z;

endmodule

