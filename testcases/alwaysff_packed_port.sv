// Assignment via `always_ff` and modport to a packed array within an interface.
// Write to each bit location every rising edge of i_clk.
// No for loop.

interface I;

  logic [7:0] x; //Packed array x
  modport P
    ( output x
    );
endinterface


module M
  ( I.P p 
  , output logic [7:0] o_a
  , input logic i_a
  , input logic i_clk
  );
  
  int i = 0;  
  always_ff @ (posedge i_clk) 
    p.x[i] <= i_a;
  
  always_ff @ (posedge i_clk)     
    i <= i + 'd1;          
  
  assign o_a = p.x;

endmodule

module top
  ( input logic i_a
  , input logic i_clk
  , output logic [7:0] o_a
  );

  I u_I ();
  M u_M
    ( .o_a
    , .i_a
    , .i_clk
    , .p(u_I)
    );
endmodule
