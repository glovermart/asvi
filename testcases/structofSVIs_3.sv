// NOTE: Line 13.

interface I;

  logic x;

endinterface


module top; 
  
   struct
    { I u_I (); // Interface instance with parenthesis.
    } st_Ifc;

endmodule
