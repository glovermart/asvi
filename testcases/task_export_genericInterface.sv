// Task defined in a module; use of export to export task to interface.
// Call task in combinational block.
// adder method called in another module.
// NOTE: Lines : 9, 13, 20, 23, 31 and 37.

interface I;

  modport P1
    ( import task adder (input int i_a, i_b, output int o_a)
    );

  modport P2
    ( export adder
    );

endinterface


module M1
  ( interface j
  );

  task j.adder (input int i_a, i_b, output int o_a); // Define task.
    o_a = i_a + i_b;
  endtask

endmodule


module M2
  ( interface i // Generic interface.
  , input int i_a
  , input int i_b
  , output int o_a
  );

  always_comb i.adder(i_a,i_b,o_a); // Perform addition operation.

endmodule


module top
  ( input int i_a
  , input int i_b
  , output int o_a
  );

  I u_I ();

  M1 u_M1
    ( u_I.P2
    );

  M2 u_M2
    ( u_I.P1
    , i_a
    , i_b
    , o_a
    );

endmodule
