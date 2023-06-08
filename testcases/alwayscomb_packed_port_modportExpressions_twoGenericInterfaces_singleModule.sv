// Assignment via `always_comb` to a packed array of an interface port.
// Use of modport expressions for slices of a 1D packed array.
// A second generic interface in module `M`.
// NOTE: Lines 22, 23, 26, 27, 39, and 40.

interface I;

  logic [7:0] x;

  modport P1
    ( output .p1(x[3:0])
    );

  modport P2
    ( output .p2(x[7:4])
    );

endinterface


module M
  ( interface i   // Generic interface 1.
  , interface j   // Generic interface 2.
  );

  always_comb i.p1 = '0;
  always_comb j.p2 = '1;

endmodule


module top
  ( output logic [7:0] o_a
  );

  I u_I ();

  M u_M
    ( u_I.P1 //LSBs
    , u_I.P2 //MSBs
    );

  assign o_a = u_I.x; //output the full vector 11110000

endmodule
