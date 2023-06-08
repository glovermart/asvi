/* Assignment via `always_comb` from scalar members of an SVI array's elements
 to a generate-loop of module non-array SVI port. */
// Demonstrate the use of timescale keywords.
// NOTE: Lines 11, 12, 33, 34, 52, and 53.

localparam int SIZE = 8;


interface I;

  timeunit 1ns;
  timeprecision 1ps;
  // Alternative: `timescale 1ns/ 1ps
  // IEEE Std 1800-2017 clause 3.14.2.2, page 57

  logic x;
  logic y;

  always_comb x = 1'b0; // Literal
  always_comb y = 1'b1; // Literal

endinterface


module M
  ( I u_I
  , input  logic i_clk
  , output logic o_a
  , output logic o_b
  );

  // Timescale keywords must be replicated in all modules and interfaces.
  timeunit 1ns;
  timeprecision 1ps;

  always_ff @(posedge i_clk)
    o_a <= u_I.x; // Signal

  always_ff @(posedge i_clk)
    o_b <= u_I.y; // Signal

endmodule


module top
  ( input  logic i_clk
  , output logic [SIZE-1:0] o_a
  , output logic [SIZE-1:0] o_b
  );

  // Timescale keywords must be replicated in all modules and interfaces.
  timeunit 10ns; // Timeunit does not match other declared timenuits.
  timeprecision 1ns;

  I u_I [SIZE-1:0] ();

  logic a1;
  logic b1;

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

  // Use procedural loop block - observe value assignments per clock cycle.
  // Generate blocks get evaluated during elaboration time.
  always_ff @(posedge i_clk) begin
    for (int i = 0; i < SIZE; i++)
      a_q[i] <= a;
      b_q[i] <= b;
  end

  assign o_a = a_q;
  assign o_b = b_q;

endmodule
