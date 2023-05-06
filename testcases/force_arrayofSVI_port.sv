// Assignment via `force` to scalar members of an SVI instance.
// Array of SVIs


// Output a vector (SVI 1D array instance) of 0's,1's,z's

interface I;
  logic z;
  
  modport P
    ( input z
    );
endinterface

module M
  ( I u_I[7:0]
  , output logic [7:0] o_a
  , input bit en
  , input var logic i_a
  );

  for (genvar i = 0; i < 8; i++)
    assign u_I[i].z = i_a;

  for (genvar i = 0; i < 8; i++) begin
    always_comb
      if (en)
       force u_I[i].z = 1'bz;
     else
       release u_I[i].z;
  end

  for (genvar i =0; i < 8; i++)
    assign o_a[i] = u_I[i].z;
  
endmodule

module top
  ( input bit en
  , input var logic i_a
  , output logic [7:0] o_a
  );

 I u_I [7:0]();

 M u_M 
  ( .u_I(u_I.P) // use modport view P
  , .o_a(o_a)
  , .en(en)
  , .i_a(i_a)
  );

endmodule
