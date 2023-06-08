// Assignment via `force` to an 8 bit vector of an SVI instance.
// Use modport expression to force the LSB's to high-impedance state (Z).
// Use modport expression to force the MSB's to logic high.
// Release: Write net/variable with the value before the force assignment.
// Use of generic interfaces.
// Use unbased unsized literals.

interface I
  ( input logic i_a
  );

  logic [7:0]z;

  modport P1
    ( output .p1(z[3:0]) // LSBs
    );

  modport P2
    ( output .p2(z[7:4]) // MSBs
    );

endinterface


module M
  ( interface i  // Generic interfaces i,j,and k.
  , interface j
  , interface k
  , input bit en
  );

  assign k.z = {8{k.i_a}}; // Fill the vector with some bit of the same value.

  always_comb
    if (en)
      force i.p1 = 'z; // sets LSBs to z.
    else
      release i.p1;

  always_comb
    if (en)
      force j.p2 = '1;  // sets MSBs to 1.
    else
      release j.p2;

endmodule


module top
  ( input bit en
  , input var logic i_a
  , output logic [7:0] o_a
  );

  I u_I
    ( .i_a
    );

  M u_M1
    ( .en  (en)
    , .i   (u_I.P1) // Port P1 only
    , .j   (u_I.P2) // Port P2 only
    , .k   (u_I)    // Unrestricted view
    );

  assign o_a = u_I.z; // Copy/output the array content.

endmodule
