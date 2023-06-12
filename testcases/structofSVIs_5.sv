// NOTE: Lines 19 and 21.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic o_a
  );

  struct 
    { I u_I;
    } st_Ifc;

  always_comb st_Ifc.u_I.x = i_a;
  
  assign o_a = st_Ifc.u_I.x;

endmodule
