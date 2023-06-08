// Assignment via `always_comb` from scalar members of an SVI array's elements
// to a module array SVI port, without a modport.
// NOTE: Lines 18, 28, and 41.

localparam int SIZE = 8;


interface I;

  logic x;
  logic y;
  logic z;

endinterface


module M
  ( I ifc_I [SIZE-1:0] // Unpacked array sizes may be declared using a range.
  );                   // Applying same syntax to interfaces.

  localparam bit Z = 1'b0;

  logic a;

  for (genvar i = 0; i < SIZE; i++) begin
    always_comb ifc_I[i].x = Z;      // Constant
    always_comb ifc_I[i].y = 1'b1;   // Literal
    always_comb ifc_I[i].z = a;      // Signal
  end

endmodule


module top
  ( input  logic i_clk
  , output logic [SIZE-1:0] o_a // Packed array.
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );

  I u_I [SIZE-1:0] ();

  M u_M
    ( .ifc_I (u_I) // Named port connection. Ports have different names.
    );

  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
