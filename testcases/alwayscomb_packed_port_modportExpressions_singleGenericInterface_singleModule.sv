// Assignment via `always_comb` to a packed array of an interface port.
/* Use of generic interfaces and modport expressions for
slices of a 1D packed array. */
// NOTE: Lines 11, 15, 22, 25, 26, 38, and 39.

interface I;
  
  logic [7:0] x; // Packed array.
  
  modport P1
    ( output .p1(x[3:0]) // Modport expression; LSBs.
    );

  modport P2
    ( output .p2(x[7:4]) // Modport expression; MSBs.
    );

endinterface


module M
  ( interface i   //Generic interface
  );

  always_comb i.p1 = '0; // Use unbased unsigned literal. Write LSBs.
  always_comb i.p2 = '1; // Use unbased unsigned literal. Write MSBs.

endmodule


module top
  ( output logic [7:0] o_a
  );

  I u_I (); // Interface instance.

  M u_M 
    ( u_I.P1 //LSBs
    , u_I.P2 //MSBs
    );

  assign o_a = u_I.x; //output the full vector 1111_0000

endmodule
