// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Oct 13 02:15:07 2019
// Host        : DESKTOP-6HB94DC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nickf/vivado_projects/xillinux_test/xillinux_test.srcs/sources_1/ip/xillybus_wrapper_0/xillybus_wrapper_0_stub.v
// Design      : xillybus_wrapper_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xillybus_wrapper,Vivado 2018.2" *)
module xillybus_wrapper_0(ap_clk, ap_rst, in_r_dout, in_r_empty_n, 
  in_r_read, out_r_din, out_r_full_n, out_r_write)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,in_r_dout[31:0],in_r_empty_n,in_r_read,out_r_din[31:0],out_r_full_n,out_r_write" */;
  input ap_clk;
  input ap_rst;
  input [31:0]in_r_dout;
  input in_r_empty_n;
  output in_r_read;
  output [31:0]out_r_din;
  input out_r_full_n;
  output out_r_write;
endmodule
