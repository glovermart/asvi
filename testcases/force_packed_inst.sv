// Assignment via `force` to an 8 bit vector of an SVI instance.

interface I;
  logic [7:0]z;
endinterface


module top
  ( input bit en
  , input var logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();
  assign u_I.z = {8{i_a}}; // Fill the vector with some bit of the same value.

  always_comb
    if (en)
      force u_I.z = 'z;
    else
      release u_I.z;
  assign o_a = u_I.z;
endmodule
