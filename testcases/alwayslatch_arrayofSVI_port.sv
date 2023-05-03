// Assignment via `always_latch` to scalar members of an SVI port.
// Array of SVIs
// Using modports, output 'y' from module M1 is an input to module M2

`define V 8

interface I
  ( input logic arst
  , input logic en
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic y;
  logic x;
  logic w;

  modport P1
    ( input x
    , output y
    );

  modport P2
    ( input y
    , output w
    );

endinterface

module M1
  ( I.P1 p1[`V-1:0]
  , output logic [`V-1:0]o_a
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic en;
  logic rst;


  I u_I 
    ( .arst(rst)
    , .en
    );
  
  for(genvar i =0; i< `V;i++) begin
    always_comb p1[i].x = 1'b1;
    always_latch begin
      if (!rst)
        p1[i].y <= 1'b0;
      else if (en)
        p1[i].y <= p1[i].x;
    end
  assign o_a[i] = p1[i].y;
  end

endmodule

module M2
  ( I.P2 p2[`V-1:0]
  , output logic [`V-1:0]o_b
  );
  timeunit 1ns;
  timeprecision 1ps;
  
  logic en;

  I u_I 
    ( 
    .en
    );

  for(genvar i =0; i< `V;i++) begin
    always_latch begin
     if (en)
       p2[i].w <= p2[i].y;
    end
  assign o_b[i] = p2[i].w;
  end

endmodule



module top
  ( input logic en
  , input logic i_clk
  , input logic i_arst
  , output logic [`V-1:0]o_a 
  , output logic [`V-1:0]o_b
  );

  timeunit 1ns;
  timeprecision 1ps;

  logic [`V-1:0] a_a;
  logic [`V-1:0] b_b;
  
  I u_I [`V-1:0]
    ( .arst(i_arst)
    , .en(en)
    );

  M1 u_M1
    ( .p1(u_I)
    , .o_a(a_a)
    );

  M2 u_M2
    ( .p2(u_I)
    , .o_b(b_b)
    );

  int i =0;
  always_ff @(posedge i_clk ) begin
    if (i >= `V )
      i <= 0;
    else begin
      o_a[i] <= a_a[i];
      o_b[i] <= b_b[i];
      i++;
    end
  end

endmodule
