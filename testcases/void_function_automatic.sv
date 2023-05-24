// Function defintion within an interface.
// Call function in combinatorial block.
// Declare function as automatic.

interface I;

  function automatic void adder (input int i_a, i_b, output int o_a); // Define function.
    o_a = i_a + i_b;
  endfunction
endinterface

module top
  ( input int i_a
  , input int i_b
  , output int o_a
  );

  I u_I ();
  always_comb u_I.adder(i_a,i_b,o_a); // Call function.
endmodule
