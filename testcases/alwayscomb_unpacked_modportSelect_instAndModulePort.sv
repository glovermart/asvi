// Assignment via `always_comb` and modport to an unpacked array of an interface.
// Use `foreach` loop to iterate through array elements.
// Selecting modport twice; module instance and module definition (port list).
// NOTE: Lines 10, 17, and 35.

interface I;

  logic x [7:0]; // Unpacked array x.
  
  modport P
    ( output x
    );

endinterface

module M
  ( I.P p // Select modport view.
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
    ( .p    (u_I.P) // Select modport again.
    , .i_a  (i_a)
    );

  assign o_a = u_I.x; // Copy to output pins.
  
endmodule
