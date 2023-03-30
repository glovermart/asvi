//Assignment via `assign` to scalar members of an SVI port.
//Array of SVIs

interface I;

 logic y;
 logic x;
 logic z;
 logic w;

 modport P1
  ( input y
  , input x
  );

 modport P2
  ( output z
  , output w
  );

endinterface

module M1
 ( I.P1 p1
 , I.P2 p2
 );
 assign p2.z = p1.y & p1.x;
 assign p2.w = p1.y ^ p1.x;

endmodule

module M2
 ( I.P1 p1
 , output o_a
 , output o_b
 );
 assign o_a = p1.y & p1.x;
 assign o_b = p1.y ^ p1.x;

endmodule

module top
 ( I u_I);

 M1 u_M1
  ( .p1(u_I.P1)
  , .p2(u_I.P2)
  );

 M2 u_M2
 ( .p1(u_I.P1)
 );


endmodule
