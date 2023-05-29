// Defining a struct outside an interface and module.
// Struct instantiated in an interface port.
// Modports for different views of the struct.

typedef struct packed // Define as packed.
  { logic [7:0] data;
  } data_t;

  
interface I
  ( data_t data
  );
  modport P1
    ( output data
    );

  modport P2
    ( input data
    );

endinterface


module M1
  ( I.P1 p1
  );

  assign p1.data = '1;

endmodule


module M2
  ( I.P2 p2
  , input logic i_clk
  , output logic [7:0] o_a
  );

  always_ff @(posedge i_clk)
    o_a <= p2.data;

endmodule


module top
  ( input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I ();
  
  M1 u_m1
    ( .p1     (u_I.P1)
    );

  M2 u_m2
    ( .p2     (u_I.P2)
    , .i_clk  (i_clk)
    , .o_a    (o_a)
    );

endmodule

