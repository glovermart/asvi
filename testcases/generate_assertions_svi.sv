/* Runtime time assertion experiment using a generate block plus
functionality within an interface.
This testcase is modified from "Who Put Assertions In My RTL Code? And Why?
How RTL Design Engineers Can Benefit from the Use of SystemVerilog Assertions"
by Stuart Sutherland, SNUG 2015.
Example 17, Page 16.
*/

localparam int MUX_CONFIG_S = 1;
localparam int MUX_CONFIG_N = 8;

interface I
  #(parameter int N = MUX_CONFIG_N
  , parameter int S = MUX_CONFIG_S
  )
  ( output logic  [N-1:0] o_y
  , input logic   [N-1:0] i_a, i_b // i_a and i_b should always be connected
  , input tri0    [N-1:0] i_c, i_d // i_c and i_d pull down if unconnected
  , input logic   [S-1:0] i_sel
  );

  initial
    if (!(S inside {[1:2]}))
      $error("In %m S=%0d; must be 1 or 2", S);

  always_comb begin
    case (i_sel)
      2'b00: o_y = i_a;
      2'b01: o_y = i_b;
      2'b10: o_y = i_c;
      2'b11: o_y = i_d;
    endcase
  end

endinterface


module top // 2:1 MUX (S == 1) or 4:1 MUX (S == 2)
  #(parameter int N = MUX_CONFIG_N
  , parameter int S = MUX_CONFIG_S
  )
  ( output logic  [N-1:0] o_y
  , input logic   [N-1:0] i_a, i_b // i_a and i_b should always be connected
  , input tri0    [N-1:0] i_c, i_d // i_c and i_d pull down if unconnected
  , input logic   [S-1:0] i_sel
  );

  I u_I
    ( .*
    );

endmodule
