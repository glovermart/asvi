// Assignment via `always_latch` to scalar members within an SVI interface.
// Array of SVIs

localparam M = 8;

interface I
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic o_a
  );
//  timeunit 1ns;
//  timeprecision 1ps;

  logic y;
  var logic x;
  var logic z;

  always_comb x = i_a;

  always_latch
    if (!i_arst)
      y <= 1'b0;
    else if (en)
      y <= x;
  assign o_a = z;
//  assign o_a = y;

endinterface

module M ;
//  ( output logic o_a
//  );
//  timeunit 1ns;
//  timeprecision 1ps;
  
  logic a;

//  I u_I 
//    ( .o_a(a)
//   (.y(a)  
//   );

  logic b = 1'b1;
  logic c;

  always_comb
//    c = a & b;
     c = u_I.y & b;
  assign u_I.z = c;
//  assign o_a = c;  

endmodule


module top
  ( input logic i_arst
  , input logic en
  , input logic i_a
  , output logic [M-1:0] o_a
  , output logic o_b
  );

  I u_I [M-1:0]
    ( .i_arst
    , .en
    , .i_a
    , .o_a(o_b)
    );
  
  logic [M-1:0] a;

  for (genvar i = 0; i < M; i++)begin
    M u_M 
      (u_I[i]
      );
//    u_M.o_a = a[i];
//    a[i] = u_M.o_a;
  end

endmodule
