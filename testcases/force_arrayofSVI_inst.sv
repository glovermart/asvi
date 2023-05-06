// Assignment via `force` to scalar members of an SVI instance.
// Array of SVIs


// Output a vector (SVI 1D array instance) of 0's,1's,z's

interface I;
  logic z;
endinterface


module top
  ( input bit en
  , input var logic i_a
  , output logic [7:0] o_a
  );

 I u_I [7:0]();
 
 for (genvar i = 0; i < 8; i++)
   always_comb u_I[i].z = i_a; /*`always_comb` changes simulation behaviour;
     `assign` works as expected */

 for (genvar i = 0; i < 8; i++) begin 
   always_comb
    if (en)
      force u_I[i].z = 1'bz;
    else
      release u_I[i].z;
 end

 // Copy to output pin using assign construct and generate block/loop scheme.
 for (genvar i = 0; i < 8; i++)
   assign o_a[i] = u_I[i].z;

endmodule
