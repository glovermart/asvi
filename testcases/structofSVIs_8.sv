// NOTE: Lines 17, 19, 23, 24, and 26.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  );

  I u_I ();

  always_comb u_I.x = i_a;

  struct packed {
    logic [7:0] a;
    } st_Ifc;
  
  always_comb 
    st_Ifc.a = {8{u_I}};

  assign o_a = st_Ifc.a;

endmodule
