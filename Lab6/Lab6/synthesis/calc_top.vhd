--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: calc_top.vhd
-- /___/   /\     Timestamp: Wed Mar 19 19:31:33 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w calc_top.ngc calc_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: calc_top.ngc
-- Output file	: calc_top.vhd
-- # of Entities	: 1
-- Design Name	: calc_top
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity calc_top is
  port (
    dp : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end calc_top;

architecture STRUCTURE of calc_top is
  signal M_0_Q : STD_LOGIC; 
  signal M_1_Q : STD_LOGIC; 
  signal M_3_Q : STD_LOGIC; 
  signal M_4_Q : STD_LOGIC; 
  signal M_5_Q : STD_LOGIC; 
  signal M_6_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal a_to_g_0_OBUF_146 : STD_LOGIC; 
  signal a_to_g_1_OBUF_147 : STD_LOGIC; 
  signal a_to_g_2_OBUF_148 : STD_LOGIC; 
  signal a_to_g_3_OBUF_149 : STD_LOGIC; 
  signal a_to_g_4_OBUF_150 : STD_LOGIC; 
  signal a_to_g_5_OBUF_151 : STD_LOGIC; 
  signal a_to_g_6_OBUF_152 : STD_LOGIC; 
  signal an_0_OBUF_157 : STD_LOGIC; 
  signal an_1_OBUF_158 : STD_LOGIC; 
  signal an_2_OBUF_159 : STD_LOGIC; 
  signal an_3_OBUF_160 : STD_LOGIC; 
  signal btn_0_IBUF_163 : STD_LOGIC; 
  signal btn_3_IBUF_164 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_rt_167 : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_rt_169 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_rt_171 : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_rt_173 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_rt_175 : STD_LOGIC; 
  signal cd_Mcount_q_cy_15_rt_177 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_rt_179 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_rt_181 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_rt_183 : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_rt_185 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_rt_187 : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_rt_189 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_rt_191 : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_rt_193 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_rt_195 : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_rt_197 : STD_LOGIC; 
  signal cd_Mcount_q_xor_17_rt_199 : STD_LOGIC; 
  signal clkp : STD_LOGIC; 
  signal clkp1 : STD_LOGIC; 
  signal cp_delay1_220 : STD_LOGIC; 
  signal cp_delay2_221 : STD_LOGIC; 
  signal cp_delay3_222 : STD_LOGIC; 
  signal f_Mmux_y_31_255 : STD_LOGIC; 
  signal f_Mmux_y_310_256 : STD_LOGIC; 
  signal f_Mmux_y_311_257 : STD_LOGIC; 
  signal f_Mmux_y_312_258 : STD_LOGIC; 
  signal f_Mmux_y_313_259 : STD_LOGIC; 
  signal f_Mmux_y_314_260 : STD_LOGIC; 
  signal f_Mmux_y_32_261 : STD_LOGIC; 
  signal f_Mmux_y_33_262 : STD_LOGIC; 
  signal f_Mmux_y_34_263 : STD_LOGIC; 
  signal f_Mmux_y_35_264 : STD_LOGIC; 
  signal f_Mmux_y_36_265 : STD_LOGIC; 
  signal f_Mmux_y_37_266 : STD_LOGIC; 
  signal f_Mmux_y_38_267 : STD_LOGIC; 
  signal f_Mmux_y_39_268 : STD_LOGIC; 
  signal f_Mmux_y_7_269 : STD_LOGIC; 
  signal f_Mmux_y_8_270 : STD_LOGIC; 
  signal f_Mmux_y_81_271 : STD_LOGIC; 
  signal f_Mmux_y_810_272 : STD_LOGIC; 
  signal f_Mmux_y_811_273 : STD_LOGIC; 
  signal f_Mmux_y_812_274 : STD_LOGIC; 
  signal f_Mmux_y_813_275 : STD_LOGIC; 
  signal f_Mmux_y_82_276 : STD_LOGIC; 
  signal f_N01 : STD_LOGIC; 
  signal f_Sh32 : STD_LOGIC; 
  signal f_Sh33 : STD_LOGIC; 
  signal f_Sh34_280 : STD_LOGIC; 
  signal f_Sh36_281 : STD_LOGIC; 
  signal f_Sh37_282 : STD_LOGIC; 
  signal f_Sh38_283 : STD_LOGIC; 
  signal f_Sh42_284 : STD_LOGIC; 
  signal f_fcode_1_10 : STD_LOGIC; 
  signal f_fcode_1_100_286 : STD_LOGIC; 
  signal f_fcode_1_1012_287 : STD_LOGIC; 
  signal f_fcode_1_1018 : STD_LOGIC; 
  signal f_fcode_1_11 : STD_LOGIC; 
  signal f_fcode_1_1112_290 : STD_LOGIC; 
  signal f_fcode_1_120_291 : STD_LOGIC; 
  signal f_fcode_1_1211 : STD_LOGIC; 
  signal f_fcode_1_1212_293 : STD_LOGIC; 
  signal f_fcode_1_13 : STD_LOGIC; 
  signal f_fcode_1_1481_295 : STD_LOGIC; 
  signal f_fcode_1_16_296 : STD_LOGIC; 
  signal f_fcode_1_211_297 : STD_LOGIC; 
  signal f_fcode_1_48_298 : STD_LOGIC; 
  signal f_fcode_1_61_299 : STD_LOGIC; 
  signal f_fcode_1_90_300 : STD_LOGIC; 
  signal f_fcode_1_912_301 : STD_LOGIC; 
  signal f_y_or0003 : STD_LOGIC; 
  signal f_y_or000314_319 : STD_LOGIC; 
  signal f_y_or00034_320 : STD_LOGIC; 
  signal f_y_or00039_321 : STD_LOGIC; 
  signal f_y_shift0002_0_12_322 : STD_LOGIC; 
  signal f_y_shift0002_0_21_323 : STD_LOGIC; 
  signal f_y_shift0002_0_34_324 : STD_LOGIC; 
  signal f_y_shift0002_0_89_325 : STD_LOGIC; 
  signal mclk_BUFGP_327 : STD_LOGIC; 
  signal nmux_y_0_1_328 : STD_LOGIC; 
  signal nmux_y_0_16_329 : STD_LOGIC; 
  signal nmux_y_1_11 : STD_LOGIC; 
  signal nmux_y_2_11 : STD_LOGIC; 
  signal nmux_y_3_11 : STD_LOGIC; 
  signal pcCounter_qs_2_1_339 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_10_rt_342 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_11_rt_344 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_12_rt_346 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_13_rt_348 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_14_rt_350 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_15_rt_352 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_16_rt_354 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_17_rt_356 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_18_rt_358 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_1_rt_360 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_2_rt_362 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_3_rt_364 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_4_rt_366 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_5_rt_368 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_6_rt_370 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_7_rt_372 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_8_rt_374 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_9_rt_376 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_xor_19_rt_378 : STD_LOGIC; 
  signal seg_Mmux_digit_3_379 : STD_LOGIC; 
  signal seg_Mmux_digit_31_380 : STD_LOGIC; 
  signal seg_Mmux_digit_32_381 : STD_LOGIC; 
  signal seg_Mmux_digit_33_382 : STD_LOGIC; 
  signal seg_Mmux_digit_4_383 : STD_LOGIC; 
  signal seg_Mmux_digit_41_384 : STD_LOGIC; 
  signal seg_Mmux_digit_42_385 : STD_LOGIC; 
  signal seg_Mmux_digit_43_386 : STD_LOGIC; 
  signal seg_an_1_mux000115_407 : STD_LOGIC; 
  signal seg_an_1_mux00012_408 : STD_LOGIC; 
  signal seg_an_1_mux000128 : STD_LOGIC; 
  signal seg_an_1_mux000152_410 : STD_LOGIC; 
  signal seg_an_2_mux000128_411 : STD_LOGIC; 
  signal sw_0_IBUF_444 : STD_LOGIC; 
  signal sw_1_IBUF_445 : STD_LOGIC; 
  signal sw_2_IBUF_446 : STD_LOGIC; 
  signal sw_3_IBUF_447 : STD_LOGIC; 
  signal sw_4_IBUF_448 : STD_LOGIC; 
  signal sw_5_IBUF_449 : STD_LOGIC; 
  signal sw_6_IBUF_450 : STD_LOGIC; 
  signal sw_7_IBUF_451 : STD_LOGIC; 
  signal Nreg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Treg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cd_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal f_Maddsub_y_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal f_Maddsub_y_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal f_y_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal pcCounter_D : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal pcCounter_qs : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal seg_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal seg_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal seg_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal seg_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal seg_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal tin : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => M_6_Q
    );
  cp_delay3 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_164,
      D => cp_delay2_221,
      Q => cp_delay3_222
    );
  cp_delay2 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_164,
      D => cp_delay1_220,
      Q => cp_delay2_221
    );
  cp_delay1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_164,
      D => btn_0_IBUF_163,
      Q => cp_delay1_220
    );
  cd_q_0 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(0),
      Q => cd_q(0)
    );
  cd_q_1 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(1),
      Q => cd_q(1)
    );
  cd_q_2 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(2),
      Q => cd_q(2)
    );
  cd_q_3 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(3),
      Q => cd_q(3)
    );
  cd_q_4 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(4),
      Q => cd_q(4)
    );
  cd_q_5 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(5),
      Q => cd_q(5)
    );
  cd_q_6 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(6),
      Q => cd_q(6)
    );
  cd_q_7 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(7),
      Q => cd_q(7)
    );
  cd_q_8 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(8),
      Q => cd_q(8)
    );
  cd_q_9 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(9),
      Q => cd_q(9)
    );
  cd_q_10 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(10),
      Q => cd_q(10)
    );
  cd_q_11 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(11),
      Q => cd_q(11)
    );
  cd_q_12 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(12),
      Q => cd_q(12)
    );
  cd_q_13 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(13),
      Q => cd_q(13)
    );
  cd_q_14 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(14),
      Q => cd_q(14)
    );
  cd_q_15 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(15),
      Q => cd_q(15)
    );
  cd_q_16 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(16),
      Q => cd_q(16)
    );
  cd_q_17 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => Result(17),
      Q => cd_q(17)
    );
  cd_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => M_6_Q,
      S => cd_Mcount_q_lut(0),
      O => cd_Mcount_q_cy(0)
    );
  cd_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => cd_Mcount_q_lut(0),
      O => Result(0)
    );
  cd_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(0),
      DI => N0,
      S => cd_Mcount_q_cy_1_rt_181,
      O => cd_Mcount_q_cy(1)
    );
  cd_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(0),
      LI => cd_Mcount_q_cy_1_rt_181,
      O => Result(1)
    );
  cd_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(1),
      DI => N0,
      S => cd_Mcount_q_cy_2_rt_183,
      O => cd_Mcount_q_cy(2)
    );
  cd_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(1),
      LI => cd_Mcount_q_cy_2_rt_183,
      O => Result(2)
    );
  cd_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(2),
      DI => N0,
      S => cd_Mcount_q_cy_3_rt_185,
      O => cd_Mcount_q_cy(3)
    );
  cd_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(2),
      LI => cd_Mcount_q_cy_3_rt_185,
      O => Result(3)
    );
  cd_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(3),
      DI => N0,
      S => cd_Mcount_q_cy_4_rt_187,
      O => cd_Mcount_q_cy(4)
    );
  cd_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(3),
      LI => cd_Mcount_q_cy_4_rt_187,
      O => Result(4)
    );
  cd_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(4),
      DI => N0,
      S => cd_Mcount_q_cy_5_rt_189,
      O => cd_Mcount_q_cy(5)
    );
  cd_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(4),
      LI => cd_Mcount_q_cy_5_rt_189,
      O => Result(5)
    );
  cd_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(5),
      DI => N0,
      S => cd_Mcount_q_cy_6_rt_191,
      O => cd_Mcount_q_cy(6)
    );
  cd_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(5),
      LI => cd_Mcount_q_cy_6_rt_191,
      O => Result(6)
    );
  cd_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(6),
      DI => N0,
      S => cd_Mcount_q_cy_7_rt_193,
      O => cd_Mcount_q_cy(7)
    );
  cd_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(6),
      LI => cd_Mcount_q_cy_7_rt_193,
      O => Result(7)
    );
  cd_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(7),
      DI => N0,
      S => cd_Mcount_q_cy_8_rt_195,
      O => cd_Mcount_q_cy(8)
    );
  cd_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(7),
      LI => cd_Mcount_q_cy_8_rt_195,
      O => Result(8)
    );
  cd_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(8),
      DI => N0,
      S => cd_Mcount_q_cy_9_rt_197,
      O => cd_Mcount_q_cy(9)
    );
  cd_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(8),
      LI => cd_Mcount_q_cy_9_rt_197,
      O => Result(9)
    );
  cd_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(9),
      DI => N0,
      S => cd_Mcount_q_cy_10_rt_167,
      O => cd_Mcount_q_cy(10)
    );
  cd_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(9),
      LI => cd_Mcount_q_cy_10_rt_167,
      O => Result(10)
    );
  cd_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(10),
      DI => N0,
      S => cd_Mcount_q_cy_11_rt_169,
      O => cd_Mcount_q_cy(11)
    );
  cd_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(10),
      LI => cd_Mcount_q_cy_11_rt_169,
      O => Result(11)
    );
  cd_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(11),
      DI => N0,
      S => cd_Mcount_q_cy_12_rt_171,
      O => cd_Mcount_q_cy(12)
    );
  cd_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(11),
      LI => cd_Mcount_q_cy_12_rt_171,
      O => Result(12)
    );
  cd_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(12),
      DI => N0,
      S => cd_Mcount_q_cy_13_rt_173,
      O => cd_Mcount_q_cy(13)
    );
  cd_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(12),
      LI => cd_Mcount_q_cy_13_rt_173,
      O => Result(13)
    );
  cd_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(13),
      DI => N0,
      S => cd_Mcount_q_cy_14_rt_175,
      O => cd_Mcount_q_cy(14)
    );
  cd_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(13),
      LI => cd_Mcount_q_cy_14_rt_175,
      O => Result(14)
    );
  cd_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(14),
      DI => N0,
      S => cd_Mcount_q_cy_15_rt_177,
      O => cd_Mcount_q_cy(15)
    );
  cd_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(14),
      LI => cd_Mcount_q_cy_15_rt_177,
      O => Result(15)
    );
  cd_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(15),
      DI => N0,
      S => cd_Mcount_q_cy_16_rt_179,
      O => cd_Mcount_q_cy(16)
    );
  cd_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(15),
      LI => cd_Mcount_q_cy_16_rt_179,
      O => Result(16)
    );
  cd_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(16),
      LI => cd_Mcount_q_xor_17_rt_199,
      O => Result(17)
    );
  pcCounter_qs_2 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_164,
      D => pcCounter_D(2),
      Q => pcCounter_qs(2)
    );
  pcCounter_qs_1 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_164,
      D => pcCounter_D(1),
      Q => pcCounter_qs(1)
    );
  pcCounter_qs_0 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_164,
      D => pcCounter_D(0),
      Q => pcCounter_qs(0)
    );
  f_Mmux_y_82 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(12),
      I1 => Treg_q(10),
      I2 => M_0_Q,
      O => f_Mmux_y_82_276
    );
  f_Mmux_y_810 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(5),
      I2 => M_0_Q,
      O => f_Mmux_y_810_272
    );
  f_Mmux_y_811 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Treg_q(4),
      I2 => M_0_Q,
      O => f_Mmux_y_811_273
    );
  f_Mmux_y_812 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(5),
      I2 => N273,
      O => f_Mmux_y_812_274
    );
  f_Mmux_y_813 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(6),
      I2 => M_0_Q,
      O => f_Mmux_y_813_275
    );
  f_Maddsub_y_addsub0000_xor_15_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(14),
      LI => f_Maddsub_y_addsub0000_lut(15),
      O => f_y_addsub0000(15)
    );
  f_Maddsub_y_addsub0000_xor_14_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(13),
      LI => f_Maddsub_y_addsub0000_lut(14),
      O => f_y_addsub0000(14)
    );
  f_Maddsub_y_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(13),
      DI => Treg_q(14),
      S => f_Maddsub_y_addsub0000_lut(14),
      O => f_Maddsub_y_addsub0000_cy(14)
    );
  f_Maddsub_y_addsub0000_xor_13_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(12),
      LI => f_Maddsub_y_addsub0000_lut(13),
      O => f_y_addsub0000(13)
    );
  f_Maddsub_y_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(12),
      DI => Treg_q(13),
      S => f_Maddsub_y_addsub0000_lut(13),
      O => f_Maddsub_y_addsub0000_cy(13)
    );
  f_Maddsub_y_addsub0000_xor_12_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(11),
      LI => f_Maddsub_y_addsub0000_lut(12),
      O => f_y_addsub0000(12)
    );
  f_Maddsub_y_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(11),
      DI => Treg_q(12),
      S => f_Maddsub_y_addsub0000_lut(12),
      O => f_Maddsub_y_addsub0000_cy(12)
    );
  f_Maddsub_y_addsub0000_xor_11_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(10),
      LI => f_Maddsub_y_addsub0000_lut(11),
      O => f_y_addsub0000(11)
    );
  f_Maddsub_y_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(10),
      DI => Treg_q(11),
      S => f_Maddsub_y_addsub0000_lut(11),
      O => f_Maddsub_y_addsub0000_cy(11)
    );
  f_Maddsub_y_addsub0000_xor_10_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(9),
      LI => f_Maddsub_y_addsub0000_lut(10),
      O => f_y_addsub0000(10)
    );
  f_Maddsub_y_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(9),
      DI => Treg_q(10),
      S => f_Maddsub_y_addsub0000_lut(10),
      O => f_Maddsub_y_addsub0000_cy(10)
    );
  f_Maddsub_y_addsub0000_xor_9_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(8),
      LI => f_Maddsub_y_addsub0000_lut(9),
      O => f_y_addsub0000(9)
    );
  f_Maddsub_y_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(8),
      DI => Treg_q(9),
      S => f_Maddsub_y_addsub0000_lut(9),
      O => f_Maddsub_y_addsub0000_cy(9)
    );
  f_Maddsub_y_addsub0000_xor_8_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(7),
      LI => f_Maddsub_y_addsub0000_lut(8),
      O => f_y_addsub0000(8)
    );
  f_Maddsub_y_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(7),
      DI => Treg_q(8),
      S => f_Maddsub_y_addsub0000_lut(8),
      O => f_Maddsub_y_addsub0000_cy(8)
    );
  f_Maddsub_y_addsub0000_xor_7_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(6),
      LI => f_Maddsub_y_addsub0000_lut(7),
      O => f_y_addsub0000(7)
    );
  f_Maddsub_y_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(6),
      DI => Treg_q(7),
      S => f_Maddsub_y_addsub0000_lut(7),
      O => f_Maddsub_y_addsub0000_cy(7)
    );
  f_Maddsub_y_addsub0000_xor_6_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(5),
      LI => f_Maddsub_y_addsub0000_lut(6),
      O => f_y_addsub0000(6)
    );
  f_Maddsub_y_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(5),
      DI => Treg_q(6),
      S => f_Maddsub_y_addsub0000_lut(6),
      O => f_Maddsub_y_addsub0000_cy(6)
    );
  f_Maddsub_y_addsub0000_xor_5_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(4),
      LI => f_Maddsub_y_addsub0000_lut(5),
      O => f_y_addsub0000(5)
    );
  f_Maddsub_y_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(4),
      DI => Treg_q(5),
      S => f_Maddsub_y_addsub0000_lut(5),
      O => f_Maddsub_y_addsub0000_cy(5)
    );
  f_Maddsub_y_addsub0000_xor_4_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(3),
      LI => f_Maddsub_y_addsub0000_lut(4),
      O => f_y_addsub0000(4)
    );
  f_Maddsub_y_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(3),
      DI => Treg_q(4),
      S => f_Maddsub_y_addsub0000_lut(4),
      O => f_Maddsub_y_addsub0000_cy(4)
    );
  f_Maddsub_y_addsub0000_xor_3_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(2),
      LI => f_Maddsub_y_addsub0000_lut(3),
      O => f_y_addsub0000(3)
    );
  f_Maddsub_y_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(2),
      DI => Treg_q(3),
      S => f_Maddsub_y_addsub0000_lut(3),
      O => f_Maddsub_y_addsub0000_cy(3)
    );
  f_Maddsub_y_addsub0000_xor_2_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(1),
      LI => f_Maddsub_y_addsub0000_lut(2),
      O => f_y_addsub0000(2)
    );
  f_Maddsub_y_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(1),
      DI => Treg_q(2),
      S => f_Maddsub_y_addsub0000_lut(2),
      O => f_Maddsub_y_addsub0000_cy(2)
    );
  f_Maddsub_y_addsub0000_xor_1_Q : XORCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(0),
      LI => f_Maddsub_y_addsub0000_lut(1),
      O => f_y_addsub0000(1)
    );
  f_Maddsub_y_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => f_Maddsub_y_addsub0000_cy(0),
      DI => Treg_q(1),
      S => f_Maddsub_y_addsub0000_lut(1),
      O => f_Maddsub_y_addsub0000_cy(1)
    );
  f_Maddsub_y_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Maddsub_y_addsub0000_lut(0),
      O => f_y_addsub0000(0)
    );
  f_Maddsub_y_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Treg_q(0),
      S => f_Maddsub_y_addsub0000_lut(0),
      O => f_Maddsub_y_addsub0000_cy(0)
    );
  seg_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(8),
      I2 => Treg_q(12),
      O => seg_Mmux_digit_3_379
    );
  seg_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(0),
      I2 => Treg_q(4),
      O => seg_Mmux_digit_4_383
    );
  seg_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => seg_Mmux_digit_4_383,
      I1 => seg_Mmux_digit_3_379,
      S => seg_clkdiv(19),
      O => seg_digit(0)
    );
  seg_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(9),
      I2 => Treg_q(13),
      O => seg_Mmux_digit_31_380
    );
  seg_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(1),
      I2 => Treg_q(5),
      O => seg_Mmux_digit_41_384
    );
  seg_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => seg_Mmux_digit_41_384,
      I1 => seg_Mmux_digit_31_380,
      S => seg_clkdiv(19),
      O => seg_digit(1)
    );
  seg_Mmux_digit_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(10),
      I2 => Treg_q(14),
      O => seg_Mmux_digit_32_381
    );
  seg_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(2),
      I2 => Treg_q(6),
      O => seg_Mmux_digit_42_385
    );
  seg_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => seg_Mmux_digit_42_385,
      I1 => seg_Mmux_digit_32_381,
      S => seg_clkdiv(19),
      O => seg_digit(2)
    );
  seg_Mmux_digit_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(11),
      I2 => Treg_q(15),
      O => seg_Mmux_digit_33_382
    );
  seg_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(3),
      I2 => Treg_q(7),
      O => seg_Mmux_digit_43_386
    );
  seg_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => seg_Mmux_digit_43_386,
      I1 => seg_Mmux_digit_33_382,
      S => seg_clkdiv(19),
      O => seg_digit(3)
    );
  seg_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(18),
      LI => seg_Mcount_clkdiv_xor_19_rt_378,
      O => seg_Result(19)
    );
  seg_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      LI => seg_Mcount_clkdiv_cy_18_rt_358,
      O => seg_Result(18)
    );
  seg_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_18_rt_358,
      O => seg_Mcount_clkdiv_cy(18)
    );
  seg_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      LI => seg_Mcount_clkdiv_cy_17_rt_356,
      O => seg_Result(17)
    );
  seg_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_17_rt_356,
      O => seg_Mcount_clkdiv_cy(17)
    );
  seg_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      LI => seg_Mcount_clkdiv_cy_16_rt_354,
      O => seg_Result(16)
    );
  seg_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_16_rt_354,
      O => seg_Mcount_clkdiv_cy(16)
    );
  seg_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      LI => seg_Mcount_clkdiv_cy_15_rt_352,
      O => seg_Result(15)
    );
  seg_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_15_rt_352,
      O => seg_Mcount_clkdiv_cy(15)
    );
  seg_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      LI => seg_Mcount_clkdiv_cy_14_rt_350,
      O => seg_Result(14)
    );
  seg_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_14_rt_350,
      O => seg_Mcount_clkdiv_cy(14)
    );
  seg_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      LI => seg_Mcount_clkdiv_cy_13_rt_348,
      O => seg_Result(13)
    );
  seg_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_13_rt_348,
      O => seg_Mcount_clkdiv_cy(13)
    );
  seg_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      LI => seg_Mcount_clkdiv_cy_12_rt_346,
      O => seg_Result(12)
    );
  seg_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_12_rt_346,
      O => seg_Mcount_clkdiv_cy(12)
    );
  seg_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      LI => seg_Mcount_clkdiv_cy_11_rt_344,
      O => seg_Result(11)
    );
  seg_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_11_rt_344,
      O => seg_Mcount_clkdiv_cy(11)
    );
  seg_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      LI => seg_Mcount_clkdiv_cy_10_rt_342,
      O => seg_Result(10)
    );
  seg_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_10_rt_342,
      O => seg_Mcount_clkdiv_cy(10)
    );
  seg_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      LI => seg_Mcount_clkdiv_cy_9_rt_376,
      O => seg_Result(9)
    );
  seg_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_9_rt_376,
      O => seg_Mcount_clkdiv_cy(9)
    );
  seg_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      LI => seg_Mcount_clkdiv_cy_8_rt_374,
      O => seg_Result(8)
    );
  seg_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_8_rt_374,
      O => seg_Mcount_clkdiv_cy(8)
    );
  seg_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      LI => seg_Mcount_clkdiv_cy_7_rt_372,
      O => seg_Result(7)
    );
  seg_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_7_rt_372,
      O => seg_Mcount_clkdiv_cy(7)
    );
  seg_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      LI => seg_Mcount_clkdiv_cy_6_rt_370,
      O => seg_Result(6)
    );
  seg_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_6_rt_370,
      O => seg_Mcount_clkdiv_cy(6)
    );
  seg_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      LI => seg_Mcount_clkdiv_cy_5_rt_368,
      O => seg_Result(5)
    );
  seg_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_5_rt_368,
      O => seg_Mcount_clkdiv_cy(5)
    );
  seg_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      LI => seg_Mcount_clkdiv_cy_4_rt_366,
      O => seg_Result(4)
    );
  seg_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_4_rt_366,
      O => seg_Mcount_clkdiv_cy(4)
    );
  seg_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      LI => seg_Mcount_clkdiv_cy_3_rt_364,
      O => seg_Result(3)
    );
  seg_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_3_rt_364,
      O => seg_Mcount_clkdiv_cy(3)
    );
  seg_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      LI => seg_Mcount_clkdiv_cy_2_rt_362,
      O => seg_Result(2)
    );
  seg_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_2_rt_362,
      O => seg_Mcount_clkdiv_cy(2)
    );
  seg_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      LI => seg_Mcount_clkdiv_cy_1_rt_360,
      O => seg_Result(1)
    );
  seg_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_1_rt_360,
      O => seg_Mcount_clkdiv_cy(1)
    );
  seg_Mcount_clkdiv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => seg_Mcount_clkdiv_lut(0),
      O => seg_Result(0)
    );
  seg_Mcount_clkdiv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => M_6_Q,
      S => seg_Mcount_clkdiv_lut(0),
      O => seg_Mcount_clkdiv_cy(0)
    );
  seg_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(19),
      Q => seg_clkdiv(19)
    );
  seg_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(18),
      Q => seg_clkdiv(18)
    );
  seg_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(17),
      Q => seg_clkdiv(17)
    );
  seg_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(16),
      Q => seg_clkdiv(16)
    );
  seg_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(15),
      Q => seg_clkdiv(15)
    );
  seg_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(14),
      Q => seg_clkdiv(14)
    );
  seg_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(13),
      Q => seg_clkdiv(13)
    );
  seg_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(12),
      Q => seg_clkdiv(12)
    );
  seg_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(11),
      Q => seg_clkdiv(11)
    );
  seg_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(10),
      Q => seg_clkdiv(10)
    );
  seg_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(9),
      Q => seg_clkdiv(9)
    );
  seg_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(8),
      Q => seg_clkdiv(8)
    );
  seg_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(7),
      Q => seg_clkdiv(7)
    );
  seg_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(6),
      Q => seg_clkdiv(6)
    );
  seg_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(5),
      Q => seg_clkdiv(5)
    );
  seg_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(4),
      Q => seg_clkdiv(4)
    );
  seg_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(3),
      Q => seg_clkdiv(3)
    );
  seg_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(2),
      Q => seg_clkdiv(2)
    );
  seg_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(1),
      Q => seg_clkdiv(1)
    );
  seg_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_327,
      CLR => btn_3_IBUF_164,
      D => seg_Result(0),
      Q => seg_clkdiv(0)
    );
  Nreg_q_15 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(15),
      Q => Nreg_q(15)
    );
  Nreg_q_14 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(14),
      Q => Nreg_q(14)
    );
  Nreg_q_13 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(13),
      Q => Nreg_q(13)
    );
  Nreg_q_12 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(12),
      Q => Nreg_q(12)
    );
  Nreg_q_11 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(11),
      Q => Nreg_q(11)
    );
  Nreg_q_10 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(10),
      Q => Nreg_q(10)
    );
  Nreg_q_9 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(9),
      Q => Nreg_q(9)
    );
  Nreg_q_8 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(8),
      Q => Nreg_q(8)
    );
  Nreg_q_7 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(7),
      Q => Nreg_q(7)
    );
  Nreg_q_6 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(6),
      Q => Nreg_q(6)
    );
  Nreg_q_5 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(5),
      Q => Nreg_q(5)
    );
  Nreg_q_4 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(4),
      Q => Nreg_q(4)
    );
  Nreg_q_3 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(3),
      Q => Nreg_q(3)
    );
  Nreg_q_2 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(2),
      Q => Nreg_q(2)
    );
  Nreg_q_1 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(1),
      Q => Nreg_q(1)
    );
  Nreg_q_0 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_164,
      D => Treg_q(0),
      Q => Nreg_q(0)
    );
  Treg_q_15 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(15),
      Q => Treg_q(15)
    );
  Treg_q_14 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(14),
      Q => Treg_q(14)
    );
  Treg_q_13 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(13),
      Q => Treg_q(13)
    );
  Treg_q_12 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(12),
      Q => Treg_q(12)
    );
  Treg_q_11 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(11),
      Q => Treg_q(11)
    );
  Treg_q_10 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(10),
      Q => Treg_q(10)
    );
  Treg_q_9 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(9),
      Q => Treg_q(9)
    );
  Treg_q_8 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(8),
      Q => Treg_q(8)
    );
  Treg_q_7 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(7),
      Q => Treg_q(7)
    );
  Treg_q_6 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(6),
      Q => Treg_q(6)
    );
  Treg_q_5 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(5),
      Q => Treg_q(5)
    );
  Treg_q_4 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(4),
      Q => Treg_q(4)
    );
  Treg_q_3 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(3),
      Q => Treg_q(3)
    );
  Treg_q_2 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(2),
      Q => Treg_q(2)
    );
  Treg_q_1 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(1),
      Q => Treg_q(1)
    );
  Treg_q_0 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_164,
      D => tin(0),
      Q => Treg_q(0)
    );
  cp_outp1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cp_delay3_222,
      I1 => cp_delay2_221,
      I2 => cp_delay1_220,
      O => clkp1
    );
  seg_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => an_0_OBUF_157
    );
  pcCounter_D_1_or00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      O => pcCounter_D(1)
    );
  pcCounter_D_2_or00001 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      O => pcCounter_D(2)
    );
  seg_an_3_mux0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(13),
      I2 => Treg_q(12),
      O => N1
    );
  seg_an_3_mux0001 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => N1,
      I2 => Treg_q(15),
      I3 => seg_clkdiv(19),
      O => an_3_OBUF_160
    );
  seg_an_2_mux000115 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(11),
      I2 => Treg_q(12),
      I3 => Treg_q(13),
      O => seg_an_1_mux000128
    );
  seg_an_2_mux000128 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(15),
      I2 => Treg_q(8),
      I3 => Treg_q(9),
      O => seg_an_2_mux000128_411
    );
  rom_Mrom_M41 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => pcCounter_qs(2),
      O => M_4_Q
    );
  seg_Mrom_a_to_g21 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => seg_digit(3),
      I1 => seg_digit(0),
      I2 => seg_digit(2),
      I3 => seg_digit(1),
      O => a_to_g_2_OBUF_148
    );
  seg_Mrom_a_to_g41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(2),
      I2 => seg_digit(3),
      I3 => seg_digit(0),
      O => a_to_g_4_OBUF_150
    );
  seg_Mrom_a_to_g111 : LUT4
    generic map(
      INIT => X"0382"
    )
    port map (
      I0 => seg_digit(0),
      I1 => seg_digit(3),
      I2 => seg_digit(2),
      I3 => seg_digit(1),
      O => a_to_g_1_OBUF_147
    );
  seg_Mrom_a_to_g51 : LUT4
    generic map(
      INIT => X"AC48"
    )
    port map (
      I0 => seg_digit(3),
      I1 => seg_digit(2),
      I2 => seg_digit(0),
      I3 => seg_digit(1),
      O => a_to_g_5_OBUF_151
    );
  seg_Mrom_a_to_g11 : LUT4
    generic map(
      INIT => X"2141"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(3),
      I2 => seg_digit(2),
      I3 => seg_digit(0),
      O => a_to_g_0_OBUF_146
    );
  seg_Mrom_a_to_g31 : LUT4
    generic map(
      INIT => X"9806"
    )
    port map (
      I0 => seg_digit(0),
      I1 => seg_digit(2),
      I2 => seg_digit(3),
      I3 => seg_digit(1),
      O => a_to_g_3_OBUF_149
    );
  seg_Mrom_a_to_g61 : LUT4
    generic map(
      INIT => X"4184"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(0),
      I2 => seg_digit(3),
      I3 => seg_digit(2),
      O => a_to_g_6_OBUF_152
    );
  seg_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => seg_an_1_mux00012_408
    );
  seg_an_1_mux000115 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Treg_q(7),
      I2 => Treg_q(8),
      I3 => Treg_q(9),
      O => seg_an_1_mux000115_407
    );
  seg_an_1_mux000152 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(15),
      I2 => Treg_q(4),
      I3 => Treg_q(5),
      O => seg_an_1_mux000152_410
    );
  seg_an_1_mux000172 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => seg_an_1_mux000115_407,
      I1 => seg_an_1_mux000128,
      I2 => seg_an_1_mux000152_410,
      I3 => seg_an_1_mux00012_408,
      O => an_1_OBUF_158
    );
  f_Sh1611 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      O => f_N01
    );
  f_fcode_1_929 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N0,
      I1 => f_fcode_1_90_300,
      I2 => f_fcode_1_912_301,
      I3 => N275,
      O => f_fcode_1_10
    );
  f_fcode_1_1029 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N0,
      I1 => f_fcode_1_100_286,
      I2 => f_fcode_1_1012_287,
      I3 => f_fcode_1_1018,
      O => f_fcode_1_11
    );
  f_y_or00039 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Nreg_q(9),
      I1 => Nreg_q(8),
      I2 => Nreg_q(7),
      I3 => Nreg_q(6),
      O => f_y_or00039_321
    );
  f_y_or000323 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N270,
      I1 => f_y_or00039_321,
      I2 => f_y_or000314_319,
      O => f_y_or0003
    );
  f_Sh331 : LUT4
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_Sh33
    );
  f_Sh8_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(9),
      I1 => Treg_q(8),
      I2 => Nreg_q(0),
      O => N17
    );
  f_Sh8_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(11),
      I2 => Nreg_q(0),
      O => N18
    );
  f_y_shift0002_0_21 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      O => f_y_shift0002_0_21_323
    );
  f_y_shift0002_0_34 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(0),
      I2 => Nreg_q(1),
      O => f_y_shift0002_0_34_324
    );
  f_Sh6_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(6),
      I2 => Nreg_q(0),
      O => N40
    );
  f_Sh4_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N46
    );
  f_Sh12_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(13),
      I1 => Treg_q(12),
      I2 => Nreg_q(0),
      O => N49
    );
  f_Sh12_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(15),
      I1 => Treg_q(14),
      I2 => Nreg_q(0),
      O => N50
    );
  f_Sh34 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => N58,
      O => f_Sh34_280
    );
  f_Sh43_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(11),
      I2 => Nreg_q(0),
      O => N60
    );
  f_Sh43_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(9),
      I2 => Nreg_q(0),
      O => N61
    );
  f_Sh41_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Treg_q(7),
      I2 => Nreg_q(0),
      O => N67
    );
  f_Sh39_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N73
    );
  f_Sh38_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N76
    );
  f_Sh37_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(3),
      I2 => Nreg_q(0),
      O => N79
    );
  f_Sh35_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(0),
      O => N85
    );
  f_fcode_1_1481 : LUT4
    generic map(
      INIT => X"BBBA"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_y_or0003,
      I2 => f_fcode_1_16_296,
      I3 => f_fcode_1_1211,
      O => f_fcode_1_1481_295
    );
  f_fcode_1_48 : LUT4
    generic map(
      INIT => X"BBBA"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_y_or0003,
      I2 => f_fcode_1_61_299,
      I3 => f_fcode_1_211_297,
      O => f_fcode_1_48_298
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_164
    );
  btn_0_IBUF : IBUF
    port map (
      I => btn(0),
      O => btn_0_IBUF_163
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_451
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_450
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_449
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_448
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_447
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_446
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_445
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_444
    );
  dp_OBUF : OBUF
    port map (
      I => M_6_Q,
      O => dp
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_160,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_159,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_158,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_157,
      O => an(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_152,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_151,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_150,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_149,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_148,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_147,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_146,
      O => a_to_g(0)
    );
  cd_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(1),
      O => cd_Mcount_q_cy_1_rt_181
    );
  cd_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(2),
      O => cd_Mcount_q_cy_2_rt_183
    );
  cd_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(3),
      O => cd_Mcount_q_cy_3_rt_185
    );
  cd_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(4),
      O => cd_Mcount_q_cy_4_rt_187
    );
  cd_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(5),
      O => cd_Mcount_q_cy_5_rt_189
    );
  cd_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(6),
      O => cd_Mcount_q_cy_6_rt_191
    );
  cd_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(7),
      O => cd_Mcount_q_cy_7_rt_193
    );
  cd_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(8),
      O => cd_Mcount_q_cy_8_rt_195
    );
  cd_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(9),
      O => cd_Mcount_q_cy_9_rt_197
    );
  cd_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(10),
      O => cd_Mcount_q_cy_10_rt_167
    );
  cd_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(11),
      O => cd_Mcount_q_cy_11_rt_169
    );
  cd_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(12),
      O => cd_Mcount_q_cy_12_rt_171
    );
  cd_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(13),
      O => cd_Mcount_q_cy_13_rt_173
    );
  cd_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(14),
      O => cd_Mcount_q_cy_14_rt_175
    );
  cd_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(15),
      O => cd_Mcount_q_cy_15_rt_177
    );
  cd_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(16),
      O => cd_Mcount_q_cy_16_rt_179
    );
  seg_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(18),
      O => seg_Mcount_clkdiv_cy_18_rt_358
    );
  seg_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(17),
      O => seg_Mcount_clkdiv_cy_17_rt_356
    );
  seg_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(16),
      O => seg_Mcount_clkdiv_cy_16_rt_354
    );
  seg_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(15),
      O => seg_Mcount_clkdiv_cy_15_rt_352
    );
  seg_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(14),
      O => seg_Mcount_clkdiv_cy_14_rt_350
    );
  seg_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(13),
      O => seg_Mcount_clkdiv_cy_13_rt_348
    );
  seg_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(12),
      O => seg_Mcount_clkdiv_cy_12_rt_346
    );
  seg_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(11),
      O => seg_Mcount_clkdiv_cy_11_rt_344
    );
  seg_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(10),
      O => seg_Mcount_clkdiv_cy_10_rt_342
    );
  seg_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(9),
      O => seg_Mcount_clkdiv_cy_9_rt_376
    );
  seg_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(8),
      O => seg_Mcount_clkdiv_cy_8_rt_374
    );
  seg_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(7),
      O => seg_Mcount_clkdiv_cy_7_rt_372
    );
  seg_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(6),
      O => seg_Mcount_clkdiv_cy_6_rt_370
    );
  seg_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(5),
      O => seg_Mcount_clkdiv_cy_5_rt_368
    );
  seg_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(4),
      O => seg_Mcount_clkdiv_cy_4_rt_366
    );
  seg_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(3),
      O => seg_Mcount_clkdiv_cy_3_rt_364
    );
  seg_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(2),
      O => seg_Mcount_clkdiv_cy_2_rt_362
    );
  seg_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(1),
      O => seg_Mcount_clkdiv_cy_1_rt_360
    );
  cd_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(17),
      O => cd_Mcount_q_xor_17_rt_199
    );
  seg_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(19),
      O => seg_Mcount_clkdiv_xor_19_rt_378
    );
  nmux_y_15_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_35_264,
      I3 => f_y_addsub0000(15),
      O => tin(15)
    );
  nmux_y_14_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_34_263,
      I3 => f_y_addsub0000(14),
      O => tin(14)
    );
  nmux_y_13_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_33_262,
      I3 => f_y_addsub0000(13),
      O => tin(13)
    );
  nmux_y_0_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => M_3_Q,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_270,
      I3 => f_Mmux_y_7_269,
      O => nmux_y_0_1_328
    );
  nmux_y_12_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_32_261,
      I3 => f_y_addsub0000(12),
      O => tin(12)
    );
  nmux_y_11_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_y_addsub0000(11),
      I3 => f_Mmux_y_31_255,
      O => tin(11)
    );
  nmux_y_9_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_314_260,
      I3 => f_y_addsub0000(9),
      O => tin(9)
    );
  nmux_y_8_1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_Mmux_y_313_259,
      I3 => f_y_addsub0000(8),
      O => tin(8)
    );
  nmux_y_0_39 : LUT4
    generic map(
      INIT => X"BBB8"
    )
    port map (
      I0 => sw_0_IBUF_444,
      I1 => M_4_Q,
      I2 => nmux_y_0_16_329,
      I3 => nmux_y_0_1_328,
      O => tin(0)
    );
  f_Sh37_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(3),
      O => N96
    );
  f_fcode_1_61 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => N96,
      I1 => Nreg_q(1),
      I2 => N76,
      I3 => N70,
      O => f_fcode_1_61_299
    );
  f_Mmux_y_312 : LUT4
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => M_3_Q,
      I2 => f_Mmux_y_813_275,
      I3 => f_fcode_1_13,
      O => f_Mmux_y_312_258
    );
  f_Mmux_y_2_f5_8_SW0 : LUT4
    generic map(
      INIT => X"8B88"
    )
    port map (
      I0 => sw_4_IBUF_448,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(4),
      O => N111
    );
  f_Mmux_y_2_f5_8_SW1 : LUT4
    generic map(
      INIT => X"BBB8"
    )
    port map (
      I0 => sw_4_IBUF_448,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(4),
      O => N112
    );
  nmux_y_4_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N112,
      I1 => N111,
      I2 => f_Mmux_y_39_268,
      O => tin(4)
    );
  f_Mmux_y_2_f5_9_SW0 : LUT4
    generic map(
      INIT => X"8B88"
    )
    port map (
      I0 => sw_5_IBUF_449,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(5),
      O => N114
    );
  f_Mmux_y_2_f5_9_SW1 : LUT4
    generic map(
      INIT => X"BBB8"
    )
    port map (
      I0 => sw_5_IBUF_449,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(5),
      O => N115
    );
  nmux_y_5_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N115,
      I1 => N114,
      I2 => f_Mmux_y_310_256,
      O => tin(5)
    );
  f_Mmux_y_2_f5_10_SW0 : LUT4
    generic map(
      INIT => X"8B88"
    )
    port map (
      I0 => sw_6_IBUF_450,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(6),
      O => N117
    );
  f_Mmux_y_2_f5_10_SW1 : LUT4
    generic map(
      INIT => X"BBB8"
    )
    port map (
      I0 => sw_6_IBUF_450,
      I1 => M_4_Q,
      I2 => M_3_Q,
      I3 => f_y_addsub0000(6),
      O => N118
    );
  nmux_y_6_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N118,
      I1 => N117,
      I2 => f_Mmux_y_311_257,
      O => tin(6)
    );
  f_fcode_1_76_SW0 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Treg_q(10),
      I1 => M_1_Q,
      I2 => f_Mmux_y_81_271,
      O => N120
    );
  f_Maddsub_y_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"5565"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Nreg_q(0),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(0)
    );
  f_Maddsub_y_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Treg_q(1),
      I1 => Nreg_q(1),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(1)
    );
  f_Maddsub_y_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Nreg_q(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(2)
    );
  f_Maddsub_y_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Nreg_q(3),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(3)
    );
  M_1_1 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => pcCounter_qs_2_1_339,
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      O => M_1_Q
    );
  f_Mmux_y_7 : LUT4
    generic map(
      INIT => X"CEC4"
    )
    port map (
      I0 => f_N01,
      I1 => N129,
      I2 => f_y_or0003,
      I3 => N130,
      O => f_Mmux_y_7_269
    );
  f_fcode_1_16_SW0 : LUT4
    generic map(
      INIT => X"3F5F"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(5),
      I2 => Nreg_q(2),
      I3 => Nreg_q(1),
      O => N138
    );
  f_fcode_1_16_SW1 : LUT4
    generic map(
      INIT => X"3F5F"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Treg_q(4),
      I2 => Nreg_q(2),
      I3 => Nreg_q(1),
      O => N139
    );
  f_Maddsub_y_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => Nreg_q(4),
      I1 => Treg_q(4),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(4)
    );
  f_Maddsub_y_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => Nreg_q(5),
      I1 => Treg_q(5),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(5)
    );
  f_Maddsub_y_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => Nreg_q(6),
      I1 => Treg_q(6),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(6)
    );
  f_Mmux_y_3_SW1 : LUT4
    generic map(
      INIT => X"AEBF"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => N121,
      I3 => f_y_addsub0000(10),
      O => N142
    );
  nmux_y_10_1 : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => f_fcode_1_48_298,
      I1 => M_0_Q,
      I2 => N142,
      I3 => N141,
      O => tin(10)
    );
  f_Maddsub_y_addsub0000_lut_7_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => Nreg_q(7),
      I1 => Treg_q(7),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(7)
    );
  f_Maddsub_y_addsub0000_lut_8_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => Nreg_q(8),
      I1 => Treg_q(8),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_Maddsub_y_addsub0000_lut(8)
    );
  f_Maddsub_y_addsub0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(9),
      I1 => pcCounter_qs(0),
      I2 => Nreg_q(9),
      I3 => pcCounter_qs(1),
      O => f_Maddsub_y_addsub0000_lut(9)
    );
  f_fcode_1_1129_SW0_SW0 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(2),
      O => N144
    );
  f_fcode_1_1129_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => Treg_q(6),
      I1 => N144,
      I2 => N274,
      I3 => f_Mmux_y_812_274,
      O => N135
    );
  f_y_shift0002_0_116_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(1),
      O => N104
    );
  f_y_shift0003_0_1_SW0 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => Treg_q(0),
      I1 => pcCounter_qs(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => N129
    );
  f_fcode_1_120 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => Treg_q(7),
      I1 => pcCounter_qs(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_fcode_1_120_291
    );
  f_fcode_1_90 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => Treg_q(4),
      I1 => pcCounter_qs(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_fcode_1_90_300
    );
  f_fcode_1_100 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => Treg_q(5),
      I1 => pcCounter_qs(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => f_fcode_1_100_286
    );
  f_Maddsub_y_addsub0000_lut_10_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(10),
      I1 => pcCounter_qs(0),
      I2 => Nreg_q(10),
      I3 => pcCounter_qs(1),
      O => f_Maddsub_y_addsub0000_lut(10)
    );
  f_Maddsub_y_addsub0000_lut_11_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(11),
      I1 => pcCounter_qs(0),
      I2 => Nreg_q(11),
      I3 => pcCounter_qs(1),
      O => f_Maddsub_y_addsub0000_lut(11)
    );
  f_fcode_1_176_SW1 : LUT4
    generic map(
      INIT => X"FF51"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      I3 => f_Mmux_y_82_276,
      O => N133
    );
  f_fcode_1_1129_SW1 : LUT4
    generic map(
      INIT => X"FF51"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      I3 => f_Mmux_y_812_274,
      O => N136
    );
  f_y_shift0002_0_116_SW1_SW0 : LUT4
    generic map(
      INIT => X"000D"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => pcCounter_qs(0),
      I2 => N271,
      I3 => f_y_or00034_320,
      O => N149
    );
  f_y_shift0002_0_116_SW1 : LUT4
    generic map(
      INIT => X"7277"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => N150,
      I2 => f_y_or00039_321,
      I3 => N149,
      O => N105
    );
  f_y_shift0002_0_89 : MUXF5
    port map (
      I0 => N152,
      I1 => N153,
      S => Nreg_q(3),
      O => f_y_shift0002_0_89_325
    );
  f_y_shift0002_0_89_F : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(0),
      I2 => f_y_shift0002_0_21_323,
      I3 => f_y_shift0002_0_34_324,
      O => N152
    );
  f_y_shift0002_0_89_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N18,
      I3 => N17,
      O => N153
    );
  f_y_shift0002_0_12 : MUXF5
    port map (
      I0 => N154,
      I1 => N155,
      S => Nreg_q(3),
      O => f_y_shift0002_0_12_322
    );
  f_y_shift0002_0_12_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N46,
      I3 => N40,
      O => N154
    );
  f_y_shift0002_0_12_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N49,
      I3 => N50,
      O => N155
    );
  f_fcode_1_121 : MUXF5
    port map (
      I0 => N156,
      I1 => N157,
      S => Nreg_q(3),
      O => f_fcode_1_1211
    );
  f_fcode_1_121_F : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N61,
      I3 => N60,
      O => N156
    );
  f_fcode_1_121_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N85,
      I3 => N79,
      O => N157
    );
  f_Sh42 : MUXF5
    port map (
      I0 => N160,
      I1 => N161,
      S => Nreg_q(1),
      O => f_Sh42_284
    );
  f_Sh42_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(9),
      I2 => Nreg_q(0),
      O => N160
    );
  f_Sh42_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(8),
      I2 => Nreg_q(0),
      O => N161
    );
  f_Sh38 : MUXF5
    port map (
      I0 => N166,
      I1 => N167,
      S => Nreg_q(1),
      O => f_Sh38_283
    );
  f_Sh38_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Treg_q(5),
      I2 => Nreg_q(0),
      O => N166
    );
  f_Sh38_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N167
    );
  f_Sh37 : MUXF5
    port map (
      I0 => N168,
      I1 => N169,
      S => Nreg_q(1),
      O => f_Sh37_282
    );
  f_Sh37_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N168
    );
  f_Sh37_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(3),
      I2 => Nreg_q(0),
      O => N169
    );
  f_Sh36 : MUXF5
    port map (
      I0 => N170,
      I1 => N171,
      S => Nreg_q(1),
      O => f_Sh36_281
    );
  f_Sh36_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N170
    );
  f_Sh36_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(1),
      I2 => Nreg_q(0),
      O => N171
    );
  f_fcode_1_176_SW0 : MUXF5
    port map (
      I0 => N174,
      I1 => N175,
      S => f_Mmux_y_82_276,
      O => N132
    );
  f_fcode_1_1212 : MUXF5
    port map (
      I0 => N182,
      I1 => N183,
      S => Nreg_q(1),
      O => f_fcode_1_1212_293
    );
  f_fcode_1_1212_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => N67,
      I3 => N79,
      O => N182
    );
  f_fcode_1_1212_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => N73,
      I3 => N85,
      O => N183
    );
  seg_an_2_mux000141 : LUT4
    generic map(
      INIT => X"F8FF"
    )
    port map (
      I0 => seg_an_1_mux000128,
      I1 => seg_an_2_mux000128_411,
      I2 => seg_clkdiv(18),
      I3 => seg_clkdiv(19),
      O => an_2_OBUF_159
    );
  f_fcode_1_176_SW0_F : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => Treg_q(11),
      I1 => pcCounter_qs(2),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(0),
      O => N174
    );
  f_fcode_1_176_SW0_G : LUT4
    generic map(
      INIT => X"FFBA"
    )
    port map (
      I0 => Treg_q(11),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      I3 => pcCounter_qs(2),
      O => N175
    );
  f_Maddsub_y_addsub0000_lut_12_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(12),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      I3 => Nreg_q(12),
      O => f_Maddsub_y_addsub0000_lut(12)
    );
  f_Maddsub_y_addsub0000_lut_13_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(13),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      I3 => Nreg_q(13),
      O => f_Maddsub_y_addsub0000_lut(13)
    );
  f_Maddsub_y_addsub0000_lut_14_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(14),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      I3 => Nreg_q(14),
      O => f_Maddsub_y_addsub0000_lut(14)
    );
  f_Maddsub_y_addsub0000_lut_15_Q : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => Treg_q(15),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      I3 => Nreg_q(15),
      O => f_Maddsub_y_addsub0000_lut(15)
    );
  rom_Mrom_M51 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      O => M_5_Q
    );
  f_fcode_1_912 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => N272,
      I3 => f_Sh36_281,
      O => f_fcode_1_912_301
    );
  f_fcode_1_1112 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => f_Sh38_283,
      I3 => f_Sh34_280,
      O => f_fcode_1_1112_290
    );
  pcCounter_qs_2_1 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_164,
      D => pcCounter_D(2),
      Q => pcCounter_qs_2_1_339
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_327
    );
  clkp_BUFG : BUFG
    port map (
      I => clkp1,
      O => clkp
    );
  cd_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => cd_q(0),
      O => cd_Mcount_q_lut(0)
    );
  seg_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => seg_clkdiv(0),
      O => seg_Mcount_clkdiv_lut(0)
    );
  pcCounter_D_0_not00001_INV_0 : INV
    port map (
      I => pcCounter_qs(0),
      O => pcCounter_D(0)
    );
  nmux_y_7_1 : MUXF5
    port map (
      I0 => N252,
      I1 => N253,
      S => f_Mmux_y_312_258,
      O => tin(7)
    );
  nmux_y_7_1_F : LUT4
    generic map(
      INIT => X"F202"
    )
    port map (
      I0 => f_y_addsub0000(7),
      I1 => M_3_Q,
      I2 => M_4_Q,
      I3 => sw_7_IBUF_451,
      O => N252
    );
  nmux_y_7_1_G : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => M_4_Q,
      I1 => f_y_addsub0000(7),
      I2 => M_3_Q,
      I3 => sw_7_IBUF_451,
      O => N253
    );
  f_Mmux_y_36 : MUXF5
    port map (
      I0 => N254,
      I1 => N255,
      S => pcCounter_qs(2),
      O => f_Mmux_y_36_265
    );
  f_Mmux_y_36_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(0),
      I3 => Treg_q(1),
      O => N254
    );
  f_Mmux_y_36_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(0),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(2),
      O => N255
    );
  f_Mmux_y_37 : MUXF5
    port map (
      I0 => N256,
      I1 => N257,
      S => pcCounter_qs(2),
      O => f_Mmux_y_37_266
    );
  f_Mmux_y_37_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(1),
      I3 => Treg_q(2),
      O => N256
    );
  f_Mmux_y_37_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(1),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(3),
      O => N257
    );
  f_Mmux_y_38 : MUXF5
    port map (
      I0 => N258,
      I1 => N259,
      S => pcCounter_qs(2),
      O => f_Mmux_y_38_267
    );
  f_Mmux_y_38_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(2),
      I3 => Treg_q(3),
      O => N258
    );
  f_Mmux_y_38_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(2),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(4),
      O => N259
    );
  f_Mmux_y_32 : MUXF5
    port map (
      I0 => N260,
      I1 => N261,
      S => pcCounter_qs(2),
      O => f_Mmux_y_32_261
    );
  f_Mmux_y_32_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(11),
      I3 => Treg_q(12),
      O => N260
    );
  f_Mmux_y_32_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(11),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(13),
      O => N261
    );
  f_Mmux_y_33 : MUXF5
    port map (
      I0 => N262,
      I1 => N263,
      S => pcCounter_qs(2),
      O => f_Mmux_y_33_262
    );
  f_Mmux_y_33_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(12),
      I3 => Treg_q(13),
      O => N262
    );
  f_Mmux_y_33_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(12),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(14),
      O => N263
    );
  f_Mmux_y_34 : MUXF5
    port map (
      I0 => N264,
      I1 => N265,
      S => pcCounter_qs(2),
      O => f_Mmux_y_34_263
    );
  f_Mmux_y_34_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(13),
      I3 => Treg_q(14),
      O => N264
    );
  f_Mmux_y_34_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(13),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(15),
      O => N265
    );
  f_Mmux_y_313 : MUXF5
    port map (
      I0 => N266,
      I1 => N267,
      S => pcCounter_qs(2),
      O => f_Mmux_y_313_259
    );
  f_Mmux_y_313_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(7),
      I3 => Treg_q(8),
      O => N266
    );
  f_Mmux_y_313_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(7),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(9),
      O => N267
    );
  f_Mmux_y_314 : MUXF5
    port map (
      I0 => N268,
      I1 => N269,
      S => pcCounter_qs(2),
      O => f_Mmux_y_314_260
    );
  f_Mmux_y_314_F : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => Treg_q(8),
      I3 => Treg_q(9),
      O => N268
    );
  f_Mmux_y_314_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => Treg_q(8),
      I2 => pcCounter_qs(0),
      I3 => Treg_q(10),
      O => N269
    );
  nmux_y_3_111 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => f_y_addsub0000(3),
      I3 => f_Mmux_y_38_267,
      O => nmux_y_3_11
    );
  nmux_y_3_11_f5 : MUXF5
    port map (
      I0 => nmux_y_3_11,
      I1 => sw_3_IBUF_447,
      S => M_4_Q,
      O => tin(3)
    );
  nmux_y_2_111 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => f_y_addsub0000(2),
      I3 => f_Mmux_y_37_266,
      O => nmux_y_2_11
    );
  nmux_y_2_11_f5 : MUXF5
    port map (
      I0 => nmux_y_2_11,
      I1 => sw_2_IBUF_446,
      S => M_4_Q,
      O => tin(2)
    );
  nmux_y_1_111 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => pcCounter_qs(0),
      I1 => pcCounter_qs(1),
      I2 => f_y_addsub0000(1),
      I3 => f_Mmux_y_36_265,
      O => nmux_y_1_11
    );
  nmux_y_1_11_f5 : MUXF5
    port map (
      I0 => nmux_y_1_11,
      I1 => sw_1_IBUF_445,
      S => M_4_Q,
      O => tin(1)
    );
  f_Mmux_y_81 : LUT3_L
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(11),
      I1 => Treg_q(9),
      I2 => M_0_Q,
      LO => f_Mmux_y_81_271
    );
  f_fcode_1_1229 : LUT4_L
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N0,
      I1 => f_fcode_1_120_291,
      I2 => f_fcode_1_1212_293,
      I3 => f_fcode_1_1018,
      LO => f_fcode_1_13
    );
  f_y_or00034 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Nreg_q(13),
      I1 => Nreg_q(12),
      I2 => Nreg_q(11),
      I3 => Nreg_q(10),
      LO => N270,
      O => f_y_or00034_320
    );
  f_y_or000314 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Nreg_q(5),
      I1 => Nreg_q(4),
      I2 => Nreg_q(15),
      I3 => Nreg_q(14),
      LO => N271,
      O => f_y_or000314_319
    );
  f_Sh321 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Nreg_q(1),
      I2 => Nreg_q(0),
      LO => N272,
      O => f_Sh32
    );
  rom_Mrom_M11 : LUT3_D
    generic map(
      INIT => X"C5"
    )
    port map (
      I0 => pcCounter_qs_2_1_339,
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      LO => N273,
      O => M_0_Q
    );
  f_Sh34_SW0 : LUT3_L
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(2),
      I2 => Nreg_q(1),
      LO => N58
    );
  f_Sh40_SW1 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Treg_q(6),
      I2 => Treg_q(5),
      LO => N70
    );
  f_fcode_1_211 : LUT4_L
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => f_Sh42_284,
      I3 => f_Sh34_280,
      LO => f_fcode_1_211_297
    );
  rom_Mrom_M31 : LUT2_D
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => pcCounter_qs(1),
      I1 => pcCounter_qs(0),
      LO => N274,
      O => M_3_Q
    );
  f_fcode_1_918 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y_or00034_320,
      I1 => f_y_or00039_321,
      I2 => f_y_or000314_319,
      I3 => M_0_Q,
      LO => N275,
      O => f_fcode_1_1018
    );
  f_Mmux_y_8 : LUT4_L
    generic map(
      INIT => X"01FD"
    )
    port map (
      I0 => N104,
      I1 => f_y_shift0002_0_12_322,
      I2 => f_y_shift0002_0_89_325,
      I3 => N105,
      LO => f_Mmux_y_8_270
    );
  f_Mmux_y_39 : LUT4_L
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => M_3_Q,
      I2 => f_Mmux_y_810_272,
      I3 => f_fcode_1_10,
      LO => f_Mmux_y_39_268
    );
  f_Mmux_y_310 : LUT4_L
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => pcCounter_qs(2),
      I1 => M_3_Q,
      I2 => f_Mmux_y_811_273,
      I3 => f_fcode_1_11,
      LO => f_Mmux_y_310_256
    );
  f_y_shift0003_0_1_SW1 : LUT4_L
    generic map(
      INIT => X"A0FC"
    )
    port map (
      I0 => Treg_q(0),
      I1 => f_Sh32,
      I2 => M_1_Q,
      I3 => M_0_Q,
      LO => N130
    );
  f_Mmux_y_31 : LUT4_L
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => M_0_Q,
      I1 => f_fcode_1_1481_295,
      I2 => N133,
      I3 => N132,
      LO => f_Mmux_y_31_255
    );
  f_Mmux_y_311 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => f_fcode_1_1018,
      I1 => f_fcode_1_1112_290,
      I2 => N136,
      I3 => N135,
      LO => f_Mmux_y_311_257
    );
  f_fcode_1_16 : LUT4_L
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Nreg_q(3),
      I2 => N139,
      I3 => N138,
      LO => f_fcode_1_16_296
    );
  f_Mmux_y_3_SW0 : LUT4_L
    generic map(
      INIT => X"ABEF"
    )
    port map (
      I0 => M_4_Q,
      I1 => M_3_Q,
      I2 => f_y_addsub0000(10),
      I3 => N120,
      LO => N141
    );
  f_fcode_1_76_SW1 : LUT4_L
    generic map(
      INIT => X"FAFC"
    )
    port map (
      I0 => Treg_q(11),
      I1 => Treg_q(9),
      I2 => M_1_Q,
      I3 => M_0_Q,
      LO => N121
    );
  f_y_shift0002_0_116_SW1_SW1 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Treg_q(1),
      I1 => pcCounter_qs(0),
      I2 => pcCounter_qs(1),
      LO => N150
    );
  f_Mmux_y_35 : LUT4_L
    generic map(
      INIT => X"DC54"
    )
    port map (
      I0 => M_0_Q,
      I1 => M_1_Q,
      I2 => Treg_q(14),
      I3 => Treg_q(15),
      LO => f_Mmux_y_35_264
    );
  nmux_y_0_16 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => f_y_addsub0000(0),
      I1 => pcCounter_qs(1),
      I2 => pcCounter_qs(0),
      LO => nmux_y_0_16_329
    );
  f_fcode_1_1012 : LUT4_L
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => f_Sh33,
      I3 => f_Sh37_282,
      LO => f_fcode_1_1012_287
    );

end STRUCTURE;

