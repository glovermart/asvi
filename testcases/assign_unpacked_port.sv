// Assignment via `assign` to an unpacked array of an interface port.
// Writing to an output modport using assign

interface I;

  logic x [7:0]; 
  
  modport P
    ( output x 
    );
endinterface

module M
  ( I.P p
  , input logic  i_a
  );

  for (genvar i = 0; i < 8 ; i++) // Genvar/generate block - loop scheme.
     assign p.x[i] = i_a;

endmodule

module top
  ( input logic i_a
  , output logic o_a [7:0] // Unpacked array
  );

  I u_I ();
  M u_M
    ( .i_a
    , .p(u_I)
    );
  
  assign o_a = u_I.x; // Output copy.

endmodule
