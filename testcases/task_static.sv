// Task in an interface.
// Call task in combinational block.
// Declare task as static.

interface I;

  task static adder (input int i_a, i_b, output int o_a);
    o_a = i_a + i_b;
  endtask

endinterface


module top
  ( input int i_a
  , input int i_b
  , output int o_a
  );

  I u_I ();

  always_comb u_I.adder(i_a,i_b,o_a);

endmodule
