/* Generated by Yosys 0.27 (git sha1 5f88c218b, gcc 8.5.0 -fPIC -Os) */

(* is_interface =  1  *)
(* src = "testcases/struct_out_packed_InterfacePort.sv:0.0-0.0" *)
module I(i_clk, o_a);
  (* src = "testcases/struct_out_packed_InterfacePort.sv:11.17-11.22" *)
  input i_clk;
  wire i_clk;
  (* src = "testcases/struct_out_packed_InterfacePort.sv:12.19-12.22" *)
  (* wiretype = "\\data_t" *)
  output [7:0] o_a;
  wire [7:0] o_a;
  assign o_a = 8'hff;
endmodule

(* top =  1  *)
(* interfaces_replaced_in_module =  1  *)
(* src = "testcases/struct_out_packed_InterfacePort.sv:21.1-31.10" *)
module top(i_clk, o_a);
  (* src = "testcases/struct_out_packed_InterfacePort.sv:22.17-22.22" *)
  input i_clk;
  wire i_clk;
  (* src = "testcases/struct_out_packed_InterfacePort.sv:23.24-23.27" *)
  output [7:0] o_a;
  wire [7:0] o_a;
  (* is_interface = 32'd1 *)
  (* src = "testcases/struct_out_packed_InterfacePort.sv:26.5-29.6" *)
  I u_I (
    .i_clk(i_clk),
    .o_a(o_a)
  );
endmodule
