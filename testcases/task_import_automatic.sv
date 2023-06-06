// Task in an interface.
// Call task in combinational block.
// Use of modport and import keywords.
// Declare task as automatic.

interface I;

  task automatic adder (input int i_a, i_b, output int o_a); // Define task.
    o_a = i_a + i_b;
  endtask

  modport P
    ( import adder
    );

endinterface


module M
  ( I.P p
  , input int i_a
  , input int i_b
  , output int o_a
  );

  always_comb p.adder(i_a,i_b,o_a); // Instantiate  task.

endmodule


module top
  ( input int i_a
  , input int i_b
  , output int o_a
  );

  I u_I ();

  M u_M
    ( .p   (u_I)
    , .*
    );

endmodule
