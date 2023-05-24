// Task defined in a module; use of extern to export task to interface.
// Call task in combinational block.
// adder method called in another module.

interface I;
  extern task adder (input int i_a, i_b, output int o_a); // Export task.
  modport P
    ( import task adder (input int i_a, i_b, output int o_a)
    );
endinterface

module M1;
 
  task adder (input int i_a, i_b, output int o_a); // Define task.
    o_a = i_a + i_b;
  endtask

endmodule

module M2
  ( I.P p
  , input int i_a
  , input int i_b
  , output int o_a
  );

  always_comb p.adder(i_a,i_b,o_a); // Perform addition operation.

endmodule

module top
  ( input int i_a
  , input int i_b
  , output int o_a
  );

  I u_I ();
  M1 u_M1 ();
  M2 u_M2
    ( u_I //Access task from modport.
    , i_a
    , i_b
    , o_a
    );
endmodule
