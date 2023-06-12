// NOTE: Lines 13 and 14.

interface I;

  logic x;

endinterface


module top; 
  
   struct
    { I u_I1; // 1st Struct member.
    , I u_I2; // 2nd Struct member.
    } st_Ifc;

endmodule
