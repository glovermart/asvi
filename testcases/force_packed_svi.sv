// Assignment via `force` to an 8 bit vector within an SVI interface.
// Release: assigns net/variable the value before the force assignment.

interface I
  ( input bit en
  , input logic i_a
  , output logic [7:0] o_a
  );

  logic [7:0]z;
  
  assign z = {8{i_a}}; // Fill the vector with some bit of the same value.

  always_comb
    if (en)
      force z = 'z;  // Force assign high-impedance z to the 'bus'.
    else
      release z;
  assign o_a = z;

endinterface


module top
  ( input bit en
  , input logic i_a
  , output logic [7:0] o_a
  );

  I u_I 
  ( .*  // dot-star port connection. Ports with the same name are
  );    // connected regardless of order in port list.
  
endmodule
