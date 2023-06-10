/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun  9 10:43:06 2023
/////////////////////////////////////////////////////////////


module M1 ( \p.z , \p.y , \p.x , \p.i_clk , \p.i_srst , \p.i_arst , \p.w  );
  input \p.i_clk , \p.i_srst , \p.i_arst , \p.w ;
  output \p.z , \p.y , \p.x ;

  assign \p.z  = 1'b0;
  assign \p.y  = 1'b1;

  FD1S \p.x_reg  ( .D(\p.w ), .TI(1'b0), .TE(1'b0), .CP(\p.i_clk ), .Q(\p.x )
         );
endmodule

