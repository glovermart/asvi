interface I;
  
  logic [7:0] x;

endinterface


interface I1
  ( input logic i_a
  );

  I u_I [7:0] ();

  interface I2;
    
    logic y [7:0];
   
    initial
    foreach (u_I[i])
      u_I[i].x[i] = i_a;
    
    initial  
    foreach (u_I[i])
      y[i] = u_I[i].x[i];

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
    assign o_b[i] = u_I1[i].u_I2.y[i];

endmodule
