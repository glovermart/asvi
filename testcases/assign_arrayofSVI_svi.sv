// Assignment via `assign` to scalar members within an Interface.
// Array of SVIs

//Instantiation of a vector (1D SVI Array) in module top with netlists connected.
//No loop scheme to write to each bit location of the output pins of module top.
//Unused signals x and y.

localparam int SIZE = 8;

interface I
  ( input logic i_a
  , output logic o_a
  , output logic o_b
  );

  logic x;
  logic y;

  bit Z = 1'b0;
 
  assign o_a = Z;     // Constant
  assign o_b = i_a;   // Signal

endinterface

module top
  ( input logic i_a
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );
  
  I u_I[SIZE-1:0] 
    ( .i_a
    , .o_a
    , .o_b
    );
  
endmodule
