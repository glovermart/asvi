// Struct defined inside an interface and module.
// Logic within module.
// Struct defined as a wire.

interface I;

  wire struct packed
    { logic [7:0] data;
    } data;

endinterface


module top
  ( output logic [7:0] o_a
  );

  I u_I ();

  assign  u_I.data.data = '1; // assignment using assign keyword.

  assign o_a = u_I.data; // struct name only

endmodule
