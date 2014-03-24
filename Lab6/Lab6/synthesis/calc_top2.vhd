--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: calc_top2.vhd
-- /___/   /\     Timestamp: Wed Mar 19 20:04:27 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w calc_top2.ngc calc_top2.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: calc_top2.ngc
-- Output file	: calc_top2.vhd
-- # of Entities	: 1
-- Design Name	: calc_top2
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

entity calc_top2 is
  port (
    dp : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end calc_top2;

architecture STRUCTURE of calc_top2 is
  signal M_0_Q : STD_LOGIC; 
  signal M_1_Q : STD_LOGIC; 
  signal M_3_Q : STD_LOGIC; 
  signal M_5_Q : STD_LOGIC; 
  signal M_6_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal Nreg_q_0_1_126 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal a_to_g_0_OBUF_187 : STD_LOGIC; 
  signal a_to_g_1_OBUF_188 : STD_LOGIC; 
  signal a_to_g_2_OBUF_189 : STD_LOGIC; 
  signal a_to_g_3_OBUF_190 : STD_LOGIC; 
  signal a_to_g_4_OBUF_191 : STD_LOGIC; 
  signal a_to_g_5_OBUF_192 : STD_LOGIC; 
  signal a_to_g_6_OBUF_193 : STD_LOGIC; 
  signal an_0_OBUF_198 : STD_LOGIC; 
  signal an_1_OBUF_199 : STD_LOGIC; 
  signal an_2_OBUF_200 : STD_LOGIC; 
  signal an_3_OBUF_201 : STD_LOGIC; 
  signal btn_0_IBUF_204 : STD_LOGIC; 
  signal btn_3_IBUF_205 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_rt_208 : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_rt_210 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_rt_212 : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_rt_214 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_rt_216 : STD_LOGIC; 
  signal cd_Mcount_q_cy_15_rt_218 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_rt_220 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_rt_222 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_rt_224 : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_rt_226 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_rt_228 : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_rt_230 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_rt_232 : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_rt_234 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_rt_236 : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_rt_238 : STD_LOGIC; 
  signal cd_Mcount_q_xor_17_rt_240 : STD_LOGIC; 
  signal clkp : STD_LOGIC; 
  signal clkp1 : STD_LOGIC; 
  signal cp_delay1_261 : STD_LOGIC; 
  signal cp_delay2_262 : STD_LOGIC; 
  signal cp_delay3_263 : STD_LOGIC; 
  signal f_Mmux_y_10_296 : STD_LOGIC; 
  signal f_Mmux_y_101_297 : STD_LOGIC; 
  signal f_Mmux_y_1010_298 : STD_LOGIC; 
  signal f_Mmux_y_1011_299 : STD_LOGIC; 
  signal f_Mmux_y_1012_300 : STD_LOGIC; 
  signal f_Mmux_y_1013_301 : STD_LOGIC; 
  signal f_Mmux_y_1014_302 : STD_LOGIC; 
  signal f_Mmux_y_1015_303 : STD_LOGIC; 
  signal f_Mmux_y_102_304 : STD_LOGIC; 
  signal f_Mmux_y_103_305 : STD_LOGIC; 
  signal f_Mmux_y_104_306 : STD_LOGIC; 
  signal f_Mmux_y_105_307 : STD_LOGIC; 
  signal f_Mmux_y_106_308 : STD_LOGIC; 
  signal f_Mmux_y_107_309 : STD_LOGIC; 
  signal f_Mmux_y_108_310 : STD_LOGIC; 
  signal f_Mmux_y_109_311 : STD_LOGIC; 
  signal f_Mmux_y_310_312 : STD_LOGIC; 
  signal f_Mmux_y_311_313 : STD_LOGIC; 
  signal f_Mmux_y_312_314 : STD_LOGIC; 
  signal f_Mmux_y_36_315 : STD_LOGIC; 
  signal f_Mmux_y_37_316 : STD_LOGIC; 
  signal f_Mmux_y_38_317 : STD_LOGIC; 
  signal f_Mmux_y_39_318 : STD_LOGIC; 
  signal f_Mmux_y_410_319 : STD_LOGIC; 
  signal f_Mmux_y_411_320 : STD_LOGIC; 
  signal f_Mmux_y_412_321 : STD_LOGIC; 
  signal f_Mmux_y_46_322 : STD_LOGIC; 
  signal f_Mmux_y_47_323 : STD_LOGIC; 
  signal f_Mmux_y_48_324 : STD_LOGIC; 
  signal f_Mmux_y_49_325 : STD_LOGIC; 
  signal f_Mmux_y_6_f55 : STD_LOGIC; 
  signal f_Mmux_y_6_f56 : STD_LOGIC; 
  signal f_Mmux_y_75_328 : STD_LOGIC; 
  signal f_Mmux_y_76_329 : STD_LOGIC; 
  signal f_Mmux_y_81_330 : STD_LOGIC; 
  signal f_Mmux_y_810_331 : STD_LOGIC; 
  signal f_Mmux_y_811_332 : STD_LOGIC; 
  signal f_Mmux_y_812_333 : STD_LOGIC; 
  signal f_Mmux_y_813_334 : STD_LOGIC; 
  signal f_Mmux_y_814_335 : STD_LOGIC; 
  signal f_Mmux_y_815_336 : STD_LOGIC; 
  signal f_Mmux_y_82_337 : STD_LOGIC; 
  signal f_Mmux_y_83_338 : STD_LOGIC; 
  signal f_Mmux_y_84_339 : STD_LOGIC; 
  signal f_Mmux_y_85_340 : STD_LOGIC; 
  signal f_Mmux_y_86_341 : STD_LOGIC; 
  signal f_Mmux_y_8_f5_342 : STD_LOGIC; 
  signal f_Mmux_y_8_f51 : STD_LOGIC; 
  signal f_Mmux_y_8_f510 : STD_LOGIC; 
  signal f_Mmux_y_8_f511 : STD_LOGIC; 
  signal f_Mmux_y_8_f512 : STD_LOGIC; 
  signal f_Mmux_y_8_f513 : STD_LOGIC; 
  signal f_Mmux_y_8_f514 : STD_LOGIC; 
  signal f_Mmux_y_8_f52 : STD_LOGIC; 
  signal f_Mmux_y_8_f53 : STD_LOGIC; 
  signal f_Mmux_y_8_f54 : STD_LOGIC; 
  signal f_Mmux_y_8_f55 : STD_LOGIC; 
  signal f_Mmux_y_8_f56 : STD_LOGIC; 
  signal f_Mmux_y_8_f57 : STD_LOGIC; 
  signal f_Mmux_y_8_f58 : STD_LOGIC; 
  signal f_Mmux_y_8_f59 : STD_LOGIC; 
  signal f_Mmux_y_9_357 : STD_LOGIC; 
  signal f_Mmux_y_91_358 : STD_LOGIC; 
  signal f_Mmux_y_910_359 : STD_LOGIC; 
  signal f_Mmux_y_911_360 : STD_LOGIC; 
  signal f_Mmux_y_912_361 : STD_LOGIC; 
  signal f_Mmux_y_913_362 : STD_LOGIC; 
  signal f_Mmux_y_914_363 : STD_LOGIC; 
  signal f_Mmux_y_92_364 : STD_LOGIC; 
  signal f_Mmux_y_93_365 : STD_LOGIC; 
  signal f_Mmux_y_94_366 : STD_LOGIC; 
  signal f_Mmux_y_95_367 : STD_LOGIC; 
  signal f_Mmux_y_96_368 : STD_LOGIC; 
  signal f_Mmux_y_97_369 : STD_LOGIC; 
  signal f_Mmux_y_98_370 : STD_LOGIC; 
  signal f_Mmux_y_99_371 : STD_LOGIC; 
  signal f_N01 : STD_LOGIC; 
  signal f_Sh14 : STD_LOGIC; 
  signal f_Sh32 : STD_LOGIC; 
  signal f_Sh33 : STD_LOGIC; 
  signal f_Sh34_376 : STD_LOGIC; 
  signal f_Sh36_377 : STD_LOGIC; 
  signal f_Sh37_378 : STD_LOGIC; 
  signal f_Sh38_379 : STD_LOGIC; 
  signal f_Sh39_380 : STD_LOGIC; 
  signal f_Sh40_381 : STD_LOGIC; 
  signal f_Sh41_382 : STD_LOGIC; 
  signal f_Sh42_383 : STD_LOGIC; 
  signal f_fcode_1_1 : STD_LOGIC; 
  signal f_fcode_1_1012_385 : STD_LOGIC; 
  signal f_fcode_1_1018 : STD_LOGIC; 
  signal f_fcode_1_1112_387 : STD_LOGIC; 
  signal f_fcode_1_1212_388 : STD_LOGIC; 
  signal f_fcode_1_1321_389 : STD_LOGIC; 
  signal f_fcode_1_136_390 : STD_LOGIC; 
  signal f_fcode_1_14 : STD_LOGIC; 
  signal f_fcode_1_1421_392 : STD_LOGIC; 
  signal f_fcode_1_146_393 : STD_LOGIC; 
  signal f_fcode_1_15 : STD_LOGIC; 
  signal f_fcode_1_211_395 : STD_LOGIC; 
  signal f_fcode_1_2120_396 : STD_LOGIC; 
  signal f_fcode_1_227_397 : STD_LOGIC; 
  signal f_fcode_1_242_398 : STD_LOGIC; 
  signal f_fcode_1_274_399 : STD_LOGIC; 
  signal f_fcode_1_28_400 : STD_LOGIC; 
  signal f_fcode_1_3 : STD_LOGIC; 
  signal f_fcode_1_3120_402 : STD_LOGIC; 
  signal f_fcode_1_327_403 : STD_LOGIC; 
  signal f_fcode_1_342_404 : STD_LOGIC; 
  signal f_fcode_1_374_405 : STD_LOGIC; 
  signal f_fcode_1_38_406 : STD_LOGIC; 
  signal f_fcode_1_4 : STD_LOGIC; 
  signal f_fcode_1_4120_408 : STD_LOGIC; 
  signal f_fcode_1_427_409 : STD_LOGIC; 
  signal f_fcode_1_442_410 : STD_LOGIC; 
  signal f_fcode_1_471_411 : STD_LOGIC; 
  signal f_fcode_1_474_412 : STD_LOGIC; 
  signal f_fcode_1_5 : STD_LOGIC; 
  signal f_fcode_1_5120_414 : STD_LOGIC; 
  signal f_fcode_1_527_415 : STD_LOGIC; 
  signal f_fcode_1_542_416 : STD_LOGIC; 
  signal f_fcode_1_574_417 : STD_LOGIC; 
  signal f_fcode_1_581_418 : STD_LOGIC; 
  signal f_fcode_1_6 : STD_LOGIC; 
  signal f_fcode_1_61_420 : STD_LOGIC; 
  signal f_fcode_1_912_421 : STD_LOGIC; 
  signal f_y_or0001 : STD_LOGIC; 
  signal f_y_or0002 : STD_LOGIC; 
  signal f_y_or0003 : STD_LOGIC; 
  signal f_y_or000314_441 : STD_LOGIC; 
  signal f_y_or00034_442 : STD_LOGIC; 
  signal f_y_or00039_443 : STD_LOGIC; 
  signal f_y_shift0002_0_12_444 : STD_LOGIC; 
  signal f_y_shift0002_0_21_445 : STD_LOGIC; 
  signal f_y_shift0002_0_34_446 : STD_LOGIC; 
  signal f_y_shift0002_0_89_447 : STD_LOGIC; 
  signal mclk_BUFGP_449 : STD_LOGIC; 
  signal nmux_y_0_0_450 : STD_LOGIC; 
  signal nmux_y_0_15_451 : STD_LOGIC; 
  signal pcCounter_count_2_1_455 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_10_rt_459 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_11_rt_461 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_12_rt_463 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_13_rt_465 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_14_rt_467 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_15_rt_469 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_16_rt_471 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_17_rt_473 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_18_rt_475 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_1_rt_477 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_2_rt_479 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_3_rt_481 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_4_rt_483 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_5_rt_485 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_6_rt_487 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_7_rt_489 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_8_rt_491 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_9_rt_493 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_xor_19_rt_495 : STD_LOGIC; 
  signal seg_Mmux_digit_3_496 : STD_LOGIC; 
  signal seg_Mmux_digit_31_497 : STD_LOGIC; 
  signal seg_Mmux_digit_32_498 : STD_LOGIC; 
  signal seg_Mmux_digit_33_499 : STD_LOGIC; 
  signal seg_Mmux_digit_4_500 : STD_LOGIC; 
  signal seg_Mmux_digit_41_501 : STD_LOGIC; 
  signal seg_Mmux_digit_42_502 : STD_LOGIC; 
  signal seg_Mmux_digit_43_503 : STD_LOGIC; 
  signal seg_an_1_mux000115_524 : STD_LOGIC; 
  signal seg_an_1_mux00012_525 : STD_LOGIC; 
  signal seg_an_1_mux000128 : STD_LOGIC; 
  signal seg_an_1_mux000152_527 : STD_LOGIC; 
  signal seg_an_2_mux000128_528 : STD_LOGIC; 
  signal sw_0_IBUF_561 : STD_LOGIC; 
  signal sw_1_IBUF_562 : STD_LOGIC; 
  signal sw_2_IBUF_563 : STD_LOGIC; 
  signal sw_3_IBUF_564 : STD_LOGIC; 
  signal sw_4_IBUF_565 : STD_LOGIC; 
  signal sw_5_IBUF_566 : STD_LOGIC; 
  signal sw_6_IBUF_567 : STD_LOGIC; 
  signal sw_7_IBUF_568 : STD_LOGIC; 
  signal Nreg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Treg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cd_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal f_Maddsub_y_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal f_Maddsub_y_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal f_y_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal pcCounter_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
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
      P => N1
    );
  cp_delay3 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_205,
      D => cp_delay2_262,
      Q => cp_delay3_263
    );
  cp_delay2 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_205,
      D => cp_delay1_261,
      Q => cp_delay2_262
    );
  cp_delay1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_205,
      D => btn_0_IBUF_204,
      Q => cp_delay1_261
    );
  cd_q_0 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(0),
      Q => cd_q(0)
    );
  cd_q_1 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(1),
      Q => cd_q(1)
    );
  cd_q_2 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(2),
      Q => cd_q(2)
    );
  cd_q_3 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(3),
      Q => cd_q(3)
    );
  cd_q_4 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(4),
      Q => cd_q(4)
    );
  cd_q_5 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(5),
      Q => cd_q(5)
    );
  cd_q_6 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(6),
      Q => cd_q(6)
    );
  cd_q_7 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(7),
      Q => cd_q(7)
    );
  cd_q_8 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(8),
      Q => cd_q(8)
    );
  cd_q_9 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(9),
      Q => cd_q(9)
    );
  cd_q_10 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(10),
      Q => cd_q(10)
    );
  cd_q_11 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(11),
      Q => cd_q(11)
    );
  cd_q_12 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(12),
      Q => cd_q(12)
    );
  cd_q_13 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(13),
      Q => cd_q(13)
    );
  cd_q_14 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(14),
      Q => cd_q(14)
    );
  cd_q_15 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(15),
      Q => cd_q(15)
    );
  cd_q_16 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(16),
      Q => cd_q(16)
    );
  cd_q_17 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => Result(17),
      Q => cd_q(17)
    );
  pcCounter_count_0 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_205,
      D => Result_0_1,
      Q => pcCounter_count(0)
    );
  pcCounter_count_1 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_205,
      D => Result_1_1,
      Q => pcCounter_count(1)
    );
  pcCounter_count_2 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_205,
      D => Result_2_1,
      Q => pcCounter_count(2)
    );
  pcCounter_count_3 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_205,
      D => Result_3_1,
      Q => pcCounter_count(3)
    );
  cd_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
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
      S => cd_Mcount_q_cy_1_rt_222,
      O => cd_Mcount_q_cy(1)
    );
  cd_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(0),
      LI => cd_Mcount_q_cy_1_rt_222,
      O => Result(1)
    );
  cd_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(1),
      DI => N0,
      S => cd_Mcount_q_cy_2_rt_224,
      O => cd_Mcount_q_cy(2)
    );
  cd_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(1),
      LI => cd_Mcount_q_cy_2_rt_224,
      O => Result(2)
    );
  cd_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(2),
      DI => N0,
      S => cd_Mcount_q_cy_3_rt_226,
      O => cd_Mcount_q_cy(3)
    );
  cd_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(2),
      LI => cd_Mcount_q_cy_3_rt_226,
      O => Result(3)
    );
  cd_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(3),
      DI => N0,
      S => cd_Mcount_q_cy_4_rt_228,
      O => cd_Mcount_q_cy(4)
    );
  cd_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(3),
      LI => cd_Mcount_q_cy_4_rt_228,
      O => Result(4)
    );
  cd_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(4),
      DI => N0,
      S => cd_Mcount_q_cy_5_rt_230,
      O => cd_Mcount_q_cy(5)
    );
  cd_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(4),
      LI => cd_Mcount_q_cy_5_rt_230,
      O => Result(5)
    );
  cd_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(5),
      DI => N0,
      S => cd_Mcount_q_cy_6_rt_232,
      O => cd_Mcount_q_cy(6)
    );
  cd_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(5),
      LI => cd_Mcount_q_cy_6_rt_232,
      O => Result(6)
    );
  cd_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(6),
      DI => N0,
      S => cd_Mcount_q_cy_7_rt_234,
      O => cd_Mcount_q_cy(7)
    );
  cd_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(6),
      LI => cd_Mcount_q_cy_7_rt_234,
      O => Result(7)
    );
  cd_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(7),
      DI => N0,
      S => cd_Mcount_q_cy_8_rt_236,
      O => cd_Mcount_q_cy(8)
    );
  cd_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(7),
      LI => cd_Mcount_q_cy_8_rt_236,
      O => Result(8)
    );
  cd_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(8),
      DI => N0,
      S => cd_Mcount_q_cy_9_rt_238,
      O => cd_Mcount_q_cy(9)
    );
  cd_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(8),
      LI => cd_Mcount_q_cy_9_rt_238,
      O => Result(9)
    );
  cd_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(9),
      DI => N0,
      S => cd_Mcount_q_cy_10_rt_208,
      O => cd_Mcount_q_cy(10)
    );
  cd_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(9),
      LI => cd_Mcount_q_cy_10_rt_208,
      O => Result(10)
    );
  cd_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(10),
      DI => N0,
      S => cd_Mcount_q_cy_11_rt_210,
      O => cd_Mcount_q_cy(11)
    );
  cd_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(10),
      LI => cd_Mcount_q_cy_11_rt_210,
      O => Result(11)
    );
  cd_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(11),
      DI => N0,
      S => cd_Mcount_q_cy_12_rt_212,
      O => cd_Mcount_q_cy(12)
    );
  cd_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(11),
      LI => cd_Mcount_q_cy_12_rt_212,
      O => Result(12)
    );
  cd_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(12),
      DI => N0,
      S => cd_Mcount_q_cy_13_rt_214,
      O => cd_Mcount_q_cy(13)
    );
  cd_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(12),
      LI => cd_Mcount_q_cy_13_rt_214,
      O => Result(13)
    );
  cd_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(13),
      DI => N0,
      S => cd_Mcount_q_cy_14_rt_216,
      O => cd_Mcount_q_cy(14)
    );
  cd_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(13),
      LI => cd_Mcount_q_cy_14_rt_216,
      O => Result(14)
    );
  cd_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(14),
      DI => N0,
      S => cd_Mcount_q_cy_15_rt_218,
      O => cd_Mcount_q_cy(15)
    );
  cd_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(14),
      LI => cd_Mcount_q_cy_15_rt_218,
      O => Result(15)
    );
  cd_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(15),
      DI => N0,
      S => cd_Mcount_q_cy_16_rt_220,
      O => cd_Mcount_q_cy(16)
    );
  cd_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(15),
      LI => cd_Mcount_q_cy_16_rt_220,
      O => Result(16)
    );
  cd_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(16),
      LI => cd_Mcount_q_xor_17_rt_240,
      O => Result(17)
    );
  f_Mmux_y_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(9),
      I2 => Treg_q(11),
      O => f_Mmux_y_81_330
    );
  f_Mmux_y_8_f5 : MUXF5
    port map (
      I0 => f_Mmux_y_101_297,
      I1 => f_Mmux_y_9_357,
      S => M_1_Q,
      O => f_Mmux_y_8_f5_342
    );
  f_Mmux_y_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(10),
      I2 => Treg_q(12),
      O => f_Mmux_y_82_337
    );
  f_Mmux_y_8_f5_0 : MUXF5
    port map (
      I0 => f_Mmux_y_102_304,
      I1 => f_Mmux_y_91_358,
      S => M_1_Q,
      O => f_Mmux_y_8_f51
    );
  f_Mmux_y_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(11),
      I2 => Treg_q(13),
      O => f_Mmux_y_83_338
    );
  f_Mmux_y_8_f5_1 : MUXF5
    port map (
      I0 => f_Mmux_y_103_305,
      I1 => f_Mmux_y_92_364,
      S => M_1_Q,
      O => f_Mmux_y_8_f52
    );
  f_Mmux_y_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(12),
      I2 => Treg_q(14),
      O => f_Mmux_y_84_339
    );
  f_Mmux_y_8_f5_2 : MUXF5
    port map (
      I0 => f_Mmux_y_104_306,
      I1 => f_Mmux_y_93_365,
      S => M_1_Q,
      O => f_Mmux_y_8_f53
    );
  f_Mmux_y_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(13),
      I2 => Treg_q(15),
      O => f_Mmux_y_85_340
    );
  f_Mmux_y_6_f5_4 : MUXF5
    port map (
      I0 => f_Mmux_y_85_340,
      I1 => f_Mmux_y_75_328,
      S => M_1_Q,
      O => f_Mmux_y_6_f55
    );
  f_Mmux_y_8_f5_3 : MUXF5
    port map (
      I0 => f_Mmux_y_105_307,
      I1 => f_Mmux_y_94_366,
      S => M_1_Q,
      O => f_Mmux_y_8_f54
    );
  f_Mmux_y_6_f5_5 : MUXF5
    port map (
      I0 => f_Mmux_y_86_341,
      I1 => f_Mmux_y_76_329,
      S => M_1_Q,
      O => f_Mmux_y_6_f56
    );
  f_Mmux_y_8_f5_4 : MUXF5
    port map (
      I0 => f_Mmux_y_106_308,
      I1 => f_Mmux_y_95_367,
      S => M_1_Q,
      O => f_Mmux_y_8_f55
    );
  f_Mmux_y_8_f5_5 : MUXF5
    port map (
      I0 => f_Mmux_y_107_309,
      I1 => f_Mmux_y_96_368,
      S => M_1_Q,
      O => f_Mmux_y_8_f56
    );
  f_Mmux_y_8_f5_6 : MUXF5
    port map (
      I0 => f_Mmux_y_108_310,
      I1 => f_Mmux_y_97_369,
      S => M_1_Q,
      O => f_Mmux_y_8_f57
    );
  f_Mmux_y_8_f5_7 : MUXF5
    port map (
      I0 => f_Mmux_y_109_311,
      I1 => f_Mmux_y_98_370,
      S => M_1_Q,
      O => f_Mmux_y_8_f58
    );
  f_Mmux_y_810 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(5),
      I2 => M_0_Q,
      O => f_Mmux_y_810_331
    );
  f_Mmux_y_8_f5_8 : MUXF5
    port map (
      I0 => f_Mmux_y_1010_298,
      I1 => f_Mmux_y_99_371,
      S => M_1_Q,
      O => f_Mmux_y_8_f59
    );
  f_Mmux_y_49 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f59,
      I2 => f_y_addsub0000(4),
      O => f_Mmux_y_49_325
    );
  f_Mmux_y_811 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(6),
      I2 => M_0_Q,
      O => f_Mmux_y_811_332
    );
  f_Mmux_y_8_f5_9 : MUXF5
    port map (
      I0 => f_Mmux_y_1011_299,
      I1 => f_Mmux_y_910_359,
      S => M_1_Q,
      O => f_Mmux_y_8_f510
    );
  f_Mmux_y_410 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f510,
      I2 => f_y_addsub0000(5),
      O => f_Mmux_y_410_319
    );
  f_Mmux_y_812 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(5),
      I2 => M_0_Q,
      O => f_Mmux_y_812_333
    );
  f_Mmux_y_8_f5_10 : MUXF5
    port map (
      I0 => f_Mmux_y_1012_300,
      I1 => f_Mmux_y_911_360,
      S => M_1_Q,
      O => f_Mmux_y_8_f511
    );
  f_Mmux_y_411 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f511,
      I2 => f_y_addsub0000(6),
      O => f_Mmux_y_411_320
    );
  f_Mmux_y_813 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(6),
      I2 => M_0_Q,
      O => f_Mmux_y_813_334
    );
  f_Mmux_y_8_f5_11 : MUXF5
    port map (
      I0 => f_Mmux_y_1013_301,
      I1 => f_Mmux_y_912_361,
      S => M_1_Q,
      O => f_Mmux_y_8_f512
    );
  f_Mmux_y_412 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f512,
      I2 => f_y_addsub0000(7),
      O => f_Mmux_y_412_321
    );
  f_Mmux_y_814 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(7),
      I2 => Treg_q(9),
      O => f_Mmux_y_814_335
    );
  f_Mmux_y_8_f5_12 : MUXF5
    port map (
      I0 => f_Mmux_y_1014_302,
      I1 => f_Mmux_y_913_362,
      S => M_1_Q,
      O => f_Mmux_y_8_f513
    );
  f_Mmux_y_815 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(8),
      I2 => Treg_q(10),
      O => f_Mmux_y_815_336
    );
  f_Mmux_y_8_f5_13 : MUXF5
    port map (
      I0 => f_Mmux_y_1015_303,
      I1 => f_Mmux_y_914_363,
      S => M_1_Q,
      O => f_Mmux_y_8_f514
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
      CI => f_y_or0002,
      LI => f_Maddsub_y_addsub0000_lut(0),
      O => f_y_addsub0000(0)
    );
  f_Maddsub_y_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => f_y_or0002,
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
      O => seg_Mmux_digit_3_496
    );
  seg_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(0),
      I2 => Treg_q(4),
      O => seg_Mmux_digit_4_500
    );
  seg_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => seg_Mmux_digit_4_500,
      I1 => seg_Mmux_digit_3_496,
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
      O => seg_Mmux_digit_31_497
    );
  seg_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(1),
      I2 => Treg_q(5),
      O => seg_Mmux_digit_41_501
    );
  seg_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => seg_Mmux_digit_41_501,
      I1 => seg_Mmux_digit_31_497,
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
      O => seg_Mmux_digit_32_498
    );
  seg_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(2),
      I2 => Treg_q(6),
      O => seg_Mmux_digit_42_502
    );
  seg_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => seg_Mmux_digit_42_502,
      I1 => seg_Mmux_digit_32_498,
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
      O => seg_Mmux_digit_33_499
    );
  seg_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => Treg_q(3),
      I2 => Treg_q(7),
      O => seg_Mmux_digit_43_503
    );
  seg_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => seg_Mmux_digit_43_503,
      I1 => seg_Mmux_digit_33_499,
      S => seg_clkdiv(19),
      O => seg_digit(3)
    );
  seg_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(18),
      LI => seg_Mcount_clkdiv_xor_19_rt_495,
      O => seg_Result(19)
    );
  seg_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      LI => seg_Mcount_clkdiv_cy_18_rt_475,
      O => seg_Result(18)
    );
  seg_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_18_rt_475,
      O => seg_Mcount_clkdiv_cy(18)
    );
  seg_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      LI => seg_Mcount_clkdiv_cy_17_rt_473,
      O => seg_Result(17)
    );
  seg_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_17_rt_473,
      O => seg_Mcount_clkdiv_cy(17)
    );
  seg_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      LI => seg_Mcount_clkdiv_cy_16_rt_471,
      O => seg_Result(16)
    );
  seg_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_16_rt_471,
      O => seg_Mcount_clkdiv_cy(16)
    );
  seg_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      LI => seg_Mcount_clkdiv_cy_15_rt_469,
      O => seg_Result(15)
    );
  seg_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_15_rt_469,
      O => seg_Mcount_clkdiv_cy(15)
    );
  seg_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      LI => seg_Mcount_clkdiv_cy_14_rt_467,
      O => seg_Result(14)
    );
  seg_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_14_rt_467,
      O => seg_Mcount_clkdiv_cy(14)
    );
  seg_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      LI => seg_Mcount_clkdiv_cy_13_rt_465,
      O => seg_Result(13)
    );
  seg_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_13_rt_465,
      O => seg_Mcount_clkdiv_cy(13)
    );
  seg_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      LI => seg_Mcount_clkdiv_cy_12_rt_463,
      O => seg_Result(12)
    );
  seg_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_12_rt_463,
      O => seg_Mcount_clkdiv_cy(12)
    );
  seg_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      LI => seg_Mcount_clkdiv_cy_11_rt_461,
      O => seg_Result(11)
    );
  seg_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_11_rt_461,
      O => seg_Mcount_clkdiv_cy(11)
    );
  seg_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      LI => seg_Mcount_clkdiv_cy_10_rt_459,
      O => seg_Result(10)
    );
  seg_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_10_rt_459,
      O => seg_Mcount_clkdiv_cy(10)
    );
  seg_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      LI => seg_Mcount_clkdiv_cy_9_rt_493,
      O => seg_Result(9)
    );
  seg_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_9_rt_493,
      O => seg_Mcount_clkdiv_cy(9)
    );
  seg_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      LI => seg_Mcount_clkdiv_cy_8_rt_491,
      O => seg_Result(8)
    );
  seg_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_8_rt_491,
      O => seg_Mcount_clkdiv_cy(8)
    );
  seg_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      LI => seg_Mcount_clkdiv_cy_7_rt_489,
      O => seg_Result(7)
    );
  seg_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_7_rt_489,
      O => seg_Mcount_clkdiv_cy(7)
    );
  seg_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      LI => seg_Mcount_clkdiv_cy_6_rt_487,
      O => seg_Result(6)
    );
  seg_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_6_rt_487,
      O => seg_Mcount_clkdiv_cy(6)
    );
  seg_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      LI => seg_Mcount_clkdiv_cy_5_rt_485,
      O => seg_Result(5)
    );
  seg_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_5_rt_485,
      O => seg_Mcount_clkdiv_cy(5)
    );
  seg_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      LI => seg_Mcount_clkdiv_cy_4_rt_483,
      O => seg_Result(4)
    );
  seg_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_4_rt_483,
      O => seg_Mcount_clkdiv_cy(4)
    );
  seg_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      LI => seg_Mcount_clkdiv_cy_3_rt_481,
      O => seg_Result(3)
    );
  seg_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_3_rt_481,
      O => seg_Mcount_clkdiv_cy(3)
    );
  seg_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      LI => seg_Mcount_clkdiv_cy_2_rt_479,
      O => seg_Result(2)
    );
  seg_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_2_rt_479,
      O => seg_Mcount_clkdiv_cy(2)
    );
  seg_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      LI => seg_Mcount_clkdiv_cy_1_rt_477,
      O => seg_Result(1)
    );
  seg_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_1_rt_477,
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
      DI => N1,
      S => seg_Mcount_clkdiv_lut(0),
      O => seg_Mcount_clkdiv_cy(0)
    );
  seg_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(19),
      Q => seg_clkdiv(19)
    );
  seg_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(18),
      Q => seg_clkdiv(18)
    );
  seg_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(17),
      Q => seg_clkdiv(17)
    );
  seg_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(16),
      Q => seg_clkdiv(16)
    );
  seg_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(15),
      Q => seg_clkdiv(15)
    );
  seg_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(14),
      Q => seg_clkdiv(14)
    );
  seg_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(13),
      Q => seg_clkdiv(13)
    );
  seg_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(12),
      Q => seg_clkdiv(12)
    );
  seg_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(11),
      Q => seg_clkdiv(11)
    );
  seg_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(10),
      Q => seg_clkdiv(10)
    );
  seg_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(9),
      Q => seg_clkdiv(9)
    );
  seg_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(8),
      Q => seg_clkdiv(8)
    );
  seg_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(7),
      Q => seg_clkdiv(7)
    );
  seg_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(6),
      Q => seg_clkdiv(6)
    );
  seg_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(5),
      Q => seg_clkdiv(5)
    );
  seg_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(4),
      Q => seg_clkdiv(4)
    );
  seg_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(3),
      Q => seg_clkdiv(3)
    );
  seg_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(2),
      Q => seg_clkdiv(2)
    );
  seg_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(1),
      Q => seg_clkdiv(1)
    );
  seg_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_449,
      CLR => btn_3_IBUF_205,
      D => seg_Result(0),
      Q => seg_clkdiv(0)
    );
  Nreg_q_15 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(15),
      Q => Nreg_q(15)
    );
  Nreg_q_14 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(14),
      Q => Nreg_q(14)
    );
  Nreg_q_13 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(13),
      Q => Nreg_q(13)
    );
  Nreg_q_12 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(12),
      Q => Nreg_q(12)
    );
  Nreg_q_11 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(11),
      Q => Nreg_q(11)
    );
  Nreg_q_10 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(10),
      Q => Nreg_q(10)
    );
  Nreg_q_9 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(9),
      Q => Nreg_q(9)
    );
  Nreg_q_8 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(8),
      Q => Nreg_q(8)
    );
  Nreg_q_7 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(7),
      Q => Nreg_q(7)
    );
  Nreg_q_6 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(6),
      Q => Nreg_q(6)
    );
  Nreg_q_5 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(5),
      Q => Nreg_q(5)
    );
  Nreg_q_4 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(4),
      Q => Nreg_q(4)
    );
  Nreg_q_3 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(3),
      Q => Nreg_q(3)
    );
  Nreg_q_2 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(2),
      Q => Nreg_q(2)
    );
  Nreg_q_1 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(1),
      Q => Nreg_q(1)
    );
  Nreg_q_0 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(0),
      Q => Nreg_q(0)
    );
  Treg_q_15 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(15),
      Q => Treg_q(15)
    );
  Treg_q_14 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(14),
      Q => Treg_q(14)
    );
  Treg_q_13 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(13),
      Q => Treg_q(13)
    );
  Treg_q_12 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(12),
      Q => Treg_q(12)
    );
  Treg_q_11 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(11),
      Q => Treg_q(11)
    );
  Treg_q_10 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(10),
      Q => Treg_q(10)
    );
  Treg_q_9 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(9),
      Q => Treg_q(9)
    );
  Treg_q_8 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(8),
      Q => Treg_q(8)
    );
  Treg_q_7 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(7),
      Q => Treg_q(7)
    );
  Treg_q_6 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(6),
      Q => Treg_q(6)
    );
  Treg_q_5 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(5),
      Q => Treg_q(5)
    );
  Treg_q_4 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(4),
      Q => Treg_q(4)
    );
  Treg_q_3 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(3),
      Q => Treg_q(3)
    );
  Treg_q_2 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(2),
      Q => Treg_q(2)
    );
  Treg_q_1 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(1),
      Q => Treg_q(1)
    );
  Treg_q_0 : FDCE
    port map (
      C => clkp,
      CE => M_6_Q,
      CLR => btn_3_IBUF_205,
      D => tin(0),
      Q => Treg_q(0)
    );
  cp_outp1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cp_delay3_263,
      I1 => cp_delay2_262,
      I2 => cp_delay1_261,
      O => clkp1
    );
  seg_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => an_0_OBUF_198
    );
  pcCounter_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => pcCounter_count(1),
      I1 => pcCounter_count(0),
      O => Result_1_1
    );
  pcCounter_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(0),
      O => Result_2_1
    );
  pcCounter_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => pcCounter_count(3),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(0),
      I3 => pcCounter_count(2),
      O => Result_3_1
    );
  seg_an_3_mux0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(13),
      I2 => Treg_q(12),
      O => N6
    );
  seg_an_3_mux0001 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => N6,
      I2 => Treg_q(15),
      I3 => seg_clkdiv(19),
      O => an_3_OBUF_201
    );
  rom_Mrom_M61 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => pcCounter_count(3),
      I1 => pcCounter_count(2),
      I2 => pcCounter_count(1),
      O => M_6_Q
    );
  rom_Mrom_M51 : LUT4
    generic map(
      INIT => X"3010"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(3),
      I2 => pcCounter_count(0),
      I3 => pcCounter_count(1),
      O => M_5_Q
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
      O => seg_an_2_mux000128_528
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
      O => a_to_g_2_OBUF_189
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
      O => a_to_g_4_OBUF_191
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
      O => a_to_g_1_OBUF_188
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
      O => a_to_g_5_OBUF_192
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
      O => a_to_g_0_OBUF_187
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
      O => a_to_g_3_OBUF_190
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
      O => a_to_g_6_OBUF_193
    );
  seg_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => seg_an_1_mux00012_525
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
      O => seg_an_1_mux000115_524
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
      O => seg_an_1_mux000152_527
    );
  seg_an_1_mux000172 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => seg_an_1_mux000115_524,
      I1 => seg_an_1_mux000128,
      I2 => seg_an_1_mux000152_527,
      I3 => seg_an_1_mux00012_525,
      O => an_1_OBUF_199
    );
  f_y_or000314 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Nreg_q(5),
      I1 => Nreg_q(4),
      I2 => Nreg_q(15),
      I3 => Nreg_q(14),
      O => f_y_or000314_441
    );
  f_y_or000323 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N298,
      I1 => f_y_or00039_443,
      I2 => f_y_or000314_441,
      O => f_y_or0003
    );
  rom_Mrom_M11 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => pcCounter_count_2_1_455,
      I1 => pcCounter_count(3),
      I2 => pcCounter_count(1),
      O => M_0_Q
    );
  f_Sh8_SW0 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(9),
      I2 => Nreg_q_0_1_126,
      O => N22
    );
  f_Sh8_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(11),
      I1 => Treg_q(10),
      I2 => Nreg_q_0_1_126,
      O => N23
    );
  f_y_shift0002_0_21 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      O => f_y_shift0002_0_21_445
    );
  f_y_shift0002_0_34 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(2),
      I2 => Nreg_q(1),
      O => f_y_shift0002_0_34_446
    );
  f_Sh6_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(6),
      I2 => Nreg_q_0_1_126,
      O => N45
    );
  f_Sh4_SW0 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(5),
      I2 => Nreg_q_0_1_126,
      O => N51
    );
  f_Sh12_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(13),
      I1 => Treg_q(12),
      I2 => Nreg_q_0_1_126,
      O => N54
    );
  f_Sh12_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(15),
      I1 => Treg_q(14),
      I2 => Nreg_q_0_1_126,
      O => N55
    );
  f_Sh34 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => N302,
      O => f_Sh34_376
    );
  f_Sh43_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(11),
      I2 => Nreg_q_0_1_126,
      O => N65
    );
  f_Sh43_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(9),
      I2 => Nreg_q_0_1_126,
      O => N66
    );
  f_Sh42_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(8),
      I2 => Nreg_q_0_1_126,
      O => N69
    );
  f_Sh42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N303,
      I2 => N69,
      O => f_Sh42_383
    );
  f_Sh41_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(6),
      I2 => Nreg_q(0),
      O => N72
    );
  f_Sh39_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(5),
      I2 => Nreg_q(0),
      O => N78
    );
  f_Sh38_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q(0),
      O => N81
    );
  f_Sh36_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(1),
      I2 => Nreg_q(0),
      O => N87
    );
  f_Sh35_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q_0_1_126,
      O => N90
    );
  f_fcode_1_1421 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(3),
      I2 => N301,
      I3 => f_Sh41_382,
      O => f_fcode_1_1421_392
    );
  f_fcode_1_1321 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(3),
      I2 => f_Sh32,
      I3 => f_Sh40_381,
      O => f_fcode_1_1321_389
    );
  f_fcode_1_542 : LUT4
    generic map(
      INIT => X"00AC"
    )
    port map (
      I0 => Treg_q(13),
      I1 => Treg_q(15),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_fcode_1_542_416
    );
  f_fcode_1_574 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => f_fcode_1_527_415,
      I2 => f_fcode_1_542_416,
      I3 => f_Sh39_380,
      O => f_fcode_1_574_417
    );
  f_fcode_1_442 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(12),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_fcode_1_442_410
    );
  f_fcode_1_474 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => f_fcode_1_427_409,
      I2 => f_fcode_1_442_410,
      I3 => f_Sh38_379,
      O => f_fcode_1_474_412
    );
  f_fcode_1_342 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => Treg_q(13),
      I1 => Treg_q(11),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_fcode_1_342_404
    );
  f_fcode_1_374 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => f_fcode_1_327_403,
      I2 => f_fcode_1_342_404,
      I3 => f_Sh37_378,
      O => f_fcode_1_374_405
    );
  f_fcode_1_3120 : LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => f_y_or0003,
      I2 => f_fcode_1_374_405,
      I3 => f_fcode_1_38_406,
      O => f_fcode_1_3120_402
    );
  f_fcode_1_28 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => N300,
      I2 => f_Sh40_381,
      O => f_fcode_1_28_400
    );
  f_fcode_1_227 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => Treg_q(9),
      I1 => Treg_q(11),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_fcode_1_227_397
    );
  f_fcode_1_242 : LUT4
    generic map(
      INIT => X"00AC"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(12),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      O => f_fcode_1_242_398
    );
  f_fcode_1_2120 : LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => f_y_or0003,
      I2 => f_fcode_1_274_399,
      I3 => f_fcode_1_28_400,
      O => f_fcode_1_2120_396
    );
  rom_Mrom_M31 : LUT4
    generic map(
      INIT => X"1735"
    )
    port map (
      I0 => pcCounter_count(1),
      I1 => pcCounter_count(3),
      I2 => pcCounter_count(2),
      I3 => pcCounter_count(0),
      O => M_3_Q
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_205
    );
  btn_0_IBUF : IBUF
    port map (
      I => btn(0),
      O => btn_0_IBUF_204
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_568
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_567
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_566
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_565
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_564
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_563
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_562
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_561
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_201,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_200,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_199,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_198,
      O => an(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_193,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_192,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_191,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_190,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_189,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_188,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_187,
      O => a_to_g(0)
    );
  cd_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(1),
      O => cd_Mcount_q_cy_1_rt_222
    );
  cd_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(2),
      O => cd_Mcount_q_cy_2_rt_224
    );
  cd_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(3),
      O => cd_Mcount_q_cy_3_rt_226
    );
  cd_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(4),
      O => cd_Mcount_q_cy_4_rt_228
    );
  cd_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(5),
      O => cd_Mcount_q_cy_5_rt_230
    );
  cd_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(6),
      O => cd_Mcount_q_cy_6_rt_232
    );
  cd_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(7),
      O => cd_Mcount_q_cy_7_rt_234
    );
  cd_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(8),
      O => cd_Mcount_q_cy_8_rt_236
    );
  cd_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(9),
      O => cd_Mcount_q_cy_9_rt_238
    );
  cd_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(10),
      O => cd_Mcount_q_cy_10_rt_208
    );
  cd_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(11),
      O => cd_Mcount_q_cy_11_rt_210
    );
  cd_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(12),
      O => cd_Mcount_q_cy_12_rt_212
    );
  cd_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(13),
      O => cd_Mcount_q_cy_13_rt_214
    );
  cd_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(14),
      O => cd_Mcount_q_cy_14_rt_216
    );
  cd_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(15),
      O => cd_Mcount_q_cy_15_rt_218
    );
  cd_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(16),
      O => cd_Mcount_q_cy_16_rt_220
    );
  seg_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(18),
      O => seg_Mcount_clkdiv_cy_18_rt_475
    );
  seg_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(17),
      O => seg_Mcount_clkdiv_cy_17_rt_473
    );
  seg_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(16),
      O => seg_Mcount_clkdiv_cy_16_rt_471
    );
  seg_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(15),
      O => seg_Mcount_clkdiv_cy_15_rt_469
    );
  seg_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(14),
      O => seg_Mcount_clkdiv_cy_14_rt_467
    );
  seg_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(13),
      O => seg_Mcount_clkdiv_cy_13_rt_465
    );
  seg_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(12),
      O => seg_Mcount_clkdiv_cy_12_rt_463
    );
  seg_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(11),
      O => seg_Mcount_clkdiv_cy_11_rt_461
    );
  seg_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(10),
      O => seg_Mcount_clkdiv_cy_10_rt_459
    );
  seg_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(9),
      O => seg_Mcount_clkdiv_cy_9_rt_493
    );
  seg_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(8),
      O => seg_Mcount_clkdiv_cy_8_rt_491
    );
  seg_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(7),
      O => seg_Mcount_clkdiv_cy_7_rt_489
    );
  seg_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(6),
      O => seg_Mcount_clkdiv_cy_6_rt_487
    );
  seg_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(5),
      O => seg_Mcount_clkdiv_cy_5_rt_485
    );
  seg_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(4),
      O => seg_Mcount_clkdiv_cy_4_rt_483
    );
  seg_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(3),
      O => seg_Mcount_clkdiv_cy_3_rt_481
    );
  seg_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(2),
      O => seg_Mcount_clkdiv_cy_2_rt_479
    );
  seg_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(1),
      O => seg_Mcount_clkdiv_cy_1_rt_477
    );
  cd_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(17),
      O => cd_Mcount_q_xor_17_rt_240
    );
  seg_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(19),
      O => seg_Mcount_clkdiv_xor_19_rt_495
    );
  f_Maddsub_y_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"9A65"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Nreg_q(0),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(0)
    );
  f_Maddsub_y_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => Treg_q(1),
      I1 => Nreg_q(1),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(1)
    );
  f_Maddsub_y_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Nreg_q(2),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(2)
    );
  f_Maddsub_y_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Nreg_q(3),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(3)
    );
  f_Maddsub_y_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(4),
      I1 => Treg_q(4),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(4)
    );
  f_Maddsub_y_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(5),
      I1 => Treg_q(5),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(5)
    );
  f_Maddsub_y_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(6),
      I1 => Treg_q(6),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(6)
    );
  f_Maddsub_y_addsub0000_lut_7_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(7),
      I1 => Treg_q(7),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(7)
    );
  f_Maddsub_y_addsub0000_lut_8_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(8),
      I1 => Treg_q(8),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(8)
    );
  f_Maddsub_y_addsub0000_lut_9_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(9),
      I1 => Treg_q(9),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(9)
    );
  f_Maddsub_y_addsub0000_lut_10_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(10),
      I1 => Treg_q(10),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(10)
    );
  f_Maddsub_y_addsub0000_lut_11_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(11),
      I1 => Treg_q(11),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(11)
    );
  f_Maddsub_y_addsub0000_lut_12_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(12),
      I1 => Treg_q(12),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(12)
    );
  f_Maddsub_y_addsub0000_lut_13_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(13),
      I1 => Treg_q(13),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(13)
    );
  f_Maddsub_y_addsub0000_lut_14_Q : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => Nreg_q(14),
      I1 => Treg_q(14),
      I2 => f_y_or0001,
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(14)
    );
  M_1_1 : LUT4
    generic map(
      INIT => X"0405"
    )
    port map (
      I0 => pcCounter_count_2_1_455,
      I1 => pcCounter_count(0),
      I2 => pcCounter_count(3),
      I3 => pcCounter_count(1),
      O => M_1_Q
    );
  f_Maddsub_y_addsub0000_lut_15_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => Treg_q(15),
      I1 => f_y_or0001,
      I2 => Nreg_q(15),
      I3 => f_y_or0002,
      O => f_Maddsub_y_addsub0000_lut(15)
    );
  f_fcode_1_5164 : LUT4
    generic map(
      INIT => X"B3B0"
    )
    port map (
      I0 => Treg_q(15),
      I1 => M_0_Q,
      I2 => M_1_Q,
      I3 => f_fcode_1_5120_414,
      O => f_fcode_1_6
    );
  f_fcode_1_4164 : LUT4
    generic map(
      INIT => X"B3B0"
    )
    port map (
      I0 => Treg_q(14),
      I1 => M_0_Q,
      I2 => M_1_Q,
      I3 => f_fcode_1_4120_408,
      O => f_fcode_1_5
    );
  f_fcode_1_3165 : LUT4
    generic map(
      INIT => X"B3B0"
    )
    port map (
      I0 => Treg_q(13),
      I1 => M_0_Q,
      I2 => M_1_Q,
      I3 => f_fcode_1_3120_402,
      O => f_fcode_1_4
    );
  f_fcode_1_2165 : LUT4
    generic map(
      INIT => X"B3B0"
    )
    port map (
      I0 => Treg_q(12),
      I1 => M_0_Q,
      I2 => M_1_Q,
      I3 => f_fcode_1_2120_396,
      O => f_fcode_1_3
    );
  nmux_y_0_38 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => sw_0_IBUF_561,
      I1 => N01,
      I2 => nmux_y_0_15_451,
      I3 => nmux_y_0_0_450,
      O => tin(0)
    );
  f_y_or00022 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => pcCounter_count_2_1_455,
      I1 => pcCounter_count(0),
      I2 => pcCounter_count(3),
      I3 => pcCounter_count(1),
      O => f_y_or0002
    );
  f_y_or00011 : LUT4
    generic map(
      INIT => X"F9A0"
    )
    port map (
      I0 => pcCounter_count_2_1_455,
      I1 => pcCounter_count(0),
      I2 => pcCounter_count(3),
      I3 => pcCounter_count(1),
      O => f_y_or0001
    );
  f_fcode_1_918 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y_or00034_442,
      I1 => N299,
      I2 => f_y_or000314_441,
      I3 => M_0_Q,
      O => f_fcode_1_1018
    );
  f_fcode_1_146 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N78,
      I2 => N304,
      I3 => N106,
      O => f_fcode_1_146_393
    );
  f_fcode_1_136 : LUT4
    generic map(
      INIT => X"00D8"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N87,
      I2 => N81,
      I3 => N306,
      O => f_fcode_1_136_390
    );
  f_fcode_1_61 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N75,
      I2 => N81,
      I3 => N106,
      O => f_fcode_1_61_420
    );
  f_Mmux_y_312 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => f_fcode_1_1212_388,
      I1 => f_fcode_1_1018,
      I2 => N115,
      I3 => N114,
      O => f_Mmux_y_312_314
    );
  f_y_shift0002_0_116_SW0 : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => Treg_q(1),
      I1 => M_1_Q,
      I2 => M_0_Q,
      O => N117
    );
  f_y_shift0002_0_116_SW1 : LUT4
    generic map(
      INIT => X"B717"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(1),
      I2 => M_1_Q,
      I3 => f_y_or0003,
      O => N118
    );
  f_Mmux_y_311 : LUT4
    generic map(
      INIT => X"DF80"
    )
    port map (
      I0 => f_fcode_1_1018,
      I1 => N124,
      I2 => f_fcode_1_1112_387,
      I3 => N123,
      O => f_Mmux_y_311_313
    );
  f_fcode_1_1229_SW1 : LUT4
    generic map(
      INIT => X"FAFC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(6),
      I2 => M_1_Q,
      I3 => M_0_Q,
      O => N115
    );
  f_fcode_1_1129_SW1 : LUT4
    generic map(
      INIT => X"FAFC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(5),
      I2 => M_1_Q,
      I3 => M_0_Q,
      O => N124
    );
  f_Mmux_y_39 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => f_fcode_1_912_421,
      I1 => f_fcode_1_1018,
      I2 => N130,
      I3 => N129,
      O => f_Mmux_y_39_318
    );
  f_Mmux_y_310 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => f_fcode_1_1012_385,
      I1 => f_fcode_1_1018,
      I2 => N133,
      I3 => N132,
      O => f_Mmux_y_310_312
    );
  f_fcode_1_48_SW0 : LUT3
    generic map(
      INIT => X"8C"
    )
    port map (
      I0 => Treg_q(10),
      I1 => M_1_Q,
      I2 => M_0_Q,
      O => N141
    );
  f_fcode_1_48_SW1 : LUT4
    generic map(
      INIT => X"8A8F"
    )
    port map (
      I0 => M_1_Q,
      I1 => Treg_q(10),
      I2 => M_0_Q,
      I3 => f_y_or0003,
      O => N142
    );
  f_fcode_1_76 : LUT4
    generic map(
      INIT => X"FE04"
    )
    port map (
      I0 => f_fcode_1_61_420,
      I1 => N141,
      I2 => f_fcode_1_211_395,
      I3 => N142,
      O => f_fcode_1_1
    );
  f_Mmux_y_76 : LUT4
    generic map(
      INIT => X"22E2"
    )
    port map (
      I0 => Treg_q(15),
      I1 => M_0_Q,
      I2 => N149,
      I3 => f_y_or0003,
      O => f_Mmux_y_76_329
    );
  f_Mmux_y_2_f5_7_SW0 : LUT4
    generic map(
      INIT => X"CA0A"
    )
    port map (
      I0 => sw_3_IBUF_564,
      I1 => M_3_Q,
      I2 => N01,
      I3 => f_Mmux_y_38_317,
      O => N151
    );
  f_Mmux_y_2_f5_7_SW1 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => N305,
      I1 => M_3_Q,
      I2 => sw_3_IBUF_564,
      I3 => f_Mmux_y_38_317,
      O => N152
    );
  nmux_y_3_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N152,
      I1 => N151,
      I2 => f_Mmux_y_48_324,
      O => tin(3)
    );
  f_Mmux_y_2_f5_6_SW0 : LUT4
    generic map(
      INIT => X"CA0A"
    )
    port map (
      I0 => sw_2_IBUF_563,
      I1 => M_3_Q,
      I2 => N01,
      I3 => f_Mmux_y_37_316,
      O => N154
    );
  f_Mmux_y_2_f5_6_SW1 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => N01,
      I1 => M_3_Q,
      I2 => sw_2_IBUF_563,
      I3 => f_Mmux_y_37_316,
      O => N155
    );
  nmux_y_2_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N155,
      I1 => N154,
      I2 => f_Mmux_y_47_323,
      O => tin(2)
    );
  f_Mmux_y_2_f5_5_SW0 : LUT4
    generic map(
      INIT => X"CA0A"
    )
    port map (
      I0 => sw_1_IBUF_562,
      I1 => M_3_Q,
      I2 => N01,
      I3 => f_Mmux_y_36_315,
      O => N157
    );
  f_Mmux_y_2_f5_5_SW1 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => N01,
      I1 => M_3_Q,
      I2 => sw_1_IBUF_562,
      I3 => f_Mmux_y_36_315,
      O => N158
    );
  nmux_y_1_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N158,
      I1 => N157,
      I2 => f_Mmux_y_46_322,
      O => tin(1)
    );
  f_Mmux_y_99_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => pcCounter_count(3),
      I1 => pcCounter_count(1),
      O => N160
    );
  f_Mmux_y_99 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Nreg_q(4),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_99_371
    );
  f_Mmux_y_910 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Nreg_q(5),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_910_359
    );
  f_fcode_1_929_SW1 : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(5),
      I2 => M_1_Q,
      I3 => M_0_Q,
      O => N130
    );
  f_fcode_1_1029_SW1 : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(6),
      I2 => M_1_Q,
      I3 => M_0_Q,
      O => N133
    );
  f_fcode_1_1112 : LUT4
    generic map(
      INIT => X"0232"
    )
    port map (
      I0 => f_Sh38_379,
      I1 => Nreg_q(3),
      I2 => Nreg_q(2),
      I3 => N164,
      O => f_fcode_1_1112_387
    );
  nmux_y_0_15 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => M_3_Q,
      I1 => M_1_Q,
      I2 => f_Mmux_y_10_296,
      I3 => f_y_addsub0000(0),
      O => nmux_y_0_15_451
    );
  f_y_shift0003_0_1_SW1 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => Treg_q(0),
      I1 => pcCounter_count(3),
      I2 => pcCounter_count(1),
      I3 => pcCounter_count(2),
      O => N145
    );
  nmux_y_11_1 : MUXF5
    port map (
      I0 => N169,
      I1 => N170,
      S => M_3_Q,
      O => tin(11)
    );
  nmux_y_11_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f51,
      I3 => f_y_addsub0000(11),
      O => N169
    );
  nmux_y_10_1 : MUXF5
    port map (
      I0 => N171,
      I1 => N172,
      S => M_3_Q,
      O => tin(10)
    );
  nmux_y_10_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f5_342,
      I3 => f_y_addsub0000(10),
      O => N171
    );
  nmux_y_9_1 : MUXF5
    port map (
      I0 => N173,
      I1 => N174,
      S => M_3_Q,
      O => tin(9)
    );
  nmux_y_9_1_F : LUT4
    generic map(
      INIT => X"C480"
    )
    port map (
      I0 => M_1_Q,
      I1 => N01,
      I2 => f_Mmux_y_8_f514,
      I3 => f_y_addsub0000(9),
      O => N173
    );
  nmux_y_8_1 : MUXF5
    port map (
      I0 => N175,
      I1 => N176,
      S => M_3_Q,
      O => tin(8)
    );
  nmux_y_8_1_F : LUT4
    generic map(
      INIT => X"C480"
    )
    port map (
      I0 => M_1_Q,
      I1 => N01,
      I2 => f_Mmux_y_8_f513,
      I3 => f_y_addsub0000(8),
      O => N175
    );
  nmux_y_15_1 : MUXF5
    port map (
      I0 => N177,
      I1 => N178,
      S => M_3_Q,
      O => tin(15)
    );
  nmux_y_15_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f55,
      I3 => f_y_addsub0000(15),
      O => N177
    );
  nmux_y_15_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_6_f56,
      I3 => f_fcode_1_6,
      O => N178
    );
  nmux_y_14_1 : MUXF5
    port map (
      I0 => N179,
      I1 => N180,
      S => M_3_Q,
      O => tin(14)
    );
  nmux_y_14_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f54,
      I3 => f_y_addsub0000(14),
      O => N179
    );
  nmux_y_14_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_6_f55,
      I3 => f_fcode_1_5,
      O => N180
    );
  nmux_y_13_1 : MUXF5
    port map (
      I0 => N181,
      I1 => N182,
      S => M_3_Q,
      O => tin(13)
    );
  nmux_y_13_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f53,
      I3 => f_y_addsub0000(13),
      O => N181
    );
  nmux_y_12_1 : MUXF5
    port map (
      I0 => N183,
      I1 => N184,
      S => M_3_Q,
      O => tin(12)
    );
  nmux_y_12_1_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_8_f52,
      I3 => f_y_addsub0000(12),
      O => N183
    );
  f_y_shift0002_0_89 : MUXF5
    port map (
      I0 => N185,
      I1 => N186,
      S => Nreg_q(3),
      O => f_y_shift0002_0_89_447
    );
  f_y_shift0002_0_89_F : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(0),
      I2 => f_y_shift0002_0_21_445,
      I3 => f_y_shift0002_0_34_446,
      O => N185
    );
  f_y_shift0002_0_89_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N22,
      I3 => N23,
      O => N186
    );
  f_y_shift0002_0_12 : MUXF5
    port map (
      I0 => N187,
      I1 => N188,
      S => Nreg_q(3),
      O => f_y_shift0002_0_12_444
    );
  f_y_shift0002_0_12_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N51,
      I3 => N45,
      O => N187
    );
  f_y_shift0002_0_12_G : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(1),
      I2 => N55,
      I3 => N54,
      O => N188
    );
  f_fcode_1_581 : MUXF5
    port map (
      I0 => N191,
      I1 => N192,
      S => Nreg_q(3),
      O => f_fcode_1_581_418
    );
  f_fcode_1_581_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N65,
      I2 => N66,
      O => N191
    );
  f_fcode_1_581_G : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N90,
      I2 => N84,
      O => N192
    );
  f_Sh38 : MUXF5
    port map (
      I0 => N193,
      I1 => N194,
      S => Nreg_q(1),
      O => f_Sh38_379
    );
  f_Sh38_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Treg_q(6),
      I2 => Nreg_q_0_1_126,
      O => N193
    );
  f_Sh38_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q_0_1_126,
      O => N194
    );
  f_fcode_1_471 : MUXF5
    port map (
      I0 => N195,
      I1 => N196,
      S => Nreg_q(3),
      O => f_fcode_1_471_411
    );
  f_fcode_1_471_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nreg_q(1),
      I1 => N68,
      I2 => N69,
      O => N195
    );
  f_fcode_1_471_G : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => N63,
      O => N196
    );
  f_Sh37 : MUXF5
    port map (
      I0 => N197,
      I1 => N198,
      S => Nreg_q(1),
      O => f_Sh37_378
    );
  f_Sh37_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(5),
      I2 => Nreg_q_0_1_126,
      O => N197
    );
  f_Sh37_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(3),
      I2 => Nreg_q_0_1_126,
      O => N198
    );
  f_Sh36 : MUXF5
    port map (
      I0 => N199,
      I1 => N200,
      S => Nreg_q(1),
      O => f_Sh36_377
    );
  f_Sh36_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Treg_q(4),
      I2 => Nreg_q_0_1_126,
      O => N199
    );
  f_Sh36_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(1),
      I2 => Nreg_q_0_1_126,
      O => N200
    );
  f_Sh41 : MUXF5
    port map (
      I0 => N201,
      I1 => N202,
      S => Nreg_q(1),
      O => f_Sh41_382
    );
  f_Sh41_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Treg_q(9),
      I2 => Nreg_q_0_1_126,
      O => N201
    );
  f_Sh41_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(6),
      I2 => Nreg_q_0_1_126,
      O => N202
    );
  f_Sh40 : MUXF5
    port map (
      I0 => N203,
      I1 => N204,
      S => Nreg_q(1),
      O => f_Sh40_381
    );
  f_Sh40_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(8),
      I2 => Nreg_q_0_1_126,
      O => N203
    );
  f_Sh40_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(5),
      I1 => Treg_q(6),
      I2 => Nreg_q_0_1_126,
      O => N204
    );
  f_Sh39 : MUXF5
    port map (
      I0 => N205,
      I1 => N206,
      S => Nreg_q(1),
      O => f_Sh39_380
    );
  f_Sh39_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Treg_q(6),
      I2 => Nreg_q_0_1_126,
      O => N205
    );
  f_Sh39_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(4),
      I1 => Treg_q(5),
      I2 => Nreg_q_0_1_126,
      O => N206
    );
  nmux_y_5_1 : MUXF5
    port map (
      I0 => N213,
      I1 => N214,
      S => f_Mmux_y_410_319,
      O => tin(5)
    );
  nmux_y_5_1_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => N01,
      I1 => sw_5_IBUF_566,
      I2 => M_3_Q,
      I3 => f_Mmux_y_310_312,
      O => N213
    );
  nmux_y_5_1_G : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => N01,
      I1 => M_3_Q,
      I2 => sw_5_IBUF_566,
      I3 => f_Mmux_y_310_312,
      O => N214
    );
  nmux_y_4_1 : MUXF5
    port map (
      I0 => N215,
      I1 => N216,
      S => f_Mmux_y_49_325,
      O => tin(4)
    );
  nmux_y_4_1_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => N01,
      I1 => sw_4_IBUF_565,
      I2 => M_3_Q,
      I3 => f_Mmux_y_39_318,
      O => N215
    );
  nmux_y_4_1_G : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => N01,
      I1 => M_3_Q,
      I2 => sw_4_IBUF_565,
      I3 => f_Mmux_y_39_318,
      O => N216
    );
  f_fcode_1_1212 : MUXF5
    port map (
      I0 => N217,
      I1 => N218,
      S => Nreg_q(1),
      O => f_fcode_1_1212_388
    );
  f_fcode_1_1212_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => N72,
      I3 => N84,
      O => N217
    );
  f_fcode_1_1212_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => N90,
      I3 => N78,
      O => N218
    );
  f_Mmux_y_96 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(1),
      I1 => Nreg_q(1),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_96_368
    );
  f_Mmux_y_97 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Nreg_q(2),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_97_369
    );
  f_Mmux_y_98 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(3),
      I1 => Nreg_q(3),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_98_370
    );
  f_Mmux_y_911 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(6),
      I1 => Nreg_q(6),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_911_360
    );
  f_Mmux_y_912 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(7),
      I1 => Nreg_q(7),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_912_361
    );
  f_Mmux_y_107_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => pcCounter_count(3),
      I1 => pcCounter_count(1),
      O => N233
    );
  f_Mmux_y_107 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => N233,
      O => f_Mmux_y_107_309
    );
  f_Mmux_y_108 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(2),
      I2 => Nreg_q(2),
      I3 => N233,
      O => f_Mmux_y_108_310
    );
  f_Mmux_y_109 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(3),
      I2 => Nreg_q(3),
      I3 => N233,
      O => f_Mmux_y_109_311
    );
  f_Mmux_y_1012 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(6),
      I2 => Nreg_q(6),
      I3 => N233,
      O => f_Mmux_y_1012_300
    );
  f_Mmux_y_1013 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(7),
      I2 => Nreg_q(7),
      I3 => N233,
      O => f_Mmux_y_1013_301
    );
  f_Mmux_y_9 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Nreg_q(10),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_9_357
    );
  f_Mmux_y_91 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(11),
      I1 => Nreg_q(11),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_91_358
    );
  f_Mmux_y_92 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(12),
      I1 => Nreg_q(12),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_92_364
    );
  f_Mmux_y_93 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(13),
      I1 => Nreg_q(13),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_93_365
    );
  f_Mmux_y_94 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Nreg_q(14),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_94_366
    );
  f_Mmux_y_95 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(15),
      I1 => Nreg_q(15),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_95_367
    );
  f_Mmux_y_913 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(8),
      I1 => Nreg_q(8),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_913_362
    );
  f_Mmux_y_914 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(9),
      I1 => Nreg_q(9),
      I2 => pcCounter_count(2),
      I3 => N160,
      O => f_Mmux_y_914_363
    );
  f_Mmux_y_101 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(10),
      I2 => Nreg_q(10),
      I3 => N233,
      O => f_Mmux_y_101_297
    );
  f_Mmux_y_102 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(11),
      I2 => Nreg_q(11),
      I3 => N233,
      O => f_Mmux_y_102_304
    );
  f_Mmux_y_103 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(12),
      I2 => Nreg_q(12),
      I3 => N233,
      O => f_Mmux_y_103_305
    );
  f_Mmux_y_104 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(13),
      I2 => Nreg_q(13),
      I3 => N233,
      O => f_Mmux_y_104_306
    );
  f_Mmux_y_105 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(14),
      I2 => Nreg_q(14),
      I3 => N233,
      O => f_Mmux_y_105_307
    );
  f_Mmux_y_106 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(15),
      I2 => Nreg_q(15),
      I3 => N233,
      O => f_Mmux_y_106_308
    );
  f_Mmux_y_1014 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(8),
      I2 => Nreg_q(8),
      I3 => N233,
      O => f_Mmux_y_1014_302
    );
  f_Mmux_y_1015 : LUT4
    generic map(
      INIT => X"6233"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(9),
      I2 => Nreg_q(9),
      I3 => N233,
      O => f_Mmux_y_1015_303
    );
  f_Mmux_y_1010 : LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => Nreg_q(4),
      I1 => Treg_q(4),
      I2 => M_0_Q,
      O => f_Mmux_y_1010_298
    );
  f_Mmux_y_1011 : LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => Nreg_q(5),
      I1 => Treg_q(5),
      I2 => M_0_Q,
      O => f_Mmux_y_1011_299
    );
  seg_an_2_mux000141 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => seg_clkdiv(19),
      I1 => seg_clkdiv(18),
      I2 => seg_an_2_mux000128_528,
      I3 => seg_an_1_mux000128,
      O => an_2_OBUF_200
    );
  f_Mmux_y_86 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => Treg_q(14),
      I2 => pcCounter_count(1),
      I3 => pcCounter_count(3),
      O => f_Mmux_y_86_341
    );
  f_fcode_1_176_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(3),
      I3 => Treg_q(11),
      O => N212
    );
  f_y_shift0002_15_1_SW0 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => Treg_q(15),
      I1 => Nreg_q(1),
      I2 => Nreg_q(0),
      I3 => N297,
      O => N149
    );
  f_fcode_1_912 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => f_Sh32,
      I3 => f_Sh36_377,
      O => f_fcode_1_912_421
    );
  f_fcode_1_1012 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      I2 => f_Sh33,
      I3 => f_Sh37_378,
      O => f_fcode_1_1012_385
    );
  f_Mmux_y_75_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => f_y_or00039_443,
      I1 => f_y_or000314_441,
      I2 => f_y_or00034_442,
      I3 => f_Sh14,
      O => N277
    );
  f_Mmux_y_75 : LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => Treg_q(15),
      I1 => f_N01,
      I2 => M_0_Q,
      I3 => N277,
      O => f_Mmux_y_75_328
    );
  nmux_y_8_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_814_335,
      I3 => f_fcode_1_14,
      O => N176
    );
  nmux_y_9_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_815_336,
      I3 => f_fcode_1_15,
      O => N174
    );
  nmux_y_10_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_81_330,
      I3 => f_fcode_1_1,
      O => N172
    );
  nmux_y_13_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_84_339,
      I3 => f_fcode_1_4,
      O => N182
    );
  nmux_y_12_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_83_338,
      I3 => f_fcode_1_3,
      O => N184
    );
  nmux_y_11_1_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N01,
      I1 => M_1_Q,
      I2 => f_Mmux_y_82_337,
      I3 => N212,
      O => N170
    );
  pcCounter_count_2_1 : FDC
    port map (
      C => clkp,
      CLR => btn_3_IBUF_205,
      D => Result_2_1,
      Q => pcCounter_count_2_1_455
    );
  Nreg_q_0_1 : FDCE
    port map (
      C => clkp,
      CE => M_5_Q,
      CLR => btn_3_IBUF_205,
      D => Treg_q(0),
      Q => Nreg_q_0_1_126
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_449
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
  pcCounter_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => pcCounter_count(0),
      O => Result_0_1
    );
  f_fcode_1_1476 : MUXF5
    port map (
      I0 => N279,
      I1 => N280,
      S => M_0_Q,
      O => f_fcode_1_15
    );
  f_fcode_1_1476_F : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => f_fcode_1_1421_392,
      I1 => f_y_or0003,
      I2 => f_fcode_1_146_393,
      I3 => M_1_Q,
      O => N279
    );
  f_fcode_1_1476_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => M_1_Q,
      I1 => Treg_q(9),
      O => N280
    );
  f_fcode_1_1376 : MUXF5
    port map (
      I0 => N281,
      I1 => N282,
      S => M_0_Q,
      O => f_fcode_1_14
    );
  f_fcode_1_1376_F : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => f_fcode_1_1321_389,
      I1 => f_y_or0003,
      I2 => f_fcode_1_136_390,
      I3 => M_1_Q,
      O => N281
    );
  f_fcode_1_1376_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => M_1_Q,
      I1 => Treg_q(8),
      O => N282
    );
  f_Mmux_y_36 : MUXF5
    port map (
      I0 => N283,
      I1 => N284,
      S => M_1_Q,
      O => f_Mmux_y_36_315
    );
  f_Mmux_y_36_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(0),
      I2 => Treg_q(2),
      O => N283
    );
  f_Mmux_y_36_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(3),
      I3 => Treg_q(1),
      O => N284
    );
  f_Mmux_y_37 : MUXF5
    port map (
      I0 => N285,
      I1 => N286,
      S => M_1_Q,
      O => f_Mmux_y_37_316
    );
  f_Mmux_y_37_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(1),
      I2 => Treg_q(3),
      O => N285
    );
  f_Mmux_y_37_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(3),
      I3 => Treg_q(2),
      O => N286
    );
  f_Mmux_y_38 : MUXF5
    port map (
      I0 => N287,
      I1 => N288,
      S => M_1_Q,
      O => f_Mmux_y_38_317
    );
  f_Mmux_y_38_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M_0_Q,
      I1 => Treg_q(2),
      I2 => Treg_q(4),
      O => N287
    );
  f_Mmux_y_38_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => pcCounter_count(2),
      I1 => pcCounter_count(1),
      I2 => pcCounter_count(3),
      I3 => Treg_q(3),
      O => N288
    );
  nmux_y_6_1 : MUXF5
    port map (
      I0 => N289,
      I1 => N290,
      S => f_Mmux_y_311_313,
      O => tin(6)
    );
  nmux_y_6_1_F : LUT4
    generic map(
      INIT => X"7340"
    )
    port map (
      I0 => M_3_Q,
      I1 => N01,
      I2 => f_Mmux_y_411_320,
      I3 => sw_6_IBUF_567,
      O => N289
    );
  nmux_y_6_1_G : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => N01,
      I1 => f_Mmux_y_411_320,
      I2 => sw_6_IBUF_567,
      I3 => M_3_Q,
      O => N290
    );
  nmux_y_7_1 : MUXF5
    port map (
      I0 => N291,
      I1 => N292,
      S => f_Mmux_y_312_314,
      O => tin(7)
    );
  nmux_y_7_1_F : LUT4
    generic map(
      INIT => X"7340"
    )
    port map (
      I0 => M_3_Q,
      I1 => N01,
      I2 => f_Mmux_y_412_321,
      I3 => sw_7_IBUF_568,
      O => N291
    );
  nmux_y_7_1_G : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => N01,
      I1 => f_Mmux_y_412_321,
      I2 => sw_7_IBUF_568,
      I3 => M_3_Q,
      O => N292
    );
  f_Mmux_y_8_SW0 : MUXF5
    port map (
      I0 => N293,
      I1 => N294,
      S => N117,
      O => N166
    );
  f_Mmux_y_8_SW0_F : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M_1_Q,
      I1 => N145,
      O => N293
    );
  f_Mmux_y_8_SW0_G : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_y_shift0002_0_12_444,
      I2 => f_y_shift0002_0_89_447,
      I3 => N145,
      O => N294
    );
  f_Mmux_y_8_SW1 : MUXF5
    port map (
      I0 => N295,
      I1 => N296,
      S => N117,
      O => N167
    );
  f_Mmux_y_8_SW1_F : LUT4
    generic map(
      INIT => X"CD01"
    )
    port map (
      I0 => f_y_shift0002_0_89_447,
      I1 => M_1_Q,
      I2 => f_y_shift0002_0_12_444,
      I3 => N145,
      O => N295
    );
  f_Mmux_y_8_SW1_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N145,
      I1 => M_1_Q,
      O => N296
    );
  f_Mmux_y_46 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f56,
      I2 => f_y_addsub0000(1),
      LO => f_Mmux_y_46_322
    );
  f_Mmux_y_47 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f57,
      I2 => f_y_addsub0000(2),
      LO => f_Mmux_y_47_323
    );
  f_Mmux_y_48 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => M_1_Q,
      I1 => f_Mmux_y_8_f58,
      I2 => f_y_addsub0000(3),
      LO => f_Mmux_y_48_324
    );
  f_Sh1611 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => Nreg_q(2),
      LO => N297,
      O => f_N01
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
      LO => N298,
      O => f_y_or00034_442
    );
  f_y_or00039 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Nreg_q(9),
      I1 => Nreg_q(8),
      I2 => Nreg_q(7),
      I3 => Nreg_q(6),
      LO => N299,
      O => f_y_or00039_443
    );
  f_Sh141 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => Treg_q(14),
      I1 => Treg_q(15),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      LO => f_Sh14
    );
  f_Sh321 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Nreg_q(1),
      I2 => Nreg_q(0),
      LO => N300,
      O => f_Sh32
    );
  f_Sh331 : LUT4_D
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(1),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      LO => N301,
      O => f_Sh33
    );
  f_Sh34_SW0 : LUT3_D
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Treg_q(2),
      I2 => Nreg_q(1),
      LO => N302,
      O => N63
    );
  f_Sh42_SW0 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(9),
      I1 => Treg_q(10),
      I2 => Nreg_q_0_1_126,
      LO => N303,
      O => N68
    );
  f_Sh40_SW1 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nreg_q(0),
      I1 => Treg_q(6),
      I2 => Treg_q(5),
      LO => N75
    );
  f_Sh37_SW1 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Treg_q(2),
      I1 => Treg_q(3),
      I2 => Nreg_q_0_1_126,
      LO => N304,
      O => N84
    );
  f_fcode_1_211 : LUT4_L
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(3),
      I2 => f_Sh34_376,
      I3 => f_Sh42_383,
      LO => f_fcode_1_211_395
    );
  f_fcode_1_527 : LUT4_L
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => Treg_q(12),
      I1 => Treg_q(14),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      LO => f_fcode_1_527_415
    );
  f_fcode_1_5120 : LUT4_L
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => f_y_or0003,
      I2 => f_fcode_1_574_417,
      I3 => f_fcode_1_581_418,
      LO => f_fcode_1_5120_414
    );
  f_fcode_1_427 : LUT4_L
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => Treg_q(11),
      I1 => Treg_q(13),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      LO => f_fcode_1_427_409
    );
  f_fcode_1_4120 : LUT4_L
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => f_y_or0003,
      I2 => f_fcode_1_474_412,
      I3 => f_fcode_1_471_411,
      LO => f_fcode_1_4120_408
    );
  f_fcode_1_38 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => f_Sh33,
      I2 => f_Sh41_382,
      LO => f_fcode_1_38_406
    );
  f_fcode_1_327 : LUT4_L
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => Treg_q(10),
      I1 => Treg_q(12),
      I2 => Nreg_q(1),
      I3 => Nreg_q(0),
      LO => f_fcode_1_327_403
    );
  f_fcode_1_274 : LUT4_L
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Nreg_q(3),
      I1 => f_fcode_1_227_397,
      I2 => f_fcode_1_242_398,
      I3 => f_Sh36_377,
      LO => f_fcode_1_274_399
    );
  nmux_y_0_110 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => pcCounter_count(1),
      I1 => pcCounter_count(2),
      I2 => pcCounter_count(3),
      LO => N305,
      O => N01
    );
  f_Sh37_SW0 : LUT2_D
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Nreg_q(2),
      I1 => Nreg_q(3),
      LO => N306,
      O => N106
    );
  f_fcode_1_1229_SW0 : LUT3_L
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Treg_q(7),
      I1 => M_1_Q,
      I2 => f_Mmux_y_813_334,
      LO => N114
    );
  f_fcode_1_1129_SW0 : LUT3_L
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Treg_q(6),
      I1 => M_1_Q,
      I2 => f_Mmux_y_812_333,
      LO => N123
    );
  f_fcode_1_929_SW0 : LUT3_L
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Treg_q(4),
      I1 => M_1_Q,
      I2 => f_Mmux_y_810_331,
      LO => N129
    );
  f_fcode_1_1029_SW0 : LUT3_L
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Treg_q(5),
      I1 => M_1_Q,
      I2 => f_Mmux_y_811_332,
      LO => N132
    );
  f_fcode_1_1112_SW0 : LUT4_L
    generic map(
      INIT => X"DFD0"
    )
    port map (
      I0 => Treg_q(1),
      I1 => Nreg_q(1),
      I2 => Nreg_q(0),
      I3 => N63,
      LO => N164
    );
  nmux_y_0_0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => M_3_Q,
      I1 => N118,
      I2 => N166,
      I3 => N167,
      LO => nmux_y_0_0_450
    );
  f_Mmux_y_10 : LUT4_L
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => Treg_q(0),
      I1 => Nreg_q(0),
      I2 => pcCounter_count(2),
      I3 => N160,
      LO => f_Mmux_y_10_296
    );

end STRUCTURE;

