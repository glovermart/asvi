/* This testcase is from the paper
SystemVerilog Assertions Are For Design Engineers Too!
SNUG San Jose 2006, Page 5
*/
// The example has been modified.
// Immediate assertion with modport.

interface I;

  logic z;
  modport P
    (input z
    );

endinterface


module M
  ( I.P p
  , input logic i_a
  , input logic i_b
  , output logic o_a
  );

  always_comb begin
    assert final (^p.z !== ’x)
      else $error("p.z = X");
    if (p.z)
      o_a = i_a;
    else
      o_a = i_b;
  end

endmodule


module top
  ( input logic i_a
  , input logic i_b
  , output logic o_a
  );

  I u_I ();

  M u_M
    ( .p(u_I.P)
    , .* // connect pins i_a,i_b, and o_a.
    );

endmodule
