// Assignment via `always_ff` to an unpacked array of an interface modport.
// Use `foreach` loop to iterate through array elements.
// Generic interface with modport.

interface I;

  logic x [7:0]; // Unpacked array x

  modport P
    ( output x
    );
  
endinterface


module M
  ( interface j // Generic interface.
  , input logic i_a
  , input logic i_clk
  , output logic o_a [8]
  );

  always_ff @ (posedge i_clk)
    foreach (j.x[i])
      j.x[i] <= i_a; 
  
  assign o_a = j.x;
  
endmodule

module top 
  ( input logic i_a
  , input logic i_clk
  , output logic o_a [8]
  );

  I u_I (); // Interface instance.

  M u_M 
   ( .j(u_I)  /* A named port is required for generic interfaces.
   The modport view is excluded in this testcase */
   , .*
   );

endmodule

