// Assignment via `always_comb` to a packed array within an interface.


interface I;
  
  logic [7:0] x;

  always_comb x = '1; //write 1111_1111

endinterface

module top
  ( output logic [7:0] o_a
  );
  I u_I ();
  assign o_a = u_I.x;
endmodule
