// Assignment via `always_latch` to scalar members of an SVI port.
// Array of SVIs
// Using modports, output 'y' from module M1 is an input to module M2.
// Modules M1 and M2 now with en and arst pins conected directly to 
// top module pins.

localparam int SIZE = 8;


interface I;
  
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
  ( I.P1 p1[SIZE-1:0]
  , output logic [SIZE-1:0]o_a
  , output logic en
  , output logic i_arst
  );
  
  for(genvar i =0; i< SIZE;i++) begin
    always_comb p1[i].x = 1'b1;
    always_latch begin
      if (!i_arst)
        p1[i].y <= 1'b0;
      else if (en)
        p1[i].y <= p1[i].x;
    end
    assign o_a[i] = p1[i].y;
  end

endmodule


module M2
  ( I.P2 p2[SIZE-1:0]
  , output logic [SIZE-1:0]o_b
  , output logic en
  );

  for(genvar i = 0; i < SIZE; i++) begin
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
  , output logic [SIZE-1:0]o_a 
  , output logic [SIZE-1:0]o_b
  );
  
  I u_I [SIZE-1:0] ();

  M1 u_M1
    ( .p1(u_I)
    , .o_a(o_a)
    , .en
    , .i_arst 
    );

  M2 u_M2
    ( .p2(u_I)
    , .o_b(o_b)
    , .en
    );

endmodule
