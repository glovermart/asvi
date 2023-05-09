// Assignment via `assign` to an unpacked array within an interface. 

interface I
  (input logic i_a
  );

  logic x [7:0]; // Unpacked array x.
   
  assign x = '{8{i_a}}; /* Replicate values to unpacked array.
  LRM: 10.10 -10.10.1 */

endinterface

module top
  ( input logic i_a
  , output logic o_a [7:0]
  );

  I u_I 
    ( .i_a(i_a)    
    );

  assign o_a = u_I.x; // Copy values to output.

endmodule
