// Assignment via `always_latch` to scalar members of an SVI port.
// Array of SVIs

interface I
  ( input logic i_clk
  , input logic i_arst
  , output logic y
  , input logic x
  );

 modport P
  ( output y
  , input x
  , input i_clk
  , input i_arst
  );

endinterface

module M1
  ( I.P p1
  );

  always_latch
   if (!p1.i_arst)
     p1.y <= 1'b0;
   else if (p1.i_clk)
     p1.y <= p1.x;


endmodule

module M2
  ( I.P p1
  );

  always_latch
   if (!p1.i_arst)
     p1.y <= 1'b0;
   else if (p1.i_clk)
     p1.y <= p1.x;

  M1 u_M1 (.p1(p1));
endmodule

module M3
  ( I.P p1
  );

  always_latch
   if (!p1.i_arst)
     p1.y <= 1'b0;
   else if (p1.i_clk)
     p1.y <= p1.x;

  M2 u_M2 (.p1(p1));
endmodule

module M4
  ( I.P p2
  );

  always_latch
   if (!p2.i_arst)
     p2.y <= 1'b0;
   else if (p2.i_clk)
     p2.y <= p2.x;

  M3 u_M3 (.p1(p2));
endmodule

module top
   ( input var logic i_clk
   , input var logic i_arst
   , output logic y
   , input logic x
   );

  I u_I (.*);
  M4 u_M4
    ( .p2(u_I)
    );

endmodule
