// Assignment via `always_latch` to scalar members within an SVI.
// Array of SVIs

interface I
  ( input logic i_clk
  , input logic i_arst
  , input var logic x
  , output var logic y
  );
 
 always_latch
  if (!i_arst)
    y <= 1'b0;
  else if (i_clk)
    y <= x;
 endinterface
 
 module M1
   ( I u_I
   , output logic y
   );
 
   always_ff @(posedge u_I.i_clk) begin
    u_I.x <= 1'b1;
    y <= u_I.y;
   end
 
 endmodule
 
 module M2
   ( I u_I
   , output logic y
   , input var logic x
   );
   M1 u_M1 (.*);
   always_ff @(posedge u_I.i_clk) begin
    x <= u_M1.y;
    y <= u_I.y;
   end
 
 endmodule
 
 module M3
   ( I u_I
   , output logic y
   , input var logic x
   );
   M2 u_M2 (.*);
   always_ff @(posedge u_I.i_clk) begin
     x <= u_M2.y;
     y <= u_I.y;
    end
 endmodule
 
 module M4
   ( I u_I
   , output logic y
   , input var logic x
   );
   M3 u_M3 (.*);
   always_ff @(posedge u_I.i_clk) begin
     x <= u_M3.y;
     y <= u_I.y;
    end
 
 endmodule
 
 module top
  ( input logic i_clk
  , input logic i_arst
  , output logic y
  , input var logic x
  );
 
   I u_I(.*);
   M4 u_M4 (.u_I(u_I));
   always_ff @(posedge u_I.i_clk) begin
     x <= u_M4.y;
     y <= u_I.y;
    end
 
 endmodule
 