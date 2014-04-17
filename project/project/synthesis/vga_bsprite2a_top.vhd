--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Thu Apr 17 15:45:45 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w vga_bsprite2a_top.ngc vga_bsprite2a_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: vga_bsprite2a_top.ngc
-- Output file	: vga_bsprite2a_top.vhd
-- # of Entities	: 1
-- Design Name	: vga_bsprite2a_top
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

entity vga_bsprite2a_top is
  port (
    vsync : out STD_LOGIC; 
    dp : out STD_LOGIC; 
    upBTN : in STD_LOGIC := 'X'; 
    aBTN : in STD_LOGIC := 'X'; 
    rightBTN : in STD_LOGIC := 'X'; 
    leftBTN : in STD_LOGIC := 'X'; 
    ja1 : in STD_LOGIC := 'X'; 
    ja2 : out STD_LOGIC; 
    ja3 : out STD_LOGIC; 
    downBTN : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end vga_bsprite2a_top;

architecture STRUCTURE of vga_bsprite2a_top is
  signal M1_0_Q : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_10_Q_2 : STD_LOGIC; 
  signal M1_10_bdd0 : STD_LOGIC; 
  signal M1_10_bdd5 : STD_LOGIC; 
  signal M1_10_bdd7 : STD_LOGIC; 
  signal M1_10_bdd8 : STD_LOGIC; 
  signal M1_11_Q_7 : STD_LOGIC; 
  signal M1_12_bdd0 : STD_LOGIC; 
  signal M1_14_bdd0 : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_18_Q_11 : STD_LOGIC; 
  signal M1_19_Q : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q_14 : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_26 : STD_LOGIC; 
  signal M1_21_261_17 : STD_LOGIC; 
  signal M1_21_5 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_0_22 : STD_LOGIC; 
  signal M1_22_11_23 : STD_LOGIC; 
  signal M1_22_36_24 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_14_31 : STD_LOGIC; 
  signal M1_23_35_32 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_25_36 : STD_LOGIC; 
  signal M1_24_70_37 : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_24_bdd2 : STD_LOGIC; 
  signal M1_24_bdd4 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_34_42 : STD_LOGIC; 
  signal M1_25_77_43 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_1 : STD_LOGIC; 
  signal M1_26_11_47 : STD_LOGIC; 
  signal M1_26_30_48 : STD_LOGIC; 
  signal M1_26_58_49 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_102_52 : STD_LOGIC; 
  signal M1_27_127_53 : STD_LOGIC; 
  signal M1_27_40_54 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_2_58 : STD_LOGIC; 
  signal M1_28_23_59 : STD_LOGIC; 
  signal M1_28_74_60 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_133 : STD_LOGIC; 
  signal M1_29_1331_63 : STD_LOGIC; 
  signal M1_29_36_SW0 : STD_LOGIC; 
  signal M1_29_36_SW01 : STD_LOGIC; 
  signal M1_29_80_66 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_31_25_71 : STD_LOGIC; 
  signal M1_31_78 : STD_LOGIC; 
  signal M1_31_781_73 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_4_bdd0 : STD_LOGIC; 
  signal M1_8_Q_76 : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_10_bdd0 : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_1_20 : STD_LOGIC; 
  signal M1a_1_8_87 : STD_LOGIC; 
  signal M1a_20_Q_88 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_18_91 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_10_94 : STD_LOGIC; 
  signal M1a_23_14_95 : STD_LOGIC; 
  signal M1a_23_43 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_14_98 : STD_LOGIC; 
  signal M1a_24_38_99 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_26_106_103 : STD_LOGIC; 
  signal M1a_26_47_104 : STD_LOGIC; 
  signal M1a_26_8_105 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_123_107 : STD_LOGIC; 
  signal M1a_27_50_108 : STD_LOGIC; 
  signal M1a_27_83_109 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_28_17_111 : STD_LOGIC; 
  signal M1a_28_32_112 : STD_LOGIC; 
  signal M1a_28_66_113 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_30_115 : STD_LOGIC; 
  signal M1a_29_51_116 : STD_LOGIC; 
  signal M1a_2_Q_117 : STD_LOGIC; 
  signal M1a_30_36_118 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_28 : STD_LOGIC; 
  signal M2_0_281_125 : STD_LOGIC; 
  signal M2_0_282_126 : STD_LOGIC; 
  signal M2_0_bdd10 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd18 : STD_LOGIC; 
  signal M2_0_bdd2 : STD_LOGIC; 
  signal M2_0_bdd20 : STD_LOGIC; 
  signal M2_0_bdd4 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_25_136 : STD_LOGIC; 
  signal M2_10_7 : STD_LOGIC; 
  signal M2_10_bdd2 : STD_LOGIC; 
  signal M2_11_Q_139 : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M2_12_bdd5 : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal M2_18_bdd0 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_117 : STD_LOGIC; 
  signal M2_1_1171_146 : STD_LOGIC; 
  signal M2_1_67 : STD_LOGIC; 
  signal M2_1_671_148 : STD_LOGIC; 
  signal M2_1_672_149 : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_20_Q : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_23_Q_154 : STD_LOGIC; 
  signal M2_26_bdd0 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M2_28_1_157 : STD_LOGIC; 
  signal M2_28_2_158 : STD_LOGIC; 
  signal M2_29_Q : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_10_161 : STD_LOGIC; 
  signal M2_2_31_162 : STD_LOGIC; 
  signal M2_2_50_163 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_2_167 : STD_LOGIC; 
  signal M2_3_200 : STD_LOGIC; 
  signal M2_3_72 : STD_LOGIC; 
  signal M2_3_bdd7 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_117_172 : STD_LOGIC; 
  signal M2_4_127_173 : STD_LOGIC; 
  signal M2_4_24_174 : STD_LOGIC; 
  signal M2_4_38_175 : STD_LOGIC; 
  signal M2_4_49 : STD_LOGIC; 
  signal M2_4_93_177 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_4_bdd10 : STD_LOGIC; 
  signal M2_4_bdd2 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_107 : STD_LOGIC; 
  signal M2_5_1071_183 : STD_LOGIC; 
  signal M2_5_1072_184 : STD_LOGIC; 
  signal M2_5_bdd2 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_120_187 : STD_LOGIC; 
  signal M2_6_169 : STD_LOGIC; 
  signal M2_6_1691_189 : STD_LOGIC; 
  signal M2_6_1692_190 : STD_LOGIC; 
  signal M2_6_51_191 : STD_LOGIC; 
  signal M2_6_87_192 : STD_LOGIC; 
  signal M2_6_bdd1 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_25_195 : STD_LOGIC; 
  signal M2_7_55_196 : STD_LOGIC; 
  signal M2_7_92_197 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_129_200 : STD_LOGIC; 
  signal M2_8_13 : STD_LOGIC; 
  signal M2_8_131_202 : STD_LOGIC; 
  signal M2_8_132_203 : STD_LOGIC; 
  signal M2_8_52_204 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_25_206 : STD_LOGIC; 
  signal M2_9_63_207 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_11_Q : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q_212 : STD_LOGIC; 
  signal M2a_1_Q_213 : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_21_Q : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_22_1_217 : STD_LOGIC; 
  signal M2a_22_2_218 : STD_LOGIC; 
  signal M2a_23_Q_219 : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_18_223 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_3_1_225 : STD_LOGIC; 
  signal M2a_3_2_226 : STD_LOGIC; 
  signal M2a_3_3_227 : STD_LOGIC; 
  signal M2a_3_f5_228 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_4_116_230 : STD_LOGIC; 
  signal M2a_4_14_231 : STD_LOGIC; 
  signal M2a_4_35_232 : STD_LOGIC; 
  signal M2a_4_54_233 : STD_LOGIC; 
  signal M2a_4_77_234 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M2a_5_110_236 : STD_LOGIC; 
  signal M2a_5_9_237 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_6_10 : STD_LOGIC; 
  signal M2a_6_101_240 : STD_LOGIC; 
  signal M2a_6_102_241 : STD_LOGIC; 
  signal M2a_6_49_242 : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_7_58_246 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_11_248 : STD_LOGIC; 
  signal M2a_8_29_249 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_9_13_251 : STD_LOGIC; 
  signal M2a_9_33_252 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_496 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_498 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_500 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_502 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_504 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_506 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_508 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_510 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_0 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_2 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_3 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_4 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_6 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_7 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_8 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_9 : STD_LOGIC; 
  signal U2_Mcount_hcs_xor_9_rt_522 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_525 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_527 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_529 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_531 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_533 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_535 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_537 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_539 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal U2_Mcount_vcs_xor_9_rt_551 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal U2_Result_0_1 : STD_LOGIC; 
  signal U2_Result_1_1 : STD_LOGIC; 
  signal U2_Result_2_1 : STD_LOGIC; 
  signal U2_Result_3_1 : STD_LOGIC; 
  signal U2_Result_4_1 : STD_LOGIC; 
  signal U2_Result_5_1 : STD_LOGIC; 
  signal U2_Result_6_1 : STD_LOGIC; 
  signal U2_Result_7_1 : STD_LOGIC; 
  signal U2_Result_8_1 : STD_LOGIC; 
  signal U2_Result_9_1 : STD_LOGIC; 
  signal U2_clr_inv : STD_LOGIC; 
  signal U2_hcs_cmp_eq0000 : STD_LOGIC; 
  signal U2_hcs_cmp_eq000010_585 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_586 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_597 : STD_LOGIC; 
  signal U2_vidon_and00000_598 : STD_LOGIC; 
  signal U2_vidon_and0000105_599 : STD_LOGIC; 
  signal U2_vidon_and0000117_600 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and0000181_602 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_604 : STD_LOGIC; 
  signal U2_vidon_and000039_605 : STD_LOGIC; 
  signal U2_vidon_and00006_606 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_608 : STD_LOGIC; 
  signal U2_vidon_and000080_609 : STD_LOGIC; 
  signal U2_vsenable_610 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_622 : STD_LOGIC; 
  signal U3_C1_not0001105_623 : STD_LOGIC; 
  signal U3_C1_not000127_624 : STD_LOGIC; 
  signal U3_C1_not00014_625 : STD_LOGIC; 
  signal U3_C1_not000147_626 : STD_LOGIC; 
  signal U3_C1_not00015_627 : STD_LOGIC; 
  signal U3_C1_not000183_628 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_640 : STD_LOGIC; 
  signal U3_C2_not000113_641 : STD_LOGIC; 
  signal U3_C2_not000123_642 : STD_LOGIC; 
  signal U3_C2_not000150_643 : STD_LOGIC; 
  signal U3_C2_not00016_644 : STD_LOGIC; 
  signal U3_C2_not000164_645 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_815 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_817 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_819 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_821 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_823 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_825 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_827 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_829 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_831 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_833 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_835 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_837 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_839 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_841 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_843 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_845 : STD_LOGIC; 
  signal U3_Mcount_q_xor_17_rt_847 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_848 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_849 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_850 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_851 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_852 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_853 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_855 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_856 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_859 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_860 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_861 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_862 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_863 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_864 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_867 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_868 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_869 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_870 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_871 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_872 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_873 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_874 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_875 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_876 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_877 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_878 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_879 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_880 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_881 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_882 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_883 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_885 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_886 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_889 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_890 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_891 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_892 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_893 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_894 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_897 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_898 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_899 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_900 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_901 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_902 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_903 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_904 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_905 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_906 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_907 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_908 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_909 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_910 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_911 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_912 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_913 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_915 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_916 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_919 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_920 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_921 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_922 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_923 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_924 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_927 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_928 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_929 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_SW0 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_931 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_932 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_933 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_934 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_935 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_936 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_937 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_938 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_939 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_940 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_941 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_942 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_943 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_944 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_946 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_947 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_950 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_951 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_952 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_953 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_954 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_955 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_958 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_959 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_960 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_961 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_962 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_963 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW01_965 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_966 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_967 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_968 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_969 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_970 : STD_LOGIC; 
  signal U3_N12 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N16 : STD_LOGIC; 
  signal U3_N30 : STD_LOGIC; 
  signal U3_N35 : STD_LOGIC; 
  signal U3_N36 : STD_LOGIC; 
  signal U3_N60 : STD_LOGIC; 
  signal U3_N78 : STD_LOGIC; 
  signal U3_N80 : STD_LOGIC; 
  signal U3_N81 : STD_LOGIC; 
  signal U3_N84 : STD_LOGIC; 
  signal U3_N85 : STD_LOGIC; 
  signal U3_Q_0_1001 : STD_LOGIC; 
  signal U3_Q_1_1002 : STD_LOGIC; 
  signal U3_Q_10_1003 : STD_LOGIC; 
  signal U3_Q_11_1004 : STD_LOGIC; 
  signal U3_Q_12_1005 : STD_LOGIC; 
  signal U3_Q_13_1006 : STD_LOGIC; 
  signal U3_Q_14_1007 : STD_LOGIC; 
  signal U3_Q_15_1008 : STD_LOGIC; 
  signal U3_Q_16_1009 : STD_LOGIC; 
  signal U3_Q_2_1010 : STD_LOGIC; 
  signal U3_Q_3_1011 : STD_LOGIC; 
  signal U3_Q_4_1012 : STD_LOGIC; 
  signal U3_Q_5_1013 : STD_LOGIC; 
  signal U3_Q_6_1014 : STD_LOGIC; 
  signal U3_Q_7_1015 : STD_LOGIC; 
  signal U3_Q_8_1016 : STD_LOGIC; 
  signal U3_Q_9_1017 : STD_LOGIC; 
  signal U3_Result_0_1 : STD_LOGIC; 
  signal U3_Result_0_2 : STD_LOGIC; 
  signal U3_Result_1_1 : STD_LOGIC; 
  signal U3_Result_1_2 : STD_LOGIC; 
  signal U3_Result_2_1 : STD_LOGIC; 
  signal U3_Result_2_2 : STD_LOGIC; 
  signal U3_Result_3_1 : STD_LOGIC; 
  signal U3_Result_3_2 : STD_LOGIC; 
  signal U3_Result_4_1 : STD_LOGIC; 
  signal U3_Result_4_2 : STD_LOGIC; 
  signal U3_Result_5_1 : STD_LOGIC; 
  signal U3_Result_5_2 : STD_LOGIC; 
  signal U3_Result_6_1 : STD_LOGIC; 
  signal U3_Result_6_2 : STD_LOGIC; 
  signal U3_Result_7_1 : STD_LOGIC; 
  signal U3_Result_7_2 : STD_LOGIC; 
  signal U3_Result_8_1 : STD_LOGIC; 
  signal U3_Result_8_2 : STD_LOGIC; 
  signal U3_Result_9_1 : STD_LOGIC; 
  signal U3_Result_9_2 : STD_LOGIC; 
  signal U3_blue_0_27_1056 : STD_LOGIC; 
  signal U3_blue_0_9_1057 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal U3_red_0_17_1061 : STD_LOGIC; 
  signal U3_red_2_1_1063 : STD_LOGIC; 
  signal U3_red_2_11 : STD_LOGIC; 
  signal U3_red_2_111_1065 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_1078 : STD_LOGIC; 
  signal U3_spriteonB1_and000022_1079 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_1080 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_1082 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and000012_1084 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_1085 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_1086 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW0 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW01_1088 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000043_1090 : STD_LOGIC; 
  signal U3_spriteonB3_and000050_1091 : STD_LOGIC; 
  signal U3_spriteonB3_and000073_1092 : STD_LOGIC; 
  signal U3_spriteonB4_and000017_1093 : STD_LOGIC; 
  signal U3_spriteonB4_and000038_1094 : STD_LOGIC; 
  signal U3_spriteonB4_and00005_1095 : STD_LOGIC; 
  signal U3_spriteonB4_and000052_1096 : STD_LOGIC; 
  signal U3_spriteonB4_and000055_1097 : STD_LOGIC; 
  signal U3_spriteonB4_and000069_1098 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000026_1101 : STD_LOGIC; 
  signal U3_spriteonB5_and000049 : STD_LOGIC; 
  signal U3_spriteonB5_and0000491_1103 : STD_LOGIC; 
  signal U3_spriteonB5_and000083 : STD_LOGIC; 
  signal U3_spriteonB5_and0000831_1105 : STD_LOGIC; 
  signal U3_spriteonB5_and0000832_1106 : STD_LOGIC; 
  signal U3_spriteonB5_and00009 : STD_LOGIC; 
  signal U3_spriteonB5_and000091_1108 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and000012_1110 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00002_1111 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000040_1112 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000058_1113 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000066_1114 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000071_1115 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000084_1116 : STD_LOGIC; 
  signal a_to_g_0_OBUF_1134 : STD_LOGIC; 
  signal a_to_g_1_OBUF_1135 : STD_LOGIC; 
  signal a_to_g_2_OBUF_1136 : STD_LOGIC; 
  signal a_to_g_3_OBUF_1137 : STD_LOGIC; 
  signal a_to_g_4_OBUF_1138 : STD_LOGIC; 
  signal a_to_g_5_OBUF_1139 : STD_LOGIC; 
  signal a_to_g_6_OBUF_1140 : STD_LOGIC; 
  signal an_0_OBUF_1145 : STD_LOGIC; 
  signal an_1_OBUF_1146 : STD_LOGIC; 
  signal blue_0_OBUF_1149 : STD_LOGIC; 
  signal blue_1_OBUF_1150 : STD_LOGIC; 
  signal btn_3_IBUF_1152 : STD_LOGIC; 
  signal green_0_OBUF_1157 : STD_LOGIC; 
  signal green_1_OBUF_1158 : STD_LOGIC; 
  signal green_2_OBUF_1159 : STD_LOGIC; 
  signal hsync_OBUF_1161 : STD_LOGIC; 
  signal ja1_IBUF_1163 : STD_LOGIC; 
  signal ja2_OBUF_1165 : STD_LOGIC; 
  signal ja3_OBUF_1167 : STD_LOGIC; 
  signal mclk_BUFGP_1169 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_1172 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_1174 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_1176 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_1178 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_1180 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_1182 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_1184 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_1186 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_1188 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_1191 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_1193 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_1195 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_1197 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_1199 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_1201 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_1203 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_1205 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_0 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_1 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_2 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_3 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_4 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_5 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_6 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_7 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_8 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_9 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_xor_9_rt_1217 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_1230 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_1242 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_1243 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_left_reg_1245 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_1248 : STD_LOGIC; 
  signal nes_right_reg_1249 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_1272 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_1273 : STD_LOGIC; 
  signal red_0_OBUF_1287 : STD_LOGIC; 
  signal red_1_OBUF_1288 : STD_LOGIC; 
  signal sw_0_IBUF_1296 : STD_LOGIC; 
  signal sw_1_IBUF_1297 : STD_LOGIC; 
  signal sw_2_IBUF_1298 : STD_LOGIC; 
  signal sw_3_IBUF_1299 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_1302 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_1303 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_1304 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_1308 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_1310 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_1312 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_1314 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_1316 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_1318 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_1320 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_1322 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_1324 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_1326 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_1328 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_1330 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_1332 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_1334 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_1336 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_1338 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_1340 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_1342 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_1344 : STD_LOGIC; 
  signal x7_Mmux_digit_4_1345 : STD_LOGIC; 
  signal x7_Mmux_digit_41_1346 : STD_LOGIC; 
  signal x7_Mmux_digit_42_1347 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_hcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_hcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_hcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Madd_spriteon1_addsub0001_lut : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U3_Madd_spriteon2_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_Madd_spriteon2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C1_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C2_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C2_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal U3_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_xpix1_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_xpix1_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix2_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_xpix2_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U3_q : STD_LOGIC_VECTOR ( 17 downto 17 ); 
  signal U3_red : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 8 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_spriteon2f_add0002 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_xpix1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_xpix2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Mcount_counter_reg_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal nes_Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal rom1_addr : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal x7_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal x7_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7_digit : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => an_1_OBUF_1146
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => Result(0),
      Q => U1_q_01
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_a_reg_1230,
      Q => who_present_state_FSM_FFd1_1303
    );
  who_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      D => who_present_state_FSM_FFd2_In,
      PRE => btn_3_IBUF_1152,
      Q => who_present_state_FSM_FFd2_1304
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_522,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_510,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_510,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_508,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_508,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_506,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_506,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_504,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_504,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_502,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_502,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_500,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_500,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_498,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_498,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_496,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_496,
      O => U2_Mcount_hcs_cy(1)
    );
  U2_Mcount_hcs_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U2_Mcount_hcs_lut(0),
      O => U2_Result_0_1
    );
  U2_Mcount_hcs_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => U2_Mcount_hcs_lut(0),
      O => U2_Mcount_hcs_cy(0)
    );
  U2_Mcount_vcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(8),
      LI => U2_Mcount_vcs_xor_9_rt_551,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_539,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_539,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_537,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_537,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_535,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_535,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_533,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_533,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_531,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_531,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_529,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_529,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_527,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_527,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_525,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_525,
      O => U2_Mcount_vcs_cy(1)
    );
  U2_Mcount_vcs_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U2_Mcount_vcs_lut(0),
      O => U2_Result(0)
    );
  U2_Mcount_vcs_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => U2_Mcount_vcs_lut(0),
      O => U2_Mcount_vcs_cy(0)
    );
  U2_hcs_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_610,
      CLR => btn_3_IBUF_1152,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_610
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(8),
      DI => U2_hcs(9),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(9)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteon2_addsub0000(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(7),
      DI => U2_hcs(8),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(8)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteon2_addsub0000(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(6),
      DI => U2_hcs(7),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(7)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(5),
      DI => U2_hcs(6),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(6)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(4),
      DI => U2_hcs(5),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(5)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(3),
      DI => U2_hcs(4),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(4)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(2),
      DI => U2_hcs(3),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(3)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C2(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(1),
      DI => U2_hcs(2),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(2)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C2(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(0),
      DI => U2_hcs(1),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(1)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C2(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(0)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C2(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(8),
      DI => U2_hcs(9),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(9)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteon1_addsub0001(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(7),
      DI => U2_hcs(8),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(8)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteon1_addsub0001(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(6),
      DI => U2_hcs(7),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(7)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(5),
      DI => U2_hcs(6),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(6)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(4),
      DI => U2_hcs(5),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(5)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(3),
      DI => U2_hcs(4),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(4)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(2),
      DI => U2_hcs(3),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(3)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C1(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(1),
      DI => U2_hcs(2),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(2)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C1(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_lt0000_cy(0),
      DI => U2_hcs(1),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(1)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C1(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Mcompar_spriteon1_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy(0)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(8),
      DI => U3_spriteon2_addsub0000(9),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(9),
      O => U3_spriteon2f_cmp_le0000
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteon2_addsub0000(9),
      I1 => U2_hcs(9),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(7),
      DI => U3_spriteon2_addsub0000(8),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(8),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(8)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteon2_addsub0000(8),
      I1 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(8)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(6),
      DI => U3_spriteon2_addsub0000(7),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(5),
      DI => U3_spriteon2_addsub0000(6),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(6)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(4),
      DI => U3_spriteon2_addsub0000(5),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(5)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(3),
      DI => U3_spriteon2f_add0002(4),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(4)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(2),
      DI => U3_C2(3),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(3)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(1),
      DI => U3_C2(2),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(2)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(0),
      DI => U3_C2(1),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(1)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U3_C2(0),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(0)
    );
  U3_Mmux_M2a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_28_Q,
      I2 => M2a_29_Q,
      O => U3_Mmux_M2a_mux0000_7_951
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_951,
      I1 => U3_Mmux_M2a_mux0000_6_946,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_943
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_958,
      I1 => U3_Mmux_M2a_mux0000_71_952,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_947
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_947,
      I1 => U3_Mmux_M2a_mux0000_5_f5_943,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_941
    );
  U3_Mmux_M2a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_22_Q,
      I2 => M2a_23_Q_219,
      O => U3_Mmux_M2a_mux0000_72_953
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_20_Q,
      I2 => M2a_21_Q,
      O => U3_Mmux_M2a_mux0000_81_959
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_959,
      I1 => U3_Mmux_M2a_mux0000_72_953,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_967,
      I1 => U3_Mmux_M2a_mux0000_82_960,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_955
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_955,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_944
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_944,
      I1 => U3_Mmux_M2a_mux0000_4_f6_941,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_940
    );
  U3_Mmux_M2a_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_12_Q,
      I2 => M2a_13_Q_212,
      O => U3_Mmux_M2a_mux0000_83_961
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_961,
      I1 => U3_Mmux_M2a_mux0000_73_954,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f52
    );
  U3_Mmux_M2a_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_10_Q,
      I2 => M2a_11_Q,
      O => U3_Mmux_M2a_mux0000_84_962
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_968
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_968,
      I1 => U3_Mmux_M2a_mux0000_84_962,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f51
    );
  U3_Mmux_M2a_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f51,
      I1 => U3_Mmux_M2a_mux0000_6_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f61
    );
  U3_Mmux_M2a_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_6_Q,
      I2 => M2a_7_Q,
      O => U3_Mmux_M2a_mux0000_85_963
    );
  U3_Mmux_M2a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_4_Q,
      I2 => M2a_5_Q,
      O => U3_Mmux_M2a_mux0000_92_969
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_969,
      I1 => U3_Mmux_M2a_mux0000_85_963,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f52
    );
  U3_Mmux_M2a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_2_Q,
      I2 => M2a_3_Q,
      O => U3_Mmux_M2a_mux0000_93_970
    );
  U3_Mmux_M2a_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => N0,
      I2 => M2a_1_Q_213,
      O => U3_Mmux_M2a_mux0000_10_939
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_939,
      I1 => U3_Mmux_M2a_mux0000_93_970,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_966
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_966,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_950
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_950,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_942
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_942,
      I1 => U3_Mmux_M2a_mux0000_3_f7_940,
      S => U3_xpix2(4),
      O => U3_M2a_mux0000
    );
  U3_Mmux_M1_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_30_Q,
      I2 => M1_31_Q,
      O => U3_Mmux_M1_mux0000_6_855
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_860
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_860,
      I1 => U3_Mmux_M1_mux0000_6_855,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_852
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_861
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_867
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_867,
      I1 => U3_Mmux_M1_mux0000_71_861,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_856
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_856,
      I1 => U3_Mmux_M1_mux0000_5_f5_852,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_850
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_862
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_20_Q_14,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_868
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_868,
      I1 => U3_Mmux_M1_mux0000_72_862,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_18_Q_11,
      I2 => M1_19_Q,
      O => U3_Mmux_M1_mux0000_82_869
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_874,
      I1 => U3_Mmux_M1_mux0000_82_869,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_864
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_864,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_853
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_853,
      I1 => U3_Mmux_M1_mux0000_4_f6_850,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_849
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_870,
      I1 => U3_Mmux_M1_mux0000_73_863,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f52
    );
  U3_Mmux_M1_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_10_Q_2,
      I2 => M1_11_Q_7,
      O => U3_Mmux_M1_mux0000_84_871
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_8_Q_76,
      I2 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_875
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_875,
      I1 => U3_Mmux_M1_mux0000_84_871,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f51
    );
  U3_Mmux_M1_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f51,
      I1 => U3_Mmux_M1_mux0000_6_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f61
    );
  U3_Mmux_M1_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_92_876,
      I1 => U3_Mmux_M1_mux0000_85_872,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f52
    );
  U3_Mmux_M1_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_2_Q,
      I2 => M1_3_Q,
      O => U3_Mmux_M1_mux0000_93_877
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_848
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_848,
      I1 => U3_Mmux_M1_mux0000_93_877,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_873
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_873,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_859
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_859,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_851
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_851,
      I1 => U3_Mmux_M1_mux0000_3_f7_849,
      S => U3_xpix1(4),
      O => U3_M1_mux0000
    );
  U3_Mmux_M1a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_28_Q,
      I2 => M1a_29_Q,
      O => U3_Mmux_M1a_mux0000_7_890
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_890,
      I1 => U3_Mmux_M1a_mux0000_6_885,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_882
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_891
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_897
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_897,
      I1 => U3_Mmux_M1a_mux0000_71_891,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_886
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_886,
      I1 => U3_Mmux_M1a_mux0000_5_f5_882,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_880
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_892
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_20_Q_88,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_898
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_898,
      I1 => U3_Mmux_M1a_mux0000_72_892,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f51
    );
  U3_Mmux_M1a_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_18_Q,
      I2 => M1a_19_Q,
      O => U3_Mmux_M1a_mux0000_82_899
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_904,
      I1 => U3_Mmux_M1a_mux0000_82_899,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_894
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_894,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_883
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_883,
      I1 => U3_Mmux_M1a_mux0000_4_f6_880,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_879
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_900,
      I1 => U3_Mmux_M1a_mux0000_73_893,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f52
    );
  U3_Mmux_M1a_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_10_Q,
      I2 => M1a_11_Q,
      O => U3_Mmux_M1a_mux0000_84_901
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_905
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_905,
      I1 => U3_Mmux_M1a_mux0000_84_901,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f51
    );
  U3_Mmux_M1a_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f51,
      I1 => U3_Mmux_M1a_mux0000_6_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f61
    );
  U3_Mmux_M1a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_92_906,
      I1 => U3_Mmux_M1a_mux0000_85_902,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_2_Q_117,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_907
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_878,
      I1 => U3_Mmux_M1a_mux0000_93_907,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_903
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_903,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_889
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_889,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_881
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_881,
      I1 => U3_Mmux_M1a_mux0000_3_f7_879,
      S => U3_xpix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M2_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_30_Q,
      I2 => M1_0_Q,
      O => U3_Mmux_M2_mux0000_6_915
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_28_Q,
      I2 => M2_29_Q,
      O => U3_Mmux_M2_mux0000_7_920
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_920,
      I1 => U3_Mmux_M2_mux0000_6_915,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_912
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_927,
      I1 => U3_Mmux_M2_mux0000_71_921,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_916
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_916,
      I1 => U3_Mmux_M2_mux0000_5_f5_912,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_910
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_22_Q,
      I2 => M2_23_Q_154,
      O => U3_Mmux_M2_mux0000_72_922
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_20_Q,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_928
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_928,
      I1 => U3_Mmux_M2_mux0000_72_922,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_935,
      I1 => U3_Mmux_M2_mux0000_82_929,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_924
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_924,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_913
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_913,
      I1 => U3_Mmux_M2_mux0000_4_f6_910,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_909
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_12_Q,
      I2 => M2_13_Q,
      O => U3_Mmux_M2_mux0000_83_931
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_931,
      I1 => U3_Mmux_M2_mux0000_73_923,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f52
    );
  U3_Mmux_M2_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_10_Q,
      I2 => M2_11_Q_139,
      O => U3_Mmux_M2_mux0000_84_932
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_936
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_936,
      I1 => U3_Mmux_M2_mux0000_84_932,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f51
    );
  U3_Mmux_M2_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f51,
      I1 => U3_Mmux_M2_mux0000_6_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f61
    );
  U3_Mmux_M2_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_6_Q,
      I2 => M2_7_Q,
      O => U3_Mmux_M2_mux0000_85_933
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_937
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_937,
      I1 => U3_Mmux_M2_mux0000_85_933,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f52
    );
  U3_Mmux_M2_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_2_Q,
      I2 => M2_3_Q,
      O => U3_Mmux_M2_mux0000_93_938
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_0_Q,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_908
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_908,
      I1 => U3_Mmux_M2_mux0000_93_938,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_934
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_934,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_919
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_919,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_911
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_911,
      I1 => U3_Mmux_M2_mux0000_3_f7_909,
      S => U3_xpix2(4),
      O => U3_M2_mux0000
    );
  U3_Msub_xpix2_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(3),
      LI => U3_Msub_xpix2_Madd_lut(4),
      O => U3_xpix2(4)
    );
  U3_Msub_xpix2_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(2),
      LI => U3_Msub_xpix2_Madd_lut(3),
      O => U3_xpix2(3)
    );
  U3_Msub_xpix2_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(2),
      DI => U2_hcs(3),
      S => U3_Msub_xpix2_Madd_lut(3),
      O => U3_Msub_xpix2_Madd_cy(3)
    );
  U3_Msub_xpix2_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C2(3),
      O => U3_Msub_xpix2_Madd_lut(3)
    );
  U3_Msub_xpix2_Madd_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(1),
      LI => U3_Msub_xpix2_Madd_lut(2),
      O => U3_xpix2(2)
    );
  U3_Msub_xpix2_Madd_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(1),
      DI => U2_hcs(2),
      S => U3_Msub_xpix2_Madd_lut(2),
      O => U3_Msub_xpix2_Madd_cy(2)
    );
  U3_Msub_xpix2_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C2(2),
      O => U3_Msub_xpix2_Madd_lut(2)
    );
  U3_Msub_xpix2_Madd_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(0),
      LI => U3_Msub_xpix2_Madd_lut(1),
      O => U3_xpix2(1)
    );
  U3_Msub_xpix2_Madd_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_xpix2_Madd_cy(0),
      DI => U2_hcs(1),
      S => U3_Msub_xpix2_Madd_lut(1),
      O => U3_Msub_xpix2_Madd_cy(1)
    );
  U3_Msub_xpix2_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C2(1),
      O => U3_Msub_xpix2_Madd_lut(1)
    );
  U3_Msub_xpix2_Madd_xor_0_Q : XORCY
    port map (
      CI => an_1_OBUF_1146,
      LI => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2(0)
    );
  U3_Msub_xpix2_Madd_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Msub_xpix2_Madd_lut(0),
      O => U3_Msub_xpix2_Madd_cy(0)
    );
  U3_Msub_xpix2_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C2(0),
      O => U3_Msub_xpix2_Madd_lut(0)
    );
  U3_Msub_xpix1_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(3),
      LI => U3_Msub_xpix1_Madd_lut(4),
      O => U3_xpix1(4)
    );
  U3_Msub_xpix1_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(2),
      LI => U3_Msub_xpix1_Madd_lut(3),
      O => U3_xpix1(3)
    );
  U3_Msub_xpix1_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(2),
      DI => U2_hcs(3),
      S => U3_Msub_xpix1_Madd_lut(3),
      O => U3_Msub_xpix1_Madd_cy(3)
    );
  U3_Msub_xpix1_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C1(3),
      O => U3_Msub_xpix1_Madd_lut(3)
    );
  U3_Msub_xpix1_Madd_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(1),
      LI => U3_Msub_xpix1_Madd_lut(2),
      O => U3_xpix1(2)
    );
  U3_Msub_xpix1_Madd_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(1),
      DI => U2_hcs(2),
      S => U3_Msub_xpix1_Madd_lut(2),
      O => U3_Msub_xpix1_Madd_cy(2)
    );
  U3_Msub_xpix1_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C1(2),
      O => U3_Msub_xpix1_Madd_lut(2)
    );
  U3_Msub_xpix1_Madd_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(0),
      LI => U3_Msub_xpix1_Madd_lut(1),
      O => U3_xpix1(1)
    );
  U3_Msub_xpix1_Madd_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_xpix1_Madd_cy(0),
      DI => U2_hcs(1),
      S => U3_Msub_xpix1_Madd_lut(1),
      O => U3_Msub_xpix1_Madd_cy(1)
    );
  U3_Msub_xpix1_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C1(1),
      O => U3_Msub_xpix1_Madd_lut(1)
    );
  U3_Msub_xpix1_Madd_xor_0_Q : XORCY
    port map (
      CI => an_1_OBUF_1146,
      LI => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1(0)
    );
  U3_Msub_xpix1_Madd_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Msub_xpix1_Madd_lut(0),
      O => U3_Msub_xpix1_Madd_cy(0)
    );
  U3_Msub_xpix1_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C1(0),
      O => U3_Msub_xpix1_Madd_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(8),
      DI => U2_hcs(9),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(9),
      O => U3_spriteon1_cmp_ge0000
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(7),
      DI => U2_hcs(8),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(8),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(8)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(6),
      DI => U2_hcs(7),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_Madd_spriteon1_addsub0001_lut(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(5),
      DI => U2_hcs(6),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(4),
      DI => U2_hcs(5),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(3),
      DI => U2_hcs(4),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(2),
      DI => U2_hcs(3),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C1(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(1),
      DI => U2_hcs(2),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C1(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon1_cmp_ge0000_cy(0),
      DI => U2_hcs(1),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C1(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Mcompar_spriteon1_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(8),
      DI => U2_hcs(9),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(9),
      O => U3_spriteon2_cmp_ge0000
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(7),
      DI => U2_hcs(8),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(8),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(8)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(6),
      DI => U2_hcs(7),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_Madd_spriteon2_addsub0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(5),
      DI => U2_hcs(6),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(4),
      DI => U2_hcs(5),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(3),
      DI => U2_hcs(4),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(2),
      DI => U2_hcs(3),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C2(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(1),
      DI => U2_hcs(2),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C2(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_ge0000_cy(0),
      DI => U2_hcs(1),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C2(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U2_hcs(0),
      S => U3_Mcompar_spriteon2_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C2(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(8),
      DI => U3_Madd_spriteon2_addsub0000_lut(9),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(7),
      DI => U3_Madd_spriteon2_addsub0000_lut(8),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(8)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(6),
      DI => U3_Madd_spriteon2_addsub0000_lut(7),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(7)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_Madd_spriteon2_addsub0000_lut(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(5),
      DI => U3_Madd_spriteon2_addsub0000_lut(6),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(6)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(4),
      DI => U3_Madd_spriteon2_addsub0000_cy(5),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(5)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(3),
      DI => U3_spriteon2f_add0002(4),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(2),
      DI => U3_C2(3),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(3)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(1),
      DI => U3_C2(2),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(2)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_gt0000_cy(0),
      DI => U3_C2(1),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(1)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => an_1_OBUF_1146,
      DI => U3_C2(0),
      S => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy(0)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0)
    );
  U3_Mcount_C1_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(8),
      LI => U3_Mcount_C1_lut(9),
      O => U3_Result_9_2
    );
  U3_Mcount_C1_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(9),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(9)
    );
  U3_Mcount_C1_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(7),
      LI => U3_Mcount_C1_lut(8),
      O => U3_Result_8_2
    );
  U3_Mcount_C1_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(7),
      DI => U3_C1(8),
      S => U3_Mcount_C1_lut(8),
      O => U3_Mcount_C1_cy(8)
    );
  U3_Mcount_C1_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(8),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(8)
    );
  U3_Mcount_C1_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(6),
      LI => U3_Mcount_C1_lut(7),
      O => U3_Result_7_2
    );
  U3_Mcount_C1_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(6),
      DI => U3_C1(7),
      S => U3_Mcount_C1_lut(7),
      O => U3_Mcount_C1_cy(7)
    );
  U3_Mcount_C1_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(7),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(7)
    );
  U3_Mcount_C1_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(5),
      LI => U3_Mcount_C1_lut(6),
      O => U3_Result_6_2
    );
  U3_Mcount_C1_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(5),
      DI => U3_C1(6),
      S => U3_Mcount_C1_lut(6),
      O => U3_Mcount_C1_cy(6)
    );
  U3_Mcount_C1_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(6),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(6)
    );
  U3_Mcount_C1_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(4),
      LI => U3_Mcount_C1_lut(5),
      O => U3_Result_5_2
    );
  U3_Mcount_C1_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(4),
      DI => U3_C1(5),
      S => U3_Mcount_C1_lut(5),
      O => U3_Mcount_C1_cy(5)
    );
  U3_Mcount_C1_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(5),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(5)
    );
  U3_Mcount_C1_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(3),
      LI => U3_Mcount_C1_lut(4),
      O => U3_Result_4_2
    );
  U3_Mcount_C1_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(3),
      DI => U3_C1(4),
      S => U3_Mcount_C1_lut(4),
      O => U3_Mcount_C1_cy(4)
    );
  U3_Mcount_C1_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(4),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(4)
    );
  U3_Mcount_C1_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(2),
      LI => U3_Mcount_C1_lut(3),
      O => U3_Result_3_2
    );
  U3_Mcount_C1_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(2),
      DI => U3_C1(3),
      S => U3_Mcount_C1_lut(3),
      O => U3_Mcount_C1_cy(3)
    );
  U3_Mcount_C1_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(3),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(3)
    );
  U3_Mcount_C1_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(1),
      LI => U3_Mcount_C1_lut(2),
      O => U3_Result_2_2
    );
  U3_Mcount_C1_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(1),
      DI => U3_C1(2),
      S => U3_Mcount_C1_lut(2),
      O => U3_Mcount_C1_cy(2)
    );
  U3_Mcount_C1_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(2),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(2)
    );
  U3_Mcount_C1_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(0),
      LI => U3_Mcount_C1_lut(1),
      O => U3_Result_1_2
    );
  U3_Mcount_C1_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(0),
      DI => U3_C1(1),
      S => U3_Mcount_C1_lut(1),
      O => U3_Mcount_C1_cy(1)
    );
  U3_Mcount_C1_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(1),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C1_xor_0_Q : XORCY
    port map (
      CI => nes_left_reg_1245,
      LI => U3_Mcount_C1_lut(0),
      O => U3_Result_0_2
    );
  U3_Mcount_C1_cy_0_Q : MUXCY
    port map (
      CI => nes_left_reg_1245,
      DI => U3_C1(0),
      S => U3_Mcount_C1_lut(0),
      O => U3_Mcount_C1_cy(0)
    );
  U3_Mcount_C1_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C1(0),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C1_lut(0)
    );
  U3_Mcount_C2_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(8),
      LI => U3_Mcount_C2_lut(9),
      O => U3_Result_9_1
    );
  U3_Mcount_C2_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(9),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(9)
    );
  U3_Mcount_C2_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(7),
      LI => U3_Mcount_C2_lut(8),
      O => U3_Result_8_1
    );
  U3_Mcount_C2_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(7),
      DI => U3_C2(8),
      S => U3_Mcount_C2_lut(8),
      O => U3_Mcount_C2_cy(8)
    );
  U3_Mcount_C2_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(8),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(8)
    );
  U3_Mcount_C2_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(6),
      LI => U3_Mcount_C2_lut(7),
      O => U3_Result_7_1
    );
  U3_Mcount_C2_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(6),
      DI => U3_C2(7),
      S => U3_Mcount_C2_lut(7),
      O => U3_Mcount_C2_cy(7)
    );
  U3_Mcount_C2_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(7),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(7)
    );
  U3_Mcount_C2_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(5),
      LI => U3_Mcount_C2_lut(6),
      O => U3_Result_6_1
    );
  U3_Mcount_C2_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(5),
      DI => U3_C2(6),
      S => U3_Mcount_C2_lut(6),
      O => U3_Mcount_C2_cy(6)
    );
  U3_Mcount_C2_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(6),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(6)
    );
  U3_Mcount_C2_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(4),
      LI => U3_Mcount_C2_lut(5),
      O => U3_Result_5_1
    );
  U3_Mcount_C2_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(4),
      DI => U3_C2(5),
      S => U3_Mcount_C2_lut(5),
      O => U3_Mcount_C2_cy(5)
    );
  U3_Mcount_C2_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(5),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(5)
    );
  U3_Mcount_C2_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(3),
      LI => U3_Mcount_C2_lut(4),
      O => U3_Result_4_1
    );
  U3_Mcount_C2_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(3),
      DI => U3_C2(4),
      S => U3_Mcount_C2_lut(4),
      O => U3_Mcount_C2_cy(4)
    );
  U3_Mcount_C2_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(4),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(4)
    );
  U3_Mcount_C2_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(2),
      LI => U3_Mcount_C2_lut(3),
      O => U3_Result_3_1
    );
  U3_Mcount_C2_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(2),
      DI => U3_C2(3),
      S => U3_Mcount_C2_lut(3),
      O => U3_Mcount_C2_cy(3)
    );
  U3_Mcount_C2_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(3),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(3)
    );
  U3_Mcount_C2_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(1),
      LI => U3_Mcount_C2_lut(2),
      O => U3_Result_2_1
    );
  U3_Mcount_C2_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(1),
      DI => U3_C2(2),
      S => U3_Mcount_C2_lut(2),
      O => U3_Mcount_C2_cy(2)
    );
  U3_Mcount_C2_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(2),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(2)
    );
  U3_Mcount_C2_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(0),
      LI => U3_Mcount_C2_lut(1),
      O => U3_Result_1_1
    );
  U3_Mcount_C2_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(0),
      DI => U3_C2(1),
      S => U3_Mcount_C2_lut(1),
      O => U3_Mcount_C2_cy(1)
    );
  U3_Mcount_C2_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(1),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C2_xor_0_Q : XORCY
    port map (
      CI => nes_left_reg_1245,
      LI => U3_Mcount_C2_lut(0),
      O => U3_Result_0_1
    );
  U3_Mcount_C2_cy_0_Q : MUXCY
    port map (
      CI => nes_left_reg_1245,
      DI => U3_C2(0),
      S => U3_Mcount_C2_lut(0),
      O => U3_Mcount_C2_cy(0)
    );
  U3_Mcount_C2_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(0),
      I1 => nes_left_reg_1245,
      O => U3_Mcount_C2_lut(0)
    );
  U3_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(16),
      LI => U3_Mcount_q_xor_17_rt_847,
      O => U3_Result(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_827,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_827,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_825,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_825,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_823,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_823,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_821,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_821,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_819,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_819,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_817,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_817,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_815,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_815,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_845,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_845,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_843,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_843,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_841,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_841,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_839,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_839,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_837,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_837,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_835,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_835,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_833,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_833,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_831,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_831,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_829,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_829,
      O => U3_Mcount_q_cy(1)
    );
  U3_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Mcount_q_lut(0),
      O => U3_Result(0)
    );
  U3_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => U3_Mcount_q_lut(0),
      O => U3_Mcount_q_cy(0)
    );
  U3_C1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_9_2,
      Q => U3_C1(9)
    );
  U3_C1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_8_2,
      Q => U3_C1(8)
    );
  U3_C1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_7_2,
      Q => U3_C1(7)
    );
  U3_C1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_6_2,
      Q => U3_C1(6)
    );
  U3_C1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_5_2,
      Q => U3_C1(5)
    );
  U3_C1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_4_2,
      Q => U3_C1(4)
    );
  U3_C1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_3_2,
      Q => U3_C1(3)
    );
  U3_C1_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_2_2,
      Q => U3_C1(2)
    );
  U3_C1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_1_2,
      Q => U3_C1(1)
    );
  U3_C1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_0_2,
      Q => U3_C1(0)
    );
  U3_C2_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_9_1,
      Q => U3_C2(9)
    );
  U3_C2_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_8_1,
      Q => U3_C2(8)
    );
  U3_C2_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_7_1,
      Q => U3_C2(7)
    );
  U3_C2_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_6_1,
      Q => U3_C2(6)
    );
  U3_C2_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_5_1,
      Q => U3_C2(5)
    );
  U3_C2_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_4_1,
      Q => U3_C2(4)
    );
  U3_C2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_3_1,
      Q => U3_C2(3)
    );
  U3_C2_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_2_1,
      Q => U3_C2(2)
    );
  U3_C2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_1_1,
      Q => U3_C2(1)
    );
  U3_C2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_0_1,
      Q => U3_C2(0)
    );
  U3_q_17 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(17),
      Q => U3_q_171
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(16),
      Q => U3_Q_16_1009
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(15),
      Q => U3_Q_15_1008
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(14),
      Q => U3_Q_14_1007
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(13),
      Q => U3_Q_13_1006
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(12),
      Q => U3_Q_12_1005
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(11),
      Q => U3_Q_11_1004
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(10),
      Q => U3_Q_10_1003
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(9),
      Q => U3_Q_9_1017
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(8),
      Q => U3_Q_8_1016
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(7),
      Q => U3_Q_7_1015
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(6),
      Q => U3_Q_6_1014
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(5),
      Q => U3_Q_5_1013
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(4),
      Q => U3_Q_4_1012
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(3),
      Q => U3_Q_3_1011
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(2),
      Q => U3_Q_2_1010
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(1),
      Q => U3_Q_1_1002
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => U3_Result(0),
      Q => U3_Q_0_1001
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_1345,
      I1 => N0,
      S => x7_clkdiv(19),
      O => x7_digit(0)
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_1346,
      I1 => N0,
      S => x7_clkdiv(19),
      O => x7_digit(1)
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => x7_Mmux_digit_42_1347,
      I1 => N0,
      S => x7_clkdiv(19),
      O => x7_digit(2)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_1344,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_1324,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_1324,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_1322,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_1322,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_1320,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_1320,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_1318,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_1318,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_1316,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_1316,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_1314,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_1314,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_1312,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_1312,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_1310,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_1310,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_1308,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_1308,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_1342,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_1342,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_1340,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_1340,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_1338,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_1338,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_1336,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_1336,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_1334,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_1334,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_1332,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_1332,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_1330,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_1330,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_1328,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_1328,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_1326,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_1326,
      O => x7_Mcount_clkdiv_cy(1)
    );
  x7_Mcount_clkdiv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => x7_Mcount_clkdiv_lut(0),
      O => x7_Result(0)
    );
  x7_Mcount_clkdiv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => x7_Mcount_clkdiv_lut(0),
      O => x7_Mcount_clkdiv_cy(0)
    );
  x7_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_1169,
      CLR => btn_3_IBUF_1152,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_1217,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_1205,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_1205,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_1203,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_1203,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_1201,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_1201,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_1199,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_1199,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_1197,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_1197,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_1195,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_1195,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_1193,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_1193,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_1191,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_1191,
      O => nes_Mcount_counter_reg_cy(1)
    );
  nes_Mcount_counter_reg_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => nes_Mcount_counter_reg_lut(0),
      O => nes_Result(0)
    );
  nes_Mcount_counter_reg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => nes_Mcount_counter_reg_lut(0),
      O => nes_Mcount_counter_reg_cy(0)
    );
  nes_Madd_scalar_next_addsub0000_xor_9_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(8),
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_1188,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_1186,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_1186,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_1184,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_1184,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_1182,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_1182,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_1180,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_1180,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_1178,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_1178,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_1176,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_1176,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_1174,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_1174,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_1172,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_1172,
      O => nes_Madd_scalar_next_addsub0000_cy(1)
    );
  nes_Madd_scalar_next_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000(0)
    );
  nes_Madd_scalar_next_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => an_1_OBUF_1146,
      S => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_Madd_scalar_next_addsub0000_cy(0)
    );
  nes_counter_reg_9 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1152,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_1249
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_1230
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1152,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_1245
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_1145
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_1161
    );
  who_present_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1304,
      I1 => nes_a_reg_1230,
      I2 => who_present_state_FSM_FFd1_1303,
      O => who_present_state_FSM_FFd2_In
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      O => N01
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N01,
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_N2,
      O => vsync_OBUF_1302
    );
  nes_nes_clk31 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(8),
      I1 => nes_counter_reg(7),
      I2 => nes_counter_reg(6),
      I3 => nes_counter_reg(5),
      O => nes_nes_clk31_1248
    );
  nes_right_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_N01,
      O => nes_right_reg_cmp_eq0000
    );
  nes_left_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => N503,
      O => nes_left_reg_cmp_eq0000
    );
  nes_a_reg_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(3),
      I3 => nes_N01,
      O => nes_a_reg_cmp_eq0000
    );
  nes_a_reg_cmp_eq00001_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => nes_counter_reg(7),
      I1 => nes_counter_reg(6),
      I2 => nes_counter_reg(5),
      I3 => nes_counter_reg(4),
      O => N2
    );
  x7_Mrom_a_to_g41 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => x7_digit(1),
      I1 => x7_digit(2),
      I2 => x7_digit(0),
      O => a_to_g_4_OBUF_1138
    );
  x7_Mrom_a_to_g21 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => x7_digit(2),
      I1 => x7_digit(1),
      I2 => x7_digit(0),
      O => a_to_g_2_OBUF_1136
    );
  x7_Mrom_a_to_g111 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(2),
      I2 => x7_digit(1),
      O => a_to_g_1_OBUF_1135
    );
  x7_Mrom_a_to_g11 : LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(2),
      I2 => x7_digit(1),
      O => a_to_g_0_OBUF_1134
    );
  x7_Mrom_a_to_g61 : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(2),
      I2 => x7_digit(1),
      O => a_to_g_6_OBUF_1140
    );
  x7_Mrom_a_to_g51 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => x7_digit(1),
      I1 => x7_digit(0),
      I2 => x7_digit(2),
      O => a_to_g_5_OBUF_1139
    );
  x7_Mrom_a_to_g31 : LUT3
    generic map(
      INIT => X"92"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(1),
      I2 => x7_digit(2),
      O => a_to_g_3_OBUF_1137
    );
  nes_scalar_next_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(0),
      O => nes_scalar_next(0)
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => U2_vcs_cmp_eq0000_597,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(8),
      I2 => U2_vcs(5),
      I3 => U2_vcs(6),
      O => U2_N2
    );
  U2_hcs_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(1),
      I2 => U2_hcs(9),
      I3 => N506,
      O => U2_hcs_cmp_eq00005_586
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N504,
      I1 => U2_hcs_cmp_eq00005_586,
      O => U2_hcs_cmp_eq0000
    );
  nes_scalar_next_cmp_eq000010 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => nes_scalar_reg(7),
      I1 => nes_scalar_reg(5),
      I2 => nes_scalar_reg(4),
      I3 => nes_scalar_reg(6),
      O => nes_scalar_next_cmp_eq000010_1272
    );
  nes_scalar_next_cmp_eq000021 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(0),
      I1 => nes_scalar_reg(3),
      I2 => nes_scalar_reg(2),
      I3 => nes_scalar_reg(1),
      O => nes_scalar_next_cmp_eq000021_1273
    );
  nes_scalar_next_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(1),
      O => nes_scalar_next(1)
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_597,
      O => U2_Mcount_vcs_eqn_1
    );
  nes_scalar_next_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(2),
      O => nes_scalar_next(2)
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_597,
      O => U2_Mcount_vcs_eqn_2
    );
  nes_scalar_next_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(3),
      O => nes_scalar_next(3)
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_597,
      O => U2_Mcount_vcs_eqn_3
    );
  nes_scalar_next_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(4),
      O => nes_scalar_next(4)
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_597,
      O => U2_Mcount_vcs_eqn_4
    );
  nes_scalar_next_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(5),
      O => nes_scalar_next(5)
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => N507,
      I1 => U2_Result(5),
      O => U2_Mcount_vcs_eqn_5
    );
  nes_scalar_next_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(6),
      O => nes_scalar_next(6)
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_597,
      I1 => U2_Result(6),
      O => U2_Mcount_vcs_eqn_6
    );
  nes_counter_reg_cmp_eq0000125 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(9),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(5),
      I3 => nes_counter_reg(6),
      O => nes_counter_reg_cmp_eq0000125_1243
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N505,
      I1 => nes_counter_reg_cmp_eq0000125_1243,
      O => nes_N11
    );
  nes_scalar_next_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(7),
      O => nes_scalar_next(7)
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_597,
      I1 => U2_Result(7),
      O => U2_Mcount_vcs_eqn_7
    );
  nes_scalar_next_8_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(8),
      O => nes_scalar_next(8)
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_597,
      I1 => U2_Result(8),
      O => U2_Mcount_vcs_eqn_8
    );
  nes_scalar_next_9_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_scalar_next_cmp_eq0000,
      I1 => nes_scalar_next_addsub0000(9),
      O => nes_scalar_next(9)
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_597,
      I1 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(3),
      I2 => U3_C2(5),
      I3 => U3_C2_not00011_640,
      O => U3_C2_not00016_644
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_641
    );
  U3_C2_not000186 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_C2_not000164_645,
      I1 => who_present_state_FSM_FFd2_1304,
      I2 => nes_left_reg_1245,
      I3 => U3_C2_not000123_642,
      O => U3_C2_not0001
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(9),
      I1 => U3_C1(8),
      O => U3_C1_not00015_627
    );
  U3_C1_not000110 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(2),
      I2 => U3_C1(1),
      I3 => U3_C1(0),
      O => U3_C1_not000110_622
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => nes_left_reg_1245,
      I1 => U3_C1_not00015_627,
      I2 => U3_C1_not000110_622,
      I3 => U3_C1_not00014_625,
      O => U3_C1_not000127_624
    );
  U3_C1_not000147 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(2),
      O => U3_C1_not000147_626
    );
  U3_C1_not0001105 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => nes_left_reg_1245,
      I1 => U3_C1(8),
      I2 => U3_C1(9),
      I3 => nes_right_reg_1249,
      O => U3_C1_not0001105_623
    );
  U3_C1_not0001144 : LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1304,
      I1 => U3_C1_not0001105_623,
      I2 => U3_C1_not000127_624,
      I3 => U3_C1_not000183_628,
      O => U3_C1_not0001
    );
  U3_blue_and0000211 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(8),
      O => U3_N84
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_598
    );
  U2_vidon_and00006 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(6),
      I2 => U2_hcs(5),
      I3 => U2_hcs(4),
      O => U2_vidon_and00006_606
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_606,
      I2 => U2_vidon_and000018,
      I3 => U2_vidon_and00000_598,
      O => U2_vidon_and000039_605
    );
  U2_vidon_and000080 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(7),
      I3 => U2_vcs(6),
      O => U2_vidon_and000080_609
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_N80,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U2_vidon_and0000105_599
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U2_vidon_and0000105_599,
      I1 => U2_vidon_and000080_609,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_600
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_605,
      I1 => U2_vidon_and0000117_600,
      O => vidon
    );
  U3_spriteonB4_cmp_le00001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(3),
      I2 => U2_hcs(4),
      O => N6
    );
  U3_spriteonB4_cmp_le00001 : LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_N80,
      I2 => U2_hcs(8),
      I3 => N6,
      O => U3_spriteonB4_cmp_le0000
    );
  U3_spriteonB1_and000088 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U3_spriteonB1_and000022_1079,
      I1 => U3_spriteonB1_and000010_1078,
      I2 => U3_N78,
      I3 => U3_spriteonB1_and000049_1080,
      O => U3_spriteonB1
    );
  U3_spriteonB2_and00005 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => U3_spriteonB2_and00005_1085
    );
  U3_spriteonB2_and000083 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonB2_and000056_1086,
      I2 => U3_N78,
      I3 => U3_spriteonB2_and000012_1084,
      O => U3_spriteonB2
    );
  U3_spriteonGrnd_and000012 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(4),
      I2 => U2_vcs(6),
      I3 => U3_spriteonGrnd_and00002_1111,
      O => U3_spriteonGrnd_and000012_1110
    );
  U3_spriteonGrnd_and000066 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      O => U3_spriteonGrnd_and000066_1114
    );
  U3_spriteonGrnd_and000071 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(3),
      I3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000071_1115
    );
  U3_spriteonGrnd_and000084 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_spriteonGrnd_and000066_1114,
      I1 => U2_hcs(7),
      I2 => U2_hcs(4),
      I3 => U3_spriteonGrnd_and000071_1115,
      O => U3_spriteonGrnd_and000084_1116
    );
  U3_Madd_spriteon1_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_C1(7),
      I1 => U3_C1(4),
      I2 => U3_C1(5),
      I3 => U3_C1(6),
      O => U3_Madd_spriteon1_addsub0001_lut(7)
    );
  U3_Madd_spriteon2f_add0002_xor_7_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(4),
      I2 => U3_C2(5),
      I3 => U3_C2(6),
      O => U3_Madd_spriteon2_addsub0000_lut(7)
    );
  U3_Madd_spriteon2f_add0002_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(4),
      I2 => U3_C2(6),
      O => U3_Madd_spriteon2_addsub0000_lut(6)
    );
  U3_Madd_spriteon2_addsub0000_cy_5_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      O => U3_Madd_spriteon2_addsub0000_cy(5)
    );
  U3_spriteonB2_and000022 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => U3_N78
    );
  U3_spriteonB1_cmp_lt0000232 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(8),
      I2 => U2_vcs(7),
      I3 => U2_vcs(6),
      O => U3_spriteonB1_cmp_lt0000232_1082
    );
  U3_spriteonB5_and0000110 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB4_cmp_le0000,
      I2 => U3_spriteonB5_and000026_1101,
      I3 => U3_spriteonB5_and000083,
      O => U3_spriteonB5
    );
  U3_spriteon2_addsub0000_5_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      O => U3_spriteon2_addsub0000(5)
    );
  U3_Madd_spriteon1_addsub0001_lut_8_11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U3_C1(7),
      I1 => U3_C1(6),
      I2 => U3_C1(5),
      I3 => U3_C1(4),
      O => U3_Madd_spriteon1_addsub0001_lut_8_bdd0
    );
  U3_spriteonB4_and0000111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      O => U3_N60
    );
  U3_spriteonB3_and000043 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      O => U3_spriteonB3_and000043_1090
    );
  U3_spriteonB3_and000050 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => U3_spriteonB3_and000050_1091
    );
  U3_spriteonB4_and00005 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U3_spriteonB4_and00005_1095
    );
  U3_spriteonB4_and000017 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(6),
      I2 => U2_vcs(4),
      I3 => U3_spriteonB4_and00005_1095,
      O => U3_spriteonB4_and000017_1093
    );
  U3_spriteonB4_and000038 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(7),
      I2 => U2_vcs(9),
      I3 => U3_spriteonB4_and000017_1093,
      O => U3_spriteonB4_and000038_1094
    );
  U3_spriteonB4_and000052 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(7),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => U3_spriteonB4_and000052_1096
    );
  U3_spriteonB4_and000055 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_spriteonB4_and000052_1096,
      I2 => U2_hcs(3),
      I3 => U3_N60,
      O => U3_spriteonB4_and000055_1097
    );
  U3_spriteonB4_and000069 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U3_spriteonB4_cmp_le0000,
      I3 => U3_spriteonB4_and000055_1097,
      O => U3_spriteonB4_and000069_1098
    );
  U3_Madd_spriteon2_addsub0000_lut_9_1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      I2 => U3_C2(8),
      O => U3_Madd_spriteon2_addsub0000_lut(9)
    );
  U3_Madd_spriteon2_addsub0000_lut_8_2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Madd_spriteon2_addsub0000_lut(8)
    );
  U3_Madd_spriteon2_addsub0000_lut_8_11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(6),
      I2 => U3_C2(5),
      I3 => U3_C2(4),
      O => U3_Madd_spriteon2_addsub0000_lut_8_bdd0
    );
  U3_spriteon2_addsub0000_8_1 : LUT4
    generic map(
      INIT => X"3666"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      I2 => U3_C2(6),
      I3 => U3_N16,
      O => U3_spriteon2_addsub0000(8)
    );
  M2_31_1 : LUT4
    generic map(
      INIT => X"5DAA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U2_vcs(1),
      I2 => M1_0_bdd2,
      I3 => rom1_addr(4),
      O => M1_0_Q
    );
  U3_Msub_ypix1_Madd_xor_4_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => rom1_addr(4)
    );
  U3_Madd_spriteon1_addsub0001_xor_8_11 : LUT4
    generic map(
      INIT => X"3666"
    )
    port map (
      I0 => U3_C1(7),
      I1 => U3_C1(8),
      I2 => U3_C1(6),
      I3 => U3_N15,
      O => U3_spriteon1_addsub0001(8)
    );
  M1a_29_30 : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M1_29_bdd5,
      I3 => M1_22_bdd12,
      O => M1a_29_30_115
    );
  M1a_29_51 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => U2_vcs(1),
      I3 => M1_27_bdd4,
      O => M1a_29_51_116
    );
  M1a_29_53 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_51_116,
      I2 => M1a_29_30_115,
      O => M1a_29_Q
    );
  M1a_27_50 : LUT4
    generic map(
      INIT => X"7CC8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1a_27_50_108
    );
  M1a_30_36 : LUT4
    generic map(
      INIT => X"092B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd12,
      I3 => M1_22_bdd7,
      O => M1a_30_36_118
    );
  M1a_28_17 : LUT4
    generic map(
      INIT => X"FF1D"
    )
    port map (
      I0 => M1_22_bdd4,
      I1 => U2_vcs(0),
      I2 => M1_24_bdd4,
      I3 => U2_vcs(1),
      O => M1a_28_17_111
    );
  M1a_28_70 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_28_66_113,
      I2 => M1a_28_17_111,
      I3 => M1a_28_32_112,
      O => M1a_28_Q
    );
  U3_spriteon2_addsub0000_9_11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      O => U3_N16
    );
  U3_spriteon2_addsub0000_9_Q : LUT4
    generic map(
      INIT => X"36CC"
    )
    port map (
      I0 => N39,
      I1 => U3_C2(9),
      I2 => U3_C2(7),
      I3 => U3_C2(8),
      O => U3_spriteon2_addsub0000(9)
    );
  M1a_23_10 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_21_bdd8,
      I2 => M1a_22_bdd0,
      I3 => rom1_addr(3),
      O => M1a_23_10_94
    );
  M1a_23_61 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_23_43,
      I2 => M1a_23_10_94,
      I3 => M1a_23_14_95,
      O => M1a_23_Q
    );
  U3_Msub_ypix1_Madd_xor_3_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      O => rom1_addr(3)
    );
  M2a_2_18 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd18,
      I2 => rom1_addr(3),
      I3 => M2_2_bdd5,
      O => M2a_2_18_223
    );
  M1a_24_38 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1a_24_bdd1,
      I2 => rom1_addr(3),
      I3 => M1a_24_14_98,
      O => M1a_24_38_99
    );
  U3_Madd_spriteon1_addsub0001_xor_9_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(5),
      O => U3_N15
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1 : LUT4
    generic map(
      INIT => X"36CC"
    )
    port map (
      I0 => N57,
      I1 => U3_C1(9),
      I2 => U3_C1(7),
      I3 => U3_C1(8),
      O => U3_spriteon1_addsub0001(9)
    );
  M2a_1_SW0 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd18,
      I2 => rom1_addr(3),
      I3 => M2_0_bdd9,
      O => N69
    );
  M2a_1_Q : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd2,
      I2 => rom1_addr(4),
      I3 => N69,
      O => M2a_1_Q_213
    );
  M1_21_50 : LUT4
    generic map(
      INIT => X"32FA"
    )
    port map (
      I0 => M1_21_26,
      I1 => rom1_addr(4),
      I2 => M1_21_5,
      I3 => M1_12_bdd0,
      O => M1_21_Q
    );
  M2a_3_3 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_3_bdd7,
      I2 => rom1_addr(3),
      I3 => M2_4_bdd10,
      O => M2a_3_3_227
    );
  M2a_3_f5 : MUXF5
    port map (
      I0 => M2a_3_3_227,
      I1 => M2a_3_2_226,
      S => U2_vcs(0),
      O => M2a_3_f5_228
    );
  M2a_3_f6 : MUXF6
    port map (
      I0 => M2a_3_f5_228,
      I1 => M2a_3_1_225,
      S => rom1_addr(4),
      O => M2a_3_Q
    );
  U3_red_0_21 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => vidon,
      I1 => U3_M1_mux0000,
      I2 => U3_N81,
      I3 => U3_M1a_mux0000,
      O => U3_N30
    );
  M2a_22_2 : LUT4
    generic map(
      INIT => X"3464"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => M2a_22_2_218
    );
  M2a_22_f5 : MUXF5
    port map (
      I0 => M2a_22_2_218,
      I1 => M2a_22_1_217,
      S => U2_vcs(1),
      O => M2a_22_Q
    );
  M1_22_67 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_22_36_24,
      I2 => M1_10_bdd0,
      I3 => M1_22_0_22,
      O => M1_22_Q
    );
  M2a_4_14 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U2_vcs(0),
      I2 => M2_3_bdd7,
      I3 => M2_4_bdd2,
      O => M2a_4_14_231
    );
  M2a_4_54 : LUT4
    generic map(
      INIT => X"FFE8"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => sw_0_IBUF_1296,
      I2 => rom1_addr(2),
      I3 => U2_vcs(0),
      O => M2a_4_54_233
    );
  M2a_4_116 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => M2a_4_54_233,
      I1 => M2a_4_77_234,
      I2 => U2_vcs(1),
      I3 => M2a_4_35_232,
      O => M2a_4_116_230
    );
  M1a_26_47 : LUT4
    generic map(
      INIT => X"AAE8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sw_2_IBUF_1298,
      I2 => sw_3_IBUF_1299,
      I3 => U2_vcs(0),
      O => M1a_26_47_104
    );
  M1_28_2 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      O => M1_28_2_58
    );
  M1_21_35 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sw_3_IBUF_1299,
      I1 => sw_2_IBUF_1298,
      O => M1_21_bdd5
    );
  M1_22_52 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sw_3_IBUF_1299,
      I1 => sw_2_IBUF_1298,
      O => M1_22_bdd9
    );
  M2_10_45 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_10_25_136,
      I2 => M1_12_bdd0,
      I3 => M2_10_7,
      O => M2_10_Q
    );
  M2_28_f5 : MUXF5
    port map (
      I0 => M2_28_2_158,
      I1 => M2_28_1_157,
      S => U2_vcs(1),
      O => M2_28_Q
    );
  U3_red_0_44 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_N36,
      I1 => U3_blue_and0003,
      I2 => U3_N30,
      I3 => U3_red_0_17_1061,
      O => red_0_OBUF_1287
    );
  M2_0_71 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => sw_0_IBUF_1296,
      O => M2_0_bdd13
    );
  M2_0_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => sw_0_IBUF_1296,
      O => M2_0_bdd6
    );
  M2_0_111 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => sw_0_IBUF_1296,
      O => M2_0_bdd20
    );
  M1_27_40 : LUT4
    generic map(
      INIT => X"C8E8"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => rom1_addr(2),
      I2 => sw_3_IBUF_1299,
      I3 => U2_vcs(0),
      O => M1_27_40_54
    );
  M1_27_127 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_27_40_54,
      I2 => M1_27_102_52,
      I3 => rom1_addr(3),
      O => M1_27_127_53
    );
  M1_25_77 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M1_25_34_42,
      I1 => U2_vcs(1),
      I2 => M1_24_bdd2,
      I3 => rom1_addr(3),
      O => M1_25_77_43
    );
  M1_24_51 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd12,
      O => M1_24_bdd2
    );
  U3_green_0_SW0 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB2,
      I3 => U3_spriteonB1,
      O => N100
    );
  U3_green_0_Q : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_N81,
      I1 => U3_N85,
      I2 => N100,
      I3 => U3_M1a_mux0000,
      O => green_0_OBUF_1157
    );
  M2_0_64 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd2,
      I2 => rom1_addr(4),
      I3 => M2_0_28,
      O => M2_0_Q
    );
  U3_blue_0_27 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonGrnd,
      I2 => U3_blue_0_9_1057,
      I3 => U3_spriteonB2,
      O => U3_blue_0_27_1056
    );
  U3_blue_0_45 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => U3_M1a_mux0000,
      I1 => U3_blue_0_27_1056,
      I2 => U3_N85,
      I3 => U3_N81,
      O => blue_0_OBUF_1149
    );
  M2_2_311 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd20,
      I3 => U2_vcs(0),
      O => M2_2_31_162
    );
  M2_2_50 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_2_bdd5,
      I2 => rom1_addr(3),
      I3 => M2_0_bdd18,
      O => M2_2_50_163
    );
  M1_24_25 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => sw_3_IBUF_1299,
      I1 => sw_2_IBUF_1298,
      I2 => rom1_addr(2),
      I3 => U2_vcs(0),
      O => M1_24_25_36
    );
  M2_7_25 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => sw_0_IBUF_1296,
      I2 => rom1_addr(2),
      I3 => U2_vcs(0),
      O => M2_7_25_195
    );
  M2_7_92 : LUT4
    generic map(
      INIT => X"DF57"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => M2_1_bdd1,
      I3 => M2_12_bdd5,
      O => M2_7_92_197
    );
  U3_green_1_21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_N36,
      O => U3_N85
    );
  U3_Msub_ypix1_Madd_xor_2_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      O => rom1_addr(2)
    );
  U3_green_2_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_N85,
      I1 => U3_N12,
      I2 => U3_N30,
      I3 => U3_spriteonGrnd,
      O => green_2_OBUF_1159
    );
  U3_blue_1_1 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_M1a_mux0000,
      I1 => U3_N85,
      I2 => U3_spriteonGrnd,
      I3 => U3_N81,
      O => blue_1_OBUF_1150
    );
  U3_red_0_3 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_N81,
      I1 => vidon,
      I2 => N104,
      I3 => U3_M1_mux0000,
      O => U3_N36
    );
  M2_6_51 : LUT4
    generic map(
      INIT => X"3004"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_1_IBUF_1297,
      I3 => sw_0_IBUF_1296,
      O => M2_6_51_191
    );
  M2_6_120 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_1_bdd1,
      I2 => U2_vcs(1),
      I3 => M2_6_bdd1,
      O => M2_6_120_187
    );
  M2_6_172 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_6_169,
      I2 => M2_6_87_192,
      I3 => M2_6_120_187,
      O => M2_6_Q
    );
  M2_4_38 : LUT4
    generic map(
      INIT => X"FF8B"
    )
    port map (
      I0 => M2_4_24_174,
      I1 => U2_vcs(0),
      I2 => M2_0_bdd9,
      I3 => rom1_addr(3),
      O => M2_4_38_175
    );
  M2_4_117 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_4_bdd10,
      I2 => M2_4_93_177,
      I3 => rom1_addr(3),
      O => M2_4_117_172
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_1163
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_1152
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_1299
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_1298
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_1297
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_1296
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_1302,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => an_1_OBUF_1146,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_1165,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_1167,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_1161,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_1_OBUF_1146,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_1_OBUF_1146,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_1146,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_1145,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_1150,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_1149,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_1159,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_1158,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_1157,
      O => green(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_1140,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_1139,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_1138,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_1137,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_1136,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_1135,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_1134,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_1_OBUF_1288,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_1288,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_1287,
      O => red(0)
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_510
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_508
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_506
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_504
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_502
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_500
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_498
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_496
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_539
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_537
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_535
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_533
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_531
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_529
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_527
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_525
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1009,
      O => U3_Mcount_q_cy_16_rt_827
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1008,
      O => U3_Mcount_q_cy_15_rt_825
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1007,
      O => U3_Mcount_q_cy_14_rt_823
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1006,
      O => U3_Mcount_q_cy_13_rt_821
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1005,
      O => U3_Mcount_q_cy_12_rt_819
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1004,
      O => U3_Mcount_q_cy_11_rt_817
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1003,
      O => U3_Mcount_q_cy_10_rt_815
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1017,
      O => U3_Mcount_q_cy_9_rt_845
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1016,
      O => U3_Mcount_q_cy_8_rt_843
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1015,
      O => U3_Mcount_q_cy_7_rt_841
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1014,
      O => U3_Mcount_q_cy_6_rt_839
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1013,
      O => U3_Mcount_q_cy_5_rt_837
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1012,
      O => U3_Mcount_q_cy_4_rt_835
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1011,
      O => U3_Mcount_q_cy_3_rt_833
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1010,
      O => U3_Mcount_q_cy_2_rt_831
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1002,
      O => U3_Mcount_q_cy_1_rt_829
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_1324
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_1322
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_1320
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_1318
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_1316
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_1314
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_1312
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_1310
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_1308
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_1342
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_1340
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_1338
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_1336
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_1334
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_1332
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_1330
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_1328
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_1326
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_1205
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_1203
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_1201
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_1199
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_1197
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_1195
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_1193
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_1191
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_1186
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_1184
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_1182
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_1180
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_1178
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_1176
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_1174
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_1172
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_522
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_551
    );
  U3_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_171,
      O => U3_Mcount_q_xor_17_rt_847
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_1344
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_1217
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_1188
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N508,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  nes_Mcount_counter_reg_eqn_01 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(0),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_0
    );
  U2_Mcount_hcs_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_hcs_cmp_eq000010_585,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_0
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N106
    );
  nes_Mcount_counter_reg_eqn_11 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(1),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_1
    );
  U2_Mcount_hcs_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_1
    );
  nes_Mcount_counter_reg_eqn_21 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(2),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_2
    );
  U2_Mcount_hcs_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_2
    );
  nes_Mcount_counter_reg_eqn_31 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(3),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_3
    );
  U2_Mcount_hcs_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_3
    );
  nes_Mcount_counter_reg_eqn_41 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(4),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_4
    );
  U2_Mcount_hcs_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_4
    );
  nes_Mcount_counter_reg_eqn_51 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(5),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_5
    );
  U2_Mcount_hcs_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_5
    );
  U3_C1_not000152_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N108
    );
  nes_Mcount_counter_reg_eqn_61 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(6),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_6
    );
  U2_Mcount_hcs_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_6
    );
  nes_Mcount_counter_reg_eqn_71 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(7),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_7
    );
  U2_Mcount_hcs_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_7_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_7
    );
  nes_Mcount_counter_reg_eqn_81 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_N11,
      I3 => nes_Result(8),
      O => nes_Mcount_counter_reg_eqn_8
    );
  U2_Mcount_hcs_eqn_81 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_8_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_8
    );
  nes_Mcount_counter_reg_eqn_91 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_N11,
      I3 => nes_Result(9),
      O => nes_Mcount_counter_reg_eqn_9
    );
  U2_Mcount_hcs_eqn_91 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_585,
      I1 => U2_Result_9_1,
      I2 => U2_hcs_cmp_eq00005_586,
      O => U2_Mcount_hcs_eqn_9
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => nes_left_reg_1245,
      I1 => U3_C2(9),
      I2 => nes_right_reg_1249,
      I3 => U3_C2_not000150_643,
      O => U3_C2_not000164_645
    );
  U3_C1_not000152_SW1 : MUXF5
    port map (
      I0 => N111,
      I1 => N112,
      S => U3_C1(4),
      O => N109
    );
  U3_C1_not000152_SW1_F : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => U3_C1(0),
      I1 => U3_C1(1),
      I2 => U3_C1(6),
      I3 => U3_C1(5),
      O => N111
    );
  U3_C1_not000152_SW1_G : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N112
    );
  U3_spriteonB3_and000032_SW0 : LUT4
    generic map(
      INIT => X"DB9B"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(6),
      I2 => U2_hcs(3),
      I3 => U3_N60,
      O => N141
    );
  M2a_7_58 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => M2_7_bdd0,
      I2 => U2_vcs(1),
      I3 => N149,
      O => M2a_7_58_246
    );
  U3_Mmux_M2a_mux0000_82 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N153,
      O => U3_Mmux_M2a_mux0000_82_960
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N155,
      O => U3_Mmux_M1a_mux0000_83_900
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_18_bdd0,
      I2 => N157,
      O => U3_Mmux_M2_mux0000_82_929
    );
  U3_Mmux_M2a_mux0000_6 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(4),
      I2 => M1a_1_8_87,
      I3 => M1a_1_20,
      O => U3_Mmux_M2a_mux0000_6_946
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => M1a_29_51_116,
      I1 => rom1_addr(3),
      I2 => U3_xpix1(0),
      I3 => M1a_30_36_118,
      O => U3_Mmux_M1a_mux0000_6_885
    );
  U3_Mmux_M1a_mux0000_10 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U3_xpix1(0),
      I2 => M1a_1_8_87,
      I3 => M1a_1_20,
      O => U3_Mmux_M1a_mux0000_10_878
    );
  x7_Mmux_digit_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => who_present_state_FSM_FFd1_1303,
      O => x7_Mmux_digit_4_1345
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_1303,
      I1 => who_present_state_FSM_FFd2_1304,
      I2 => x7_clkdiv(18),
      O => x7_Mmux_digit_41_1346
    );
  x7_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_1303,
      I1 => who_present_state_FSM_FFd2_1304,
      I2 => x7_clkdiv(18),
      O => x7_Mmux_digit_42_1347
    );
  U3_blue_and0000258 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(9),
      I2 => U3_N84,
      I3 => N161,
      O => U3_N35
    );
  M1a_24_63 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_24_38_99,
      I2 => M1a_12_bdd0,
      I3 => N171,
      O => M1a_24_Q
    );
  M2a_7_86_SW0 : LUT4
    generic map(
      INIT => X"20A8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => M2a_6_bdd1,
      I3 => M2_12_bdd5,
      O => N179
    );
  M2a_7_86 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_7_58_246,
      I2 => M1a_12_bdd0,
      I3 => N179,
      O => M2a_7_Q
    );
  M2a_8_96 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_23_43,
      I2 => M2a_8_11_248,
      I3 => M2a_8_29_249,
      O => M2a_8_Q
    );
  M1_24_108_SW0 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M1_24_25_36,
      I1 => U2_vcs(1),
      I2 => M1_24_bdd2,
      I3 => rom1_addr(3),
      O => N183
    );
  M1_24_108 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N183,
      I2 => M1_24_70_37,
      I3 => M1_12_bdd0,
      O => M1_24_Q
    );
  M2_9_88 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_9_25_206,
      I2 => M1_10_bdd0,
      I3 => M2_9_63_207,
      O => M2_9_Q
    );
  M2_7_132 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_7_92_197,
      I2 => M2_7_55_196,
      I3 => M1_12_bdd0,
      O => M2_7_Q
    );
  M2_8_149 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_8_13,
      I2 => M2_8_52_204,
      I3 => M2_8_129_200,
      O => M2_8_Q
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_C1(7),
      I2 => U3_N15,
      I3 => U3_C1(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C1(4),
      I2 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U3_C1(9),
      I1 => U2_hcs(9),
      I2 => U3_C1(8),
      I3 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C1(8),
      I2 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C1(5),
      I2 => U3_C1(6),
      I3 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C1(4),
      I2 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(5)
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => nes_nes_clk31_1248,
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_counter_reg(3),
      O => N189
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N189,
      O => ja3_OBUF_1167
    );
  U3_spriteonB1_and000010_SW0 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(6),
      I2 => U2_vcs(7),
      I3 => U2_vcs(4),
      O => N191
    );
  U3_spriteonB1_and000010 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => N191,
      I2 => U2_vcs(9),
      I3 => U2_vcs(8),
      O => U3_spriteonB1_and000010_1078
    );
  U3_spriteonB1_and000022_SW0 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      O => N193
    );
  U3_spriteonB1_and000022 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => N193,
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => U3_spriteonB1_and000022_1079
    );
  U3_spriteonB1_and000049_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      I3 => U2_hcs(7),
      O => N195
    );
  U3_spriteonB1_and000049 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => N195,
      I3 => U2_hcs(1),
      O => U3_spriteonB1_and000049_1080
    );
  U3_spriteonB2_and000012 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_N84,
      I1 => U2_vcs(6),
      I2 => U2_vcs(5),
      I3 => U3_spriteonB2_and00005_1085,
      O => U3_spriteonB2_and000012_1084
    );
  U3_spriteonB2_and000056 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(6),
      I2 => N197,
      O => U3_spriteonB2_and000056_1086
    );
  U3_spriteonGrnd_and0000123_SW0 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonGrnd_and000058_1113,
      I2 => U3_N84,
      I3 => U3_spriteonGrnd_and000012_1110,
      O => N199
    );
  U3_spriteonGrnd_and0000123 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vidon_and00000_598,
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => N199,
      I3 => U3_spriteonGrnd_and000084_1116,
      O => U3_spriteonGrnd
    );
  U3_spriteonB1_cmp_lt0000250_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U3_spriteonB1_cmp_lt0000232_1082,
      I3 => U2_vcs(5),
      O => N201
    );
  U3_spriteonB1_cmp_lt0000250 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(0),
      I2 => N201,
      I3 => U2_vcs(2),
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_blue_and000031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_N35,
      I1 => U3_spriteon1_cmp_ge0000,
      I2 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      O => U3_N81
    );
  U3_red_0_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonGrnd,
      I3 => N203,
      O => U3_red_0_17_1061
    );
  U3_blue_and00031 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2a_mux0000,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I2 => U3_spriteon2f_cmp_le0000,
      I3 => U3_N35,
      O => U3_blue_and0003
    );
  U3_red_0_3_SW0 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2_mux0000,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy(9),
      I2 => U3_spriteon2_cmp_ge0000,
      I3 => U3_N35,
      O => N104
    );
  M1a_1_8 : LUT4
    generic map(
      INIT => X"78F8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(3),
      O => M1a_1_8_87
    );
  M2a_18_11 : LUT4
    generic map(
      INIT => X"8809"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M1a_12_bdd1
    );
  M1_21_51 : LUT4
    generic map(
      INIT => X"6CEE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1_21_5
    );
  M2a_8_29 : LUT4
    generic map(
      INIT => X"3F2F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M2_0_bdd13,
      O => M2a_8_29_249
    );
  M2a_24_11 : LUT4
    generic map(
      INIT => X"B7A7"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => M1a_4_bdd0
    );
  M2_24_11 : LUT4
    generic map(
      INIT => X"ADCF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => M1_4_bdd0
    );
  M2_13_21 : LUT4
    generic map(
      INIT => X"FB7E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => M1_14_bdd1
    );
  M2a_13_21 : LUT4
    generic map(
      INIT => X"C809"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M1a_14_bdd0
    );
  M1a_27_123 : LUT4
    generic map(
      INIT => X"B393"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1a_27_123_107
    );
  M2a_3_2 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M2_0_bdd6,
      O => M2a_3_2_226
    );
  M2_28_2 : LUT4
    generic map(
      INIT => X"1F92"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => U2_vcs(0),
      I2 => rom1_addr(4),
      I3 => rom1_addr(3),
      O => M2_28_2_158
    );
  M2a_9_33 : LUT4
    generic map(
      INIT => X"5DDF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M2_10_bdd2,
      O => M2a_9_33_252
    );
  M2a_8_81 : LUT4
    generic map(
      INIT => X"9111"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_23_43
    );
  M2_8_129 : LUT4
    generic map(
      INIT => X"2F2A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => M2_8_129_200
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N205,
      O => U3_Mmux_M2a_mux0000_8_958
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N207,
      O => U3_Mmux_M2a_mux0000_9_967
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N209,
      O => U3_Mmux_M1_mux0000_9_874
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N211,
      O => U3_Mmux_M1_mux0000_73_863
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"4D8B"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2_4_bdd0
    );
  M1_24_11 : LUT4
    generic map(
      INIT => X"FF89"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd9,
      I3 => U2_vcs(2),
      O => M1_24_bdd0
    );
  M2a_4_35 : LUT4
    generic map(
      INIT => X"468C"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2a_4_35_232
    );
  M2_10_25 : LUT4
    generic map(
      INIT => X"0F01"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd10,
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => M2_10_25_136
    );
  M2a_9_13 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M2a_6_bdd0,
      I1 => U2_vcs(3),
      I2 => M2_9_bdd0,
      I3 => U2_vcs(1),
      O => M2a_9_13_251
    );
  M2_3_24_SW0 : LUT4
    generic map(
      INIT => X"099F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => N215
    );
  M2_9_63_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => M2_0_bdd9,
      I1 => U2_vcs(0),
      I2 => rom1_addr(3),
      O => N217
    );
  M2_9_63 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => M2_9_bdd0,
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => N217,
      O => M2_9_63_207
    );
  M2_4_24 : LUT4
    generic map(
      INIT => X"6990"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_4_24_174
    );
  M1_27_11 : LUT4
    generic map(
      INIT => X"7A2F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1_27_bdd0
    );
  M1a_22_11 : LUT4
    generic map(
      INIT => X"3C28"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M1_22_bdd9,
      O => M1a_22_bdd0
    );
  M2a_2_59 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N221,
      I2 => rom1_addr(4),
      I3 => M2a_2_18_223,
      O => M2a_2_Q
    );
  M1_23_21 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_23_bdd6,
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1_23_bdd1
    );
  M1_25_21 : LUT4
    generic map(
      INIT => X"F791"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_24_bdd4,
      I3 => U2_vcs(2),
      O => M1_25_bdd1
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"7646"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd4,
      O => M1_22_bdd0
    );
  M1a_22_44 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N229,
      I2 => M1a_22_18_91,
      I3 => M1a_10_bdd0,
      O => M1a_22_Q
    );
  M1a_26_127_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1a_26_8_105,
      I2 => rom1_addr(3),
      I3 => M1a_26_47_104,
      O => N231
    );
  M1a_26_127 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_26_106_103,
      I2 => M1a_10_bdd0,
      I3 => N231,
      O => M1a_26_Q
    );
  M2_10_71 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M2_10_bdd2,
      O => M2_10_7
    );
  M2a_9_67 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_9_33_252,
      I2 => M2a_9_13_251,
      I3 => M1a_10_bdd0,
      O => M2a_9_Q
    );
  M2a_5_142_SW0 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_5_9_237,
      I2 => U2_vcs(1),
      I3 => M2_5_bdd2,
      O => N239
    );
  M2a_5_142 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_5_110_236,
      I2 => M1a_10_bdd0,
      I3 => N239,
      O => M2a_5_Q
    );
  M2a_6_11 : LUT4
    generic map(
      INIT => X"3C28"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M2_0_bdd6,
      O => M2a_6_bdd0
    );
  M2a_6_49 : LUT4
    generic map(
      INIT => X"AFA8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => M2a_6_49_242
    );
  M1_26_30 : LUT4
    generic map(
      INIT => X"FF24"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      I3 => U2_vcs(1),
      O => M1_26_30_48
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"82FF"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1_26_58_49
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_C2(7),
      I2 => U3_N16,
      I3 => U3_C2(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C2(4),
      I2 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U2_hcs(7),
      I2 => U3_N16,
      I3 => U3_C2(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      I2 => U2_hcs(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(4)
    );
  U3_Msub_xpix2_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C2(4),
      O => U3_Msub_xpix2_Madd_lut(4)
    );
  U3_Msub_xpix1_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C1(4),
      O => U3_Msub_xpix1_Madd_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U2_hcs(9),
      I2 => U3_C2(8),
      I3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C2(8),
      I2 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C2(5),
      I2 => U3_C2(6),
      I3 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C2(4),
      I2 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U2_hcs(9),
      I2 => U3_C2(8),
      I3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      I2 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(5),
      I2 => U2_hcs(6),
      I3 => U3_C2(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      I2 => U2_hcs(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4)
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_counter_reg_cmp_eq0000112_1242,
      I3 => nes_counter_reg_cmp_eq0000125_1243,
      O => ja2_OBUF_1165
    );
  U3_spriteonGrnd_and00002 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => U3_spriteonGrnd_and00002_1111
    );
  U3_spriteonGrnd_and000040 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(0),
      I2 => U2_hcs(1),
      I3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000040_1112
    );
  U3_spriteonGrnd_and000058_SW0 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_spriteonGrnd_and000040_1112,
      I2 => U2_hcs(6),
      I3 => U2_hcs(7),
      O => N245
    );
  U3_spriteonGrnd_and000058 : LUT4
    generic map(
      INIT => X"1FFF"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => N245,
      I2 => U2_hcs(8),
      I3 => U2_hcs(9),
      O => U3_spriteonGrnd_and000058_1113
    );
  U3_spriteonB5_and000026_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(7),
      I2 => U3_spriteonB5_and00009,
      O => N247
    );
  U3_spriteonB5_and000026 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => N247,
      I2 => U2_vcs(9),
      I3 => U2_vcs(8),
      O => U3_spriteonB5_and000026_1101
    );
  U3_spriteonB3_and000073_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => U3_spriteonB3_and000043_1090,
      I3 => U3_spriteonB3_and000050_1091,
      O => N249
    );
  U3_spriteonB3_and000073 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_vcs(8),
      I2 => U2_vcs(9),
      I3 => N249,
      O => U3_spriteonB3_and000073_1092
    );
  M1a_28_66 : LUT4
    generic map(
      INIT => X"09FF"
    )
    port map (
      I0 => M1_10_bdd8,
      I1 => U2_vcs(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(4),
      O => M1a_28_66_113
    );
  U3_spriteon2_addsub0000_9_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(6),
      I2 => U3_C2(5),
      O => N39
    );
  M1a_23_14 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M1_23_bdd1,
      O => M1a_23_14_95
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(6),
      I2 => U3_C1(5),
      O => N57
    );
  M1_29_31 : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1_29_bdd5
    );
  M1_27_21 : LUT4
    generic map(
      INIT => X"1001"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => M1_27_bdd4
    );
  M2_0_21 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_0_bdd4
    );
  M2_8_21 : LUT4
    generic map(
      INIT => X"FF7D"
    )
    port map (
      I0 => M2_0_bdd20,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M2_3_72
    );
  M1_23_31 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => sw_3_IBUF_1299,
      I1 => sw_2_IBUF_1298,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1_23_bdd6
    );
  M1a_22_18 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M1_22_bdd0,
      O => M1a_22_18_91
    );
  M1_22_0 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_22_bdd0,
      I3 => U2_vcs(1),
      O => M1_22_0_22
    );
  M1_22_111 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      I3 => M1_22_bdd12,
      O => M1_22_11_23
    );
  M2a_4_77_SW0 : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => U2_vcs(2),
      I2 => sw_1_IBUF_1297,
      O => N253
    );
  M2a_4_77 : LUT4
    generic map(
      INIT => X"090F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N253,
      I2 => rom1_addr(3),
      I3 => U2_vcs(0),
      O => M2a_4_77_234
    );
  M1a_26_8 : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd12,
      I2 => rom1_addr(2),
      I3 => M1_22_bdd9,
      O => M1a_26_8_105
    );
  M1a_26_106 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_26_bdd0,
      I3 => U2_vcs(1),
      O => M1a_26_106_103
    );
  M1_28_23 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_23_bdd6,
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => M1_28_23_59
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => sw_1_IBUF_1297,
      I2 => sw_0_IBUF_1296,
      I3 => rom1_addr(2),
      O => M2_7_bdd0
    );
  M2_6_31 : LUT4
    generic map(
      INIT => X"999B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_6_bdd1
    );
  M2_4_31 : LUT4
    generic map(
      INIT => X"6F09"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      I3 => U2_vcs(0),
      O => M2_4_bdd2
    );
  M2_3_2 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd13,
      I3 => rom1_addr(2),
      O => M2_3_2_167
    );
  M2_2_31 : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_2_bdd5
    );
  M1_22_72 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1_22_bdd12
    );
  M2_0_81 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd18,
      I3 => M2_0_bdd4,
      O => M2_0_bdd2
    );
  U3_blue_0_9 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB4_and000069_1098,
      I3 => U3_spriteonB4_and000038_1094,
      O => U3_blue_0_9_1057
    );
  M1_24_70 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M1_24_bdd0,
      O => M1_24_70_37
    );
  U3_green_1_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_N12,
      I1 => U3_spriteonB5,
      I2 => U3_spriteonGrnd,
      O => N255
    );
  U3_green_1_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N255,
      I1 => U3_N36,
      I2 => U3_blue_and0003,
      I3 => U3_N30,
      O => green_1_OBUF_1158
    );
  M2_4_93 : LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => sw_1_IBUF_1297,
      I3 => sw_0_IBUF_1296,
      O => M2_4_93_177
    );
  M2_4_127 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M2_4_bdd2,
      O => M2_4_127_173
    );
  M1_27_102 : LUT4
    generic map(
      INIT => X"9402"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sw_2_IBUF_1298,
      I2 => sw_3_IBUF_1299,
      I3 => U2_vcs(0),
      O => M1_27_102_52
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N257,
      O => U3_Mmux_M2a_mux0000_71_952
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N259,
      O => U3_Mmux_M2a_mux0000_73_954
    );
  U3_blue_and0000258_SW0 : LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(5),
      I2 => U2_vcs(4),
      I3 => N261,
      O => N161
    );
  M1a_25_36 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N167,
      I2 => M1_10_bdd5,
      I3 => rom1_addr(3),
      O => M1a_25_Q
    );
  M2_5_48_SW1 : LUT4
    generic map(
      INIT => X"2224"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => U2_vcs(3),
      I3 => M2_0_bdd6,
      O => N265
    );
  M1_25_34_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      O => N267
    );
  M1_25_34 : LUT4
    generic map(
      INIT => X"8081"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => N267,
      I3 => U2_vcs(0),
      O => M1_25_34_42
    );
  M2_9_25 : LUT4
    generic map(
      INIT => X"A220"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => N273,
      O => M2_9_25_206
    );
  M1a_10_11 : LUT4
    generic map(
      INIT => X"7DE8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_10_bdd0
    );
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N279,
      O => U3_Mmux_M1_mux0000_85_872
    );
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N281,
      O => U3_Mmux_M1_mux0000_92_876
    );
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N283,
      O => U3_Mmux_M1a_mux0000_9_904
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N285,
      O => U3_Mmux_M1a_mux0000_73_893
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N287,
      O => U3_Mmux_M1a_mux0000_85_902
    );
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N289,
      O => U3_Mmux_M1a_mux0000_92_906
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N291,
      O => U3_Mmux_M2_mux0000_71_921
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N293,
      O => U3_Mmux_M2_mux0000_8_927
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N295,
      O => U3_Mmux_M2_mux0000_9_935
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N297,
      O => U3_Mmux_M2_mux0000_73_923
    );
  M1a_21_54_SW0_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd8,
      I2 => U2_vcs(2),
      O => N307
    );
  M2a_8_11 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M2a_6_bdd0,
      I1 => U2_vcs(3),
      I2 => M2_3_72,
      I3 => U2_vcs(1),
      O => M2a_8_11_248
    );
  M2_7_55 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M2_7_25_195,
      I1 => U2_vcs(3),
      I2 => M2_7_bdd0,
      I3 => U2_vcs(1),
      O => M2_7_55_196
    );
  M2_6_87 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => M2_6_51_191,
      I1 => U2_vcs(3),
      I2 => M1_10_bdd7,
      I3 => U2_vcs(1),
      O => M2_6_87_192
    );
  M1a_24_21 : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => U2_vcs(0),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1a_24_bdd1
    );
  M1a_24_14 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => sw_2_IBUF_1298,
      I2 => sw_3_IBUF_1299,
      I3 => rom1_addr(2),
      O => M1a_24_14_98
    );
  M1_23_14 : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1_23_14_31
    );
  M2_28_1 : LUT4
    generic map(
      INIT => X"70E0"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(4),
      O => M2_28_1_157
    );
  M2a_5_9 : LUT4
    generic map(
      INIT => X"E060"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => sw_1_IBUF_1297,
      I2 => rom1_addr(2),
      I3 => U2_vcs(0),
      O => M2a_5_9_237
    );
  M2a_6_21 : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => U2_vcs(0),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2a_6_bdd1
    );
  M2_5_31 : LUT4
    generic map(
      INIT => X"AA17"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => sw_0_IBUF_1296,
      I2 => sw_1_IBUF_1297,
      I3 => rom1_addr(2),
      O => M2_5_bdd2
    );
  M1_30_111_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => sw_2_IBUF_1298,
      I2 => sw_3_IBUF_1299,
      I3 => U2_vcs(0),
      O => N315
    );
  M2_2_10 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => M2_2_10_161
    );
  M2a_22_1 : LUT4
    generic map(
      INIT => X"55C8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => M2a_22_1_217
    );
  M1_28_74_SW0 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N147,
      I3 => U2_vcs(0),
      O => N321
    );
  M1_28_74 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_28_23_59,
      I2 => U2_vcs(3),
      I3 => N321,
      O => M1_28_74_60
    );
  U3_spriteonB3_and000096_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U2_hcs(9),
      I3 => U3_spriteonB3_and000073_1092,
      O => N323
    );
  U3_spriteonB3_and000096 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => N141,
      I2 => N323,
      I3 => U2_hcs(6),
      O => U3_spriteonB3
    );
  U3_spriteon2_addsub0000_7_1 : LUT4
    generic map(
      INIT => X"9995"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(6),
      I2 => U3_C2(4),
      I3 => U3_C2(5),
      O => U3_spriteon2_addsub0000(7)
    );
  U3_spriteon2_addsub0000_6_1 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(4),
      I2 => U3_C2(5),
      O => U3_spriteon2_addsub0000(6)
    );
  M2_12_31 : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M2_12_bdd5
    );
  M2_0_61 : LUT4
    generic map(
      INIT => X"F88F"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => sw_1_IBUF_1297,
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => M2_0_bdd10
    );
  M2_3_41 : LUT4
    generic map(
      INIT => X"7DFF"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => sw_1_IBUF_1297,
      O => M2_3_bdd7
    );
  M1_22_210 : LUT4
    generic map(
      INIT => X"7DFF"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => sw_3_IBUF_1299,
      O => M1_22_bdd4
    );
  M1_24_21 : LUT4
    generic map(
      INIT => X"666F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1_24_bdd4
    );
  M2_0_510 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_0_bdd9
    );
  U3_Mmux_M1_mux0000_83 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N139,
      I2 => U2_vcs(0),
      I3 => N325,
      O => U3_Mmux_M1_mux0000_83_870
    );
  M1_28_54_SW0 : LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => N147
    );
  M1a_24_63_SW0 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_24_bdd0,
      I3 => U2_vcs(1),
      O => N171
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C1(6),
      I2 => U3_C1(4),
      I3 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(6)
    );
  U3_red_0_17_SW0 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB4_and000038_1094,
      I3 => U3_spriteonB4_and000069_1098,
      O => N203
    );
  M2a_2_59_SW0 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd20,
      I3 => M2_0_bdd4,
      O => N221
    );
  M2_9_11 : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => sw_1_IBUF_1297,
      I1 => U2_vcs(0),
      I2 => sw_0_IBUF_1296,
      I3 => rom1_addr(2),
      O => M2_9_bdd0
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C2(6),
      I2 => U3_C2(4),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U2_hcs(6),
      I2 => U3_C2(4),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(6)
    );
  M2_10_72 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => M2_0_bdd13,
      O => M2_10_bdd2
    );
  M2_1_29 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => M2_0_bdd20,
      O => M2_1_bdd1
    );
  U3_blue_and0000258_SW0_SW0 : LUT4
    generic map(
      INIT => X"DB9B"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(5),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N261
    );
  M1_30_49_SW0 : LUT4
    generic map(
      INIT => X"61E0"
    )
    port map (
      I0 => sw_3_IBUF_1299,
      I1 => sw_2_IBUF_1298,
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N331
    );
  M2_21_11 : LUT4
    generic map(
      INIT => X"E257"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1_10_bdd0
    );
  M2_10_11 : LUT4
    generic map(
      INIT => X"AE35"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => M1_12_bdd0
    );
  M1a_28_32_SW0 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => U2_vcs(0),
      O => N333
    );
  M1a_28_32 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => N333,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1a_28_32_112
    );
  M2a_10_1 : LUT4
    generic map(
      INIT => X"6DF8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_12_bdd0
    );
  M2a_30_18 : LUT4
    generic map(
      INIT => X"830F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_1_20
    );
  M2a_7_58_SW0 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => sw_0_IBUF_1296,
      I2 => sw_1_IBUF_1297,
      I3 => rom1_addr(2),
      O => N149
    );
  M2_26_11 : LUT4
    generic map(
      INIT => X"7F89"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M2_26_bdd0
    );
  U3_Mmux_M1_mux0000_83_SW1 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      O => N325
    );
  M2a_5_110_SW0 : LUT4
    generic map(
      INIT => X"FFE8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sw_0_IBUF_1296,
      I2 => sw_1_IBUF_1297,
      I3 => U2_vcs(3),
      O => N337
    );
  M2a_5_110 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => N337,
      O => M2a_5_110_236
    );
  M2a_12_21_SW0 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => N135
    );
  M1_21_52 : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1_21_bdd8
    );
  M1_22_42 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => M1_22_bdd7
    );
  M2_4_61 : LUT4
    generic map(
      INIT => X"3C28"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => sw_1_IBUF_1297,
      O => M2_4_bdd10
    );
  M2a_10_54_SW0_SW0 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_1_IBUF_1297,
      I3 => sw_0_IBUF_1296,
      O => N309
    );
  M2_9_25_SW1 : LUT4
    generic map(
      INIT => X"6800"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => sw_1_IBUF_1297,
      I2 => U2_vcs(0),
      I3 => rom1_addr(2),
      O => N273
    );
  M1_10_51 : LUT3
    generic map(
      INIT => X"A7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_10_bdd5
    );
  M1_10_31 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_10_bdd7
    );
  M1_0_21 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_0_bdd2
    );
  M2_0_102 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_0_bdd18
    );
  M2_18_11 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2_18_bdd0
    );
  M2_5_34 : LUT4
    generic map(
      INIT => X"B793"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M2_4_49
    );
  M1_14_11 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_14_bdd0
    );
  M1_10_41 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_10_bdd8
    );
  M2a_3_1 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => M2a_3_1_225
    );
  M2_4_206 : MUXF5
    port map (
      I0 => N349,
      I1 => N350,
      S => U2_vcs(1),
      O => M2_4_Q
    );
  M2_4_206_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_4_49,
      I2 => M2_4_38_175,
      I3 => M2_4_bdd0,
      O => N349
    );
  M2_4_206_G : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_4_117_172,
      I2 => M2_4_127_173,
      I3 => M1_0_bdd2,
      O => N350
    );
  M1_22_36 : MUXF5
    port map (
      I0 => N351,
      I1 => N352,
      S => U2_vcs(1),
      O => M1_22_36_24
    );
  M1_22_36_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd7,
      O => N351
    );
  M1_22_36_G : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_22_11_23,
      O => N352
    );
  M2_3_200_SW0 : MUXF5
    port map (
      I0 => N353,
      I1 => N354,
      S => U2_vcs(1),
      O => N113
    );
  M2_3_200_SW0_F : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_3_72,
      I2 => M2_0_bdd10,
      I3 => rom1_addr(3),
      O => N353
    );
  M2_3_200_SW0_G : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(3),
      I2 => N215,
      I3 => M2_3_2_167,
      O => N354
    );
  M2_2_145 : MUXF5
    port map (
      I0 => N355,
      I1 => N356,
      S => rom1_addr(4),
      O => M2_2_Q
    );
  M2_2_145_F : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_2_31_162,
      I2 => M2_2_50_163,
      I3 => M2_2_10_161,
      O => N355
    );
  M2_2_145_G : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N356
    );
  M2a_4_209 : MUXF5
    port map (
      I0 => N357,
      I1 => N358,
      S => rom1_addr(4),
      O => M2a_4_Q
    );
  M2a_4_209_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2a_4_116_230,
      I1 => U2_vcs(1),
      I2 => M2a_4_14_231,
      O => N357
    );
  M2a_4_209_G : LUT4
    generic map(
      INIT => X"A123"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N358
    );
  M2a_6_106 : MUXF5
    port map (
      I0 => N359,
      I1 => N360,
      S => rom1_addr(4),
      O => M2a_6_Q
    );
  M2a_6_106_F : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => M2a_6_49_242,
      I1 => U2_vcs(1),
      I2 => M2a_6_10,
      O => N359
    );
  M2a_6_106_G : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_26_bdd0,
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N360
    );
  M1a_27_143 : MUXF5
    port map (
      I0 => N361,
      I1 => N362,
      S => rom1_addr(3),
      O => M1a_27_Q
    );
  M1a_27_143_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_27_83_109,
      I2 => M1a_27_123_107,
      I3 => M1_10_bdd5,
      O => N361
    );
  M1a_27_143_G : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_27_83_109,
      I2 => M1_27_bdd0,
      I3 => M1a_27_123_107,
      O => N362
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N363,
      I1 => N364,
      S => U2_vcs(3),
      O => M2_23_Q_154
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"FB24"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N363
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"1353"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N364
    );
  M1a_25_36_SW0 : MUXF5
    port map (
      I0 => N365,
      I1 => N366,
      S => rom1_addr(3),
      O => N167
    );
  M1a_25_36_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1a_22_bdd0,
      I2 => M1a_24_bdd1,
      O => N365
    );
  M1a_25_36_SW0_G : LUT4
    generic map(
      INIT => X"F791"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_24_bdd4,
      I3 => U2_vcs(2),
      O => N366
    );
  M1a_22_44_SW0 : MUXF5
    port map (
      I0 => N367,
      I1 => N368,
      S => U2_vcs(0),
      O => N229
    );
  M1a_22_44_SW0_F : LUT4
    generic map(
      INIT => X"6E6C"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M1_22_bdd9,
      O => N367
    );
  M1a_22_44_SW0_G : LUT4
    generic map(
      INIT => X"FE7C"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1_21_bdd8,
      O => N368
    );
  M1_23_35 : MUXF5
    port map (
      I0 => N369,
      I1 => N370,
      S => U2_vcs(1),
      O => M1_23_35_32
    );
  M1_23_35_F : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => M1_23_14_31,
      O => N369
    );
  M1_23_35_G : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd12,
      O => N370
    );
  M1a_27_83 : MUXF5
    port map (
      I0 => N371,
      I1 => N372,
      S => U2_vcs(1),
      O => M1a_27_83_109
    );
  M1a_27_83_F : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => M1a_27_50_108,
      O => N371
    );
  M1a_27_83_G : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd4,
      O => N372
    );
  M1_8_Q : MUXF5
    port map (
      I0 => N373,
      I1 => N374,
      S => U2_vcs(1),
      O => M1_8_Q_76
    );
  M1_8_F : LUT4
    generic map(
      INIT => X"5C56"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N373
    );
  M1_8_G : LUT4
    generic map(
      INIT => X"2676"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N374
    );
  M2a_13_Q : MUXF5
    port map (
      I0 => N375,
      I1 => N376,
      S => U2_vcs(1),
      O => M2a_13_Q_212
    );
  M2a_13_F : LUT4
    generic map(
      INIT => X"355E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N375
    );
  M2a_13_G : LUT4
    generic map(
      INIT => X"1477"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N376
    );
  M2a_28_36 : MUXF5
    port map (
      I0 => N377,
      I1 => N378,
      S => U2_vcs(1),
      O => M2a_28_Q
    );
  M2a_28_36_F : LUT4
    generic map(
      INIT => X"0868"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N377
    );
  M2a_28_36_G : LUT4
    generic map(
      INIT => X"4246"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N378
    );
  M2a_12_42 : MUXF5
    port map (
      I0 => N379,
      I1 => N380,
      S => U2_vcs(4),
      O => M2a_12_Q
    );
  M2a_12_42_F : LUT4
    generic map(
      INIT => X"7E06"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => N135,
      O => N379
    );
  M2a_12_42_G : LUT4
    generic map(
      INIT => X"0146"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N380
    );
  M2_11_Q : MUXF5
    port map (
      I0 => N381,
      I1 => N382,
      S => U2_vcs(1),
      O => M2_11_Q_139
    );
  M2_11_F : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N381
    );
  M2_11_G : LUT4
    generic map(
      INIT => X"0D6D"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N382
    );
  M1_31_25 : MUXF5
    port map (
      I0 => N383,
      I1 => N384,
      S => U2_vcs(1),
      O => M1_31_25_71
    );
  M1_31_25_F : LUT4
    generic map(
      INIT => X"044C"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_2_IBUF_1298,
      I3 => sw_3_IBUF_1299,
      O => N383
    );
  M1_31_25_G : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N384
    );
  M1a_21_54 : MUXF5
    port map (
      I0 => N385,
      I1 => N386,
      S => U2_vcs(1),
      O => M1a_21_Q
    );
  M1a_21_54_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => M1a_12_bdd0,
      I2 => N307,
      I3 => U2_vcs(3),
      O => N385
    );
  M1a_21_54_G : LUT4
    generic map(
      INIT => X"147E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1a_12_bdd0,
      O => N386
    );
  M2a_10_54 : MUXF5
    port map (
      I0 => N387,
      I1 => N388,
      S => U2_vcs(1),
      O => M2a_10_Q
    );
  M2a_10_54_F : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => M1a_12_bdd0,
      I2 => U2_vcs(3),
      I3 => N309,
      O => N387
    );
  M2a_10_54_G : LUT4
    generic map(
      INIT => X"147E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1a_12_bdd0,
      O => N388
    );
  U3_Mmux_M2a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N389,
      I1 => N390,
      S => U2_vcs(2),
      O => N207
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"989D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix2(0),
      O => N389
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"F676"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix2(0),
      O => N390
    );
  U3_Mmux_M2a_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N391,
      I1 => N392,
      S => U2_vcs(0),
      O => N257
    );
  U3_Mmux_M2a_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"3CD6"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N391
    );
  U3_Mmux_M2a_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"3EF5"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N392
    );
  M2_8_52 : MUXF5
    port map (
      I0 => N393,
      I1 => N394,
      S => U2_vcs(3),
      O => M2_8_52_204
    );
  M2_8_52_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd9,
      I2 => U2_vcs(1),
      I3 => M2_3_bdd7,
      O => N393
    );
  M2_8_52_G : LUT4
    generic map(
      INIT => X"3323"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd20,
      I3 => U2_vcs(0),
      O => N394
    );
  M2_5_165 : MUXF5
    port map (
      I0 => N395,
      I1 => N396,
      S => rom1_addr(4),
      O => M2_5_Q
    );
  M2_5_165_F : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_5_107,
      I2 => N265,
      O => N395
    );
  M2_5_165_G : LUT4
    generic map(
      INIT => X"3A50"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N396
    );
  M1_19_32 : MUXF5
    port map (
      I0 => N397,
      I1 => N398,
      S => U2_vcs(1),
      O => M1_19_Q
    );
  M1_19_32_F : LUT4
    generic map(
      INIT => X"6B02"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N397
    );
  M1_19_32_G : LUT4
    generic map(
      INIT => X"468C"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N398
    );
  M1_23_76 : MUXF5
    port map (
      I0 => N399,
      I1 => N400,
      S => rom1_addr(4),
      O => M1_23_Q
    );
  M1_23_76_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1_23_35_32,
      I1 => rom1_addr(3),
      I2 => M1_23_bdd1,
      O => N399
    );
  M1_23_76_G : LUT4
    generic map(
      INIT => X"86AE"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => rom1_addr(3),
      I3 => U2_vcs(0),
      O => N400
    );
  M1_28_122 : MUXF5
    port map (
      I0 => N401,
      I1 => N402,
      S => rom1_addr(4),
      O => M1_28_Q
    );
  M1_28_122_F : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_bdd4,
      I2 => M1_28_74_60,
      I3 => M1_28_2_58,
      O => N401
    );
  M1_28_122_G : LUT4
    generic map(
      INIT => X"8C9A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => rom1_addr(3),
      I3 => U2_vcs(0),
      O => N402
    );
  U3_Mmux_M2_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N403,
      I1 => N404,
      S => U2_vcs(3),
      O => N297
    );
  U3_Mmux_M2_mux0000_73_SW0_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => N403
    );
  U3_Mmux_M2_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"797D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U3_xpix2(0),
      O => N404
    );
  M1_1_74 : MUXF5
    port map (
      I0 => N405,
      I1 => N406,
      S => U2_vcs(3),
      O => M1_1_Q
    );
  M1_1_74_F : LUT4
    generic map(
      INIT => X"A220"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(4),
      O => N405
    );
  M1_1_74_G : LUT4
    generic map(
      INIT => X"1557"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N406
    );
  M1_18_Q : MUXF5
    port map (
      I0 => N407,
      I1 => N408,
      S => U2_vcs(1),
      O => M1_18_Q_11
    );
  M1_18_F : LUT4
    generic map(
      INIT => X"4A21"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N407
    );
  M1_18_G : LUT4
    generic map(
      INIT => X"482C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N408
    );
  M2a_11_48 : MUXF5
    port map (
      I0 => N409,
      I1 => N410,
      S => U2_vcs(3),
      O => M2a_11_Q
    );
  M2a_11_48_F : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N409
    );
  M2a_11_48_G : LUT4
    generic map(
      INIT => X"5313"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N410
    );
  M1_29_80 : MUXF5
    port map (
      I0 => N411,
      I1 => N412,
      S => U2_vcs(1),
      O => M1_29_80_66
    );
  M1_29_80_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_29_bdd5,
      I2 => U2_vcs(3),
      I3 => M1_22_bdd12,
      O => N411
    );
  M1_29_80_G : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1_21_bdd5,
      O => N412
    );
  M1a_3_f5 : MUXF5
    port map (
      I0 => N413,
      I1 => N414,
      S => U2_vcs(1),
      O => M1a_3_Q
    );
  M1a_3_f5_F : LUT4
    generic map(
      INIT => X"0868"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N413
    );
  M1a_3_f5_G : LUT4
    generic map(
      INIT => X"4246"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N414
    );
  M1_9_f5 : MUXF5
    port map (
      I0 => N415,
      I1 => N416,
      S => U2_vcs(1),
      O => M1_9_Q
    );
  M1_9_f5_F : LUT4
    generic map(
      INIT => X"4872"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N415
    );
  M1_9_f5_G : LUT4
    generic map(
      INIT => X"4869"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N416
    );
  M1_3_f5 : MUXF5
    port map (
      I0 => N417,
      I1 => N418,
      S => U2_vcs(1),
      O => M1_3_Q
    );
  M1_3_f5_F : LUT4
    generic map(
      INIT => X"1F92"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(3),
      O => N417
    );
  M1_3_f5_G : LUT4
    generic map(
      INIT => X"2664"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N418
    );
  M2a_29_69 : MUXF5
    port map (
      I0 => N419,
      I1 => N420,
      S => U2_vcs(4),
      O => M2a_29_Q
    );
  M2a_29_69_F : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N419
    );
  M2a_29_69_G : LUT4
    generic map(
      INIT => X"0157"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N420
    );
  M2_21_f5 : MUXF5
    port map (
      I0 => N421,
      I1 => N422,
      S => U2_vcs(1),
      O => M2_21_Q
    );
  M2_21_f5_F : LUT4
    generic map(
      INIT => X"7098"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N421
    );
  M2_21_f5_G : LUT4
    generic map(
      INIT => X"0C68"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N422
    );
  M2_13_43 : MUXF5
    port map (
      I0 => N423,
      I1 => N424,
      S => U2_vcs(1),
      O => M2_13_Q
    );
  M2_13_43_F : LUT4
    generic map(
      INIT => X"4A21"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N423
    );
  M2_13_43_G : LUT4
    generic map(
      INIT => X"482C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N424
    );
  U3_Mmux_M1_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N425,
      I1 => N426,
      S => U2_vcs(1),
      O => N209
    );
  U3_Mmux_M1_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U3_xpix1(0),
      O => N425
    );
  U3_Mmux_M1_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"D499"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => rom1_addr(2),
      I3 => U2_vcs(0),
      O => N426
    );
  U3_Mmux_M2a_mux0000_82_SW0 : MUXF5
    port map (
      I0 => N427,
      I1 => N428,
      S => U2_vcs(1),
      O => N153
    );
  U3_Mmux_M2a_mux0000_82_SW0_F : LUT4
    generic map(
      INIT => X"F7C9"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N427
    );
  U3_Mmux_M2a_mux0000_82_SW0_G : LUT4
    generic map(
      INIT => X"7AFA"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_xpix2(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N428
    );
  U3_Mmux_M1a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N429,
      I1 => N430,
      S => U3_xpix1(0),
      O => N285
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"9072"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => M1_14_bdd0,
      I3 => U2_vcs(1),
      O => N429
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"9286"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N430
    );
  M2a_23_Q : MUXF5
    port map (
      I0 => N431,
      I1 => N432,
      S => U2_vcs(1),
      O => M2a_23_Q_219
    );
  M2a_23_F : LUT4
    generic map(
      INIT => X"02A8"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N431
    );
  M2a_23_G : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      O => N432
    );
  M1_27_231 : MUXF5
    port map (
      I0 => N433,
      I1 => N434,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_231_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_27_127_53,
      I2 => M1_27_bdd0,
      O => N433
    );
  M1_27_231_G : LUT4
    generic map(
      INIT => X"1A54"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N434
    );
  M1_26_176 : MUXF5
    port map (
      I0 => N435,
      I1 => N436,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_176_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_49,
      I2 => M1_26_30_48,
      I3 => M1_26_bdd0,
      O => N435
    );
  M1_26_176_G : LUT4
    generic map(
      INIT => X"9858"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N436
    );
  U3_Mmux_M1a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N437,
      I1 => N438,
      S => U3_xpix1(0),
      O => N283
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"DEAC"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N437
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"7BA3"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_14_bdd0,
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => N438
    );
  M1_30_116 : MUXF5
    port map (
      I0 => N439,
      I1 => N440,
      S => U2_vcs(1),
      O => M1_30_Q
    );
  M1_30_116_F : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N315,
      I2 => rom1_addr(4),
      I3 => N331,
      O => N439
    );
  M1_30_116_G : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => M1_22_bdd12,
      I3 => U2_vcs(0),
      O => N440
    );
  M1a_9_33 : MUXF5
    port map (
      I0 => N441,
      I1 => N442,
      S => U2_vcs(1),
      O => M1a_9_Q
    );
  M1a_9_33_F : LUT4
    generic map(
      INIT => X"3464"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N441
    );
  M1a_9_33_G : LUT4
    generic map(
      INIT => X"1716"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N442
    );
  M1a_19_32 : MUXF5
    port map (
      I0 => N443,
      I1 => N444,
      S => U2_vcs(1),
      O => M1a_19_Q
    );
  M1a_19_32_F : LUT4
    generic map(
      INIT => X"174C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N443
    );
  M1a_19_32_G : LUT4
    generic map(
      INIT => X"1715"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N444
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N445,
      I1 => N446,
      S => U2_vcs(1),
      O => M1_11_Q_7
    );
  M1_11_F : LUT4
    generic map(
      INIT => X"6050"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N445
    );
  M1_11_G : LUT4
    generic map(
      INIT => X"0C68"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N446
    );
  M1_10_Q : MUXF5
    port map (
      I0 => N447,
      I1 => N448,
      S => U2_vcs(1),
      O => M1_10_Q_2
    );
  M1_10_F : LUT4
    generic map(
      INIT => X"7098"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N447
    );
  M1_10_G : LUT4
    generic map(
      INIT => X"0C68"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N448
    );
  M1_2_1 : MUXF5
    port map (
      I0 => N449,
      I1 => N450,
      S => U2_vcs(1),
      O => M1_2_Q
    );
  M1_2_1_F : LUT4
    generic map(
      INIT => X"75E0"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N449
    );
  M1_2_1_G : LUT4
    generic map(
      INIT => X"426A"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N450
    );
  U3_Mmux_M1_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N451,
      I1 => N452,
      S => U2_vcs(1),
      O => N281
    );
  U3_Mmux_M1_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"EF16"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N451
    );
  U3_Mmux_M1_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U3_xpix1(0),
      O => N452
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N453,
      I1 => N454,
      S => U2_vcs(3),
      O => N155
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"BB98"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(0),
      O => N453
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"DFEB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N454
    );
  U3_Mmux_M1_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N455,
      I1 => N456,
      S => U2_vcs(2),
      O => N279
    );
  U3_Mmux_M1_mux0000_85_SW0_F : LUT4
    generic map(
      INIT => X"CF6C"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => N455
    );
  U3_Mmux_M1_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N456
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N457,
      I1 => N458,
      S => U2_vcs(3),
      O => M1a_2_Q_117
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"626A"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N457
    );
  M1a_2_G : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N458
    );
  M1_25_141 : MUXF5
    port map (
      I0 => N459,
      I1 => N460,
      S => rom1_addr(4),
      O => M1_25_Q
    );
  M1_25_141_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_25_77_43,
      I2 => M1_25_bdd1,
      O => N459
    );
  M1_25_141_G : LUT4
    generic map(
      INIT => X"9B58"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N460
    );
  M1a_10_47 : MUXF5
    port map (
      I0 => N461,
      I1 => N462,
      S => U2_vcs(1),
      O => M1a_10_Q
    );
  M1a_10_47_F : LUT4
    generic map(
      INIT => X"143E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N461
    );
  M1a_10_47_G : LUT4
    generic map(
      INIT => X"5317"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N462
    );
  M2a_21_29 : MUXF5
    port map (
      I0 => N463,
      I1 => N464,
      S => U2_vcs(1),
      O => M2a_21_Q
    );
  M2a_21_29_F : LUT4
    generic map(
      INIT => X"143E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N463
    );
  M2a_21_29_G : LUT4
    generic map(
      INIT => X"5317"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N464
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N465,
      I1 => N466,
      S => U2_vcs(1),
      O => M1a_20_Q_88
    );
  M1a_20_F : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N465
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"1A12"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N466
    );
  U3_Mmux_M2_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N467,
      I1 => N468,
      S => U2_vcs(1),
      O => N291
    );
  U3_Mmux_M2_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"C6ED"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N467
    );
  U3_Mmux_M2_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"EDE8"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => M1_10_bdd8,
      I2 => U2_vcs(2),
      I3 => U3_xpix2(0),
      O => N468
    );
  M1a_18_31 : MUXF5
    port map (
      I0 => N469,
      I1 => N470,
      S => U2_vcs(1),
      O => M1a_18_Q
    );
  M1a_18_31_F : LUT4
    generic map(
      INIT => X"355E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N469
    );
  M1a_18_31_G : LUT4
    generic map(
      INIT => X"1477"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N470
    );
  U3_Mmux_M1a_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N471,
      I1 => N472,
      S => U2_vcs(2),
      O => N287
    );
  U3_Mmux_M1a_mux0000_85_SW0_F : LUT4
    generic map(
      INIT => X"ED03"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N471
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N472
    );
  U3_Mmux_M1_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N473,
      I1 => N474,
      S => U2_vcs(1),
      O => N139
    );
  U3_Mmux_M1_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"CF49"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N473
    );
  U3_Mmux_M1_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"40F3"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N474
    );
  U3_Mmux_M2_mux0000_8_SW0 : MUXF5
    port map (
      I0 => N475,
      I1 => N476,
      S => U2_vcs(2),
      O => N293
    );
  U3_Mmux_M2_mux0000_8_SW0_F : LUT4
    generic map(
      INIT => X"DDC6"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U3_xpix2(0),
      I3 => U2_vcs(1),
      O => N475
    );
  U3_Mmux_M2_mux0000_8_SW0_G : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N476
    );
  U3_Mmux_M1_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N477,
      I1 => N478,
      S => U2_vcs(1),
      O => N211
    );
  U3_Mmux_M1_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N477
    );
  U3_Mmux_M1_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"D959"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix1(0),
      O => N478
    );
  U3_Mmux_M2_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N479,
      I1 => N480,
      S => U2_vcs(2),
      O => N295
    );
  U3_Mmux_M2_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"DCBA"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U3_xpix2(0),
      I3 => U2_vcs(3),
      O => N479
    );
  U3_Mmux_M2_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"71F1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U3_xpix2(0),
      O => N480
    );
  M2_30_72 : MUXF5
    port map (
      I0 => N481,
      I1 => N482,
      S => U2_vcs(3),
      O => M2_30_Q
    );
  M2_30_72_F : LUT4
    generic map(
      INIT => X"A220"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N481
    );
  M2_30_72_G : LUT4
    generic map(
      INIT => X"1557"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N482
    );
  U3_Mmux_M1a_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N483,
      I1 => N484,
      S => U2_vcs(2),
      O => N289
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"EE61"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N483
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"5F5E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N484
    );
  M2_29_2 : MUXF5
    port map (
      I0 => N485,
      I1 => N486,
      S => U2_vcs(2),
      O => M2_29_Q
    );
  M2_29_2_F : LUT4
    generic map(
      INIT => X"4EC4"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N485
    );
  M2_29_2_G : LUT4
    generic map(
      INIT => X"1A5C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => N486
    );
  M1_20_Q : MUXF5
    port map (
      I0 => N487,
      I1 => N488,
      S => U2_vcs(0),
      O => M1_20_Q_14
    );
  M1_20_F : LUT4
    generic map(
      INIT => X"3B82"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N487
    );
  M1_20_G : LUT4
    generic map(
      INIT => X"10F6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N488
    );
  M1a_11_f5 : MUXF5
    port map (
      I0 => N489,
      I1 => N490,
      S => U2_vcs(1),
      O => M1a_11_Q
    );
  M1a_11_f5_F : LUT4
    generic map(
      INIT => X"17CE"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N489
    );
  M1a_11_f5_G : LUT4
    generic map(
      INIT => X"5317"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N490
    );
  M1a_8_1 : MUXF5
    port map (
      I0 => N491,
      I1 => N492,
      S => U2_vcs(3),
      O => M1a_8_Q
    );
  M1a_8_1_F : LUT4
    generic map(
      INIT => X"02A8"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N491
    );
  M1a_8_1_G : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      O => N492
    );
  M2a_20_39 : MUXF5
    port map (
      I0 => N493,
      I1 => N494,
      S => U2_vcs(1),
      O => M2a_20_Q
    );
  M2a_20_39_F : LUT4
    generic map(
      INIT => X"17CE"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N493
    );
  M2a_20_39_G : LUT4
    generic map(
      INIT => X"5317"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N494
    );
  M2_20_59 : MUXF5
    port map (
      I0 => N495,
      I1 => N496,
      S => U2_vcs(1),
      O => M2_20_Q
    );
  M2_20_59_F : LUT4
    generic map(
      INIT => X"6050"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N495
    );
  M2_20_59_G : LUT4
    generic map(
      INIT => X"0C68"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N496
    );
  U3_Mmux_M2a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N497,
      I1 => N498,
      S => U2_vcs(0),
      O => N259
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : LUT3
    generic map(
      INIT => X"97"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      O => N497
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"0414"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U3_xpix2(0),
      O => N498
    );
  M2_12_59 : MUXF5
    port map (
      I0 => N499,
      I1 => N500,
      S => U2_vcs(1),
      O => M2_12_Q
    );
  M2_12_59_F : LUT4
    generic map(
      INIT => X"6B02"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N499
    );
  M2_12_59_G : LUT4
    generic map(
      INIT => X"468C"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N500
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => N501,
      I1 => N502,
      S => U2_vcs(1),
      O => M2_22_Q
    );
  M2_22_f5_F : LUT4
    generic map(
      INIT => X"4872"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N501
    );
  M2_22_f5_G : LUT4
    generic map(
      INIT => X"4869"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N502
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_1169
    );
  U3_q_17_BUFG : BUFG
    port map (
      I => U3_q_171,
      O => U3_q(17)
    );
  U1_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => U1_q_01,
      O => U1_Mcount_q_lut(0)
    );
  U2_Mcount_hcs_lut_0_INV_0 : INV
    port map (
      I => U2_hcs(0),
      O => U2_Mcount_hcs_lut(0)
    );
  U3_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => U3_Q_0_1001,
      O => U3_Mcount_q_lut(0)
    );
  x7_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => x7_clkdiv(0),
      O => x7_Mcount_clkdiv_lut(0)
    );
  nes_Mcount_counter_reg_lut_0_INV_0 : INV
    port map (
      I => nes_counter_reg(0),
      O => nes_Mcount_counter_reg_lut(0)
    );
  nes_Madd_scalar_next_addsub0000_lut_0_INV_0 : INV
    port map (
      I => nes_scalar_reg(0),
      O => nes_Madd_scalar_next_addsub0000_lut(0)
    );
  nes_left_reg_not00011_INV_0 : INV
    port map (
      I => ja1_IBUF_1163,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_1152,
      O => U2_clr_inv
    );
  U3_Madd_spriteon2f_add0002_xor_4_11_INV_0 : INV
    port map (
      I => U3_C2(4),
      O => U3_spriteon2f_add0002(4)
    );
  U2_Mcount_vcs_lut_0_1_INV_0 : INV
    port map (
      I => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  U2_vidon_and0000181 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => U2_vcs(5),
      I3 => U2_vcs(8),
      O => U2_vidon_and0000181_602
    );
  U2_vidon_and000018_f5 : MUXF5
    port map (
      I0 => U2_vidon_and0000181_602,
      I1 => an_1_OBUF_1146,
      S => U2_vcs(9),
      O => U2_vidon_and000018
    );
  U2_vidon_and0000261 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U2_vidon_and0000261_604
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_604,
      S => U2_vcs(4),
      O => U2_vidon_and000026
    );
  U2_vidon_and0000651 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => U2_vidon_and0000651_608
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => an_1_OBUF_1146,
      I1 => U2_vidon_and0000651_608,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  U3_spriteonB5_and000091 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => U3_spriteonB5_and000091_1108
    );
  U3_spriteonB5_and00009_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_spriteonB5_and000091_1108,
      S => U2_vcs(4),
      O => U3_spriteonB5_and00009
    );
  U3_spriteonB5_and0000491 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      I3 => U2_hcs(3),
      O => U3_spriteonB5_and0000491_1103
    );
  U3_spriteonB5_and000049_f5 : MUXF5
    port map (
      I0 => U3_spriteonB5_and0000491_1103,
      I1 => N0,
      S => U2_hcs(5),
      O => U3_spriteonB5_and000049
    );
  U3_spriteonB5_and0000831 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(7),
      I2 => U2_hcs(8),
      O => U3_spriteonB5_and0000831_1105
    );
  U3_spriteonB5_and0000832 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      I3 => U2_hcs(6),
      O => U3_spriteonB5_and0000832_1106
    );
  U3_spriteonB5_and000083_f5 : MUXF5
    port map (
      I0 => U3_spriteonB5_and0000832_1106,
      I1 => U3_spriteonB5_and0000831_1105,
      S => U3_spriteonB5_and000049,
      O => U3_spriteonB5_and000083
    );
  U3_red_2_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB4_and000038_1094,
      I3 => U3_spriteonB3,
      O => U3_red_2_11
    );
  U3_red_2_112 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB3,
      O => U3_red_2_111_1065
    );
  U3_red_2_11_f5 : MUXF5
    port map (
      I0 => U3_red_2_111_1065,
      I1 => U3_red_2_11,
      S => U3_spriteonB4_and000069_1098,
      O => U3_N12
    );
  U3_red_2_1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_N30,
      I1 => U3_N36,
      I2 => U3_blue_and0003,
      O => U3_red(2)
    );
  U3_red_2_2 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_N36,
      I1 => U3_blue_and0003,
      I2 => U3_N30,
      I3 => U3_N12,
      O => U3_red_2_1_1063
    );
  U3_red_2_f5 : MUXF5
    port map (
      I0 => U3_red_2_1_1063,
      I1 => U3_red(2),
      S => U3_spriteonGrnd,
      O => red_1_OBUF_1288
    );
  M2_5_1071 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_5_bdd2,
      O => M2_5_1071_183
    );
  M2_5_1072 : LUT4
    generic map(
      INIT => X"82FF"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M2_5_1072_184
    );
  M2_5_107_f5 : MUXF5
    port map (
      I0 => M2_5_1072_184,
      I1 => M2_5_1071_183,
      S => rom1_addr(3),
      O => M2_5_107
    );
  M2_6_1691 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_4_bdd0,
      I2 => rom1_addr(4),
      I3 => U2_vcs(0),
      O => M2_6_1691_189
    );
  M2_6_1692 : LUT4
    generic map(
      INIT => X"DF57"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(1),
      I2 => M2_4_bdd0,
      I3 => U2_vcs(2),
      O => M2_6_1692_190
    );
  M2_6_169_f5 : MUXF5
    port map (
      I0 => M2_6_1692_190,
      I1 => M2_6_1691_189,
      S => U2_vcs(3),
      O => M2_6_169
    );
  M2_3_2001 : LUT4
    generic map(
      INIT => X"8C9A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2_3_200
    );
  M2_3_200_f5 : MUXF5
    port map (
      I0 => N113,
      I1 => M2_3_200,
      S => rom1_addr(4),
      O => M2_3_Q
    );
  U3_Mmux_M2_mux0000_82_SW01 : LUT4
    generic map(
      INIT => X"6526"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U3_Mmux_M2_mux0000_82_SW0
    );
  U3_Mmux_M2_mux0000_82_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_82_SW0,
      I1 => M1_12_bdd0,
      S => U3_xpix2(0),
      O => N157
    );
  U3_spriteonB2_and000056_SW01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      O => U3_spriteonB2_and000056_SW0
    );
  U3_spriteonB2_and000056_SW02 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(3),
      I2 => U2_hcs(4),
      I3 => U2_hcs(2),
      O => U3_spriteonB2_and000056_SW01_1088
    );
  U3_spriteonB2_and000056_SW0_f5 : MUXF5
    port map (
      I0 => U3_spriteonB2_and000056_SW01_1088,
      I1 => U3_spriteonB2_and000056_SW0,
      S => U2_hcs(5),
      O => N197
    );
  M2_8_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      O => M2_8_131_202
    );
  M2_8_132 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd20,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2_8_132_203
    );
  M2_8_13_f5 : MUXF5
    port map (
      I0 => M2_8_132_203,
      I1 => M2_8_131_202,
      S => U2_vcs(3),
      O => M2_8_13
    );
  U3_Mmux_M2a_mux0000_8_SW01 : LUT4
    generic map(
      INIT => X"6C79"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => U3_Mmux_M2a_mux0000_8_SW0
    );
  U3_Mmux_M2a_mux0000_8_SW02 : LUT4
    generic map(
      INIT => X"7C69"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => U3_Mmux_M2a_mux0000_8_SW01_965
    );
  U3_Mmux_M2a_mux0000_8_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_SW01_965,
      I1 => U3_Mmux_M2a_mux0000_8_SW0,
      S => U3_xpix2(0),
      O => N205
    );
  M1_31_781 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(0),
      I2 => M1_27_bdd4,
      I3 => U2_vcs(1),
      O => M1_31_78
    );
  M1_31_782 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_31_25_71,
      O => M1_31_781_73
    );
  M1_31_78_f5 : MUXF5
    port map (
      I0 => M1_31_781_73,
      I1 => M1_31_78,
      S => rom1_addr(3),
      O => M1_31_Q
    );
  M2_1_671 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => M2_0_bdd4,
      I1 => U2_vcs(0),
      O => M2_1_671_148
    );
  M2_1_672 : LUT4
    generic map(
      INIT => X"E061"
    )
    port map (
      I0 => sw_0_IBUF_1296,
      I1 => sw_1_IBUF_1297,
      I2 => U2_vcs(0),
      I3 => N267,
      O => M2_1_672_149
    );
  M2_1_67_f5 : MUXF5
    port map (
      I0 => M2_1_672_149,
      I1 => M2_1_671_148,
      S => rom1_addr(3),
      O => M2_1_67
    );
  M2_0_281 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => M2_0_bdd4,
      I1 => U2_vcs(0),
      O => M2_0_281_125
    );
  M2_0_282 : LUT4
    generic map(
      INIT => X"044C"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => sw_0_IBUF_1296,
      I3 => sw_1_IBUF_1297,
      O => M2_0_282_126
    );
  M2_0_28_f5 : MUXF5
    port map (
      I0 => M2_0_282_126,
      I1 => M2_0_281_125,
      S => rom1_addr(3),
      O => M2_0_28
    );
  M1_29_1331 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1_29_133
    );
  M1_29_1332 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1_29_80_66,
      I1 => U2_vcs(3),
      I2 => N301,
      O => M1_29_1331_63
    );
  M1_29_133_f5 : MUXF5
    port map (
      I0 => M1_29_1331_63,
      I1 => M1_29_133,
      S => rom1_addr(4),
      O => M1_29_Q
    );
  M2a_6_101 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_6_bdd1,
      I2 => U2_vcs(1),
      I3 => M2a_6_bdd1,
      O => M2a_6_101_240
    );
  M2a_6_102 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2a_6_bdd1,
      I2 => U2_vcs(1),
      I3 => M2_6_bdd1,
      O => M2a_6_102_241
    );
  M2a_6_10_f5 : MUXF5
    port map (
      I0 => M2a_6_102_241,
      I1 => M2a_6_101_240,
      S => U2_vcs(3),
      O => M2a_6_10
    );
  M2_1_1171 : LUT4
    generic map(
      INIT => X"0081"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => M2_1_bdd1,
      O => M2_1_117
    );
  M2_1_1172 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => M2_1_67,
      O => M2_1_1171_146
    );
  M2_1_117_f5 : MUXF5
    port map (
      I0 => M2_1_1171_146,
      I1 => M2_1_117,
      S => U2_vcs(1),
      O => M2_1_Q
    );
  M1_29_36_SW02 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => sw_2_IBUF_1298,
      I1 => sw_3_IBUF_1299,
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1_29_36_SW01
    );
  M1_29_36_SW0_f5 : MUXF5
    port map (
      I0 => M1_29_36_SW01,
      I1 => M1_29_36_SW0,
      S => U2_vcs(2),
      O => N301
    );
  M1_21_261 : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(1),
      O => M1_21_261_17
    );
  M1_21_26_f5 : MUXF5
    port map (
      I0 => M1_21_261_17,
      I1 => N0,
      S => U2_vcs(3),
      O => M1_21_26
    );
  M1_26_11 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => sw_2_IBUF_1298,
      I2 => sw_3_IBUF_1299,
      I3 => U2_vcs(1),
      O => M1_26_1
    );
  M1_26_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      O => M1_26_11_47
    );
  M1_26_1_f5 : MUXF5
    port map (
      I0 => M1_26_11_47,
      I1 => M1_26_1,
      S => U2_vcs(2),
      O => M1_26_bdd0
    );
  nes_a_reg_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(9),
      I3 => N2,
      LO => N503,
      O => nes_N01
    );
  U2_hcs_cmp_eq000010 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(4),
      I2 => U2_hcs(3),
      I3 => U2_hcs(2),
      LO => N504,
      O => U2_hcs_cmp_eq000010_585
    );
  nes_counter_reg_cmp_eq0000112 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(7),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(1),
      I3 => nes_counter_reg(0),
      LO => N505,
      O => nes_counter_reg_cmp_eq0000112_1242
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(2),
      I1 => U3_C2(1),
      LO => U3_C2_not00011_640
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_C2_not000113_641,
      I1 => U3_C2(6),
      I2 => U3_C2(9),
      I3 => U3_C2_not00016_644,
      LO => U3_C2_not000123_642
    );
  U3_C2_not000150 : LUT4_L
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      I2 => U3_C2(6),
      I3 => U3_C2(5),
      LO => U3_C2_not000150_643
    );
  U3_C1_not00014 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_C1(7),
      I1 => U3_C1(6),
      I2 => U3_C1(5),
      I3 => U3_C1(4),
      LO => U3_C1_not00014_625
    );
  U3_spriteonB4_cmp_le0000121 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(7),
      I2 => U2_hcs(5),
      LO => N506,
      O => U3_N80
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_N2,
      I3 => N106,
      LO => N507,
      O => U2_vcs_cmp_eq0000_597
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => U3_C1_not000147_626,
      I1 => N108,
      I2 => U3_C1(7),
      I3 => N109,
      LO => U3_C1_not000183_628
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(9),
      I1 => nes_scalar_reg(8),
      I2 => nes_scalar_next_cmp_eq000021_1273,
      I3 => nes_scalar_next_cmp_eq000010_1272,
      LO => N508,
      O => nes_scalar_next_cmp_eq0000
    );
  M1_29_36_SW01_INV_0 : INV
    port map (
      I => U2_vcs(1),
      O => M1_29_36_SW0
    );

end STRUCTURE;

