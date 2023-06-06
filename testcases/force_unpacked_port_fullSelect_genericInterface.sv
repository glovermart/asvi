// Assignment via `force` to an unpacked array of an SVI instance.
// Use modport expression to force the 4 LSBs to high-impedance state (z).

interface I;
  
  logic z [7:0];
  
  modport P
    ( output .p(z[0+:4]) // LSBs. Using addressing style from LRM 11.5.1.
    , output .q(z[7-:4]) // MSBs. Using addressing style from LRM 11.5.1.
    );

endinterface


module M
  ( interface i  // Generic interface i.
  , input logic i_en 
  , input logic i_a
  );

  always @ (i_en)
 // always_comb behaves the same way. 
    if (i_en)
      force i.p = '{4{1'bz}};
    else
      release i.p;

  always @ (i_en)
 // always_comb behaves the same way.
    if (i_en)
      force i.q = '{4{i_a}};
    else
      release i.q;

endmodule


module top
  ( input logic i_en
  , input logic i_a
  , output logic o_a [7:0]
  );

  I u_I ();
  
  assign u_I.z = '{8{i_a}}; // Fill the array with some bit of the same value.

  M u_M 
    ( .i_en   (i_en)
    , .i      (u_I.P)
    , .i_a    (i_a)
    );

  assign o_a = u_I.z; // Copy/output the array elements.

endmodule
