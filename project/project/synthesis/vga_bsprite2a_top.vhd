--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Mon Apr 21 11:53:10 2014
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
    ld : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hill1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    hill2 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    hill3 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    hill4 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    hill5 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end vga_bsprite2a_top;

architecture STRUCTURE of vga_bsprite2a_top is
  signal M1_0_Q : STD_LOGIC; 
  signal M1_0_bdd0 : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_10_Q : STD_LOGIC; 
  signal M1_10_bdd0 : STD_LOGIC; 
  signal M1_10_bdd4 : STD_LOGIC; 
  signal M1_10_bdd7 : STD_LOGIC; 
  signal M1_11_Q_7 : STD_LOGIC; 
  signal M1_11_bdd3 : STD_LOGIC; 
  signal M1_12_Q_9 : STD_LOGIC; 
  signal M1_12_bdd0 : STD_LOGIC; 
  signal M1_12_bdd3 : STD_LOGIC; 
  signal M1_13_Q_12 : STD_LOGIC; 
  signal M1_14_bdd0 : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_18_Q_15 : STD_LOGIC; 
  signal M1_19_Q_16 : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q_18 : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_26 : STD_LOGIC; 
  signal M1_21_261_21 : STD_LOGIC; 
  signal M1_21_5 : STD_LOGIC; 
  signal M1_21_bdd3 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_0_27 : STD_LOGIC; 
  signal M1_22_11_28 : STD_LOGIC; 
  signal M1_22_35_29 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_20_36 : STD_LOGIC; 
  signal M1_23_29_37 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd3 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_39_42 : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_75_45 : STD_LOGIC; 
  signal M1_25_bdd0 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_1 : STD_LOGIC; 
  signal M1_26_11_50 : STD_LOGIC; 
  signal M1_26_140 : STD_LOGIC; 
  signal M1_26_30_52 : STD_LOGIC; 
  signal M1_26_58_53 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_115_56 : STD_LOGIC; 
  signal M1_27_142_SW0 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_12_61 : STD_LOGIC; 
  signal M1_28_120 : STD_LOGIC; 
  signal M1_28_1201_63 : STD_LOGIC; 
  signal M1_28_1202_64 : STD_LOGIC; 
  signal M1_28_27_65 : STD_LOGIC; 
  signal M1_28_65_66 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_0_68 : STD_LOGIC; 
  signal M1_29_126_69 : STD_LOGIC; 
  signal M1_29_14_70 : STD_LOGIC; 
  signal M1_29_35_71 : STD_LOGIC; 
  signal M1_29_60_72 : STD_LOGIC; 
  signal M1_29_74_73 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_30_111_77 : STD_LOGIC; 
  signal M1_30_49_78 : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_31_65 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_4_bdd0 : STD_LOGIC; 
  signal M1_8_Q_83 : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_10_bdd0 : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_1_20_93 : STD_LOGIC; 
  signal M1a_1_8_94 : STD_LOGIC; 
  signal M1a_20_Q_95 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_18_98 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_10_101 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_27_103 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_25_36 : STD_LOGIC; 
  signal M1a_25_361_107 : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_26_13 : STD_LOGIC; 
  signal M1a_26_131_110 : STD_LOGIC; 
  signal M1a_26_54 : STD_LOGIC; 
  signal M1a_26_541_112 : STD_LOGIC; 
  signal M1a_26_542_113 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_52_115 : STD_LOGIC; 
  signal M1a_27_82_116 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_30_119 : STD_LOGIC; 
  signal M1a_29_51_120 : STD_LOGIC; 
  signal M1a_2_Q_121 : STD_LOGIC; 
  signal M1a_30_36_122 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_5_21_125 : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q_128 : STD_LOGIC; 
  signal M2_0_bdd11 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd18 : STD_LOGIC; 
  signal M2_0_bdd3 : STD_LOGIC; 
  signal M2_0_bdd5 : STD_LOGIC; 
  signal M2_0_bdd7 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_bdd1 : STD_LOGIC; 
  signal M2_10_bdd11 : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_11_Q : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal M2_13_1 : STD_LOGIC; 
  signal M2_13_11 : STD_LOGIC; 
  signal M2_13_bdd1 : STD_LOGIC; 
  signal M2_13_bdd5 : STD_LOGIC; 
  signal M2_14_Q_146 : STD_LOGIC; 
  signal M2_16_Q : STD_LOGIC; 
  signal M2_18_Q_148 : STD_LOGIC; 
  signal M2_19_Q : STD_LOGIC; 
  signal M2_19_6 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_1_bdd4 : STD_LOGIC; 
  signal M2_1_bdd8 : STD_LOGIC; 
  signal M2_20_Q : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_21_bdd0 : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_23_Q_159 : STD_LOGIC; 
  signal M2_24_Q : STD_LOGIC; 
  signal M2_24_bdd1 : STD_LOGIC; 
  signal M2_26_Q : STD_LOGIC; 
  signal M2_28_Q_163 : STD_LOGIC; 
  signal M2_29_Q : STD_LOGIC; 
  signal M2_29_bdd0 : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_2_bdd8 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_20_171 : STD_LOGIC; 
  signal M2_3_38_172 : STD_LOGIC; 
  signal M2_3_bdd1 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_91_175 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_29_178 : STD_LOGIC; 
  signal M2_5_62_179 : STD_LOGIC; 
  signal M2_5_bdd0 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_31_182 : STD_LOGIC; 
  signal M2_6_bdd0 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_14_185 : STD_LOGIC; 
  signal M2_7_35_186 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_16_189 : STD_LOGIC; 
  signal M2_8_25_190 : STD_LOGIC; 
  signal M2_8_bdd0 : STD_LOGIC; 
  signal M2_8_bdd1 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_10_1 : STD_LOGIC; 
  signal M2a_10_2_197 : STD_LOGIC; 
  signal M2a_11_Q_198 : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q_200 : STD_LOGIC; 
  signal M2a_13_bdd1 : STD_LOGIC; 
  signal M2a_14_Q_202 : STD_LOGIC; 
  signal M2a_16_Q : STD_LOGIC; 
  signal M2a_16_1 : STD_LOGIC; 
  signal M2a_16_2_205 : STD_LOGIC; 
  signal M2a_18_Q : STD_LOGIC; 
  signal M2a_19_Q : STD_LOGIC; 
  signal M2a_1_Q_208 : STD_LOGIC; 
  signal M2a_1_bdd0 : STD_LOGIC; 
  signal M2a_1_bdd4 : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_21_Q : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_23_Q_214 : STD_LOGIC; 
  signal M2a_24_Q : STD_LOGIC; 
  signal M2a_24_1_216 : STD_LOGIC; 
  signal M2a_24_2 : STD_LOGIC; 
  signal M2a_24_bdd0 : STD_LOGIC; 
  signal M2a_26_Q : STD_LOGIC; 
  signal M2a_26_2_220 : STD_LOGIC; 
  signal M2a_28_Q_221 : STD_LOGIC; 
  signal M2a_29_Q_222 : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_32_224 : STD_LOGIC; 
  signal M2a_30_Q_225 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_3_19_227 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_4_101_229 : STD_LOGIC; 
  signal M2a_4_150_230 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M2a_5_54_232 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_7_17_235 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_21_SW0 : STD_LOGIC; 
  signal M2a_8_21_SW01_238 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_9_14_240 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N345 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
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
  signal N4 : STD_LOGIC; 
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
  signal N509 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal N563 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N565 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal N567 : STD_LOGIC; 
  signal N568 : STD_LOGIC; 
  signal N569 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal N571 : STD_LOGIC; 
  signal N572 : STD_LOGIC; 
  signal N573 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal N575 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal N577 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal N579 : STD_LOGIC; 
  signal N580 : STD_LOGIC; 
  signal N581 : STD_LOGIC; 
  signal N582 : STD_LOGIC; 
  signal N583 : STD_LOGIC; 
  signal N584 : STD_LOGIC; 
  signal N585 : STD_LOGIC; 
  signal N586 : STD_LOGIC; 
  signal N587 : STD_LOGIC; 
  signal N588 : STD_LOGIC; 
  signal N589 : STD_LOGIC; 
  signal N590 : STD_LOGIC; 
  signal N591 : STD_LOGIC; 
  signal N592 : STD_LOGIC; 
  signal N593 : STD_LOGIC; 
  signal N594 : STD_LOGIC; 
  signal N595 : STD_LOGIC; 
  signal N596 : STD_LOGIC; 
  signal N597 : STD_LOGIC; 
  signal N598 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal N600 : STD_LOGIC; 
  signal N601 : STD_LOGIC; 
  signal N602 : STD_LOGIC; 
  signal N603 : STD_LOGIC; 
  signal N604 : STD_LOGIC; 
  signal N605 : STD_LOGIC; 
  signal N606 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal N608 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal N610 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal U1_Mcount_q_cy_10_rt_582 : STD_LOGIC; 
  signal U1_Mcount_q_cy_11_rt_584 : STD_LOGIC; 
  signal U1_Mcount_q_cy_12_rt_586 : STD_LOGIC; 
  signal U1_Mcount_q_cy_13_rt_588 : STD_LOGIC; 
  signal U1_Mcount_q_cy_14_rt_590 : STD_LOGIC; 
  signal U1_Mcount_q_cy_15_rt_592 : STD_LOGIC; 
  signal U1_Mcount_q_cy_16_rt_594 : STD_LOGIC; 
  signal U1_Mcount_q_cy_1_rt_596 : STD_LOGIC; 
  signal U1_Mcount_q_cy_2_rt_598 : STD_LOGIC; 
  signal U1_Mcount_q_cy_3_rt_600 : STD_LOGIC; 
  signal U1_Mcount_q_cy_4_rt_602 : STD_LOGIC; 
  signal U1_Mcount_q_cy_5_rt_604 : STD_LOGIC; 
  signal U1_Mcount_q_cy_6_rt_606 : STD_LOGIC; 
  signal U1_Mcount_q_cy_7_rt_608 : STD_LOGIC; 
  signal U1_Mcount_q_cy_8_rt_610 : STD_LOGIC; 
  signal U1_Mcount_q_cy_9_rt_612 : STD_LOGIC; 
  signal U1_Mcount_q_xor_17_rt_614 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U1_q_171 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_637 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_639 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_641 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_643 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_645 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_647 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_649 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_651 : STD_LOGIC; 
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
  signal U2_Mcount_hcs_lut_0_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_xor_9_rt_664 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_667 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_669 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_671 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_673 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_675 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_677 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_679 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_681 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_693 : STD_LOGIC; 
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
  signal U2_hcs_cmp_eq000010_727 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_728 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_739 : STD_LOGIC; 
  signal U2_vidon_and00000_740 : STD_LOGIC; 
  signal U2_vidon_and0000105_741 : STD_LOGIC; 
  signal U2_vidon_and0000117_742 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and0000181_744 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_746 : STD_LOGIC; 
  signal U2_vidon_and000039_747 : STD_LOGIC; 
  signal U2_vidon_and00006_748 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_750 : STD_LOGIC; 
  signal U2_vidon_and000080_751 : STD_LOGIC; 
  signal U2_vsenable_752 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_764 : STD_LOGIC; 
  signal U3_C1_not0001105_765 : STD_LOGIC; 
  signal U3_C1_not000127_766 : STD_LOGIC; 
  signal U3_C1_not00014_767 : STD_LOGIC; 
  signal U3_C1_not000147_768 : STD_LOGIC; 
  signal U3_C1_not00015_769 : STD_LOGIC; 
  signal U3_C1_not000152_770 : STD_LOGIC; 
  signal U3_C1_not000183_771 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_783 : STD_LOGIC; 
  signal U3_C2_not000113_784 : STD_LOGIC; 
  signal U3_C2_not000123_785 : STD_LOGIC; 
  signal U3_C2_not000150_786 : STD_LOGIC; 
  signal U3_C2_not00016_787 : STD_LOGIC; 
  signal U3_C2_not000164_788 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB1_add0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB1_add0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB3_add0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB3_add0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB4_add0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB4_add0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB5_add0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_spriteonB5_add0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_tank1_angle_calc_addsub0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_tank1_angle_calc_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_935 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_952 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_954 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_1003 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_1059 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_1061 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_1063 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_1065 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_1067 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_1069 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_1071 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_1073 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_1075 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_1077 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_1079 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_1081 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_1083 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_1085 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_1087 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_1089 : STD_LOGIC; 
  signal U3_Mcount_q_xor_17_rt_1091 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc1 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc2 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc3 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc4 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc5 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc6 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc7 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc1 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc2 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc3 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc4 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc5 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc6 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc7 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_1138 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_1139 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_1140 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_1141 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_1142 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_1143 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_1145 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_1146 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_1149 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_1150 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_1151 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_1152 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_1153 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_1154 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_1157 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_1158 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_1159 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_1160 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_1161 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_1162 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_1163 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_1164 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_1165 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_1166 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_1167 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_1168 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_1169 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_1170 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_1171 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_1172 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_1173 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_1175 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_1176 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_1179 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_1180 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_1181 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_1182 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_1183 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_1184 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_1187 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_1188 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_1189 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_1190 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_1191 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_1192 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_1193 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_1194 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_1195 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_1196 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_1197 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_1198 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_1199 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_1200 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_1201 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_1202 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_1203 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_1205 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_1206 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_1209 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_1210 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_1211 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_1212 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_1213 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_1214 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_1217 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_1218 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_1219 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_1220 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_1221 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_1222 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_1223 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_1224 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_1225 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_1226 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_1227 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_1228 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_1229 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_1230 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_1231 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_1232 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_1233 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_1235 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_1236 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_1239 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_1240 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_1241 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_1242 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_1243 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_1244 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_1247 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_1248 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_1249 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_1250 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_1251 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_1252 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_1253 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_1254 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_1255 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_1256 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_1257 : STD_LOGIC; 
  signal U3_N3 : STD_LOGIC; 
  signal U3_N36 : STD_LOGIC; 
  signal U3_N37 : STD_LOGIC; 
  signal U3_N42 : STD_LOGIC; 
  signal U3_N6 : STD_LOGIC; 
  signal U3_N7 : STD_LOGIC; 
  signal U3_Q_0_1282 : STD_LOGIC; 
  signal U3_Q_1_1283 : STD_LOGIC; 
  signal U3_Q_10_1284 : STD_LOGIC; 
  signal U3_Q_11_1285 : STD_LOGIC; 
  signal U3_Q_12_1286 : STD_LOGIC; 
  signal U3_Q_13_1287 : STD_LOGIC; 
  signal U3_Q_14_1288 : STD_LOGIC; 
  signal U3_Q_15_1289 : STD_LOGIC; 
  signal U3_Q_16_1290 : STD_LOGIC; 
  signal U3_Q_2_1291 : STD_LOGIC; 
  signal U3_Q_3_1292 : STD_LOGIC; 
  signal U3_Q_4_1293 : STD_LOGIC; 
  signal U3_Q_5_1294 : STD_LOGIC; 
  signal U3_Q_6_1295 : STD_LOGIC; 
  signal U3_Q_7_1296 : STD_LOGIC; 
  signal U3_Q_8_1297 : STD_LOGIC; 
  signal U3_Q_9_1298 : STD_LOGIC; 
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
  signal U3_blue_and0002117 : STD_LOGIC; 
  signal U3_blue_and00021171_1338 : STD_LOGIC; 
  signal U3_blue_and0002137_1339 : STD_LOGIC; 
  signal U3_blue_and0002163_1340 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_leftBTN_inv1_inv1 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal U3_spriteon1 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000036_1357 : STD_LOGIC; 
  signal U3_spriteonB1_and000048_1358 : STD_LOGIC; 
  signal U3_spriteonB1_and000063_1359 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and000028 : STD_LOGIC; 
  signal U3_spriteonB2_and0000281_1364 : STD_LOGIC; 
  signal U3_spriteonB2_and0000282_1365 : STD_LOGIC; 
  signal U3_spriteonB2_and000040_1366 : STD_LOGIC; 
  signal U3_spriteonB2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000020_1370 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000112_1372 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000128_1373 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000028_1376 : STD_LOGIC; 
  signal U3_spriteonB4_and000028_SW0 : STD_LOGIC; 
  signal U3_spriteonB4_and000041_1378 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000041_1381 : STD_LOGIC; 
  signal U3_spriteonB5_and000059_1382 : STD_LOGIC; 
  signal U3_spriteonB5_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000104 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000134_1386 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000023 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000231_1388 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000232_1389 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000047 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000471_1391 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000064_1392 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00007 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000071_1394 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000087_1395 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000021_1405 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and00003_1406 : STD_LOGIC; 
  signal U3_tank1_angle_calc_cmp_eq0001_1407 : STD_LOGIC; 
  signal U3_tank1_angle_calc_not0001 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000017_1419 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and00003_1420 : STD_LOGIC; 
  signal U3_tank2_angle_calc_cmp_eq0001_1421 : STD_LOGIC; 
  signal U3_tank2_angle_calc_not0001 : STD_LOGIC; 
  signal a_to_g_0_OBUF_1441 : STD_LOGIC; 
  signal a_to_g_1_OBUF_1442 : STD_LOGIC; 
  signal a_to_g_2_OBUF_1443 : STD_LOGIC; 
  signal a_to_g_3_OBUF_1444 : STD_LOGIC; 
  signal a_to_g_4_OBUF_1445 : STD_LOGIC; 
  signal a_to_g_5_OBUF_1446 : STD_LOGIC; 
  signal a_to_g_6_OBUF_1447 : STD_LOGIC; 
  signal an_0_OBUF_1452 : STD_LOGIC; 
  signal an_1_OBUF_1453 : STD_LOGIC; 
  signal an_2_OBUF_1454 : STD_LOGIC; 
  signal an_3_OBUF_1455 : STD_LOGIC; 
  signal blue_0_OBUF_1458 : STD_LOGIC; 
  signal blue_1_OBUF_1459 : STD_LOGIC; 
  signal btn_3_IBUF_1485 : STD_LOGIC; 
  signal green_0_OBUF_1490 : STD_LOGIC; 
  signal green_1_OBUF_1491 : STD_LOGIC; 
  signal green_2_OBUF_1492 : STD_LOGIC; 
  signal hsync_OBUF_1494 : STD_LOGIC; 
  signal ja1_IBUF_1496 : STD_LOGIC; 
  signal ja2_OBUF_1498 : STD_LOGIC; 
  signal ja3_OBUF_1500 : STD_LOGIC; 
  signal ld_0_OBUF_1509 : STD_LOGIC; 
  signal ld_1_OBUF_1510 : STD_LOGIC; 
  signal ld_2_OBUF_1511 : STD_LOGIC; 
  signal ld_3_OBUF_1512 : STD_LOGIC; 
  signal ld_4_OBUF_1513 : STD_LOGIC; 
  signal ld_5_OBUF_1514 : STD_LOGIC; 
  signal ld_6_OBUF_1515 : STD_LOGIC; 
  signal ld_7_OBUF_1516 : STD_LOGIC; 
  signal mclk_BUFGP_1518 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_1521 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_1523 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_1525 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_1527 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_1529 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_1531 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_1533 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_1535 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_1537 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_1540 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_1542 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_1544 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_1546 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_1548 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_1550 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_1552 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_1554 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_1566 : STD_LOGIC; 
  signal nes_N0 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_1579 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_b_reg_1581 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_1593 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_1594 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_1596 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_1598 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_1601 : STD_LOGIC; 
  signal nes_right_reg_1602 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_1625 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_1626 : STD_LOGIC; 
  signal nes_sel_reg_1637 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_1639 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_up_reg_1641 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal red_0_OBUF_1646 : STD_LOGIC; 
  signal red_1_OBUF_1647 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_1_rt_1653 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_2_rt_1655 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_3_rt_1657 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_4_rt_1659 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_5_rt_1661 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_6_rt_1663 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_0 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_0121_1665 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_018_1666 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_1 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_2 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_3 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_4 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_5 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_6 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_7 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_lut_0_1 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_xor_7_rt_1675 : STD_LOGIC; 
  signal screenstate_N0 : STD_LOGIC; 
  signal screenstate_N13 : STD_LOGIC; 
  signal screenstate_N3 : STD_LOGIC; 
  signal screenstate_N30 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_1688 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd2_1690 : STD_LOGIC; 
  signal screenstate_sig_hill1_and0001 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_0_bdd2 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_115_1737 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_128_1738 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_181_1739 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_4_bdd2 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_5_bdd0 : STD_LOGIC; 
  signal screenstate_sig_hill5_addsub0000_5_bdd0 : STD_LOGIC; 
  signal selector_green_0_17_1763 : STD_LOGIC; 
  signal selector_green_1_25_SW0 : STD_LOGIC; 
  signal selector_green_1_25_SW01_1765 : STD_LOGIC; 
  signal selector_red_0_14_1766 : STD_LOGIC; 
  signal selector_red_0_18_1767 : STD_LOGIC; 
  signal sig_gameA : STD_LOGIC; 
  signal sig_gameDown : STD_LOGIC; 
  signal sig_gameRight : STD_LOGIC; 
  signal sig_gameUp : STD_LOGIC; 
  signal title_B_1776 : STD_LOGIC; 
  signal title_M_mux0000 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_3_f7_1778 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_4_f6_1779 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_4_f7_1780 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_5_f5_1781 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_5_f51_1782 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_5_f5_rt_1783 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_5_f6_1784 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_5_f61 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_6_f5_1786 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_6_f51 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_6_f52 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_6_f5_0_rt_1789 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_6_f6_1790 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_7 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_72_1792 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_73_1793 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_7_f5_1794 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_7_f51 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_7_f52 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_7_f5_1_1797 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_82_1798 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_83_1799 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_84_1800 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_85_1801 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_8_f5_1802 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_9_1803 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_91_1804 : STD_LOGIC; 
  signal title_Mmux_M_mux0000_92 : STD_LOGIC; 
  signal title_N11 : STD_LOGIC; 
  signal title_blue_1_254_1807 : STD_LOGIC; 
  signal title_blue_1_256_1808 : STD_LOGIC; 
  signal title_spriteon : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_1816 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_1817 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_1818 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_1822 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_1824 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_1826 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_1828 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_1830 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_1832 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_1834 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_1836 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_1838 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_1840 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_1842 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_1844 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_1846 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_1848 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_1850 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_1852 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_1854 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_1856 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_1858 : STD_LOGIC; 
  signal x7_Mmux_digit_3_1859 : STD_LOGIC; 
  signal x7_Mmux_digit_31_1860 : STD_LOGIC; 
  signal x7_Mmux_digit_32_1861 : STD_LOGIC; 
  signal x7_Mmux_digit_33_1862 : STD_LOGIC; 
  signal x7_Mmux_digit_4_1863 : STD_LOGIC; 
  signal x7_Mmux_digit_41_1864 : STD_LOGIC; 
  signal x7_Mmux_digit_42_1865 : STD_LOGIC; 
  signal x7_Mmux_digit_43_1866 : STD_LOGIC; 
  signal x7_an_1_mux000115_1887 : STD_LOGIC; 
  signal x7_an_1_mux00012_1888 : STD_LOGIC; 
  signal x7_an_1_mux000128 : STD_LOGIC; 
  signal x7_an_1_mux000152_1890 : STD_LOGIC; 
  signal x7_an_2_mux000128_1891 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U1_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U2_Mcount_hcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_hcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_hcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Madd_spriteon1_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U3_Madd_spriteon1_addsub0001_lut : STD_LOGIC_VECTOR ( 7 downto 6 ); 
  signal U3_Madd_spriteon2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_Madd_spriteon2f_add0002_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
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
  signal U3_Mcompar_spriteonB1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteonB1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 2 ); 
  signal U3_Mcompar_spriteonB3_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteonB3_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonB4_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteonB4_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonB5_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteonB5_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U3_Mcount_C1_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C2_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C2_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal U3_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcount_tank1_angle_calc_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U3_Mcount_tank1_angle_calc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcount_tank2_angle_calc_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U3_Mcount_tank2_angle_calc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Msub_xpix1_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_xpix1_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix2_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_xpix2_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U3_q : STD_LOGIC_VECTOR ( 17 downto 17 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_spriteon2f_add0002 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_spriteonB3_add0000 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal U3_spriteonB4_add0000 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal U3_tank1_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_tank1_angle_calc_mux0004 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_tank2_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_tank2_angle_calc_mux0004 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_xpix1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_xpix2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal bounce_delay1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal bounce_delay2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal bounce_delay3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
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
  signal screenstate_Mcount_sig_hill3_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal screenstate_Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal screenstate_sig_hill1 : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal screenstate_sig_hill1_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal screenstate_sig_hill1_mux0001 : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal screenstate_sig_hill2 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal screenstate_sig_hill2_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 3 ); 
  signal screenstate_sig_hill2_mux0001 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal screenstate_sig_hill3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal screenstate_sig_hill4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal screenstate_sig_hill4_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal screenstate_sig_hill5 : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal screenstate_sig_hill5_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal screenstate_sig_hill5_mux0001 : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal sig_init_M : STD_LOGIC_VECTOR ( 15 downto 13 ); 
  signal sig_titleBlue : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal title_rom_pix : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal x7_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal x7_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  who_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      D => who_present_state_FSM_FFd2_In,
      PRE => btn_3_IBUF_1485,
      Q => who_present_state_FSM_FFd2_1818
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => sig_gameA,
      Q => who_present_state_FSM_FFd1_1817
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(0),
      Q => U1_q_01
    );
  U1_q_1 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(1),
      Q => U1_q(1)
    );
  U1_q_2 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(2),
      Q => U1_q(2)
    );
  U1_q_3 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(3),
      Q => U1_q(3)
    );
  U1_q_4 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(4),
      Q => U1_q(4)
    );
  U1_q_5 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(5),
      Q => U1_q(5)
    );
  U1_q_6 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(6),
      Q => U1_q(6)
    );
  U1_q_7 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(7),
      Q => U1_q(7)
    );
  U1_q_8 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(8),
      Q => U1_q(8)
    );
  U1_q_9 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(9),
      Q => U1_q(9)
    );
  U1_q_10 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(10),
      Q => U1_q(10)
    );
  U1_q_11 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(11),
      Q => U1_q(11)
    );
  U1_q_12 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(12),
      Q => U1_q(12)
    );
  U1_q_13 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(13),
      Q => U1_q(13)
    );
  U1_q_14 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(14),
      Q => U1_q(14)
    );
  U1_q_15 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(15),
      Q => U1_q(15)
    );
  U1_q_16 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(16),
      Q => U1_q(16)
    );
  U1_q_17 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => Result(17),
      Q => U1_q_171
    );
  U1_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U1_Mcount_q_lut(0),
      O => U1_Mcount_q_cy(0)
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
    );
  U1_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(0),
      DI => N0,
      S => U1_Mcount_q_cy_1_rt_596,
      O => U1_Mcount_q_cy(1)
    );
  U1_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(0),
      LI => U1_Mcount_q_cy_1_rt_596,
      O => Result(1)
    );
  U1_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(1),
      DI => N0,
      S => U1_Mcount_q_cy_2_rt_598,
      O => U1_Mcount_q_cy(2)
    );
  U1_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(1),
      LI => U1_Mcount_q_cy_2_rt_598,
      O => Result(2)
    );
  U1_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(2),
      DI => N0,
      S => U1_Mcount_q_cy_3_rt_600,
      O => U1_Mcount_q_cy(3)
    );
  U1_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(2),
      LI => U1_Mcount_q_cy_3_rt_600,
      O => Result(3)
    );
  U1_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(3),
      DI => N0,
      S => U1_Mcount_q_cy_4_rt_602,
      O => U1_Mcount_q_cy(4)
    );
  U1_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(3),
      LI => U1_Mcount_q_cy_4_rt_602,
      O => Result(4)
    );
  U1_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(4),
      DI => N0,
      S => U1_Mcount_q_cy_5_rt_604,
      O => U1_Mcount_q_cy(5)
    );
  U1_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(4),
      LI => U1_Mcount_q_cy_5_rt_604,
      O => Result(5)
    );
  U1_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(5),
      DI => N0,
      S => U1_Mcount_q_cy_6_rt_606,
      O => U1_Mcount_q_cy(6)
    );
  U1_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(5),
      LI => U1_Mcount_q_cy_6_rt_606,
      O => Result(6)
    );
  U1_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(6),
      DI => N0,
      S => U1_Mcount_q_cy_7_rt_608,
      O => U1_Mcount_q_cy(7)
    );
  U1_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(6),
      LI => U1_Mcount_q_cy_7_rt_608,
      O => Result(7)
    );
  U1_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(7),
      DI => N0,
      S => U1_Mcount_q_cy_8_rt_610,
      O => U1_Mcount_q_cy(8)
    );
  U1_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(7),
      LI => U1_Mcount_q_cy_8_rt_610,
      O => Result(8)
    );
  U1_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(8),
      DI => N0,
      S => U1_Mcount_q_cy_9_rt_612,
      O => U1_Mcount_q_cy(9)
    );
  U1_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(8),
      LI => U1_Mcount_q_cy_9_rt_612,
      O => Result(9)
    );
  U1_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(9),
      DI => N0,
      S => U1_Mcount_q_cy_10_rt_582,
      O => U1_Mcount_q_cy(10)
    );
  U1_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(9),
      LI => U1_Mcount_q_cy_10_rt_582,
      O => Result(10)
    );
  U1_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(10),
      DI => N0,
      S => U1_Mcount_q_cy_11_rt_584,
      O => U1_Mcount_q_cy(11)
    );
  U1_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(10),
      LI => U1_Mcount_q_cy_11_rt_584,
      O => Result(11)
    );
  U1_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(11),
      DI => N0,
      S => U1_Mcount_q_cy_12_rt_586,
      O => U1_Mcount_q_cy(12)
    );
  U1_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(11),
      LI => U1_Mcount_q_cy_12_rt_586,
      O => Result(12)
    );
  U1_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(12),
      DI => N0,
      S => U1_Mcount_q_cy_13_rt_588,
      O => U1_Mcount_q_cy(13)
    );
  U1_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(12),
      LI => U1_Mcount_q_cy_13_rt_588,
      O => Result(13)
    );
  U1_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(13),
      DI => N0,
      S => U1_Mcount_q_cy_14_rt_590,
      O => U1_Mcount_q_cy(14)
    );
  U1_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(13),
      LI => U1_Mcount_q_cy_14_rt_590,
      O => Result(14)
    );
  U1_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(14),
      DI => N0,
      S => U1_Mcount_q_cy_15_rt_592,
      O => U1_Mcount_q_cy(15)
    );
  U1_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(14),
      LI => U1_Mcount_q_cy_15_rt_592,
      O => Result(15)
    );
  U1_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(15),
      DI => N0,
      S => U1_Mcount_q_cy_16_rt_594,
      O => U1_Mcount_q_cy(16)
    );
  U1_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(15),
      LI => U1_Mcount_q_cy_16_rt_594,
      O => Result(16)
    );
  U1_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(16),
      LI => U1_Mcount_q_xor_17_rt_614,
      O => Result(17)
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_664,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_651,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_651,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_649,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_649,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_647,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_647,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_645,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_645,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_643,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_643,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_641,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_641,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_639,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_639,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_637,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_637,
      O => U2_Mcount_hcs_cy(1)
    );
  U2_Mcount_hcs_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U2_Mcount_hcs_lut_0_1,
      O => U2_Result_0_1
    );
  U2_Mcount_hcs_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U2_Mcount_hcs_lut_0_1,
      O => U2_Mcount_hcs_cy(0)
    );
  U2_Mcount_vcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(8),
      LI => U2_Mcount_vcs_xor_9_rt_693,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_681,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_681,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_679,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_679,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_677,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_677,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_675,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_675,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_673,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_673,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_671,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_671,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_669,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_669,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_667,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_667,
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
      DI => N1,
      S => U2_Mcount_vcs_lut(0),
      O => U2_Mcount_vcs_cy(0)
    );
  U2_hcs_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_752,
      CLR => btn_3_IBUF_1485,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_752
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
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2_cmp_lt0000_cy(6),
      DI => U2_hcs(7),
      S => U3_Mcompar_spriteon2_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy(7)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_spriteon2_addsub0000(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(7)
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
      CI => N1,
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
      CI => N1,
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
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon2f_cmp_le0000_cy(6),
      DI => U3_spriteon2_addsub0000(7),
      S => U3_Mcompar_spriteon2f_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteon2_addsub0000(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(7)
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
      CI => N1,
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
  U3_Mmux_M1a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_28_Q,
      I2 => M1a_29_Q,
      O => U3_Mmux_M1a_mux0000_7_1180
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_1180,
      I1 => U3_Mmux_M1a_mux0000_6_1175,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_1172
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_1181
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_1187
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_1187,
      I1 => U3_Mmux_M1a_mux0000_71_1181,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_1176
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_1176,
      I1 => U3_Mmux_M1a_mux0000_5_f5_1172,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_1170
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_1182
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_20_Q_95,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_1188
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_1188,
      I1 => U3_Mmux_M1a_mux0000_72_1182,
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
      O => U3_Mmux_M1a_mux0000_82_1189
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_1194,
      I1 => U3_Mmux_M1a_mux0000_82_1189,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_1184
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_1184,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_1173
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_1173,
      I1 => U3_Mmux_M1a_mux0000_4_f6_1170,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_1169
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_1190,
      I1 => U3_Mmux_M1a_mux0000_73_1183,
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
      O => U3_Mmux_M1a_mux0000_84_1191
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_1195
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_1195,
      I1 => U3_Mmux_M1a_mux0000_84_1191,
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
      I0 => U3_Mmux_M1a_mux0000_92_1196,
      I1 => U3_Mmux_M1a_mux0000_85_1192,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_2_Q_121,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_1197
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_1168,
      I1 => U3_Mmux_M1a_mux0000_93_1197,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_1193
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_1193,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_1179
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_1179,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_1171
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_1171,
      I1 => U3_Mmux_M1a_mux0000_3_f7_1169,
      S => U3_xpix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M2a_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_30_Q_225,
      I2 => N0,
      O => U3_Mmux_M2a_mux0000_6_1235
    );
  U3_Mmux_M2a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_28_Q_221,
      I2 => M2a_29_Q_222,
      O => U3_Mmux_M2a_mux0000_7_1240
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_1240,
      I1 => U3_Mmux_M2a_mux0000_6_1235,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_1232
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_26_Q,
      I2 => M2a_24_Q,
      O => U3_Mmux_M2a_mux0000_71_1241
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_1247,
      I1 => U3_Mmux_M2a_mux0000_71_1241,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_1236
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_1236,
      I1 => U3_Mmux_M2a_mux0000_5_f5_1232,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_1230
    );
  U3_Mmux_M2a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_22_Q,
      I2 => M2a_23_Q_214,
      O => U3_Mmux_M2a_mux0000_72_1242
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_20_Q,
      I2 => M2a_21_Q,
      O => U3_Mmux_M2a_mux0000_81_1248
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_1248,
      I1 => U3_Mmux_M2a_mux0000_72_1242,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_18_Q,
      I2 => M2a_19_Q,
      O => U3_Mmux_M2a_mux0000_82_1249
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_16_Q,
      I2 => M2a_14_Q_202,
      O => U3_Mmux_M2a_mux0000_9_1254
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_1254,
      I1 => U3_Mmux_M2a_mux0000_82_1249,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_1244
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_1244,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_1233
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_1233,
      I1 => U3_Mmux_M2a_mux0000_4_f6_1230,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_1229
    );
  U3_Mmux_M2a_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_12_Q,
      I2 => M2a_13_Q_200,
      O => U3_Mmux_M2a_mux0000_83_1250
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_1250,
      I1 => U3_Mmux_M2a_mux0000_73_1243,
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
      I2 => M2a_11_Q_198,
      O => U3_Mmux_M2a_mux0000_84_1251
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_1255
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_1255,
      I1 => U3_Mmux_M2a_mux0000_84_1251,
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
      O => U3_Mmux_M2a_mux0000_85_1252
    );
  U3_Mmux_M2a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_4_Q,
      I2 => M2a_5_Q,
      O => U3_Mmux_M2a_mux0000_92_1256
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_1256,
      I1 => U3_Mmux_M2a_mux0000_85_1252,
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
      O => U3_Mmux_M2a_mux0000_93_1257
    );
  U3_Mmux_M2a_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => N0,
      I2 => M2a_1_Q_208,
      O => U3_Mmux_M2a_mux0000_10_1228
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_1228,
      I1 => U3_Mmux_M2a_mux0000_93_1257,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_1253
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_1253,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_1239
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_1239,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_1231
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_1231,
      I1 => U3_Mmux_M2a_mux0000_3_f7_1229,
      S => U3_xpix2(4),
      O => U3_M2a_mux0000
    );
  U3_Mmux_M2_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_30_Q,
      I2 => M1_0_Q,
      O => U3_Mmux_M2_mux0000_6_1205
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_28_Q_163,
      I2 => M2_29_Q,
      O => U3_Mmux_M2_mux0000_7_1210
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_1210,
      I1 => U3_Mmux_M2_mux0000_6_1205,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_1202
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_26_Q,
      I2 => M2_24_Q,
      O => U3_Mmux_M2_mux0000_71_1211
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_1217,
      I1 => U3_Mmux_M2_mux0000_71_1211,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_1206
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_1206,
      I1 => U3_Mmux_M2_mux0000_5_f5_1202,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_1200
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_22_Q,
      I2 => M2_23_Q_159,
      O => U3_Mmux_M2_mux0000_72_1212
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_20_Q,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_1218
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_1218,
      I1 => U3_Mmux_M2_mux0000_72_1212,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_18_Q_148,
      I2 => M2_19_Q,
      O => U3_Mmux_M2_mux0000_82_1219
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_16_Q,
      I2 => M2_14_Q_146,
      O => U3_Mmux_M2_mux0000_9_1224
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_1224,
      I1 => U3_Mmux_M2_mux0000_82_1219,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_1214
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_1214,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_1203
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_1203,
      I1 => U3_Mmux_M2_mux0000_4_f6_1200,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_1199
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_12_Q,
      I2 => M2_13_Q,
      O => U3_Mmux_M2_mux0000_83_1220
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_1220,
      I1 => U3_Mmux_M2_mux0000_73_1213,
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
      I2 => M2_11_Q,
      O => U3_Mmux_M2_mux0000_84_1221
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_1225
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_1225,
      I1 => U3_Mmux_M2_mux0000_84_1221,
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
      O => U3_Mmux_M2_mux0000_85_1222
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_1226
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_1226,
      I1 => U3_Mmux_M2_mux0000_85_1222,
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
      O => U3_Mmux_M2_mux0000_93_1227
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_0_Q_128,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_1198
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_1198,
      I1 => U3_Mmux_M2_mux0000_93_1227,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_1223
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_1223,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_1209
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_1209,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_1201
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_1201,
      I1 => U3_Mmux_M2_mux0000_3_f7_1199,
      S => U3_xpix2(4),
      O => U3_M2_mux0000
    );
  U3_Mmux_M1_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_30_Q,
      I2 => M1_31_Q,
      O => U3_Mmux_M1_mux0000_6_1145
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_1150
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_1150,
      I1 => U3_Mmux_M1_mux0000_6_1145,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_1142
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_1151
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_1157
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_1157,
      I1 => U3_Mmux_M1_mux0000_71_1151,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_1146
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_1146,
      I1 => U3_Mmux_M1_mux0000_5_f5_1142,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_1140
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_1152
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_20_Q_18,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_1158
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_1158,
      I1 => U3_Mmux_M1_mux0000_72_1152,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_18_Q_15,
      I2 => M1_19_Q_16,
      O => U3_Mmux_M1_mux0000_82_1159
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_1164,
      I1 => U3_Mmux_M1_mux0000_82_1159,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_1154
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_1154,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_1143
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_1143,
      I1 => U3_Mmux_M1_mux0000_4_f6_1140,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_1139
    );
  U3_Mmux_M1_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_12_Q_9,
      I2 => M1_13_Q_12,
      O => U3_Mmux_M1_mux0000_83_1160
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_1160,
      I1 => U3_Mmux_M1_mux0000_73_1153,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f52
    );
  U3_Mmux_M1_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_10_Q,
      I2 => M1_11_Q_7,
      O => U3_Mmux_M1_mux0000_84_1161
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_8_Q_83,
      I2 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_1165
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_1165,
      I1 => U3_Mmux_M1_mux0000_84_1161,
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
      I0 => U3_Mmux_M1_mux0000_92_1166,
      I1 => U3_Mmux_M1_mux0000_85_1162,
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
      O => U3_Mmux_M1_mux0000_93_1167
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_1138
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_1138,
      I1 => U3_Mmux_M1_mux0000_93_1167,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_1163
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_1163,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_1149
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_1149,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_1141
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_1141,
      I1 => U3_Mmux_M1_mux0000_3_f7_1139,
      S => U3_xpix1(4),
      O => U3_M1_mux0000
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
      CI => N1,
      LI => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2(0)
    );
  U3_Msub_xpix2_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
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
      CI => N1,
      LI => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1(0)
    );
  U3_Msub_xpix1_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
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
      CI => N1,
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
      CI => N1,
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
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(7),
      DI => N1,
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(8),
      O => U3_spriteonB5_cmp_ge0000
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB5_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonB5_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_1003,
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(7),
      DI => N1,
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(8),
      O => U3_spriteonB4_cmp_ge0000
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonB4_add0000(3),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB4_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonB4_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(7),
      DI => N1,
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(8),
      O => U3_spriteonB3_cmp_ge0000
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonB3_add0000(3),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB3_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonB3_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(7),
      DI => N1,
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(8),
      O => U3_spriteonB2_cmp_ge0000
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => screenstate_sig_hill2(6),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => screenstate_sig_hill2(5),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => screenstate_sig_hill2(4),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => screenstate_sig_hill2(3),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonB2_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => screenstate_sig_hill2(2),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB2_cmp_ge0000_cy(0),
      DI => N0,
      S => U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_954,
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_952,
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(7),
      DI => N1,
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(8),
      O => U3_spriteonB1_cmp_ge0000
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonB1_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonB1_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_935,
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy(0)
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
      DI => U3_Madd_spriteon2_addsub0000_cy_5_Q,
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
      CI => N1,
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
      O => U3_Result_9_1
    );
  U3_Mcount_C1_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(7),
      LI => U3_Mcount_C1_lut(8),
      O => U3_Result_8_1
    );
  U3_Mcount_C1_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(7),
      DI => U3_C1(8),
      S => U3_Mcount_C1_lut(8),
      O => U3_Mcount_C1_cy(8)
    );
  U3_Mcount_C1_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(6),
      LI => U3_Mcount_C1_lut(7),
      O => U3_Result_7_1
    );
  U3_Mcount_C1_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(6),
      DI => U3_C1(7),
      S => U3_Mcount_C1_lut(7),
      O => U3_Mcount_C1_cy(7)
    );
  U3_Mcount_C1_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(5),
      LI => U3_Mcount_C1_lut(6),
      O => U3_Result_6_1
    );
  U3_Mcount_C1_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(5),
      DI => U3_C1(6),
      S => U3_Mcount_C1_lut(6),
      O => U3_Mcount_C1_cy(6)
    );
  U3_Mcount_C1_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(4),
      LI => U3_Mcount_C1_lut(5),
      O => U3_Result_5_1
    );
  U3_Mcount_C1_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(4),
      DI => U3_C1(5),
      S => U3_Mcount_C1_lut(5),
      O => U3_Mcount_C1_cy(5)
    );
  U3_Mcount_C1_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(3),
      LI => U3_Mcount_C1_lut(4),
      O => U3_Result_4_1
    );
  U3_Mcount_C1_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(3),
      DI => U3_C1(4),
      S => U3_Mcount_C1_lut(4),
      O => U3_Mcount_C1_cy(4)
    );
  U3_Mcount_C1_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(2),
      LI => U3_Mcount_C1_lut(3),
      O => U3_Result_3_1
    );
  U3_Mcount_C1_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(2),
      DI => U3_C1(3),
      S => U3_Mcount_C1_lut(3),
      O => U3_Mcount_C1_cy(3)
    );
  U3_Mcount_C1_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(1),
      LI => U3_Mcount_C1_lut(2),
      O => U3_Result_2_1
    );
  U3_Mcount_C1_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(1),
      DI => U3_C1(2),
      S => U3_Mcount_C1_lut(2),
      O => U3_Mcount_C1_cy(2)
    );
  U3_Mcount_C1_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_C1_cy(0),
      LI => U3_Mcount_C1_lut(1),
      O => U3_Result_1_1
    );
  U3_Mcount_C1_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_C1_cy(0),
      DI => U3_C1(1),
      S => U3_Mcount_C1_lut(1),
      O => U3_Mcount_C1_cy(1)
    );
  U3_Mcount_C1_xor_0_Q : XORCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      LI => U3_Mcount_C1_lut(0),
      O => U3_Result_0_1
    );
  U3_Mcount_C1_cy_0_Q : MUXCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      DI => U3_C1(0),
      S => U3_Mcount_C1_lut(0),
      O => U3_Mcount_C1_cy(0)
    );
  U3_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(16),
      LI => U3_Mcount_q_xor_17_rt_1091,
      O => U3_Result(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_1071,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_1071,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_1069,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_1069,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_1067,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_1067,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_1065,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_1065,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_1063,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_1063,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_1061,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_1061,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_1059,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_1059,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_1089,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_1089,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_1087,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_1087,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_1085,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_1085,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_1083,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_1083,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_1081,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_1081,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_1079,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_1079,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_1077,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_1077,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_1075,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_1075,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_1073,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_1073,
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
      DI => N1,
      S => U3_Mcount_q_lut(0),
      O => U3_Mcount_q_cy(0)
    );
  U3_Mcount_C2_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(8),
      LI => U3_Mcount_C2_lut(9),
      O => U3_Result_9_2
    );
  U3_Mcount_C2_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(7),
      LI => U3_Mcount_C2_lut(8),
      O => U3_Result_8_2
    );
  U3_Mcount_C2_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(7),
      DI => U3_C2(8),
      S => U3_Mcount_C2_lut(8),
      O => U3_Mcount_C2_cy(8)
    );
  U3_Mcount_C2_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(6),
      LI => U3_Mcount_C2_lut(7),
      O => U3_Result_7_2
    );
  U3_Mcount_C2_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(6),
      DI => U3_C2(7),
      S => U3_Mcount_C2_lut(7),
      O => U3_Mcount_C2_cy(7)
    );
  U3_Mcount_C2_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(5),
      LI => U3_Mcount_C2_lut(6),
      O => U3_Result_6_2
    );
  U3_Mcount_C2_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(5),
      DI => U3_C2(6),
      S => U3_Mcount_C2_lut(6),
      O => U3_Mcount_C2_cy(6)
    );
  U3_Mcount_C2_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(4),
      LI => U3_Mcount_C2_lut(5),
      O => U3_Result_5_2
    );
  U3_Mcount_C2_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(4),
      DI => U3_C2(5),
      S => U3_Mcount_C2_lut(5),
      O => U3_Mcount_C2_cy(5)
    );
  U3_Mcount_C2_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(3),
      LI => U3_Mcount_C2_lut(4),
      O => U3_Result_4_2
    );
  U3_Mcount_C2_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(3),
      DI => U3_C2(4),
      S => U3_Mcount_C2_lut(4),
      O => U3_Mcount_C2_cy(4)
    );
  U3_Mcount_C2_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(2),
      LI => U3_Mcount_C2_lut(3),
      O => U3_Result_3_2
    );
  U3_Mcount_C2_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(2),
      DI => U3_C2(3),
      S => U3_Mcount_C2_lut(3),
      O => U3_Mcount_C2_cy(3)
    );
  U3_Mcount_C2_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(1),
      LI => U3_Mcount_C2_lut(2),
      O => U3_Result_2_2
    );
  U3_Mcount_C2_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(1),
      DI => U3_C2(2),
      S => U3_Mcount_C2_lut(2),
      O => U3_Mcount_C2_cy(2)
    );
  U3_Mcount_C2_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(0),
      LI => U3_Mcount_C2_lut(1),
      O => U3_Result_1_2
    );
  U3_Mcount_C2_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(0),
      DI => U3_C2(1),
      S => U3_Mcount_C2_lut(1),
      O => U3_Mcount_C2_cy(1)
    );
  U3_Mcount_C2_xor_0_Q : XORCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      LI => U3_Mcount_C2_lut(0),
      O => U3_Result_0_2
    );
  U3_Mcount_C2_cy_0_Q : MUXCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      DI => U3_C2(0),
      S => U3_Mcount_C2_lut(0),
      O => U3_Mcount_C2_cy(0)
    );
  U3_C2_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_9_2,
      Q => U3_C2(9)
    );
  U3_C2_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_8_2,
      Q => U3_C2(8)
    );
  U3_C2_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_7_2,
      Q => U3_C2(7)
    );
  U3_C2_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_6_2,
      Q => U3_C2(6)
    );
  U3_C2_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_5_2,
      Q => U3_C2(5)
    );
  U3_C2_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_4_2,
      Q => U3_C2(4)
    );
  U3_C2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_3_2,
      Q => U3_C2(3)
    );
  U3_C2_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_2_2,
      Q => U3_C2(2)
    );
  U3_C2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_1_2,
      Q => U3_C2(1)
    );
  U3_C2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C2_not0001,
      D => U3_Result_0_2,
      Q => U3_C2(0)
    );
  U3_C1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_9_1,
      Q => U3_C1(9)
    );
  U3_C1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_8_1,
      Q => U3_C1(8)
    );
  U3_C1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_7_1,
      Q => U3_C1(7)
    );
  U3_C1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_6_1,
      Q => U3_C1(6)
    );
  U3_C1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_5_1,
      Q => U3_C1(5)
    );
  U3_C1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_4_1,
      Q => U3_C1(4)
    );
  U3_C1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_3_1,
      Q => U3_C1(3)
    );
  U3_C1_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_2_1,
      Q => U3_C1(2)
    );
  U3_C1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_1_1,
      Q => U3_C1(1)
    );
  U3_C1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(17),
      CE => U3_C1_not0001,
      D => U3_Result_0_1,
      Q => U3_C1(0)
    );
  U3_tank2_angle_calc_7 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc7,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(7)
    );
  U3_tank2_angle_calc_6 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc6,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(6)
    );
  U3_tank2_angle_calc_5 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc5,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(5)
    );
  U3_tank2_angle_calc_4 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc4,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(4)
    );
  U3_tank2_angle_calc_3 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc3,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(3)
    );
  U3_tank2_angle_calc_2 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc2,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(2)
    );
  U3_tank2_angle_calc_1 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc1,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(1)
    );
  U3_tank2_angle_calc_0 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank2_angle_calc_not0001,
      D => U3_Mcount_tank2_angle_calc,
      R => U3_tank2_angle_calc_and0000,
      Q => U3_tank2_angle_calc(0)
    );
  U3_tank1_angle_calc_7 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc7,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(7)
    );
  U3_tank1_angle_calc_6 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc6,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(6)
    );
  U3_tank1_angle_calc_5 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc5,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(5)
    );
  U3_tank1_angle_calc_4 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc4,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(4)
    );
  U3_tank1_angle_calc_3 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc3,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(3)
    );
  U3_tank1_angle_calc_2 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc2,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(2)
    );
  U3_tank1_angle_calc_1 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc1,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(1)
    );
  U3_tank1_angle_calc_0 : FDRE
    port map (
      C => U3_q(17),
      CE => U3_tank1_angle_calc_not0001,
      D => U3_Mcount_tank1_angle_calc,
      R => U3_tank1_angle_calc_and0000,
      Q => U3_tank1_angle_calc(0)
    );
  U3_q_17 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(17),
      Q => U3_q_171
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(16),
      Q => U3_Q_16_1290
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(15),
      Q => U3_Q_15_1289
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(14),
      Q => U3_Q_14_1288
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(13),
      Q => U3_Q_13_1287
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(12),
      Q => U3_Q_12_1286
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(11),
      Q => U3_Q_11_1285
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(10),
      Q => U3_Q_10_1284
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(9),
      Q => U3_Q_9_1298
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(8),
      Q => U3_Q_8_1297
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(7),
      Q => U3_Q_7_1296
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(6),
      Q => U3_Q_6_1295
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(5),
      Q => U3_Q_5_1294
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(4),
      Q => U3_Q_4_1293
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(3),
      Q => U3_Q_3_1292
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(2),
      Q => U3_Q_2_1291
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(1),
      Q => U3_Q_1_1283
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => U3_Result(0),
      Q => U3_Q_0_1282
    );
  U3_Mcount_tank2_angle_calc_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(6),
      LI => U3_Mcount_tank2_angle_calc_lut(7),
      O => U3_Mcount_tank2_angle_calc7
    );
  U3_Mcount_tank2_angle_calc_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(5),
      LI => U3_Mcount_tank2_angle_calc_lut(6),
      O => U3_Mcount_tank2_angle_calc6
    );
  U3_Mcount_tank2_angle_calc_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(5),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(6),
      O => U3_Mcount_tank2_angle_calc_cy(6)
    );
  U3_Mcount_tank2_angle_calc_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(4),
      LI => U3_Mcount_tank2_angle_calc_lut(5),
      O => U3_Mcount_tank2_angle_calc5
    );
  U3_Mcount_tank2_angle_calc_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(4),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(5),
      O => U3_Mcount_tank2_angle_calc_cy(5)
    );
  U3_Mcount_tank2_angle_calc_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(3),
      LI => U3_Mcount_tank2_angle_calc_lut(4),
      O => U3_Mcount_tank2_angle_calc4
    );
  U3_Mcount_tank2_angle_calc_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(3),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(4),
      O => U3_Mcount_tank2_angle_calc_cy(4)
    );
  U3_Mcount_tank2_angle_calc_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(2),
      LI => U3_Mcount_tank2_angle_calc_lut(3),
      O => U3_Mcount_tank2_angle_calc3
    );
  U3_Mcount_tank2_angle_calc_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(2),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(3),
      O => U3_Mcount_tank2_angle_calc_cy(3)
    );
  U3_Mcount_tank2_angle_calc_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(1),
      LI => U3_Mcount_tank2_angle_calc_lut(2),
      O => U3_Mcount_tank2_angle_calc2
    );
  U3_Mcount_tank2_angle_calc_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(1),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(2),
      O => U3_Mcount_tank2_angle_calc_cy(2)
    );
  U3_Mcount_tank2_angle_calc_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(0),
      LI => U3_Mcount_tank2_angle_calc_lut(1),
      O => U3_Mcount_tank2_angle_calc1
    );
  U3_Mcount_tank2_angle_calc_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_tank2_angle_calc_cy(0),
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(1),
      O => U3_Mcount_tank2_angle_calc_cy(1)
    );
  U3_Mcount_tank2_angle_calc_xor_0_Q : XORCY
    port map (
      CI => sig_gameUp,
      LI => U3_Mcount_tank2_angle_calc_lut(0),
      O => U3_Mcount_tank2_angle_calc
    );
  U3_Mcount_tank2_angle_calc_cy_0_Q : MUXCY
    port map (
      CI => sig_gameUp,
      DI => N1,
      S => U3_Mcount_tank2_angle_calc_lut(0),
      O => U3_Mcount_tank2_angle_calc_cy(0)
    );
  U3_Mcount_tank1_angle_calc_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(6),
      LI => U3_Mcount_tank1_angle_calc_lut(7),
      O => U3_Mcount_tank1_angle_calc7
    );
  U3_Mcount_tank1_angle_calc_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(5),
      LI => U3_Mcount_tank1_angle_calc_lut(6),
      O => U3_Mcount_tank1_angle_calc6
    );
  U3_Mcount_tank1_angle_calc_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(5),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(6),
      O => U3_Mcount_tank1_angle_calc_cy(6)
    );
  U3_Mcount_tank1_angle_calc_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(4),
      LI => U3_Mcount_tank1_angle_calc_lut(5),
      O => U3_Mcount_tank1_angle_calc5
    );
  U3_Mcount_tank1_angle_calc_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(4),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(5),
      O => U3_Mcount_tank1_angle_calc_cy(5)
    );
  U3_Mcount_tank1_angle_calc_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(3),
      LI => U3_Mcount_tank1_angle_calc_lut(4),
      O => U3_Mcount_tank1_angle_calc4
    );
  U3_Mcount_tank1_angle_calc_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(3),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(4),
      O => U3_Mcount_tank1_angle_calc_cy(4)
    );
  U3_Mcount_tank1_angle_calc_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(2),
      LI => U3_Mcount_tank1_angle_calc_lut(3),
      O => U3_Mcount_tank1_angle_calc3
    );
  U3_Mcount_tank1_angle_calc_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(2),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(3),
      O => U3_Mcount_tank1_angle_calc_cy(3)
    );
  U3_Mcount_tank1_angle_calc_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(1),
      LI => U3_Mcount_tank1_angle_calc_lut(2),
      O => U3_Mcount_tank1_angle_calc2
    );
  U3_Mcount_tank1_angle_calc_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(1),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(2),
      O => U3_Mcount_tank1_angle_calc_cy(2)
    );
  U3_Mcount_tank1_angle_calc_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(0),
      LI => U3_Mcount_tank1_angle_calc_lut(1),
      O => U3_Mcount_tank1_angle_calc1
    );
  U3_Mcount_tank1_angle_calc_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_tank1_angle_calc_cy(0),
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(1),
      O => U3_Mcount_tank1_angle_calc_cy(1)
    );
  U3_Mcount_tank1_angle_calc_xor_0_Q : XORCY
    port map (
      CI => sig_gameUp,
      LI => U3_Mcount_tank1_angle_calc_lut(0),
      O => U3_Mcount_tank1_angle_calc
    );
  U3_Mcount_tank1_angle_calc_cy_0_Q : MUXCY
    port map (
      CI => sig_gameUp,
      DI => N1,
      S => U3_Mcount_tank1_angle_calc_lut(0),
      O => U3_Mcount_tank1_angle_calc_cy(0)
    );
  x7_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank1_angle_calc(0),
      I2 => U3_tank1_angle_calc(4),
      O => x7_Mmux_digit_3_1859
    );
  x7_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(0),
      I2 => U3_tank2_angle_calc(4),
      O => x7_Mmux_digit_4_1863
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_1863,
      I1 => x7_Mmux_digit_3_1859,
      S => x7_clkdiv(19),
      O => x7_digit(0)
    );
  x7_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_tank1_angle_calc(5),
      O => x7_Mmux_digit_31_1860
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(5),
      O => x7_Mmux_digit_41_1864
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_1864,
      I1 => x7_Mmux_digit_31_1860,
      S => x7_clkdiv(19),
      O => x7_digit(1)
    );
  x7_Mmux_digit_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank1_angle_calc(2),
      I2 => U3_tank1_angle_calc(6),
      O => x7_Mmux_digit_32_1861
    );
  x7_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(2),
      I2 => U3_tank2_angle_calc(6),
      O => x7_Mmux_digit_42_1865
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => x7_Mmux_digit_42_1865,
      I1 => x7_Mmux_digit_32_1861,
      S => x7_clkdiv(19),
      O => x7_digit(2)
    );
  x7_Mmux_digit_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(7),
      O => x7_Mmux_digit_33_1862
    );
  x7_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(7),
      O => x7_Mmux_digit_43_1866
    );
  x7_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => x7_Mmux_digit_43_1866,
      I1 => x7_Mmux_digit_33_1862,
      S => x7_clkdiv(19),
      O => x7_digit(3)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_1858,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_1838,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_1838,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_1836,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_1836,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_1834,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_1834,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_1832,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_1832,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_1830,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_1830,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_1828,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_1828,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_1826,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_1826,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_1824,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_1824,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_1822,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_1822,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_1856,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_1856,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_1854,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_1854,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_1852,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_1852,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_1850,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_1850,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_1848,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_1848,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_1846,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_1846,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_1844,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_1844,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_1842,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_1842,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_1840,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_1840,
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
      DI => N1,
      S => x7_Mcount_clkdiv_lut(0),
      O => x7_Mcount_clkdiv_cy(0)
    );
  x7_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  screenstate_Mcount_sig_hill3_xor_7_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(6),
      LI => screenstate_Mcount_sig_hill3_xor_7_rt_1675,
      O => screenstate_Result(7)
    );
  screenstate_Mcount_sig_hill3_xor_6_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(5),
      LI => screenstate_Mcount_sig_hill3_cy_6_rt_1663,
      O => screenstate_Result(6)
    );
  screenstate_Mcount_sig_hill3_cy_6_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(5),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_6_rt_1663,
      O => screenstate_Mcount_sig_hill3_cy(6)
    );
  screenstate_Mcount_sig_hill3_xor_5_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(4),
      LI => screenstate_Mcount_sig_hill3_cy_5_rt_1661,
      O => screenstate_Result(5)
    );
  screenstate_Mcount_sig_hill3_cy_5_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(4),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_5_rt_1661,
      O => screenstate_Mcount_sig_hill3_cy(5)
    );
  screenstate_Mcount_sig_hill3_xor_4_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(3),
      LI => screenstate_Mcount_sig_hill3_cy_4_rt_1659,
      O => screenstate_Result(4)
    );
  screenstate_Mcount_sig_hill3_cy_4_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(3),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_4_rt_1659,
      O => screenstate_Mcount_sig_hill3_cy(4)
    );
  screenstate_Mcount_sig_hill3_xor_3_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(2),
      LI => screenstate_Mcount_sig_hill3_cy_3_rt_1657,
      O => screenstate_Result(3)
    );
  screenstate_Mcount_sig_hill3_cy_3_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(2),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_3_rt_1657,
      O => screenstate_Mcount_sig_hill3_cy(3)
    );
  screenstate_Mcount_sig_hill3_xor_2_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(1),
      LI => screenstate_Mcount_sig_hill3_cy_2_rt_1655,
      O => screenstate_Result(2)
    );
  screenstate_Mcount_sig_hill3_cy_2_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(1),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_2_rt_1655,
      O => screenstate_Mcount_sig_hill3_cy(2)
    );
  screenstate_Mcount_sig_hill3_xor_1_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(0),
      LI => screenstate_Mcount_sig_hill3_cy_1_rt_1653,
      O => screenstate_Result(1)
    );
  screenstate_Mcount_sig_hill3_cy_1_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(0),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_1_rt_1653,
      O => screenstate_Mcount_sig_hill3_cy(1)
    );
  screenstate_Mcount_sig_hill3_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => screenstate_Mcount_sig_hill3_lut_0_1,
      O => screenstate_Result(0)
    );
  screenstate_Mcount_sig_hill3_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => screenstate_Mcount_sig_hill3_lut_0_1,
      O => screenstate_Mcount_sig_hill3_cy(0)
    );
  screenstate_sig_hill3_7 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_7,
      Q => screenstate_sig_hill3(7)
    );
  screenstate_sig_hill3_6 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_6,
      Q => screenstate_sig_hill3(6)
    );
  screenstate_sig_hill3_5 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_5,
      Q => screenstate_sig_hill3(5)
    );
  screenstate_sig_hill3_4 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_4,
      Q => screenstate_sig_hill3(4)
    );
  screenstate_sig_hill3_3 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_3,
      Q => screenstate_sig_hill3(3)
    );
  screenstate_sig_hill3_2 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_2,
      Q => screenstate_sig_hill3(2)
    );
  screenstate_sig_hill3_1 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_1,
      Q => screenstate_sig_hill3(1)
    );
  screenstate_sig_hill3_0 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_0,
      Q => screenstate_sig_hill3(0)
    );
  screenstate_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_1518,
      D => N1,
      PRE => btn_3_IBUF_1485,
      Q => screenstate_present_state_FSM_FFd2_1690
    );
  screenstate_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_1518,
      CLR => btn_3_IBUF_1485,
      D => screenstate_present_state_FSM_FFd1_In,
      Q => screenstate_present_state_FSM_FFd1_1688
    );
  screenstate_sig_hill5_7 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(7),
      Q => screenstate_sig_hill5(7)
    );
  screenstate_sig_hill5_6 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(6),
      Q => screenstate_sig_hill5(6)
    );
  screenstate_sig_hill5_5 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(5),
      Q => screenstate_sig_hill5(5)
    );
  screenstate_sig_hill5_4 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(4),
      Q => screenstate_sig_hill5(4)
    );
  screenstate_sig_hill5_3 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(3),
      Q => screenstate_sig_hill5(3)
    );
  screenstate_sig_hill5_2 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(2),
      Q => screenstate_sig_hill5(2)
    );
  screenstate_sig_hill5_1 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_mux0001(6),
      Q => screenstate_sig_hill5(1)
    );
  screenstate_sig_hill4_7 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(0),
      Q => screenstate_sig_hill4(7)
    );
  screenstate_sig_hill4_6 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(1),
      Q => screenstate_sig_hill4(6)
    );
  screenstate_sig_hill4_5 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(2),
      Q => screenstate_sig_hill4(5)
    );
  screenstate_sig_hill4_4 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(3),
      Q => screenstate_sig_hill4(4)
    );
  screenstate_sig_hill4_3 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(4),
      Q => screenstate_sig_hill4(3)
    );
  screenstate_sig_hill4_2 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(5),
      Q => screenstate_sig_hill4(2)
    );
  screenstate_sig_hill4_1 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(6),
      Q => screenstate_sig_hill4(1)
    );
  screenstate_sig_hill4_0 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(7),
      Q => screenstate_sig_hill4(0)
    );
  screenstate_sig_hill1_7 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(7),
      Q => screenstate_sig_hill1(7)
    );
  screenstate_sig_hill1_6 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(6),
      Q => screenstate_sig_hill1(6)
    );
  screenstate_sig_hill1_5 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(5),
      Q => screenstate_sig_hill1(5)
    );
  screenstate_sig_hill1_4 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(4),
      Q => screenstate_sig_hill1(4)
    );
  screenstate_sig_hill1_3 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(3),
      Q => screenstate_sig_hill1(3)
    );
  screenstate_sig_hill1_2 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(2),
      Q => screenstate_sig_hill1(2)
    );
  screenstate_sig_hill1_1 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_mux0001(6),
      Q => screenstate_sig_hill1(1)
    );
  screenstate_sig_hill2_7 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(7),
      Q => screenstate_sig_hill2(7)
    );
  screenstate_sig_hill2_6 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(6),
      Q => screenstate_sig_hill2(6)
    );
  screenstate_sig_hill2_5 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(5),
      Q => screenstate_sig_hill2(5)
    );
  screenstate_sig_hill2_4 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(4),
      Q => screenstate_sig_hill2(4)
    );
  screenstate_sig_hill2_3 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(3),
      Q => screenstate_sig_hill2(3)
    );
  screenstate_sig_hill2_2 : FDE
    port map (
      C => mclk_BUFGP_1518,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_mux0001(5),
      Q => screenstate_sig_hill2(2)
    );
  title_Mmux_M_mux0000_5_f5 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_5_f51_1782,
      I1 => title_Mmux_M_mux0000_5_f5_rt_1783,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_5_f5_1781
    );
  title_Mmux_M_mux0000_6_f5 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_7,
      I1 => title_Mmux_M_mux0000_7,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_6_f5_1786
    );
  title_Mmux_M_mux0000_4_f6 : MUXF6
    port map (
      I0 => title_Mmux_M_mux0000_6_f5_1786,
      I1 => title_Mmux_M_mux0000_5_f5_1781,
      S => title_rom_pix(2),
      O => title_Mmux_M_mux0000_4_f6_1779
    );
  title_Mmux_M_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_6_f5_0_rt_1789,
      I1 => title_Mmux_M_mux0000_72_1792,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_6_f51
    );
  title_Mmux_M_mux0000_7_f5 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_9_1803,
      I1 => title_Mmux_M_mux0000_82_1798,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_7_f5_1794
    );
  title_Mmux_M_mux0000_5_f6 : MUXF6
    port map (
      I0 => title_Mmux_M_mux0000_7_f5_1794,
      I1 => title_Mmux_M_mux0000_6_f51,
      S => title_rom_pix(2),
      O => title_Mmux_M_mux0000_5_f6_1784
    );
  title_Mmux_M_mux0000_3_f7 : MUXF7
    port map (
      I0 => title_Mmux_M_mux0000_5_f6_1784,
      I1 => title_Mmux_M_mux0000_4_f6_1779,
      S => title_rom_pix(3),
      O => title_Mmux_M_mux0000_3_f7_1778
    );
  title_Mmux_M_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_83_1799,
      I1 => title_Mmux_M_mux0000_73_1793,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_6_f52
    );
  title_Mmux_M_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_91_1804,
      I1 => title_Mmux_M_mux0000_84_1800,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_7_f51
    );
  title_Mmux_M_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => title_Mmux_M_mux0000_7_f51,
      I1 => title_Mmux_M_mux0000_6_f52,
      S => title_rom_pix(2),
      O => title_Mmux_M_mux0000_5_f61
    );
  title_Mmux_M_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => title_Mmux_M_mux0000_7_f5_1_1797,
      I1 => title_Mmux_M_mux0000_85_1801,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_7_f52
    );
  title_Mmux_M_mux0000_8_f5 : MUXF5
    port map (
      I0 => U2_Mcount_hcs_lut(0),
      I1 => title_Mmux_M_mux0000_92,
      S => title_rom_pix(1),
      O => title_Mmux_M_mux0000_8_f5_1802
    );
  title_Mmux_M_mux0000_6_f6 : MUXF6
    port map (
      I0 => title_Mmux_M_mux0000_8_f5_1802,
      I1 => title_Mmux_M_mux0000_7_f52,
      S => title_rom_pix(2),
      O => title_Mmux_M_mux0000_6_f6_1790
    );
  title_Mmux_M_mux0000_4_f7 : MUXF7
    port map (
      I0 => title_Mmux_M_mux0000_6_f6_1790,
      I1 => title_Mmux_M_mux0000_5_f61,
      S => title_rom_pix(3),
      O => title_Mmux_M_mux0000_4_f7_1780
    );
  title_Mmux_M_mux0000_2_f8 : MUXF8
    port map (
      I0 => title_Mmux_M_mux0000_4_f7_1780,
      I1 => title_Mmux_M_mux0000_3_f7_1778,
      S => title_rom_pix(4),
      O => title_M_mux0000
    );
  title_B : LDE
    port map (
      D => title_M_mux0000,
      G => vidon,
      GE => title_spriteon,
      Q => title_B_1776
    );
  bounce_delay3_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(7),
      Q => bounce_delay3(7)
    );
  bounce_delay3_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(6),
      Q => bounce_delay3(6)
    );
  bounce_delay3_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(5),
      Q => bounce_delay3(5)
    );
  bounce_delay3_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(4),
      Q => bounce_delay3(4)
    );
  bounce_delay3_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(3),
      Q => bounce_delay3(3)
    );
  bounce_delay3_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(2),
      Q => bounce_delay3(2)
    );
  bounce_delay3_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(1),
      Q => bounce_delay3(1)
    );
  bounce_delay3_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay2(0),
      Q => bounce_delay3(0)
    );
  bounce_delay2_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(7),
      Q => bounce_delay2(7)
    );
  bounce_delay2_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(6),
      Q => bounce_delay2(6)
    );
  bounce_delay2_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(5),
      Q => bounce_delay2(5)
    );
  bounce_delay2_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(4),
      Q => bounce_delay2(4)
    );
  bounce_delay2_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(3),
      Q => bounce_delay2(3)
    );
  bounce_delay2_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(2),
      Q => bounce_delay2(2)
    );
  bounce_delay2_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(1),
      Q => bounce_delay2(1)
    );
  bounce_delay2_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => bounce_delay1(0),
      Q => bounce_delay2(0)
    );
  bounce_delay1_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_left_reg_1598,
      Q => bounce_delay1(7)
    );
  bounce_delay1_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_down_reg_1596,
      Q => bounce_delay1(6)
    );
  bounce_delay1_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_up_reg_1641,
      Q => bounce_delay1(5)
    );
  bounce_delay1_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_right_reg_1602,
      Q => bounce_delay1(4)
    );
  bounce_delay1_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_sel_reg_1637,
      Q => bounce_delay1(3)
    );
  bounce_delay1_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_start_reg_1639,
      Q => bounce_delay1(2)
    );
  bounce_delay1_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_b_reg_1581,
      Q => bounce_delay1(1)
    );
  bounce_delay1_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1485,
      D => nes_a_reg_1579,
      Q => bounce_delay1(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_1566,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_1554,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_1554,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_1552,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_1552,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_1550,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_1550,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_1548,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_1548,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_1546,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_1546,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_1544,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_1544,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_1542,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_1542,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_1540,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_1540,
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
      DI => N1,
      S => nes_Mcount_counter_reg_lut(0),
      O => nes_Mcount_counter_reg_cy(0)
    );
  nes_Madd_scalar_next_addsub0000_xor_9_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(8),
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_1537,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_1535,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_1535,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_1533,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_1533,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_1531,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_1531,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_1529,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_1529,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_1527,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_1527,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_1525,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_1525,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_1523,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_1523,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_1521,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_1521,
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
      DI => N1,
      S => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_Madd_scalar_next_addsub0000_cy(0)
    );
  nes_counter_reg_9 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1485,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_1602
    );
  nes_b_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_b_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_b_reg_1581
    );
  nes_sel_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_sel_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_sel_reg_1637
    );
  nes_start_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_start_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_start_reg_1639
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_1579
    );
  nes_up_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_1641
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1485,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_1596
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_1598
    );
  title_Msub_rom_pix_Madd_Madd_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => title_N11,
      O => title_rom_pix(4)
    );
  title_Msub_rom_pix_Madd_Madd_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      O => title_rom_pix(1)
    );
  sig_init_M_2_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      O => sig_init_M(13)
    );
  title_Msub_rom_pix_Madd_Madd_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(0),
      I2 => U2_hcs(1),
      O => title_rom_pix(2)
    );
  sig_init_M_23_1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => title_Mmux_M_mux0000_7
    );
  sig_init_M_15_1 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => sig_init_M(15)
    );
  sig_init_M_14_1 : LUT4
    generic map(
      INIT => X"0414"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => sig_init_M(14)
    );
  title_Msub_rom_pix_Madd_Madd_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      I3 => U2_hcs(0),
      O => title_rom_pix(3)
    );
  sig_init_M_2_1 : LUT4
    generic map(
      INIT => X"8001"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => title_Mmux_M_mux0000_92
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_1452
    );
  bounce_outp_7_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(7),
      I1 => bounce_delay2(7),
      I2 => bounce_delay1(7),
      O => ld_7_OBUF_1516
    );
  bounce_outp_6_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(6),
      I1 => bounce_delay2(6),
      I2 => bounce_delay1(6),
      O => ld_6_OBUF_1515
    );
  bounce_outp_5_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(5),
      I1 => bounce_delay2(5),
      I2 => bounce_delay1(5),
      O => ld_5_OBUF_1514
    );
  bounce_outp_4_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(4),
      I1 => bounce_delay2(4),
      I2 => bounce_delay1(4),
      O => ld_4_OBUF_1513
    );
  bounce_outp_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(3),
      I1 => bounce_delay2(3),
      I2 => bounce_delay1(3),
      O => ld_3_OBUF_1512
    );
  bounce_outp_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(2),
      I1 => bounce_delay2(2),
      I2 => bounce_delay1(2),
      O => ld_2_OBUF_1511
    );
  bounce_outp_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(1),
      I1 => bounce_delay2(1),
      I2 => bounce_delay1(1),
      O => ld_1_OBUF_1510
    );
  bounce_outp_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      O => ld_0_OBUF_1509
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_1494
    );
  screenstate_Madd_sig_hill5_addsub0000_xor_2_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill5(1),
      I1 => screenstate_sig_hill5(2),
      O => screenstate_sig_hill5_addsub0000(2)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_3_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill2(2),
      I1 => screenstate_sig_hill2(3),
      O => screenstate_sig_hill2_addsub0000(3)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_2_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill1(1),
      I1 => screenstate_sig_hill1(2),
      O => screenstate_sig_hill1_addsub0000(2)
    );
  screenstate_present_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_2_OBUF_1511,
      I2 => screenstate_present_state_FSM_FFd2_1690,
      O => screenstate_present_state_FSM_FFd1_In
    );
  screenstate_Madd_sig_hill5_addsub0000_xor_3_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => screenstate_sig_hill5(3),
      I1 => screenstate_sig_hill5(2),
      I2 => screenstate_sig_hill5(1),
      O => screenstate_sig_hill5_addsub0000(3)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_4_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => screenstate_sig_hill2(4),
      I1 => screenstate_sig_hill2(3),
      I2 => screenstate_sig_hill2(2),
      O => screenstate_sig_hill2_addsub0000(4)
    );
  who_present_state_FSM_FFd2_In11 : LUT4
    generic map(
      INIT => X"A666"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1818,
      I1 => who_present_state_FSM_FFd1_1817,
      I2 => ld_0_OBUF_1509,
      I3 => screenstate_present_state_FSM_FFd1_1688,
      O => who_present_state_FSM_FFd2_In
    );
  screenstate_Madd_sig_hill5_addsub0000_xor_4_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => screenstate_sig_hill5(4),
      I1 => screenstate_sig_hill5(2),
      I2 => screenstate_sig_hill5(1),
      I3 => screenstate_sig_hill5(3),
      O => screenstate_sig_hill5_addsub0000(4)
    );
  x7_an_3_mux0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(5),
      I2 => U3_tank1_angle_calc(4),
      O => N01
    );
  x7_an_3_mux0001 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => N01,
      I2 => U3_tank1_angle_calc(7),
      I3 => x7_clkdiv(19),
      O => an_3_OBUF_1455
    );
  screenstate_sig_hill1_and00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd2_1690,
      I1 => screenstate_present_state_FSM_FFd1_1688,
      I2 => btn_3_IBUF_1485,
      O => screenstate_sig_hill1_and0001
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(9),
      O => N2
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_N2,
      I2 => U2_vcs(1),
      I3 => N2,
      O => vsync_OBUF_1816
    );
  x7_an_2_mux000115 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(4),
      I3 => U3_tank1_angle_calc(5),
      O => x7_an_1_mux000128
    );
  x7_an_2_mux000128 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(7),
      I2 => U3_tank1_angle_calc(0),
      I3 => U3_tank1_angle_calc(1),
      O => x7_an_2_mux000128_1891
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
      O => nes_nes_clk31_1601
    );
  screenstate_sig_hill5_addsub0000_5_2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill5(5),
      I1 => screenstate_sig_hill5_addsub0000_5_bdd0,
      O => screenstate_sig_hill5_addsub0000(5)
    );
  screenstate_sig_hill4_mux0001_3_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill4(4),
      I1 => screenstate_sig_hill4_mux0001_0_bdd2,
      O => screenstate_sig_hill4_mux0001(3)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_5_121 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_sig_hill2(2),
      I1 => screenstate_sig_hill2(4),
      I2 => screenstate_sig_hill2(3),
      O => screenstate_N30
    );
  screenstate_sig_hill5_addsub0000_6_1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => screenstate_sig_hill5(6),
      I1 => screenstate_sig_hill5_addsub0000_5_bdd0,
      I2 => screenstate_sig_hill5(5),
      O => screenstate_sig_hill5_addsub0000(6)
    );
  screenstate_sig_hill4_mux0001_2_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => screenstate_sig_hill4(5),
      I1 => screenstate_sig_hill4_mux0001_0_bdd2,
      I2 => screenstate_sig_hill4(4),
      O => screenstate_sig_hill4_mux0001(2)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_N30,
      I1 => screenstate_sig_hill2(5),
      I2 => screenstate_sig_hill2(6),
      O => screenstate_sig_hill2_addsub0000(6)
    );
  screenstate_sig_hill5_addsub0000_5_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => screenstate_sig_hill5(2),
      I1 => screenstate_sig_hill5(1),
      I2 => screenstate_sig_hill5(4),
      I3 => screenstate_sig_hill5(3),
      O => screenstate_sig_hill5_addsub0000_5_bdd0
    );
  screenstate_sig_hill5_addsub0000_7_1 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => screenstate_sig_hill5(7),
      I1 => screenstate_sig_hill5(5),
      I2 => screenstate_sig_hill5(6),
      I3 => screenstate_sig_hill5_addsub0000_5_bdd0,
      O => screenstate_sig_hill5_addsub0000(7)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => screenstate_sig_hill2(7),
      I1 => screenstate_sig_hill2(6),
      I2 => screenstate_sig_hill2(5),
      I3 => screenstate_N30,
      O => screenstate_sig_hill2_addsub0000(7)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_5_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => screenstate_sig_hill1(5),
      I1 => screenstate_sig_hill1(4),
      I2 => screenstate_sig_hill1(3),
      I3 => N600,
      O => screenstate_sig_hill1_addsub0000(5)
    );
  x7_Mrom_a_to_g21 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => x7_digit(3),
      I1 => x7_digit(0),
      I2 => x7_digit(2),
      I3 => x7_digit(1),
      O => a_to_g_2_OBUF_1443
    );
  x7_Mrom_a_to_g41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => x7_digit(1),
      I1 => x7_digit(2),
      I2 => x7_digit(3),
      I3 => x7_digit(0),
      O => a_to_g_4_OBUF_1445
    );
  x7_Mrom_a_to_g111 : LUT4
    generic map(
      INIT => X"0382"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(3),
      I2 => x7_digit(2),
      I3 => x7_digit(1),
      O => a_to_g_1_OBUF_1442
    );
  x7_Mrom_a_to_g51 : LUT4
    generic map(
      INIT => X"AC48"
    )
    port map (
      I0 => x7_digit(3),
      I1 => x7_digit(2),
      I2 => x7_digit(0),
      I3 => x7_digit(1),
      O => a_to_g_5_OBUF_1446
    );
  x7_Mrom_a_to_g11 : LUT4
    generic map(
      INIT => X"2141"
    )
    port map (
      I0 => x7_digit(1),
      I1 => x7_digit(3),
      I2 => x7_digit(2),
      I3 => x7_digit(0),
      O => a_to_g_0_OBUF_1441
    );
  x7_Mrom_a_to_g31 : LUT4
    generic map(
      INIT => X"9806"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(2),
      I2 => x7_digit(3),
      I3 => x7_digit(1),
      O => a_to_g_3_OBUF_1444
    );
  x7_Mrom_a_to_g61 : LUT4
    generic map(
      INIT => X"4184"
    )
    port map (
      I0 => x7_digit(1),
      I1 => x7_digit(0),
      I2 => x7_digit(3),
      I3 => x7_digit(2),
      O => a_to_g_6_OBUF_1447
    );
  x7_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => x7_an_1_mux00012_1888
    );
  x7_an_1_mux000115 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(7),
      I2 => U3_tank1_angle_calc(0),
      I3 => U3_tank1_angle_calc(1),
      O => x7_an_1_mux000115_1887
    );
  x7_an_1_mux000152 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(7),
      I2 => U3_tank2_angle_calc(4),
      I3 => U3_tank2_angle_calc(5),
      O => x7_an_1_mux000152_1890
    );
  x7_an_1_mux000172 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => x7_an_1_mux000115_1887,
      I1 => x7_an_1_mux000128,
      I2 => x7_an_1_mux000152_1890,
      I3 => x7_an_1_mux00012_1888,
      O => an_1_OBUF_1453
    );
  screenstate_Mcount_sig_hill3_eqn_0122 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N597,
      I1 => screenstate_Mcount_sig_hill3_eqn_0121_1665,
      O => screenstate_N0
    );
  U3_tank2_angle_calc_and000017 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1818,
      I1 => sig_gameUp,
      I2 => U3_tank2_angle_calc(1),
      I3 => sig_gameDown,
      O => U3_tank2_angle_calc_and000017_1419
    );
  U3_tank2_angle_calc_and000029 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U3_tank2_angle_calc_and000017_1419,
      I1 => U3_tank2_angle_calc_and00003_1420,
      I2 => U3_tank2_angle_calc(6),
      I3 => U3_N37,
      O => U3_tank2_angle_calc_and0000
    );
  U3_tank1_angle_calc_and000021 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1818,
      I1 => sig_gameUp,
      I2 => U3_tank1_angle_calc(1),
      I3 => sig_gameDown,
      O => U3_tank1_angle_calc_and000021_1405
    );
  U3_tank1_angle_calc_and000034 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U3_tank1_angle_calc_and000021_1405,
      I1 => U3_tank1_angle_calc_and00003_1406,
      I2 => U3_tank1_angle_calc(6),
      I3 => U3_N36,
      O => U3_tank1_angle_calc_and0000
    );
  nes_up_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => N599,
      O => nes_up_reg_cmp_eq0000
    );
  nes_start_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_N0,
      O => nes_start_reg_cmp_eq0000
    );
  nes_sel_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_N0,
      O => nes_sel_reg_cmp_eq0000
    );
  nes_right_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_N0,
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
      I3 => nes_N0,
      O => nes_left_reg_cmp_eq0000
    );
  nes_down_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_N0,
      O => nes_down_reg_cmp_eq0000
    );
  nes_b_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(2),
      I3 => nes_N0,
      O => nes_b_reg_cmp_eq0000
    );
  nes_a_reg_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(3),
      I3 => nes_N0,
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
      O => N4
    );
  screenstate_sig_hill4_mux0001_5_21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => screenstate_sig_hill4(3),
      I1 => screenstate_sig_hill4_mux0001_4_bdd2,
      O => screenstate_sig_hill4_mux0001_5_bdd0
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
      I1 => U2_vcs_cmp_eq0000_739,
      O => U2_Mcount_vcs_eqn_0
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_6_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill1(6),
      I1 => N601,
      O => screenstate_sig_hill1_addsub0000(6)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_7_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => screenstate_sig_hill1(7),
      I1 => screenstate_N13,
      I2 => screenstate_sig_hill1(6),
      O => screenstate_sig_hill1_addsub0000(7)
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
  screenstate_sig_hill4_mux0001_6_11 : LUT4
    generic map(
      INIT => X"83C3"
    )
    port map (
      I0 => screenstate_sig_hill4_mux0001_5_bdd0,
      I1 => screenstate_sig_hill4(0),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(2),
      O => screenstate_sig_hill4_mux0001(6)
    );
  screenstate_sig_hill4_mux0001_5_11 : LUT4
    generic map(
      INIT => X"E161"
    )
    port map (
      I0 => screenstate_sig_hill4(0),
      I1 => screenstate_sig_hill4(1),
      I2 => screenstate_sig_hill4(2),
      I3 => screenstate_sig_hill4_mux0001_5_bdd0,
      O => screenstate_sig_hill4_mux0001(5)
    );
  U2_hcs_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(9),
      I2 => U2_hcs(0),
      I3 => N607,
      O => U2_hcs_cmp_eq00005_728
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N602,
      I1 => U2_hcs_cmp_eq00005_728,
      O => U2_hcs_cmp_eq0000
    );
  nes_scalar_next_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => nes_scalar_reg(4),
      I1 => nes_scalar_reg(7),
      I2 => nes_scalar_reg(5),
      I3 => nes_scalar_reg(6),
      O => nes_scalar_next_cmp_eq000010_1625
    );
  nes_scalar_next_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => nes_scalar_reg(2),
      I1 => nes_scalar_reg(0),
      I2 => nes_scalar_reg(3),
      I3 => nes_scalar_reg(1),
      O => nes_scalar_next_cmp_eq000021_1626
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
      I1 => U2_vcs_cmp_eq0000_739,
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
      I1 => U2_vcs_cmp_eq0000_739,
      O => U2_Mcount_vcs_eqn_2
    );
  screenstate_Mcount_sig_hill3_eqn_31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => screenstate_Result(3),
      I1 => screenstate_N0,
      O => screenstate_Mcount_sig_hill3_eqn_3
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
      I1 => U2_vcs_cmp_eq0000_739,
      O => U2_Mcount_vcs_eqn_3
    );
  screenstate_Mcount_sig_hill3_eqn_41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => screenstate_Result(4),
      I1 => screenstate_N0,
      O => screenstate_Mcount_sig_hill3_eqn_4
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
      I1 => U2_vcs_cmp_eq0000_739,
      O => U2_Mcount_vcs_eqn_4
    );
  screenstate_Mcount_sig_hill3_eqn_51 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => screenstate_Result(5),
      I1 => screenstate_N0,
      O => screenstate_Mcount_sig_hill3_eqn_5
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
      I0 => N610,
      I1 => U2_Result(5),
      O => U2_Mcount_vcs_eqn_5
    );
  screenstate_Mcount_sig_hill3_eqn_61 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => screenstate_Result(6),
      I1 => screenstate_N0,
      O => screenstate_Mcount_sig_hill3_eqn_6
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
      I0 => U2_vcs_cmp_eq0000_739,
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
      O => nes_counter_reg_cmp_eq0000125_1594
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_1594,
      I1 => N603,
      O => nes_N11
    );
  screenstate_Mcount_sig_hill3_eqn_71 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => screenstate_Result(7),
      I1 => screenstate_N0,
      O => screenstate_Mcount_sig_hill3_eqn_7
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
      I0 => U2_vcs_cmp_eq0000_739,
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
      I0 => U2_vcs_cmp_eq0000_739,
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
      I0 => U2_vcs_cmp_eq0000_739,
      I1 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  screenstate_sig_hill4_mux0001_4_31 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => screenstate_sig_hill4(5),
      I1 => screenstate_sig_hill4(6),
      I2 => screenstate_sig_hill4(7),
      I3 => screenstate_sig_hill4(4),
      O => screenstate_sig_hill4_mux0001_4_bdd2
    );
  U3_tank2_angle_calc_mux0004_0_1 : LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => U3_tank2_angle_calc(7),
      I1 => U3_tank2_angle_calc(6),
      I2 => U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q,
      I3 => N608,
      O => U3_tank2_angle_calc_mux0004(0)
    );
  U3_tank1_angle_calc_mux0004_0_1 : LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => U3_tank1_angle_calc(7),
      I1 => U3_tank1_angle_calc(6),
      I2 => U3_Madd_tank1_angle_calc_addsub0000_cy_5_Q,
      I3 => N609,
      O => U3_tank1_angle_calc_mux0004(0)
    );
  screenstate_sig_hill4_mux0001_0_2_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => screenstate_sig_hill4(4),
      I1 => screenstate_sig_hill4(6),
      O => N11
    );
  screenstate_sig_hill4_mux0001_0_2 : LUT4
    generic map(
      INIT => X"AAA6"
    )
    port map (
      I0 => screenstate_sig_hill4(7),
      I1 => screenstate_sig_hill4(5),
      I2 => screenstate_sig_hill4_mux0001_0_bdd2,
      I3 => N11,
      O => screenstate_sig_hill4_mux0001(0)
    );
  title_blue_1_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(1),
      I2 => U2_hcs(0),
      I3 => U2_hcs(3),
      O => title_N11
    );
  title_blue_1_254 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(9),
      I2 => U2_vcs(8),
      I3 => U2_vcs(7),
      O => title_blue_1_254_1807
    );
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(1),
      I1 => U3_C2(4),
      I2 => U3_C2(2),
      I3 => U3_C2_not00011_783,
      O => U3_C2_not00016_787
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_784
    );
  U3_C2_not000186 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_C2_not000164_788,
      I1 => who_present_state_FSM_FFd2_1818,
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000123_785,
      O => U3_C2_not0001
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(0),
      I1 => U3_C1(1),
      O => U3_C1_not00015_769
    );
  U3_C1_not000110 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_C1(9),
      I1 => U3_C1(7),
      I2 => U3_C1(8),
      I3 => U3_C1(6),
      O => U3_C1_not000110_764
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1_not00015_769,
      I2 => U3_C1_not000110_764,
      I3 => U3_C1_not00014_767,
      O => U3_C1_not000127_766
    );
  U3_C1_not000152 : LUT4
    generic map(
      INIT => X"1300"
    )
    port map (
      I0 => U3_C1(1),
      I1 => U3_C1(2),
      I2 => U3_C1(0),
      I3 => U3_C1_not000147_768,
      O => U3_C1_not000152_770
    );
  U3_C1_not0001105 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1(9),
      I2 => U3_C1(8),
      I3 => sig_gameRight,
      O => U3_C1_not0001105_765
    );
  U3_C1_not0001144 : LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1818,
      I1 => U3_C1_not0001105_765,
      I2 => U3_C1_not000127_766,
      I3 => U3_C1_not000183_771,
      O => U3_C1_not0001
    );
  screenstate_sig_hill4_mux0001_1_115 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => screenstate_sig_hill4(2),
      I1 => screenstate_sig_hill4(0),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(3),
      O => screenstate_sig_hill4_mux0001_1_115_1737
    );
  screenstate_sig_hill4_mux0001_1_128 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => screenstate_sig_hill4(2),
      I1 => screenstate_sig_hill4(0),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(3),
      O => screenstate_sig_hill4_mux0001_1_128_1738
    );
  U3_tank2_angle_calc_and0000110 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => U3_tank2_angle_calc(2),
      I2 => U3_tank2_angle_calc(7),
      I3 => U3_tank2_angle_calc(0),
      O => U3_N37
    );
  U3_tank1_angle_calc_and0000110 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => U3_tank1_angle_calc(2),
      I2 => U3_tank1_angle_calc(7),
      I3 => U3_tank1_angle_calc(0),
      O => U3_N36
    );
  U3_Madd_tank2_angle_calc_addsub0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => U3_tank2_angle_calc(4),
      I2 => N605,
      O => U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q
    );
  U3_Madd_tank1_angle_calc_addsub0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => U3_tank1_angle_calc(4),
      I2 => N606,
      O => U3_Madd_tank1_angle_calc_addsub0000_cy_5_Q
    );
  U3_Madd_spriteonB4_add0000_xor_3_11 : LUT4
    generic map(
      INIT => X"3C6C"
    )
    port map (
      I0 => screenstate_sig_hill4(0),
      I1 => screenstate_sig_hill4(3),
      I2 => screenstate_sig_hill4(2),
      I3 => screenstate_sig_hill4(1),
      O => U3_spriteonB4_add0000(3)
    );
  U3_Madd_spriteonB3_add0000_xor_3_11 : LUT4
    generic map(
      INIT => X"3C6C"
    )
    port map (
      I0 => screenstate_sig_hill3(0),
      I1 => screenstate_sig_hill3(3),
      I2 => screenstate_sig_hill3(2),
      I3 => screenstate_sig_hill3(1),
      O => U3_spriteonB3_add0000(3)
    );
  U3_spriteonB2_and000040 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(9),
      I2 => U2_hcs(6),
      I3 => U2_hcs(8),
      O => U3_spriteonB2_and000040_1366
    );
  U3_spriteonB2_and000059 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB2_cmp_ge0000,
      I2 => U3_spriteonB2_and000028,
      I3 => U3_spriteonB2_and000040_1366,
      O => U3_spriteonB2
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_740
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
      O => U2_vidon_and00006_748
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_748,
      I2 => U2_vidon_and000018,
      I3 => U2_vidon_and00000_740,
      O => U2_vidon_and000039_747
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
      O => U2_vidon_and000080_751
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteonGrnd_and0000104,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U2_vidon_and0000105_741
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => U2_vidon_and000080_751,
      I1 => U2_vcs(9),
      I2 => U2_vidon_and0000105_741,
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_742
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_747,
      I1 => U2_vidon_and0000117_742,
      O => vidon
    );
  U3_spriteonB3_cmp_le0000112 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      I3 => U2_hcs(6),
      O => U3_spriteonB3_cmp_le0000112_1372
    );
  U3_spriteonB3_cmp_le0000128 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      I2 => U2_hcs(1),
      I3 => U2_hcs(2),
      O => U3_spriteonB3_cmp_le0000128_1373
    );
  U3_spriteonGrnd_and000087 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(3),
      I2 => U2_hcs(0),
      I3 => U2_hcs(1),
      O => U3_spriteonGrnd_and000087_1395
    );
  U3_spriteonGrnd_and0000162 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonGrnd_and0000134_1386,
      I2 => U3_spriteonGrnd_and000064_1392,
      I3 => U3_spriteonGrnd_and000023,
      O => U3_spriteonGrnd
    );
  U3_blue_and0002129 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      O => M2_29_bdd0
    );
  U3_blue_and0002137 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => M2_29_bdd0,
      I1 => U2_vcs(3),
      I2 => U2_vcs(5),
      I3 => U2_vcs(4),
      O => U3_blue_and0002137_1339
    );
  U3_blue_and0002163 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(9),
      I2 => U2_vcs(6),
      I3 => U2_vcs(8),
      O => U3_blue_and0002163_1340
    );
  U3_blue_and0002166 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_blue_and0002137_1339,
      I1 => U3_blue_and0002163_1340,
      I2 => U2_vcs(5),
      I3 => U3_blue_and0002117,
      O => U3_N42
    );
  U3_Madd_spriteonB5_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_Madd_spriteonB5_add0000_cy_3_Q,
      I1 => screenstate_sig_hill5(4),
      I2 => screenstate_sig_hill5(5),
      O => U3_Madd_spriteonB5_add0000_cy_5_Q
    );
  U3_Madd_spriteonB5_add0000_cy_3_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_sig_hill5(1),
      I1 => screenstate_sig_hill5(3),
      I2 => screenstate_sig_hill5(2),
      O => U3_Madd_spriteonB5_add0000_cy_3_Q
    );
  U3_Madd_spriteonB4_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_Madd_spriteonB4_add0000_cy_3_Q,
      I1 => screenstate_sig_hill4(4),
      I2 => screenstate_sig_hill4(5),
      O => U3_Madd_spriteonB4_add0000_cy_5_Q
    );
  U3_Madd_spriteonB3_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_Madd_spriteonB3_add0000_cy_3_Q,
      I1 => screenstate_sig_hill3(4),
      I2 => screenstate_sig_hill3(5),
      O => U3_Madd_spriteonB3_add0000_cy_5_Q
    );
  U3_Madd_spriteonB1_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_Madd_spriteonB1_add0000_cy_3_Q,
      I1 => screenstate_sig_hill1(4),
      I2 => screenstate_sig_hill1(5),
      O => U3_Madd_spriteonB1_add0000_cy_5_Q
    );
  U3_Madd_spriteonB1_add0000_cy_3_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_sig_hill1(1),
      I1 => screenstate_sig_hill1(3),
      I2 => screenstate_sig_hill1(2),
      O => U3_Madd_spriteonB1_add0000_cy_3_Q
    );
  U3_red_2_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB3,
      O => U3_N3
    );
  U3_Madd_spriteonB4_add0000_cy_3_11 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => screenstate_sig_hill4(1),
      I1 => screenstate_sig_hill4(2),
      I2 => screenstate_sig_hill4(3),
      I3 => screenstate_sig_hill4(0),
      O => U3_Madd_spriteonB4_add0000_cy_3_Q
    );
  U3_Madd_spriteonB3_add0000_cy_3_11 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => screenstate_sig_hill3(1),
      I1 => screenstate_sig_hill3(2),
      I2 => screenstate_sig_hill3(3),
      I3 => screenstate_sig_hill3(0),
      O => U3_Madd_spriteonB3_add0000_cy_3_Q
    );
  U3_spriteonB3_and000036 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_spriteonB3_cmp_ge0000,
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U3_spriteonB3_and000020_1370,
      O => U3_spriteonB3
    );
  U3_spriteonB4_and000073 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U3_spriteonB4_and000028_1376,
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U3_spriteonB4_cmp_ge0000,
      I3 => U3_spriteonB4_and000041_1378,
      O => U3_spriteonB4
    );
  U3_spriteonB5_and000059 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      O => U3_spriteonB5_and000059_1382
    );
  U3_spriteonB5_and000080 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB5_cmp_ge0000,
      I1 => U3_spriteonB5_and000041_1381,
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB5_and000059_1382,
      O => U3_spriteonB5
    );
  U3_spriteonB1_and000063 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      O => U3_spriteonB1_and000063_1359
    );
  U3_spriteonB1_and000082 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_ge0000,
      I1 => U3_spriteonB1_and000048_1358,
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB1_and000063_1359,
      O => U3_spriteonB1
    );
  U3_ypix1_3_1 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      O => rom1_addr(3)
    );
  U3_ypix1_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => rom1_addr(4)
    );
  U3_Madd_spriteon2f_add0002_xor_9_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U3_C2(9),
      O => U3_Madd_spriteon2_addsub0000_lut(9)
    );
  U3_Madd_spriteon2f_add0002_xor_8_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      O => U3_Madd_spriteon2_addsub0000_lut(8)
    );
  U3_Madd_spriteon2f_add0002_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(4),
      O => U3_Madd_spriteon2_addsub0000_cy_5_Q
    );
  U3_Madd_spriteon1_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(5),
      I1 => U3_C1(4),
      O => U3_Madd_spriteon1_addsub0001_cy_5_Q
    );
  U3_Madd_spriteon2f_add0002_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      I2 => U3_C2(6),
      O => U3_Madd_spriteon2_addsub0000_lut(6)
    );
  U3_Madd_spriteon1_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(5),
      I2 => U3_C1(6),
      O => U3_Madd_spriteon1_addsub0001_lut(6)
    );
  U3_Madd_spriteon2f_add0002_cy_7_11 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(5),
      I2 => U3_C2(4),
      I3 => U3_C2(7),
      O => U3_Madd_spriteon2f_add0002_cy(7)
    );
  U3_Madd_spriteon1_addsub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      I2 => U3_C1(4),
      I3 => U3_C1(7),
      O => U3_Madd_spriteon1_addsub0000_cy(7)
    );
  U3_Madd_spriteon2f_add0002_xor_7_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(7),
      I2 => U3_C2(6),
      I3 => U3_C2(4),
      O => U3_Madd_spriteon2_addsub0000_lut(7)
    );
  U3_Madd_spriteon1_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_C1(5),
      I1 => U3_C1(7),
      I2 => U3_C1(6),
      I3 => U3_C1(4),
      O => U3_Madd_spriteon1_addsub0001_lut(7)
    );
  M1a_29_30 : LUT4
    generic map(
      INIT => X"515D"
    )
    port map (
      I0 => M1_22_bdd12,
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => M1_29_bdd5,
      O => M1a_29_30_119
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
      O => M1a_29_51_120
    );
  M1a_29_53 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_51_120,
      I2 => M1a_29_30_119,
      O => M1a_29_Q
    );
  M1a_27_52 : LUT4
    generic map(
      INIT => X"6EC8"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd9,
      O => M1a_27_52_115
    );
  M1a_27_82 : LUT4
    generic map(
      INIT => X"020F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd4,
      I2 => rom1_addr(3),
      I3 => U2_vcs(1),
      O => M1a_27_82_116
    );
  M2a_26_f5 : MUXF5
    port map (
      I0 => M2a_26_2_220,
      I1 => M1a_5_21_125,
      S => rom1_addr(4),
      O => M2a_26_Q
    );
  M2a_16_f5 : MUXF5
    port map (
      I0 => M2a_16_2_205,
      I1 => M2a_16_1,
      S => rom1_addr(4),
      O => M2a_16_Q
    );
  M1a_30_36 : LUT4
    generic map(
      INIT => X"094D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd12,
      I3 => M1_22_bdd7,
      O => M1a_30_36_122
    );
  M2a_1_Q : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_1_bdd0,
      I2 => rom1_addr(4),
      I3 => N100,
      O => M2a_1_Q_208
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
      O => M1a_23_10_101
    );
  M2a_1_31 : LUT3
    generic map(
      INIT => X"E9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd7,
      I2 => M2_0_bdd13,
      O => M2a_1_bdd4
    );
  U3_red_0_21 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => vidon,
      I1 => U3_spriteon1,
      I2 => U3_M1_mux0000,
      I3 => U3_M1a_mux0000,
      O => U3_N6
    );
  M2a_10_f5 : MUXF5
    port map (
      I0 => M2a_10_2_197,
      I1 => M2a_10_1,
      S => rom1_addr(4),
      O => M2a_10_Q
    );
  U3_ypix1_2_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      O => rom1_addr(2)
    );
  M1_23_20 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd4,
      I2 => M1_22_bdd7,
      I3 => U2_vcs(1),
      O => M1_23_20_36
    );
  M1_29_14 : LUT4
    generic map(
      INIT => X"0F09"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => U2_vcs(1),
      I3 => M1_0_bdd2,
      O => M1_29_14_70
    );
  M1_29_35 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => M1_29_0_68,
      I1 => rom1_addr(3),
      I2 => M1_29_14_70,
      I3 => rom1_addr(4),
      O => M1_29_35_71
    );
  M1_29_60 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd12,
      I2 => M1_29_bdd5,
      I3 => U2_vcs(1),
      O => M1_29_60_72
    );
  M1_29_131 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1_29_35_71,
      I1 => M1_29_126_69,
      I2 => M1_29_60_72,
      I3 => M1_29_74_73,
      O => M1_29_Q
    );
  M2_0_61 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd7,
      I2 => M2_0_bdd13,
      O => M2_0_bdd11
    );
  selector_green_0_17 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonB1,
      I3 => U3_spriteonGrnd,
      O => selector_green_0_17_1763
    );
  M1_30_116 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_30_111_77,
      I2 => M1_30_49_78,
      I3 => M1_24_39_42,
      O => M1_30_Q
    );
  M1_28_123 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1_28_12_61,
      I1 => M1_28_120,
      I2 => M1_28_27_65,
      I3 => M1_28_65_66,
      O => M1_28_Q
    );
  U3_red_2_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_N3,
      O => N111
    );
  selector_red_0_14 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonGrnd,
      I2 => U3_spriteonB1,
      O => selector_red_0_14_1766
    );
  selector_red_0_18 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => selector_red_0_14_1766,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB3,
      O => selector_red_0_18_1767
    );
  M2_2_31 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M2_0_bdd7,
      I1 => U2_vcs(0),
      O => M2_2_bdd5
    );
  M2_1_32 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd7,
      O => M2_1_bdd4
    );
  M2_10_61 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      O => M2_10_bdd11
    );
  M2_0_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd7,
      O => M2_0_bdd5
    );
  M2_0_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N113,
      I2 => rom1_addr(4),
      I3 => N114,
      O => M2_0_Q_128
    );
  M2_8_25 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => M2_0_bdd3,
      I1 => rom1_addr(4),
      I2 => U2_vcs(1),
      O => M2_8_25_190
    );
  M2a_4_154 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_4_150_230,
      I2 => M2a_4_101_229,
      O => M2a_4_Q
    );
  M2_10_82 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      O => M2_10_bdd14
    );
  M2_7_35 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_1_bdd1,
      I2 => rom1_addr(4),
      I3 => M2_7_14_185,
      O => M2_7_35_186
    );
  M2_2_52 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => U2_vcs(0),
      O => M2_2_bdd8
    );
  M2_0_101 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => M2_0_bdd7,
      I1 => M2_0_bdd13,
      O => M2_0_bdd18
    );
  U3_tank2Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      O => N119
    );
  U3_tank2Angle_0_1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => N119,
      I2 => U3_tank2_angle_calc(6),
      I3 => U3_tank2_angle_calc(7),
      O => M2_0_bdd13
    );
  U3_tank1Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(2),
      O => N121
    );
  U3_tank1Angle_0_1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => N121,
      I2 => U3_tank1_angle_calc(6),
      I3 => U3_tank1_angle_calc(7),
      O => M1_21_bdd5
    );
  U3_tank2Angle_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      I3 => U3_tank2_angle_calc(1),
      O => N126
    );
  U3_tank2Angle_1_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank2_angle_calc(7),
      I1 => U3_tank2_angle_calc(5),
      I2 => U3_tank2_angle_calc(6),
      I3 => N126,
      O => M2_0_bdd7
    );
  U3_tank1Angle_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(2),
      I3 => U3_tank1_angle_calc(1),
      O => N128
    );
  U3_tank1Angle_1_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank1_angle_calc(7),
      I1 => U3_tank1_angle_calc(5),
      I2 => U3_tank1_angle_calc(6),
      I3 => N128,
      O => M1_22_bdd9
    );
  U3_red_0_3 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_spriteon1,
      I1 => vidon,
      I2 => N130,
      I3 => U3_M1_mux0000,
      O => U3_N7
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_1496
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_1485
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_1816,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_1498,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_1500,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_1494,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_1455,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_1454,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_1453,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_1452,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_1459,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_1458,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_1492,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_1491,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_1490,
      O => green(0)
    );
  ld_7_OBUF : OBUF
    port map (
      I => ld_7_OBUF_1516,
      O => ld(7)
    );
  ld_6_OBUF : OBUF
    port map (
      I => ld_6_OBUF_1515,
      O => ld(6)
    );
  ld_5_OBUF : OBUF
    port map (
      I => ld_5_OBUF_1514,
      O => ld(5)
    );
  ld_4_OBUF : OBUF
    port map (
      I => ld_4_OBUF_1513,
      O => ld(4)
    );
  ld_3_OBUF : OBUF
    port map (
      I => ld_3_OBUF_1512,
      O => ld(3)
    );
  ld_2_OBUF : OBUF
    port map (
      I => ld_2_OBUF_1511,
      O => ld(2)
    );
  ld_1_OBUF : OBUF
    port map (
      I => ld_1_OBUF_1510,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => ld_0_OBUF_1509,
      O => ld(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_1447,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_1446,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_1445,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_1444,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_1443,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_1442,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_1441,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_1_OBUF_1647,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_1647,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_1646,
      O => red(0)
    );
  U1_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(1),
      O => U1_Mcount_q_cy_1_rt_596
    );
  U1_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(2),
      O => U1_Mcount_q_cy_2_rt_598
    );
  U1_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(3),
      O => U1_Mcount_q_cy_3_rt_600
    );
  U1_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(4),
      O => U1_Mcount_q_cy_4_rt_602
    );
  U1_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(5),
      O => U1_Mcount_q_cy_5_rt_604
    );
  U1_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(6),
      O => U1_Mcount_q_cy_6_rt_606
    );
  U1_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(7),
      O => U1_Mcount_q_cy_7_rt_608
    );
  U1_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(8),
      O => U1_Mcount_q_cy_8_rt_610
    );
  U1_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(9),
      O => U1_Mcount_q_cy_9_rt_612
    );
  U1_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(10),
      O => U1_Mcount_q_cy_10_rt_582
    );
  U1_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(11),
      O => U1_Mcount_q_cy_11_rt_584
    );
  U1_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(12),
      O => U1_Mcount_q_cy_12_rt_586
    );
  U1_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(13),
      O => U1_Mcount_q_cy_13_rt_588
    );
  U1_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(14),
      O => U1_Mcount_q_cy_14_rt_590
    );
  U1_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(15),
      O => U1_Mcount_q_cy_15_rt_592
    );
  U1_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(16),
      O => U1_Mcount_q_cy_16_rt_594
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_651
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_649
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_647
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_645
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_643
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_641
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_639
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_637
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_681
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_679
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_677
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_675
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_673
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_671
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_669
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_667
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_1003
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_954
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_952
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_935
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1290,
      O => U3_Mcount_q_cy_16_rt_1071
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1289,
      O => U3_Mcount_q_cy_15_rt_1069
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1288,
      O => U3_Mcount_q_cy_14_rt_1067
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1287,
      O => U3_Mcount_q_cy_13_rt_1065
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1286,
      O => U3_Mcount_q_cy_12_rt_1063
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1285,
      O => U3_Mcount_q_cy_11_rt_1061
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1284,
      O => U3_Mcount_q_cy_10_rt_1059
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1298,
      O => U3_Mcount_q_cy_9_rt_1089
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1297,
      O => U3_Mcount_q_cy_8_rt_1087
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1296,
      O => U3_Mcount_q_cy_7_rt_1085
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1295,
      O => U3_Mcount_q_cy_6_rt_1083
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1294,
      O => U3_Mcount_q_cy_5_rt_1081
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1293,
      O => U3_Mcount_q_cy_4_rt_1079
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1292,
      O => U3_Mcount_q_cy_3_rt_1077
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1291,
      O => U3_Mcount_q_cy_2_rt_1075
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1283,
      O => U3_Mcount_q_cy_1_rt_1073
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_1838
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_1836
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_1834
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_1832
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_1830
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_1828
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_1826
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_1824
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_1822
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_1856
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_1854
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_1852
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_1850
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_1848
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_1846
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_1844
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_1842
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_1840
    );
  screenstate_Mcount_sig_hill3_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(6),
      O => screenstate_Mcount_sig_hill3_cy_6_rt_1663
    );
  screenstate_Mcount_sig_hill3_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(5),
      O => screenstate_Mcount_sig_hill3_cy_5_rt_1661
    );
  screenstate_Mcount_sig_hill3_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(4),
      O => screenstate_Mcount_sig_hill3_cy_4_rt_1659
    );
  screenstate_Mcount_sig_hill3_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(3),
      O => screenstate_Mcount_sig_hill3_cy_3_rt_1657
    );
  screenstate_Mcount_sig_hill3_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(2),
      O => screenstate_Mcount_sig_hill3_cy_2_rt_1655
    );
  screenstate_Mcount_sig_hill3_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(1),
      O => screenstate_Mcount_sig_hill3_cy_1_rt_1653
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_1554
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_1552
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_1550
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_1548
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_1546
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_1544
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_1542
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_1540
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_1535
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_1533
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_1531
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_1529
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_1527
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_1525
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_1523
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_1521
    );
  U1_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q_171,
      O => U1_Mcount_q_xor_17_rt_614
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_664
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_693
    );
  U3_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_171,
      O => U3_Mcount_q_xor_17_rt_1091
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_1858
    );
  screenstate_Mcount_sig_hill3_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(7),
      O => screenstate_Mcount_sig_hill3_xor_7_rt_1675
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_1566
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_1537
    );
  title_Mmux_M_mux0000_5_f51 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => title_Mmux_M_mux0000_5_f51_1782
    );
  title_Mmux_M_mux0000_7_f5_11 : LUT4
    generic map(
      INIT => X"8001"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => title_Mmux_M_mux0000_7_f5_1_1797
    );
  U3_Mcount_tank2_angle_calc_lut_6_Q : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(6),
      I2 => U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1421,
      O => U3_Mcount_tank2_angle_calc_lut(6)
    );
  U3_Mcount_tank1_angle_calc_lut_6_Q : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(6),
      I2 => U3_Madd_tank1_angle_calc_addsub0000_cy_5_Q,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1407,
      O => U3_Mcount_tank1_angle_calc_lut(6)
    );
  U3_Mcount_tank2_angle_calc_lut_4_Q : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(4),
      I2 => U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1421,
      O => U3_Mcount_tank2_angle_calc_lut(4)
    );
  U3_Mcount_tank1_angle_calc_lut_4_Q : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(4),
      I2 => U3_Madd_tank1_angle_calc_addsub0000_cy_3_Q,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1407,
      O => U3_Mcount_tank1_angle_calc_lut(4)
    );
  U3_tank2_angle_calc_mux0004_5_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(0),
      I1 => U3_tank2_angle_calc(1),
      O => N132
    );
  U3_Mcount_tank2_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(2),
      I2 => N132,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1421,
      O => U3_Mcount_tank2_angle_calc_lut(2)
    );
  U3_tank1_angle_calc_mux0004_5_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(0),
      I1 => U3_tank1_angle_calc(1),
      O => N134
    );
  U3_Mcount_tank1_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(2),
      I2 => N134,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1407,
      O => U3_Mcount_tank1_angle_calc_lut(2)
    );
  U3_tank2_angle_calc_mux0004_2_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q,
      O => N140
    );
  U3_Mcount_tank2_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(5),
      I2 => N140,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1421,
      O => U3_Mcount_tank2_angle_calc_lut(5)
    );
  U3_tank1_angle_calc_mux0004_2_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_Madd_tank1_angle_calc_addsub0000_cy_3_Q,
      O => N142
    );
  U3_Mcount_tank1_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(5),
      I2 => N142,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1407,
      O => U3_Mcount_tank1_angle_calc_lut(5)
    );
  U3_tank2_angle_calc_cmp_eq0001_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(4),
      O => N144
    );
  U3_tank1_angle_calc_cmp_eq0001_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(4),
      O => N146
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N611,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  U3_Mcount_tank2_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => U3_tank2_angle_calc(7),
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => U3_tank2_angle_calc_mux0004(0),
      O => U3_Mcount_tank2_angle_calc_lut(7)
    );
  U3_Mcount_tank1_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => U3_tank1_angle_calc(7),
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => U3_tank1_angle_calc_mux0004(0),
      O => U3_Mcount_tank1_angle_calc_lut(7)
    );
  screenstate_sig_hill4_mux0001_1_181_SW0 : LUT4
    generic map(
      INIT => X"CF2F"
    )
    port map (
      I0 => screenstate_sig_hill4(7),
      I1 => screenstate_sig_hill4(6),
      I2 => screenstate_sig_hill4(5),
      I3 => screenstate_sig_hill4_mux0001_0_bdd2,
      O => N154
    );
  screenstate_sig_hill4_mux0001_1_181_SW1 : LUT4
    generic map(
      INIT => X"DF3F"
    )
    port map (
      I0 => screenstate_sig_hill4(7),
      I1 => screenstate_sig_hill4(6),
      I2 => screenstate_sig_hill4(5),
      I3 => N604,
      O => N155
    );
  U3_Mcount_tank2_angle_calc_lut_0_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(4),
      I2 => U3_tank2_angle_calc(3),
      I3 => U3_tank2_angle_calc(1),
      O => N157
    );
  U3_Mcount_tank2_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"EA55"
    )
    port map (
      I0 => U3_tank2_angle_calc(0),
      I1 => U3_N37,
      I2 => N157,
      I3 => sig_gameUp,
      O => U3_Mcount_tank2_angle_calc_lut(0)
    );
  U3_Mcount_tank1_angle_calc_lut_0_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(4),
      I2 => U3_tank1_angle_calc(3),
      I3 => U3_tank1_angle_calc(1),
      O => N159
    );
  U3_Mcount_tank1_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"EA55"
    )
    port map (
      I0 => U3_tank1_angle_calc(0),
      I1 => U3_N36,
      I2 => N159,
      I3 => sig_gameUp,
      O => U3_Mcount_tank1_angle_calc_lut(0)
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
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_0_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      O => N161
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_728,
      O => U2_Mcount_hcs_eqn_5
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
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_728,
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
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_hcs_cmp_eq00005_728,
      I2 => U2_Result_7_1,
      O => U2_Mcount_hcs_eqn_7
    );
  nes_Mcount_counter_reg_eqn_81 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(8),
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_8
    );
  U2_Mcount_hcs_eqn_81 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_hcs_cmp_eq00005_728,
      I2 => U2_Result_8_1,
      O => U2_Mcount_hcs_eqn_8
    );
  nes_Mcount_counter_reg_eqn_91 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => nes_N11,
      I1 => nes_Result(9),
      I2 => nes_counter_reg(2),
      I3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_9
    );
  U2_Mcount_hcs_eqn_91 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_727,
      I1 => U2_hcs_cmp_eq00005_728,
      I2 => U2_Result_9_1,
      O => U2_Mcount_hcs_eqn_9
    );
  screenstate_sig_hill4_mux0001_1_1128 : LUT4
    generic map(
      INIT => X"EA0A"
    )
    port map (
      I0 => screenstate_sig_hill4(6),
      I1 => screenstate_sig_hill4(5),
      I2 => screenstate_sig_hill4(4),
      I3 => screenstate_sig_hill4_mux0001_1_181_1739,
      O => screenstate_sig_hill4_mux0001(1)
    );
  U3_Mcount_tank2_angle_calc_lut_3_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => U3_tank2_angle_calc(0),
      I2 => U3_tank2_angle_calc(1),
      I3 => sig_gameUp,
      O => N167
    );
  U3_Mcount_tank2_angle_calc_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank2_angle_calc(3),
      I1 => N167,
      O => U3_Mcount_tank2_angle_calc_lut(3)
    );
  U3_Mcount_tank1_angle_calc_lut_3_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(0),
      I2 => U3_tank1_angle_calc(1),
      I3 => sig_gameUp,
      O => N169
    );
  U3_Mcount_tank1_angle_calc_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1_angle_calc(3),
      I1 => N169,
      O => U3_Mcount_tank1_angle_calc_lut(3)
    );
  selector_blue_0_27_SW0 : LUT4
    generic map(
      INIT => X"3323"
    )
    port map (
      I0 => U3_spriteonB4,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonB5,
      I3 => U3_spriteonB3,
      O => N173
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"0A02"
    )
    port map (
      I0 => sig_gameRight,
      I1 => U3_C2(9),
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000150_786,
      O => U3_C2_not000164_788
    );
  title_Mmux_M_mux0000_91_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_hcs(0),
      O => N177
    );
  title_Mmux_M_mux0000_91 : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => N177,
      O => title_Mmux_M_mux0000_91_1804
    );
  M2a_4_45_SW0 : LUT4
    generic map(
      INIT => X"6EC8"
    )
    port map (
      I0 => M2_0_bdd7,
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => M2_0_bdd13,
      O => N199
    );
  selector_green_2_Q : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => sig_titleBlue(0),
      I2 => U3_N6,
      I3 => N201,
      O => green_2_OBUF_1492
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N203,
      O => U3_Mmux_M1a_mux0000_83_1190
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U3_xpix1(0),
      I2 => M1a_29_51_120,
      I3 => M1a_30_36_122,
      O => U3_Mmux_M1a_mux0000_6_1175
    );
  U3_Mmux_M1a_mux0000_10 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U3_xpix1(0),
      I2 => M1a_1_8_94,
      I3 => M1a_1_20_93,
      O => U3_Mmux_M1a_mux0000_10_1168
    );
  M2a_3_41 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_3_bdd1,
      I2 => rom1_addr(3),
      I3 => M2a_3_19_227,
      O => M2a_3_Q
    );
  M1_31_23_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd3,
      I2 => M1_22_bdd7,
      O => N219
    );
  M2a_2_66 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N223,
      I2 => M2a_2_32_224,
      I3 => M2a_1_bdd0,
      O => M2a_2_Q
    );
  M1_22_65 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_22_0_27,
      I2 => M1_10_bdd0,
      I3 => M1_22_35_29,
      O => M1_22_Q
    );
  M1_28_27 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd3,
      I2 => M1_23_bdd6,
      I3 => U2_vcs(1),
      O => M1_28_27_65
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_Madd_spriteon1_addsub0001_lut(6),
      I2 => U3_Madd_spriteon1_addsub0001_lut(7),
      I3 => U3_Madd_spriteon1_addsub0001_cy_5_Q,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill5(6),
      I2 => screenstate_sig_hill5(7),
      I3 => U3_Madd_spriteonB5_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => screenstate_sig_hill5(6),
      I2 => U3_Madd_spriteonB5_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => screenstate_sig_hill5(4),
      I2 => screenstate_sig_hill5(5),
      I3 => U3_Madd_spriteonB5_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_4_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => screenstate_sig_hill5(4),
      I2 => U3_Madd_spriteonB5_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => screenstate_sig_hill5(1),
      I2 => screenstate_sig_hill5(3),
      I3 => screenstate_sig_hill5(2),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_2_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => screenstate_sig_hill5(1),
      I2 => screenstate_sig_hill5(2),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill4(6),
      I2 => screenstate_sig_hill4(7),
      I3 => U3_Madd_spriteonB4_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => screenstate_sig_hill4(6),
      I2 => U3_Madd_spriteonB4_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => screenstate_sig_hill4(4),
      I2 => screenstate_sig_hill4(5),
      I3 => U3_Madd_spriteonB4_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_4_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => screenstate_sig_hill4(4),
      I2 => U3_Madd_spriteonB4_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => screenstate_sig_hill4(2),
      I2 => screenstate_sig_hill4(0),
      I3 => screenstate_sig_hill4(1),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => screenstate_sig_hill4(1),
      I2 => screenstate_sig_hill4(0),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill3(6),
      I2 => screenstate_sig_hill3(7),
      I3 => U3_Madd_spriteonB3_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => screenstate_sig_hill3(6),
      I2 => U3_Madd_spriteonB3_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => screenstate_sig_hill3(4),
      I2 => screenstate_sig_hill3(5),
      I3 => U3_Madd_spriteonB3_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_4_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => screenstate_sig_hill3(4),
      I2 => U3_Madd_spriteonB3_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => screenstate_sig_hill3(2),
      I2 => screenstate_sig_hill3(0),
      I3 => screenstate_sig_hill3(1),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => screenstate_sig_hill3(1),
      I2 => screenstate_sig_hill3(0),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteonB3_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => screenstate_sig_hill3(0),
      O => U3_Mcompar_spriteonB3_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill2(7),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill1(6),
      I2 => screenstate_sig_hill1(7),
      I3 => U3_Madd_spriteonB1_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => screenstate_sig_hill1(6),
      I2 => U3_Madd_spriteonB1_add0000_cy_5_Q,
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => screenstate_sig_hill1(4),
      I2 => screenstate_sig_hill1(5),
      I3 => U3_Madd_spriteonB1_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_4_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => screenstate_sig_hill1(4),
      I2 => U3_Madd_spriteonB1_add0000_cy_3_Q,
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => screenstate_sig_hill1(1),
      I2 => screenstate_sig_hill1(3),
      I3 => screenstate_sig_hill1(2),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_2_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => screenstate_sig_hill1(1),
      I2 => screenstate_sig_hill1(2),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(2)
    );
  x7_an_2_mux000141 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => x7_clkdiv(19),
      I1 => x7_an_1_mux000128,
      I2 => x7_an_2_mux000128_1891,
      I3 => x7_clkdiv(18),
      O => an_2_OBUF_1454
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => nes_nes_clk31_1601,
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_counter_reg(3),
      O => N235
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N235,
      O => ja3_OBUF_1500
    );
  title_blue_1_256_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(4),
      I2 => U2_hcs(9),
      I3 => title_blue_1_254_1807,
      O => N237
    );
  title_blue_1_256 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(7),
      I2 => N237,
      I3 => U2_hcs(8),
      O => title_blue_1_256_1808
    );
  title_blue_1_269 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => title_blue_1_256_1808,
      I3 => title_N11,
      O => title_spriteon
    );
  U3_spriteonGrnd_and0000134_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => U3_spriteonGrnd_and0000104,
      I1 => U2_hcs(4),
      I2 => U3_spriteonGrnd_and000087_1395,
      O => N239
    );
  U3_spriteonGrnd_and0000134 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      I3 => N239,
      O => U3_spriteonGrnd_and0000134_1386
    );
  U3_spriteonB4_and000028 : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => N241,
      I2 => U2_hcs(4),
      I3 => U2_hcs(2),
      O => U3_spriteonB4_and000028_1376
    );
  U3_spriteonB5_and000032_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      O => N243
    );
  U3_spriteonB1_and000036_SW0 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(7),
      I2 => U2_hcs(6),
      I3 => U2_hcs(3),
      O => N245
    );
  U3_spriteonB1_and000036 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => N245,
      I3 => U2_hcs(1),
      O => U3_spriteonB1_and000036_1357
    );
  U3_spriteonB1_and000048_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => U2_hcs(3),
      I3 => U2_hcs(5),
      O => N247
    );
  U3_spriteonB1_and000048 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N247,
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      I3 => U3_spriteonB1_and000036_1357,
      O => U3_spriteonB1_and000048_1358
    );
  U3_spriteon1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_N42,
      I1 => U3_spriteon1_cmp_ge0000,
      I2 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      O => U3_spriteon1
    );
  M1a_27_145_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => M1a_27_52_115,
      I1 => M1a_27_82_116,
      I2 => U2_vcs(1),
      I3 => rom1_addr(4),
      O => N249
    );
  M1_24_39 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd12,
      O => M1_24_39_42
    );
  U3_blue_and00031 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U3_spriteon2f_cmp_le0000,
      I1 => U3_M2a_mux0000,
      I2 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I3 => U3_N42,
      O => U3_blue_and0003
    );
  U3_red_0_3_SW0 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U3_spriteon2_cmp_ge0000,
      I1 => U3_M2_mux0000,
      I2 => U3_Mcompar_spriteon2_cmp_lt0000_cy(9),
      I3 => U3_N42,
      O => N130
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_5_11 : LUT4
    generic map(
      INIT => X"3C6C"
    )
    port map (
      I0 => screenstate_sig_hill2(2),
      I1 => screenstate_sig_hill2(5),
      I2 => screenstate_sig_hill2(4),
      I3 => screenstate_sig_hill2(3),
      O => screenstate_sig_hill2_addsub0000(5)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_3_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => screenstate_sig_hill1(3),
      I1 => screenstate_sig_hill1(1),
      I2 => screenstate_sig_hill1(2),
      O => screenstate_sig_hill1_addsub0000(3)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_4_11 : LUT4
    generic map(
      INIT => X"3C6C"
    )
    port map (
      I0 => screenstate_sig_hill1(2),
      I1 => screenstate_sig_hill1(4),
      I2 => screenstate_sig_hill1(3),
      I3 => screenstate_sig_hill1(1),
      O => screenstate_sig_hill1_addsub0000(4)
    );
  screenstate_Mcount_sig_hill3_eqn_01 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1666,
      I1 => screenstate_Result(0),
      I2 => screenstate_Mcount_sig_hill3_eqn_0121_1665,
      O => screenstate_Mcount_sig_hill3_eqn_0
    );
  U3_Mcount_C1_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(1),
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C2_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(1),
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C1_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(2),
      O => U3_Mcount_C1_lut(2)
    );
  U3_Mcount_C2_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(2),
      O => U3_Mcount_C2_lut(2)
    );
  U3_Mcount_C1_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(3),
      O => U3_Mcount_C1_lut(3)
    );
  U3_Mcount_C2_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(3),
      O => U3_Mcount_C2_lut(3)
    );
  U3_Mcount_C1_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(4),
      O => U3_Mcount_C1_lut(4)
    );
  U3_Mcount_C2_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(4),
      O => U3_Mcount_C2_lut(4)
    );
  U3_Mcount_C1_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(5),
      O => U3_Mcount_C1_lut(5)
    );
  U3_Mcount_C2_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(5),
      O => U3_Mcount_C2_lut(5)
    );
  U3_Mcount_C1_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(6),
      O => U3_Mcount_C1_lut(6)
    );
  U3_Mcount_C2_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(6),
      O => U3_Mcount_C2_lut(6)
    );
  U3_Mcount_C1_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(7),
      O => U3_Mcount_C1_lut(7)
    );
  U3_Mcount_C2_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(7),
      O => U3_Mcount_C2_lut(7)
    );
  U3_Mcount_C1_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(8),
      O => U3_Mcount_C1_lut(8)
    );
  U3_Mcount_C2_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(8),
      O => U3_Mcount_C2_lut(8)
    );
  U3_Mcount_C1_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  U3_Mcount_C2_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => ld_7_OBUF_1516,
      I2 => U3_C2(9),
      O => U3_Mcount_C2_lut(9)
    );
  screenstate_Mcount_sig_hill3_eqn_21 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1666,
      I1 => screenstate_Result(2),
      I2 => N598,
      O => screenstate_Mcount_sig_hill3_eqn_2
    );
  screenstate_Mcount_sig_hill3_eqn_11 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1666,
      I1 => screenstate_Result(1),
      I2 => screenstate_Mcount_sig_hill3_eqn_0121_1665,
      O => screenstate_Mcount_sig_hill3_eqn_1
    );
  U3_Mcount_C1_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => U3_C1(0),
      I2 => ld_7_OBUF_1516,
      O => U3_Mcount_C1_lut(0)
    );
  U3_Mcount_C2_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => U3_C2(0),
      I2 => ld_7_OBUF_1516,
      O => U3_Mcount_C2_lut(0)
    );
  U3_Mcount_tank2_angle_calc_lut_1_Q : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => U3_tank2_angle_calc(1),
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(1)
    );
  U3_Mcount_tank1_angle_calc_lut_1_Q : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => U3_tank1_angle_calc(1),
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(1)
    );
  M1a_1_8 : LUT4
    generic map(
      INIT => X"7F88"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => M1a_1_8_94
    );
  U3_spriteon2_addsub0000_7_1 : LUT4
    generic map(
      INIT => X"C387"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(6),
      I2 => U3_C2(7),
      I3 => U3_C2(5),
      O => U3_spriteon2_addsub0000(7)
    );
  U3_Madd_spriteon2_addsub0000_cy_7_1 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      I2 => U3_C2(6),
      I3 => U3_C2(7),
      O => U3_Madd_spriteon2_addsub0000_cy_7_Q
    );
  U3_Madd_spriteon1_addsub0001_cy_7_11 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(5),
      I2 => U3_C1(6),
      I3 => U3_C1(7),
      O => U3_Madd_spriteon1_addsub0001_cy_7_Q
    );
  title_Mmux_M_mux0000_85 : LUT4
    generic map(
      INIT => X"8001"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => N177,
      O => title_Mmux_M_mux0000_85_1801
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
  M2a_2_32 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => M2_0_bdd18,
      I3 => U2_vcs(2),
      O => M2a_2_32_224
    );
  M1_14_21 : LUT4
    generic map(
      INIT => X"DFBE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1_14_bdd1
    );
  M2a_10_2 : LUT4
    generic map(
      INIT => X"2C28"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M2_10_bdd11,
      O => M2a_10_2_197
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_24_bdd1,
      I2 => N257,
      O => U3_Mmux_M2_mux0000_8_1217
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_13_bdd1,
      I2 => N259,
      O => U3_Mmux_M2_mux0000_73_1213
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N261,
      O => U3_Mmux_M1_mux0000_9_1164
    );
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N263,
      O => U3_Mmux_M1_mux0000_85_1162
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
  U3_spriteon2_addsub0000_9_1 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => U3_Madd_spriteon2f_add0002_cy(7),
      I1 => U3_C2(8),
      I2 => U3_C2(9),
      I3 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      O => U3_spriteon2_addsub0000(9)
    );
  U3_Madd_spriteon1_addsub0001_xor_9_11 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => U3_Madd_spriteon1_addsub0000_cy(7),
      I1 => U3_C1(8),
      I2 => U3_C1(9),
      I3 => U3_Madd_spriteon1_addsub0001_cy_7_Q,
      O => U3_spriteon1_addsub0001(9)
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"FF89"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd7,
      I3 => U2_vcs(2),
      O => M2_7_bdd0
    );
  M2_6_11 : LUT4
    generic map(
      INIT => X"7AAF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd7,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2_6_bdd0
    );
  title_Mmux_M_mux0000_72 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => title_Mmux_M_mux0000_7,
      O => title_Mmux_M_mux0000_72_1792
    );
  U3_tank2_angle_calc_not00011 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => who_present_state_FSM_FFd2_1818,
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => ld_6_OBUF_1515,
      O => U3_tank2_angle_calc_not0001
    );
  U3_tank1_angle_calc_not00011 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => ld_5_OBUF_1514,
      I1 => who_present_state_FSM_FFd2_1818,
      I2 => screenstate_present_state_FSM_FFd1_1688,
      I3 => ld_6_OBUF_1515,
      O => U3_tank1_angle_calc_not0001
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
  M1_27_11 : LUT4
    generic map(
      INIT => X"72AF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M1_27_bdd0
    );
  M2a_1_SW0 : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd3,
      I2 => M2a_1_bdd4,
      I3 => U2_vcs(2),
      O => N100
    );
  M1a_24_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      I3 => M1_22_bdd9,
      O => M1a_24_bdd1
    );
  M1a_22_11 : LUT4
    generic map(
      INIT => X"6660"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd9,
      O => M1a_22_bdd0
    );
  M2_9_11 : LUT4
    generic map(
      INIT => X"9989"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M2_0_bdd13,
      O => M2_9_bdd0
    );
  M2_5_11 : LUT4
    generic map(
      INIT => X"72AF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd11,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2_5_bdd0
    );
  M2_8_11 : LUT4
    generic map(
      INIT => X"8898"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd18,
      I3 => U2_vcs(0),
      O => M2_8_bdd0
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"72AF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd7,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M2_4_bdd0
    );
  M1a_22_44 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N271,
      I2 => M1a_22_18_98,
      I3 => M1a_10_bdd0,
      O => M1a_22_Q
    );
  M1_23_29 : LUT4
    generic map(
      INIT => X"0955"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => M1_23_bdd3,
      I3 => U2_vcs(1),
      O => M1_23_29_37
    );
  M1_29_0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      O => M1_29_0_68
    );
  selector_green_0_47_SW0 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => U3_N7,
      I1 => U3_M1a_mux0000,
      I2 => U3_spriteon1,
      I3 => U3_blue_and0003,
      O => N277
    );
  selector_green_0_47 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => sig_titleBlue(0),
      I2 => selector_green_0_17_1763,
      I3 => N277,
      O => green_0_OBUF_1490
    );
  M1_28_65_SW0 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => N283
    );
  M1_28_65 : LUT4
    generic map(
      INIT => X"0955"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N283,
      I3 => U2_vcs(1),
      O => M1_28_65_66
    );
  M2_5_29 : LUT4
    generic map(
      INIT => X"FF42"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd7,
      I3 => U2_vcs(1),
      O => M2_5_29_178
    );
  M2_5_117 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_26_140
    );
  M2a_7_17 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_10_bdd14,
      I2 => U2_vcs(1),
      I3 => M2_0_bdd5,
      O => M2a_7_17_235
    );
  M2a_5_54 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_2_bdd8,
      I2 => U2_vcs(1),
      I3 => M2_0_bdd5,
      O => M2a_5_54_232
    );
  M2_0_SW0 : LUT4
    generic map(
      INIT => X"FDB9"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(3),
      I2 => M2_0_bdd11,
      I3 => M2_0_bdd5,
      O => N113
    );
  M2_8_16 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd5,
      I2 => M2_10_bdd14,
      I3 => U2_vcs(1),
      O => M2_8_16_189
    );
  M2_7_14 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd7,
      I2 => U2_vcs(0),
      I3 => M2_0_bdd13,
      O => M2_7_14_185
    );
  M2_3_20 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_10_bdd14,
      I2 => M2_1_bdd8,
      I3 => U2_vcs(1),
      O => M2_3_20_171
    );
  M2_3_38 : LUT4
    generic map(
      INIT => X"DF57"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_1_bdd4,
      I3 => M2_10_bdd14,
      O => M2_3_38_172
    );
  selector_green_1_25 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => sig_titleBlue(0),
      I2 => U3_N6,
      I3 => N293,
      O => green_1_OBUF_1491
    );
  M1_26_30 : LUT4
    generic map(
      INIT => X"FF42"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd9,
      I3 => U2_vcs(1),
      O => M1_26_30_52
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"90FF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(1),
      O => M1_26_58_53
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
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_C2(8),
      I2 => U3_C2(9),
      I3 => U3_Madd_spriteon2f_add0002_cy(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C2(8),
      I2 => U3_Madd_spriteon2f_add0002_cy(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C2(4),
      I2 => U3_C2(6),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C2(5),
      I2 => U3_C2(4),
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
  U3_Mcompar_spriteon1_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_C1(8),
      I2 => U3_C1(9),
      I3 => U3_Madd_spriteon1_addsub0000_cy(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C1(8),
      I2 => U3_Madd_spriteon1_addsub0000_cy(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C1(4),
      I2 => U3_C1(6),
      I3 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C1(5),
      I2 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(5)
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
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => screenstate_sig_hill5(1),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteonB4_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => screenstate_sig_hill4(0),
      O => U3_Mcompar_spriteonB4_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => screenstate_sig_hill1(1),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(8),
      I2 => U2_hcs(9),
      I3 => U3_Madd_spriteon2f_add0002_cy(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(4),
      I2 => U2_hcs(6),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(4),
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
  title_Mmux_M_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_init_M(13),
      I2 => sig_init_M(14),
      O => title_Mmux_M_mux0000_82_1798
    );
  title_Mmux_M_mux0000_9_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      O => N295
    );
  title_Mmux_M_mux0000_9 : LUT4
    generic map(
      INIT => X"5702"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_vcs(2),
      I2 => N295,
      I3 => sig_init_M(15),
      O => title_Mmux_M_mux0000_9_1803
    );
  title_Mmux_M_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_init_M(15),
      I2 => sig_init_M(14),
      O => title_Mmux_M_mux0000_73_1793
    );
  sig_gameA1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      I3 => screenstate_present_state_FSM_FFd1_1688,
      O => sig_gameA
    );
  buttons_gameRight1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => bounce_delay3(4),
      I2 => bounce_delay2(4),
      I3 => bounce_delay1(4),
      O => sig_gameRight
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000112_1593,
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(2),
      I3 => nes_counter_reg_cmp_eq0000125_1594,
      O => ja2_OBUF_1498
    );
  title_blue_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => title_spriteon,
      I1 => U2_vidon_and000039_747,
      I2 => U2_vidon_and0000117_742,
      I3 => title_B_1776,
      O => sig_titleBlue(0)
    );
  U3_spriteonB1_cmp_lt0000250_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(5),
      I2 => U2_vidon_and000080_751,
      I3 => U2_vcs(8),
      O => N297
    );
  U3_spriteonB1_cmp_lt0000250 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(0),
      I2 => N297,
      I3 => U2_vcs(1),
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_spriteonGrnd_and000064_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => U3_spriteonGrnd_and000047,
      O => N299
    );
  U3_spriteonGrnd_and000064 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => N299,
      I2 => U2_hcs(9),
      I3 => U2_hcs(8),
      O => U3_spriteonGrnd_and000064_1392
    );
  U3_spriteonB3_and000020 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(9),
      I2 => N301,
      I3 => U2_hcs(8),
      O => U3_spriteonB3_and000020_1370
    );
  U3_spriteonB4_and000041 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB3_cmp_le0000112_1372,
      I2 => U3_spriteonB3_cmp_le0000128_1373,
      O => U3_spriteonB4_and000041_1378
    );
  M1_0_3 : LUT4
    generic map(
      INIT => X"66E6"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => U2_vcs(1),
      I3 => M1_0_bdd2,
      O => M1_0_Q
    );
  M1_23_31 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => M1_23_bdd6
    );
  M1_23_51 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      I3 => rom1_addr(2),
      O => M1_23_bdd3
    );
  M1a_22_18 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M1_22_bdd0,
      O => M1a_22_18_98
    );
  M1_29_31 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      O => M1_29_bdd5
    );
  M1_27_21 : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      O => M1_27_bdd4
    );
  M1_21_48 : LUT4
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
  M1_29_74 : LUT4
    generic map(
      INIT => X"020F"
    )
    port map (
      I0 => M1_21_bdd8,
      I1 => U2_vcs(0),
      I2 => rom1_addr(3),
      I3 => U2_vcs(1),
      O => M1_29_74_73
    );
  M1_21_29 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      O => M1_21_bdd3
    );
  M2_0_81 : LUT4
    generic map(
      INIT => X"F9FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd18,
      I3 => U2_vcs(0),
      O => M2_0_bdd3
    );
  selector_blue_1_SW1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U3_M1a_mux0000,
      I1 => U3_spriteon1,
      I2 => U3_blue_and0003,
      I3 => U3_spriteonGrnd,
      O => N303
    );
  selector_blue_1_Q : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => sig_titleBlue(0),
      I2 => U3_N7,
      I3 => N303,
      O => blue_1_OBUF_1459
    );
  M1_22_0 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => M1_22_bdd0,
      I3 => U2_vcs(2),
      O => M1_22_0_27
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
      O => M1_22_11_28
    );
  selector_blue_0_63_SW0 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_M1a_mux0000,
      I1 => U3_N7,
      I2 => U3_blue_and0003,
      I3 => U3_spriteon1,
      O => N305
    );
  M1_22_42 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      O => M1_22_bdd7
    );
  M2_0_SW1 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_0_bdd3,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd7,
      O => N114
    );
  M2_1_52 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => M2_0_bdd7,
      I1 => M2_0_bdd13,
      I2 => U2_vcs(0),
      O => M2_1_bdd8
    );
  M2_1_42 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_1_bdd8,
      O => M2_1_bdd1
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N311,
      O => U3_Mmux_M1_mux0000_73_1153
    );
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N313,
      O => U3_Mmux_M1_mux0000_92_1166
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C1(8),
      I2 => U3_Madd_spriteon1_addsub0000_cy(7),
      I3 => U3_Madd_spriteon1_addsub0001_cy_7_Q,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(8)
    );
  M2a_5_75_SW0 : LUT4
    generic map(
      INIT => X"A828"
    )
    port map (
      I0 => M1_29_0_68,
      I1 => M2_0_bdd7,
      I2 => M2_0_bdd13,
      I3 => U2_vcs(0),
      O => N289
    );
  M2_24_21 : LUT4
    generic map(
      INIT => X"FF6B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => M2_24_bdd1
    );
  M1a_4_11 : LUT4
    generic map(
      INIT => X"9F9B"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M1a_4_bdd0
    );
  M1a_12_21 : LUT4
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
  M1_4_11 : LUT4
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
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N323,
      O => U3_Mmux_M1a_mux0000_9_1194
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N325,
      O => U3_Mmux_M1a_mux0000_73_1183
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N327,
      O => U3_Mmux_M1a_mux0000_85_1192
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_24_bdd0,
      I2 => N329,
      O => U3_Mmux_M2a_mux0000_8_1247
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_13_bdd1,
      I2 => N331,
      O => U3_Mmux_M2a_mux0000_73_1243
    );
  M2_5_62_SW0 : LUT4
    generic map(
      INIT => X"8121"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N335
    );
  M2_5_62 : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => N335,
      I3 => M2_0_bdd13,
      O => M2_5_62_179
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U2_hcs(6),
      I2 => U3_C1(4),
      I3 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(6)
    );
  M1_25_11 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_25_bdd0
    );
  M2_21_11 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M2_21_bdd0
    );
  M2_8_21 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M2_8_bdd1
    );
  M1_30_111_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => N345
    );
  M1_30_111 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => U2_vcs(1),
      I3 => N345,
      O => M1_30_111_77
    );
  M2a_3_19 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_2_bdd5,
      I2 => U2_vcs(2),
      I3 => M2_0_bdd11,
      O => M2a_3_19_227
    );
  M2a_2_66_SW0 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2a_1_bdd4,
      I2 => M2_1_bdd4,
      I3 => U2_vcs(1),
      O => N223
    );
  M2_3_106_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N229
    );
  M2a_7_32_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M2_0_bdd11,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => N285
    );
  M2_3_21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M2_3_bdd1
    );
  M2a_1_11 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd7,
      I2 => rom1_addr(4),
      I3 => U2_vcs(2),
      O => M2a_1_bdd0
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
  buttons_gameUp1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => bounce_delay3(5),
      I2 => bounce_delay2(5),
      I3 => bounce_delay1(5),
      O => sig_gameUp
    );
  buttons_gameLeft1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => bounce_delay3(7),
      I2 => bounce_delay2(7),
      I3 => bounce_delay1(7),
      O => U3_leftBTN_inv1_inv1
    );
  buttons_gameDown1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1688,
      I1 => bounce_delay3(6),
      I2 => bounce_delay2(6),
      I3 => bounce_delay1(6),
      O => sig_gameDown
    );
  U3_spriteon2_addsub0000_5_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(4),
      O => U3_spriteon2_addsub0000(5)
    );
  U3_spriteon2_addsub0000_8_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      O => U3_spriteon2_addsub0000(8)
    );
  M1_21_52 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_21_bdd8
    );
  M1_22_71 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1_22_bdd12
    );
  M1_22_210 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_21_bdd5,
      O => M1_22_bdd4
    );
  M2_2_139_SW0 : LUT4
    generic map(
      INIT => X"0F09"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd7,
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N171
    );
  selector_green_2_SW2 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => U3_N3,
      I1 => U3_blue_and0003,
      I2 => U3_N7,
      I3 => U3_spriteonGrnd,
      O => N201
    );
  title_Mmux_M_mux0000_84 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      O => title_Mmux_M_mux0000_84_1800
    );
  M2_1_93_SW0 : LUT4
    generic map(
      INIT => X"83FD"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd7,
      I3 => U2_vcs(0),
      O => N357
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C1(5),
      I2 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(5)
    );
  M1_25_35_SW0 : LUT4
    generic map(
      INIT => X"6FF9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => M1_22_bdd9,
      O => N255
    );
  title_Mmux_M_mux0000_83 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_hcs(0),
      O => title_Mmux_M_mux0000_83_1799
    );
  M2a_6_42 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N291,
      I2 => M2_6_bdd0,
      I3 => rom1_addr(4),
      O => M2a_6_Q
    );
  M2_2_47_SW0 : LUT3
    generic map(
      INIT => X"B6"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => U2_vcs(0),
      I2 => M2_0_bdd7,
      O => N359
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C2(8),
      I2 => U3_Madd_spriteon2f_add0002_cy(7),
      I3 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_C2(5),
      I2 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      I3 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(8)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(4),
      I2 => U2_hcs(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(5)
    );
  M1_24_107_SW0_SW0 : LUT4
    generic map(
      INIT => X"FE97"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      I3 => U2_vcs(2),
      O => N343
    );
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N361,
      O => U3_Mmux_M1a_mux0000_92_1196
    );
  M2_10_22_SW1 : LUT4
    generic map(
      INIT => X"DFFB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd13,
      I3 => U2_vcs(0),
      O => N363
    );
  M2a_19_1 : LUT4
    generic map(
      INIT => X"9207"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2a_10_1
    );
  M2a_26_2 : LUT4
    generic map(
      INIT => X"6604"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M2a_26_2_220
    );
  M1a_15_SW0 : LUT4
    generic map(
      INIT => X"9286"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2a_16_1
    );
  M1_25_21 : LUT4
    generic map(
      INIT => X"7AAF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M1_25_bdd1
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"33CE"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(2),
      O => M1_22_bdd0
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
  M1a_21_26_SW1 : LUT4
    generic map(
      INIT => X"999F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => N337
    );
  M1_28_12_SW1 : LUT4
    generic map(
      INIT => X"6626"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => N365
    );
  M1_28_12 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N365,
      I2 => U2_vcs(3),
      I3 => rom1_addr(4),
      O => M1_28_12_61
    );
  M2a_24_11 : LUT4
    generic map(
      INIT => X"21DF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => M2a_24_bdd0
    );
  M2_13_21 : LUT4
    generic map(
      INIT => X"7F76"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M2_13_bdd1
    );
  M2_21_6 : LUT4
    generic map(
      INIT => X"2820"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => M2_19_6
    );
  M2_1_134_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd7,
      I3 => rom1_addr(2),
      O => N321
    );
  M1a_28_70_SW0_SW1 : LUT4
    generic map(
      INIT => X"8E9F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => N367
    );
  M2a_13_21 : LUT4
    generic map(
      INIT => X"D809"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => rom1_addr(4),
      I3 => U2_vcs(0),
      O => M2a_13_bdd1
    );
  M1a_27_139_SW0 : LUT4
    generic map(
      INIT => X"8A07"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N369
    );
  M1a_14_11 : LUT4
    generic map(
      INIT => X"A809"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M1a_14_bdd0
    );
  M2a_16_2 : LUT4
    generic map(
      INIT => X"37F6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M2a_16_2_205
    );
  M1_12_11 : LUT4
    generic map(
      INIT => X"F247"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1_12_bdd0
    );
  M1_10_11 : LUT4
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
  M1a_12_11 : LUT4
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
  M1a_5_21 : LUT4
    generic map(
      INIT => X"8485"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1a_5_21_125
    );
  M1_10_21 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_10_bdd4
    );
  M1a_5_22 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => M1_31_65
    );
  M1_10_31 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_10_bdd7
    );
  M1_12_21 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_12_bdd3
    );
  M2_10_41 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => M2_10_bdd1
    );
  M1_11_21 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      O => M1_11_bdd3
    );
  M1_14_11 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_14_bdd0
    );
  M2_13_41 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => M2_13_bdd5
    );
  M1_0_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_0_bdd0
    );
  M1_0_21 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_0_bdd2
    );
  M1a_27_145_SW1 : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => M1_27_bdd0,
      I3 => U2_vcs(2),
      O => N377
    );
  M1a_27_145 : LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => N369,
      I1 => N249,
      I2 => rom1_addr(4),
      I3 => N377,
      O => M1a_27_Q
    );
  M1a_1_20 : LUT4
    generic map(
      INIT => X"830F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_1_20_93
    );
  title_Mmux_M_mux0000_5_f5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(0),
      O => title_Mmux_M_mux0000_5_f5_rt_1783
    );
  title_Mmux_M_mux0000_6_f5_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(0),
      O => title_Mmux_M_mux0000_6_f5_0_rt_1789
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_1518
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  U3_q_17_BUFG : BUFG
    port map (
      I => U3_q_171,
      O => U3_q(17)
    );
  U1_q_17_BUFG : BUFG
    port map (
      I => U1_q_171,
      O => U1_q(17)
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
      I => U3_Q_0_1282,
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
      I => ja1_IBUF_1496,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_1485,
      O => U2_clr_inv
    );
  screenstate_sig_hill5_mux0001_6_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill5(1),
      O => screenstate_sig_hill5_mux0001(6)
    );
  screenstate_sig_hill4_mux0001_7_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill4(0),
      O => screenstate_sig_hill4_mux0001(7)
    );
  screenstate_sig_hill2_mux0001_5_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill2(2),
      O => screenstate_sig_hill2_mux0001(5)
    );
  screenstate_sig_hill1_mux0001_6_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill1(1),
      O => screenstate_sig_hill1_mux0001(6)
    );
  U3_Madd_spriteon2f_add0002_xor_4_11_INV_0 : INV
    port map (
      I => U3_C2(4),
      O => U3_spriteon2f_add0002(4)
    );
  U2_Mcount_hcs_lut_0_1_INV_0 : INV
    port map (
      I => U2_hcs(0),
      O => U2_Mcount_hcs_lut_0_1
    );
  U2_Mcount_vcs_lut_0_1_INV_0 : INV
    port map (
      I => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  screenstate_Mcount_sig_hill3_lut_0_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill3(0),
      O => screenstate_Mcount_sig_hill3_lut_0_1
    );
  screenstate_sig_hill4_mux0001_4_1 : MUXF5
    port map (
      I0 => N379,
      I1 => N380,
      S => screenstate_sig_hill4_mux0001_4_bdd2,
      O => screenstate_sig_hill4_mux0001(4)
    );
  screenstate_sig_hill4_mux0001_4_1_F : LUT4
    generic map(
      INIT => X"2AA9"
    )
    port map (
      I0 => screenstate_sig_hill4(3),
      I1 => screenstate_sig_hill4(2),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(0),
      O => N379
    );
  screenstate_sig_hill4_mux0001_4_1_G : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => screenstate_sig_hill4(3),
      I1 => screenstate_sig_hill4(2),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(0),
      O => N380
    );
  M2_8_71 : MUXF5
    port map (
      I0 => N381,
      I1 => N382,
      S => rom1_addr(3),
      O => M2_8_Q
    );
  M2_8_71_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_8_bdd1,
      I2 => M2_8_16_189,
      I3 => M2_8_25_190,
      O => N381
    );
  M2_8_71_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_8_bdd0,
      I2 => M1_11_bdd3,
      O => N382
    );
  M2_5_154 : MUXF5
    port map (
      I0 => N383,
      I1 => N384,
      S => rom1_addr(3),
      O => M2_5_Q
    );
  M2_5_154_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_10_bdd1,
      I2 => M2_5_29_178,
      I3 => M2_5_62_179,
      O => N383
    );
  M2_5_154_G : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_5_bdd0,
      I2 => M1_26_140,
      O => N384
    );
  M2a_4_150 : MUXF5
    port map (
      I0 => N385,
      I1 => N386,
      S => U2_vcs(4),
      O => M2a_4_150_230
    );
  M2a_4_150_F : LUT4
    generic map(
      INIT => X"FF93"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M2_4_bdd0,
      O => N385
    );
  M2a_4_150_G : LUT4
    generic map(
      INIT => X"93F3"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M1_10_bdd7,
      O => N386
    );
  M2a_9_55 : MUXF5
    port map (
      I0 => N387,
      I1 => N388,
      S => rom1_addr(3),
      O => M2a_9_Q
    );
  M2a_9_55_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_9_14_240,
      I2 => M2_10_bdd1,
      O => N387
    );
  M2a_9_55_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_9_bdd0,
      I2 => M2_13_bdd5,
      O => N388
    );
  M2_7_76 : MUXF5
    port map (
      I0 => N389,
      I1 => N390,
      S => rom1_addr(3),
      O => M2_7_Q
    );
  M2_7_76_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_7_35_186,
      I1 => rom1_addr(4),
      I2 => M2_10_bdd1,
      O => N389
    );
  M2_7_76_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_7_bdd0,
      I2 => M1_12_bdd3,
      O => N390
    );
  M2_6_70 : MUXF5
    port map (
      I0 => N391,
      I1 => N392,
      S => rom1_addr(3),
      O => M2_6_Q
    );
  M2_6_70_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_6_31_182,
      I1 => rom1_addr(4),
      I2 => M2_10_bdd1,
      O => N391
    );
  M2_6_70_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_6_bdd0,
      I2 => M1_25_bdd0,
      O => N392
    );
  M2a_4_101 : MUXF5
    port map (
      I0 => N393,
      I1 => N394,
      S => U2_vcs(1),
      O => M2a_4_101_229
    );
  M2a_4_101_F : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(0),
      I2 => N199,
      O => N393
    );
  M2a_4_101_G : LUT4
    generic map(
      INIT => X"ACA8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(0),
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => N394
    );
  U3_spriteonB5_and000041 : MUXF5
    port map (
      I0 => N395,
      I1 => N396,
      S => U2_hcs(4),
      O => U3_spriteonB5_and000041_1381
    );
  U3_spriteonB5_and000041_F : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => N243,
      O => N395
    );
  U3_spriteonB5_and000041_G : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => N396
    );
  M2_21_36 : MUXF5
    port map (
      I0 => N397,
      I1 => N398,
      S => rom1_addr(3),
      O => M2_21_Q
    );
  M2_21_36_F : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => M1_10_bdd7,
      I3 => M2_19_6,
      O => N397
    );
  M2_21_36_G : LUT4
    generic map(
      INIT => X"AF23"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_10_bdd4,
      I2 => M2_21_bdd0,
      I3 => M1_31_65,
      O => N398
    );
  M2_2_160 : MUXF5
    port map (
      I0 => N399,
      I1 => N400,
      S => rom1_addr(4),
      O => M2_2_Q
    );
  M2_2_160_F : LUT4
    generic map(
      INIT => X"BBB1"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N309,
      I2 => rom1_addr(2),
      I3 => N171,
      O => N399
    );
  M2_2_160_G : LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N309,
      I2 => M1_0_bdd0,
      I3 => M2_29_bdd0,
      O => N400
    );
  M1_31_78 : MUXF5
    port map (
      I0 => N401,
      I1 => N402,
      S => rom1_addr(3),
      O => M1_31_Q
    );
  M1_31_78_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N219,
      I2 => rom1_addr(4),
      I3 => M1_23_bdd3,
      O => N401
    );
  M1_31_78_G : LUT4
    generic map(
      INIT => X"0A02"
    )
    port map (
      I0 => M1_27_bdd4,
      I1 => U2_vcs(0),
      I2 => rom1_addr(4),
      I3 => U2_vcs(1),
      O => N402
    );
  M2_6_31 : MUXF5
    port map (
      I0 => N403,
      I1 => N404,
      S => U2_vcs(1),
      O => M2_6_31_182
    );
  M2_6_31_F : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd5,
      I2 => U2_vcs(4),
      I3 => M2_0_bdd13,
      O => N403
    );
  M2_6_31_G : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_1_bdd8,
      I2 => U2_vcs(4),
      O => N404
    );
  M1_30_49 : MUXF5
    port map (
      I0 => N405,
      I1 => N406,
      S => U2_vcs(0),
      O => M1_30_49_78
    );
  M1_30_49_F : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_22_bdd9,
      O => N405
    );
  M1_30_49_G : LUT4
    generic map(
      INIT => X"F6FE"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N406
    );
  M1_27_115 : MUXF5
    port map (
      I0 => N407,
      I1 => N408,
      S => U2_vcs(0),
      O => M1_27_115_56
    );
  M1_27_115_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      O => N407
    );
  M1_27_115_G : LUT4
    generic map(
      INIT => X"0092"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(1),
      O => N408
    );
  M1a_22_44_SW0 : MUXF5
    port map (
      I0 => N409,
      I1 => N410,
      S => U2_vcs(1),
      O => N271
    );
  M1a_22_44_SW0_F : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N409
    );
  M1a_22_44_SW0_G : LUT4
    generic map(
      INIT => X"F666"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => M1_21_bdd8,
      O => N410
    );
  U3_spriteonB3_and000020_SW0 : MUXF5
    port map (
      I0 => N411,
      I1 => N412,
      S => U2_hcs(6),
      O => N301
    );
  U3_spriteonB3_and000020_SW0_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(3),
      O => N411
    );
  U3_spriteonB3_and000020_SW0_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(5),
      I2 => U3_spriteonB3_cmp_le0000128_1373,
      I3 => U2_hcs(7),
      O => N412
    );
  selector_blue_0_63 : MUXF5
    port map (
      I0 => N413,
      I1 => N414,
      S => screenstate_present_state_FSM_FFd1_1688,
      O => blue_0_OBUF_1458
    );
  selector_blue_0_63_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => title_spriteon,
      I1 => U2_vidon_and000039_747,
      I2 => U2_vidon_and0000117_742,
      I3 => title_B_1776,
      O => N413
    );
  selector_blue_0_63_G : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonGrnd,
      I2 => N305,
      I3 => N173,
      O => N414
    );
  selector_red_2_1 : MUXF5
    port map (
      I0 => N415,
      I1 => N416,
      S => screenstate_present_state_FSM_FFd1_1688,
      O => red_1_OBUF_1647
    );
  selector_red_2_1_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => title_spriteon,
      I1 => U2_vidon_and000039_747,
      I2 => U2_vidon_and0000117_742,
      I3 => title_B_1776,
      O => N415
    );
  selector_red_2_1_G : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_N7,
      I2 => N111,
      I3 => U3_N6,
      O => N416
    );
  M1_25_75 : MUXF5
    port map (
      I0 => N417,
      I1 => N418,
      S => U2_vcs(0),
      O => M1_25_75_45
    );
  M1_25_75_F : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_22_bdd12,
      I2 => N255,
      I3 => rom1_addr(3),
      O => N417
    );
  M1_25_75_G : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => U2_vcs(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N418
    );
  M1a_25_36_SW0 : MUXF5
    port map (
      I0 => N419,
      I1 => N420,
      S => U2_vcs(1),
      O => N215
    );
  M1a_25_36_SW0_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => M1a_22_bdd0,
      I2 => M1_25_bdd1,
      O => N419
    );
  M1a_25_36_SW0_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1a_24_bdd1,
      I3 => M1_25_bdd1,
      O => N420
    );
  selector_red_0_69 : MUXF5
    port map (
      I0 => N421,
      I1 => N422,
      S => screenstate_present_state_FSM_FFd1_1688,
      O => red_0_OBUF_1646
    );
  selector_red_0_69_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => title_spriteon,
      I1 => U2_vidon_and000039_747,
      I2 => U2_vidon_and0000117_742,
      I3 => title_B_1776,
      O => N421
    );
  selector_red_0_69_G : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_N7,
      I2 => selector_red_0_18_1767,
      I3 => U3_N6,
      O => N422
    );
  M2a_22_48 : MUXF5
    port map (
      I0 => N423,
      I1 => N424,
      S => U2_vcs(3),
      O => M2a_22_Q
    );
  M2a_22_48_F : LUT4
    generic map(
      INIT => X"36EC"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N423
    );
  M2a_22_48_G : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => M1_10_bdd7,
      O => N424
    );
  M1a_9_30 : MUXF5
    port map (
      I0 => N425,
      I1 => N426,
      S => U2_vcs(3),
      O => M1a_9_Q
    );
  M1a_9_30_F : LUT4
    generic map(
      INIT => X"36EC"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N425
    );
  M1a_9_30_G : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => M1_10_bdd7,
      O => N426
    );
  M2a_6_42_SW0 : MUXF5
    port map (
      I0 => N427,
      I1 => N428,
      S => U2_vcs(1),
      O => N291
    );
  M2a_6_42_SW0_F : LUT4
    generic map(
      INIT => X"50EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_0_bdd7,
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N427
    );
  M2a_6_42_SW0_G : LUT4
    generic map(
      INIT => X"BA32"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd11,
      I3 => U2_vcs(0),
      O => N428
    );
  M2_2_160_SW0 : MUXF5
    port map (
      I0 => N429,
      I1 => N430,
      S => U2_vcs(1),
      O => N309
    );
  M2_2_160_SW0_F : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => N359,
      I2 => M2_2_bdd5,
      I3 => U2_vcs(4),
      O => N429
    );
  M2_2_160_SW0_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => M2_2_bdd8,
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      O => N430
    );
  M2a_18_30 : MUXF5
    port map (
      I0 => N431,
      I1 => N432,
      S => U2_vcs(2),
      O => M2a_18_Q
    );
  M2a_18_30_F : LUT4
    generic map(
      INIT => X"2F6E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N431
    );
  M2a_18_30_G : LUT4
    generic map(
      INIT => X"1057"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N432
    );
  U3_Mmux_M2_mux0000_8_SW0 : MUXF5
    port map (
      I0 => N433,
      I1 => N434,
      S => U2_vcs(2),
      O => N257
    );
  U3_Mmux_M2_mux0000_8_SW0_F : LUT4
    generic map(
      INIT => X"10EA"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_xpix2(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N433
    );
  U3_Mmux_M2_mux0000_8_SW0_G : LUT4
    generic map(
      INIT => X"65F5"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N434
    );
  M1_8_Q : MUXF5
    port map (
      I0 => N435,
      I1 => N436,
      S => U2_vcs(2),
      O => M1_8_Q_83
    );
  M1_8_F : LUT4
    generic map(
      INIT => X"54D2"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N435
    );
  M1_8_G : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N436
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N437,
      I1 => N438,
      S => U2_vcs(2),
      O => M2_23_Q_159
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"54D2"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N437
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N438
    );
  M2_9_109 : MUXF5
    port map (
      I0 => N439,
      I1 => N440,
      S => rom1_addr(4),
      O => M2_9_Q
    );
  M2_9_109_F : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_9_bdd0,
      I2 => N221,
      O => N439
    );
  M2_9_109_G : LUT4
    generic map(
      INIT => X"42E6"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N440
    );
  M1a_23_59 : MUXF5
    port map (
      I0 => N441,
      I1 => N442,
      S => rom1_addr(4),
      O => M1a_23_Q
    );
  M1a_23_59_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_23_10_101,
      I2 => M1_23_bdd1,
      O => N441
    );
  M1a_23_59_G : LUT4
    generic map(
      INIT => X"1191"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N442
    );
  M2a_8_64 : MUXF5
    port map (
      I0 => N443,
      I1 => N444,
      S => rom1_addr(4),
      O => M2a_8_Q
    );
  M2a_8_64_F : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N227,
      I2 => M2_8_bdd0,
      O => N443
    );
  M2a_8_64_G : LUT4
    generic map(
      INIT => X"1191"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N444
    );
  M1a_24_65 : MUXF5
    port map (
      I0 => N445,
      I1 => N446,
      S => rom1_addr(4),
      O => M1a_24_Q
    );
  M1a_24_65_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_24_27_103,
      I2 => M1_24_bdd0,
      O => N445
    );
  M1a_24_65_G : LUT4
    generic map(
      INIT => X"0D29"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N446
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => N447,
      I1 => N448,
      S => U2_vcs(2),
      O => M2_22_Q
    );
  M2_22_f5_F : LUT4
    generic map(
      INIT => X"0D06"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N447
    );
  M2_22_f5_G : LUT4
    generic map(
      INIT => X"6664"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N448
    );
  M2_4_91 : MUXF5
    port map (
      I0 => N449,
      I1 => N450,
      S => U2_vcs(1),
      O => M2_4_91_175
    );
  M2_4_91_F : LUT4
    generic map(
      INIT => X"9402"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd7,
      I3 => U2_vcs(0),
      O => N449
    );
  M2_4_91_G : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd7,
      I2 => M2_0_bdd13,
      I3 => U2_vcs(0),
      O => N450
    );
  M2a_9_14 : MUXF5
    port map (
      I0 => N451,
      I1 => N452,
      S => U2_vcs(2),
      O => M2a_9_14_240
    );
  M2a_9_14_F : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd13,
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => N451
    );
  M2a_9_14_G : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd7,
      I3 => rom1_addr(4),
      O => N452
    );
  U3_Mmux_M1_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N453,
      I1 => N454,
      S => U2_vcs(2),
      O => N263
    );
  U3_Mmux_M1_mux0000_85_SW0_F : LUT4
    generic map(
      INIT => X"C6FC"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N453
    );
  U3_Mmux_M1_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N454
    );
  M1_22_35 : MUXF5
    port map (
      I0 => N455,
      I1 => N456,
      S => U2_vcs(1),
      O => M1_22_35_29
    );
  M1_22_35_F : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N455
    );
  M1_22_35_G : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_22_11_28,
      O => N456
    );
  M2_19_36 : MUXF5
    port map (
      I0 => N457,
      I1 => N458,
      S => rom1_addr(3),
      O => M2_19_Q
    );
  M2_19_36_F : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => M1_0_bdd2,
      I3 => M2_19_6,
      O => N457
    );
  M2_19_36_G : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_12_bdd3,
      I2 => M1_0_bdd2,
      I3 => U2_vcs(1),
      O => N458
    );
  M1a_26_128 : MUXF5
    port map (
      I0 => N459,
      I1 => N460,
      S => rom1_addr(4),
      O => M1a_26_Q
    );
  M1a_26_128_F : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_26_13,
      I2 => M1a_26_54,
      I3 => M1_26_bdd0,
      O => N459
    );
  M1a_26_128_G : LUT4
    generic map(
      INIT => X"8127"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N460
    );
  M1a_21_51 : MUXF5
    port map (
      I0 => N461,
      I1 => N462,
      S => U2_vcs(1),
      O => M1a_21_Q
    );
  M1a_21_51_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => M1a_12_bdd0,
      I2 => U2_vcs(3),
      I3 => N337,
      O => N461
    );
  M1a_21_51_G : LUT4
    generic map(
      INIT => X"174E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => M1a_12_bdd0,
      I3 => U2_vcs(2),
      O => N462
    );
  M2_9_109_SW0 : MUXF5
    port map (
      I0 => N463,
      I1 => N464,
      S => U2_vcs(1),
      O => N221
    );
  M2_9_109_SW0_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd7,
      O => N463
    );
  M2_9_109_SW0_G : LUT4
    generic map(
      INIT => X"1440"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd7,
      O => N464
    );
  M1_29_126 : MUXF5
    port map (
      I0 => N465,
      I1 => N466,
      S => U2_vcs(4),
      O => M1_29_126_69
    );
  M1_29_126_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => N465
    );
  M1_29_126_G : LUT4
    generic map(
      INIT => X"93F3"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M1_0_bdd2,
      O => N466
    );
  M2a_7_72 : MUXF5
    port map (
      I0 => N467,
      I1 => N468,
      S => rom1_addr(4),
      O => M2a_7_Q
    );
  M2a_7_72_F : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_7_17_235,
      I2 => N285,
      I3 => M2_7_bdd0,
      O => N467
    );
  M2a_7_72_G : LUT4
    generic map(
      INIT => X"0D29"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N468
    );
  M2_10_59 : MUXF5
    port map (
      I0 => N469,
      I1 => N470,
      S => rom1_addr(3),
      O => M2_10_Q
    );
  M2_10_59_F : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => N363,
      I2 => rom1_addr(4),
      I3 => M2_10_bdd1,
      O => N469
    );
  M2_10_59_G : LUT4
    generic map(
      INIT => X"199B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(2),
      O => N470
    );
  M1_1_74 : MUXF5
    port map (
      I0 => N471,
      I1 => N472,
      S => U2_vcs(3),
      O => M1_1_Q
    );
  M1_1_74_F : LUT4
    generic map(
      INIT => X"80A8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N471
    );
  M1_1_74_G : LUT4
    generic map(
      INIT => X"1337"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N472
    );
  M2_1_137 : MUXF5
    port map (
      I0 => N473,
      I1 => N474,
      S => U2_vcs(1),
      O => M2_1_Q
    );
  M2_1_137_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => N321,
      I2 => N357,
      I3 => U2_vcs(4),
      O => N473
    );
  M2_1_137_G : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M2_1_bdd8,
      I3 => U2_vcs(4),
      O => N474
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N475,
      I1 => N476,
      S => U2_vcs(2),
      O => M1_11_Q_7
    );
  M1_11_F : LUT4
    generic map(
      INIT => X"0380"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N475
    );
  M1_11_G : LUT4
    generic map(
      INIT => X"3268"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N476
    );
  M1_18_Q : MUXF5
    port map (
      I0 => N477,
      I1 => N478,
      S => U2_vcs(2),
      O => M1_18_Q_15
    );
  M1_18_F : LUT4
    generic map(
      INIT => X"0829"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N477
    );
  M1_18_G : LUT4
    generic map(
      INIT => X"5498"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N478
    );
  M2_24_91 : MUXF5
    port map (
      I0 => N479,
      I1 => N480,
      S => U2_vcs(3),
      O => M2_24_Q
    );
  M2_24_91_F : LUT4
    generic map(
      INIT => X"A292"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N479
    );
  M2_24_91_G : LUT4
    generic map(
      INIT => X"1426"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N480
    );
  M2a_5_119 : MUXF5
    port map (
      I0 => N481,
      I1 => N482,
      S => rom1_addr(4),
      O => M2a_5_Q
    );
  M2a_5_119_F : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_5_54_232,
      I2 => N289,
      I3 => M2_5_bdd0,
      O => N481
    );
  M2a_5_119_G : LUT4
    generic map(
      INIT => X"3125"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(3),
      I2 => U2_vcs(1),
      I3 => rom1_addr(2),
      O => N482
    );
  M2_3_114 : MUXF5
    port map (
      I0 => N483,
      I1 => N484,
      S => rom1_addr(4),
      O => M2_3_Q
    );
  M2_3_114_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_3_20_171,
      I2 => M2_3_38_172,
      I3 => N229,
      O => N483
    );
  M2_3_114_G : LUT4
    generic map(
      INIT => X"8C9A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => rom1_addr(3),
      I3 => U2_vcs(0),
      O => N484
    );
  M1a_3_f5 : MUXF5
    port map (
      I0 => N485,
      I1 => N486,
      S => U2_vcs(2),
      O => M1a_3_Q
    );
  M1a_3_f5_F : LUT4
    generic map(
      INIT => X"7020"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N485
    );
  M1a_3_f5_G : LUT4
    generic map(
      INIT => X"4416"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N486
    );
  M1_9_f5 : MUXF5
    port map (
      I0 => N487,
      I1 => N488,
      S => U2_vcs(2),
      O => M1_9_Q
    );
  M1_9_f5_F : LUT4
    generic map(
      INIT => X"0D06"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N487
    );
  M1_9_f5_G : LUT4
    generic map(
      INIT => X"6664"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N488
    );
  M1_3_f5 : MUXF5
    port map (
      I0 => N489,
      I1 => N490,
      S => U2_vcs(2),
      O => M1_3_Q
    );
  M1_3_f5_F : LUT4
    generic map(
      INIT => X"2A3A"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N489
    );
  M1_3_f5_G : LUT4
    generic map(
      INIT => X"11E9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N490
    );
  M2a_19_f51 : MUXF5
    port map (
      I0 => N491,
      I1 => N492,
      S => U2_vcs(2),
      O => M2a_19_Q
    );
  M2a_19_f51_F : LUT4
    generic map(
      INIT => X"5DF6"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N491
    );
  M2a_19_f51_G : LUT4
    generic map(
      INIT => X"01DD"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => N492
    );
  M2_11_f5 : MUXF5
    port map (
      I0 => N493,
      I1 => N494,
      S => U2_vcs(2),
      O => M2_11_Q
    );
  M2_11_f5_F : LUT4
    generic map(
      INIT => X"0684"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N493
    );
  M2_11_f5_G : LUT4
    generic map(
      INIT => X"327F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N494
    );
  M1a_24_27 : MUXF5
    port map (
      I0 => N495,
      I1 => N496,
      S => U2_vcs(1),
      O => M1a_24_27_103
    );
  M1a_24_27_F : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(0),
      I3 => M1_21_bdd5,
      O => N495
    );
  M1a_24_27_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd5,
      I2 => U2_vcs(2),
      I3 => M1_22_bdd9,
      O => N496
    );
  U3_Mmux_M1a_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N497,
      I1 => N498,
      S => U2_vcs(2),
      O => N327
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
      O => N497
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N498
    );
  M1_19_Q : MUXF5
    port map (
      I0 => N499,
      I1 => N500,
      S => U2_vcs(2),
      O => M1_19_Q_16
    );
  M1_19_F : LUT4
    generic map(
      INIT => X"2382"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N499
    );
  M1_19_G : LUT4
    generic map(
      INIT => X"32CA"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N500
    );
  M2_18_Q : MUXF5
    port map (
      I0 => N501,
      I1 => N502,
      S => U2_vcs(4),
      O => M2_18_Q_148
    );
  M2_18_F : LUT4
    generic map(
      INIT => X"8D09"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => M1_0_bdd2,
      I3 => U2_vcs(2),
      O => N501
    );
  M2_18_G : LUT4
    generic map(
      INIT => X"1D29"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N502
    );
  M1_13_Q : MUXF5
    port map (
      I0 => N503,
      I1 => N504,
      S => U2_vcs(2),
      O => M1_13_Q_12
    );
  M1_13_F : LUT4
    generic map(
      INIT => X"2283"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N503
    );
  M1_13_G : LUT4
    generic map(
      INIT => X"6720"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N504
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N505,
      I1 => N506,
      S => U2_vcs(3),
      O => N203
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"DD98"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(0),
      O => N505
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"DFEB"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N506
    );
  M1_20_Q : MUXF5
    port map (
      I0 => N507,
      I1 => N508,
      S => U2_vcs(0),
      O => M1_20_Q_18
    );
  M1_20_F : LUT4
    generic map(
      INIT => X"7590"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N507
    );
  M1_20_G : LUT4
    generic map(
      INIT => X"3712"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N508
    );
  M2_30_f5 : MUXF5
    port map (
      I0 => N509,
      I1 => N510,
      S => U2_vcs(4),
      O => M2_30_Q
    );
  M2_30_f5_F : LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N509
    );
  M2_30_f5_G : LUT4
    generic map(
      INIT => X"0C14"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N510
    );
  M2_20_f5 : MUXF5
    port map (
      I0 => N511,
      I1 => N512,
      S => U2_vcs(2),
      O => M2_20_Q
    );
  M2_20_f5_F : LUT4
    generic map(
      INIT => X"0380"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N511
    );
  M2_20_f5_G : LUT4
    generic map(
      INIT => X"3268"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N512
    );
  U3_Mmux_M2a_mux0000_8_SW0 : MUXF5
    port map (
      I0 => N513,
      I1 => N514,
      S => U2_vcs(1),
      O => N329
    );
  U3_Mmux_M2a_mux0000_8_SW0_F : LUT4
    generic map(
      INIT => X"090F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_xpix2(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(4),
      O => N513
    );
  U3_Mmux_M2a_mux0000_8_SW0_G : LUT4
    generic map(
      INIT => X"820A"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(3),
      O => N514
    );
  M1_25_141 : MUXF5
    port map (
      I0 => N515,
      I1 => N516,
      S => rom1_addr(4),
      O => M1_25_Q
    );
  M1_25_141_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_25_75_45,
      I2 => M1_25_bdd1,
      O => N515
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
      O => N516
    );
  M1a_11_f51 : MUXF5
    port map (
      I0 => N517,
      I1 => N518,
      S => U2_vcs(2),
      O => M1a_11_Q
    );
  M1a_11_f51_F : LUT4
    generic map(
      INIT => X"6E7E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N517
    );
  M1a_11_f51_G : LUT4
    generic map(
      INIT => X"4117"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N518
    );
  M1a_10_47 : MUXF5
    port map (
      I0 => N519,
      I1 => N520,
      S => U2_vcs(2),
      O => M1a_10_Q
    );
  M1a_10_47_F : LUT4
    generic map(
      INIT => X"4E7E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N519
    );
  M1a_10_47_G : LUT4
    generic map(
      INIT => X"4113"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N520
    );
  U3_Mmux_M1_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N521,
      I1 => N522,
      S => U2_vcs(2),
      O => N311
    );
  U3_Mmux_M1_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"E2E7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix1(0),
      O => N521
    );
  U3_Mmux_M1_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"F171"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U3_xpix1(0),
      O => N522
    );
  M2_28_Q : MUXF5
    port map (
      I0 => N523,
      I1 => N524,
      S => U2_vcs(3),
      O => M2_28_Q_163
    );
  M2_28_F : LUT4
    generic map(
      INIT => X"C984"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N523
    );
  M2_28_G : LUT4
    generic map(
      INIT => X"1357"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N524
    );
  M1a_28_70 : MUXF5
    port map (
      I0 => N525,
      I1 => N526,
      S => U2_vcs(4),
      O => M1a_28_Q
    );
  M1a_28_70_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => N367,
      O => N525
    );
  M1a_28_70_G : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N526
    );
  M1_26_176 : MUXF5
    port map (
      I0 => N527,
      I1 => N528,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_176_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_53,
      I2 => M1_26_30_52,
      I3 => M1_26_bdd0,
      O => N527
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
      O => N528
    );
  M1_27_231 : MUXF5
    port map (
      I0 => N529,
      I1 => N530,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_231_F : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N225,
      I2 => M1_27_bdd0,
      I3 => M1_27_115_56,
      O => N529
    );
  M1_27_231_G : LUT4
    generic map(
      INIT => X"1958"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N530
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N531,
      I1 => N532,
      S => U2_vcs(2),
      O => M1a_20_Q_95
    );
  M1a_20_F : LUT4
    generic map(
      INIT => X"6A7A"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N531
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N532
    );
  M1_2_1 : MUXF5
    port map (
      I0 => N533,
      I1 => N534,
      S => U2_vcs(2),
      O => M1_2_Q
    );
  M1_2_1_F : LUT4
    generic map(
      INIT => X"7D20"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N533
    );
  M1_2_1_G : LUT4
    generic map(
      INIT => X"2674"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N534
    );
  M1_10_f5 : MUXF5
    port map (
      I0 => N535,
      I1 => N536,
      S => U2_vcs(2),
      O => M1_10_Q
    );
  M1_10_f5_F : LUT4
    generic map(
      INIT => X"5810"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N535
    );
  M1_10_f5_G : LUT4
    generic map(
      INIT => X"326C"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N536
    );
  M1a_18_31 : MUXF5
    port map (
      I0 => N537,
      I1 => N538,
      S => U2_vcs(2),
      O => M1a_18_Q
    );
  M1a_18_31_F : LUT4
    generic map(
      INIT => X"5DF6"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N537
    );
  M1a_18_31_G : LUT4
    generic map(
      INIT => X"1217"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => N538
    );
  M1_12_Q : MUXF5
    port map (
      I0 => N539,
      I1 => N540,
      S => U2_vcs(2),
      O => M1_12_Q_9
    );
  M1_12_F : LUT4
    generic map(
      INIT => X"0829"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N539
    );
  M1_12_G : LUT4
    generic map(
      INIT => X"0A4C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N540
    );
  U3_Mmux_M1_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N541,
      I1 => N542,
      S => U2_vcs(3),
      O => N261
    );
  U3_Mmux_M1_mux0000_9_SW0_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => N541
    );
  U3_Mmux_M1_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"7D79"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U3_xpix1(0),
      O => N542
    );
  M1_24_107 : MUXF5
    port map (
      I0 => N543,
      I1 => N544,
      S => rom1_addr(4),
      O => M1_24_Q
    );
  M1_24_107_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_24_bdd0,
      I2 => N343,
      I3 => U2_vcs(0),
      O => N543
    );
  M1_24_107_G : LUT4
    generic map(
      INIT => X"0DB8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N544
    );
  U3_Mmux_M1a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N545,
      I1 => N546,
      S => U3_xpix1(0),
      O => N323
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
      O => N545
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
      O => N546
    );
  U3_Mmux_M1a_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N547,
      I1 => N548,
      S => U2_vcs(2),
      O => N361
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"4536"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix1(0),
      O => N547
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"8889"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(0),
      O => N548
    );
  M1a_8_1 : MUXF5
    port map (
      I0 => N549,
      I1 => N550,
      S => U2_vcs(3),
      O => M1a_8_Q
    );
  M1a_8_1_F : LUT4
    generic map(
      INIT => X"4448"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N549
    );
  M1a_8_1_G : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      O => N550
    );
  M2a_23_Q : MUXF5
    port map (
      I0 => N551,
      I1 => N552,
      S => U2_vcs(3),
      O => M2a_23_Q_214
    );
  M2a_23_F : LUT4
    generic map(
      INIT => X"4448"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N551
    );
  M2a_23_G : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      O => N552
    );
  M2a_12_33 : MUXF5
    port map (
      I0 => N553,
      I1 => N554,
      S => U2_vcs(3),
      O => M2a_12_Q
    );
  M2a_12_33_F : LUT4
    generic map(
      INIT => X"26E6"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N553
    );
  M2a_12_33_G : LUT4
    generic map(
      INIT => X"0157"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N554
    );
  M1a_19_32 : MUXF5
    port map (
      I0 => N555,
      I1 => N556,
      S => U2_vcs(2),
      O => M1a_19_Q
    );
  M1a_19_32_F : LUT4
    generic map(
      INIT => X"26EE"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N555
    );
  M1a_19_32_G : LUT4
    generic map(
      INIT => X"1017"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N556
    );
  M2_4_190 : MUXF5
    port map (
      I0 => N557,
      I1 => N558,
      S => rom1_addr(4),
      O => M2_4_Q
    );
  M2_4_190_F : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_4_bdd0,
      I2 => M2_4_91_175,
      O => N557
    );
  M2_4_190_G : LUT4
    generic map(
      INIT => X"1958"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N558
    );
  M1_23_77 : MUXF5
    port map (
      I0 => N559,
      I1 => N560,
      S => rom1_addr(4),
      O => M1_23_Q
    );
  M1_23_77_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_23_bdd1,
      I2 => M1_23_20_36,
      I3 => M1_23_29_37,
      O => N559
    );
  M1_23_77_G : LUT4
    generic map(
      INIT => X"A72A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => rom1_addr(3),
      I3 => U2_vcs(2),
      O => N560
    );
  M2a_21_30 : MUXF5
    port map (
      I0 => N561,
      I1 => N562,
      S => U2_vcs(3),
      O => M2a_21_Q
    );
  M2a_21_30_F : LUT4
    generic map(
      INIT => X"276E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N561
    );
  M2a_21_30_G : LUT4
    generic map(
      INIT => X"3115"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N562
    );
  M2_14_Q : MUXF5
    port map (
      I0 => N563,
      I1 => N564,
      S => U2_vcs(3),
      O => M2_14_Q_146
    );
  M2_14_F : LUT4
    generic map(
      INIT => X"D809"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N563
    );
  M2_14_G : LUT4
    generic map(
      INIT => X"0C20"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N564
    );
  U3_Mmux_M2_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N565,
      I1 => N566,
      S => U2_vcs(1),
      O => N259
    );
  U3_Mmux_M2_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"9FBF"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U3_xpix2(0),
      O => N565
    );
  U3_Mmux_M2_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"90F5"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N566
    );
  U3_Mmux_M2a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N567,
      I1 => N568,
      S => U2_vcs(2),
      O => N331
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N567
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"8121"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N568
    );
  M2a_30_Q : MUXF5
    port map (
      I0 => N569,
      I1 => N570,
      S => U2_vcs(3),
      O => M2a_30_Q_225
    );
  M2a_30_F : LUT4
    generic map(
      INIT => X"7A2A"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N569
    );
  M2a_30_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N570
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N571,
      I1 => N572,
      S => U2_vcs(3),
      O => M1a_2_Q_121
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"1AF0"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N571
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
      O => N572
    );
  U3_Mmux_M1_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N573,
      I1 => N574,
      S => U2_vcs(2),
      O => N313
    );
  U3_Mmux_M1_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"E356"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N573
    );
  U3_Mmux_M1_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N574
    );
  M2a_29_Q : MUXF5
    port map (
      I0 => N575,
      I1 => N576,
      S => U2_vcs(2),
      O => M2a_29_Q_222
    );
  M2a_29_F : LUT4
    generic map(
      INIT => X"444C"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N575
    );
  M2a_29_G : LUT4
    generic map(
      INIT => X"0C14"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N576
    );
  M2a_14_Q : MUXF5
    port map (
      I0 => N577,
      I1 => N578,
      S => U2_vcs(1),
      O => M2a_14_Q_202
    );
  M2a_14_F : LUT4
    generic map(
      INIT => X"17BE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N577
    );
  M2a_14_G : LUT4
    generic map(
      INIT => X"065F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N578
    );
  M2a_28_Q : MUXF5
    port map (
      I0 => N579,
      I1 => N580,
      S => U2_vcs(2),
      O => M2a_28_Q_221
    );
  M2a_28_F : LUT4
    generic map(
      INIT => X"7020"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N579
    );
  M2a_28_G : LUT4
    generic map(
      INIT => X"4416"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N580
    );
  M2_16_26 : MUXF5
    port map (
      I0 => N581,
      I1 => N582,
      S => U2_vcs(3),
      O => M2_16_Q
    );
  M2_16_26_F : LUT4
    generic map(
      INIT => X"E251"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N581
    );
  M2_16_26_G : LUT4
    generic map(
      INIT => X"1018"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N582
    );
  M2a_11_Q : MUXF5
    port map (
      I0 => N583,
      I1 => N584,
      S => U2_vcs(4),
      O => M2a_11_Q_198
    );
  M2a_11_F : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N583
    );
  M2a_11_G : LUT4
    generic map(
      INIT => X"1217"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N584
    );
  M2_29_f5 : MUXF5
    port map (
      I0 => N585,
      I1 => N586,
      S => U2_vcs(2),
      O => M2_29_Q
    );
  M2_29_f5_F : LUT4
    generic map(
      INIT => X"7D20"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N585
    );
  M2_29_f5_G : LUT4
    generic map(
      INIT => X"2674"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N586
    );
  M2a_13_Q : MUXF5
    port map (
      I0 => N587,
      I1 => N588,
      S => U2_vcs(1),
      O => M2a_13_Q_200
    );
  M2a_13_F : LUT4
    generic map(
      INIT => X"17B6"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N587
    );
  M2a_13_G : LUT4
    generic map(
      INIT => X"065F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => N588
    );
  M2_12_f5 : MUXF5
    port map (
      I0 => N589,
      I1 => N590,
      S => U2_vcs(2),
      O => M2_12_Q
    );
  M2_12_f5_F : LUT4
    generic map(
      INIT => X"2382"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N589
    );
  M2_12_f5_G : LUT4
    generic map(
      INIT => X"32CA"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N590
    );
  M2a_20_f5 : MUXF5
    port map (
      I0 => N591,
      I1 => N592,
      S => U2_vcs(2),
      O => M2a_20_Q
    );
  M2a_20_f5_F : LUT4
    generic map(
      INIT => X"6E7E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N591
    );
  M2a_20_f5_G : LUT4
    generic map(
      INIT => X"4117"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N592
    );
  M2_26_f5 : MUXF5
    port map (
      I0 => N593,
      I1 => N594,
      S => U2_vcs(2),
      O => M2_26_Q
    );
  M2_26_f5_F : LUT4
    generic map(
      INIT => X"2E20"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => N593
    );
  M2_26_f5_G : LUT4
    generic map(
      INIT => X"515B"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N594
    );
  U3_Mmux_M1a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N595,
      I1 => N596,
      S => U2_vcs(1),
      O => N325
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"4523"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(3),
      O => N595
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"83C3"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N596
    );
  U3_spriteonB2_and0000281 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(3),
      O => U3_spriteonB2_and0000281_1364
    );
  U3_spriteonB2_and0000282 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(4),
      O => U3_spriteonB2_and0000282_1365
    );
  U3_spriteonB2_and000028_f5 : MUXF5
    port map (
      I0 => U3_spriteonB2_and0000282_1365,
      I1 => U3_spriteonB2_and0000281_1364,
      S => U2_hcs(5),
      O => U3_spriteonB2_and000028
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
      O => U2_vidon_and0000181_744
    );
  U2_vidon_and000018_f5 : MUXF5
    port map (
      I0 => U2_vidon_and0000181_744,
      I1 => N1,
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
      O => U2_vidon_and0000261_746
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_746,
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
      O => U2_vidon_and0000651_750
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_750,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  U3_spriteonGrnd_and000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => U3_spriteonGrnd_and000071_1394
    );
  U3_spriteonGrnd_and00007_f5 : MUXF5
    port map (
      I0 => U3_spriteonGrnd_and000071_1394,
      I1 => N1,
      S => U2_vcs(4),
      O => U3_spriteonGrnd_and00007
    );
  U3_spriteonGrnd_and0000231 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => U2_vcs(5),
      O => U3_spriteonGrnd_and0000231_1388
    );
  U3_spriteonGrnd_and0000232 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      O => U3_spriteonGrnd_and0000232_1389
    );
  U3_spriteonGrnd_and000023_f5 : MUXF5
    port map (
      I0 => U3_spriteonGrnd_and0000232_1389,
      I1 => U3_spriteonGrnd_and0000231_1388,
      S => U3_spriteonGrnd_and00007,
      O => U3_spriteonGrnd_and000023
    );
  U3_spriteonGrnd_and0000471 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      I3 => U2_hcs(0),
      O => U3_spriteonGrnd_and0000471_1391
    );
  U3_spriteonGrnd_and000047_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_spriteonGrnd_and0000471_1391,
      S => U2_hcs(4),
      O => U3_spriteonGrnd_and000047
    );
  U3_blue_and00021171 : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => U3_blue_and00021171_1338
    );
  U3_blue_and0002117_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_blue_and00021171_1338,
      S => U2_vcs(4),
      O => U3_blue_and0002117
    );
  M2_13_12 : LUT4
    generic map(
      INIT => X"B218"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => rom1_addr(4),
      I3 => U2_vcs(1),
      O => M2_13_1
    );
  M2_13_1_f5 : MUXF5
    port map (
      I0 => M2_13_11,
      I1 => M2_13_1,
      S => rom1_addr(3),
      O => M2_13_Q
    );
  M1_28_1201 : LUT4
    generic map(
      INIT => X"DDFD"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => M1_28_1201_63
    );
  M1_28_1202 : LUT4
    generic map(
      INIT => X"06FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => M1_28_1202_64
    );
  M1_28_120_f5 : MUXF5
    port map (
      I0 => M1_28_1202_64,
      I1 => M1_28_1201_63,
      S => U2_vcs(2),
      O => M1_28_120
    );
  M2a_24_1 : LUT4
    generic map(
      INIT => X"2305"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M2a_24_1_216
    );
  M2a_24_f5 : MUXF5
    port map (
      I0 => M2a_24_2,
      I1 => M2a_24_1_216,
      S => rom1_addr(3),
      O => M2a_24_Q
    );
  M1a_25_361 : LUT4
    generic map(
      INIT => X"4415"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1a_25_36
    );
  M1a_25_36_f5 : MUXF5
    port map (
      I0 => M1a_25_361_107,
      I1 => M1a_25_36,
      S => rom1_addr(4),
      O => M1a_25_Q
    );
  M1_27_142_SW01 : LUT4
    generic map(
      INIT => X"C8E8"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => M1_27_142_SW0
    );
  M1_27_142_SW0_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => M1_27_142_SW0,
      S => U2_vcs(1),
      O => N225
    );
  U3_spriteonB4_and000028_SW01 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => U2_hcs(8),
      I3 => U2_hcs(7),
      O => U3_spriteonB4_and000028_SW0
    );
  U3_spriteonB4_and000028_SW0_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_spriteonB4_and000028_SW0,
      S => U2_hcs(9),
      O => N241
    );
  selector_green_1_25_SW01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_N7,
      O => selector_green_1_25_SW0
    );
  selector_green_1_25_SW02 : LUT4
    generic map(
      INIT => X"0A02"
    )
    port map (
      I0 => U3_N7,
      I1 => U3_spriteonB5,
      I2 => U3_blue_and0003,
      I3 => U3_N3,
      O => selector_green_1_25_SW01_1765
    );
  selector_green_1_25_SW0_f5 : MUXF5
    port map (
      I0 => selector_green_1_25_SW01_1765,
      I1 => selector_green_1_25_SW0,
      S => U3_spriteonGrnd,
      O => N293
    );
  M2a_8_21_SW01 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd7,
      I2 => U2_vcs(1),
      O => M2a_8_21_SW0
    );
  M2a_8_21_SW02 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd13,
      O => M2a_8_21_SW01_238
    );
  M2a_8_21_SW0_f5 : MUXF5
    port map (
      I0 => M2a_8_21_SW01_238,
      I1 => M2a_8_21_SW0,
      S => U2_vcs(2),
      O => N227
    );
  M1a_26_541 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      I3 => U2_vcs(0),
      O => M1a_26_541_112
    );
  M1a_26_542 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => M1_22_bdd9,
      O => M1a_26_542_113
    );
  M1a_26_54_f5 : MUXF5
    port map (
      I0 => M1a_26_542_113,
      I1 => M1a_26_541_112,
      S => U2_vcs(2),
      O => M1a_26_54
    );
  M1_26_11 : LUT4
    generic map(
      INIT => X"A2A7"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => M1_26_1
    );
  M1_26_12 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      O => M1_26_11_50
    );
  M1_26_1_f5 : MUXF5
    port map (
      I0 => M1_26_11_50,
      I1 => M1_26_1,
      S => U2_vcs(1),
      O => M1_26_bdd0
    );
  M1_21_261 : LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M1_21_bdd5,
      O => M1_21_261_21
    );
  M1_21_26_f5 : MUXF5
    port map (
      I0 => M1_21_261_21,
      I1 => N0,
      S => U2_vcs(3),
      O => M1_21_26
    );
  M1a_26_131 : LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_22_bdd9,
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => M1a_26_131_110
    );
  M1a_26_13_f5 : MUXF5
    port map (
      I0 => M1a_26_131_110,
      I1 => N0,
      S => U2_vcs(2),
      O => M1a_26_13
    );
  screenstate_Mcount_sig_hill3_eqn_018 : LUT4_D
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => screenstate_sig_hill3(1),
      I1 => screenstate_sig_hill3(6),
      I2 => screenstate_sig_hill3(7),
      I3 => screenstate_sig_hill3(0),
      LO => N597,
      O => screenstate_Mcount_sig_hill3_eqn_018_1666
    );
  screenstate_Mcount_sig_hill3_eqn_0121 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => screenstate_sig_hill3(5),
      I1 => screenstate_sig_hill3(4),
      I2 => screenstate_sig_hill3(3),
      I3 => screenstate_sig_hill3(2),
      LO => N598,
      O => screenstate_Mcount_sig_hill3_eqn_0121_1665
    );
  U3_tank2_angle_calc_and00003 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      LO => U3_tank2_angle_calc_and00003_1420
    );
  U3_tank1_angle_calc_and00003 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      LO => U3_tank1_angle_calc_and00003_1406
    );
  nes_a_reg_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(9),
      I3 => N4,
      LO => N599,
      O => nes_N0
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_7_111 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => screenstate_sig_hill1(1),
      I1 => screenstate_sig_hill1(2),
      LO => N600,
      O => screenstate_N3
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_6_111 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => screenstate_sig_hill1(4),
      I1 => screenstate_sig_hill1(3),
      I2 => screenstate_sig_hill1(5),
      I3 => screenstate_N3,
      LO => N601,
      O => screenstate_N13
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
      LO => N602,
      O => U2_hcs_cmp_eq000010_727
    );
  nes_counter_reg_cmp_eq0000112 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(7),
      I2 => nes_counter_reg(1),
      I3 => nes_counter_reg(3),
      LO => N603,
      O => nes_counter_reg_cmp_eq0000112_1593
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(3),
      I1 => U3_C2(5),
      LO => U3_C2_not00011_783
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(6),
      I2 => U3_C2_not000113_784,
      I3 => U3_C2_not00016_787,
      LO => U3_C2_not000123_785
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
      LO => U3_C2_not000150_786
    );
  U3_C1_not00014 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(2),
      I2 => U3_C1(5),
      I3 => U3_C1(4),
      LO => U3_C1_not00014_767
    );
  U3_C1_not000147 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(4),
      LO => U3_C1_not000147_768
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"3F1F"
    )
    port map (
      I0 => U3_C1(5),
      I1 => U3_C1(6),
      I2 => U3_C1(7),
      I3 => U3_C1_not000152_770,
      LO => U3_C1_not000183_771
    );
  screenstate_sig_hill4_mux0001_0_41 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => screenstate_sig_hill4(3),
      I1 => screenstate_sig_hill4(2),
      I2 => screenstate_sig_hill4(1),
      I3 => screenstate_sig_hill4(0),
      LO => N604,
      O => screenstate_sig_hill4_mux0001_0_bdd2
    );
  U3_Madd_tank2_angle_calc_addsub0000_cy_3_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(0),
      I3 => U3_tank2_angle_calc(1),
      LO => N605,
      O => U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q
    );
  U3_Madd_tank1_angle_calc_addsub0000_cy_3_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(0),
      I3 => U3_tank1_angle_calc(1),
      LO => N606,
      O => U3_Madd_tank1_angle_calc_addsub0000_cy_3_Q
    );
  U2_hcs_cmp_eq000014 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => U2_hcs(7),
      LO => N607,
      O => U3_spriteonGrnd_and0000104
    );
  U3_tank2_angle_calc_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(3),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_N37,
      I3 => N144,
      LO => N608,
      O => U3_tank2_angle_calc_cmp_eq0001_1421
    );
  U3_tank1_angle_calc_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(3),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_N36,
      I3 => N146,
      LO => N609,
      O => U3_tank1_angle_calc_cmp_eq0001_1407
    );
  screenstate_sig_hill4_mux0001_1_181 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => screenstate_sig_hill4_mux0001_1_115_1737,
      I1 => screenstate_sig_hill4_mux0001_1_128_1738,
      I2 => N155,
      I3 => N154,
      LO => screenstate_sig_hill4_mux0001_1_181_1739
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_N2,
      I3 => N161,
      LO => N610,
      O => U2_vcs_cmp_eq0000_739
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => nes_scalar_reg(8),
      I1 => nes_scalar_reg(9),
      I2 => nes_scalar_next_cmp_eq000021_1626,
      I3 => nes_scalar_next_cmp_eq000010_1625,
      LO => N611,
      O => nes_scalar_next_cmp_eq0000
    );
  M2_13_13_INV_0 : INV
    port map (
      I => M2_13_bdd1,
      O => M2_13_11
    );
  M2a_24_2_INV_0 : INV
    port map (
      I => M2a_24_bdd0,
      O => M2a_24_2
    );
  M1a_25_362_INV_0 : INV
    port map (
      I => N215,
      O => M1a_25_361_107
    );

end STRUCTURE;

