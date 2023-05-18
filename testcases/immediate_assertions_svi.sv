/* This testcase is from the paper
SystemVerilog Assertions Are For Design Engineers Too!
SNUG San Jose 2006, Page 5
*/
// Assertion within an interface.

interface I
  ( input logic i_a
  , input logic i_b
  , output logic o_a
  );
  logic z;
  
  always_comb begin
    assert final (^z !== ’x)
      else $error("z = x");
    if (z)
      o_a = i_a;
    else
      o_a = i_b;
  end
endinterface

module top
  ( input logic i_a
  , input logic i_b
  , output logic o_a
  );

  I u_I 
    ( .*
    );
  
endmodule

