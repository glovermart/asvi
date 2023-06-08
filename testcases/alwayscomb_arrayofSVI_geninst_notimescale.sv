/* Assignment via `always_comb` from scalar members of an SVI array's elements
 to a generate-loop of module non-array SVI port. */
// No timescale keywords (timeunit and timeprecision) are used in this testcase.
// NOTE: Lines 54, 56, 65, 66, 75, and 76.

localparam int SIZE = 8;


interface I;

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

  I u_I [SIZE-1:0] ();

  logic a1;
  logic b1;

  logic a;
  logic b;

  logic [SIZE-1:0] a_q;
  logic [SIZE-1:0] b_q;

  // A generate loop scheme without generate and endgenerate keywords.
  // Several instances of module M to each element of the interface vector.
  for (genvar i = 0; i < SIZE; i++) begin
    M u_M
      ( .u_I    (u_I[i]) // Port connection for each 'array' element of the interface.
      , .i_clk  (i_clk)
      , .o_a    (a1)
      , .o_b    (b1)
      );
  end

  /* Intermediate assignment to allow use of
  procedural loop construct (for loop with int) instead of genvar.*/
  always_comb a = a1;
  always_comb b = b1;

  // Observe output assignments per clock cylce during simulation.
  /* A generate loop could have been used instead but
  outputs will not be obeserved per clock cycle */
  /* A generate loop gets evaluated before simulation time. Outputs get assigned
  before simulation start. See concept of Delta Cycle Simulation and LRM 27.4 */
  always_ff @(posedge i_clk)
    for (int i = 0; i < SIZE; i++) begin
      a_q[i] <= a;
      b_q[i] <= b;
    end

  assign o_a = a_q;
  assign o_b = b_q;

endmodule
