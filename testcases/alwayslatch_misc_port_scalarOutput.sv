// Assignment via `always_latch` to scalar members of an SVI port.
// Hierarchical modules.

interface I
  ( input logic i_en
  , output logic o_a
  , input logic i_a
  );

 modport P
  ( output o_a
  , input i_a
  , input i_en
  );

endinterface


module M1
  ( I.P p1
  );

  always_latch
    if (p1.i_en)
      p1.o_a <= p1.i_a;

endmodule


module M2
  ( I.P p1
  );

  always_latch
    if (p1.i_en)
      p1.o_a <= p1.i_a;

  M1 u_M1 
    ( .p1
    );

endmodule


module M3
  ( I.P p1
  );

  always_latch
    if (p1.i_en)
      p1.o_a <= p1.i_a;

  M2 u_M2 
    ( .p1
    );

endmodule


module M4
  ( I.P p2  // Another interface instance of modport.
  );

  always_latch
    if (p2.i_en)
      p2.o_a <= p2.i_a;

  M3 u_M3 
    ( .p1  (p2)
    );

endmodule


module top
  ( input var logic i_en
  , output logic o_a
  , input logic i_a
  );

  I u_I (.*);

  M4 u_M4
    ( .p2  (u_I)
    );

endmodule
