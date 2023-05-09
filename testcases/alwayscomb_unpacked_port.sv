// Assignment via `always_comb` and modport to an unpacked array of an interface.
// Use `foreach` loop to iterate through array elements.

interface I;

  logic x [7:0]; // Unpacked array x.
  
  modport P
    ( output x
    );
endinterface

module M
  (I.P p
  , input logic i_a
  );

  always_comb
    foreach (p.x[i])
      p.x[i] = i_a;

endmodule

module top
  ( input logic i_a
  , output logic o_a [7:0]
  );

  I u_I ();
  M u_M
    ( .p(u_I.P) // Enforce modport views?
    , .i_a(i_a)
    );
  assign o_a = u_I.x; // Copy to output pins.
  
endmodule
