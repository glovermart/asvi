// Assignment via `always_latch` to scalar members within an SVI interface.
// Array of SVIs

localparam Size = 8;

interface I
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic o_a
  , output logic o_b
  );

  logic y;
  logic x;
  
  /* variable z manipulated by module M, depending on value of variable y */
  logic z; 

  always_latch x = i_a; // always_comb should be used here ordinarily

  always_latch
    if (!i_arst)
      y <= 1'b0;
    else if (en)
      y <= x;

  assign o_a = y;
  assign o_b = z;

endinterface

module M
  ( I u_I [Size-1:0]
  );
  
  logic b = 1'b1;
  
  for(genvar i=0; i < Size; i++)
    assign u_I[i].z = u_I[i].y & b;
 
endmodule


module top
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic [Size-1:0] o_a
  , output logic [Size-1:0] o_b
  );

  I u_I [Size-1:0]
    ( .i_arst
    , .en
    , .i_a
    );
  
  logic [Size-1:0] a;

  for (genvar i = 0; i < Size; i++) begin
    M u_M 
      (.u_I[i]
      );
  end

  for (genvar i = 0; i < Size; i++) begin
    assign o_a[i] = u_I[i].o_a;
    assign o_b[i] = u_I[i].o_b;
  end

endmodule
