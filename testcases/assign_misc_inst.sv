// Assignment via `assign` to scalar members of an SVI instance.
// For each module, an instance of the same interface.

interface I;

 logic z;
 logic y;
 logic x;

endinterface

module M1
 ( I u_I1
 );
 logic a = 1'bz;
 localparam bit Z = 1'b0;
 assign u_I1.z = Z;      // Constant
 assign u_I1.y = 1'b1;   // Literal
 assign u_I1.x = a;      // Signal
endmodule

module M2
 ( I u_I2
 );
 logic a;
 localparam bit Z = 1'b0;
 assign u_I2.z = Z;      // Constant
 assign u_I2.y = 1'b1;   // Literal
 assign u_I2.x = a;      // Signal
endmodule

module M3
 ( I u_I3
 );
 logic a;
 localparam bit Z = 1'b0;
 assign u_I3.z = Z;      // Constant
 assign u_I3.y = 1'b1;   // Literal
 assign u_I3.x = a;      // Signal
endmodule

module M4
 ( I u_I4
 );
 logic a;
 localparam bit Z = 1'b0;
 assign u_I4.z = Z;      // Constant
 assign u_I4.y = 1'b1;   // Literal
 assign u_I4.x = a;      // Signal
endmodule

module top;
 I u_I5();
 M1 u_M1 (.u_I1(u_I5));
 M2 u_M2 (.u_I2(u_I5));
 M3 u_M3 (.u_I3(u_I5));
 M4 u_M4 (.u_I4(u_I5));

endmodule
