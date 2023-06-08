// Assignment via `force` to scalar members within an SVI.
// In module M, changed always_ff procedural blocks to always_comb.

interface I
  ( input var logic i_srst
  );

  logic z;
  logic y;
  logic x;

  always_comb
    force z = i_srst ? (x & y) : (x | y);

endinterface


module M
  ( I u_I
  , output logic o_a
  );

  logic a;

  always_comb u_I.x = 1'b0;

  always_comb u_I.y = 1'b1;

  always_comb a = u_I.z;
  assign o_a = a;

endmodule


module top
  ( input logic i_sclk
  , output logic o_a
  , output logic i_srst
  );

  I u_I
    ( .i_srst  (i_srst)
    );

  M u_M1
    (u_I
    );

  M u_M2
    (u_I
    );

  logic a;
  logic [3:0] counter;

  always_ff @ (posedge i_sclk) begin
    if (i_srst)
      counter <= 0;
    else
      counter <= counter + 4'h1;
    if (counter == 4'hF)
      i_srst <= 1'b1;
  end

  always_comb a = u_M1.o_a || u_M2.o_a;
  assign o_a = a;

endmodule
