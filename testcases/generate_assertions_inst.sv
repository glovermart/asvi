/* Runtime time assertion experiment using a generate block within an
interface.

This testcase is modified from "Who Put Assertions In My RTL Code? And Why?
How RTL Design Engineers Can Benefit from the Use of SystemVerilog Assertions"
by Stuart Sutherland, SNUG 2015.
Example 17, Page 16.
*/

localparam int MUX_CONFIG = 1;


interface I
  #(parameter int S = MUX_CONFIG
  );

  initial
    if (S inside {1, 2})
      $error("In %m S=%0d; must not be 1 or 2", S);

endinterface


module top ();

  I u_I ();

endmodule
