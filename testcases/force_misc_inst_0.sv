// Assignment via `force` to scalar members of an SVI instance.

interface I;
  logic z;
  bit y;
endinterface


module M1
  ( I u_I
  , input logic i_b 
  );

  assign u_I.z = i_b;

  always_comb
    if (u_I.y == 1'b1)
      force u_I.z = 1'bz;

endmodule

module M2
  ( I u_I
  );

  always_comb
    if (u_I.y == 1'b0)
      release u_I.z;

endmodule

module top
  ( output logic o_a
  , input logic i_clk
  );

  I u_I ();
  M1 u_M1 (.u_I(u_I));
  M2 u_M2 (.u_I(u_I));

  always_ff @(posedge i_clk) begin
    o_a <= u_I.z;
    u_M1.i_b <= 1'b1;
  end

  logic  [2:0] counter;
  
  always_ff @(posedge i_clk) begin
    counter <= counter + 3'h1;
    if (counter == 3'h5) begin
      u_I.y <= 1'b1;
      counter <= 0;
    end
    else begin
      u_I.y <= 1'b0;
    end
  end

endmodule
