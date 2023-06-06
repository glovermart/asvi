// Assignment via `force` to an unpacked array of an SVI instance.
// Use modport expression to force the 4 LSBs to high-impedance state (z).
/* At module instantiation, modport view is removed i.e.
(.i(u_I) instead of .i(u_I.P)) */

interface I;
  
  logic z [7:0];
  
  modport P
    ( output .p(z[3:0]) // LSBs
    );

endinterface


module M
  ( interface i  // Generic interface i.
  , input bit i_en 
  );

  always_comb
    if (i_en)
      force i.p = '{4{'z}};
    else
      release i.p;

endmodule


module top
  ( input bit i_en
  , input var logic i_a
  , output logic o_a [7:0]
  );

  I u_I ();
  
  assign u_I.z = '{8{i_a}}; // Fill the array with some bit of the same value.

  M u_M 
    ( .i_en   (i_en)
    , .i      (u_I)
    );

  assign o_a = u_I.z; // Copy/output the array elements.

endmodule
