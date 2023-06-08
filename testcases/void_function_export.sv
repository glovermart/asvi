// Function defined in a module; use of export to export function to interface.
// Call function in combinational block.
// adder method called in another module.

interface I;

  modport P1
    ( import function void adder
        ( input int i_a
        , input int i_b
        , output int o_a
        )
    );

  modport P2
    ( export adder
    );

endinterface


module M1
  ( interface j
  );

  function void j.adder
    ( input int i_a
    , input int i_b
    , output int o_a
    );

    o_a = i_a + i_b;

  endfunction

endmodule


module M2
  ( interface i // Generic interface.
  , input int i_a
  , input int i_b
  , output int o_a
  );

  always_comb i.adder(i_a, i_b, o_a); // Perform addition operation.

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
