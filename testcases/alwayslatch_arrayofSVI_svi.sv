// Assignment via `always_latch` to scalar members within an SVI interface.
// Array of SVIs

localparam int SIZE = 8;

interface I;
  logic i_arst;
  logic en;
  logic i_a;
  logic y;
  
  /* variable z manipulated by module M, depending on value of variable y */
  logic z; 

  always_latch
    if (!i_arst)
      y <= 1'b0;
    else if (en)
      y <= i_a;
endinterface

module M
  ( output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b  
  );
  I u_I [SIZE-1:0] ();
  logic b = 1'b1;
  
  for(genvar i=0; i < SIZE; i++) begin
    assign u_I[i].z = u_I[i].y & b;
    assign o_a[i] = u_I[i].y;
    assign o_b[i] = u_I[i].z;
  end
 
endmodule


module top
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );

  I u_I ();
  
  assign u_I.i_arst = i_arst;  
  assign u_I.en = en;  
  assign u_I.i_a = i_a;  
  
  M u_M 
    ( .o_a
    , .o_b 
    );

endmodule
