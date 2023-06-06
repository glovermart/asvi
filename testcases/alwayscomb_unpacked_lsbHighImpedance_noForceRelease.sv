// Assignment via `always_comb` to an unpacked array within an interface. 
// No force-release constructs.
// NOTE: Lines 14, and 16.

interface I
  ( input logic i_a
  , input logic i_en
  );

  logic x [7:0]; // Unpacked array x.
  
  always_comb 
    if (i_en)
      x = '{i_a,i_a,i_a,i_a,'z,'z,'z,'z}; // Drive LSBs to 'z',
    else
      x = '{8{i_a}}; // Write all array elements with the same value. 

endinterface


module top
  ( input logic i_a
  , input logic i_en
  , output logic o_a [7:0]
  );

  I u_I 
    ( .i_a(i_a)   
    , .i_en(i_en)
    );

  assign o_a = u_I.x; // Copy values to output.

endmodule
