// Assignment via `force` to a scalar member within an interface.
// Array of SVIs

interface I;

  logic z;

  always_comb
    force z = '0;

endinterface


module top
  ( input var logic i_a
  , output logic [7:0] o_a
  );

  I u_I [7:0] ();

  for (genvar i = 0; i < 8; i++)
    assign u_I[i].z = i_a;

  for (genvar i = 0; i < 8; i++)
    assign o_a[i] = u_I[i].z;

endmodule
