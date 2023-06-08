// Assignment via `assign` to a packed array of an interface port.
// Writing to an input modport using assign
// Lines 7, 10, and 22.

interface I;

  logic [7:0] x; //Packed array x

  modport P
    ( input x // should be an output modport
    );

endinterface


module M
  ( I.P p
  , input logic  i_a
  );

  for (genvar i = 0; i < 8; i++)
    assign p.x[i] = i_a;

endmodule


module top
  ( input logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();

  M u_M
    ( .i_a
    , .p    (u_I)
    );

  assign o_a = u_I.x;

endmodule
