// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`define Q_HDL_ROOT_USE 1

module _unit18_ ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
wire qt_dummy; 
Q_BUF qt_dummy1 (.A(qt_dummy), .Z(qt_dummy));
wire [7:0] \data.data ;
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_UNPACKED_r1 "data 1 \data.data "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_UNPACKED_NUM "1"
endmodule

module top ( i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
wire u_I_i_clk;
supply1 n1;
assign o_a[0] = Q_HDL_ROOT._unit18_.data_data[0];
assign o_a[1] = Q_HDL_ROOT._unit18_.data_data[1];
assign o_a[2] = Q_HDL_ROOT._unit18_.data_data[2];
assign o_a[3] = Q_HDL_ROOT._unit18_.data_data[3];
assign o_a[4] = Q_HDL_ROOT._unit18_.data_data[4];
assign o_a[5] = Q_HDL_ROOT._unit18_.data_data[5];
assign o_a[6] = Q_HDL_ROOT._unit18_.data_data[6];
assign o_a[7] = Q_HDL_ROOT._unit18_.data_data[7];
Q_BUF U0 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[7]));
Q_BUF U1 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[6]));
Q_BUF U2 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[5]));
Q_BUF U3 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[4]));
Q_BUF U4 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[3]));
Q_BUF U5 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[2]));
Q_BUF U6 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[1]));
Q_BUF U7 ( .A(n1), .Z(Q_HDL_ROOT._unit18_.data_data[0]));
Q_BUF U8 ( .A(i_clk), .Z(u_I_i_clk));
`ifdef Q_DISPLAY_BUFFER_USE
`ifdef CBV
`else
Q_DISPLAY_BUFFER Q_DISPLAY_BUFFER ();
`endif
`endif
`ifdef Q_HDL_ROOT_USE
Q_HDL_ROOT Q_HDL_ROOT ();
`endif
endmodule
module Q_HDL_ROOT ;
_unit18_ _unit18_ ( );
endmodule
