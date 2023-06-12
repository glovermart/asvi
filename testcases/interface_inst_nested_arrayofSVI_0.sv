interface I;
  
  logic x;

endinterface


interface I1
  ( input logic i_a
  );

  I u_I ();

  interface I2;
    
    logic y;
  
    always_comb u_I.x = i_a;

    assign y = u_I.x;

  endinterface


  I2 u_I2 ();

endinterface


module top
  ( input logic i_a
  , output logic [7:0] o_b 
  );

  I u_I ();
  I1 u_I1 [7:0] 
    ( .i_a
    );

  for (genvar i = 0; i < 8; i++) 
    assign o_b[i] = u_I1[i].u_I2.y;

endmodule
