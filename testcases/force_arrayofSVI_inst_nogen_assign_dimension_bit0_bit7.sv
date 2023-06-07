// Assignment via `force` to scalar members of an SVI instance.
// Array of SVIs
// Output a vector (SVI 1D array instance) of 0's,1's,z's

interface I;
  
  logic z;

endinterface


module top
  ( input bit en
  , input var logic i_a
  , output logic o_a [7:0] 
  );

  I u_I [7:0]();
 
  for (genvar i = 0; i < 8; i++)
    assign u_I[i].z = i_a;

  for (genvar i = 0; i < 8; i++) begin 
    always_comb
      if (en)
        force u_I[i].z = 1'bz;
      else
        release u_I[i].z;
  end

  // Copy to output pin using assign construct(no generate block/loop scheme).
  assign o_a[0] = u_I[0].z;
  assign o_a[1] = u_I[1].z;
  assign o_a[2] = u_I[2].z;
  assign o_a[3] = u_I[3].z;
  assign o_a[4] = u_I[4].z;
  assign o_a[5] = u_I[5].z;
  assign o_a[6] = u_I[6].z;
  assign o_a[7] = u_I[7].z;

endmodule
