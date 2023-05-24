// Assignment via `force` to an unpacked array of an SVI instance.

interface I;
  
  logic z [7:0];

endinterface


module top
  ( input bit en
  , input var logic i_a
  , output logic o_a [7:0] 
  );

  I u_I ();
  
  assign u_I.z = '{8{i_a}}; // Fill the array with some bit of the same value.

  always_comb
    if (en)
      force u_I.z = '{8{'z}};
    else
      release u_I.z;
  
  assign o_a = u_I.z;

endmodule
