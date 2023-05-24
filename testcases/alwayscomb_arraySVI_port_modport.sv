// Assignment via `always_comb` from scalar members of an SVI array's elements
// to a module array SVI port, with a modport.
// TODO: Note where are the interesting assignments. (lines, signal names)

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
  ( I.P p [SIZE] // TODO: Why use unpacked size instead of a range?
  );

  logic a = 1'b0; // TODO: Is this a valid assignment?
  logic b = 1'b1; // TODO: Is this a valid assignment?
  logic c;

  // TODO: Why not show constant/literal/signal like
  // alwayscomb_arraySVI_port_nomodport?
  for (genvar i = 0; i < SIZE; i++) begin
    always_comb p[i].x = a;
    always_comb p[i].y = b;
    always_comb p[i].z = c;
  end

endmodule


module top
  ( input  logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  , output logic [SIZE-1:0] o_c
  );

  I u_I [SIZE] (); // TODO: Why use unpacked size instead of a range?

  M u_M
    ( .p  (u_I)
    );

  for (genvar i = 0; i < SIZE; i++) begin
    assign o_a[i] = u_I[i].x;
    assign o_b[i] = u_I[i].y;
    assign o_c[i] = u_I[i].z;
  end

endmodule
