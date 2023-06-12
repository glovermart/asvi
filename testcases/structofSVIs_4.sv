// NOTE: Lines 19 to 23.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic o_a
  );

  I u_I ();

  always_comb u_I.x = i_a;

  struct 
    { I u_I;
    } st_Ifc;

  assign o_a = st_Ifc.u_I.x;

endmodule
