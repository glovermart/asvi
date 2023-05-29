// Struct defined inside an interface and module.
// Logic within module.
// Struct defined as a wire.

interface I;
   
  wire struct 
    { logic [7:0] data;
    } data;
 
endinterface


module top
  ( input logic i_clk
  , output logic [7:0] o_a
  );
  
  I u_I ();
  
  always_ff @(posedge i_clk)
    u_I.data.data <= '1;
  
  assign o_a = u_I.data; // struct name only

endmodule
