/* This testcase is from the paper
SystemVerilog Assertions Are For Design Engineers Too!
SNUG San Jose 2006, Page 5
*/
// The example has been modified.

interface I;
  logic z;
endinterface

module top 
  ( input logic i_a
  , input logic i_b
  , output logic o_a
  );
  
  I u_I ();
  always_comb begin
    assert final (^u_I.z !== ’x) 
      else $error("u_I.z = X");
    if (u_I.z)
      o_a = i_a;
    else
      o_a = i_b;
  end
endmodule
