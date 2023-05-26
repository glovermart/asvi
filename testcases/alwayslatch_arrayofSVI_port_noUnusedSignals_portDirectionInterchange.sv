// Assignment via `always_latch` to scalar members of an SVI port.
// Array of SVIs

// Using modports, output 'y' from module M1 is an input to module M2.

/* Modules M1 and M2 now with en and arst pins connected directly to 
 top module pins.*/

/* Removed nets not used in modport to avoid inferred connection to 
 to the input or output of other module (M1 or M2).*/
// en and i_arst deliberately defined as ouput instead of input pins.

localparam int SIZE = 8;


interface I;  
  logic y;

  modport P1
    ( 
     output y
    );

  modport P2
    ( input y
    );

endinterface


module M1
  ( I.P1 p1[SIZE-1:0]
  , output logic [SIZE-1:0]o_a
  , output logic en // Must be an input pin.
  , output logic i_arst // Must be an input pin.
  );
    
  for(genvar i = 0; i < SIZE; i++) begin
    always_latch begin
      if (!i_arst)
        p1[i].y <= 1'b0;
      else if (en)
        p1[i].y <= 1'b1;
    end
    assign o_a[i] = p1[i].y;
  end

endmodule

/* A different enable signal may be used in M2 to make en
 independent */ 
 
module M2
  ( I.P2 p2[SIZE-1:0]
  , output logic [SIZE-1:0]o_b
  , output logic en // Must be an input pin.
  );
  
  for(genvar i = 0; i < SIZE; i++) begin
    always_latch
      if (en)
        o_b[i] <= p2[i].y;
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
    ( .p1   (u_I)
    , .o_a  (o_a)
    , .en
    , .i_arst 
    );

  M2 u_M2
    ( .p2   (u_I)
    , .o_b  (o_b)
    , .en
    );

endmodule
