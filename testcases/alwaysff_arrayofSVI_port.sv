// Assignment via `always_ff` to scalar members of an SVI port.
// Array of SVIs

`define duplicate 8

interface I;
  timeunit 1ns;
  timeprecision 1ps;
  
  logic z;
  logic y;
  logic x;

  modport P
    ( output x 
    , output y 
    , output z 
    );

endinterface

module M
  ( I.P p [`duplicate-1:0]
  , input logic i_clk
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic [`duplicate-1:0] a;
  logic [`duplicate-1:0] b;
  logic [`duplicate-1:0] c;
  
  for (genvar i=0; i<`duplicate; i++) begin
    always_comb p[i].x = a[i];
    always_comb p[i].y = b[i];
    always_comb p[i].z = c[i];
  end
  
  always_ff @(posedge i_clk) begin
      for (int i=0;i<`duplicate;i++)begin
        a[i] <= 1'b1;
        b[i] <= 1'b0;  
        c[i] <= 1'b1; 
    end
  end

endmodule


module top
  ( input logic i_clk
  , output logic [`duplicate-1:0] o_a
  , output logic [`duplicate-1:0] o_b
  , output logic [`duplicate-1:0] o_c
  ); 
  timeunit 1ns;
  timeprecision 1ps;
  
  I u_I [`duplicate-1:0] ();
  M u_M
    ( .p(u_I)
    , .i_clk 
    );
    
  for (genvar i=0;i<`duplicate;i++)begin
    assign o_a[i] = u_I[i].x;      
    assign o_b[i] = u_I[i].y;  
    assign o_c[i] = u_I[i].z;    
  end

endmodule
