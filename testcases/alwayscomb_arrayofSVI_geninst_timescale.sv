// Assignment via `always_comb` from scalar members of an SVI array's elements
// to a generate-loop of module non-array SVI ports, with timescale keywords.
// TODO: Note where are the interesting assignments. (lines, signal names)

localparam int SIZE = 8;


interface I;

  timeunit 1ns;
  timeprecision 1ps;
  // Alternative: `timescale 1ns/ 1ps
  // IEEE Std 1800-2017 clause 3.14.2.2, page 57

  logic x;
  logic y;

  // TODO: Why not show constant/literal/signal?
  always_comb x = 1'b0;
  always_comb y = 1'b1;

endinterface


module M
  ( I u_I
  , input  logic i_clk
  , output logic o_a
  , output logic o_b
  );

  timeunit 1ns;
  timeprecision 1ps;

  // TODO: Why not show constant/literal/signal?
  // TODO: Why are these non-blocking assignments in a sequential block?
  always_ff @(posedge i_clk) begin
    o_a <= u_I.x;
    o_b <= u_I.y;
  end

endmodule


module top
  ( input  logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );

  timeunit 1ns;
  timeunit 10ns; // TODO: Why two `timeunit` statements?
  timeprecision 1ns;

  I u_I [SIZE-1:0] ();

  // TODO: Why `wire logic`? Is `wire` important?
  // NOTE: `logic` is equivalent to `var logic`.
  // NOTE: `wire logic` is equivalent to `tri logic`.
  wire logic a1;
  wire logic b1;

  logic a;
  logic b;

  logic [SIZE-1:0] a_q;
  logic [SIZE-1:0] b_q;

  for (genvar i = 0; i < SIZE; i++) begin
    M u_M
      ( .u_I    (u_I[i])
      , .i_clk  (i_clk)
      , .o_a    (a1)
      , .o_b    (b1)
      );
  end

  always_comb a = a1;
  always_comb b = b1;

  // TODO: Why is a procedural loop used instead of a generate loop?
  always_ff @(posedge i_clk)
    for (int i = 0; i < SIZE; i++) begin
      a_q[i] <= a;
      b_q[i] <= b;
    end

  assign o_a = a_q;
  assign o_b = b_q;

endmodule
