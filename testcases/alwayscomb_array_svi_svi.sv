// Assignment via `always_comb` to scalar members within an SVI.
// Array of SVIs

interface I;

  localparam bit Z = 1'b0;

  logic x;
  logic y;
  logic z;

  always_comb z = Z;      // Constant
  always_comb y = 1'b1;   // Literal
  always_comb x = z;      // Signal

endinterface
  
module M
  ( I u_I1
  );
  
endmodule
  
module top;
    
  I u_I2 ();
  M u_M 
    ( .u_I1(u_I2)
    );
  
endmodule