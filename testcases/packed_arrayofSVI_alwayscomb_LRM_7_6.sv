// Packed array of interfaces.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  );

  logic [7:0] a;
  
  I u_I1 [7:0] ();
 
  always_comb 
    foreach (u_I1[i]) begin 
      u_I1[i].x = i_a;
      a[i] = u_I1[i].x;
    end

  assign o_a = a;

endmodule
