// Assignment via `force` to scalar members of an SVI port.
// Array of SVIs

interface I;
 logic [7:0] z;
 logic [7:0] y;

 modport P1
  ( input z
  , input y
  );

 modport P2
  ( output z
  , output y
  );

endinterface


module M1
 ( I u_I
 , output logic [7:0] o_a1
 );
  logic [7:0] a1;
  always_comb a1 = u_I.z + u_I.y;
  assign o_a1 = a1;

endmodule

module M2
 ( I u_I
 , input logic [7:0] i_a2
 , input logic [7:0] i_b2
 );
  logic [7:0] a2;
  logic [7:0] b2;

  always_comb a2 = i_a2 ^ 8'h4;
  always_comb b2 = i_b2 ^ 8'h4;

  assign u_I.z = a2;
  assign u_I.y = b2;

endmodule

module top
 ( input logic [7:0] i_a
 , input logic [7:0] i_b
 , input logic i_srst
 , output logic [7:0] o_c
 );

 I u_I();
 M1 u_M1
  ( u_I.P1
  );

 M2 u_M2
  ( u_I.P2
  );

 logic [7:0] b;
 logic [7:0] c;

 always_comb b = i_a;
 always_comb c = i_b;

 always_comb force u_M2.i_a2 = i_srst ? 8'hxx : b;
 always_comb force u_M2.i_b2 = i_srst ? 8'hxx : c;

 logic [7:0] a;
 always_comb a = u_M1.o_a1;
 assign o_c = a;

endmodule
