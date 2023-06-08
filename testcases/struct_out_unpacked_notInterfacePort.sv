// Defining a struct outside an interface and module.

typedef struct
  { logic [7:0] data;
  } data_t;

data_t data;


interface I
  ( input logic i_clk
  );

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

  assign o_a = data.data;

endmodule

