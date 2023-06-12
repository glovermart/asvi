// Unpacked array of interfaces.

interface I;

  logic x;

endinterface


module top 
  ( input logic i_a
  , output logic [7:0] o_a
  );

  logic [7:0] a;
  
  I u_I1 ();
  I u_I2 ();
  I u_I3 ();
  I u_I4 ();
  I u_I5 ();
  I u_I6 ();
  I u_I7 ();
  I u_I8 ();

  always_comb u_I1.x = i_a;
  always_comb u_I2.x = i_a;
  always_comb u_I3.x = i_a;
  always_comb u_I4.x = i_a;
  always_comb u_I5.x = i_a;
  always_comb u_I6.x = i_a;
  always_comb u_I7.x = i_a;
  always_comb u_I8.x = i_a;

  always_comb a = '{ u_I1
                   , u_I2
                   , u_I3
                   , u_I4
                   , u_I5
                   , u_I6
                   , u_I7
                   , u_I8
                   };

  assign o_a = a;

endmodule
