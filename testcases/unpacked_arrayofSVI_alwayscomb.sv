// Unpacked array of interfaces.
// NOTE: Lines 21 and 22.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic o_a [7:0]
  );

  logic a [7:0];
  I u_I ();

  always_comb u_I.x = i_a;

  always_comb 
    a = '{8{u_I}};

  assign o_a = a;

endmodule
