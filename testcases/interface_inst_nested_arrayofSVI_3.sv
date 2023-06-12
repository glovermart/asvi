interface I;
  
  logic [7:0] x;

endinterface


interface I1
  ( input logic i_a
  , input logic i_clk
  );

  I u_I ();

  interface I2;
    
  logic y [7:0];
   
  always_comb 
    foreach (u_I.x[i])
      u_I.x[i] = i_a;
    
  always_ff @(posedge i_clk)
    foreach (u_I.x[i])
      y[i] <= u_I.x[i];

  endinterface


  I2 u_I2 ();

endinterface


module top
  ( input logic i_a
  , input logic i_clk
  , output logic o_b [7:0] 
  );

  I u_I ();
  I1 u_I1 [7:0] 
    ( .i_a
    , .i_clk
    );

  assign o_b = u_I1.u_I2.y;

endmodule
