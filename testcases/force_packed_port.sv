// Assignment via `force` to an 8 bit vector of an SVI instance.
// Use modport expression to force LSBs to high-impedance state (Z)

interface I;
  logic [7:0]z;
  modport P1
    ( output .p1(z[3:0]) // LSBs
    );
endinterface

module M
  ( interface i  // Generic interface i.
  , input bit en 
  );
 
  always_comb
    if (en)
      force i.p1 = 'z;
    else
      release i.p1;
endmodule

module top
  ( input bit en
  , input var logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();
  assign u_I.z = {8{i_a}}; // Fill the vector with some bit of the same value.

  M u_M 
    ( .en(en)
    , .i(u_I.P1)
    );

  assign o_a = u_I.z; // Copy/output the array content.
endmodule
