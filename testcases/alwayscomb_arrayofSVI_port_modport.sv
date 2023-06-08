// Assignment via `always_comb` from scalar members of an SVI array's elements
// to a module array SVI port, with a modport.
// NOTE: Lines 24, 27, 28, 32, and 33.

localparam int SIZE = 8;


interface I;

  logic x;
  logic y;
  logic z;

  modport P
    ( output x
    , output y
    , output z
    );

endinterface


module M
  ( I.P p [SIZE] // SystemVerilog allows C-style declaration of array size
  );             // for unpacked arrays. Applying same syntax for interfaces.

  logic a = 1'b0; // Assigning values to signals without procedural blocks or
  logic b = 1'b1; // continuous assignments.
  logic c;

  for (genvar i = 0; i < SIZE; i++) begin
    always_comb p[i].x = a; // Signal
    always_comb p[i].y = b; // Signal
    always_comb p[i].z = c; // Signal
  end

endmodule


module top
  ( input  logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );

  I u_I [SIZE] ();

  M u_M
    ( .p  (u_I)
    );

  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
