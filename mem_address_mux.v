// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: mem_address_mux.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// ************************************************************


//Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mem_address_mux (
	data0x,
	data10x,
	data11x,
	data12x,
	data13x,
	data14x,
	data15x,
	data16x,
	data17x,
	data18x,
	data19x,
	data1x,
	data20x,
	data21x,
	data22x,
	data23x,
	data24x,
	data25x,
	data26x,
	data27x,
	data28x,
	data29x,
	data2x,
	data30x,
	data31x,
	data3x,
	data4x,
	data5x,
	data6x,
	data7x,
	data8x,
	data9x,
	sel,
	result);

	input	[15:0]  data0x;
	input	[15:0]  data10x;
	input	[15:0]  data11x;
	input	[15:0]  data12x;
	input	[15:0]  data13x;
	input	[15:0]  data14x;
	input	[15:0]  data15x;
	input	[15:0]  data16x;
	input	[15:0]  data17x;
	input	[15:0]  data18x;
	input	[15:0]  data19x;
	input	[15:0]  data1x;
	input	[15:0]  data20x;
	input	[15:0]  data21x;
	input	[15:0]  data22x;
	input	[15:0]  data23x;
	input	[15:0]  data24x;
	input	[15:0]  data25x;
	input	[15:0]  data26x;
	input	[15:0]  data27x;
	input	[15:0]  data28x;
	input	[15:0]  data29x;
	input	[15:0]  data2x;
	input	[15:0]  data30x;
	input	[15:0]  data31x;
	input	[15:0]  data3x;
	input	[15:0]  data4x;
	input	[15:0]  data5x;
	input	[15:0]  data6x;
	input	[15:0]  data7x;
	input	[15:0]  data8x;
	input	[15:0]  data9x;
	input	[4:0]  sel;
	output	[15:0]  result;

	wire [15:0] sub_wire33;
	wire [15:0] sub_wire32 = data31x[15:0];
	wire [15:0] sub_wire31 = data30x[15:0];
	wire [15:0] sub_wire30 = data29x[15:0];
	wire [15:0] sub_wire29 = data28x[15:0];
	wire [15:0] sub_wire28 = data27x[15:0];
	wire [15:0] sub_wire27 = data26x[15:0];
	wire [15:0] sub_wire26 = data25x[15:0];
	wire [15:0] sub_wire25 = data24x[15:0];
	wire [15:0] sub_wire24 = data23x[15:0];
	wire [15:0] sub_wire23 = data22x[15:0];
	wire [15:0] sub_wire22 = data21x[15:0];
	wire [15:0] sub_wire21 = data20x[15:0];
	wire [15:0] sub_wire20 = data19x[15:0];
	wire [15:0] sub_wire19 = data18x[15:0];
	wire [15:0] sub_wire18 = data17x[15:0];
	wire [15:0] sub_wire17 = data16x[15:0];
	wire [15:0] sub_wire16 = data15x[15:0];
	wire [15:0] sub_wire15 = data14x[15:0];
	wire [15:0] sub_wire14 = data13x[15:0];
	wire [15:0] sub_wire13 = data12x[15:0];
	wire [15:0] sub_wire12 = data11x[15:0];
	wire [15:0] sub_wire11 = data10x[15:0];
	wire [15:0] sub_wire10 = data9x[15:0];
	wire [15:0] sub_wire9 = data8x[15:0];
	wire [15:0] sub_wire8 = data7x[15:0];
	wire [15:0] sub_wire7 = data6x[15:0];
	wire [15:0] sub_wire6 = data5x[15:0];
	wire [15:0] sub_wire5 = data4x[15:0];
	wire [15:0] sub_wire4 = data3x[15:0];
	wire [15:0] sub_wire3 = data2x[15:0];
	wire [15:0] sub_wire2 = data1x[15:0];
	wire [15:0] sub_wire0 = data0x[15:0];
	wire [511:0] sub_wire1 = {sub_wire32, sub_wire31, sub_wire30, sub_wire29, sub_wire28, sub_wire27, sub_wire26, sub_wire25, sub_wire24, sub_wire23, sub_wire22, sub_wire21, sub_wire20, sub_wire19, sub_wire18, sub_wire17, sub_wire16, sub_wire15, sub_wire14, sub_wire13, sub_wire12, sub_wire11, sub_wire10, sub_wire9, sub_wire8, sub_wire7, sub_wire6, sub_wire5, sub_wire4, sub_wire3, sub_wire2, sub_wire0};
	wire [15:0] result = sub_wire33[15:0];

	lpm_mux	LPM_MUX_component (
				.data (sub_wire1),
				.sel (sel),
				.result (sub_wire33)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		LPM_MUX_component.lpm_size = 32,
		LPM_MUX_component.lpm_type = "LPM_MUX",
		LPM_MUX_component.lpm_width = 16,
		LPM_MUX_component.lpm_widths = 5;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "32"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "5"
// Retrieval info: USED_PORT: data0x 0 0 16 0 INPUT NODEFVAL "data0x[15..0]"
// Retrieval info: USED_PORT: data10x 0 0 16 0 INPUT NODEFVAL "data10x[15..0]"
// Retrieval info: USED_PORT: data11x 0 0 16 0 INPUT NODEFVAL "data11x[15..0]"
// Retrieval info: USED_PORT: data12x 0 0 16 0 INPUT NODEFVAL "data12x[15..0]"
// Retrieval info: USED_PORT: data13x 0 0 16 0 INPUT NODEFVAL "data13x[15..0]"
// Retrieval info: USED_PORT: data14x 0 0 16 0 INPUT NODEFVAL "data14x[15..0]"
// Retrieval info: USED_PORT: data15x 0 0 16 0 INPUT NODEFVAL "data15x[15..0]"
// Retrieval info: USED_PORT: data16x 0 0 16 0 INPUT NODEFVAL "data16x[15..0]"
// Retrieval info: USED_PORT: data17x 0 0 16 0 INPUT NODEFVAL "data17x[15..0]"
// Retrieval info: USED_PORT: data18x 0 0 16 0 INPUT NODEFVAL "data18x[15..0]"
// Retrieval info: USED_PORT: data19x 0 0 16 0 INPUT NODEFVAL "data19x[15..0]"
// Retrieval info: USED_PORT: data1x 0 0 16 0 INPUT NODEFVAL "data1x[15..0]"
// Retrieval info: USED_PORT: data20x 0 0 16 0 INPUT NODEFVAL "data20x[15..0]"
// Retrieval info: USED_PORT: data21x 0 0 16 0 INPUT NODEFVAL "data21x[15..0]"
// Retrieval info: USED_PORT: data22x 0 0 16 0 INPUT NODEFVAL "data22x[15..0]"
// Retrieval info: USED_PORT: data23x 0 0 16 0 INPUT NODEFVAL "data23x[15..0]"
// Retrieval info: USED_PORT: data24x 0 0 16 0 INPUT NODEFVAL "data24x[15..0]"
// Retrieval info: USED_PORT: data25x 0 0 16 0 INPUT NODEFVAL "data25x[15..0]"
// Retrieval info: USED_PORT: data26x 0 0 16 0 INPUT NODEFVAL "data26x[15..0]"
// Retrieval info: USED_PORT: data27x 0 0 16 0 INPUT NODEFVAL "data27x[15..0]"
// Retrieval info: USED_PORT: data28x 0 0 16 0 INPUT NODEFVAL "data28x[15..0]"
// Retrieval info: USED_PORT: data29x 0 0 16 0 INPUT NODEFVAL "data29x[15..0]"
// Retrieval info: USED_PORT: data2x 0 0 16 0 INPUT NODEFVAL "data2x[15..0]"
// Retrieval info: USED_PORT: data30x 0 0 16 0 INPUT NODEFVAL "data30x[15..0]"
// Retrieval info: USED_PORT: data31x 0 0 16 0 INPUT NODEFVAL "data31x[15..0]"
// Retrieval info: USED_PORT: data3x 0 0 16 0 INPUT NODEFVAL "data3x[15..0]"
// Retrieval info: USED_PORT: data4x 0 0 16 0 INPUT NODEFVAL "data4x[15..0]"
// Retrieval info: USED_PORT: data5x 0 0 16 0 INPUT NODEFVAL "data5x[15..0]"
// Retrieval info: USED_PORT: data6x 0 0 16 0 INPUT NODEFVAL "data6x[15..0]"
// Retrieval info: USED_PORT: data7x 0 0 16 0 INPUT NODEFVAL "data7x[15..0]"
// Retrieval info: USED_PORT: data8x 0 0 16 0 INPUT NODEFVAL "data8x[15..0]"
// Retrieval info: USED_PORT: data9x 0 0 16 0 INPUT NODEFVAL "data9x[15..0]"
// Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL "result[15..0]"
// Retrieval info: USED_PORT: sel 0 0 5 0 INPUT NODEFVAL "sel[4..0]"
// Retrieval info: CONNECT: @data 0 0 16 0 data0x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 160 data10x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 176 data11x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 192 data12x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 208 data13x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 224 data14x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 240 data15x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 256 data16x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 272 data17x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 288 data18x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 304 data19x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 16 data1x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 320 data20x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 336 data21x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 352 data22x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 368 data23x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 384 data24x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 400 data25x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 416 data26x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 432 data27x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 448 data28x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 464 data29x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 32 data2x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 480 data30x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 496 data31x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 48 data3x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 64 data4x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 80 data5x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 96 data6x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 112 data7x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 128 data8x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 144 data9x 0 0 16 0
// Retrieval info: CONNECT: @sel 0 0 5 0 sel 0 0 5 0
// Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mem_address_mux_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
