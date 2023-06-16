// Packed array of interfaces.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic o_a [7:0]
  );

  logic a [7:0];
  I u_I [7:0] ();
  
  initial
   foreach (u_I[i])
     assign u_I[i].x = i_a;
  
  always_comb 
    a = u_I;

  assign o_a = a;

endmodule
