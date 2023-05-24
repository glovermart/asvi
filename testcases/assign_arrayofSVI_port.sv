// Assignment via `assign` to scalar members of an SVI port.
// Array of SVIs

//Single modport connection to an array instance
//Use of assign with signal specified as an input

localparam int SIZE = 8;

interface I;

  logic x;
  logic y;

  modport P
    ( input x
    , output y
    );

endinterface

module M
  ( I.P p
  , input logic i_a   
  );

  bit Z = 1'b0;
    
  assign p.x = Z;     // Constant
  assign p.y = i_a;   // Signal

  
endmodule

module top
  ( input logic i_a
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );
  
  I u_I[SIZE-1:0] ();
  
  M u_M 
    ( .p(u_I)
    , .i_a
    );
  
  for (genvar i=0;i<SIZE;i++)begin
    assign o_a[i] = u_I[i].x;      
    assign o_b[i] = u_I[i].y;     
  end
  
endmodule
