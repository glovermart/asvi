// Assignment via `always_comb` to an unpacked array of an interface instance.
// Use `foreach` loop to iterate through array elements.

interface I;

  logic x[8]; // Unpacked array x
  
endinterface


module top
  ( input logic i_a
  , output logic o_a [7:0]
  );

  I u_I ();

  always_comb
    foreach (u_I.x[i])
      u_I.x[i] = i_a; 
  
  assign o_a = u_I.x;
  
endmodule
