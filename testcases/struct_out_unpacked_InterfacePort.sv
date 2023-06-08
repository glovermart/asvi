// Defining a struct outside an interface and module.
// Instantiate the struct as output port of interface.

typedef struct
  { logic [7:0] data;
  } data_t;


interface I
  ( input logic i_clk
  , output data_t o_a
  );

  always_ff @ (posedge i_clk)
    o_a.data <= '1;

endinterface


module top
  ( input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I
    ( .i_clk
    , .o_a
    );

endmodule

