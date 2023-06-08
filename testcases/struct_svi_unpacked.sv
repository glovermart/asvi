// Defining a struct within an interface.
// Logic within interface.

interface I
  ( input logic i_clk
  );

  typedef struct
    { logic [7:0] data;
    } data_t;

  data_t data;

  always_ff @ (posedge i_clk)
    data.data <= '1;

endinterface


module top
  ( input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I
    ( .i_clk
    );

  assign o_a = u_I.data.data;

endmodule

