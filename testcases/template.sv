// Short description that fits entirely on the first line.

/* NOTES:
- Short description always on the first line, always beginning with `//`.
  This allows you to see a summary of your testcases with:
      head -n1 testcases/*.sv
- All components of the testcase in one file.
- Hard break lines at 80 characters.
- Whitespace:
  - Unix line endings (LF), not Windows line endings (CRLF)
  - POSIX-compatible final line.
  - No tab characters; Only spaces allowed.
  - No trailing whitespace.
- Naming convention:
  - Module name: `M`
    - Extension: `M1`, `M2`, ...
    - Top module (Including testcases with a single module only): `top`
  - Interface name: `I`
    - Extension: `I1`, `I2`, ...
  - Modport name: `P`
    - Extension: `P1`, `P2`, ...
  - Module instance: `u_M`
    - Extension: `u_M1`, `u_M2`, ...
  - Interface instance: `u_I`
    - Extension: `u_I1`, `u_I2`, ...
  - Signals within modules: `a`, `b`, `c`, ...
    - Extension: `a1`, `a2`, ..., `b1`, `b2`, ...
  - Signals within interfaces: `z`, `y`, `x`, ...
    - Extension: `z1`, `z2`, ..., `y1`, `y2`, ...
  - Signal ports: `i_a`, `i_b`, `o_a`, `o_b`, `b_a`, `b_b`, ...
    - Exceptions: `i_clk`, `i_srst`, `i_arst`, `i_cg`
  - Parameter ports: `A`, `B`, `C`, ...
  - Constants (localparam): `Z`, `Y`, `X`, ...
*/

// This example is equivalent to `alwayscomb_inst.sv`
interface I;

  logic z;
  logic y;
  logic x;

endinterface

module top;
                                        // 1st section is setup.
  localparam bit Z = 1'b0;
  logic a;
  I u_I();
                                        // 2nd section is the interesting part.
                                        // Each assignment is commented.
  always_comb u_I.z = Z;      // Constant
  always_comb u_I.y = 1'b1;   // Literal
  always_comb u_I.y = a;      // Signal

endmodule
