// Assignment via `assign` to an unpacked array of an interface instance.
// Use `foreach` loop to iterate through array elements.

interface I;

  logic x [7:0]; // Unpacked array x with start and end address.
  
endinterface


module top
  ( input logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();
  
  assign    // Some tools output error messages during read step.
    foreach (u_I.x[i])
      u_I.x[i] = i_a; 
  
  assign o_a = u_I.x;

endmodule
