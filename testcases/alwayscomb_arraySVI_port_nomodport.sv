// Assignment via `always_comb` from scalar members of an SVI array's elements
// to a module array SVI port, without a modport.
// TODO: Note where are the interesting assignments. (lines, signal names)

localparam int SIZE = 8;


interface I;

  logic x;
  logic y;
  logic z;

endinterface


module M
  ( I ifc_I [SIZE-1:0] // TODO: Why use unpacked range instead of a size?
  );

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
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );

  I u_I [SIZE-1:0] (); // TODO: Why use unpacked range instead of a size?

  M u_M
    ( .* // TODO: Why is this a wildcard connection to `u_I`?
    );

  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
