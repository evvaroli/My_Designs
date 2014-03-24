//-----------------------------------------------------------------------------
//
// Title       : oscil_c_pli
// Design      : VHDL_Verilog_EDIF_C_PLI
// Author      : Aldec, Inc.
// Company     : Aldec, Inc.
//
//-----------------------------------------------------------------------------
//
// File        : oscil_c_pli.v
// Generated   : Wed Sep 25 15:20:35 2013
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {oscil_c_pli}}
module oscil_c_pli ( CLK ,F0 ,CLR ,F1 );
	
	output F0 ;
	wire F0 ;
	output F1 ;
	wire F1 ;
	
	input CLK ;
	wire CLK ;
	input CLR ;
	wire CLR ;
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //
	initial
		$oscil_c_pli(CLK, CLR, F0, F1);
	
endmodule
