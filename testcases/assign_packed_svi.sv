// Assignment via `assign` to a packed array within an interface. 

interface I
  (input logic i_a
  );

  logic [7:0] x; //Packed array x
  
  modport P
    ( output x   
    );
   
  for (genvar i = 0; i < 8; i++) // Assign with generate block within interface.
    assign x[i] = i_a;

endinterface


module top
  ( input logic i_a
  , output logic [7:0] o_a
  );

  I u_I 
    ( .i_a(i_a)    
    );

  assign o_a = u_I.x;

endmodule
