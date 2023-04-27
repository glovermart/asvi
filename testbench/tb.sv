`default_nettype none
module tb
    ( output logic [7:0] o_a
    , output logic [7:0] o_b
    , output logic [7:0] o_c
    );
  top u_DUT(.o_a,.o_b,.o_c);
  initial begin: l_tb_initial
    $info("Simulation started.");
    #100
    $display("value of o_a is %0b",o_a);
    $display("value of o_a is %0b",o_b);
    $display("value of o_a is %0b",o_c);
    $finish;
  end: l_tb_initial
endmodule
