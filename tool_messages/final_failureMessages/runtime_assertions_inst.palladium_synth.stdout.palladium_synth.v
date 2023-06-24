// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
`ifdef CBV
initial begin
 $display( "In %m S=%0d; must not be 1 or 2", 1);
 $display( 
  "ERROR:$error(testcases/runtime_assertions_inst.sv,19) of Assertion %m has failed at time %0t Cycles", 
  64'b0000000000000000000000000000000000000000000000000000000000000000);
end
`endif
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
