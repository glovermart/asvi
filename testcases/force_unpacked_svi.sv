// Assignment via `force` to an unpacked vector within an SVI interface.
/* Release: Assigns the net/variable the resolved value before 
the force assignment.*/

interface I
  ( input bit en
  , input logic i_a
  , output logic o_a [8] // C-style size of array. 
  );

  wire x [7:0]; // "An array of wires can be assigned an array of variables..."
  assign x = '{8{i_a}}; // Fill the vector with some bit of the same value.

  always_comb
    if (en)
      force x = '{8{'z}};  // Force assign high-impedance z to the 'bus'.
    else
      release x;
  
  assign o_a = x;

endinterface


module top
  ( input bit en
  , input logic i_a
  , output logic o_a [8]
  );

  I u_I 
  ( en  // Ordered port connection.
  , i_a
  , o_a
  );
  
endmodule
