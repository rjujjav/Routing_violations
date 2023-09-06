/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R) Graphical
// Version   : S-2021.06-SP3
// Date      : Wed Sep  6 15:59:08 2023
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_counter ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  sky130_fd_sc_hs__sdlclkp_1 latch ( .CLK(CLK), .GATE(EN), .SCE(TE), .GCLK(
        ENCLK) );
endmodule


module counter ( clock, reset, in, latch, dec, zero, test_si, test_so, test_se
 );
  input [3:0] in;
  input clock, reset, latch, dec, test_si, test_se;
  output zero, test_so;
  wire   value_2_, value_1_, value_0_, N10, N11, N12, N13, N14, net33, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  SNPS_CLOCK_GATE_HIGH_counter clk_gate_value_reg ( .CLK(clock), .EN(N10), 
        .ENCLK(net33), .TE(test_se) );
  sky130_fd_sc_hs__sdfxtp_1 value_reg_3_ ( .D(N14), .SCD(value_0_), .SCE(
        test_se), .CLK(net33), .Q(test_so) );
  sky130_fd_sc_hs__sdfxtp_1 value_reg_2_ ( .D(N13), .SCD(value_1_), .SCE(
        test_se), .CLK(net33), .Q(value_2_) );
  sky130_fd_sc_hs__sdfxtp_1 value_reg_1_ ( .D(N12), .SCD(test_si), .SCE(
        test_se), .CLK(net33), .Q(value_1_) );
  sky130_fd_sc_hs__nor2_1 U22 ( .A(value_0_), .B(value_1_), .Y(n16) );
  sky130_fd_sc_hs__inv_1 U23 ( .A(value_2_), .Y(n15) );
  sky130_fd_sc_hs__nand2_1 U24 ( .A(n16), .B(n15), .Y(n18) );
  sky130_fd_sc_hs__nor2_1 U25 ( .A(test_so), .B(n18), .Y(zero) );
  sky130_fd_sc_hs__nor3_1 U26 ( .A(reset), .B(zero), .C(latch), .Y(n13) );
  sky130_fd_sc_hs__nand2_1 U27 ( .A(dec), .B(n13), .Y(n22) );
  sky130_fd_sc_hs__nor2b_1 U28 ( .B_N(latch), .A(reset), .Y(n19) );
  sky130_fd_sc_hs__o2bb2ai_1 U29 ( .B1(value_0_), .B2(n22), .A1_N(n19), .A2_N(
        in[0]), .Y(N11) );
  sky130_fd_sc_hs__a21oi_1 U30 ( .A1(value_1_), .A2(value_0_), .B1(n16), .Y(
        n14) );
  sky130_fd_sc_hs__o2bb2ai_1 U31 ( .B1(n14), .B2(n22), .A1_N(n19), .A2_N(in[1]), .Y(N12) );
  sky130_fd_sc_hs__o21a_1 U32 ( .A1(n16), .A2(n15), .B1(n18), .X(n17) );
  sky130_fd_sc_hs__o2bb2ai_1 U33 ( .B1(n22), .B2(n17), .A1_N(n19), .A2_N(in[2]), .Y(N13) );
  sky130_fd_sc_hs__nor2_1 U34 ( .A(reset), .B(latch), .Y(n23) );
  sky130_fd_sc_hs__nand2_1 U35 ( .A(n23), .B(dec), .Y(n21) );
  sky130_fd_sc_hs__nand2_1 U36 ( .A(test_so), .B(n18), .Y(n20) );
  sky130_fd_sc_hs__o2bb2ai_1 U37 ( .B1(n21), .B2(n20), .A1_N(n19), .A2_N(in[3]), .Y(N14) );
  sky130_fd_sc_hs__nand2_1 U38 ( .A(n23), .B(n22), .Y(N10) );
  sky130_fd_sc_hs__sdfxtp_1 value_reg_0_ ( .D(N11), .SCD(value_2_), .SCE(
        test_se), .CLK(net33), .Q(value_0_) );
endmodule

