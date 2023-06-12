interface I;
  
  logic [7:0] x;

endinterface


interface I1
  ( input logic [7:0] i_a
  , input logic i_clk
  );

  I u_I ();
  

  interface I2;
    
  logic [7:0] y;
   
  always_comb u_I.x = i_a;
    
  always_ff @(posedge i_clk)
    y = u_I.x;

  endinterface


  I2 u_I2 ();
  
endinterface


module top
  ( input logic [7:0] i_a
  , input logic i_clk
  , output logic [7:0] o_b 
  );

  I u_I ();
  I1 u_I1 
    ( .i_a
    , .i_clk
    );

  assign o_b = u_I1.u_I2.y;

endmodule
