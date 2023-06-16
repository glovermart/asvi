// Packed array of interfaces.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  );

  logic [7:0] a;
  
  I [7:0] u_I ();
 
  initial 
    foreach (u_I[i]) begin 
      assign u_I[i].x = i_a;
      assign a[i] = u_I[i].x;
    end

  assign o_a = a;

endmodule
