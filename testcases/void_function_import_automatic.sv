// 2 function definitions within an interface.
// Call functions in combinational block.
// Use of modport with import keyword.
// Declared functions as automatic.

interface I;

  function automatic void adder (input int i_a, i_b, output int o_a); // Define function 1.
    o_a = i_a + i_b;
  endfunction

  function automatic void subtractor (input int i_a, i_b, output int o_b); // Define function 2.
    o_b = i_a - i_b;
  endfunction

  modport P1
    ( import adder
    );
  modport P2
    ( import subtractor
    );

endinterface

module M1
  ( I.P1 p1
  , input int i_a
  , input int i_b
  , output int o_a
  );

  always_comb p1.adder(i_a,i_b,o_a); // Call the adder function.
endmodule

module M2
  ( I.P2 p2
  , input int i_a
  , input int i_b
  , output int o_b
  );

  always_comb p2.subtractor(i_a,i_b,o_b); // Call the subtractor function.
endmodule

module top
  ( input int i_a
  , input int i_b
  , output int o_a
  , output int o_b
  );

I u_I ();
M1 u_M1
  ( .p1(u_I)
  , .*
  );

M2 u_M2
  ( .p2(u_I)
  , .*
  );
endmodule
