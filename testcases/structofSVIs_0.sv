
interface I;

  logic x;

endinterface


module top; 
  
  typedef struct 
    { I u_I1 ();
    , I u_I2 ();
    , I u_I3 ();
    } st_Ifc;

  st_Ifc st_Ifc;

endmodule
