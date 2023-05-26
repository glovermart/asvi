// Assignment via `always_latch` to scalar members within an SVI interface.
// Array of SVIs

localparam int SIZE = 8;


interface I
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic o_a
  , output logic o_b
  );

  logic y;

  /* variable z manipulated by module M, depending on value of variable y */
  logic z; 

  always_latch
    if (!i_arst)
      y <= 1'b0;
    else if (en)
      y <= i_a;

  assign o_a = y;
  assign o_b = z;
  
endinterface


module M
  ( I u_I [SIZE-1:0]
  );
  
  logic b = 1'b1;
  
  for(genvar i=0; i < SIZE; i++)
    assign u_I[i].z = u_I[i].y & b;
 
endmodule


module top
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );
  
  I u_I [SIZE-1:0]
    ( .i_arst
    , .en
    , .i_a
    );
  
  //Multiple instances of M
  for(genvar i = 0; i < SIZE; i++)
  M u_M 
    (.u_I
    );
    
  for(genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].o_a;
    assign o_b[i] = u_I[i].o_b;
  end
endmodule
