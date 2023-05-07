// Assignment via `assign` to a packed array of an interface instance.
// In the loop scheme of the generate block, identifier type int is used.

interface I;

  logic [7:0] x; //Packed array x
  
endinterface


module top
  ( input logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();
  
  for (int i = 0; i < 8 ; i++) // genvar appropriate type
    assign u_I.x[i] = i_a; 
  
  assign o_a = u_I.x;

endmodule
