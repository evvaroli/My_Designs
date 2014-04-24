--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Thu Apr 24 17:39:23 2014
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
  component titleImage
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 14 downto 0 ) 
    );
  end component;
  component fonts
    port (
      clk : in STD_LOGIC := 'X'; 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addr : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
    );
  end component;
  signal M1_0_Q : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_10_Q : STD_LOGIC; 
  signal M1_10_1 : STD_LOGIC; 
  signal M1_10_2 : STD_LOGIC; 
  signal M1_11_Q_5 : STD_LOGIC; 
  signal M1_12_bdd0 : STD_LOGIC; 
  signal M1_13_Q_7 : STD_LOGIC; 
  signal M1_14_Q : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_15_Q_10 : STD_LOGIC; 
  signal M1_18_Q : STD_LOGIC; 
  signal M1_19_Q : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q_14 : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_2 : STD_LOGIC; 
  signal M1_21_27_17 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_27_21 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_22_28 : STD_LOGIC; 
  signal M1_23_30_29 : STD_LOGIC; 
  signal M1_23_bdd0 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_2 : STD_LOGIC; 
  signal M1_25_54_37 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_25_40 : STD_LOGIC; 
  signal M1_26_58_41 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_105_44 : STD_LOGIC; 
  signal M1_27_129_45 : STD_LOGIC; 
  signal M1_27_13 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_12_50 : STD_LOGIC; 
  signal M1_28_129 : STD_LOGIC; 
  signal M1_28_1291_52 : STD_LOGIC; 
  signal M1_28_1292_53 : STD_LOGIC; 
  signal M1_28_2 : STD_LOGIC; 
  signal M1_28_33_55 : STD_LOGIC; 
  signal M1_28_71_56 : STD_LOGIC; 
  signal M1_28_bdd1 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_26 : STD_LOGIC; 
  signal M1_29_261_60 : STD_LOGIC; 
  signal M1_29_262_61 : STD_LOGIC; 
  signal M1_29_69_62 : STD_LOGIC; 
  signal M1_29_77_63 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_30_108 : STD_LOGIC; 
  signal M1_30_1081_68 : STD_LOGIC; 
  signal M1_30_51_69 : STD_LOGIC; 
  signal M1_30_91 : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_31_25 : STD_LOGIC; 
  signal M1_31_251_73 : STD_LOGIC; 
  signal M1_31_252_74 : STD_LOGIC; 
  signal M1_31_62_75 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_3_1_77 : STD_LOGIC; 
  signal M1_3_2_78 : STD_LOGIC; 
  signal M1_3_bdd3 : STD_LOGIC; 
  signal M1_4_Q : STD_LOGIC; 
  signal M1_5_Q_81 : STD_LOGIC; 
  signal M1_6_Q : STD_LOGIC; 
  signal M1_8_Q : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal M1_9_1_85 : STD_LOGIC; 
  signal M1_9_2 : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_11_1 : STD_LOGIC; 
  signal M1a_11_2 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_18_Q_93 : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_19_13 : STD_LOGIC; 
  signal M1a_1_Q_96 : STD_LOGIC; 
  signal M1a_20_Q_97 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_21_22 : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_41 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_38_105 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_25_36 : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_26_33_110 : STD_LOGIC; 
  signal M1a_26_55_111 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_52_113 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_28_63_SW0 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_32_117 : STD_LOGIC; 
  signal M1a_29_58_118 : STD_LOGIC; 
  signal M1a_2_Q_119 : STD_LOGIC; 
  signal M1a_30_37_120 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_3_1 : STD_LOGIC; 
  signal M1a_3_2 : STD_LOGIC; 
  signal M1a_4_Q_124 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_5_Q : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_25 : STD_LOGIC; 
  signal M2_0_251_131 : STD_LOGIC; 
  signal M2_0_252_132 : STD_LOGIC; 
  signal M2_0_71 : STD_LOGIC; 
  signal M2_0_bdd1 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd16 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_27_140 : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_11_Q_142 : STD_LOGIC; 
  signal M2_12_Q_143 : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal M2_13_1_145 : STD_LOGIC; 
  signal M2_13_bdd4 : STD_LOGIC; 
  signal M2_15_Q_147 : STD_LOGIC; 
  signal M2_16_Q_148 : STD_LOGIC; 
  signal M2_19_Q_149 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_108_151 : STD_LOGIC; 
  signal M2_1_2 : STD_LOGIC; 
  signal M2_1_51_153 : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_20_Q : STD_LOGIC; 
  signal M2_20_1_156 : STD_LOGIC; 
  signal M2_20_2_157 : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_26_Q_160 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_26 : STD_LOGIC; 
  signal M2_2_261_164 : STD_LOGIC; 
  signal M2_2_262_165 : STD_LOGIC; 
  signal M2_2_69_166 : STD_LOGIC; 
  signal M2_2_77_167 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_12_171 : STD_LOGIC; 
  signal M2_3_127 : STD_LOGIC; 
  signal M2_3_1271_173 : STD_LOGIC; 
  signal M2_3_1272_174 : STD_LOGIC; 
  signal M2_3_34_175 : STD_LOGIC; 
  signal M2_3_48_176 : STD_LOGIC; 
  signal M2_3_72_177 : STD_LOGIC; 
  signal M2_3_bdd6 : STD_LOGIC; 
  signal M2_3_bdd9 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_107_181 : STD_LOGIC; 
  signal M2_4_40 : STD_LOGIC; 
  signal M2_4_401_183 : STD_LOGIC; 
  signal M2_4_402_184 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_25_187 : STD_LOGIC; 
  signal M2_5_58_188 : STD_LOGIC; 
  signal M2_5_bdd0 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_54_191 : STD_LOGIC; 
  signal M2_6_93_192 : STD_LOGIC; 
  signal M2_6_bdd0 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_22_197 : STD_LOGIC; 
  signal M2_8_30_198 : STD_LOGIC; 
  signal M2_8_bdd1 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_27_201 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_11_Q_204 : STD_LOGIC; 
  signal M2a_12_13 : STD_LOGIC; 
  signal M2a_12_131_206 : STD_LOGIC; 
  signal M2a_12_28 : STD_LOGIC; 
  signal M2a_12_281_208 : STD_LOGIC; 
  signal M2a_12_282_209 : STD_LOGIC; 
  signal M2a_14_Q : STD_LOGIC; 
  signal M2a_14_1_211 : STD_LOGIC; 
  signal M2a_14_2 : STD_LOGIC; 
  signal M2a_15_Q_213 : STD_LOGIC; 
  signal M2a_18_Q : STD_LOGIC; 
  signal M2a_18_1_215 : STD_LOGIC; 
  signal M2a_18_2 : STD_LOGIC; 
  signal M2a_19_Q : STD_LOGIC; 
  signal M2a_19_1_218 : STD_LOGIC; 
  signal M2a_1_37_219 : STD_LOGIC; 
  signal M2a_1_65_220 : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_23_1 : STD_LOGIC; 
  signal M2a_23_11_224 : STD_LOGIC; 
  signal M2a_24_Q_225 : STD_LOGIC; 
  signal M2a_26_Q : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal M2a_29_10_229 : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_32_231 : STD_LOGIC; 
  signal M2a_30_22_232 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_3_63_SW0 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_4_52_236 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M2a_5_33_238 : STD_LOGIC; 
  signal M2a_5_55_239 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_7_38_243 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_11_245 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N347 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
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
  signal N51 : STD_LOGIC; 
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
  signal N52 : STD_LOGIC; 
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
  signal N56 : STD_LOGIC; 
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
  signal N58 : STD_LOGIC; 
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
  signal N60 : STD_LOGIC; 
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
  signal N612 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal N614 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal N616 : STD_LOGIC; 
  signal N617 : STD_LOGIC; 
  signal N618 : STD_LOGIC; 
  signal N619 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N620 : STD_LOGIC; 
  signal N621 : STD_LOGIC; 
  signal N622 : STD_LOGIC; 
  signal N623 : STD_LOGIC; 
  signal N624 : STD_LOGIC; 
  signal N625 : STD_LOGIC; 
  signal N626 : STD_LOGIC; 
  signal N627 : STD_LOGIC; 
  signal N628 : STD_LOGIC; 
  signal N629 : STD_LOGIC; 
  signal N630 : STD_LOGIC; 
  signal N631 : STD_LOGIC; 
  signal N632 : STD_LOGIC; 
  signal N633 : STD_LOGIC; 
  signal N634 : STD_LOGIC; 
  signal N635 : STD_LOGIC; 
  signal N636 : STD_LOGIC; 
  signal N637 : STD_LOGIC; 
  signal N638 : STD_LOGIC; 
  signal N639 : STD_LOGIC; 
  signal N640 : STD_LOGIC; 
  signal N641 : STD_LOGIC; 
  signal N642 : STD_LOGIC; 
  signal N643 : STD_LOGIC; 
  signal N644 : STD_LOGIC; 
  signal N645 : STD_LOGIC; 
  signal N646 : STD_LOGIC; 
  signal N647 : STD_LOGIC; 
  signal N648 : STD_LOGIC; 
  signal N649 : STD_LOGIC; 
  signal N650 : STD_LOGIC; 
  signal N651 : STD_LOGIC; 
  signal N652 : STD_LOGIC; 
  signal N653 : STD_LOGIC; 
  signal N654 : STD_LOGIC; 
  signal N655 : STD_LOGIC; 
  signal N656 : STD_LOGIC; 
  signal N657 : STD_LOGIC; 
  signal N658 : STD_LOGIC; 
  signal N659 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N660 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal U1_Mcount_q_cy_10_rt_568 : STD_LOGIC; 
  signal U1_Mcount_q_cy_11_rt_570 : STD_LOGIC; 
  signal U1_Mcount_q_cy_12_rt_572 : STD_LOGIC; 
  signal U1_Mcount_q_cy_13_rt_574 : STD_LOGIC; 
  signal U1_Mcount_q_cy_14_rt_576 : STD_LOGIC; 
  signal U1_Mcount_q_cy_15_rt_578 : STD_LOGIC; 
  signal U1_Mcount_q_cy_16_rt_580 : STD_LOGIC; 
  signal U1_Mcount_q_cy_1_rt_582 : STD_LOGIC; 
  signal U1_Mcount_q_cy_2_rt_584 : STD_LOGIC; 
  signal U1_Mcount_q_cy_3_rt_586 : STD_LOGIC; 
  signal U1_Mcount_q_cy_4_rt_588 : STD_LOGIC; 
  signal U1_Mcount_q_cy_5_rt_590 : STD_LOGIC; 
  signal U1_Mcount_q_cy_6_rt_592 : STD_LOGIC; 
  signal U1_Mcount_q_cy_7_rt_594 : STD_LOGIC; 
  signal U1_Mcount_q_cy_8_rt_596 : STD_LOGIC; 
  signal U1_Mcount_q_cy_9_rt_598 : STD_LOGIC; 
  signal U1_Mcount_q_xor_17_rt_600 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U1_q_171 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_623 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_625 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_627 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_629 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_631 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_633 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_635 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_637 : STD_LOGIC; 
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
  signal U2_Mcount_hcs_xor_9_rt_649 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_652 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_654 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_656 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_658 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_660 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_662 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_664 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_666 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_678 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal U2_N3 : STD_LOGIC; 
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
  signal U2_hcs_cmp_eq000010_713 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_714 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_725 : STD_LOGIC; 
  signal U2_vidon_and00000_726 : STD_LOGIC; 
  signal U2_vidon_and0000105_727 : STD_LOGIC; 
  signal U2_vidon_and0000117_728 : STD_LOGIC; 
  signal U2_vidon_and000013 : STD_LOGIC; 
  signal U2_vidon_and000018_730 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_732 : STD_LOGIC; 
  signal U2_vidon_and000039_733 : STD_LOGIC; 
  signal U2_vidon_and00006_734 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_736 : STD_LOGIC; 
  signal U2_vidon_and000080_737 : STD_LOGIC; 
  signal U2_vsenable_738 : STD_LOGIC; 
  signal U3_B_739 : STD_LOGIC; 
  signal U3_B_and0000 : STD_LOGIC; 
  signal U3_B_mux0016 : STD_LOGIC; 
  signal U3_B_mux001615_742 : STD_LOGIC; 
  signal U3_B_mux00164_743 : STD_LOGIC; 
  signal U3_B_mux001651_744 : STD_LOGIC; 
  signal U3_B_mux001663_745 : STD_LOGIC; 
  signal U3_B_mux001672_746 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_758 : STD_LOGIC; 
  signal U3_C1_not0001105_759 : STD_LOGIC; 
  signal U3_C1_not000127_760 : STD_LOGIC; 
  signal U3_C1_not00014_761 : STD_LOGIC; 
  signal U3_C1_not000147_762 : STD_LOGIC; 
  signal U3_C1_not00015_763 : STD_LOGIC; 
  signal U3_C1_not000183_764 : STD_LOGIC; 
  signal U3_C2_5_1_771 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_777 : STD_LOGIC; 
  signal U3_C2_not000113_778 : STD_LOGIC; 
  signal U3_C2_not000123_779 : STD_LOGIC; 
  signal U3_C2_not000150_780 : STD_LOGIC; 
  signal U3_C2_not00016_781 : STD_LOGIC; 
  signal U3_C2_not000164_782 : STD_LOGIC; 
  signal U3_C2_not000186 : STD_LOGIC; 
  signal U3_CM1_0_and0000 : STD_LOGIC; 
  signal U3_CM1_0_and0001 : STD_LOGIC; 
  signal U3_CM1_1_and0000 : STD_LOGIC; 
  signal U3_CM1_1_and0001 : STD_LOGIC; 
  signal U3_CM1_2_and0000 : STD_LOGIC; 
  signal U3_CM1_2_and0001 : STD_LOGIC; 
  signal U3_CM1_3_and0000 : STD_LOGIC; 
  signal U3_CM1_3_and0001 : STD_LOGIC; 
  signal U3_CM1_4_and0000 : STD_LOGIC; 
  signal U3_CM1_4_and0001 : STD_LOGIC; 
  signal U3_CM1_5_and0000 : STD_LOGIC; 
  signal U3_CM1_5_and0001 : STD_LOGIC; 
  signal U3_CM1_6_and0000 : STD_LOGIC; 
  signal U3_CM1_6_and0001 : STD_LOGIC; 
  signal U3_CM1_7_and0000 : STD_LOGIC; 
  signal U3_CM1_7_and0001 : STD_LOGIC; 
  signal U3_CM1_8_and0000 : STD_LOGIC; 
  signal U3_CM1_8_and0001 : STD_LOGIC; 
  signal U3_CM1_9_and0000 : STD_LOGIC; 
  signal U3_CM1_9_and0001 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_1_rt_816 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_2_rt_818 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_3_rt_820 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_4_rt_822 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_5_rt_824 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_6_rt_826 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_7_rt_828 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_8_rt_830 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_xor_9_rt_832 : STD_LOGIC; 
  signal U3_CM1_and0000 : STD_LOGIC; 
  signal U3_CM2_0_and0000 : STD_LOGIC; 
  signal U3_CM2_0_and0001 : STD_LOGIC; 
  signal U3_CM2_1_and0000 : STD_LOGIC; 
  signal U3_CM2_1_and0001 : STD_LOGIC; 
  signal U3_CM2_2_and0000 : STD_LOGIC; 
  signal U3_CM2_2_and0001 : STD_LOGIC; 
  signal U3_CM2_3_and0000 : STD_LOGIC; 
  signal U3_CM2_3_and0001 : STD_LOGIC; 
  signal U3_CM2_4_and0000 : STD_LOGIC; 
  signal U3_CM2_4_and0001 : STD_LOGIC; 
  signal U3_CM2_5_and0000 : STD_LOGIC; 
  signal U3_CM2_5_and0001 : STD_LOGIC; 
  signal U3_CM2_6_and0000 : STD_LOGIC; 
  signal U3_CM2_6_and0001 : STD_LOGIC; 
  signal U3_CM2_7_and0000 : STD_LOGIC; 
  signal U3_CM2_7_and0001 : STD_LOGIC; 
  signal U3_CM2_8_and0000 : STD_LOGIC; 
  signal U3_CM2_8_and0001 : STD_LOGIC; 
  signal U3_CM2_9_and0000 : STD_LOGIC; 
  signal U3_CM2_9_and0001 : STD_LOGIC; 
  signal U3_CM2_Msub_sub0000_cy_0_rt_895 : STD_LOGIC; 
  signal U3_CM2_and0000 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_2_rt_950 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_5_rt_954 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_6_rt_956 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_7_rt_958 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_8_rt_960 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_1_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_3_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_4_1 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_xor_9_rt_965 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_4_11 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_5_11_979 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_6_11_980 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_7_11_981 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_cy_1_rt_984 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_cy_3_rt_987 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_5_rt_1001 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_6_rt_1003 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_7_rt_1005 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_8_rt_1007 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_xor_9_rt_1013 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_1_rt_1016 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_3_rt_1019 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_4_rt_1021 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_5_rt_1023 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_6_rt_1025 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_7_rt_1027 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_8_rt_1029 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_xor_9_rt_1032 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_4_11 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_5_11_1034 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_6_11_1035 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_7_11_1036 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_cy_1_rt_1039 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_cy_3_rt_1042 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_5_rt_1056 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_6_rt_1058 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_7_rt_1060 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_8_rt_1062 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_xor_9_rt_1068 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_1_rt_1071 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_3_rt_1074 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_4_rt_1076 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_5_rt_1078 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_6_rt_1080 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_7_rt_1082 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_8_rt_1084 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_xor_9_rt_1087 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_1467 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_1469 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_1471 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_1473 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_1475 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_1477 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_1479 : STD_LOGIC; 
  signal U3_Mcount_q_cy_17_rt_1481 : STD_LOGIC; 
  signal U3_Mcount_q_cy_18_rt_1483 : STD_LOGIC; 
  signal U3_Mcount_q_cy_19_rt_1485 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_1487 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_1489 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_1491 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_1493 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_1495 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_1497 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_1499 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_1501 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_1503 : STD_LOGIC; 
  signal U3_Mcount_q_xor_20_rt_1505 : STD_LOGIC; 
  signal U3_Mhorz_1506 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0000 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0000113_1508 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000032_1509 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000065_1510 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0001 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0001113_1512 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000132_1513 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000165_1514 : STD_LOGIC; 
  signal U3_Mhorz_not0001_1515 : STD_LOGIC; 
  signal U3_Mhorz_or0000 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_1517 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_1518 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_1519 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_1520 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_1521 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_1522 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_1524 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_1525 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_1528 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_1529 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_1530 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_1531 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_1532 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_1533 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_1536 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_1537 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_1538 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_1539 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_1540 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_1541 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_1542 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_1543 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_1544 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_1545 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_1546 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_1547 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_1548 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_1549 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_1550 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_1551 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_1552 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_1554 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_1555 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_1558 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_1559 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_1560 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_1561 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_1562 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_1563 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_1566 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_1567 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_1568 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_1569 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_1570 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_1571 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_1572 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_1573 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_1574 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_1575 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_1576 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_1577 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_1578 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_1579 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_1580 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_1581 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_1582 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_1584 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_1585 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_1588 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_1589 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_1590 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_1591 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_1592 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_1593 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_1596 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_1597 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_1598 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_1599 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_1600 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_1601 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_1602 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_1603 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_1604 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_1605 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_1606 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_1607 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_1608 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_1609 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_1610 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_1611 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_1612 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_1614 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_1615 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_1618 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_1619 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_1620 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_1621 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_1622 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_1623 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_1626 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_1627 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_1628 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_1629 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_1630 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_1631 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_1632 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_1633 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_1634 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_1635 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_1636 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_3_f5_1637 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_1638 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_f5_1639 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_5_1640 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_51_1641 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_6_1642 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_3_f5_1643 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_1644 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_f5_1645 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_5_1646 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_51_1647 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_6_1648 : STD_LOGIC; 
  signal U3_Msub_CM2_sub0000_cy_1_rt_1650 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_0_rt_1685 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_1_rt_1687 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_2_rt_1689 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_3_rt_1691 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_4_rt_1693 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0001_xor_7_11_1704 : STD_LOGIC; 
  signal U3_N0 : STD_LOGIC; 
  signal U3_N100 : STD_LOGIC; 
  signal U3_N105 : STD_LOGIC; 
  signal U3_N109 : STD_LOGIC; 
  signal U3_N14 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N19 : STD_LOGIC; 
  signal U3_N20 : STD_LOGIC; 
  signal U3_N24 : STD_LOGIC; 
  signal U3_N28 : STD_LOGIC; 
  signal U3_N29 : STD_LOGIC; 
  signal U3_N30 : STD_LOGIC; 
  signal U3_N32 : STD_LOGIC; 
  signal U3_N33 : STD_LOGIC; 
  signal U3_N35 : STD_LOGIC; 
  signal U3_N57 : STD_LOGIC; 
  signal U3_N84 : STD_LOGIC; 
  signal U3_N97 : STD_LOGIC; 
  signal U3_Q_0_1724 : STD_LOGIC; 
  signal U3_Q_1_1725 : STD_LOGIC; 
  signal U3_Q_10_1726 : STD_LOGIC; 
  signal U3_Q_11_1727 : STD_LOGIC; 
  signal U3_Q_12_1728 : STD_LOGIC; 
  signal U3_Q_13_1729 : STD_LOGIC; 
  signal U3_Q_14_1730 : STD_LOGIC; 
  signal U3_Q_15_1731 : STD_LOGIC; 
  signal U3_Q_16_1732 : STD_LOGIC; 
  signal U3_Q_17_1733 : STD_LOGIC; 
  signal U3_Q_2_1734 : STD_LOGIC; 
  signal U3_Q_3_1735 : STD_LOGIC; 
  signal U3_Q_4_1736 : STD_LOGIC; 
  signal U3_Q_5_1737 : STD_LOGIC; 
  signal U3_Q_6_1738 : STD_LOGIC; 
  signal U3_Q_7_1739 : STD_LOGIC; 
  signal U3_Q_8_1740 : STD_LOGIC; 
  signal U3_Q_9_1741 : STD_LOGIC; 
  signal U3_RM1_and0000 : STD_LOGIC; 
  signal U3_RM2_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_0_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_0_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_1_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_1_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_2_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_2_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_3_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_3_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_4_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_4_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_5_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_5_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_1_1 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_1_11_1825 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_2_1 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_4_1 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_5_SW0 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_5_SW01_1833 : STD_LOGIC; 
  signal U3_RMcnt2_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_and0001 : STD_LOGIC; 
  signal U3_RMcnt_0_and0000 : STD_LOGIC; 
  signal U3_RMcnt_0_and0001 : STD_LOGIC; 
  signal U3_RMcnt_1_and0000 : STD_LOGIC; 
  signal U3_RMcnt_1_and0001 : STD_LOGIC; 
  signal U3_RMcnt_2_and0000 : STD_LOGIC; 
  signal U3_RMcnt_2_and0001 : STD_LOGIC; 
  signal U3_RMcnt_3_and0000 : STD_LOGIC; 
  signal U3_RMcnt_3_and0001 : STD_LOGIC; 
  signal U3_RMcnt_4_and0000 : STD_LOGIC; 
  signal U3_RMcnt_4_and0001 : STD_LOGIC; 
  signal U3_RMcnt_5_and0000 : STD_LOGIC; 
  signal U3_RMcnt_5_and0001 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_1_1 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_1_11_1857 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_2_1 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_4_1 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_5_SW0 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_5_SW01_1865 : STD_LOGIC; 
  signal U3_RMcnt_and0000 : STD_LOGIC; 
  signal U3_RMcnt_and0001 : STD_LOGIC; 
  signal U3_RMht1_1_1_1870 : STD_LOGIC; 
  signal U3_RMht1_2_1_1872 : STD_LOGIC; 
  signal U3_RMht1_not0001 : STD_LOGIC; 
  signal U3_RMht1_not00011114_1877 : STD_LOGIC; 
  signal U3_RMht1_not00011131_1878 : STD_LOGIC; 
  signal U3_RMht1_not00011168_1879 : STD_LOGIC; 
  signal U3_RMht1_not00011171_1880 : STD_LOGIC; 
  signal U3_RMht1_not0001164_1881 : STD_LOGIC; 
  signal U3_RMht2_not0001 : STD_LOGIC; 
  signal U3_RMht2_not0001183_1889 : STD_LOGIC; 
  signal U3_RMht2_not0001_bdd1 : STD_LOGIC; 
  signal U3_RMht2_not0001_bdd3 : STD_LOGIC; 
  signal U3_Result_0_1 : STD_LOGIC; 
  signal U3_Result_0_2 : STD_LOGIC; 
  signal U3_Result_0_3 : STD_LOGIC; 
  signal U3_Result_0_4 : STD_LOGIC; 
  signal U3_Result_1_1 : STD_LOGIC; 
  signal U3_Result_1_2 : STD_LOGIC; 
  signal U3_Result_1_3 : STD_LOGIC; 
  signal U3_Result_1_4 : STD_LOGIC; 
  signal U3_Result_2_1 : STD_LOGIC; 
  signal U3_Result_2_2 : STD_LOGIC; 
  signal U3_Result_2_3 : STD_LOGIC; 
  signal U3_Result_2_4 : STD_LOGIC; 
  signal U3_Result_3_1_1919 : STD_LOGIC; 
  signal U3_Result_3_2_1920 : STD_LOGIC; 
  signal U3_Result_3_3 : STD_LOGIC; 
  signal U3_Result_3_4 : STD_LOGIC; 
  signal U3_Result_4_1_1924 : STD_LOGIC; 
  signal U3_Result_4_2_1925 : STD_LOGIC; 
  signal U3_Result_4_3 : STD_LOGIC; 
  signal U3_Result_4_4 : STD_LOGIC; 
  signal U3_Result_5_1 : STD_LOGIC; 
  signal U3_Result_5_136_1930 : STD_LOGIC; 
  signal U3_Result_5_2 : STD_LOGIC; 
  signal U3_Result_5_236_1932 : STD_LOGIC; 
  signal U3_Result_5_3 : STD_LOGIC; 
  signal U3_Result_5_4 : STD_LOGIC; 
  signal U3_Result_6_1 : STD_LOGIC; 
  signal U3_Result_6_2 : STD_LOGIC; 
  signal U3_Result_7_1 : STD_LOGIC; 
  signal U3_Result_7_2 : STD_LOGIC; 
  signal U3_Result_8_1 : STD_LOGIC; 
  signal U3_Result_8_2 : STD_LOGIC; 
  signal U3_Result_9_1 : STD_LOGIC; 
  signal U3_Result_9_2 : STD_LOGIC; 
  signal U3_blue_and0000 : STD_LOGIC; 
  signal U3_blue_and0001 : STD_LOGIC; 
  signal U3_blue_and0001132_SW0 : STD_LOGIC; 
  signal U3_blue_and0002 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_blue_and0004 : STD_LOGIC; 
  signal U3_destroy1_1953 : STD_LOGIC; 
  signal U3_destroy1_mux0015 : STD_LOGIC; 
  signal U3_destroy1_mux001527_1955 : STD_LOGIC; 
  signal U3_destroy1_mux00154_1956 : STD_LOGIC; 
  signal U3_destroy1_mux001541_1957 : STD_LOGIC; 
  signal U3_destroy1_mux001562_1958 : STD_LOGIC; 
  signal U3_destroy2_1959 : STD_LOGIC; 
  signal U3_destroy2_mux0017 : STD_LOGIC; 
  signal U3_destroy2_mux001719 : STD_LOGIC; 
  signal U3_destroy2_mux0017191_1962 : STD_LOGIC; 
  signal U3_destroy2_mux001727_1963 : STD_LOGIC; 
  signal U3_destroy2_mux001731 : STD_LOGIC; 
  signal U3_destroy2_mux001754_1965 : STD_LOGIC; 
  signal U3_destroy2_mux001766_1966 : STD_LOGIC; 
  signal U3_font1_0_and0000 : STD_LOGIC; 
  signal U3_font1_0_and00002 : STD_LOGIC; 
  signal U3_font1_0_and0000_bdd0 : STD_LOGIC; 
  signal U3_font1_0_and0001 : STD_LOGIC; 
  signal U3_font1_1_and0000 : STD_LOGIC; 
  signal U3_font1_1_and0000_bdd0 : STD_LOGIC; 
  signal U3_font1_1_and0001 : STD_LOGIC; 
  signal U3_font1_2_and0000 : STD_LOGIC; 
  signal U3_font1_2_and0001 : STD_LOGIC; 
  signal U3_font2_0_and0000 : STD_LOGIC; 
  signal U3_font2_0_and00002 : STD_LOGIC; 
  signal U3_font2_0_and000021_1985 : STD_LOGIC; 
  signal U3_font2_0_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_0_and0001 : STD_LOGIC; 
  signal U3_font2_1_and0000 : STD_LOGIC; 
  signal U3_font2_1_and00002 : STD_LOGIC; 
  signal U3_font2_1_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_1_and0001 : STD_LOGIC; 
  signal U3_font2_2_and0000 : STD_LOGIC; 
  signal U3_font2_2_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_2_and0000_bdd2 : STD_LOGIC; 
  signal U3_font2_2_and0001 : STD_LOGIC; 
  signal U3_font2_3_and0000 : STD_LOGIC; 
  signal U3_font2_3_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_3_and0001 : STD_LOGIC; 
  signal U3_font2_4_and0000 : STD_LOGIC; 
  signal U3_font2_4_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_4_and0001 : STD_LOGIC; 
  signal U3_font2_5_and0000 : STD_LOGIC; 
  signal U3_font2_5_and0000_bdd0 : STD_LOGIC; 
  signal U3_font2_5_and0001 : STD_LOGIC; 
  signal U3_font2_mux0007_1_180 : STD_LOGIC; 
  signal U3_font2_mux0007_1_1801_2013 : STD_LOGIC; 
  signal U3_font2_mux0007_1_1802 : STD_LOGIC; 
  signal U3_font2_mux0007_2_596_2016 : STD_LOGIC; 
  signal U3_font2_mux0007_3_197_2018 : STD_LOGIC; 
  signal U3_font2_mux0007_4_bdd2 : STD_LOGIC; 
  signal U3_leftBTN_inv1_inv1 : STD_LOGIC; 
  signal U3_q_181 : STD_LOGIC; 
  signal U3_q_191 : STD_LOGIC; 
  signal U3_q_201 : STD_LOGIC; 
  signal U3_rise_2029 : STD_LOGIC; 
  signal U3_rise2_2030 : STD_LOGIC; 
  signal U3_rise2_and0000_2031 : STD_LOGIC; 
  signal U3_rise_and0000_2032 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000017_2054 : STD_LOGIC; 
  signal U3_spriteonB1_and000032 : STD_LOGIC; 
  signal U3_spriteonB1_and000035_2056 : STD_LOGIC; 
  signal U3_spriteonB1_and00005_2057 : STD_LOGIC; 
  signal U3_spriteonB1_and000055_2058 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_le0000130_SW0 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_le00002 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000212_2062 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000221_2063 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_2065 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000015_2067 : STD_LOGIC; 
  signal U3_spriteonB3_and00002_2068 : STD_LOGIC; 
  signal U3_spriteonB3_and000045_2069 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000112_2070 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000128_2071 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000010_2073 : STD_LOGIC; 
  signal U3_spriteonB4_and00002_2074 : STD_LOGIC; 
  signal U3_spriteonB4_and000031 : STD_LOGIC; 
  signal U3_spriteonB4_and0000311_2076 : STD_LOGIC; 
  signal U3_spriteonB4_and0000312_2077 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_ge00001_2078 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000121_2080 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000135 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le00001351_2082 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000027_2084 : STD_LOGIC; 
  signal U3_spriteonB5_and000042_2085 : STD_LOGIC; 
  signal U3_spriteonB5_and000059_2086 : STD_LOGIC; 
  signal U3_spriteonB5_and00009_2087 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and000040_2089 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000072_2090 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000074_2091 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000096_2092 : STD_LOGIC; 
  signal U3_spriteonM1 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_8_2_2099 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_8_bdd0 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_9_1_2102 : STD_LOGIC; 
  signal U3_spriteonM1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonM1_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonM2 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_8_2_2141 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_8_bdd0 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_9_1_2144 : STD_LOGIC; 
  signal U3_spriteonM2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonM2_cmp_le0000 : STD_LOGIC; 
  signal U3_tank110sM_mux0000 : STD_LOGIC; 
  signal U3_tank11sM_mux0000 : STD_LOGIC; 
  signal U3_tank1Angle10s : STD_LOGIC; 
  signal U3_tank1Angle10s_and000014_2181 : STD_LOGIC; 
  signal U3_tank1Angle10s_and000025_2182 : STD_LOGIC; 
  signal U3_tank1Angle10s_and000055_2183 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_gt0000 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_le000018_2185 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_le00002 : STD_LOGIC; 
  signal U3_tank1Angle1s : STD_LOGIC; 
  signal U3_tank1Angle1s_and000023 : STD_LOGIC; 
  signal U3_tank1Angle1s_and000033_2189 : STD_LOGIC; 
  signal U3_tank1Angle1s_and00009 : STD_LOGIC; 
  signal U3_tank1Angle1s_and000091_2191 : STD_LOGIC; 
  signal U3_tank1HP_0_Q : STD_LOGIC; 
  signal U3_tank1HP_2_Q : STD_LOGIC; 
  signal U3_tank1HP_mux0005_0_Q_2194 : STD_LOGIC; 
  signal U3_tank1HP_mux0005_2_Q_2195 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_11_2200 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_111_2201 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_112_2202 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_bdd0 : STD_LOGIC; 
  signal U3_tank2HP_0_Q : STD_LOGIC; 
  signal U3_tank2HP_2_Q : STD_LOGIC; 
  signal U3_tank2HP_mux0007_0_Q_2208 : STD_LOGIC; 
  signal U3_tank2HP_mux0007_2_Q_2209 : STD_LOGIC; 
  signal U3_ypix2_4_1 : STD_LOGIC; 
  signal U3_ypix2_4_11_2211 : STD_LOGIC; 
  signal a_to_g_0_OBUF_2219 : STD_LOGIC; 
  signal a_to_g_1_OBUF_2220 : STD_LOGIC; 
  signal a_to_g_2_OBUF_2221 : STD_LOGIC; 
  signal a_to_g_3_OBUF_2222 : STD_LOGIC; 
  signal a_to_g_4_OBUF_2223 : STD_LOGIC; 
  signal a_to_g_5_OBUF_2224 : STD_LOGIC; 
  signal a_to_g_6_OBUF_2225 : STD_LOGIC; 
  signal an_0_OBUF_2230 : STD_LOGIC; 
  signal an_1_OBUF_2231 : STD_LOGIC; 
  signal an_2_OBUF_2232 : STD_LOGIC; 
  signal an_3_OBUF_2233 : STD_LOGIC; 
  signal blue_0_OBUF_2236 : STD_LOGIC; 
  signal blue_1_OBUF_2237 : STD_LOGIC; 
  signal btn_3_IBUF_2263 : STD_LOGIC; 
  signal green_0_OBUF_2268 : STD_LOGIC; 
  signal green_1_OBUF_2269 : STD_LOGIC; 
  signal green_2_OBUF_2270 : STD_LOGIC; 
  signal hsync_OBUF_2272 : STD_LOGIC; 
  signal ja1_IBUF_2274 : STD_LOGIC; 
  signal ja2_OBUF_2276 : STD_LOGIC; 
  signal ja3_OBUF_2278 : STD_LOGIC; 
  signal ld_0_OBUF_2287 : STD_LOGIC; 
  signal ld_1_OBUF_2288 : STD_LOGIC; 
  signal ld_2_OBUF_2289 : STD_LOGIC; 
  signal ld_3_OBUF_2290 : STD_LOGIC; 
  signal ld_4_OBUF_2291 : STD_LOGIC; 
  signal ld_5_OBUF_2292 : STD_LOGIC; 
  signal ld_6_OBUF_2293 : STD_LOGIC; 
  signal ld_7_OBUF_2294 : STD_LOGIC; 
  signal mclk_BUFGP_2296 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_2299 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_2301 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_2303 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_2305 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_2307 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_2309 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_2311 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_2313 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_2315 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_2318 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_2320 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_2322 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_2324 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_2326 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_2328 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_2330 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_2332 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_2344 : STD_LOGIC; 
  signal nes_N0 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_2357 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_b_reg_2359 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_2371 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_2372 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_2374 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_2376 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_2379 : STD_LOGIC; 
  signal nes_right_reg_2380 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_2403 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_2404 : STD_LOGIC; 
  signal nes_sel_reg_2415 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_2417 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_up_reg_2419 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal red_0_OBUF_2424 : STD_LOGIC; 
  signal red_1_OBUF_2425 : STD_LOGIC; 
  signal red_2_OBUF_2426 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_2431 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd2_2433 : STD_LOGIC; 
  signal selector_blue_0_25_2434 : STD_LOGIC; 
  signal selector_blue_0_8_2435 : STD_LOGIC; 
  signal selector_blue_1_14_2436 : STD_LOGIC; 
  signal selector_green_0_16_2437 : STD_LOGIC; 
  signal selector_green_0_42_2438 : STD_LOGIC; 
  signal selector_green_1_2_2439 : STD_LOGIC; 
  signal selector_green_1_29 : STD_LOGIC; 
  signal selector_green_1_291_2441 : STD_LOGIC; 
  signal selector_green_1_292_2442 : STD_LOGIC; 
  signal selector_green_1_66 : STD_LOGIC; 
  signal selector_green_1_661_2444 : STD_LOGIC; 
  signal selector_green_2_17_2445 : STD_LOGIC; 
  signal selector_green_2_81_2446 : STD_LOGIC; 
  signal selector_red_0_34_2447 : STD_LOGIC; 
  signal selector_red_0_34_SW0 : STD_LOGIC; 
  signal selector_red_0_34_SW01_2449 : STD_LOGIC; 
  signal selector_red_1_14_2450 : STD_LOGIC; 
  signal selector_red_1_2_2451 : STD_LOGIC; 
  signal selector_red_1_47_2452 : STD_LOGIC; 
  signal selector_red_2_31_2453 : STD_LOGIC; 
  signal selector_red_2_4_2454 : STD_LOGIC; 
  signal sig_gameA : STD_LOGIC; 
  signal sig_gameB : STD_LOGIC; 
  signal sig_gameDown : STD_LOGIC; 
  signal sig_gameRight : STD_LOGIC; 
  signal sig_gameUp : STD_LOGIC; 
  signal sig_tank2 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_10_rt_2521 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_11_rt_2523 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_12_rt_2525 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_13_rt_2527 : STD_LOGIC; 
  signal title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_2557 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_0_rt_2575 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_1_rt_2577 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_2_rt_2579 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_3_rt_2581 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_4_rt_2583 : STD_LOGIC; 
  signal title_Msub_ypix_lut_4_Q : STD_LOGIC; 
  signal title_Msub_ypix_lut_5_Q : STD_LOGIC; 
  signal title_Msub_ypix_lut_7_Q : STD_LOGIC; 
  signal title_Msub_ypix_xor_6_11_2597 : STD_LOGIC; 
  signal title_N01 : STD_LOGIC; 
  signal title_N27 : STD_LOGIC; 
  signal title_N7 : STD_LOGIC; 
  signal title_green_cmp_lt0000 : STD_LOGIC; 
  signal title_green_cmp_lt0000225_2602 : STD_LOGIC; 
  signal title_spriteon : STD_LOGIC; 
  signal title_spriteon_and0000119_2622 : STD_LOGIC; 
  signal title_spriteon_and0000124_2623 : STD_LOGIC; 
  signal title_spriteon_and0000169_2624 : STD_LOGIC; 
  signal title_spriteon_and0000178_2625 : STD_LOGIC; 
  signal title_spriteon_and000019_2626 : STD_LOGIC; 
  signal title_spriteon_and0000205_2627 : STD_LOGIC; 
  signal title_spriteon_and000035_2628 : STD_LOGIC; 
  signal title_spriteon_and000038_2629 : STD_LOGIC; 
  signal title_spriteon_and000052_2630 : STD_LOGIC; 
  signal title_spriteon_and00006_2631 : STD_LOGIC; 
  signal title_spriteon_and000087 : STD_LOGIC; 
  signal title_spriteon_and0000871_2633 : STD_LOGIC; 
  signal title_ypix_3_Q : STD_LOGIC; 
  signal title_ypix_4_Q : STD_LOGIC; 
  signal title_ypix_5_Q : STD_LOGIC; 
  signal title_ypix_6_Q : STD_LOGIC; 
  signal title_ypix_8_Q : STD_LOGIC; 
  signal title_ypix_9_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_0_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_1_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_2_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_6_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_8_Q : STD_LOGIC; 
  signal title_ypix_addsub0000_9_Q : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_2649 : STD_LOGIC; 
  signal who_delay1_2650 : STD_LOGIC; 
  signal who_delay2_2651 : STD_LOGIC; 
  signal who_delay3_2652 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_2653 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_2655 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal who_present_state_FSM_N0 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_2660 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_2662 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_2664 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_2666 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_2668 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_2670 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_2672 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_2674 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_2676 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_2678 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_2680 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_2682 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_2684 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_2686 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_2688 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_2690 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_2692 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_2694 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_2696 : STD_LOGIC; 
  signal x7_Mmux_digit_3_2697 : STD_LOGIC; 
  signal x7_Mmux_digit_31_2698 : STD_LOGIC; 
  signal x7_Mmux_digit_4_2699 : STD_LOGIC; 
  signal x7_Mmux_digit_41_2700 : STD_LOGIC; 
  signal x7_an_1_mux000126 : STD_LOGIC; 
  signal x7_an_1_mux000134_2722 : STD_LOGIC; 
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
  signal U3_CM1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM1_Madd_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_CM1_Madd_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_CM1_Q_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM1_add0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM1_add0000_0 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM2_Msub_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_CM2_Msub_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U3_CM2_Q_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM2_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_CM2_sub0000_1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U3_Madd_CM1_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteon1_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U3_Madd_spriteon1_addsub0001_lut : STD_LOGIC_VECTOR ( 7 downto 6 ); 
  signal U3_Madd_spriteon2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_Madd_spriteon2f_add0004_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U3_Madd_spriteonM1_addsub0001_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteonM1_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteonM1_addsub0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Madd_spriteonM1_addsub0003_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteonM2_addsub0001_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteonM2_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_spriteonM2_addsub0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Madd_spriteonM2_addsub0003_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Madd_tank1rom10s_cy : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank1rom10s_lut : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank1rom1s_cy : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank1rom1s_lut : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Maddsub_RM1_share0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Maddsub_RM1_share0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Maddsub_RM2_share0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Maddsub_RM2_share0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
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
  signal U3_Mcompar_spriteonM1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteonM2_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C1_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C2_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Mcount_C2_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_q_cy : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U3_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_CM2_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U3_Msub_CM2_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U3_Msub_rom_pix1_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_rom_pix1_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_rom_pix2_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Msub_rom_pix2_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_tank1rom10s_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Msub_tank1rom10s_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Msub_tank1rom10s_sub0001_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_Msub_ypix1_Madd_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_RM1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RM1_mux0002 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RM1_share0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RM2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RM2_mux0002 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RM2_share0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_RMcnt2 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMcnt2_Q_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMcnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMcnt_Q_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMht1 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMht2 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_Result : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal U3_font1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U3_font1_mux0007 : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal U3_font2 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_font2_mux0007 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_q : STD_LOGIC_VECTOR ( 20 downto 18 ); 
  signal U3_rom_pix1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_rom_pix2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_spriteon2f_add0004 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_spriteonM1_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 4 ); 
  signal U3_spriteonM1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_spriteonM1_addsub0002 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_spriteonM1_addsub0003 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_spriteonM2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 4 ); 
  signal U3_spriteonM2_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_spriteonM2_addsub0002 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_spriteonM2_addsub0003 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_tank110sRomPix : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal U3_tank1rom10s_sub0000 : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_tank1rom10s_sub0001 : STD_LOGIC_VECTOR ( 9 downto 8 ); 
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
  signal rom1_addr : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal sig_MTitle : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_romTitle_addr14 : STD_LOGIC_VECTOR ( 14 downto 3 ); 
  signal sig_tank110sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank11sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank1_angle_calc : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal sig_tank1rom10s : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sig_tank1rom1s : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal sig_tank2_angle_calc : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal title_Madd_rom_addr2_add0000_Madd_cy : STD_LOGIC_VECTOR ( 13 downto 3 ); 
  signal title_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal title_Madd_rom_addr2_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 6 ); 
  signal title_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 6 ); 
  signal title_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 3 ); 
  signal title_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 3 ); 
  signal title_Msub_ypix_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal title_Msub_ypix_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal title_Msub_ypix_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal title_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 14 downto 8 ); 
  signal title_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 14 downto 4 ); 
  signal title_xpix : STD_LOGIC_VECTOR ( 5 downto 5 ); 
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
      PRE => btn_3_IBUF_2263,
      Q => who_present_state_FSM_FFd2_2655
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => who_present_state_FSM_FFd1_In,
      Q => who_present_state_FSM_FFd1_2653
    );
  who_delay3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => who_delay2_2651,
      Q => who_delay3_2652
    );
  who_delay2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => who_delay1_2650,
      Q => who_delay2_2651
    );
  who_delay1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => sig_gameA,
      Q => who_delay1_2650
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(0),
      Q => U1_q_01
    );
  U1_q_1 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(1),
      Q => U1_q(1)
    );
  U1_q_2 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(2),
      Q => U1_q(2)
    );
  U1_q_3 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(3),
      Q => U1_q(3)
    );
  U1_q_4 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(4),
      Q => U1_q(4)
    );
  U1_q_5 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(5),
      Q => U1_q(5)
    );
  U1_q_6 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(6),
      Q => U1_q(6)
    );
  U1_q_7 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(7),
      Q => U1_q(7)
    );
  U1_q_8 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(8),
      Q => U1_q(8)
    );
  U1_q_9 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(9),
      Q => U1_q(9)
    );
  U1_q_10 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(10),
      Q => U1_q(10)
    );
  U1_q_11 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(11),
      Q => U1_q(11)
    );
  U1_q_12 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(12),
      Q => U1_q(12)
    );
  U1_q_13 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(13),
      Q => U1_q(13)
    );
  U1_q_14 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(14),
      Q => U1_q(14)
    );
  U1_q_15 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(15),
      Q => U1_q(15)
    );
  U1_q_16 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => Result(16),
      Q => U1_q(16)
    );
  U1_q_17 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
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
      S => U1_Mcount_q_cy_1_rt_582,
      O => U1_Mcount_q_cy(1)
    );
  U1_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(0),
      LI => U1_Mcount_q_cy_1_rt_582,
      O => Result(1)
    );
  U1_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(1),
      DI => N0,
      S => U1_Mcount_q_cy_2_rt_584,
      O => U1_Mcount_q_cy(2)
    );
  U1_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(1),
      LI => U1_Mcount_q_cy_2_rt_584,
      O => Result(2)
    );
  U1_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(2),
      DI => N0,
      S => U1_Mcount_q_cy_3_rt_586,
      O => U1_Mcount_q_cy(3)
    );
  U1_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(2),
      LI => U1_Mcount_q_cy_3_rt_586,
      O => Result(3)
    );
  U1_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(3),
      DI => N0,
      S => U1_Mcount_q_cy_4_rt_588,
      O => U1_Mcount_q_cy(4)
    );
  U1_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(3),
      LI => U1_Mcount_q_cy_4_rt_588,
      O => Result(4)
    );
  U1_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(4),
      DI => N0,
      S => U1_Mcount_q_cy_5_rt_590,
      O => U1_Mcount_q_cy(5)
    );
  U1_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(4),
      LI => U1_Mcount_q_cy_5_rt_590,
      O => Result(5)
    );
  U1_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(5),
      DI => N0,
      S => U1_Mcount_q_cy_6_rt_592,
      O => U1_Mcount_q_cy(6)
    );
  U1_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(5),
      LI => U1_Mcount_q_cy_6_rt_592,
      O => Result(6)
    );
  U1_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(6),
      DI => N0,
      S => U1_Mcount_q_cy_7_rt_594,
      O => U1_Mcount_q_cy(7)
    );
  U1_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(6),
      LI => U1_Mcount_q_cy_7_rt_594,
      O => Result(7)
    );
  U1_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(7),
      DI => N0,
      S => U1_Mcount_q_cy_8_rt_596,
      O => U1_Mcount_q_cy(8)
    );
  U1_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(7),
      LI => U1_Mcount_q_cy_8_rt_596,
      O => Result(8)
    );
  U1_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(8),
      DI => N0,
      S => U1_Mcount_q_cy_9_rt_598,
      O => U1_Mcount_q_cy(9)
    );
  U1_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(8),
      LI => U1_Mcount_q_cy_9_rt_598,
      O => Result(9)
    );
  U1_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(9),
      DI => N0,
      S => U1_Mcount_q_cy_10_rt_568,
      O => U1_Mcount_q_cy(10)
    );
  U1_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(9),
      LI => U1_Mcount_q_cy_10_rt_568,
      O => Result(10)
    );
  U1_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(10),
      DI => N0,
      S => U1_Mcount_q_cy_11_rt_570,
      O => U1_Mcount_q_cy(11)
    );
  U1_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(10),
      LI => U1_Mcount_q_cy_11_rt_570,
      O => Result(11)
    );
  U1_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(11),
      DI => N0,
      S => U1_Mcount_q_cy_12_rt_572,
      O => U1_Mcount_q_cy(12)
    );
  U1_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(11),
      LI => U1_Mcount_q_cy_12_rt_572,
      O => Result(12)
    );
  U1_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(12),
      DI => N0,
      S => U1_Mcount_q_cy_13_rt_574,
      O => U1_Mcount_q_cy(13)
    );
  U1_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(12),
      LI => U1_Mcount_q_cy_13_rt_574,
      O => Result(13)
    );
  U1_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(13),
      DI => N0,
      S => U1_Mcount_q_cy_14_rt_576,
      O => U1_Mcount_q_cy(14)
    );
  U1_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(13),
      LI => U1_Mcount_q_cy_14_rt_576,
      O => Result(14)
    );
  U1_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(14),
      DI => N0,
      S => U1_Mcount_q_cy_15_rt_578,
      O => U1_Mcount_q_cy(15)
    );
  U1_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(14),
      LI => U1_Mcount_q_cy_15_rt_578,
      O => Result(15)
    );
  U1_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(15),
      DI => N0,
      S => U1_Mcount_q_cy_16_rt_580,
      O => U1_Mcount_q_cy(16)
    );
  U1_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(15),
      LI => U1_Mcount_q_cy_16_rt_580,
      O => Result(16)
    );
  U1_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(16),
      LI => U1_Mcount_q_xor_17_rt_600,
      O => Result(17)
    );
  t : titleImage
    port map (
      clka => U1_q(0),
      douta(7) => sig_MTitle(7),
      douta(6) => sig_MTitle(6),
      douta(5) => sig_MTitle(5),
      douta(4) => sig_MTitle(4),
      douta(3) => sig_MTitle(3),
      douta(2) => sig_MTitle(2),
      douta(1) => sig_MTitle(1),
      douta(0) => sig_MTitle(0),
      addra(14) => sig_romTitle_addr14(14),
      addra(13) => sig_romTitle_addr14(13),
      addra(12) => sig_romTitle_addr14(12),
      addra(11) => sig_romTitle_addr14(11),
      addra(10) => sig_romTitle_addr14(10),
      addra(9) => sig_romTitle_addr14(9),
      addra(8) => sig_romTitle_addr14(8),
      addra(7) => sig_romTitle_addr14(7),
      addra(6) => sig_romTitle_addr14(6),
      addra(5) => sig_romTitle_addr14(5),
      addra(4) => sig_romTitle_addr14(4),
      addra(3) => sig_romTitle_addr14(3),
      addra(2) => U3_tank110sRomPix(2),
      addra(1) => U2_hcs(1),
      addra(0) => U2_hcs(0)
    );
  tank1font10s : fonts
    port map (
      clk => U1_q(0),
      dout(7) => sig_tank110sM(0),
      dout(6) => sig_tank110sM(1),
      dout(5) => sig_tank110sM(2),
      dout(4) => sig_tank110sM(3),
      dout(3) => sig_tank110sM(4),
      dout(2) => sig_tank110sM(5),
      dout(1) => sig_tank110sM(6),
      dout(0) => sig_tank110sM(7),
      addr(11) => sig_tank1rom10s(11),
      addr(10) => sig_tank1rom10s(10),
      addr(9) => sig_tank1rom10s(9),
      addr(8) => sig_tank1rom10s(8),
      addr(7) => sig_tank1rom10s(7),
      addr(6) => sig_tank1rom10s(6),
      addr(5) => sig_tank1rom10s(5),
      addr(4) => sig_tank1rom10s(4),
      addr(3) => sig_tank1rom10s(3),
      addr(2) => sig_tank1rom10s(2),
      addr(1) => sig_tank1rom10s(1),
      addr(0) => sig_tank1rom10s(0)
    );
  tank1font1s : fonts
    port map (
      clk => U1_q(0),
      dout(7) => sig_tank11sM(0),
      dout(6) => sig_tank11sM(1),
      dout(5) => sig_tank11sM(2),
      dout(4) => sig_tank11sM(3),
      dout(3) => sig_tank11sM(4),
      dout(2) => sig_tank11sM(5),
      dout(1) => sig_tank11sM(6),
      dout(0) => sig_tank11sM(7),
      addr(11) => sig_tank1rom1s(11),
      addr(10) => sig_tank1rom1s(10),
      addr(9) => sig_tank1rom1s(9),
      addr(8) => sig_tank1rom1s(8),
      addr(7) => sig_tank1rom1s(7),
      addr(6) => sig_tank1rom1s(6),
      addr(5) => sig_tank1rom1s(5),
      addr(4) => sig_tank1rom1s(4),
      addr(3) => sig_tank1rom10s(3),
      addr(2) => sig_tank1rom10s(2),
      addr(1) => sig_tank1rom10s(1),
      addr(0) => sig_tank1rom10s(0)
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_649,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_637,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_637,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_635,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_635,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_633,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_633,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_631,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_631,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_629,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_629,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_627,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_627,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_625,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_625,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_623,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_623,
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
      DI => N1,
      S => U2_Mcount_hcs_lut(0),
      O => U2_Mcount_hcs_cy(0)
    );
  U2_Mcount_vcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(8),
      LI => U2_Mcount_vcs_xor_9_rt_678,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_666,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_666,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_664,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_664,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_662,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_662,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_660,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_660,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_658,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_658,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_656,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_656,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_654,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_654,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_652,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_652,
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
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_738,
      CLR => btn_3_IBUF_2263,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_738
    );
  x7_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht1(0),
      I2 => sig_tank1_angle_calc(4),
      O => x7_Mmux_digit_3_2697
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_2699,
      I1 => x7_Mmux_digit_3_2697,
      S => x7_clkdiv(19),
      O => x7_digit(0)
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_2700,
      I1 => x7_Mmux_digit_31_2698,
      S => x7_clkdiv(19),
      O => x7_digit(1)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_2696,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_2676,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_2676,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_2674,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_2674,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_2672,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_2672,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_2670,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_2670,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_2668,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_2668,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_2666,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_2666,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_2664,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_2664,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_2662,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_2662,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_2660,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_2660,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_2694,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_2694,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_2692,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_2692,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_2690,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_2690,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_2688,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_2688,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_2686,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_2686,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_2684,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_2684,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_2682,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_2682,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_2680,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_2680,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_2678,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_2678,
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
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  screenstate_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_2296,
      D => N1,
      PRE => btn_3_IBUF_2263,
      Q => screenstate_present_state_FSM_FFd2_2433
    );
  screenstate_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => screenstate_present_state_FSM_FFd1_In,
      Q => screenstate_present_state_FSM_FFd1_2431
    );
  title_Madd_rom_addr2_add0000_Madd_xor_14_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(13),
      LI => title_rom_addr2_addsub0001(14),
      O => sig_romTitle_addr14(14)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(12),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_2527,
      O => sig_romTitle_addr14(13)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_13_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(12),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_2527,
      O => title_Madd_rom_addr2_add0000_Madd_cy(13)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(11),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_2525,
      O => sig_romTitle_addr14(12)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(11),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_2525,
      O => title_Madd_rom_addr2_add0000_Madd_cy(12)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(10),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_2523,
      O => sig_romTitle_addr14(11)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(10),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_2523,
      O => title_Madd_rom_addr2_add0000_Madd_cy(11)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(9),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_2521,
      O => sig_romTitle_addr14(10)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(9),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_2521,
      O => title_Madd_rom_addr2_add0000_Madd_cy(10)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_9_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(8),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(9),
      O => sig_romTitle_addr14(9)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(8),
      DI => title_rom_addr2_addsub0001(9),
      S => title_Madd_rom_addr2_add0000_Madd_lut(9),
      O => title_Madd_rom_addr2_add0000_Madd_cy(9)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_8_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(7),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(8),
      O => sig_romTitle_addr14(8)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(7),
      DI => title_rom_addr2_addsub0001(8),
      S => title_Madd_rom_addr2_add0000_Madd_lut(8),
      O => title_Madd_rom_addr2_add0000_Madd_cy(8)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_7_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(6),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(7),
      O => sig_romTitle_addr14(7)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(6),
      DI => title_rom_addr2_addsub0001(7),
      S => title_Madd_rom_addr2_add0000_Madd_lut(7),
      O => title_Madd_rom_addr2_add0000_Madd_cy(7)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_6_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(5),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(6),
      O => sig_romTitle_addr14(6)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(5),
      DI => title_rom_addr2_addsub0001(6),
      S => title_Madd_rom_addr2_add0000_Madd_lut(6),
      O => title_Madd_rom_addr2_add0000_Madd_cy(6)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_5_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(4),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(5),
      O => sig_romTitle_addr14(5)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(4),
      DI => title_rom_addr2_addsub0001(5),
      S => title_Madd_rom_addr2_add0000_Madd_lut(5),
      O => title_Madd_rom_addr2_add0000_Madd_cy(5)
    );
  title_Madd_rom_addr2_add0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(5),
      I1 => title_xpix(5),
      O => title_Madd_rom_addr2_add0000_Madd_lut(5)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_4_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(3),
      LI => title_Madd_rom_addr2_add0000_Madd_lut(4),
      O => sig_romTitle_addr14(4)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(3),
      DI => title_rom_addr2_addsub0001(4),
      S => title_Madd_rom_addr2_add0000_Madd_lut(4),
      O => title_Madd_rom_addr2_add0000_Madd_cy(4)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => title_Madd_rom_addr2_add0000_Madd_lut(3),
      O => sig_romTitle_addr14(3)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => title_ypix_addsub0000_0_Q,
      S => title_Madd_rom_addr2_add0000_Madd_lut(3),
      O => title_Madd_rom_addr2_add0000_Madd_cy(3)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(12),
      LI => title_rom_addr2_addsub0000(14),
      O => title_rom_addr2_addsub0001(14)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(11),
      LI => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_2557,
      O => title_rom_addr2_addsub0001(13)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(11),
      DI => N0,
      S => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_2557,
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(12)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_11_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(10),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => title_rom_addr2_addsub0001(12)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_11_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(10),
      DI => title_rom_addr2_addsub0000(12),
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(11)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(12),
      I1 => title_ypix_9_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(11)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_10_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(9),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => title_rom_addr2_addsub0001(11)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_10_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(9),
      DI => title_rom_addr2_addsub0000(11),
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(10)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_9_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(8),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => title_rom_addr2_addsub0001(10)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_9_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(8),
      DI => title_rom_addr2_addsub0000(10),
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(9)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_8_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(7),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => title_rom_addr2_addsub0001(9)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_8_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(7),
      DI => title_rom_addr2_addsub0000(9),
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(8)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(9),
      I1 => title_ypix_6_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(8)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_7_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(6),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => title_rom_addr2_addsub0001(8)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_7_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(6),
      DI => title_rom_addr2_addsub0000(8),
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(7)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_6_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(5),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => title_rom_addr2_addsub0001(7)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_6_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(5),
      DI => title_ypix_3_Q,
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(6)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_5_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(4),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => title_rom_addr2_addsub0001(6)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_5_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(4),
      DI => title_ypix_addsub0000_2_Q,
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(5)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_4_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(3),
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(4),
      O => title_rom_addr2_addsub0001(5)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_4_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(3),
      DI => title_ypix_addsub0000_1_Q,
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(4),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(4)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_ypix_addsub0000_1_Q,
      I1 => title_ypix_addsub0000_2_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(4)
    );
  title_Madd_rom_addr2_addsub0001_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => title_Madd_rom_addr2_addsub0001_Madd_lut(3),
      O => title_rom_addr2_addsub0001(4)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => title_ypix_addsub0000_0_Q,
      S => title_Madd_rom_addr2_addsub0001_Madd_lut(3),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy(3)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_ypix_addsub0000_0_Q,
      I1 => title_ypix_addsub0000_1_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(3)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_12_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(11),
      LI => title_Msub_ypix_xor_6_11_2597,
      O => title_rom_addr2_addsub0000(14)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_11_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(10),
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(11),
      O => title_rom_addr2_addsub0000(13)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(10),
      DI => title_ypix_5_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(11),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(11)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_10_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(9),
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => title_rom_addr2_addsub0000(12)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(9),
      DI => title_ypix_4_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(10)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_9_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(8),
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => title_rom_addr2_addsub0000(11)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(8),
      DI => title_ypix_3_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(9)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(7),
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => title_rom_addr2_addsub0000(10)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(7),
      DI => title_ypix_addsub0000_2_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(8)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_ypix_addsub0000_2_Q,
      I1 => title_ypix_6_Q,
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(8)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(6),
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => title_rom_addr2_addsub0000(9)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0000_Madd_cy(6),
      DI => title_ypix_addsub0000_1_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(7)
    );
  title_Madd_rom_addr2_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => N0,
      LI => title_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => title_rom_addr2_addsub0000(8)
    );
  title_Madd_rom_addr2_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => N0,
      DI => title_ypix_addsub0000_0_Q,
      S => title_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => title_Madd_rom_addr2_addsub0000_Madd_cy(6)
    );
  title_Msub_ypix_addsub0000_xor_9_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(8),
      LI => title_Msub_ypix_addsub0000_lut(9),
      O => title_ypix_addsub0000_9_Q
    );
  title_Msub_ypix_addsub0000_xor_8_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(7),
      LI => title_Msub_ypix_addsub0000_lut(8),
      O => title_ypix_addsub0000_8_Q
    );
  title_Msub_ypix_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(7),
      DI => N1,
      S => title_Msub_ypix_addsub0000_lut(8),
      O => title_Msub_ypix_addsub0000_cy(8)
    );
  title_Msub_ypix_addsub0000_xor_7_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(6),
      LI => title_Msub_ypix_addsub0000_lut(7),
      O => title_Msub_ypix_lut_7_Q
    );
  title_Msub_ypix_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(6),
      DI => N1,
      S => title_Msub_ypix_addsub0000_lut(7),
      O => title_Msub_ypix_addsub0000_cy(7)
    );
  title_Msub_ypix_addsub0000_xor_6_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(5),
      LI => title_Msub_ypix_addsub0000_lut(6),
      O => title_ypix_addsub0000_6_Q
    );
  title_Msub_ypix_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(5),
      DI => N1,
      S => title_Msub_ypix_addsub0000_lut(6),
      O => title_Msub_ypix_addsub0000_cy(6)
    );
  title_Msub_ypix_addsub0000_xor_5_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(4),
      LI => title_Msub_ypix_addsub0000_lut(5),
      O => title_Msub_ypix_lut_5_Q
    );
  title_Msub_ypix_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(4),
      DI => N1,
      S => title_Msub_ypix_addsub0000_lut(5),
      O => title_Msub_ypix_addsub0000_cy(5)
    );
  title_Msub_ypix_addsub0000_xor_4_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(3),
      LI => title_Msub_ypix_addsub0000_cy_4_rt_2583,
      O => title_Msub_ypix_lut_4_Q
    );
  title_Msub_ypix_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(3),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_4_rt_2583,
      O => title_Msub_ypix_addsub0000_cy(4)
    );
  title_Msub_ypix_addsub0000_xor_3_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(2),
      LI => title_Msub_ypix_addsub0000_cy_3_rt_2581,
      O => title_Msub_ypix_cy(3)
    );
  title_Msub_ypix_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(2),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_3_rt_2581,
      O => title_Msub_ypix_addsub0000_cy(3)
    );
  title_Msub_ypix_addsub0000_xor_2_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(1),
      LI => title_Msub_ypix_addsub0000_cy_2_rt_2579,
      O => title_ypix_addsub0000_2_Q
    );
  title_Msub_ypix_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(1),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_2_rt_2579,
      O => title_Msub_ypix_addsub0000_cy(2)
    );
  title_Msub_ypix_addsub0000_xor_1_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(0),
      LI => title_Msub_ypix_addsub0000_cy_1_rt_2577,
      O => title_ypix_addsub0000_1_Q
    );
  title_Msub_ypix_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(0),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_1_rt_2577,
      O => title_Msub_ypix_addsub0000_cy(1)
    );
  title_Msub_ypix_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => title_Msub_ypix_addsub0000_cy_0_rt_2575,
      O => title_ypix_addsub0000_0_Q
    );
  title_Msub_ypix_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_0_rt_2575,
      O => title_Msub_ypix_addsub0000_cy(0)
    );
  bounce_delay3_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(7),
      Q => bounce_delay3(7)
    );
  bounce_delay3_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(6),
      Q => bounce_delay3(6)
    );
  bounce_delay3_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(5),
      Q => bounce_delay3(5)
    );
  bounce_delay3_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(4),
      Q => bounce_delay3(4)
    );
  bounce_delay3_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(3),
      Q => bounce_delay3(3)
    );
  bounce_delay3_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(2),
      Q => bounce_delay3(2)
    );
  bounce_delay3_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(1),
      Q => bounce_delay3(1)
    );
  bounce_delay3_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay2(0),
      Q => bounce_delay3(0)
    );
  bounce_delay2_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(7),
      Q => bounce_delay2(7)
    );
  bounce_delay2_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(6),
      Q => bounce_delay2(6)
    );
  bounce_delay2_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(5),
      Q => bounce_delay2(5)
    );
  bounce_delay2_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(4),
      Q => bounce_delay2(4)
    );
  bounce_delay2_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(3),
      Q => bounce_delay2(3)
    );
  bounce_delay2_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(2),
      Q => bounce_delay2(2)
    );
  bounce_delay2_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(1),
      Q => bounce_delay2(1)
    );
  bounce_delay2_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => bounce_delay1(0),
      Q => bounce_delay2(0)
    );
  bounce_delay1_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_left_reg_2376,
      Q => bounce_delay1(7)
    );
  bounce_delay1_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_down_reg_2374,
      Q => bounce_delay1(6)
    );
  bounce_delay1_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_up_reg_2419,
      Q => bounce_delay1(5)
    );
  bounce_delay1_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_right_reg_2380,
      Q => bounce_delay1(4)
    );
  bounce_delay1_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_sel_reg_2415,
      Q => bounce_delay1(3)
    );
  bounce_delay1_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_start_reg_2417,
      Q => bounce_delay1(2)
    );
  bounce_delay1_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_b_reg_2359,
      Q => bounce_delay1(1)
    );
  bounce_delay1_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2263,
      D => nes_a_reg_2357,
      Q => bounce_delay1(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_2344,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_2332,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_2332,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_2330,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_2330,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_2328,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_2328,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_2326,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_2326,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_2324,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_2324,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_2322,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_2322,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_2320,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_2320,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_2318,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_2318,
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
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_2315,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_2313,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_2313,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_2311,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_2311,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_2309,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_2309,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_2307,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_2307,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_2305,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_2305,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_2303,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_2303,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_2301,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_2301,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_2299,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_2299,
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
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2263,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_2380
    );
  nes_b_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_b_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_b_reg_2359
    );
  nes_sel_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_sel_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_sel_reg_2415
    );
  nes_start_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_start_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_start_reg_2417
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_2357
    );
  nes_up_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_2419
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2263,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_2374
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_2376
    );
  U3_RMcnt_0 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_0_and0000,
      D => U3_RMcnt_Q_mux0000(0),
      PRE => U3_RMcnt_0_and0001,
      Q => U3_RMcnt(0)
    );
  U3_RMcnt_1 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_1_and0000,
      D => U3_RMcnt_Q_mux0000(1),
      PRE => U3_RMcnt_1_and0001,
      Q => U3_RMcnt(1)
    );
  U3_RMcnt_2 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_2_and0000,
      D => U3_RMcnt_Q_mux0000(2),
      PRE => U3_RMcnt_2_and0001,
      Q => U3_RMcnt(2)
    );
  U3_RMcnt_3 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_3_and0000,
      D => U3_RMcnt_Q_mux0000(3),
      PRE => U3_RMcnt_3_and0001,
      Q => U3_RMcnt(3)
    );
  U3_RMcnt_4 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_4_and0000,
      D => U3_RMcnt_Q_mux0000(4),
      PRE => U3_RMcnt_4_and0001,
      Q => U3_RMcnt(4)
    );
  U3_RMcnt_5 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt_and0001,
      CLR => U3_RMcnt_5_and0000,
      D => U3_RMcnt_Q_mux0000(5),
      PRE => U3_RMcnt_5_and0001,
      Q => U3_RMcnt(5)
    );
  U3_RMcnt2_0 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_0_and0000,
      D => U3_RMcnt2_Q_mux0000(0),
      PRE => U3_RMcnt2_0_and0001,
      Q => U3_RMcnt2(0)
    );
  U3_RMcnt2_1 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_1_and0000,
      D => U3_RMcnt2_Q_mux0000(1),
      PRE => U3_RMcnt2_1_and0001,
      Q => U3_RMcnt2(1)
    );
  U3_RMcnt2_2 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_2_and0000,
      D => U3_RMcnt2_Q_mux0000(2),
      PRE => U3_RMcnt2_2_and0001,
      Q => U3_RMcnt2(2)
    );
  U3_RMcnt2_3 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_3_and0000,
      D => U3_RMcnt2_Q_mux0000(3),
      PRE => U3_RMcnt2_3_and0001,
      Q => U3_RMcnt2(3)
    );
  U3_RMcnt2_4 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_4_and0000,
      D => U3_RMcnt2_Q_mux0000(4),
      PRE => U3_RMcnt2_4_and0001,
      Q => U3_RMcnt2(4)
    );
  U3_RMcnt2_5 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RMcnt2_and0001,
      CLR => U3_RMcnt2_5_and0000,
      D => U3_RMcnt2_Q_mux0000(5),
      PRE => U3_RMcnt2_5_and0001,
      Q => U3_RMcnt2(5)
    );
  U3_CM1_Madd_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_CM1_Madd_add0000_lut(0),
      O => U3_CM1_Madd_add0000_cy(0)
    );
  U3_CM1_Madd_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_CM1_Madd_add0000_lut(0),
      O => U3_CM1_add0000(0)
    );
  U3_CM1_Madd_add0000_cy_1_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(0),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_1_rt_816,
      O => U3_CM1_Madd_add0000_cy(1)
    );
  U3_CM1_Madd_add0000_xor_1_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(0),
      LI => U3_CM1_Madd_add0000_cy_1_rt_816,
      O => U3_CM1_add0000(1)
    );
  U3_CM1_Madd_add0000_cy_2_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(1),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_2_rt_818,
      O => U3_CM1_Madd_add0000_cy(2)
    );
  U3_CM1_Madd_add0000_xor_2_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(1),
      LI => U3_CM1_Madd_add0000_cy_2_rt_818,
      O => U3_CM1_add0000(2)
    );
  U3_CM1_Madd_add0000_cy_3_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(2),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_3_rt_820,
      O => U3_CM1_Madd_add0000_cy(3)
    );
  U3_CM1_Madd_add0000_xor_3_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(2),
      LI => U3_CM1_Madd_add0000_cy_3_rt_820,
      O => U3_CM1_add0000(3)
    );
  U3_CM1_Madd_add0000_cy_4_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(3),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_4_rt_822,
      O => U3_CM1_Madd_add0000_cy(4)
    );
  U3_CM1_Madd_add0000_xor_4_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(3),
      LI => U3_CM1_Madd_add0000_cy_4_rt_822,
      O => U3_CM1_add0000(4)
    );
  U3_CM1_Madd_add0000_cy_5_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(4),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_5_rt_824,
      O => U3_CM1_Madd_add0000_cy(5)
    );
  U3_CM1_Madd_add0000_xor_5_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(4),
      LI => U3_CM1_Madd_add0000_cy_5_rt_824,
      O => U3_CM1_add0000(5)
    );
  U3_CM1_Madd_add0000_cy_6_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(5),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_6_rt_826,
      O => U3_CM1_Madd_add0000_cy(6)
    );
  U3_CM1_Madd_add0000_xor_6_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(5),
      LI => U3_CM1_Madd_add0000_cy_6_rt_826,
      O => U3_CM1_add0000(6)
    );
  U3_CM1_Madd_add0000_cy_7_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(6),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_7_rt_828,
      O => U3_CM1_Madd_add0000_cy(7)
    );
  U3_CM1_Madd_add0000_xor_7_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(6),
      LI => U3_CM1_Madd_add0000_cy_7_rt_828,
      O => U3_CM1_add0000(7)
    );
  U3_CM1_Madd_add0000_cy_8_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(7),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_8_rt_830,
      O => U3_CM1_Madd_add0000_cy(8)
    );
  U3_CM1_Madd_add0000_xor_8_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(7),
      LI => U3_CM1_Madd_add0000_cy_8_rt_830,
      O => U3_CM1_add0000(8)
    );
  U3_CM1_Madd_add0000_xor_9_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(8),
      LI => U3_CM1_Madd_add0000_xor_9_rt_832,
      O => U3_CM1_add0000(9)
    );
  U3_CM1_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_0_and0000,
      D => U3_CM1_Q_mux0000(0),
      PRE => U3_CM1_0_and0001,
      Q => U3_CM1(0)
    );
  U3_CM1_1 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_1_and0000,
      D => U3_CM1_Q_mux0000(1),
      PRE => U3_CM1_1_and0001,
      Q => U3_CM1(1)
    );
  U3_CM1_2 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_2_and0000,
      D => U3_CM1_Q_mux0000(2),
      PRE => U3_CM1_2_and0001,
      Q => U3_CM1(2)
    );
  U3_CM1_3 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_3_and0000,
      D => U3_CM1_Q_mux0000(3),
      PRE => U3_CM1_3_and0001,
      Q => U3_CM1(3)
    );
  U3_CM1_4 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_4_and0000,
      D => U3_CM1_Q_mux0000(4),
      PRE => U3_CM1_4_and0001,
      Q => U3_CM1(4)
    );
  U3_CM1_5 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_5_and0000,
      D => U3_CM1_Q_mux0000(5),
      PRE => U3_CM1_5_and0001,
      Q => U3_CM1(5)
    );
  U3_CM1_6 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_6_and0000,
      D => U3_CM1_Q_mux0000(6),
      PRE => U3_CM1_6_and0001,
      Q => U3_CM1(6)
    );
  U3_CM1_7 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_7_and0000,
      D => U3_CM1_Q_mux0000(7),
      PRE => U3_CM1_7_and0001,
      Q => U3_CM1(7)
    );
  U3_CM1_8 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_8_and0000,
      D => U3_CM1_Q_mux0000(8),
      PRE => U3_CM1_8_and0001,
      Q => U3_CM1(8)
    );
  U3_CM1_9 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM1_and0000,
      CLR => U3_CM1_9_and0000,
      D => U3_CM1_Q_mux0000(9),
      PRE => U3_CM1_9_and0001,
      Q => U3_CM1(9)
    );
  U3_CM2_Msub_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_CM2_Msub_sub0000_cy_0_rt_895,
      O => U3_CM2_Msub_sub0000_cy(0)
    );
  U3_CM2_Msub_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_CM2_Msub_sub0000_cy_0_rt_895,
      O => U3_CM2_sub0000(0)
    );
  U3_CM2_Msub_sub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(0),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(1),
      O => U3_CM2_Msub_sub0000_cy(1)
    );
  U3_CM2_Msub_sub0000_xor_1_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(0),
      LI => U3_CM2_Msub_sub0000_lut(1),
      O => U3_CM2_sub0000(1)
    );
  U3_CM2_Msub_sub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(1),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(2),
      O => U3_CM2_Msub_sub0000_cy(2)
    );
  U3_CM2_Msub_sub0000_xor_2_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(1),
      LI => U3_CM2_Msub_sub0000_lut(2),
      O => U3_CM2_sub0000(2)
    );
  U3_CM2_Msub_sub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(2),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(3),
      O => U3_CM2_Msub_sub0000_cy(3)
    );
  U3_CM2_Msub_sub0000_xor_3_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(2),
      LI => U3_CM2_Msub_sub0000_lut(3),
      O => U3_CM2_sub0000(3)
    );
  U3_CM2_Msub_sub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(3),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(4),
      O => U3_CM2_Msub_sub0000_cy(4)
    );
  U3_CM2_Msub_sub0000_xor_4_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(3),
      LI => U3_CM2_Msub_sub0000_lut(4),
      O => U3_CM2_sub0000(4)
    );
  U3_CM2_Msub_sub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(4),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(5),
      O => U3_CM2_Msub_sub0000_cy(5)
    );
  U3_CM2_Msub_sub0000_xor_5_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(4),
      LI => U3_CM2_Msub_sub0000_lut(5),
      O => U3_CM2_sub0000(5)
    );
  U3_CM2_Msub_sub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(5),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(6),
      O => U3_CM2_Msub_sub0000_cy(6)
    );
  U3_CM2_Msub_sub0000_xor_6_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(5),
      LI => U3_CM2_Msub_sub0000_lut(6),
      O => U3_CM2_sub0000(6)
    );
  U3_CM2_Msub_sub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(6),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(7),
      O => U3_CM2_Msub_sub0000_cy(7)
    );
  U3_CM2_Msub_sub0000_xor_7_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(6),
      LI => U3_CM2_Msub_sub0000_lut(7),
      O => U3_CM2_sub0000(7)
    );
  U3_CM2_Msub_sub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(7),
      DI => N1,
      S => U3_CM2_Msub_sub0000_lut(8),
      O => U3_CM2_Msub_sub0000_cy(8)
    );
  U3_CM2_Msub_sub0000_xor_8_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(7),
      LI => U3_CM2_Msub_sub0000_lut(8),
      O => U3_CM2_sub0000(8)
    );
  U3_CM2_Msub_sub0000_xor_9_Q : XORCY
    port map (
      CI => U3_CM2_Msub_sub0000_cy(8),
      LI => U3_CM2_Msub_sub0000_lut(9),
      O => U3_CM2_sub0000(9)
    );
  U3_CM2_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_0_and0000,
      D => U3_CM2_Q_mux0000(0),
      PRE => U3_CM2_0_and0001,
      Q => U3_CM2(0)
    );
  U3_CM2_1 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_1_and0000,
      D => U3_CM2_Q_mux0000(1),
      PRE => U3_CM2_1_and0001,
      Q => U3_CM2(1)
    );
  U3_CM2_2 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_2_and0000,
      D => U3_CM2_Q_mux0000(2),
      PRE => U3_CM2_2_and0001,
      Q => U3_CM2(2)
    );
  U3_CM2_3 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_3_and0000,
      D => U3_CM2_Q_mux0000(3),
      PRE => U3_CM2_3_and0001,
      Q => U3_CM2(3)
    );
  U3_CM2_4 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_4_and0000,
      D => U3_CM2_Q_mux0000(4),
      PRE => U3_CM2_4_and0001,
      Q => U3_CM2(4)
    );
  U3_CM2_5 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_5_and0000,
      D => U3_CM2_Q_mux0000(5),
      PRE => U3_CM2_5_and0001,
      Q => U3_CM2(5)
    );
  U3_CM2_6 : FDCPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_6_and0000,
      D => U3_CM2_Q_mux0000(6),
      PRE => U3_CM2_6_and0001,
      Q => U3_CM2(6)
    );
  U3_CM2_7 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_7_and0000,
      D => U3_CM2_Q_mux0000(7),
      PRE => U3_CM2_7_and0001,
      Q => U3_CM2(7)
    );
  U3_CM2_8 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_8_and0000,
      D => U3_CM2_Q_mux0000(8),
      PRE => U3_CM2_8_and0001,
      Q => U3_CM2(8)
    );
  U3_CM2_9 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(18),
      CE => U3_CM2_and0000,
      CLR => U3_CM2_9_and0000,
      D => U3_CM2_Q_mux0000(9),
      PRE => U3_CM2_9_and0001,
      Q => U3_CM2(9)
    );
  U3_font1_2 : LDCP
    port map (
      CLR => U3_font1_2_and0000,
      D => U3_font1_mux0007(5),
      G => U3_C2_not000186,
      PRE => U3_font1_2_and0001,
      Q => U3_font1(2)
    );
  U3_font1_1 : LDCP
    port map (
      CLR => U3_font1_1_and0000,
      D => U3_font1_mux0007(6),
      G => U3_C2_not000186,
      PRE => U3_font1_1_and0001,
      Q => U3_font1(1)
    );
  U3_font1_0 : LDCP
    port map (
      CLR => U3_font1_0_and0000,
      D => U3_font1_mux0007(7),
      G => U3_C2_not000186,
      PRE => U3_font1_0_and0001,
      Q => U3_font1(0)
    );
  U3_font2_5 : LDCP
    port map (
      CLR => U3_font2_5_and0000,
      D => U3_font2_mux0007(5),
      G => U3_C2_not000186,
      PRE => U3_font2_5_and0001,
      Q => U3_font2(5)
    );
  U3_font2_4 : LDCP
    port map (
      CLR => U3_font2_4_and0000,
      D => U3_font2_mux0007(4),
      G => U3_C2_not000186,
      PRE => U3_font2_4_and0001,
      Q => U3_font2(4)
    );
  U3_font2_3 : LDCP
    port map (
      CLR => U3_font2_3_and0000,
      D => U3_font2_mux0007(3),
      G => U3_C2_not000186,
      PRE => U3_font2_3_and0001,
      Q => U3_font2(3)
    );
  U3_font2_2 : LDCP
    port map (
      CLR => U3_font2_2_and0000,
      D => U3_font2_mux0007(2),
      G => U3_C2_not000186,
      PRE => U3_font2_2_and0001,
      Q => U3_font2(2)
    );
  U3_font2_1 : LDCP
    port map (
      CLR => U3_font2_1_and0000,
      D => U3_font2_mux0007(1),
      G => U3_C2_not000186,
      PRE => U3_font2_1_and0001,
      Q => U3_font2(1)
    );
  U3_font2_0 : LDCP
    port map (
      CLR => U3_font2_0_and0000,
      D => U3_font2_mux0007(0),
      G => U3_C2_not000186,
      PRE => U3_font2_0_and0001,
      Q => U3_font2(0)
    );
  U3_RM1_2 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(7),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(2)
    );
  U3_RM1_0 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(9),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(0)
    );
  U3_RM1_1 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(8),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(1)
    );
  U3_RM1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      CLR => U3_RMcnt_and0000,
      D => U3_RM1_mux0002(6),
      Q => U3_RM1(3)
    );
  U3_RM1_4 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(5),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(4)
    );
  U3_RM1_7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(2),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(7)
    );
  U3_RM1_5 : FDCE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      CLR => U3_RMcnt_and0000,
      D => U3_RM1_mux0002(4),
      Q => U3_RM1(5)
    );
  U3_RM1_6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(3),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(6)
    );
  U3_RM1_8 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      D => U3_RM1_mux0002(1),
      PRE => U3_RMcnt_and0000,
      Q => U3_RM1(8)
    );
  U3_RM1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM1_and0000,
      CLR => U3_RMcnt_and0000,
      D => U3_RM1_mux0002(0),
      Q => U3_RM1(9)
    );
  U3_RM2_2 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(7),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(2)
    );
  U3_RM2_0 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(9),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(0)
    );
  U3_RM2_1 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(8),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(1)
    );
  U3_RM2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      CLR => U3_RMcnt2_and0000,
      D => U3_RM2_mux0002(6),
      Q => U3_RM2(3)
    );
  U3_RM2_4 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(5),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(4)
    );
  U3_RM2_7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(2),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(7)
    );
  U3_RM2_5 : FDCE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      CLR => U3_RMcnt2_and0000,
      D => U3_RM2_mux0002(4),
      Q => U3_RM2(5)
    );
  U3_RM2_6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(3),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(6)
    );
  U3_RM2_8 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      D => U3_RM2_mux0002(1),
      PRE => U3_RMcnt2_and0000,
      Q => U3_RM2(8)
    );
  U3_RM2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_RM2_and0000,
      CLR => U3_RMcnt2_and0000,
      D => U3_RM2_mux0002(0),
      Q => U3_RM2(9)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(8),
      DI => U3_spriteonM2_addsub0001(9),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(9),
      O => U3_spriteonM2_cmp_le0000
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(9),
      I1 => U2_hcs(9),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(9)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(7),
      DI => U3_spriteonM2_addsub0001(8),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(8),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(8)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(8),
      I1 => U2_hcs(8),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(8)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(6),
      DI => U3_spriteonM2_addsub0001(7),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(7)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(7)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(5),
      DI => U3_spriteonM2_addsub0001(6),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(6),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(6)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(6),
      I1 => U2_hcs(6),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(6)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(4),
      DI => U3_spriteonM2_addsub0001(5),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(5),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(5)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(5),
      I1 => U2_hcs(5),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(5)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(3),
      DI => U3_spriteonM2_addsub0001(4),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(4),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(4)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(4)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(2),
      DI => U3_spriteonM2_addsub0001(3),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(3),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(3)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(3)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(1),
      DI => U3_spriteonM2_addsub0001(2),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(2),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(2)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(2)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_le0000_cy(0),
      DI => U3_spriteonM2_addsub0001(1),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(1),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(1)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(1)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U3_spriteonM2_addsub0001(0),
      S => U3_Mcompar_spriteonM2_cmp_le0000_lut(0),
      O => U3_Mcompar_spriteonM2_cmp_le0000_cy(0)
    );
  U3_Mcompar_spriteonM2_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0001(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteonM2_cmp_le0000_lut(0)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(8),
      DI => U3_spriteonM1_addsub0001(9),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(9),
      O => U3_spriteonM1_cmp_le0000
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(9),
      I1 => U2_hcs(9),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(9)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(7),
      DI => U3_spriteonM1_addsub0001(8),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(8),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(8)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(8),
      I1 => U2_hcs(8),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(8)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(6),
      DI => U3_spriteonM1_addsub0001(7),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(7)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(7)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(5),
      DI => U3_spriteonM1_addsub0001(6),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(6),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(6)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(6),
      I1 => U2_hcs(6),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(6)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(4),
      DI => U3_spriteonM1_addsub0001(5),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(5),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(5)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(5),
      I1 => U2_hcs(5),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(5)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(3),
      DI => U3_spriteonM1_addsub0001(4),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(4),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(4)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(4)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(2),
      DI => U3_spriteonM1_addsub0001(3),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(3),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(3)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(3)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(1),
      DI => U3_spriteonM1_addsub0001(2),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(2),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(2)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(2)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_le0000_cy(0),
      DI => U3_spriteonM1_addsub0001(1),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(1),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(1)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(1)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U3_spriteonM1_addsub0001(0),
      S => U3_Mcompar_spriteonM1_cmp_le0000_lut(0),
      O => U3_Mcompar_spriteonM1_cmp_le0000_cy(0)
    );
  U3_Mcompar_spriteonM1_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0001(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteonM1_cmp_le0000_lut(0)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(8),
      DI => U2_vcs(9),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(9)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonM2_addsub0003(9),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(7),
      DI => U2_vcs(8),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(8)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U3_spriteonM2_addsub0003(8),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(7)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U3_spriteonM2_addsub0003(7),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(6)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_spriteonM2_addsub0003(6),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(5)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonM2_addsub0003(5),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(4)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U3_spriteonM2_addsub0003(4),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(3)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonM2_addsub0003(3),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(2)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U3_spriteonM2_addsub0003(2),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_lt0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(1)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_spriteonM2_addsub0003(1),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonM2_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_cy(0)
    );
  U3_Mcompar_spriteonM2_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_spriteonM2_addsub0003(0),
      O => U3_Mcompar_spriteonM2_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(8),
      DI => U2_vcs(9),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(9)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonM1_addsub0003(9),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(7),
      DI => U2_vcs(8),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(8)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U3_spriteonM1_addsub0003(8),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(7)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U3_spriteonM1_addsub0003(7),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(6)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_spriteonM1_addsub0003(6),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(5)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonM1_addsub0003(5),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(4)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U3_spriteonM1_addsub0003(4),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(3)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonM1_addsub0003(3),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(2)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U3_spriteonM1_addsub0003(2),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_lt0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(1)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_spriteonM1_addsub0003(1),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonM1_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_cy(0)
    );
  U3_Mcompar_spriteonM1_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_spriteonM1_addsub0003(0),
      O => U3_Mcompar_spriteonM1_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(8),
      DI => U3_spriteonM2_addsub0000(9),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(9),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(9)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(7),
      DI => U3_spriteonM2_addsub0000(8),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(8),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(8)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(6),
      DI => U3_spriteonM2_addsub0000(7),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(7),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(7)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM2_addsub0000(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(7)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(5),
      DI => U3_spriteonM2_addsub0000(6),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(6),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(6)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(4),
      DI => U3_spriteonM2_addsub0000(5),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(5),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(5)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(3),
      DI => U3_spriteonM2_addsub0000(4),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(4),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(4)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(2),
      DI => U3_CM2(3),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(3),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(3)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(3)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(1),
      DI => U3_CM2(2),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(2),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(2)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(2)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_gt0000_cy(0),
      DI => U3_CM2(1),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(1),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(1)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(1)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U3_CM2(0),
      S => U3_Mcompar_spriteonM2_cmp_gt0000_lut(0),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_cy(0)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(0)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(8),
      DI => U3_spriteonM1_addsub0000(9),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(9),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(9)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(7),
      DI => U3_spriteonM1_addsub0000(8),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(8),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(8)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(6),
      DI => U3_spriteonM1_addsub0000(7),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(7),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(7)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_spriteonM1_addsub0000(7),
      I1 => U2_hcs(7),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(7)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(5),
      DI => U3_spriteonM1_addsub0000(6),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(6),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(6)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(4),
      DI => U3_spriteonM1_addsub0000(5),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(5),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(5)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(3),
      DI => U3_spriteonM1_addsub0000(4),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(4),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(4)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(2),
      DI => U3_CM1(3),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(3),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(3)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(3),
      I1 => U2_hcs(3),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(3)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(1),
      DI => U3_CM1(2),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(2),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(2)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(2),
      I1 => U2_hcs(2),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(2)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_gt0000_cy(0),
      DI => U3_CM1(1),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(1),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(1)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(1),
      I1 => U2_hcs(1),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(1)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U3_CM1(0),
      S => U3_Mcompar_spriteonM1_cmp_gt0000_lut(0),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_cy(0)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(0),
      I1 => U2_hcs(0),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(0)
    );
  U3_Madd_spriteonM2_addsub0001_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(8),
      LI => U3_spriteonM2_addsub0000_9_1_2144,
      O => U3_spriteonM2_addsub0001(9)
    );
  U3_Madd_spriteonM2_addsub0001_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(7),
      LI => U3_spriteonM2_addsub0000_8_2_2141,
      O => U3_spriteonM2_addsub0001(8)
    );
  U3_Madd_spriteonM2_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(7),
      DI => N0,
      S => U3_spriteonM2_addsub0000_8_2_2141,
      O => U3_Madd_spriteonM2_addsub0001_cy(8)
    );
  U3_Madd_spriteonM2_addsub0001_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(6),
      LI => U3_Madd_spriteonM2_addsub0000_xor_7_11_1036,
      O => U3_spriteonM2_addsub0001(7)
    );
  U3_Madd_spriteonM2_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_7_11_1036,
      O => U3_Madd_spriteonM2_addsub0001_cy(7)
    );
  U3_Madd_spriteonM2_addsub0001_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(5),
      LI => U3_Madd_spriteonM2_addsub0000_xor_6_11_1035,
      O => U3_spriteonM2_addsub0001(6)
    );
  U3_Madd_spriteonM2_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_6_11_1035,
      O => U3_Madd_spriteonM2_addsub0001_cy(6)
    );
  U3_Madd_spriteonM2_addsub0001_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(4),
      LI => U3_Madd_spriteonM2_addsub0000_xor_5_11_1034,
      O => U3_spriteonM2_addsub0001(5)
    );
  U3_Madd_spriteonM2_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_5_11_1034,
      O => U3_Madd_spriteonM2_addsub0001_cy(5)
    );
  U3_Madd_spriteonM2_addsub0001_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(3),
      LI => U3_Madd_spriteonM2_addsub0000_xor_4_11,
      O => U3_spriteonM2_addsub0001(4)
    );
  U3_Madd_spriteonM2_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_4_11,
      O => U3_Madd_spriteonM2_addsub0001_cy(4)
    );
  U3_Madd_spriteonM2_addsub0001_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(2),
      LI => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1042,
      O => U3_spriteonM2_addsub0001(3)
    );
  U3_Madd_spriteonM2_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1042,
      O => U3_Madd_spriteonM2_addsub0001_cy(3)
    );
  U3_Madd_spriteonM2_addsub0001_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(1),
      LI => U3_Madd_spriteonM2_addsub0001_lut_2_Q,
      O => U3_spriteonM2_addsub0001(2)
    );
  U3_Madd_spriteonM2_addsub0001_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0001_lut_2_Q,
      O => U3_Madd_spriteonM2_addsub0001_cy(2)
    );
  U3_Madd_spriteonM2_addsub0001_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(0),
      LI => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1039,
      O => U3_spriteonM2_addsub0001(1)
    );
  U3_Madd_spriteonM2_addsub0001_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1039,
      O => U3_Madd_spriteonM2_addsub0001_cy(1)
    );
  U3_Madd_spriteonM2_addsub0001_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM2_addsub0001_lut_0_Q,
      O => U3_spriteonM2_addsub0001(0)
    );
  U3_Madd_spriteonM2_addsub0001_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0001_lut_0_Q,
      O => U3_Madd_spriteonM2_addsub0001_cy(0)
    );
  U3_Madd_spriteonM1_addsub0001_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(8),
      LI => U3_spriteonM1_addsub0000_9_1_2102,
      O => U3_spriteonM1_addsub0001(9)
    );
  U3_Madd_spriteonM1_addsub0001_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(7),
      LI => U3_spriteonM1_addsub0000_8_2_2099,
      O => U3_spriteonM1_addsub0001(8)
    );
  U3_Madd_spriteonM1_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(7),
      DI => N0,
      S => U3_spriteonM1_addsub0000_8_2_2099,
      O => U3_Madd_spriteonM1_addsub0001_cy(8)
    );
  U3_Madd_spriteonM1_addsub0001_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(6),
      LI => U3_Madd_spriteonM1_addsub0000_xor_7_11_981,
      O => U3_spriteonM1_addsub0001(7)
    );
  U3_Madd_spriteonM1_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_7_11_981,
      O => U3_Madd_spriteonM1_addsub0001_cy(7)
    );
  U3_Madd_spriteonM1_addsub0001_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(5),
      LI => U3_Madd_spriteonM1_addsub0000_xor_6_11_980,
      O => U3_spriteonM1_addsub0001(6)
    );
  U3_Madd_spriteonM1_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_6_11_980,
      O => U3_Madd_spriteonM1_addsub0001_cy(6)
    );
  U3_Madd_spriteonM1_addsub0001_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(4),
      LI => U3_Madd_spriteonM1_addsub0000_xor_5_11_979,
      O => U3_spriteonM1_addsub0001(5)
    );
  U3_Madd_spriteonM1_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_5_11_979,
      O => U3_Madd_spriteonM1_addsub0001_cy(5)
    );
  U3_Madd_spriteonM1_addsub0001_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(3),
      LI => U3_Madd_spriteonM1_addsub0000_xor_4_11,
      O => U3_spriteonM1_addsub0001(4)
    );
  U3_Madd_spriteonM1_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_4_11,
      O => U3_Madd_spriteonM1_addsub0001_cy(4)
    );
  U3_Madd_spriteonM1_addsub0001_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(2),
      LI => U3_Madd_spriteonM1_addsub0001_cy_3_rt_987,
      O => U3_spriteonM1_addsub0001(3)
    );
  U3_Madd_spriteonM1_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0001_cy_3_rt_987,
      O => U3_Madd_spriteonM1_addsub0001_cy(3)
    );
  U3_Madd_spriteonM1_addsub0001_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(1),
      LI => U3_Madd_spriteonM1_addsub0001_lut_2_Q,
      O => U3_spriteonM1_addsub0001(2)
    );
  U3_Madd_spriteonM1_addsub0001_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0001_lut_2_Q,
      O => U3_Madd_spriteonM1_addsub0001_cy(2)
    );
  U3_Madd_spriteonM1_addsub0001_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(0),
      LI => U3_Madd_spriteonM1_addsub0001_cy_1_rt_984,
      O => U3_spriteonM1_addsub0001(1)
    );
  U3_Madd_spriteonM1_addsub0001_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0001_cy_1_rt_984,
      O => U3_Madd_spriteonM1_addsub0001_cy(1)
    );
  U3_Madd_spriteonM1_addsub0001_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM1_addsub0001_lut_0_Q,
      O => U3_spriteonM1_addsub0001(0)
    );
  U3_Madd_spriteonM1_addsub0001_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0001_lut_0_Q,
      O => U3_Madd_spriteonM1_addsub0001_cy(0)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(8),
      DI => U2_vcs(9),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(9),
      O => U3_spriteonM2_cmp_ge0000
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonM2_addsub0002(9),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(7),
      DI => U2_vcs(8),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(8),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(8)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U3_spriteonM2_addsub0002(8),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U3_spriteonM2_addsub0002(7),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_spriteonM2_addsub0002(6),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonM2_addsub0002(5),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U3_spriteonM2_addsub0002(4),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonM2_addsub0002(3),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U3_spriteonM2_addsub0002(2),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM2_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_spriteonM2_addsub0002(1),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonM2_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonM2_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_spriteonM2_addsub0002(0),
      O => U3_Mcompar_spriteonM2_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(8),
      DI => U2_vcs(9),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(9),
      O => U3_spriteonM1_cmp_ge0000
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonM1_addsub0002(9),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(7),
      DI => U2_vcs(8),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(8),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(8)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U3_spriteonM1_addsub0002(8),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(7)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U3_spriteonM1_addsub0002(7),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(6)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_spriteonM1_addsub0002(6),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(5)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonM1_addsub0002(5),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(4)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U3_spriteonM1_addsub0002(4),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(3)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_spriteonM1_addsub0002(3),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(2)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U3_spriteonM1_addsub0002(2),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteonM1_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U3_spriteonM1_addsub0002(1),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => U3_Mcompar_spriteonM1_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteonM1_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U3_spriteonM1_addsub0002(0),
      O => U3_Mcompar_spriteonM1_cmp_ge0000_lut(0)
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
      DI => U3_spriteon2f_add0004(4),
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
      I0 => U3_rom_pix1(0),
      I1 => M1a_28_Q,
      I2 => M1a_29_Q,
      O => U3_Mmux_M1a_mux0000_7_1559
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_1559,
      I1 => U3_Mmux_M1a_mux0000_6_1554,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_1551
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_1560
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_1566
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_1566,
      I1 => U3_Mmux_M1a_mux0000_71_1560,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_1555
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_1555,
      I1 => U3_Mmux_M1a_mux0000_5_f5_1551,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_1549
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_1561
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_20_Q_97,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_1567
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_1567,
      I1 => U3_Mmux_M1a_mux0000_72_1561,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_6_f51
    );
  U3_Mmux_M1a_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_18_Q_93,
      I2 => M1a_19_Q,
      O => U3_Mmux_M1a_mux0000_82_1568
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_1573,
      I1 => U3_Mmux_M1a_mux0000_82_1568,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_1563
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_1563,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_1552
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_1552,
      I1 => U3_Mmux_M1a_mux0000_4_f6_1549,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_1548
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_1569,
      I1 => U3_Mmux_M1a_mux0000_73_1562,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_6_f52
    );
  U3_Mmux_M1a_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_10_Q,
      I2 => M1a_11_Q,
      O => U3_Mmux_M1a_mux0000_84_1570
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_1574
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_1574,
      I1 => U3_Mmux_M1a_mux0000_84_1570,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_7_f51
    );
  U3_Mmux_M1a_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f51,
      I1 => U3_Mmux_M1a_mux0000_6_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_5_f61
    );
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_4_Q_124,
      I2 => M1a_5_Q,
      O => U3_Mmux_M1a_mux0000_92_1575
    );
  U3_Mmux_M1a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_92_1575,
      I1 => U3_Mmux_M1a_mux0000_85_1571,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_2_Q_119,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_1576
    );
  U3_Mmux_M1a_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => N0,
      I2 => M1a_1_Q_96,
      O => U3_Mmux_M1a_mux0000_10_1547
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_1547,
      I1 => U3_Mmux_M1a_mux0000_93_1576,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_1572
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_1572,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_1558
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_1558,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_1550
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_1550,
      I1 => U3_Mmux_M1a_mux0000_3_f7_1548,
      S => U3_rom_pix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M2a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_28_Q,
      I2 => M2a_29_Q,
      O => U3_Mmux_M2a_mux0000_7_1619
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_1619,
      I1 => U3_Mmux_M2a_mux0000_6_1614,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_1611
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_26_Q,
      I2 => M2a_24_Q_225,
      O => U3_Mmux_M2a_mux0000_71_1620
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_1626,
      I1 => U3_Mmux_M2a_mux0000_71_1620,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_1615
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_1615,
      I1 => U3_Mmux_M2a_mux0000_5_f5_1611,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_1609
    );
  U3_Mmux_M2a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_22_Q,
      I2 => M1a_8_Q,
      O => U3_Mmux_M2a_mux0000_72_1621
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_20_Q,
      I2 => M1a_10_Q,
      O => U3_Mmux_M2a_mux0000_81_1627
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_1627,
      I1 => U3_Mmux_M2a_mux0000_72_1621,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_18_Q,
      I2 => M2a_19_Q,
      O => U3_Mmux_M2a_mux0000_82_1628
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_1633,
      I1 => U3_Mmux_M2a_mux0000_82_1628,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_1623
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_1623,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_1612
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_1612,
      I1 => U3_Mmux_M2a_mux0000_4_f6_1609,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_1608
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_14_Q,
      I2 => M2a_15_Q_213,
      O => U3_Mmux_M2a_mux0000_73_1622
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_1629,
      I1 => U3_Mmux_M2a_mux0000_73_1622,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_6_f52
    );
  U3_Mmux_M2a_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_10_Q,
      I2 => M2a_11_Q_204,
      O => U3_Mmux_M2a_mux0000_84_1630
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_1634
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_1634,
      I1 => U3_Mmux_M2a_mux0000_84_1630,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_7_f51
    );
  U3_Mmux_M2a_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f51,
      I1 => U3_Mmux_M2a_mux0000_6_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_5_f61
    );
  U3_Mmux_M2a_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_6_Q,
      I2 => M2a_7_Q,
      O => U3_Mmux_M2a_mux0000_85_1631
    );
  U3_Mmux_M2a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_4_Q,
      I2 => M2a_5_Q,
      O => U3_Mmux_M2a_mux0000_92_1635
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_1635,
      I1 => U3_Mmux_M2a_mux0000_85_1631,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_7_f52
    );
  U3_Mmux_M2a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_2_Q,
      I2 => M2a_3_Q,
      O => U3_Mmux_M2a_mux0000_93_1636
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_1607,
      I1 => U3_Mmux_M2a_mux0000_93_1636,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_1632
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_1632,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_1618
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_1618,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_1610
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_1610,
      I1 => U3_Mmux_M2a_mux0000_3_f7_1608,
      S => U3_rom_pix2(4),
      O => U3_M2a_mux0000
    );
  U3_Mmux_tank110sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(6),
      I2 => sig_tank110sM(7),
      O => U3_Mmux_tank110sM_mux0000_4_1638
    );
  U3_Mmux_tank110sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(4),
      I2 => sig_tank110sM(5),
      O => U3_Mmux_tank110sM_mux0000_5_1640
    );
  U3_Mmux_tank110sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_5_1640,
      I1 => U3_Mmux_tank110sM_mux0000_4_1638,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_3_f5_1637
    );
  U3_Mmux_tank110sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(2),
      I2 => sig_tank110sM(3),
      O => U3_Mmux_tank110sM_mux0000_51_1641
    );
  U3_Mmux_tank110sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(0),
      I2 => sig_tank110sM(1),
      O => U3_Mmux_tank110sM_mux0000_6_1642
    );
  U3_Mmux_tank110sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_6_1642,
      I1 => U3_Mmux_tank110sM_mux0000_51_1641,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_4_f5_1639
    );
  U3_Mmux_tank110sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_4_f5_1639,
      I1 => U3_Mmux_tank110sM_mux0000_3_f5_1637,
      S => U3_tank110sRomPix(2),
      O => U3_tank110sM_mux0000
    );
  U3_Mmux_M1_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_30_Q,
      I2 => M1_31_Q,
      O => U3_Mmux_M1_mux0000_6_1524
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_1529
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_1529,
      I1 => U3_Mmux_M1_mux0000_6_1524,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_1521
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_1530
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_1536
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_1536,
      I1 => U3_Mmux_M1_mux0000_71_1530,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_1525
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_1525,
      I1 => U3_Mmux_M1_mux0000_5_f5_1521,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_1519
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_1531
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_20_Q_14,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_1537
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_1537,
      I1 => U3_Mmux_M1_mux0000_72_1531,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_18_Q,
      I2 => M1_19_Q,
      O => U3_Mmux_M1_mux0000_82_1538
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_1543,
      I1 => U3_Mmux_M1_mux0000_82_1538,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_1533
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_1533,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_1522
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_1522,
      I1 => U3_Mmux_M1_mux0000_4_f6_1519,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_1518
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_14_Q,
      I2 => M1_15_Q_10,
      O => U3_Mmux_M1_mux0000_73_1532
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_1539,
      I1 => U3_Mmux_M1_mux0000_73_1532,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_6_f52
    );
  U3_Mmux_M1_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_10_Q,
      I2 => M1_11_Q_5,
      O => U3_Mmux_M1_mux0000_84_1540
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_8_Q,
      I2 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_1544
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_1544,
      I1 => U3_Mmux_M1_mux0000_84_1540,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_7_f51
    );
  U3_Mmux_M1_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f51,
      I1 => U3_Mmux_M1_mux0000_6_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_5_f61
    );
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_6_Q,
      I2 => M1_4_Q,
      O => U3_Mmux_M1_mux0000_85_1541
    );
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_4_Q,
      I2 => M1_5_Q_81,
      O => U3_Mmux_M1_mux0000_92_1545
    );
  U3_Mmux_M1_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_92_1545,
      I1 => U3_Mmux_M1_mux0000_85_1541,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_7_f52
    );
  U3_Mmux_M1_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_2_Q,
      I2 => M1_3_Q,
      O => U3_Mmux_M1_mux0000_93_1546
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_1517
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_1517,
      I1 => U3_Mmux_M1_mux0000_93_1546,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_1542
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_1542,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_1528
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_1528,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_1520
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_1520,
      I1 => U3_Mmux_M1_mux0000_3_f7_1518,
      S => U3_rom_pix1(4),
      O => U3_M1_mux0000
    );
  U3_Mmux_M2_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_30_Q,
      I2 => M1_0_Q,
      O => U3_Mmux_M2_mux0000_6_1584
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_28_Q,
      I2 => M1_2_Q,
      O => U3_Mmux_M2_mux0000_7_1589
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_1589,
      I1 => U3_Mmux_M2_mux0000_6_1584,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_1581
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_26_Q_160,
      I2 => M1_4_Q,
      O => U3_Mmux_M2_mux0000_71_1590
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M1_4_Q,
      I2 => M1_6_Q,
      O => U3_Mmux_M2_mux0000_8_1596
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_1596,
      I1 => U3_Mmux_M2_mux0000_71_1590,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_1585
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_1585,
      I1 => U3_Mmux_M2_mux0000_5_f5_1581,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_1579
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_22_Q,
      I2 => M1_8_Q,
      O => U3_Mmux_M2_mux0000_72_1591
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_20_Q,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_1597
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_1597,
      I1 => U3_Mmux_M2_mux0000_72_1591,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M1_13_Q_7,
      I2 => M2_19_Q_149,
      O => U3_Mmux_M2_mux0000_82_1598
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_16_Q_148,
      I2 => M1_14_Q,
      O => U3_Mmux_M2_mux0000_9_1603
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_1603,
      I1 => U3_Mmux_M2_mux0000_82_1598,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_1593
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_1593,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_1582
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_1582,
      I1 => U3_Mmux_M2_mux0000_4_f6_1579,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_1578
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M1_14_Q,
      I2 => M2_15_Q_147,
      O => U3_Mmux_M2_mux0000_73_1592
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_12_Q_143,
      I2 => M1_18_Q,
      O => U3_Mmux_M2_mux0000_83_1599
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_1599,
      I1 => U3_Mmux_M2_mux0000_73_1592,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_6_f52
    );
  U3_Mmux_M2_mux0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_10_Q,
      I2 => M2_11_Q_142,
      O => U3_Mmux_M2_mux0000_84_1600
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_1604
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_1604,
      I1 => U3_Mmux_M2_mux0000_84_1600,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_7_f51
    );
  U3_Mmux_M2_mux0000_5_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f51,
      I1 => U3_Mmux_M2_mux0000_6_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_5_f61
    );
  U3_Mmux_M2_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_6_Q,
      I2 => M2_7_Q,
      O => U3_Mmux_M2_mux0000_85_1601
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_1605
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_1605,
      I1 => U3_Mmux_M2_mux0000_85_1601,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_7_f52
    );
  U3_Mmux_M2_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_2_Q,
      I2 => M2_3_Q,
      O => U3_Mmux_M2_mux0000_93_1606
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_0_Q,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_1577
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_1577,
      I1 => U3_Mmux_M2_mux0000_93_1606,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_1602
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_1602,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_1588
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_1588,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_1580
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_1580,
      I1 => U3_Mmux_M2_mux0000_3_f7_1578,
      S => U3_rom_pix2(4),
      O => U3_M2_mux0000
    );
  U3_Mmux_tank11sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(6),
      I2 => sig_tank11sM(7),
      O => U3_Mmux_tank11sM_mux0000_4_1644
    );
  U3_Mmux_tank11sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(4),
      I2 => sig_tank11sM(5),
      O => U3_Mmux_tank11sM_mux0000_5_1646
    );
  U3_Mmux_tank11sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_5_1646,
      I1 => U3_Mmux_tank11sM_mux0000_4_1644,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_3_f5_1643
    );
  U3_Mmux_tank11sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(2),
      I2 => sig_tank11sM(3),
      O => U3_Mmux_tank11sM_mux0000_51_1647
    );
  U3_Mmux_tank11sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(0),
      I2 => sig_tank11sM(1),
      O => U3_Mmux_tank11sM_mux0000_6_1648
    );
  U3_Mmux_tank11sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_6_1648,
      I1 => U3_Mmux_tank11sM_mux0000_51_1647,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_4_f5_1645
    );
  U3_Mmux_tank11sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_4_f5_1645,
      I1 => U3_Mmux_tank11sM_mux0000_3_f5_1643,
      S => U3_tank110sRomPix(2),
      O => U3_tank11sM_mux0000
    );
  U3_Madd_spriteonM2_addsub0003_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(8),
      LI => U3_Madd_spriteonM2_addsub0003_xor_9_rt_1087,
      O => U3_spriteonM2_addsub0003(9)
    );
  U3_Madd_spriteonM2_addsub0003_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(7),
      LI => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1084,
      O => U3_spriteonM2_addsub0003(8)
    );
  U3_Madd_spriteonM2_addsub0003_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1084,
      O => U3_Madd_spriteonM2_addsub0003_cy(8)
    );
  U3_Madd_spriteonM2_addsub0003_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(6),
      LI => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1082,
      O => U3_spriteonM2_addsub0003(7)
    );
  U3_Madd_spriteonM2_addsub0003_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1082,
      O => U3_Madd_spriteonM2_addsub0003_cy(7)
    );
  U3_Madd_spriteonM2_addsub0003_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(5),
      LI => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1080,
      O => U3_spriteonM2_addsub0003(6)
    );
  U3_Madd_spriteonM2_addsub0003_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1080,
      O => U3_Madd_spriteonM2_addsub0003_cy(6)
    );
  U3_Madd_spriteonM2_addsub0003_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(4),
      LI => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1078,
      O => U3_spriteonM2_addsub0003(5)
    );
  U3_Madd_spriteonM2_addsub0003_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1078,
      O => U3_Madd_spriteonM2_addsub0003_cy(5)
    );
  U3_Madd_spriteonM2_addsub0003_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(3),
      LI => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1076,
      O => U3_spriteonM2_addsub0003(4)
    );
  U3_Madd_spriteonM2_addsub0003_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1076,
      O => U3_Madd_spriteonM2_addsub0003_cy(4)
    );
  U3_Madd_spriteonM2_addsub0003_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(2),
      LI => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1074,
      O => U3_spriteonM2_addsub0003(3)
    );
  U3_Madd_spriteonM2_addsub0003_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1074,
      O => U3_Madd_spriteonM2_addsub0003_cy(3)
    );
  U3_Madd_spriteonM2_addsub0003_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(1),
      LI => U3_Madd_spriteonM2_addsub0003_lut_2_Q,
      O => U3_spriteonM2_addsub0003(2)
    );
  U3_Madd_spriteonM2_addsub0003_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0003_lut_2_Q,
      O => U3_Madd_spriteonM2_addsub0003_cy(2)
    );
  U3_Madd_spriteonM2_addsub0003_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(0),
      LI => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1071,
      O => U3_spriteonM2_addsub0003(1)
    );
  U3_Madd_spriteonM2_addsub0003_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1071,
      O => U3_Madd_spriteonM2_addsub0003_cy(1)
    );
  U3_Madd_spriteonM2_addsub0003_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM2_addsub0003_lut_0_Q,
      O => U3_spriteonM2_addsub0003(0)
    );
  U3_Madd_spriteonM2_addsub0003_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0003_lut_0_Q,
      O => U3_Madd_spriteonM2_addsub0003_cy(0)
    );
  U3_Madd_spriteonM1_addsub0003_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(8),
      LI => U3_Madd_spriteonM1_addsub0003_xor_9_rt_1032,
      O => U3_spriteonM1_addsub0003(9)
    );
  U3_Madd_spriteonM1_addsub0003_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(7),
      LI => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1029,
      O => U3_spriteonM1_addsub0003(8)
    );
  U3_Madd_spriteonM1_addsub0003_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1029,
      O => U3_Madd_spriteonM1_addsub0003_cy(8)
    );
  U3_Madd_spriteonM1_addsub0003_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(6),
      LI => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1027,
      O => U3_spriteonM1_addsub0003(7)
    );
  U3_Madd_spriteonM1_addsub0003_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1027,
      O => U3_Madd_spriteonM1_addsub0003_cy(7)
    );
  U3_Madd_spriteonM1_addsub0003_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(5),
      LI => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1025,
      O => U3_spriteonM1_addsub0003(6)
    );
  U3_Madd_spriteonM1_addsub0003_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1025,
      O => U3_Madd_spriteonM1_addsub0003_cy(6)
    );
  U3_Madd_spriteonM1_addsub0003_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(4),
      LI => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1023,
      O => U3_spriteonM1_addsub0003(5)
    );
  U3_Madd_spriteonM1_addsub0003_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1023,
      O => U3_Madd_spriteonM1_addsub0003_cy(5)
    );
  U3_Madd_spriteonM1_addsub0003_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(3),
      LI => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1021,
      O => U3_spriteonM1_addsub0003(4)
    );
  U3_Madd_spriteonM1_addsub0003_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1021,
      O => U3_Madd_spriteonM1_addsub0003_cy(4)
    );
  U3_Madd_spriteonM1_addsub0003_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(2),
      LI => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1019,
      O => U3_spriteonM1_addsub0003(3)
    );
  U3_Madd_spriteonM1_addsub0003_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1019,
      O => U3_Madd_spriteonM1_addsub0003_cy(3)
    );
  U3_Madd_spriteonM1_addsub0003_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(1),
      LI => U3_Madd_spriteonM1_addsub0003_lut_2_Q,
      O => U3_spriteonM1_addsub0003(2)
    );
  U3_Madd_spriteonM1_addsub0003_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0003_lut_2_Q,
      O => U3_Madd_spriteonM1_addsub0003_cy(2)
    );
  U3_Madd_spriteonM1_addsub0003_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(0),
      LI => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1016,
      O => U3_spriteonM1_addsub0003(1)
    );
  U3_Madd_spriteonM1_addsub0003_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1016,
      O => U3_Madd_spriteonM1_addsub0003_cy(1)
    );
  U3_Madd_spriteonM1_addsub0003_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM1_addsub0003_lut_0_Q,
      O => U3_spriteonM1_addsub0003(0)
    );
  U3_Madd_spriteonM1_addsub0003_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0003_lut_0_Q,
      O => U3_Madd_spriteonM1_addsub0003_cy(0)
    );
  U3_Madd_tank1rom1s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_111_2201,
      O => sig_tank1rom1s(11)
    );
  U3_Madd_tank1rom1s_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(9),
      LI => U3_Madd_tank1rom1s_lut(10),
      O => sig_tank1rom1s(10)
    );
  U3_Madd_tank1rom1s_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(9),
      DI => U3_Madd_tank1rom10s_lut(10),
      S => U3_Madd_tank1rom1s_lut(10),
      O => U3_Madd_tank1rom1s_cy(10)
    );
  U3_Madd_tank1rom1s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(8),
      LI => U3_Madd_tank1rom1s_lut(9),
      O => sig_tank1rom1s(9)
    );
  U3_Madd_tank1rom1s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(8),
      DI => U3_tank1rom10s_sub0001(9),
      S => U3_Madd_tank1rom1s_lut(9),
      O => U3_Madd_tank1rom1s_cy(9)
    );
  U3_Madd_tank1rom1s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(7),
      LI => U3_Madd_tank1rom1s_lut(8),
      O => sig_tank1rom1s(8)
    );
  U3_Madd_tank1rom1s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(7),
      DI => U3_tank1rom10s_sub0001(8),
      S => U3_Madd_tank1rom1s_lut(8),
      O => U3_Madd_tank1rom1s_cy(8)
    );
  U3_Madd_tank1rom1s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(6),
      LI => U3_Madd_tank1rom1s_lut(7),
      O => sig_tank1rom1s(7)
    );
  U3_Madd_tank1rom1s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(6),
      DI => U3_font2(3),
      S => U3_Madd_tank1rom1s_lut(7),
      O => U3_Madd_tank1rom1s_cy(7)
    );
  U3_Madd_tank1rom1s_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_Madd_tank1rom10s_lut(7),
      I1 => U3_font2(3),
      O => U3_Madd_tank1rom1s_lut(7)
    );
  U3_Madd_tank1rom1s_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(5),
      LI => U3_Madd_tank1rom1s_lut(6),
      O => sig_tank1rom1s(6)
    );
  U3_Madd_tank1rom1s_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(5),
      DI => U3_font2(2),
      S => U3_Madd_tank1rom1s_lut(6),
      O => U3_Madd_tank1rom1s_cy(6)
    );
  U3_Madd_tank1rom1s_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(4),
      LI => U3_Madd_tank1rom1s_lut(5),
      O => sig_tank1rom1s(5)
    );
  U3_Madd_tank1rom1s_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(4),
      DI => U3_font2(1),
      S => U3_Madd_tank1rom1s_lut(5),
      O => U3_Madd_tank1rom1s_cy(5)
    );
  U3_Madd_tank1rom1s_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_tank1rom1s_lut(4),
      O => sig_tank1rom1s(4)
    );
  U3_Madd_tank1rom1s_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_font2(0),
      S => U3_Madd_tank1rom1s_lut(4),
      O => U3_Madd_tank1rom1s_cy(4)
    );
  U3_Madd_tank1rom10s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_112_2202,
      O => sig_tank1rom10s(11)
    );
  U3_Madd_tank1rom10s_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(9),
      LI => U3_tank1rom10s_sub0001_10_11_2200,
      O => sig_tank1rom10s(10)
    );
  U3_Madd_tank1rom10s_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(9),
      DI => N0,
      S => U3_tank1rom10s_sub0001_10_11_2200,
      O => U3_Madd_tank1rom10s_cy(10)
    );
  U3_Madd_tank1rom10s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      LI => U3_Madd_tank1rom10s_lut(9),
      O => sig_tank1rom10s(9)
    );
  U3_Madd_tank1rom10s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      DI => U3_tank1rom10s_sub0001(9),
      S => U3_Madd_tank1rom10s_lut(9),
      O => U3_Madd_tank1rom10s_cy(9)
    );
  U3_Madd_tank1rom10s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      LI => U3_Madd_tank1rom10s_lut(8),
      O => sig_tank1rom10s(8)
    );
  U3_Madd_tank1rom10s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      DI => U3_tank1rom10s_sub0001(8),
      S => U3_Madd_tank1rom10s_lut(8),
      O => U3_Madd_tank1rom10s_cy(8)
    );
  U3_Madd_tank1rom10s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      LI => U3_Msub_tank1rom10s_sub0001_xor_7_11_1704,
      O => sig_tank1rom10s(7)
    );
  U3_Madd_tank1rom10s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0001_xor_7_11_1704,
      O => U3_Madd_tank1rom10s_cy(7)
    );
  U3_Madd_tank1rom10s_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(5),
      LI => U3_Madd_tank1rom10s_lut(6),
      O => sig_tank1rom10s(6)
    );
  U3_Madd_tank1rom10s_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(5),
      DI => U3_font1(2),
      S => U3_Madd_tank1rom10s_lut(6),
      O => U3_Madd_tank1rom10s_cy(6)
    );
  U3_Madd_tank1rom10s_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(4),
      LI => U3_Madd_tank1rom10s_lut(5),
      O => sig_tank1rom10s(5)
    );
  U3_Madd_tank1rom10s_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(4),
      DI => U3_font1(1),
      S => U3_Madd_tank1rom10s_lut(5),
      O => U3_Madd_tank1rom10s_cy(5)
    );
  U3_Madd_tank1rom10s_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_tank1rom10s_lut(4),
      O => sig_tank1rom10s(4)
    );
  U3_Madd_tank1rom10s_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_font1(0),
      S => U3_Madd_tank1rom10s_lut(4),
      O => U3_Madd_tank1rom10s_cy(4)
    );
  U3_Msub_rom_pix2_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(3),
      LI => U3_Msub_rom_pix2_Madd_lut(4),
      O => U3_rom_pix2(4)
    );
  U3_Msub_rom_pix2_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(2),
      LI => U3_Msub_rom_pix2_Madd_lut(3),
      O => U3_rom_pix2(3)
    );
  U3_Msub_rom_pix2_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(2),
      DI => U2_hcs(3),
      S => U3_Msub_rom_pix2_Madd_lut(3),
      O => U3_Msub_rom_pix2_Madd_cy(3)
    );
  U3_Msub_rom_pix2_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C2(3),
      O => U3_Msub_rom_pix2_Madd_lut(3)
    );
  U3_Msub_rom_pix2_Madd_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(1),
      LI => U3_Msub_rom_pix2_Madd_lut(2),
      O => U3_rom_pix2(2)
    );
  U3_Msub_rom_pix2_Madd_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(1),
      DI => U2_hcs(2),
      S => U3_Msub_rom_pix2_Madd_lut(2),
      O => U3_Msub_rom_pix2_Madd_cy(2)
    );
  U3_Msub_rom_pix2_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C2(2),
      O => U3_Msub_rom_pix2_Madd_lut(2)
    );
  U3_Msub_rom_pix2_Madd_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(0),
      LI => U3_Msub_rom_pix2_Madd_lut(1),
      O => U3_rom_pix2(1)
    );
  U3_Msub_rom_pix2_Madd_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix2_Madd_cy(0),
      DI => U2_hcs(1),
      S => U3_Msub_rom_pix2_Madd_lut(1),
      O => U3_Msub_rom_pix2_Madd_cy(1)
    );
  U3_Msub_rom_pix2_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C2(1),
      O => U3_Msub_rom_pix2_Madd_lut(1)
    );
  U3_Msub_rom_pix2_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_rom_pix2_Madd_lut(0),
      O => U3_rom_pix2(0)
    );
  U3_Msub_rom_pix2_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_hcs(0),
      S => U3_Msub_rom_pix2_Madd_lut(0),
      O => U3_Msub_rom_pix2_Madd_cy(0)
    );
  U3_Msub_rom_pix2_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C2(0),
      O => U3_Msub_rom_pix2_Madd_lut(0)
    );
  U3_Msub_rom_pix1_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(3),
      LI => U3_Msub_rom_pix1_Madd_lut(4),
      O => U3_rom_pix1(4)
    );
  U3_Msub_rom_pix1_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(2),
      LI => U3_Msub_rom_pix1_Madd_lut(3),
      O => U3_rom_pix1(3)
    );
  U3_Msub_rom_pix1_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(2),
      DI => U2_hcs(3),
      S => U3_Msub_rom_pix1_Madd_lut(3),
      O => U3_Msub_rom_pix1_Madd_cy(3)
    );
  U3_Msub_rom_pix1_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U3_C1(3),
      O => U3_Msub_rom_pix1_Madd_lut(3)
    );
  U3_Msub_rom_pix1_Madd_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(1),
      LI => U3_Msub_rom_pix1_Madd_lut(2),
      O => U3_rom_pix1(2)
    );
  U3_Msub_rom_pix1_Madd_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(1),
      DI => U2_hcs(2),
      S => U3_Msub_rom_pix1_Madd_lut(2),
      O => U3_Msub_rom_pix1_Madd_cy(2)
    );
  U3_Msub_rom_pix1_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U3_C1(2),
      O => U3_Msub_rom_pix1_Madd_lut(2)
    );
  U3_Msub_rom_pix1_Madd_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(0),
      LI => U3_Msub_rom_pix1_Madd_lut(1),
      O => U3_rom_pix1(1)
    );
  U3_Msub_rom_pix1_Madd_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_rom_pix1_Madd_cy(0),
      DI => U2_hcs(1),
      S => U3_Msub_rom_pix1_Madd_lut(1),
      O => U3_Msub_rom_pix1_Madd_cy(1)
    );
  U3_Msub_rom_pix1_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U3_C1(1),
      O => U3_Msub_rom_pix1_Madd_lut(1)
    );
  U3_Msub_rom_pix1_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_rom_pix1_Madd_lut(0),
      O => U3_rom_pix1(0)
    );
  U3_Msub_rom_pix1_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_hcs(0),
      S => U3_Msub_rom_pix1_Madd_lut(0),
      O => U3_Msub_rom_pix1_Madd_cy(0)
    );
  U3_Msub_rom_pix1_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U3_C1(0),
      O => U3_Msub_rom_pix1_Madd_lut(0)
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
      DI => U3_spriteon2f_add0004(4),
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
  U3_Madd_spriteonM2_addsub0002_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(8),
      LI => U3_Madd_spriteonM2_addsub0002_xor_9_rt_1068,
      O => U3_spriteonM2_addsub0002(9)
    );
  U3_Madd_spriteonM2_addsub0002_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(7),
      LI => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1062,
      O => U3_spriteonM2_addsub0002(8)
    );
  U3_Madd_spriteonM2_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1062,
      O => U3_Madd_spriteonM2_addsub0002_cy(8)
    );
  U3_Madd_spriteonM2_addsub0002_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(6),
      LI => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1060,
      O => U3_spriteonM2_addsub0002(7)
    );
  U3_Madd_spriteonM2_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1060,
      O => U3_Madd_spriteonM2_addsub0002_cy(7)
    );
  U3_Madd_spriteonM2_addsub0002_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(5),
      LI => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1058,
      O => U3_spriteonM2_addsub0002(6)
    );
  U3_Madd_spriteonM2_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1058,
      O => U3_Madd_spriteonM2_addsub0002_cy(6)
    );
  U3_Madd_spriteonM2_addsub0002_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(4),
      LI => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1056,
      O => U3_spriteonM2_addsub0002(5)
    );
  U3_Madd_spriteonM2_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1056,
      O => U3_Madd_spriteonM2_addsub0002_cy(5)
    );
  U3_Madd_spriteonM2_addsub0002_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(3),
      LI => U3_Madd_spriteonM2_addsub0002_lut(4),
      O => U3_spriteonM2_addsub0002(4)
    );
  U3_Madd_spriteonM2_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(3),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0002_lut(4),
      O => U3_Madd_spriteonM2_addsub0002_cy(4)
    );
  U3_Madd_spriteonM2_addsub0002_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(2),
      LI => U3_Madd_spriteonM2_addsub0002_lut(3),
      O => U3_spriteonM2_addsub0002(3)
    );
  U3_Madd_spriteonM2_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(2),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0002_lut(3),
      O => U3_Madd_spriteonM2_addsub0002_cy(3)
    );
  U3_Madd_spriteonM2_addsub0002_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(1),
      LI => U3_Madd_spriteonM2_addsub0002_lut(2),
      O => U3_spriteonM2_addsub0002(2)
    );
  U3_Madd_spriteonM2_addsub0002_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0002_lut(2),
      O => U3_Madd_spriteonM2_addsub0002_cy(2)
    );
  U3_Madd_spriteonM2_addsub0002_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(0),
      LI => U3_Madd_spriteonM2_addsub0002_lut(1),
      O => U3_spriteonM2_addsub0002(1)
    );
  U3_Madd_spriteonM2_addsub0002_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(0),
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0002_lut(1),
      O => U3_Madd_spriteonM2_addsub0002_cy(1)
    );
  U3_Madd_spriteonM2_addsub0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM2_addsub0002_lut(0),
      O => U3_spriteonM2_addsub0002(0)
    );
  U3_Madd_spriteonM2_addsub0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM2_addsub0002_lut(0),
      O => U3_Madd_spriteonM2_addsub0002_cy(0)
    );
  U3_Madd_spriteonM1_addsub0002_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(8),
      LI => U3_Madd_spriteonM1_addsub0002_xor_9_rt_1013,
      O => U3_spriteonM1_addsub0002(9)
    );
  U3_Madd_spriteonM1_addsub0002_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(7),
      LI => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1007,
      O => U3_spriteonM1_addsub0002(8)
    );
  U3_Madd_spriteonM1_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1007,
      O => U3_Madd_spriteonM1_addsub0002_cy(8)
    );
  U3_Madd_spriteonM1_addsub0002_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(6),
      LI => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1005,
      O => U3_spriteonM1_addsub0002(7)
    );
  U3_Madd_spriteonM1_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1005,
      O => U3_Madd_spriteonM1_addsub0002_cy(7)
    );
  U3_Madd_spriteonM1_addsub0002_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(5),
      LI => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1003,
      O => U3_spriteonM1_addsub0002(6)
    );
  U3_Madd_spriteonM1_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1003,
      O => U3_Madd_spriteonM1_addsub0002_cy(6)
    );
  U3_Madd_spriteonM1_addsub0002_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(4),
      LI => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1001,
      O => U3_spriteonM1_addsub0002(5)
    );
  U3_Madd_spriteonM1_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1001,
      O => U3_Madd_spriteonM1_addsub0002_cy(5)
    );
  U3_Madd_spriteonM1_addsub0002_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(3),
      LI => U3_Madd_spriteonM1_addsub0002_lut(4),
      O => U3_spriteonM1_addsub0002(4)
    );
  U3_Madd_spriteonM1_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(3),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0002_lut(4),
      O => U3_Madd_spriteonM1_addsub0002_cy(4)
    );
  U3_Madd_spriteonM1_addsub0002_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(2),
      LI => U3_Madd_spriteonM1_addsub0002_lut(3),
      O => U3_spriteonM1_addsub0002(3)
    );
  U3_Madd_spriteonM1_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(2),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0002_lut(3),
      O => U3_Madd_spriteonM1_addsub0002_cy(3)
    );
  U3_Madd_spriteonM1_addsub0002_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(1),
      LI => U3_Madd_spriteonM1_addsub0002_lut(2),
      O => U3_spriteonM1_addsub0002(2)
    );
  U3_Madd_spriteonM1_addsub0002_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(1),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0002_lut(2),
      O => U3_Madd_spriteonM1_addsub0002_cy(2)
    );
  U3_Madd_spriteonM1_addsub0002_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(0),
      LI => U3_Madd_spriteonM1_addsub0002_lut(1),
      O => U3_spriteonM1_addsub0002(1)
    );
  U3_Madd_spriteonM1_addsub0002_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(0),
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0002_lut(1),
      O => U3_Madd_spriteonM1_addsub0002_cy(1)
    );
  U3_Madd_spriteonM1_addsub0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_spriteonM1_addsub0002_lut(0),
      O => U3_spriteonM1_addsub0002(0)
    );
  U3_Madd_spriteonM1_addsub0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_spriteonM1_addsub0002_lut(0),
      O => U3_Madd_spriteonM1_addsub0002_cy(0)
    );
  U3_Maddsub_RM2_share0000_xor_9_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(8),
      LI => U3_Maddsub_RM2_share0000_lut(9),
      O => U3_RM2_share0000(9)
    );
  U3_Maddsub_RM2_share0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM2(9),
      I1 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(9)
    );
  U3_Maddsub_RM2_share0000_xor_8_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(7),
      LI => U3_Maddsub_RM2_share0000_lut(8),
      O => U3_RM2_share0000(8)
    );
  U3_Maddsub_RM2_share0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(7),
      DI => U3_RM2(8),
      S => U3_Maddsub_RM2_share0000_lut(8),
      O => U3_Maddsub_RM2_share0000_cy(8)
    );
  U3_Maddsub_RM2_share0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM2(8),
      I1 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(8)
    );
  U3_Maddsub_RM2_share0000_xor_7_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(6),
      LI => U3_Maddsub_RM2_share0000_lut(7),
      O => U3_RM2_share0000(7)
    );
  U3_Maddsub_RM2_share0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(6),
      DI => U3_RM2(7),
      S => U3_Maddsub_RM2_share0000_lut(7),
      O => U3_Maddsub_RM2_share0000_cy(7)
    );
  U3_Maddsub_RM2_share0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM2(7),
      I1 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(7)
    );
  U3_Maddsub_RM2_share0000_xor_6_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(5),
      LI => U3_Maddsub_RM2_share0000_lut(6),
      O => U3_RM2_share0000(6)
    );
  U3_Maddsub_RM2_share0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(5),
      DI => U3_RM2(6),
      S => U3_Maddsub_RM2_share0000_lut(6),
      O => U3_Maddsub_RM2_share0000_cy(6)
    );
  U3_Maddsub_RM2_share0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM2(6),
      I1 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(6)
    );
  U3_Maddsub_RM2_share0000_xor_5_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(4),
      LI => U3_Maddsub_RM2_share0000_lut(5),
      O => U3_RM2_share0000(5)
    );
  U3_Maddsub_RM2_share0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(4),
      DI => U3_RM2(5),
      S => U3_Maddsub_RM2_share0000_lut(5),
      O => U3_Maddsub_RM2_share0000_cy(5)
    );
  U3_Maddsub_RM2_share0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM2(5),
      I1 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(5)
    );
  U3_Maddsub_RM2_share0000_xor_4_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(3),
      LI => U3_Maddsub_RM2_share0000_lut(4),
      O => U3_RM2_share0000(4)
    );
  U3_Maddsub_RM2_share0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(3),
      DI => U3_RM2(4),
      S => U3_Maddsub_RM2_share0000_lut(4),
      O => U3_Maddsub_RM2_share0000_cy(4)
    );
  U3_Maddsub_RM2_share0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM2(4),
      I1 => U3_RMcnt2(5),
      I2 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(4)
    );
  U3_Maddsub_RM2_share0000_xor_3_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(2),
      LI => U3_Maddsub_RM2_share0000_lut(3),
      O => U3_RM2_share0000(3)
    );
  U3_Maddsub_RM2_share0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(2),
      DI => U3_RM2(3),
      S => U3_Maddsub_RM2_share0000_lut(3),
      O => U3_Maddsub_RM2_share0000_cy(3)
    );
  U3_Maddsub_RM2_share0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM2(3),
      I1 => U3_RMcnt2(4),
      I2 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(3)
    );
  U3_Maddsub_RM2_share0000_xor_2_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(1),
      LI => U3_Maddsub_RM2_share0000_lut(2),
      O => U3_RM2_share0000(2)
    );
  U3_Maddsub_RM2_share0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(1),
      DI => U3_RM2(2),
      S => U3_Maddsub_RM2_share0000_lut(2),
      O => U3_Maddsub_RM2_share0000_cy(2)
    );
  U3_Maddsub_RM2_share0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM2(2),
      I1 => U3_RMcnt2(3),
      I2 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(2)
    );
  U3_Maddsub_RM2_share0000_xor_1_Q : XORCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(0),
      LI => U3_Maddsub_RM2_share0000_lut(1),
      O => U3_RM2_share0000(1)
    );
  U3_Maddsub_RM2_share0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM2_share0000_cy(0),
      DI => U3_RM2(1),
      S => U3_Maddsub_RM2_share0000_lut(1),
      O => U3_Maddsub_RM2_share0000_cy(1)
    );
  U3_Maddsub_RM2_share0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM2(1),
      I1 => U3_RMcnt2(2),
      I2 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(1)
    );
  U3_Maddsub_RM2_share0000_xor_0_Q : XORCY
    port map (
      CI => U3_rise2_2030,
      LI => U3_Maddsub_RM2_share0000_lut(0),
      O => U3_RM2_share0000(0)
    );
  U3_Maddsub_RM2_share0000_cy_0_Q : MUXCY
    port map (
      CI => U3_rise2_2030,
      DI => U3_RM2(0),
      S => U3_Maddsub_RM2_share0000_lut(0),
      O => U3_Maddsub_RM2_share0000_cy(0)
    );
  U3_Maddsub_RM2_share0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM2(0),
      I1 => U3_RMcnt2(1),
      I2 => U3_rise2_2030,
      O => U3_Maddsub_RM2_share0000_lut(0)
    );
  U3_Maddsub_RM1_share0000_xor_9_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(8),
      LI => U3_Maddsub_RM1_share0000_lut(9),
      O => U3_RM1_share0000(9)
    );
  U3_Maddsub_RM1_share0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM1(9),
      I1 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(9)
    );
  U3_Maddsub_RM1_share0000_xor_8_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(7),
      LI => U3_Maddsub_RM1_share0000_lut(8),
      O => U3_RM1_share0000(8)
    );
  U3_Maddsub_RM1_share0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(7),
      DI => U3_RM1(8),
      S => U3_Maddsub_RM1_share0000_lut(8),
      O => U3_Maddsub_RM1_share0000_cy(8)
    );
  U3_Maddsub_RM1_share0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM1(8),
      I1 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(8)
    );
  U3_Maddsub_RM1_share0000_xor_7_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(6),
      LI => U3_Maddsub_RM1_share0000_lut(7),
      O => U3_RM1_share0000(7)
    );
  U3_Maddsub_RM1_share0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(6),
      DI => U3_RM1(7),
      S => U3_Maddsub_RM1_share0000_lut(7),
      O => U3_Maddsub_RM1_share0000_cy(7)
    );
  U3_Maddsub_RM1_share0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM1(7),
      I1 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(7)
    );
  U3_Maddsub_RM1_share0000_xor_6_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(5),
      LI => U3_Maddsub_RM1_share0000_lut(6),
      O => U3_RM1_share0000(6)
    );
  U3_Maddsub_RM1_share0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(5),
      DI => U3_RM1(6),
      S => U3_Maddsub_RM1_share0000_lut(6),
      O => U3_Maddsub_RM1_share0000_cy(6)
    );
  U3_Maddsub_RM1_share0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM1(6),
      I1 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(6)
    );
  U3_Maddsub_RM1_share0000_xor_5_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(4),
      LI => U3_Maddsub_RM1_share0000_lut(5),
      O => U3_RM1_share0000(5)
    );
  U3_Maddsub_RM1_share0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(4),
      DI => U3_RM1(5),
      S => U3_Maddsub_RM1_share0000_lut(5),
      O => U3_Maddsub_RM1_share0000_cy(5)
    );
  U3_Maddsub_RM1_share0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RM1(5),
      I1 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(5)
    );
  U3_Maddsub_RM1_share0000_xor_4_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(3),
      LI => U3_Maddsub_RM1_share0000_lut(4),
      O => U3_RM1_share0000(4)
    );
  U3_Maddsub_RM1_share0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(3),
      DI => U3_RM1(4),
      S => U3_Maddsub_RM1_share0000_lut(4),
      O => U3_Maddsub_RM1_share0000_cy(4)
    );
  U3_Maddsub_RM1_share0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM1(4),
      I1 => U3_RMcnt(5),
      I2 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(4)
    );
  U3_Maddsub_RM1_share0000_xor_3_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(2),
      LI => U3_Maddsub_RM1_share0000_lut(3),
      O => U3_RM1_share0000(3)
    );
  U3_Maddsub_RM1_share0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(2),
      DI => U3_RM1(3),
      S => U3_Maddsub_RM1_share0000_lut(3),
      O => U3_Maddsub_RM1_share0000_cy(3)
    );
  U3_Maddsub_RM1_share0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM1(3),
      I1 => U3_RMcnt(4),
      I2 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(3)
    );
  U3_Maddsub_RM1_share0000_xor_2_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(1),
      LI => U3_Maddsub_RM1_share0000_lut(2),
      O => U3_RM1_share0000(2)
    );
  U3_Maddsub_RM1_share0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(1),
      DI => U3_RM1(2),
      S => U3_Maddsub_RM1_share0000_lut(2),
      O => U3_Maddsub_RM1_share0000_cy(2)
    );
  U3_Maddsub_RM1_share0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM1(2),
      I1 => U3_RMcnt(3),
      I2 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(2)
    );
  U3_Maddsub_RM1_share0000_xor_1_Q : XORCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(0),
      LI => U3_Maddsub_RM1_share0000_lut(1),
      O => U3_RM1_share0000(1)
    );
  U3_Maddsub_RM1_share0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Maddsub_RM1_share0000_cy(0),
      DI => U3_RM1(1),
      S => U3_Maddsub_RM1_share0000_lut(1),
      O => U3_Maddsub_RM1_share0000_cy(1)
    );
  U3_Maddsub_RM1_share0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM1(1),
      I1 => U3_RMcnt(2),
      I2 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(1)
    );
  U3_Maddsub_RM1_share0000_xor_0_Q : XORCY
    port map (
      CI => U3_rise_2029,
      LI => U3_Maddsub_RM1_share0000_lut(0),
      O => U3_RM1_share0000(0)
    );
  U3_Maddsub_RM1_share0000_cy_0_Q : MUXCY
    port map (
      CI => U3_rise_2029,
      DI => U3_RM1(0),
      S => U3_Maddsub_RM1_share0000_lut(0),
      O => U3_Maddsub_RM1_share0000_cy(0)
    );
  U3_Maddsub_RM1_share0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_RM1(0),
      I1 => U3_RMcnt(1),
      I2 => U3_rise_2029,
      O => U3_Maddsub_RM1_share0000_lut(0)
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
      O => U3_Result_5_3
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
      O => U3_Result_4_3
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
      O => U3_Result_3_3
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
      O => U3_Result_2_3
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
      O => U3_Result_1_3
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
      O => U3_Result_0_3
    );
  U3_Mcount_C1_cy_0_Q : MUXCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      DI => U3_C1(0),
      S => U3_Mcount_C1_lut(0),
      O => U3_Mcount_C1_cy(0)
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
      O => U3_Result_5_4
    );
  U3_Mcount_C2_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_C2_cy(4),
      DI => U3_C2_5_1_771,
      S => U3_Mcount_C2_lut(5),
      O => U3_Mcount_C2_cy(5)
    );
  U3_Mcount_C2_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_C2_cy(3),
      LI => U3_Mcount_C2_lut(4),
      O => U3_Result_4_4
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
      O => U3_Result_3_4
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
      O => U3_Result_2_4
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
      O => U3_Result_1_4
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
      O => U3_Result_0_4
    );
  U3_Mcount_C2_cy_0_Q : MUXCY
    port map (
      CI => U3_leftBTN_inv1_inv1,
      DI => U3_C2(0),
      S => U3_Mcount_C2_lut(0),
      O => U3_Mcount_C2_cy(0)
    );
  U3_Mcount_q_xor_20_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(19),
      LI => U3_Mcount_q_xor_20_rt_1505,
      O => U3_Result(20)
    );
  U3_Mcount_q_xor_19_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(18),
      LI => U3_Mcount_q_cy_19_rt_1485,
      O => U3_Result(19)
    );
  U3_Mcount_q_cy_19_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(18),
      DI => N0,
      S => U3_Mcount_q_cy_19_rt_1485,
      O => U3_Mcount_q_cy(19)
    );
  U3_Mcount_q_xor_18_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(17),
      LI => U3_Mcount_q_cy_18_rt_1483,
      O => U3_Result(18)
    );
  U3_Mcount_q_cy_18_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(17),
      DI => N0,
      S => U3_Mcount_q_cy_18_rt_1483,
      O => U3_Mcount_q_cy(18)
    );
  U3_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(16),
      LI => U3_Mcount_q_cy_17_rt_1481,
      O => U3_Result(17)
    );
  U3_Mcount_q_cy_17_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(16),
      DI => N0,
      S => U3_Mcount_q_cy_17_rt_1481,
      O => U3_Mcount_q_cy(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_1479,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_1479,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_1477,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_1477,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_1475,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_1475,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_1473,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_1473,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_1471,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_1471,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_1469,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_1469,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_1467,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_1467,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_1503,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_1503,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_1501,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_1501,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_1499,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_1499,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_1497,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_1497,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_1495,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_1495,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_1493,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_1493,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_1491,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_1491,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_1489,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_1489,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_1487,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_1487,
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
  U3_Msub_CM2_sub0000_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(8),
      LI => U3_Msub_CM2_sub0000_lut(9),
      O => U3_CM2_sub0000_1(9)
    );
  U3_Msub_CM2_sub0000_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(7),
      LI => U3_Msub_CM2_sub0000_lut(8),
      O => U3_CM2_sub0000_1(8)
    );
  U3_Msub_CM2_sub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(7),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(8),
      O => U3_Msub_CM2_sub0000_cy(8)
    );
  U3_Msub_CM2_sub0000_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(6),
      LI => U3_Msub_CM2_sub0000_lut(7),
      O => U3_CM2_sub0000_1(7)
    );
  U3_Msub_CM2_sub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(6),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(7),
      O => U3_Msub_CM2_sub0000_cy(7)
    );
  U3_Msub_CM2_sub0000_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(5),
      LI => U3_Msub_CM2_sub0000_lut(6),
      O => U3_CM2_sub0000_1(6)
    );
  U3_Msub_CM2_sub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(5),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(6),
      O => U3_Msub_CM2_sub0000_cy(6)
    );
  U3_Msub_CM2_sub0000_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(4),
      LI => U3_Msub_CM2_sub0000_lut(5),
      O => U3_CM2_sub0000_1(5)
    );
  U3_Msub_CM2_sub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(4),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(5),
      O => U3_Msub_CM2_sub0000_cy(5)
    );
  U3_Msub_CM2_sub0000_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(3),
      LI => U3_Msub_CM2_sub0000_lut(4),
      O => U3_CM2_sub0000_1(4)
    );
  U3_Msub_CM2_sub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(3),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(4),
      O => U3_Msub_CM2_sub0000_cy(4)
    );
  U3_Msub_CM2_sub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(2),
      LI => U3_Msub_CM2_sub0000_lut(3),
      O => U3_CM2_sub0000_1(3)
    );
  U3_Msub_CM2_sub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(2),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(3),
      O => U3_Msub_CM2_sub0000_cy(3)
    );
  U3_Msub_CM2_sub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(1),
      LI => U3_Msub_CM2_sub0000_lut(2),
      O => U3_CM2_sub0000_1(2)
    );
  U3_Msub_CM2_sub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_CM2_sub0000_cy(1),
      DI => N1,
      S => U3_Msub_CM2_sub0000_lut(2),
      O => U3_Msub_CM2_sub0000_cy(2)
    );
  U3_Msub_CM2_sub0000_xor_1_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_CM2_sub0000_cy_1_rt_1650,
      O => U3_CM2_sub0000_1(1)
    );
  U3_Msub_CM2_sub0000_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_CM2_sub0000_cy_1_rt_1650,
      O => U3_Msub_CM2_sub0000_cy(1)
    );
  U3_Madd_CM1_add0000_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(8),
      LI => U3_Madd_CM1_add0000_xor_9_rt_965,
      O => U3_CM1_add0000_0(9)
    );
  U3_Madd_CM1_add0000_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(7),
      LI => U3_Madd_CM1_add0000_cy_8_rt_960,
      O => U3_CM1_add0000_0(8)
    );
  U3_Madd_CM1_add0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(7),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_8_rt_960,
      O => U3_Madd_CM1_add0000_cy(8)
    );
  U3_Madd_CM1_add0000_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(6),
      LI => U3_Madd_CM1_add0000_cy_7_rt_958,
      O => U3_CM1_add0000_0(7)
    );
  U3_Madd_CM1_add0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(6),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_7_rt_958,
      O => U3_Madd_CM1_add0000_cy(7)
    );
  U3_Madd_CM1_add0000_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(5),
      LI => U3_Madd_CM1_add0000_cy_6_rt_956,
      O => U3_CM1_add0000_0(6)
    );
  U3_Madd_CM1_add0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(5),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_6_rt_956,
      O => U3_Madd_CM1_add0000_cy(6)
    );
  U3_Madd_CM1_add0000_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(4),
      LI => U3_Madd_CM1_add0000_cy_5_rt_954,
      O => U3_CM1_add0000_0(5)
    );
  U3_Madd_CM1_add0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(4),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_5_rt_954,
      O => U3_Madd_CM1_add0000_cy(5)
    );
  U3_Madd_CM1_add0000_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(3),
      LI => U3_Madd_CM1_add0000_lut_4_1,
      O => U3_CM1_add0000_0(4)
    );
  U3_Madd_CM1_add0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(3),
      DI => N1,
      S => U3_Madd_CM1_add0000_lut_4_1,
      O => U3_Madd_CM1_add0000_cy(4)
    );
  U3_Madd_CM1_add0000_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(2),
      LI => U3_Madd_CM1_add0000_lut_3_Q,
      O => U3_CM1_add0000_0(3)
    );
  U3_Madd_CM1_add0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(2),
      DI => N1,
      S => U3_Madd_CM1_add0000_lut_3_Q,
      O => U3_Madd_CM1_add0000_cy(3)
    );
  U3_Madd_CM1_add0000_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(1),
      LI => U3_Madd_CM1_add0000_cy_2_rt_950,
      O => U3_CM1_add0000_0(2)
    );
  U3_Madd_CM1_add0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(1),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_2_rt_950,
      O => U3_Madd_CM1_add0000_cy(2)
    );
  U3_Madd_CM1_add0000_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(0),
      LI => U3_Madd_CM1_add0000_lut_1_Q,
      O => U3_CM1_add0000_0(1)
    );
  U3_Madd_CM1_add0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(0),
      DI => N1,
      S => U3_Madd_CM1_add0000_lut_1_Q,
      O => U3_Madd_CM1_add0000_cy(1)
    );
  U3_Madd_CM1_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_CM1_add0000_lut_0_Q,
      O => U3_CM1_add0000_0(0)
    );
  U3_Madd_CM1_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U3_Madd_CM1_add0000_lut_0_Q,
      O => U3_Madd_CM1_add0000_cy(0)
    );
  U3_Msub_tank1rom10s_sub0000_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(8),
      LI => U3_Msub_tank1rom10s_sub0000_lut(9),
      O => U3_tank1rom10s_sub0000(9)
    );
  U3_Msub_tank1rom10s_sub0000_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(7),
      LI => U3_Msub_tank1rom10s_sub0000_lut(8),
      O => U3_tank1rom10s_sub0000(8)
    );
  U3_Msub_tank1rom10s_sub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(7),
      DI => N1,
      S => U3_Msub_tank1rom10s_sub0000_lut(8),
      O => U3_Msub_tank1rom10s_sub0000_cy(8)
    );
  U3_Msub_tank1rom10s_sub0000_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(6),
      LI => U3_Msub_tank1rom10s_sub0000_lut(7),
      O => U3_tank1rom10s_sub0000(7)
    );
  U3_Msub_tank1rom10s_sub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(6),
      DI => N1,
      S => U3_Msub_tank1rom10s_sub0000_lut(7),
      O => U3_Msub_tank1rom10s_sub0000_cy(7)
    );
  U3_Msub_tank1rom10s_sub0000_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(5),
      LI => U3_Msub_tank1rom10s_sub0000_lut(6),
      O => U3_tank1rom10s_sub0000(6)
    );
  U3_Msub_tank1rom10s_sub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(5),
      DI => N1,
      S => U3_Msub_tank1rom10s_sub0000_lut(6),
      O => U3_Msub_tank1rom10s_sub0000_cy(6)
    );
  U3_Msub_tank1rom10s_sub0000_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(4),
      LI => U3_Msub_tank1rom10s_sub0000_lut(5),
      O => U3_Msub_ypix1_Madd_lut(5)
    );
  U3_Msub_tank1rom10s_sub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(4),
      DI => N1,
      S => U3_Msub_tank1rom10s_sub0000_lut(5),
      O => U3_Msub_tank1rom10s_sub0000_cy(5)
    );
  U3_Msub_tank1rom10s_sub0000_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(3),
      LI => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1693,
      O => U3_Msub_tank1rom10s_sub0001_cy(4)
    );
  U3_Msub_tank1rom10s_sub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(3),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1693,
      O => U3_Msub_tank1rom10s_sub0000_cy(4)
    );
  U3_Msub_tank1rom10s_sub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(2),
      LI => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1691,
      O => sig_tank1rom10s(3)
    );
  U3_Msub_tank1rom10s_sub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(2),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1691,
      O => U3_Msub_tank1rom10s_sub0000_cy(3)
    );
  U3_Msub_tank1rom10s_sub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(1),
      LI => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1689,
      O => sig_tank1rom10s(2)
    );
  U3_Msub_tank1rom10s_sub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(1),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1689,
      O => U3_Msub_tank1rom10s_sub0000_cy(2)
    );
  U3_Msub_tank1rom10s_sub0000_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(0),
      LI => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1687,
      O => sig_tank1rom10s(1)
    );
  U3_Msub_tank1rom10s_sub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(0),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1687,
      O => U3_Msub_tank1rom10s_sub0000_cy(1)
    );
  U3_Msub_tank1rom10s_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1685,
      O => sig_tank1rom10s(0)
    );
  U3_Msub_tank1rom10s_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1685,
      O => U3_Msub_tank1rom10s_sub0000_cy(0)
    );
  U3_C2_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_9_2,
      Q => U3_C2(9)
    );
  U3_C2_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_8_2,
      Q => U3_C2(8)
    );
  U3_C2_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_7_2,
      Q => U3_C2(7)
    );
  U3_C2_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_6_2,
      Q => U3_C2(6)
    );
  U3_C2_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_5_4,
      Q => U3_C2(5)
    );
  U3_C2_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_4_4,
      Q => U3_C2(4)
    );
  U3_C2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_3_4,
      Q => U3_C2(3)
    );
  U3_C2_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_2_4,
      Q => U3_C2(2)
    );
  U3_C2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_1_4,
      Q => U3_C2(1)
    );
  U3_C2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_0_4,
      Q => U3_C2(0)
    );
  U3_C1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_9_1,
      Q => U3_C1(9)
    );
  U3_C1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_8_1,
      Q => U3_C1(8)
    );
  U3_C1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_7_1,
      Q => U3_C1(7)
    );
  U3_C1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_6_1,
      Q => U3_C1(6)
    );
  U3_C1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_5_3,
      Q => U3_C1(5)
    );
  U3_C1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_4_3,
      Q => U3_C1(4)
    );
  U3_C1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_3_3,
      Q => U3_C1(3)
    );
  U3_C1_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_2_3,
      Q => U3_C1(2)
    );
  U3_C1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_1_3,
      Q => U3_C1(1)
    );
  U3_C1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(19),
      CE => U3_C1_not0001,
      D => U3_Result_0_3,
      Q => U3_C1(0)
    );
  U3_RMht2_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_5_2,
      Q => U3_RMht2(5)
    );
  U3_RMht2_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_4_2_1925,
      Q => U3_RMht2(4)
    );
  U3_RMht2_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_3_2_1920,
      Q => U3_RMht2(3)
    );
  U3_RMht2_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_2_2,
      Q => U3_RMht2(2)
    );
  U3_RMht2_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_1_2,
      Q => U3_RMht2(1)
    );
  U3_RMht2_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_0_2,
      Q => U3_RMht2(0)
    );
  U3_RMht1_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_5_1,
      Q => U3_RMht1(5)
    );
  U3_RMht1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_4_1_1924,
      Q => U3_RMht1(4)
    );
  U3_RMht1_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_3_1_1919,
      Q => U3_RMht1(3)
    );
  U3_RMht1_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_2_1,
      Q => U3_RMht1(2)
    );
  U3_RMht1_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_1_1,
      Q => U3_RMht1(1)
    );
  U3_RMht1_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_0_1,
      Q => U3_RMht1(0)
    );
  U3_q_20 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(20),
      Q => U3_q_201
    );
  U3_q_19 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(19),
      Q => U3_q_191
    );
  U3_q_18 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(18),
      Q => U3_q_181
    );
  U3_q_17 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(17),
      Q => U3_Q_17_1733
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(16),
      Q => U3_Q_16_1732
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(15),
      Q => U3_Q_15_1731
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(14),
      Q => U3_Q_14_1730
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(13),
      Q => U3_Q_13_1729
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(12),
      Q => U3_Q_12_1728
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(11),
      Q => U3_Q_11_1727
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(10),
      Q => U3_Q_10_1726
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(9),
      Q => U3_Q_9_1741
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(8),
      Q => U3_Q_8_1740
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(7),
      Q => U3_Q_7_1739
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(6),
      Q => U3_Q_6_1738
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(5),
      Q => U3_Q_5_1737
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(4),
      Q => U3_Q_4_1736
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(3),
      Q => U3_Q_3_1735
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(2),
      Q => U3_Q_2_1734
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(1),
      Q => U3_Q_1_1725
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_2296,
      CLR => btn_3_IBUF_2263,
      D => U3_Result(0),
      Q => U3_Q_0_1724
    );
  U3_tank2HP_2 : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => U3_tank2HP_mux0007_0_Q_2208,
      G => vidon,
      Q => U3_tank2HP_2_Q
    );
  U3_tank2HP_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_tank2HP_mux0007_2_Q_2209,
      G => vidon,
      Q => U3_tank2HP_0_Q
    );
  U3_tank1HP_2 : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => U3_tank1HP_mux0005_0_Q_2194,
      G => vidon,
      Q => U3_tank1HP_2_Q
    );
  U3_tank1HP_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_tank1HP_mux0005_2_Q_2195,
      G => vidon,
      Q => U3_tank1HP_0_Q
    );
  U3_B : LDE_1
    port map (
      D => U3_B_mux0016,
      G => U3_B_and0000,
      GE => vidon,
      Q => U3_B_739
    );
  U3_destroy1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_destroy1_mux0015,
      G => vidon,
      Q => U3_destroy1_1953
    );
  U3_destroy2 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_destroy2_mux0017,
      G => vidon,
      Q => U3_destroy2_1959
    );
  U3_rise2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_rise2_and0000_2031,
      D => N0,
      PRE => U3_RMcnt2_and0000,
      Q => U3_rise2_2030
    );
  U3_rise : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_rise_and0000_2032,
      D => N0,
      PRE => U3_RMcnt_and0000,
      Q => U3_rise_2029
    );
  U3_Mhorz : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_Mhorz_not0001_1515,
      D => N0,
      PRE => U3_Mhorz_or0000,
      Q => U3_Mhorz_1506
    );
  U3_font2_5_and000021 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_font2_2_and0000_bdd2,
      I2 => U3_RMht1(4),
      I3 => U3_RMht1(3),
      O => U3_font2_5_and0000_bdd0
    );
  U3_font1_2_and000111 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(5),
      I3 => U3_RMht1(4),
      O => U3_font1_2_and0001
    );
  U3_font1_2_and000011 : LUT4
    generic map(
      INIT => X"222A"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(4),
      O => U3_font1_2_and0000
    );
  U3_font2_4_and000021 : LUT4
    generic map(
      INIT => X"FF95"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(3),
      I2 => U3_font2_2_and0000_bdd2,
      I3 => U3_RMht1(5),
      O => U3_font2_4_and0000_bdd0
    );
  U3_font1_1_and000021 : LUT4
    generic map(
      INIT => X"91FF"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(5),
      O => U3_font1_1_and0000_bdd0
    );
  U3_font2_mux0007_5_1 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_font2_5_and0000_bdd0,
      I2 => U3_RMht2(5),
      I3 => N01,
      O => U3_font2_mux0007(5)
    );
  U3_font2_mux0007_4_1 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_font2_4_and0000_bdd0,
      I2 => U3_RMht2(5),
      I3 => N2,
      O => U3_font2_mux0007(4)
    );
  U3_font1_mux0007_5_1_SW1 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(4),
      O => N18
    );
  U3_font1_mux0007_7_1_SW0 : LUT4
    generic map(
      INIT => X"AA26"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(1),
      I3 => U3_RMht2(2),
      O => N20
    );
  U3_font1_mux0007_7_1 : LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      I0 => sig_tank2,
      I1 => N20,
      I2 => U3_font1_0_and0000_bdd0,
      I3 => U3_RMht2(5),
      O => U3_font1_mux0007(7)
    );
  U3_font2_mux0007_0_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(3),
      I2 => U3_RMht2(4),
      I3 => U3_RMht2(5),
      O => N22
    );
  U3_font2_mux0007_0_1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => N22,
      I1 => sig_tank2,
      I2 => U3_RMht2(0),
      I3 => U3_font2_0_and0000_bdd0,
      O => U3_font2_mux0007(0)
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_2230
    );
  bounce_outp_7_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(7),
      I1 => bounce_delay2(7),
      I2 => bounce_delay1(7),
      O => ld_7_OBUF_2294
    );
  bounce_outp_6_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(6),
      I1 => bounce_delay2(6),
      I2 => bounce_delay1(6),
      O => ld_6_OBUF_2293
    );
  bounce_outp_5_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(5),
      I1 => bounce_delay2(5),
      I2 => bounce_delay1(5),
      O => ld_5_OBUF_2292
    );
  bounce_outp_4_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(4),
      I1 => bounce_delay2(4),
      I2 => bounce_delay1(4),
      O => ld_4_OBUF_2291
    );
  bounce_outp_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(3),
      I1 => bounce_delay2(3),
      I2 => bounce_delay1(3),
      O => ld_3_OBUF_2290
    );
  bounce_outp_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(2),
      I1 => bounce_delay2(2),
      I2 => bounce_delay1(2),
      O => ld_2_OBUF_2289
    );
  bounce_outp_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(1),
      I1 => bounce_delay2(1),
      I2 => bounce_delay1(1),
      O => ld_1_OBUF_2288
    );
  bounce_outp_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      O => ld_0_OBUF_2287
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_2272
    );
  screenstate_present_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_2_OBUF_2289,
      I2 => screenstate_present_state_FSM_FFd2_2433,
      O => screenstate_present_state_FSM_FFd1_In
    );
  U3_Result_2_21 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht2(0),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(1),
      O => U3_Result_2_2
    );
  U3_Result_2_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht1(0),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(1),
      O => U3_Result_2_1
    );
  U3_tank1HP_mux0005_0_Q : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => N26,
      I2 => U3_spriteonM2,
      I3 => U3_B_and0000,
      O => U3_tank1HP_mux0005_0_Q_2194
    );
  U3_tank2HP_mux0007_2_SW1 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_tank2HP_0_Q,
      I2 => sig_gameB,
      I3 => U3_tank2HP_2_Q,
      O => N29
    );
  U3_tank2HP_mux0007_2_Q : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_N30,
      I2 => N29,
      I3 => N28,
      O => U3_tank2HP_mux0007_2_Q_2209
    );
  U3_tank1HP_mux0005_2_SW1 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => U3_spriteonM2,
      I1 => U3_tank1HP_0_Q,
      I2 => sig_gameB,
      I3 => U3_tank1HP_2_Q,
      O => N32
    );
  U3_tank1HP_mux0005_2_Q : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => U3_B_and0000,
      I2 => N32,
      I3 => N31,
      O => U3_tank1HP_mux0005_2_Q_2195
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      O => N34
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N34,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_N2,
      O => vsync_OBUF_2649
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
      O => nes_nes_clk31_2379
    );
  U3_rise_and0000 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMcnt(1),
      I1 => U3_RMcnt(2),
      I2 => N36,
      I3 => U3_RMcnt(0),
      O => U3_rise_and0000_2032
    );
  U3_rise2_and0000 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMcnt2(1),
      I1 => U3_RMcnt2(2),
      I2 => N38,
      I3 => U3_RMcnt2(0),
      O => U3_rise2_and0000_2031
    );
  who_present_state_FSM_FFd2_In2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_N0,
      O => who_present_state_FSM_FFd2_In
    );
  U3_destroy2_mux001727 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U3_tank1HP_2_Q,
      I1 => U3_blue_and0000,
      I2 => U3_B_and0000,
      I3 => U3_destroy2_mux001719,
      O => U3_destroy2_mux001727_1963
    );
  U3_destroy2_mux001754 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_spriteonM2,
      I2 => U3_N30,
      O => U3_destroy2_mux001754_1965
    );
  U3_destroy2_mux001766 : LUT4
    generic map(
      INIT => X"3331"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => sig_gameB,
      I2 => U3_destroy2_mux001754_1965,
      I3 => U3_spriteonM1,
      O => U3_destroy2_mux001766_1966
    );
  U3_destroy1_mux00154 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_blue_and0001,
      I2 => U3_blue_and0000,
      I3 => U3_B_and0000,
      O => U3_destroy1_mux00154_1956
    );
  U3_destroy1_mux001541 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_blue_and0002,
      I2 => U3_spriteonGrnd,
      O => U3_destroy1_mux001541_1957
    );
  U3_destroy1_mux001571 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_destroy1_mux001527_1955,
      I1 => U3_destroy1_mux001562_1958,
      O => U3_destroy1_mux0015
    );
  U3_CM2_Q_mux0000_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(1),
      I2 => U3_CM2_sub0000_1(1),
      O => U3_CM2_Q_mux0000(1)
    );
  x7_an_3_mux00011 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => sig_tank1_angle_calc(5),
      I2 => sig_tank1_angle_calc(4),
      I3 => x7_clkdiv(19),
      O => an_3_OBUF_2233
    );
  nes_up_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(2),
      I3 => N652,
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
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
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
      O => N40
    );
  nes_scalar_next_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(0),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(0)
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => N660,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(6),
      I2 => U2_vcs(7),
      I3 => U2_vcs(5),
      O => U2_N2
    );
  U2_hcs_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(9),
      I3 => N657,
      O => U2_hcs_cmp_eq00005_714
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N653,
      I1 => U2_hcs_cmp_eq00005_714,
      O => U2_hcs_cmp_eq0000
    );
  U3_B_mux00164 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB4,
      I1 => U3_spriteonB3,
      I2 => U3_N28,
      I3 => U3_blue_and0004,
      O => U3_B_mux00164_743
    );
  U3_B_mux001651 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U3_tank1Angle10s,
      I1 => U3_tank110sM_mux0000,
      I2 => U3_tank11sM_mux0000,
      I3 => U3_tank1Angle1s,
      O => U3_B_mux001651_744
    );
  U3_B_mux001663 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_blue_and0004,
      I2 => U3_blue_and0003,
      I3 => U3_N35,
      O => U3_B_mux001663_745
    );
  U3_B_mux001672 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_blue_and0001,
      I1 => U3_blue_and0000,
      I2 => U3_spriteonB5,
      O => U3_B_mux001672_746
    );
  nes_scalar_next_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_scalar_reg(6),
      I1 => nes_scalar_reg(7),
      I2 => nes_scalar_reg(4),
      I3 => nes_scalar_reg(5),
      O => nes_scalar_next_cmp_eq000010_2403
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
      O => nes_scalar_next_cmp_eq000021_2404
    );
  nes_scalar_next_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(1),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(1)
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_1
    );
  U3_CM2_Q_mux0000_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(2),
      I2 => U3_CM2_sub0000_1(2),
      O => U3_CM2_Q_mux0000(2)
    );
  U3_CM1_Q_mux0000_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(1),
      I2 => U3_CM1_add0000_0(1),
      O => U3_CM1_Q_mux0000(1)
    );
  U3_Result_3_2_SW0 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(1),
      I2 => U3_RMht2(0),
      I3 => sig_gameDown,
      O => N44
    );
  U3_Result_3_2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => N44,
      O => U3_Result_3_2_1920
    );
  U3_Result_3_1_SW0 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      I2 => U3_RMht1(0),
      I3 => sig_gameDown,
      O => N46
    );
  U3_Result_3_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => N46,
      O => U3_Result_3_1_1919
    );
  nes_scalar_next_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(2),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(2)
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_2
    );
  U3_CM2_Q_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(3),
      I2 => U3_CM2_sub0000_1(3),
      O => U3_CM2_Q_mux0000(3)
    );
  U3_CM1_Q_mux0000_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(2),
      I2 => U3_CM1_add0000_0(2),
      O => U3_CM1_Q_mux0000(2)
    );
  title_Msub_xpix_xor_5_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(3),
      I2 => U2_hcs(2),
      I3 => U2_hcs(4),
      O => title_xpix(5)
    );
  nes_scalar_next_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(3),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(3)
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_3
    );
  U3_CM2_Q_mux0000_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(4),
      I2 => U3_CM2_sub0000_1(4),
      O => U3_CM2_Q_mux0000(4)
    );
  U3_CM1_Q_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(3),
      I2 => U3_CM1_add0000_0(3),
      O => U3_CM1_Q_mux0000(3)
    );
  nes_scalar_next_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(4),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(4)
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_4
    );
  U3_CM2_Q_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(5),
      I2 => U3_CM2_sub0000_1(5),
      O => U3_CM2_Q_mux0000(5)
    );
  U3_CM1_Q_mux0000_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(4),
      I2 => U3_CM1_add0000_0(4),
      O => U3_CM1_Q_mux0000(4)
    );
  title_green_cmp_lt0000225 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => U2_vcs(5),
      I3 => U2_vcs(4),
      O => title_green_cmp_lt0000225_2602
    );
  nes_scalar_next_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(5),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(5)
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(5),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_5
    );
  U3_CM2_Q_mux0000_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(6),
      I2 => U3_CM2_sub0000_1(6),
      O => U3_CM2_Q_mux0000(6)
    );
  U3_CM1_Q_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(5),
      I2 => U3_CM1_add0000_0(5),
      O => U3_CM1_Q_mux0000(5)
    );
  nes_scalar_next_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(6),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(6)
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(6),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_6
    );
  U3_CM2_Q_mux0000_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(7),
      I2 => U3_CM2_sub0000_1(7),
      O => U3_CM2_Q_mux0000(7)
    );
  U3_CM1_Q_mux0000_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(6),
      I2 => U3_CM1_add0000_0(6),
      O => U3_CM1_Q_mux0000(6)
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
      O => nes_counter_reg_cmp_eq0000125_2372
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_2372,
      I1 => N654,
      O => nes_N11
    );
  nes_scalar_next_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(7),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(7)
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(7),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_7
    );
  U3_CM2_Q_mux0000_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(8),
      I2 => U3_CM2_sub0000_1(8),
      O => U3_CM2_Q_mux0000(8)
    );
  U3_CM1_Q_mux0000_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(7),
      I2 => U3_CM1_add0000_0(7),
      O => U3_CM1_Q_mux0000(7)
    );
  U3_tank2_angle_5_1 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_font2_mux0007_4_bdd2,
      I2 => U3_RMht2(4),
      O => sig_tank2_angle_calc(5)
    );
  U3_font2_mux0007_4_31 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(3),
      O => U3_font2_mux0007_4_bdd2
    );
  U3_tank1_angle_5_1 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_font2_2_and0000_bdd2,
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(4),
      I3 => U3_RMht1(3),
      O => sig_tank1_angle_calc(5)
    );
  U3_font2_2_and000031 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      O => U3_font2_2_and0000_bdd2
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
      O => a_to_g_2_OBUF_2221
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
      O => a_to_g_4_OBUF_2223
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
      O => a_to_g_1_OBUF_2220
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
      O => a_to_g_5_OBUF_2224
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
      O => a_to_g_0_OBUF_2219
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
      O => a_to_g_3_OBUF_2222
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
      O => a_to_g_6_OBUF_2225
    );
  nes_scalar_next_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(8),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(8)
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(8),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_8
    );
  U3_CM2_Q_mux0000_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM2_sub0000(9),
      I2 => U3_CM2_sub0000_1(9),
      O => U3_CM2_Q_mux0000(9)
    );
  U3_CM1_Q_mux0000_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(8),
      I2 => U3_CM1_add0000_0(8),
      O => U3_CM1_Q_mux0000(8)
    );
  nes_scalar_next_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_next_addsub0000(9),
      I1 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(9)
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(9),
      I1 => U2_vcs_cmp_eq0000_725,
      O => U2_Mcount_vcs_eqn_9
    );
  U3_CM1_Q_mux0000_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig_gameA,
      I1 => U3_CM1_add0000(9),
      I2 => U3_CM1_add0000_0(9),
      O => U3_CM1_Q_mux0000(9)
    );
  U3_RM2_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(0),
      I1 => U3_N15,
      O => U3_RM2_mux0002(9)
    );
  U3_RM2_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(1),
      I1 => U3_N15,
      O => U3_RM2_mux0002(8)
    );
  U3_RM2_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(2),
      I1 => U3_N15,
      O => U3_RM2_mux0002(7)
    );
  U3_RM2_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(3),
      I1 => U3_N15,
      O => U3_RM2_mux0002(6)
    );
  U3_RM2_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(4),
      I1 => U3_N15,
      O => U3_RM2_mux0002(5)
    );
  U3_RM2_mux0002_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_RM2_share0000(5),
      O => U3_RM2_mux0002(4)
    );
  U3_RM2_mux0002_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => N659,
      I1 => U3_RM2_share0000(6),
      O => U3_RM2_mux0002(3)
    );
  U3_RM2_mux0002_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_RM2_share0000(7),
      O => U3_RM2_mux0002(2)
    );
  U3_RM2_mux0002_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_RM2_share0000(8),
      O => U3_RM2_mux0002(1)
    );
  U3_RM2_mux0002_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_RM2_share0000(9),
      O => U3_RM2_mux0002(0)
    );
  U3_RM1_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(0),
      I1 => U3_N14,
      O => U3_RM1_mux0002(9)
    );
  U3_RM1_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(1),
      I1 => U3_N14,
      O => U3_RM1_mux0002(8)
    );
  U3_RM1_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(2),
      I1 => U3_N14,
      O => U3_RM1_mux0002(7)
    );
  U3_RM1_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(3),
      I1 => U3_N14,
      O => U3_RM1_mux0002(6)
    );
  U3_RM1_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(4),
      I1 => U3_N14,
      O => U3_RM1_mux0002(5)
    );
  U3_RM1_mux0002_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => N658,
      I1 => U3_RM1_share0000(5),
      O => U3_RM1_mux0002(4)
    );
  U3_RM1_mux0002_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM1_share0000(6),
      O => U3_RM1_mux0002(3)
    );
  U3_RM1_mux0002_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM1_share0000(7),
      O => U3_RM1_mux0002(2)
    );
  U3_RM1_mux0002_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM1_share0000(8),
      O => U3_RM1_mux0002(1)
    );
  U3_RM1_mux0002_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM1_share0000(9),
      O => U3_RM1_mux0002(0)
    );
  U3_Result_4_2_SW0 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(0),
      I2 => U3_RMht2(3),
      I3 => sig_gameDown,
      O => N48
    );
  U3_Result_4_2_SW1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => sig_gameDown,
      I2 => U3_RMht2(3),
      I3 => U3_RMht2(1),
      O => N49
    );
  U3_Result_4_2 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(2),
      I2 => N48,
      I3 => N49,
      O => U3_Result_4_2_1925
    );
  U3_Result_4_1_SW0 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(0),
      I2 => U3_RMht1(3),
      I3 => sig_gameDown,
      O => N51
    );
  U3_Result_4_1_SW1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => sig_gameDown,
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(1),
      O => N52
    );
  U3_Result_4_1 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(2),
      I2 => N51,
      I3 => N52,
      O => U3_Result_4_1_1924
    );
  U3_Mhorz_cmp_ne000065 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMcnt(2),
      I2 => U3_RMht1(1),
      I3 => U3_RMcnt(1),
      O => U3_Mhorz_cmp_ne000065_1510
    );
  U3_Mhorz_cmp_ne0000113 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMcnt(0),
      I2 => U3_RMht1(5),
      I3 => U3_RMcnt(5),
      O => U3_Mhorz_cmp_ne0000113_1508
    );
  U3_Mhorz_cmp_ne0000115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N655,
      I1 => U3_Mhorz_cmp_ne000065_1510,
      I2 => U3_Mhorz_cmp_ne0000113_1508,
      O => U3_Mhorz_cmp_ne0000
    );
  who_present_state_FSM_Out11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      O => U3_C2_not000186
    );
  who_present_state_FSM_Out01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      O => sig_tank2
    );
  U3_Mhorz_cmp_ne000165 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMcnt2(2),
      I2 => U3_RMht2(1),
      I3 => U3_RMcnt2(1),
      O => U3_Mhorz_cmp_ne000165_1514
    );
  U3_Mhorz_cmp_ne0001113 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => U3_RMcnt2(0),
      I2 => U3_RMht2(5),
      I3 => U3_RMcnt2(5),
      O => U3_Mhorz_cmp_ne0001113_1512
    );
  U3_Mhorz_cmp_ne0001115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N656,
      I1 => U3_Mhorz_cmp_ne000165_1514,
      I2 => U3_Mhorz_cmp_ne0001113_1512,
      O => U3_Mhorz_cmp_ne0001
    );
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(1),
      I1 => U3_C2(4),
      I2 => U3_C2(2),
      I3 => U3_C2_not00011_777,
      O => U3_C2_not00016_781
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_778
    );
  U3_C2_not000189 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_C2_not000164_782,
      I1 => U3_C2_not000186,
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000123_779,
      O => U3_C2_not0001
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(0),
      I1 => U3_C1(1),
      O => U3_C1_not00015_763
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
      O => U3_C1_not000110_758
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1_not00015_763,
      I2 => U3_C1_not000110_758,
      I3 => U3_C1_not00014_761,
      O => U3_C1_not000127_760
    );
  U3_C1_not000147 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(4),
      O => U3_C1_not000147_762
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
      O => U3_C1_not0001105_759
    );
  U3_C1_not0001142 : LUT4
    generic map(
      INIT => X"A8A0"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_C1_not0001105_759,
      I2 => U3_C1_not000127_760,
      I3 => U3_C1_not000183_764,
      O => U3_C1_not0001
    );
  title_Msub_xpix_xor_8_111 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(7),
      I2 => title_N01,
      O => title_N27
    );
  title_Msub_xpix_xor_9_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(3),
      I2 => U2_hcs(5),
      I3 => U2_hcs(2),
      O => title_N01
    );
  U3_Result_5_236 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(4),
      I3 => U3_RMht2(3),
      O => U3_Result_5_236_1932
    );
  U3_Result_5_136 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(4),
      I3 => U3_RMht1(3),
      O => U3_Result_5_136_1930
    );
  U3_Msub_tank1rom10s_sub0001_xor_7_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(7),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_Madd_tank1rom10s_lut(7)
    );
  title_spriteon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(8),
      O => U2_vidon_and000013
    );
  title_spriteon_and00006 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => title_spriteon_and00006_2631
    );
  title_spriteon_and000016 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      O => U3_spriteonB1_and000032
    );
  title_spriteon_and000019 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonB1_and000032,
      I2 => U2_vcs(4),
      I3 => title_spriteon_and00006_2631,
      O => title_spriteon_and000019_2626
    );
  title_spriteon_and000035 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(3),
      O => title_spriteon_and000035_2628
    );
  title_spriteon_and000038 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      O => title_spriteon_and000038_2629
    );
  title_spriteon_and000052 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => title_spriteon_and000035_2628,
      I2 => title_spriteon_and000038_2629,
      I3 => U2_hcs(7),
      O => title_spriteon_and000052_2630
    );
  title_spriteon_and000059 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U3_tank1Angle1s_and000023
    );
  title_spriteon_and0000119 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      O => title_spriteon_and0000119_2622
    );
  title_spriteon_and0000124 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => title_spriteon_and0000119_2622,
      I1 => U2_hcs(6),
      I2 => title_spriteon_and000087,
      I3 => U2_hcs(5),
      O => title_spriteon_and0000124_2623
    );
  title_spriteon_and0000169 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => title_spriteon_and0000169_2624
    );
  title_spriteon_and0000178 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(5),
      O => title_spriteon_and0000178_2625
    );
  title_spriteon_and0000205 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => title_spriteon_and0000169_2624,
      I3 => title_spriteon_and0000178_2625,
      O => title_spriteon_and0000205_2627
    );
  U3_RMht1_not00011211 : LUT4
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_RMht1(5),
      I2 => U3_RMht1_not0001164_1881,
      I3 => U3_RMht1_not00011171_1880,
      O => U3_RMht1_not0001
    );
  U3_tank1rom10s_sub0001_10_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_Madd_tank1rom10s_lut(10)
    );
  U3_tank1rom10s_sub0001_9_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(9),
      I1 => U3_tank1rom10s_sub0000(8),
      I2 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_tank1rom10s_sub0001(9)
    );
  U3_tank1rom10s_sub0001_8_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_tank1rom10s_sub0001(8)
    );
  U3_tank1rom10s_sub0001_10_21 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_Msub_ypix1_Madd_lut(5),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => U3_tank1rom10s_sub0000(7),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_tank1rom10s_sub0001_10_bdd0
    );
  U3_RMht2_not0001183 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => sig_gameDown,
      I1 => sig_gameUp,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(0),
      O => U3_RMht2_not0001183_1889
    );
  U3_spriteonB2_cmp_le000011_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      I2 => U2_hcs(5),
      O => N56
    );
  U3_spriteonB2_cmp_le000011 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => N56,
      I2 => U2_hcs(6),
      I3 => U2_hcs(8),
      O => U3_N57
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_726
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
      O => U2_vidon_and00006_734
    );
  U2_vidon_and000018 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => U2_vcs(5),
      I3 => U2_vidon_and000013,
      O => U2_vidon_and000018_730
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_734,
      I2 => U2_vidon_and000018_730,
      I3 => U2_vidon_and00000_726,
      O => U2_vidon_and000039_733
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
      O => U2_vidon_and000080_737
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_N3,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U2_vidon_and0000105_727
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => U2_vidon_and000080_737,
      I1 => U2_vidon_and0000105_727,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_728
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_733,
      I1 => U2_vidon_and0000117_728,
      O => vidon
    );
  U3_B_mux0016112 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonB1,
      O => U3_N28
    );
  U3_spriteonB4_cmp_le0000121 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(7),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => U3_spriteonB4_cmp_le0000121_2080
    );
  U3_spriteonB3_cmp_le0000112 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(7),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => U3_spriteonB3_cmp_le0000112_2070
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
      O => U3_spriteonB3_cmp_le0000128_2071
    );
  U3_spriteonB2_and00005 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(5),
      I2 => U2_vcs(4),
      I3 => U2_vcs(3),
      O => U3_spriteonB2_and00005_2065
    );
  U3_spriteonB3_and000048 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_spriteonB3_and000045_2069,
      I1 => U3_spriteonB3_and00002_2068,
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB3_and000015_2067,
      O => U3_spriteonB3
    );
  U3_spriteonB1_and00005 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(3),
      I2 => U2_hcs(2),
      I3 => U2_hcs(5),
      O => U3_spriteonB1_and00005_2057
    );
  U3_spriteonB1_and000017 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(6),
      I3 => U3_spriteonB1_and00005_2057,
      O => U3_spriteonB1_and000017_2054
    );
  U3_spriteonB1_and000035 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonB1_and000032,
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => U3_spriteonB1_and000035_2056
    );
  U3_spriteonB1_and000055 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => U3_spriteonB1_and000035_2056,
      I1 => U3_spriteonB1_cmp_le00002,
      I2 => U2_hcs(9),
      I3 => U2_vidon_and000013,
      O => U3_spriteonB1_and000055_2058
    );
  U3_spriteonB1_and000073 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_spriteonB1_and000055_2058,
      I1 => U2_hcs(9),
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB1_and000017_2054,
      O => U3_spriteonB1
    );
  title_Msub_ypix_xor_9_11 : LUT4
    generic map(
      INIT => X"E1C3"
    )
    port map (
      I0 => title_Msub_ypix_lut_7_Q,
      I1 => title_ypix_addsub0000_8_Q,
      I2 => title_ypix_addsub0000_9_Q,
      I3 => title_N7,
      O => title_ypix_9_Q
    );
  U3_RMcnt_Q_mux0000_5_Q : LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_RMcnt_and0000,
      I2 => U3_rise_2029,
      I3 => N58,
      O => U3_RMcnt_Q_mux0000(5)
    );
  U3_RMcnt2_Q_mux0000_5_Q : LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMcnt2_and0000,
      I2 => U3_rise2_2030,
      I3 => N60,
      O => U3_RMcnt2_Q_mux0000(5)
    );
  U3_spriteonB4_cmp_ge00001 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => U3_spriteonB4_cmp_ge00001_2078
    );
  U3_spriteonB4_and00002 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(5),
      O => U3_spriteonB4_and00002_2074
    );
  U3_spriteonB4_and000010 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_spriteonB4_and00002_2074,
      I1 => U2_vcs(8),
      I2 => U2_vcs(4),
      I3 => U3_spriteonB4_cmp_ge00001_2078,
      O => U3_spriteonB4_and000010_2073
    );
  U3_spriteonB4_and000034 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_spriteonB4_and000031,
      I1 => U2_vcs(9),
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB4_and000010_2073,
      O => U3_spriteonB4
    );
  U3_spriteonGrnd_and000072 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(4),
      I3 => U2_vcs(3),
      O => U3_spriteonGrnd_and000072_2090
    );
  U3_spriteonB1_cmp_lt0000212 : LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => title_spriteon_and0000169_2624,
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => U3_spriteonB1_cmp_lt0000212_2062
    );
  U3_spriteonB1_cmp_lt0000221 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      O => U3_spriteonB1_cmp_lt0000221_2063
    );
  U3_spriteonB1_cmp_lt0000235 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonB1_cmp_lt0000221_2063,
      I2 => U3_spriteonB1_cmp_lt0000212_2062,
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_spriteonB5_and00009 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_vidon_and000013,
      I1 => U3_N32,
      I2 => U3_spriteonB4_cmp_ge00001_2078,
      I3 => U2_vcs(4),
      O => U3_spriteonB5_and00009_2087
    );
  U3_spriteonB5_and000042 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      O => U3_spriteonB5_and000042_2085
    );
  U3_spriteonB5_and000059 : LUT4
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_spriteonB5_and000042_2085,
      I2 => U2_hcs(9),
      I3 => U3_spriteonB5_and000027_2084,
      O => U3_spriteonB5_and000059_2086
    );
  U3_spriteonB5_and000085 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB4_cmp_le0000,
      I2 => U3_spriteonB5_and00009_2087,
      I3 => U3_spriteonB5_and000059_2086,
      O => U3_spriteonB5
    );
  title_Msub_ypix_xor_5_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => title_Msub_ypix_cy(3),
      I1 => title_Msub_ypix_lut_4_Q,
      I2 => title_Msub_ypix_lut_5_Q,
      O => title_ypix_5_Q
    );
  title_Msub_ypix_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => title_Msub_ypix_lut_4_Q,
      I1 => title_Msub_ypix_cy(3),
      O => title_ypix_4_Q
    );
  U3_tank1Angle10s_cmp_gt00001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(8),
      I2 => U2_vcs(9),
      O => N62
    );
  U3_tank1Angle10s_cmp_gt00001 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => N62,
      I2 => U2_vcs(4),
      I3 => U2_vcs(5),
      O => U3_tank1Angle10s_cmp_gt0000
    );
  title_Msub_ypix_xor_6_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => title_Msub_ypix_lut_4_Q,
      I1 => title_ypix_addsub0000_6_Q,
      I2 => title_Msub_ypix_lut_5_Q,
      I3 => title_Msub_ypix_cy(3),
      O => title_ypix_6_Q
    );
  title_Msub_ypix_xor_8_11 : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => title_N7,
      I1 => title_ypix_addsub0000_8_Q,
      I2 => title_Msub_ypix_lut_7_Q,
      O => title_ypix_8_Q
    );
  U3_tank1Angle10s_cmp_le000018 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => U3_tank1Angle10s_cmp_le000018_2185
    );
  U3_tank1Angle1s_and000033 : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(6),
      I3 => U3_tank1Angle1s_and000023,
      O => U3_tank1Angle1s_and000033_2189
    );
  U3_tank1Angle1s_and000047 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1Angle1s_and00009,
      I1 => U3_tank1Angle10s_cmp_le00002,
      I2 => U3_tank1Angle1s_and000033_2189,
      O => U3_tank1Angle1s
    );
  U3_tank1Angle10s_and000014 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(4),
      O => U3_tank1Angle10s_and000014_2181
    );
  U3_tank1Angle10s_and000055 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      I2 => U2_hcs(7),
      I3 => U2_vcs(9),
      O => U3_tank1Angle10s_and000055_2183
    );
  title_Msub_ypix_xor_9_121 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => title_ypix_addsub0000_6_Q,
      I1 => title_Msub_ypix_cy(3),
      I2 => title_Msub_ypix_lut_4_Q,
      I3 => title_Msub_ypix_lut_5_Q,
      O => title_N7
    );
  U3_Madd_spriteonM1_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(7),
      I2 => U3_CM1(6),
      I3 => U3_CM1(4),
      O => U3_spriteonM1_addsub0000(7)
    );
  U3_Madd_spriteonM1_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM1(4),
      I1 => U3_CM1(5),
      I2 => U3_CM1(6),
      O => U3_spriteonM1_addsub0000(6)
    );
  U3_Madd_spriteonM1_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(4),
      O => U3_spriteonM1_addsub0000(5)
    );
  U3_Madd_spriteonM2_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(7),
      I2 => U3_CM2(6),
      I3 => U3_CM2(4),
      O => U3_spriteonM2_addsub0000(7)
    );
  U3_Madd_spriteonM2_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM2(4),
      I1 => U3_CM2(5),
      I2 => U3_CM2(6),
      O => U3_spriteonM2_addsub0000(6)
    );
  U3_Madd_spriteonM2_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(4),
      O => U3_spriteonM2_addsub0000(5)
    );
  U3_Madd_spriteon2f_add0004_xor_9_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0004_cy(7),
      I2 => U3_C2(9),
      O => U3_Madd_spriteon2_addsub0000_lut(9)
    );
  U3_Madd_spriteon2f_add0004_xor_8_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0004_cy(7),
      O => U3_Madd_spriteon2_addsub0000_lut(8)
    );
  U3_Madd_spriteon2f_add0004_xor_5_11 : LUT2
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
  U3_Madd_spriteon2f_add0004_xor_6_11 : LUT3
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
  U3_Madd_spriteon2f_add0004_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(6),
      I2 => U3_C2(5),
      I3 => U3_C2(4),
      O => U3_Madd_spriteon2f_add0004_cy(7)
    );
  U3_Madd_spriteon1_addsub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U3_C1(7),
      I1 => U3_C1(6),
      I2 => U3_C1(5),
      I3 => U3_C1(4),
      O => U3_Madd_spriteon1_addsub0000_cy(7)
    );
  U3_Madd_spriteon2f_add0004_xor_7_11 : LUT4
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
  U3_spriteonM1_addsub0000_9_1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM1(9),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      I2 => U3_CM1(8),
      O => U3_spriteonM1_addsub0000(9)
    );
  U3_spriteonM1_addsub0000_8_2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(8),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      O => U3_spriteonM1_addsub0000(8)
    );
  U3_spriteonM1_addsub0000_8_11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U3_CM1(7),
      I1 => U3_CM1(4),
      I2 => U3_CM1(5),
      I3 => U3_CM1(6),
      O => U3_spriteonM1_addsub0000_8_bdd0
    );
  U3_spriteonM2_addsub0000_9_1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM2(9),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      I2 => U3_CM2(8),
      O => U3_spriteonM2_addsub0000(9)
    );
  U3_spriteonM2_addsub0000_8_2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(8),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      O => U3_spriteonM2_addsub0000(8)
    );
  U3_spriteonM2_addsub0000_8_11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U3_CM2(7),
      I1 => U3_CM2(4),
      I2 => U3_CM2(5),
      I3 => U3_CM2(6),
      O => U3_spriteonM2_addsub0000_8_bdd0
    );
  U3_ypix2_3_1 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => rom1_addr(3)
    );
  M2a_25_SW0 : LUT4
    generic map(
      INIT => X"083B"
    )
    port map (
      I0 => M1_3_bdd3,
      I1 => rom1_addr(4),
      I2 => rom1_addr(3),
      I3 => M1a_4_bdd0,
      O => N66
    );
  M2a_25_SW1 : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => M1a_4_bdd0,
      I3 => M1_3_bdd3,
      O => N67
    );
  M2a_29_10 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(4),
      O => M2a_29_10_229
    );
  M2a_24_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => M2_13_bdd4,
      I1 => N66,
      I2 => N67,
      O => M2a_24_Q_225
    );
  M2a_18_f5 : MUXF5
    port map (
      I0 => M2a_18_2,
      I1 => M2a_18_1_215,
      S => rom1_addr(4),
      O => M2a_18_Q
    );
  U3_ypix2_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      O => rom1_addr(1)
    );
  M2_28_f5 : MUXF5
    port map (
      I0 => M1_3_2_78,
      I1 => M1_3_1_77,
      S => rom1_addr(4),
      O => M2_28_Q
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => M1_9_2,
      I1 => M1_9_1_85,
      S => rom1_addr(4),
      O => M2_22_Q
    );
  U3_blue_and00031 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_destroy1_1953,
      O => U3_blue_and0003
    );
  U3_red_1_111 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U3_N20,
      I1 => U3_B_739,
      I2 => U3_blue_and0004,
      I3 => U3_blue_and0003,
      O => U3_N84
    );
  U3_green_1_1 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => U3_blue_and0004,
      I1 => U3_spriteonB5,
      I2 => N100,
      I3 => U3_spriteonB4,
      O => U3_N0
    );
  M2a_1_65 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(1),
      I3 => M2_0_bdd1,
      O => M2a_1_65_220
    );
  M2_15_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N102,
      O => M2_15_Q_147
    );
  M1_13_Q : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N121,
      I2 => M1_0_bdd2,
      I3 => N120,
      O => M1_13_Q_7
    );
  M1a_3_f5 : MUXF5
    port map (
      I0 => M1a_3_2,
      I1 => M1a_3_1,
      S => rom1_addr(4),
      O => M1a_3_Q
    );
  M1a_11_f5 : MUXF5
    port map (
      I0 => M1a_11_2,
      I1 => M1a_11_1,
      S => rom1_addr(4),
      O => M1a_11_Q
    );
  M2a_2_61 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_1_65_220,
      I2 => M2a_2_32_231,
      O => M2a_2_Q
    );
  M2a_4_52 : LUT4
    generic map(
      INIT => X"E68C"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd6,
      O => M2a_4_52_236
    );
  M2_3_51 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      O => M2_3_bdd9
    );
  M1_23_31 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      O => M1_23_bdd6
    );
  M2_14_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N127,
      O => M1_14_Q
    );
  M1a_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N131,
      O => M1a_4_Q_124
    );
  M1a_18_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N75,
      O => M1a_18_Q_93
    );
  M1_10_f5 : MUXF5
    port map (
      I0 => M1_10_2,
      I1 => M1_10_1,
      S => rom1_addr(4),
      O => M1_10_Q
    );
  M2_20_f5 : MUXF5
    port map (
      I0 => M2_20_2_157,
      I1 => M2_20_1_156,
      S => rom1_addr(4),
      O => M2_20_Q
    );
  U3_blue_and00041 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2,
      I1 => U3_destroy2_1959,
      O => U3_blue_and0004
    );
  U3_green_2_15 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => U3_blue_and0004,
      I1 => U3_spriteonB5,
      I2 => N163,
      I3 => U3_spriteonB4,
      O => U3_N97
    );
  U3_green_2_31 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => vidon,
      I1 => U3_tank1HP_0_Q,
      I2 => U3_blue_and0000,
      I3 => U3_B_and0000,
      O => U3_N29
    );
  M2a_8_11 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2a_6_bdd0,
      I2 => M2_10_bdd14,
      I3 => rom1_addr(3),
      O => M2a_8_11_245
    );
  M1a_29_58 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => M1_27_bdd4,
      I3 => rom1_addr(1),
      O => M1a_29_58_118
    );
  M1a_29_60 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_58_118,
      I2 => M1a_29_32_117,
      O => M1a_29_Q
    );
  M2_1_108 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => M1_30_91,
      I3 => M2_0_bdd1,
      O => M2_1_108_151
    );
  M2_1_112 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_1_108_151,
      I2 => M2_1_2,
      I3 => M2_1_51_153,
      O => M2_1_Q
    );
  M1a_27_52 : LUT4
    generic map(
      INIT => X"E68C"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(2),
      I2 => sig_tank1rom10s(0),
      I3 => M1_22_bdd9,
      O => M1a_27_52_113
    );
  M2a_5_33 : LUT4
    generic map(
      INIT => X"EA8A"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => M2a_5_33_238
    );
  M2_3_12 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_3_bdd6,
      I2 => M1_28_2,
      I3 => rom1_addr(4),
      O => M2_3_12_171
    );
  M2_3_48 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      O => M2_3_48_176
    );
  M2_3_132 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M2_3_12_171,
      I1 => M2_3_127,
      I2 => M2_3_34_175,
      I3 => M2_3_72_177,
      O => M2_3_Q
    );
  U3_tank2Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(0),
      I2 => U3_RMht2(1),
      O => N165
    );
  U3_tank2Angle_0_1 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(5),
      I3 => N165,
      O => M2_0_bdd13
    );
  U3_tank1Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(0),
      I2 => U3_RMht1(1),
      O => N167
    );
  U3_tank1Angle_0_1 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(5),
      I3 => N167,
      O => M1_21_bdd5
    );
  M1_28_12 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_bdd4,
      I2 => M1_28_2,
      I3 => rom1_addr(4),
      O => M1_28_12_50
    );
  M1_28_47 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => M1_21_bdd5,
      O => M1_27_13
    );
  M1_28_132 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1_28_12_50,
      I1 => M1_28_129,
      I2 => M1_28_33_55,
      I3 => M1_28_71_56,
      O => M1_28_Q
    );
  M2_0_92 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      O => M2_0_bdd16
    );
  M1_22_72 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      O => M1_22_bdd12
    );
  U3_ypix2_2_1 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      O => rom1_addr(2)
    );
  U3_red_0_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_N29,
      I1 => U3_N100,
      O => U3_N19
    );
  U3_green_2_211 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_N30,
      I2 => vidon,
      I3 => U3_tank2HP_0_Q,
      O => U3_N100
    );
  selector_red_2_31 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_42_2438,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(7),
      O => selector_red_2_31_2453
    );
  selector_red_2_36 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_N19,
      I2 => selector_red_2_4_2454,
      I3 => selector_red_2_31_2453,
      O => red_2_OBUF_2426
    );
  M2_6_54 : LUT4
    generic map(
      INIT => X"1808"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(0),
      O => M2_6_54_191
    );
  M2_6_93 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_6_54_191,
      I2 => M2_1_bdd1,
      I3 => rom1_addr(3),
      O => M2_6_93_192
    );
  selector_green_2_17 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => selector_green_1_2_2439,
      I2 => U3_N97,
      I3 => U3_N28,
      O => selector_green_2_17_2445
    );
  selector_green_2_81 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_42_2438,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(4),
      O => selector_green_2_81_2446
    );
  U3_blue_1_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_N33,
      I1 => U3_spriteonGrnd,
      O => U3_N105
    );
  U3_destroy2_mux001721 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_B_and0000,
      I1 => U3_blue_and0000,
      I2 => U3_blue_and0001,
      O => U3_N30
    );
  U3_tank2Angle_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(1),
      O => N175
    );
  U3_tank2Angle_1_Q : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(5),
      I2 => U3_RMht2(3),
      I3 => N175,
      O => M2_0_bdd6
    );
  U3_tank1Angle_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(1),
      O => N177
    );
  U3_tank1Angle_1_Q : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(3),
      I3 => N177,
      O => M1_22_bdd9
    );
  M1a_26_33 : LUT4
    generic map(
      INIT => X"EA8A"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(0),
      I3 => M1_21_bdd5,
      O => M1a_26_33_110
    );
  selector_red_1_14 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U3_N84,
      I1 => U3_N105,
      I2 => U3_spriteonB5,
      I3 => selector_red_1_2_2451,
      O => selector_red_1_14_2450
    );
  selector_red_1_47 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => title_spriteon,
      I1 => title_green_cmp_lt0000,
      I2 => selector_green_0_42_2438,
      I3 => sig_MTitle(6),
      O => selector_red_1_47_2452
    );
  selector_red_1_52 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_N19,
      I2 => selector_red_1_14_2450,
      I3 => selector_red_1_47_2452,
      O => red_1_OBUF_2425
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_2274
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_2263
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_2649,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_2276,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_2278,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_2272,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_2233,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_2232,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_2231,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_2230,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_2237,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_2236,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_2270,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_2269,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_2268,
      O => green(0)
    );
  ld_7_OBUF : OBUF
    port map (
      I => ld_7_OBUF_2294,
      O => ld(7)
    );
  ld_6_OBUF : OBUF
    port map (
      I => ld_6_OBUF_2293,
      O => ld(6)
    );
  ld_5_OBUF : OBUF
    port map (
      I => ld_5_OBUF_2292,
      O => ld(5)
    );
  ld_4_OBUF : OBUF
    port map (
      I => ld_4_OBUF_2291,
      O => ld(4)
    );
  ld_3_OBUF : OBUF
    port map (
      I => ld_3_OBUF_2290,
      O => ld(3)
    );
  ld_2_OBUF : OBUF
    port map (
      I => ld_2_OBUF_2289,
      O => ld(2)
    );
  ld_1_OBUF : OBUF
    port map (
      I => ld_1_OBUF_2288,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => ld_0_OBUF_2287,
      O => ld(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_2225,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_2224,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_2223,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_2222,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_2221,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_2220,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_2219,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_2426,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_2425,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_2424,
      O => red(0)
    );
  U1_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(1),
      O => U1_Mcount_q_cy_1_rt_582
    );
  U1_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(2),
      O => U1_Mcount_q_cy_2_rt_584
    );
  U1_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(3),
      O => U1_Mcount_q_cy_3_rt_586
    );
  U1_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(4),
      O => U1_Mcount_q_cy_4_rt_588
    );
  U1_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(5),
      O => U1_Mcount_q_cy_5_rt_590
    );
  U1_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(6),
      O => U1_Mcount_q_cy_6_rt_592
    );
  U1_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(7),
      O => U1_Mcount_q_cy_7_rt_594
    );
  U1_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(8),
      O => U1_Mcount_q_cy_8_rt_596
    );
  U1_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(9),
      O => U1_Mcount_q_cy_9_rt_598
    );
  U1_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(10),
      O => U1_Mcount_q_cy_10_rt_568
    );
  U1_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(11),
      O => U1_Mcount_q_cy_11_rt_570
    );
  U1_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(12),
      O => U1_Mcount_q_cy_12_rt_572
    );
  U1_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(13),
      O => U1_Mcount_q_cy_13_rt_574
    );
  U1_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(14),
      O => U1_Mcount_q_cy_14_rt_576
    );
  U1_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(15),
      O => U1_Mcount_q_cy_15_rt_578
    );
  U1_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(16),
      O => U1_Mcount_q_cy_16_rt_580
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_637
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_635
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_633
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_631
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_629
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_627
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_625
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_623
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_666
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_664
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_662
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_660
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_658
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_656
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_654
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_652
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_2676
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_2674
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_2672
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_2670
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_2668
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_2666
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_2664
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_2662
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_2660
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_2694
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_2692
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_2690
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_2688
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_2686
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_2684
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_2682
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_2680
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_2678
    );
  title_Madd_rom_addr2_add0000_Madd_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(13),
      O => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_2527
    );
  title_Madd_rom_addr2_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(12),
      O => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_2525
    );
  title_Madd_rom_addr2_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(11),
      O => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_2523
    );
  title_Madd_rom_addr2_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(10),
      O => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_2521
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(13),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_2557
    );
  title_Msub_ypix_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => title_Msub_ypix_addsub0000_cy_4_rt_2583
    );
  title_Msub_ypix_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => title_Msub_ypix_addsub0000_cy_3_rt_2581
    );
  title_Msub_ypix_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => title_Msub_ypix_addsub0000_cy_2_rt_2579
    );
  title_Msub_ypix_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => title_Msub_ypix_addsub0000_cy_1_rt_2577
    );
  title_Msub_ypix_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => title_Msub_ypix_addsub0000_cy_0_rt_2575
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_2332
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_2330
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_2328
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_2326
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_2324
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_2322
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_2320
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_2318
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_2313
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_2311
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_2309
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_2307
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_2305
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_2303
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_2301
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_2299
    );
  U3_CM1_Madd_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(1),
      O => U3_CM1_Madd_add0000_cy_1_rt_816
    );
  U3_CM1_Madd_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(2),
      O => U3_CM1_Madd_add0000_cy_2_rt_818
    );
  U3_CM1_Madd_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(3),
      O => U3_CM1_Madd_add0000_cy_3_rt_820
    );
  U3_CM1_Madd_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(4),
      O => U3_CM1_Madd_add0000_cy_4_rt_822
    );
  U3_CM1_Madd_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(5),
      O => U3_CM1_Madd_add0000_cy_5_rt_824
    );
  U3_CM1_Madd_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(6),
      O => U3_CM1_Madd_add0000_cy_6_rt_826
    );
  U3_CM1_Madd_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(7),
      O => U3_CM1_Madd_add0000_cy_7_rt_828
    );
  U3_CM1_Madd_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(8),
      O => U3_CM1_Madd_add0000_cy_8_rt_830
    );
  U3_CM2_Msub_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(0),
      O => U3_CM2_Msub_sub0000_cy_0_rt_895
    );
  U3_spriteonM2_addsub0000_8_21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(8),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      O => U3_spriteonM2_addsub0000_8_2_2141
    );
  U3_Madd_spriteonM2_addsub0000_xor_7_111 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(7),
      I2 => U3_CM2(6),
      I3 => U3_CM2(4),
      O => U3_Madd_spriteonM2_addsub0000_xor_7_11_1036
    );
  U3_Madd_spriteonM2_addsub0000_xor_6_111 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM2(4),
      I1 => U3_CM2(5),
      I2 => U3_CM2(6),
      O => U3_Madd_spriteonM2_addsub0000_xor_6_11_1035
    );
  U3_Madd_spriteonM2_addsub0000_xor_5_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(4),
      O => U3_Madd_spriteonM2_addsub0000_xor_5_11_1034
    );
  U3_Madd_spriteonM2_addsub0001_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(3),
      O => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1042
    );
  U3_Madd_spriteonM2_addsub0001_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(1),
      O => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1039
    );
  U3_spriteonM1_addsub0000_8_21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(8),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      O => U3_spriteonM1_addsub0000_8_2_2099
    );
  U3_Madd_spriteonM1_addsub0000_xor_7_111 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(7),
      I2 => U3_CM1(6),
      I3 => U3_CM1(4),
      O => U3_Madd_spriteonM1_addsub0000_xor_7_11_981
    );
  U3_Madd_spriteonM1_addsub0000_xor_6_111 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM1(4),
      I1 => U3_CM1(5),
      I2 => U3_CM1(6),
      O => U3_Madd_spriteonM1_addsub0000_xor_6_11_980
    );
  U3_Madd_spriteonM1_addsub0000_xor_5_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(4),
      O => U3_Madd_spriteonM1_addsub0000_xor_5_11_979
    );
  U3_Madd_spriteonM1_addsub0001_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(3),
      O => U3_Madd_spriteonM1_addsub0001_cy_3_rt_987
    );
  U3_Madd_spriteonM1_addsub0001_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(1),
      O => U3_Madd_spriteonM1_addsub0001_cy_1_rt_984
    );
  U3_Madd_spriteonM2_addsub0003_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(8),
      O => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1084
    );
  U3_Madd_spriteonM2_addsub0003_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(7),
      O => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1082
    );
  U3_Madd_spriteonM2_addsub0003_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(6),
      O => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1080
    );
  U3_Madd_spriteonM2_addsub0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(5),
      O => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1078
    );
  U3_Madd_spriteonM2_addsub0003_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(4),
      O => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1076
    );
  U3_Madd_spriteonM2_addsub0003_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(3),
      O => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1074
    );
  U3_Madd_spriteonM2_addsub0003_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(1),
      O => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1071
    );
  U3_Madd_spriteonM1_addsub0003_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(8),
      O => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1029
    );
  U3_Madd_spriteonM1_addsub0003_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(7),
      O => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1027
    );
  U3_Madd_spriteonM1_addsub0003_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(6),
      O => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1025
    );
  U3_Madd_spriteonM1_addsub0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(5),
      O => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1023
    );
  U3_Madd_spriteonM1_addsub0003_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(4),
      O => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1021
    );
  U3_Madd_spriteonM1_addsub0003_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(3),
      O => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1019
    );
  U3_Madd_spriteonM1_addsub0003_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(1),
      O => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1016
    );
  U3_tank1rom10s_sub0001_10_111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_11_2200
    );
  U3_Msub_tank1rom10s_sub0001_xor_7_111 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(7),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_Msub_tank1rom10s_sub0001_xor_7_11_1704
    );
  U3_Madd_spriteonM2_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(8),
      O => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1062
    );
  U3_Madd_spriteonM2_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(7),
      O => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1060
    );
  U3_Madd_spriteonM2_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(6),
      O => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1058
    );
  U3_Madd_spriteonM2_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(5),
      O => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1056
    );
  U3_Madd_spriteonM1_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(8),
      O => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1007
    );
  U3_Madd_spriteonM1_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(7),
      O => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1005
    );
  U3_Madd_spriteonM1_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(6),
      O => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1003
    );
  U3_Madd_spriteonM1_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(5),
      O => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1001
    );
  U3_Mcount_q_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_191,
      O => U3_Mcount_q_cy_19_rt_1485
    );
  U3_Mcount_q_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_181,
      O => U3_Mcount_q_cy_18_rt_1483
    );
  U3_Mcount_q_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_17_1733,
      O => U3_Mcount_q_cy_17_rt_1481
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1732,
      O => U3_Mcount_q_cy_16_rt_1479
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1731,
      O => U3_Mcount_q_cy_15_rt_1477
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1730,
      O => U3_Mcount_q_cy_14_rt_1475
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1729,
      O => U3_Mcount_q_cy_13_rt_1473
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1728,
      O => U3_Mcount_q_cy_12_rt_1471
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1727,
      O => U3_Mcount_q_cy_11_rt_1469
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1726,
      O => U3_Mcount_q_cy_10_rt_1467
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1741,
      O => U3_Mcount_q_cy_9_rt_1503
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1740,
      O => U3_Mcount_q_cy_8_rt_1501
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1739,
      O => U3_Mcount_q_cy_7_rt_1499
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1738,
      O => U3_Mcount_q_cy_6_rt_1497
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1737,
      O => U3_Mcount_q_cy_5_rt_1495
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1736,
      O => U3_Mcount_q_cy_4_rt_1493
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1735,
      O => U3_Mcount_q_cy_3_rt_1491
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1734,
      O => U3_Mcount_q_cy_2_rt_1489
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1725,
      O => U3_Mcount_q_cy_1_rt_1487
    );
  U3_Msub_CM2_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C2(1),
      O => U3_Msub_CM2_sub0000_cy_1_rt_1650
    );
  U3_Madd_CM1_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(8),
      O => U3_Madd_CM1_add0000_cy_8_rt_960
    );
  U3_Madd_CM1_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(7),
      O => U3_Madd_CM1_add0000_cy_7_rt_958
    );
  U3_Madd_CM1_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(6),
      O => U3_Madd_CM1_add0000_cy_6_rt_956
    );
  U3_Madd_CM1_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(5),
      O => U3_Madd_CM1_add0000_cy_5_rt_954
    );
  U3_Madd_CM1_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(2),
      O => U3_Madd_CM1_add0000_cy_2_rt_950
    );
  U3_Msub_tank1rom10s_sub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1693
    );
  U3_Msub_tank1rom10s_sub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1691
    );
  U3_Msub_tank1rom10s_sub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1689
    );
  U3_Msub_tank1rom10s_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1687
    );
  U3_Msub_tank1rom10s_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1685
    );
  U1_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q_171,
      O => U1_Mcount_q_xor_17_rt_600
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_649
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_678
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_2696
    );
  title_Msub_ypix_xor_6_111 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => title_Msub_ypix_lut_4_Q,
      I1 => title_ypix_addsub0000_6_Q,
      I2 => title_Msub_ypix_lut_5_Q,
      I3 => title_Msub_ypix_cy(3),
      O => title_Msub_ypix_xor_6_11_2597
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_2344
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_2315
    );
  U3_CM1_Madd_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(9),
      O => U3_CM1_Madd_add0000_xor_9_rt_832
    );
  U3_spriteonM2_addsub0000_9_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM2(9),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      I2 => U3_CM2(8),
      O => U3_spriteonM2_addsub0000_9_1_2144
    );
  U3_spriteonM1_addsub0000_9_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM1(9),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      I2 => U3_CM1(8),
      O => U3_spriteonM1_addsub0000_9_1_2102
    );
  U3_Madd_spriteonM2_addsub0003_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(9),
      O => U3_Madd_spriteonM2_addsub0003_xor_9_rt_1087
    );
  U3_Madd_spriteonM1_addsub0003_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(9),
      O => U3_Madd_spriteonM1_addsub0003_xor_9_rt_1032
    );
  U3_tank1rom10s_sub0001_10_112 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_111_2201
    );
  U3_tank1rom10s_sub0001_10_113 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_112_2202
    );
  U3_Madd_spriteonM2_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(9),
      O => U3_Madd_spriteonM2_addsub0002_xor_9_rt_1068
    );
  U3_Madd_spriteonM1_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(9),
      O => U3_Madd_spriteonM1_addsub0002_xor_9_rt_1013
    );
  U3_Mcount_q_xor_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_201,
      O => U3_Mcount_q_xor_20_rt_1505
    );
  U3_Madd_CM1_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(9),
      O => U3_Madd_CM1_add0000_xor_9_rt_965
    );
  M2a_28_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_3_2,
      I2 => M1a_3_1,
      O => M2a_28_Q
    );
  M2a_20_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_11_2,
      I2 => M1a_11_1,
      O => M2a_20_Q
    );
  M1_9_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_9_2,
      I2 => M1_9_1_85,
      O => M1_9_Q
    );
  M1_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_3_2_78,
      I2 => M1_3_1_77,
      O => M1_3_Q
    );
  M2_21_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_10_2,
      I2 => M1_10_1,
      O => M2_21_Q
    );
  U3_RMcnt_Maddsub_addsub0000_cy_3_11_SW0 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U3_RMcnt(2),
      I1 => U3_RMcnt(0),
      I2 => U3_RMcnt(1),
      I3 => U3_rise_2029,
      O => N185
    );
  U3_RMcnt2_Maddsub_addsub0000_cy_3_11_SW0 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U3_RMcnt2(2),
      I1 => U3_RMcnt2(0),
      I2 => U3_RMcnt2(1),
      I3 => U3_rise2_2030,
      O => N187
    );
  U3_RMht1_not00011114 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => sig_gameDown,
      I1 => sig_gameUp,
      I2 => U3_RMht1(4),
      I3 => N198,
      O => U3_RMht1_not00011114_1877
    );
  nes_Mcount_counter_reg_eqn_01 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(0),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_0
    );
  U2_Mcount_hcs_eqn_01 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_0_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_0
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N661,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  U3_RMcnt_and000144 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => U3_RM1_and0000,
      I1 => U3_rise_2029,
      I2 => N200,
      I3 => U3_Mhorz_cmp_ne0000,
      O => U3_RMcnt_and0001
    );
  U3_RMcnt2_and000144 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => U3_RM2_and0000,
      I1 => U3_rise2_2030,
      I2 => N202,
      I3 => U3_Mhorz_cmp_ne0001,
      O => U3_RMcnt2_and0001
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(9),
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => N206
    );
  nes_Mcount_counter_reg_eqn_11 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(1),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_1
    );
  U2_Mcount_hcs_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_1
    );
  nes_Mcount_counter_reg_eqn_21 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(2),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_2
    );
  U2_Mcount_hcs_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_2
    );
  nes_Mcount_counter_reg_eqn_31 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(3),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_3
    );
  U2_Mcount_hcs_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_3
    );
  U3_C1_not000152_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N210
    );
  nes_Mcount_counter_reg_eqn_41 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(4),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_4
    );
  U2_Mcount_hcs_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_4
    );
  nes_Mcount_counter_reg_eqn_51 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(5),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_5
    );
  U2_Mcount_hcs_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_5
    );
  nes_Mcount_counter_reg_eqn_61 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(6),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_6
    );
  U2_Mcount_hcs_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_714,
      O => U2_Mcount_hcs_eqn_6
    );
  nes_Mcount_counter_reg_eqn_71 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => nes_Result(7),
      I1 => nes_N11,
      I2 => nes_counter_reg(4),
      I3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_7
    );
  U2_Mcount_hcs_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_Result_7_1,
      I2 => U2_hcs_cmp_eq00005_714,
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
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_hcs_cmp_eq00005_714,
      I2 => U2_Result_8_1,
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
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_713,
      I1 => U2_hcs_cmp_eq00005_714,
      I2 => U2_Result_9_1,
      O => U2_Mcount_hcs_eqn_9
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => U3_C2(9),
      I1 => sig_gameRight,
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000150_780,
      O => U3_C2_not000164_782
    );
  U3_RMcnt_and000136_SW0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMcnt(3),
      I1 => U3_RMcnt(4),
      I2 => U3_RMcnt(5),
      O => N221
    );
  U3_RMcnt2_and000136_SW0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMcnt2(3),
      I1 => U3_RMcnt2(4),
      I2 => U3_RMcnt2(5),
      O => N223
    );
  U3_RMht2_not00011218_SW0 : LUT4
    generic map(
      INIT => X"1D55"
    )
    port map (
      I0 => U3_RMht2_not0001_bdd3,
      I1 => U3_RMht2(4),
      I2 => U3_RMht2_not0001183_1889,
      I3 => N225,
      O => N213
    );
  U3_RMht1_not0001164 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht1(5),
      I2 => sig_gameUp,
      I3 => N227,
      O => U3_RMht1_not0001164_1881
    );
  U3_Mhorz_cmp_ne0001115_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => U3_rise2_2030,
      O => N208
    );
  U3_RMht2_not00011218 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_RMht2(5),
      I2 => N229,
      I3 => N213,
      O => U3_RMht2_not0001
    );
  U3_RMht1_not00011131 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_6_OBUF_2293,
      I2 => ld_5_OBUF_2292,
      I3 => U3_RMht1(4),
      O => U3_RMht1_not00011131_1878
    );
  U3_RMht1_not00011168 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_6_OBUF_2293,
      I2 => ld_5_OBUF_2292,
      I3 => U3_RMht1(3),
      O => U3_RMht1_not00011168_1879
    );
  U3_RMht2_not0001127_SW0 : LUT4
    generic map(
      INIT => X"88C8"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_C2_not000186,
      I2 => sig_gameUp,
      I3 => U3_RMht2(4),
      O => N231
    );
  U3_C1_not000152_SW1 : MUXF5
    port map (
      I0 => N233,
      I1 => N234,
      S => U3_C1(2),
      O => N211
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
      O => N233
    );
  U3_C1_not000152_SW1_G : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N234
    );
  U3_Mhorz_not0001 : MUXF5
    port map (
      I0 => N235,
      I1 => N236,
      S => U3_C2_not000186,
      O => U3_Mhorz_not0001_1515
    );
  U3_Mhorz_not0001_F : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000165_1514,
      I1 => U3_Mhorz_cmp_ne000132_1513,
      I2 => U3_Mhorz_cmp_ne0001113_1512,
      I3 => N208,
      O => N235
    );
  U3_Mhorz_not0001_G : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000032_1509,
      I1 => U3_Mhorz_cmp_ne000065_1510,
      I2 => U3_Mhorz_cmp_ne0000113_1508,
      I3 => U3_rise_2029,
      O => N236
    );
  U3_spriteonM1_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_spriteonM1_cmp_le0000,
      I1 => U3_Mcompar_spriteonM1_cmp_gt0000_cy(9),
      I2 => U3_spriteonM1_cmp_ge0000,
      I3 => U3_Mcompar_spriteonM1_cmp_lt0000_cy(9),
      O => U3_spriteonM1
    );
  U3_spriteonM2_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_spriteonM2_cmp_le0000,
      I1 => U3_Mcompar_spriteonM2_cmp_gt0000_cy(9),
      I2 => U3_spriteonM2_cmp_ge0000,
      I3 => U3_Mcompar_spriteonM2_cmp_lt0000_cy(9),
      O => U3_spriteonM2
    );
  U3_B_mux0016100_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_B_mux001651_744,
      I1 => U3_B_mux001663_745,
      I2 => U3_B_mux001672_746,
      O => N237
    );
  U3_B_mux0016100 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_B_739,
      I1 => U3_B_mux001615_742,
      I2 => U3_B_mux00164_743,
      I3 => N237,
      O => U3_B_mux0016
    );
  U3_destroy2_mux001780 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_destroy2_1959,
      I1 => U3_destroy2_mux001766_1966,
      I2 => U3_spriteonM2,
      I3 => U3_destroy2_mux001727_1963,
      O => U3_destroy2_mux0017
    );
  U3_Result_5_2197_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(3),
      I3 => U3_RMht2(4),
      O => N239
    );
  U3_Result_5_1197_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(4),
      O => N241
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N255,
      O => U3_Mmux_M1a_mux0000_83_1569
    );
  title_spriteon_and0000250_SW0 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => title_spriteon_and0000124_2623,
      I1 => U3_tank1Angle1s_and000023,
      I2 => title_spriteon_and000052_2630,
      I3 => U2_vcs(9),
      O => N257
    );
  title_spriteon_and0000250 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => title_spriteon_and0000205_2627,
      I2 => N257,
      I3 => title_spriteon_and000019_2626,
      O => title_spriteon
    );
  M2a_6_38 : LUT4
    generic map(
      INIT => X"083B"
    )
    port map (
      I0 => M2_6_bdd0,
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => N261,
      O => M2a_6_Q
    );
  M1a_28_63 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_28_bdd1,
      I2 => rom1_addr(3),
      I3 => N263,
      O => M1a_28_Q
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_58_118,
      I2 => U3_rom_pix1(0),
      I3 => M1a_30_37_120,
      O => U3_Mmux_M1a_mux0000_6_1554
    );
  U3_Mmux_M2a_mux0000_6 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_29_10_229,
      I2 => U3_rom_pix2(0),
      I3 => M2a_30_22_232,
      O => U3_Mmux_M2a_mux0000_6_1614
    );
  U3_Mmux_M2a_mux0000_10 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => rom1_addr(3),
      I2 => M2a_1_65_220,
      I3 => M2a_1_37_219,
      O => U3_Mmux_M2a_mux0000_10_1607
    );
  U3_spriteonGrnd_and0000127 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      I2 => U3_spriteonGrnd_and000040_2089,
      I3 => N267,
      O => U3_spriteonGrnd
    );
  x7_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht1(1),
      I2 => sig_tank1_angle_calc(5),
      O => x7_Mmux_digit_31_2698
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht2(1),
      I2 => sig_tank2_angle_calc(5),
      O => x7_Mmux_digit_41_2700
    );
  title_Madd_rom_addr2_add0000_Madd_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => title_rom_addr2_addsub0001(9),
      I2 => U2_hcs(8),
      I3 => title_N27,
      O => title_Madd_rom_addr2_add0000_Madd_lut(9)
    );
  title_Madd_rom_addr2_add0000_Madd_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(8),
      I1 => U2_hcs(8),
      I2 => title_N27,
      O => title_Madd_rom_addr2_add0000_Madd_lut(8)
    );
  title_Madd_rom_addr2_add0000_Madd_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(6),
      I1 => U2_hcs(6),
      I2 => title_N01,
      O => title_Madd_rom_addr2_add0000_Madd_lut(6)
    );
  title_Madd_rom_addr2_add0000_Madd_lut_4_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(4),
      I1 => U2_hcs(4),
      I2 => U2_hcs(2),
      I3 => U2_hcs(3),
      O => title_Madd_rom_addr2_add0000_Madd_lut(4)
    );
  title_Madd_rom_addr2_add0000_Madd_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => title_ypix_addsub0000_0_Q,
      I1 => U2_hcs(3),
      I2 => U2_hcs(2),
      O => title_Madd_rom_addr2_add0000_Madd_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_Madd_spriteon1_addsub0001_cy_5_Q,
      I2 => U3_Madd_spriteon1_addsub0001_lut(7),
      I3 => U3_Madd_spriteon1_addsub0001_lut(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mmux_M2a_mux0000_83_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N75,
      O => N281
    );
  U3_Mmux_M2a_mux0000_83 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_12_28,
      I2 => M1a_19_13,
      I3 => N281,
      O => U3_Mmux_M2a_mux0000_83_1629
    );
  U3_Madd_tank1rom1s_lut_10_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_Madd_tank1rom10s_lut(10),
      I1 => U3_font2(5),
      I2 => U3_font2(4),
      O => U3_Madd_tank1rom1s_lut(10)
    );
  U3_Madd_tank1rom1s_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(9),
      I1 => U3_font2(5),
      I2 => U3_font2(4),
      O => U3_Madd_tank1rom1s_lut(9)
    );
  U3_Madd_tank1rom1s_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      I2 => U3_font2(4),
      O => U3_Madd_tank1rom1s_lut(8)
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_nes_clk31_2379,
      O => N283
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N283,
      O => ja3_OBUF_2278
    );
  x7_an_2_mux000131 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      I2 => x7_an_1_mux000126,
      O => an_2_OBUF_2232
    );
  x7_an_1_mux000148 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      I2 => x7_an_1_mux000126,
      I3 => x7_an_1_mux000134_2722,
      O => an_1_OBUF_2231
    );
  title_green_cmp_lt0000242_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => title_green_cmp_lt0000225_2602,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N285
    );
  title_green_cmp_lt0000242 : LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(8),
      I2 => U2_vcs(9),
      I3 => N285,
      O => title_green_cmp_lt0000
    );
  U3_spriteonB1_cmp_le0000130 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => N287,
      I2 => U2_hcs(5),
      I3 => U2_hcs(8),
      O => U3_spriteonB1_cmp_le00002
    );
  U3_spriteonGrnd_and000074 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U3_spriteonGrnd_and000072_2090,
      I2 => title_spriteon_and0000169_2624,
      I3 => U2_vcs(5),
      O => U3_spriteonGrnd_and000074_2091
    );
  U3_blue_and0001164_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N291
    );
  U3_tank1Angle10s_cmp_le0000130 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U3_spriteonB1_cmp_lt0000221_2063,
      I2 => U2_vcs(3),
      I3 => U3_tank1Angle10s_cmp_le000018_2185,
      O => U3_tank1Angle10s_cmp_le00002
    );
  U3_tank1Angle10s_and000062 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1Angle10s_cmp_le00002,
      I1 => U3_tank1Angle10s_and000025_2182,
      I2 => U3_tank1Angle10s_cmp_gt0000,
      I3 => U3_tank1Angle10s_and000055_2183,
      O => U3_tank1Angle10s
    );
  U3_blue_and00021 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2a_mux0000,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I2 => U3_spriteon2f_cmp_le0000,
      I3 => U3_N109,
      O => U3_blue_and0002
    );
  selector_blue_0_25 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => selector_blue_0_8_2435,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => U3_spriteonB2,
      I3 => U3_spriteonB1,
      O => selector_blue_0_25_2434
    );
  selector_red_2_4 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_N33,
      I1 => U3_N97,
      I2 => U3_N28,
      I3 => U3_spriteonB3,
      O => selector_red_2_4_2454
    );
  U3_blue_and00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon2_cmp_ge0000,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy(9),
      I2 => U3_M2_mux0000,
      I3 => U3_N109,
      O => U3_blue_and0001
    );
  selector_red_0_34 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonB2,
      I2 => N297,
      I3 => U3_N105,
      O => selector_red_0_34_2447
    );
  U3_destroy1_mux001562_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N35,
      I1 => U3_spriteonB5,
      I2 => U3_blue_and0002,
      I3 => U3_tank2HP_2_Q,
      O => N299
    );
  U3_tank2HP_mux0007_0_SW1 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_blue_and0001,
      I2 => U3_blue_and0000,
      I3 => U3_spriteonM1,
      O => N301
    );
  U3_tank2HP_mux0007_0_Q : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U3_tank2HP_2_Q,
      I1 => U3_B_and0000,
      I2 => sig_gameB,
      I3 => N301,
      O => U3_tank2HP_mux0007_0_Q_2208
    );
  U3_Mcount_C1_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(1),
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C2_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(1),
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C1_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(2),
      O => U3_Mcount_C1_lut(2)
    );
  U3_Mcount_C2_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(2),
      O => U3_Mcount_C2_lut(2)
    );
  U3_Mcount_C1_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(3),
      O => U3_Mcount_C1_lut(3)
    );
  U3_Mcount_C2_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(3),
      O => U3_Mcount_C2_lut(3)
    );
  U3_Mcount_C1_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(4),
      O => U3_Mcount_C1_lut(4)
    );
  U3_Mcount_C2_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(4),
      O => U3_Mcount_C2_lut(4)
    );
  U3_Mcount_C1_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(5),
      O => U3_Mcount_C1_lut(5)
    );
  U3_Mcount_C2_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2_5_1_771,
      O => U3_Mcount_C2_lut(5)
    );
  U3_Mcount_C1_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(6),
      O => U3_Mcount_C1_lut(6)
    );
  U3_Mcount_C2_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(6),
      O => U3_Mcount_C2_lut(6)
    );
  U3_Mcount_C1_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(7),
      O => U3_Mcount_C1_lut(7)
    );
  U3_Mcount_C2_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(7),
      O => U3_Mcount_C2_lut(7)
    );
  U3_Mcount_C1_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(8),
      O => U3_Mcount_C1_lut(8)
    );
  U3_Mcount_C2_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(8),
      O => U3_Mcount_C2_lut(8)
    );
  U3_Mcount_C1_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  U3_Mcount_C2_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_7_OBUF_2294,
      I2 => U3_C2(9),
      O => U3_Mcount_C2_lut(9)
    );
  U3_Mcount_C1_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_C1(0),
      I2 => ld_7_OBUF_2294,
      O => U3_Mcount_C1_lut(0)
    );
  U3_Mcount_C2_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_C2(0),
      I2 => ld_7_OBUF_2294,
      O => U3_Mcount_C2_lut(0)
    );
  U3_CM2_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_CM2_sub0000(0),
      I2 => ld_0_OBUF_2287,
      I3 => U3_C2(0),
      O => U3_CM2_Q_mux0000(0)
    );
  U3_CM1_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_CM1_add0000(0),
      I2 => ld_0_OBUF_2287,
      I3 => U3_CM1_add0000_0(0),
      O => U3_CM1_Q_mux0000(0)
    );
  U3_tank1HP_mux0005_0_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_tank1HP_2_Q,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => ld_1_OBUF_2288,
      O => N26
    );
  U3_tank2HP_mux0007_2_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U3_tank2HP_0_Q,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => ld_1_OBUF_2288,
      O => N28
    );
  U3_tank1HP_mux0005_2_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U3_tank1HP_0_Q,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => ld_1_OBUF_2288,
      O => N31
    );
  U3_destroy1_mux001527_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_spriteonGrnd,
      I2 => U3_destroy1_mux00154_1956,
      O => N303
    );
  U3_destroy1_mux001527 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_destroy1_1953,
      I2 => N303,
      I3 => ld_1_OBUF_2288,
      O => U3_destroy1_mux001527_1955
    );
  who_present_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => N651,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => ld_0_OBUF_2287,
      I3 => who_present_state_FSM_FFd1_2653,
      O => who_present_state_FSM_FFd1_In
    );
  U3_Result_1_21 : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => U3_RMht2(0),
      I3 => ld_6_OBUF_2293,
      O => U3_Result_1_2
    );
  U3_Result_1_11 : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => U3_RMht1(0),
      I3 => ld_6_OBUF_2293,
      O => U3_Result_1_1
    );
  M2_21_2 : LUT4
    generic map(
      INIT => X"0461"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M1_10_2
    );
  M1_14_21 : LUT4
    generic map(
      INIT => X"6FF7"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => M1_14_bdd1
    );
  M2a_20_2 : LUT4
    generic map(
      INIT => X"DB9A"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => M1a_11_2
    );
  M2_20_2 : LUT4
    generic map(
      INIT => X"1201"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => M2_20_2_157
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
      INIT => X"0600"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(5),
      I2 => U3_C2(7),
      I3 => U3_C2(6),
      O => U3_Madd_spriteon2_addsub0000_cy_7_Q
    );
  U3_Madd_spriteon1_addsub0001_cy_7_11 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(5),
      I2 => U3_C1(7),
      I3 => U3_C1(6),
      O => U3_Madd_spriteon1_addsub0001_cy_7_Q
    );
  M2a_26_11 : LUT4
    generic map(
      INIT => X"7F86"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M1a_23_41
    );
  M1_23_11 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      O => M1_23_bdd0
    );
  M2_9_11 : LUT4
    generic map(
      INIT => X"6C7C"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => M2_0_bdd13,
      O => M2_9_bdd0
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(2),
      O => M2_7_bdd0
    );
  M2_3_72 : LUT4
    generic map(
      INIT => X"22A8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => M2_3_48_176,
      I3 => sig_tank1rom10s(0),
      O => M2_3_72_177
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"6C7C"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => M1_21_bdd5,
      O => M1_22_bdd0
    );
  M1_24_11 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(2),
      O => M1_24_bdd0
    );
  M1_28_71 : LUT4
    generic map(
      INIT => X"22A8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => M1_27_13,
      I3 => sig_tank1rom10s(0),
      O => M1_28_71_56
    );
  M1_27_45_SW0 : LUT4
    generic map(
      INIT => X"1577"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => sig_tank1rom10s(0),
      I3 => M1_22_bdd9,
      O => N311
    );
  U3_Mmux_M1_mux0000_83_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_12_bdd0,
      I2 => N121,
      O => N313
    );
  U3_Mmux_M1_mux0000_83 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N313,
      I2 => M1_0_bdd2,
      I3 => N120,
      O => U3_Mmux_M1_mux0000_83_1539
    );
  M1_27_11 : LUT4
    generic map(
      INIT => X"72F3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => M1_27_bdd0
    );
  M1_23_21 : LUT4
    generic map(
      INIT => X"75EC"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_23_bdd6,
      I3 => sig_tank1rom10s(2),
      O => M1_23_bdd1
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"72F3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => M2_0_bdd6,
      O => M2_4_bdd0
    );
  M2_8_21 : LUT4
    generic map(
      INIT => X"57CE"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_3_bdd9,
      I3 => sig_tank1rom10s(2),
      O => M2_8_bdd1
    );
  M2a_10_22 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      O => M1a_21_22
    );
  M1_21_21 : LUT4
    generic map(
      INIT => X"FF06"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => rom1_addr(4),
      O => M1_21_2
    );
  M2_5_25 : LUT4
    generic map(
      INIT => X"66F6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(2),
      O => M2_5_25_187
    );
  M2_5_58 : LUT4
    generic map(
      INIT => X"CE73"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2_5_58_188
    );
  M1_26_25 : LUT4
    generic map(
      INIT => X"66F6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(2),
      O => M1_26_25_40
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"CE73"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M1_26_58_41
    );
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N323,
      O => U3_Mmux_M1a_mux0000_9_1573
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N325,
      O => U3_Mmux_M1a_mux0000_73_1562
    );
  U3_Mmux_M1a_mux0000_85_SW0 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_3_1,
      I2 => N131,
      O => N327
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N327,
      O => U3_Mmux_M1a_mux0000_85_1571
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N329,
      I1 => N66,
      I2 => N67,
      O => U3_Mmux_M2a_mux0000_8_1626
    );
  U3_Mmux_M1_mux0000_9_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => N102,
      I2 => N127,
      O => N331
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N331,
      O => U3_Mmux_M1_mux0000_9_1543
    );
  U3_rise2_and000011 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RM2_and0000
    );
  U3_CM2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_Mhorz_1506,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_CM2_and0000
    );
  x7_an_1_mux000134 : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_font2_mux0007_4_bdd2,
      I2 => U3_RMht2(5),
      O => x7_an_1_mux000134_2722
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
      I0 => U3_Madd_spriteon2f_add0004_cy(7),
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
  M1_13_SW0 : LUT4
    generic map(
      INIT => X"1E96"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => N120
    );
  selector_green_1_2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_present_state_FSM_FFd2_2655,
      O => selector_green_1_2_2439
    );
  U3_RMht2_not000171 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_5_OBUF_2292,
      I1 => ld_6_OBUF_2293,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      I3 => U3_C2_not000186,
      O => U3_RMht2_not0001_bdd3
    );
  U3_RMht2_not000131 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_C2_not000186,
      I1 => ld_5_OBUF_2292,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      I3 => ld_6_OBUF_2293,
      O => U3_RMht2_not0001_bdd1
    );
  M2a_1_37 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd16,
      I2 => M2_0_bdd9,
      I3 => sig_tank1rom10s(0),
      O => M2a_1_37_219
    );
  M2a_2_32 : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M2_2_bdd5,
      I3 => M2_0_bdd16,
      O => M2a_2_32_231
    );
  M1a_29_32 : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_29_bdd5,
      I3 => M1_22_bdd12,
      O => M1a_29_32_117
    );
  M1_31_62 : LUT4
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M1_27_bdd4,
      I2 => rom1_addr(3),
      I3 => sig_tank1rom10s(0),
      O => M1_31_62_75
    );
  M2_9_37_SW0 : LUT4
    generic map(
      INIT => X"1908"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_10_bdd14,
      I3 => M2_0_bdd16,
      O => N341
    );
  M1_23_22 : LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd4,
      I3 => M1_22_bdd7,
      O => M1_23_22_28
    );
  M2_1_21 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd16,
      O => M2_1_2
    );
  M2_1_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M1_30_91
    );
  M2a_5_131_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2a_5_33_238,
      I2 => rom1_addr(3),
      I3 => M2a_5_55_239,
      O => N347
    );
  M1_29_69 : LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd12,
      I3 => M1_29_bdd5,
      O => M1_29_69_62
    );
  M1_29_77 : LUT4
    generic map(
      INIT => X"3212"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(3),
      I2 => sig_tank1rom10s(0),
      I3 => M1_21_bdd8,
      O => M1_29_77_63
    );
  M2_3_2 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M1_28_2
    );
  M1a_30_37 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M1_22_bdd12,
      I2 => M1_22_bdd7,
      I3 => sig_tank1rom10s(0),
      O => M1a_30_37_120
    );
  M2_0_711 : LUT4
    generic map(
      INIT => X"3F1F"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd1,
      I2 => rom1_addr(3),
      I3 => sig_tank1rom10s(0),
      O => M2_0_71
    );
  M1_22_37_SW0 : LUT4
    generic map(
      INIT => X"1908"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_21_bdd8,
      I3 => M1_22_bdd12,
      O => N351
    );
  M2_8_22 : LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M2_3_bdd6,
      I3 => M2_0_bdd9,
      O => M2_8_22_197
    );
  M1_30_2 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_22_bdd12,
      O => M1_25_2
    );
  M2_2_69 : LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd16,
      I3 => M2_2_bdd5,
      O => M2_2_69_166
    );
  M2_2_77 : LUT4
    generic map(
      INIT => X"3212"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(3),
      I2 => sig_tank1rom10s(0),
      I3 => M2_10_bdd14,
      O => M2_2_77_167
    );
  M1a_26_131_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_26_33_110,
      I2 => rom1_addr(3),
      I3 => M1a_26_55_111,
      O => N367
    );
  x7_Mmux_digit_4 : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht2(4),
      I2 => U3_font2_mux0007_4_bdd2,
      I3 => U3_RMht2(0),
      O => x7_Mmux_digit_4_2699
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(11),
      I1 => title_N7,
      I2 => title_ypix_addsub0000_8_Q,
      I3 => title_Msub_ypix_lut_7_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(10)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(10),
      I1 => title_Msub_ypix_lut_7_Q,
      I2 => title_N7,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(9)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(8),
      I1 => title_Msub_ypix_cy(3),
      I2 => title_Msub_ypix_lut_5_Q,
      I3 => title_Msub_ypix_lut_4_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(7)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => title_ypix_addsub0000_2_Q,
      I1 => title_Msub_ypix_cy(3),
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(5)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_11_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => title_ypix_9_Q,
      I1 => title_Msub_ypix_lut_4_Q,
      I2 => title_Msub_ypix_lut_5_Q,
      I3 => title_Msub_ypix_cy(3),
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(11)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => title_Msub_ypix_lut_4_Q,
      I1 => title_Msub_ypix_cy(3),
      I2 => title_ypix_8_Q,
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(10)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => title_Msub_ypix_lut_7_Q,
      I1 => title_N7,
      I2 => title_Msub_ypix_cy(3),
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(9)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_7_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => title_ypix_addsub0000_1_Q,
      I1 => title_Msub_ypix_cy(3),
      I2 => title_Msub_ypix_lut_5_Q,
      I3 => title_Msub_ypix_lut_4_Q,
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(7)
    );
  title_Madd_rom_addr2_addsub0000_Madd_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => title_ypix_addsub0000_0_Q,
      I1 => title_Msub_ypix_lut_4_Q,
      I2 => title_Msub_ypix_cy(3),
      O => title_Madd_rom_addr2_addsub0000_Madd_lut(6)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U3_CM2(9),
      I1 => U2_hcs(9),
      I2 => U3_CM2(8),
      I3 => U3_spriteonM2_addsub0000_8_bdd0,
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_CM2(8),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      I2 => U2_hcs(8),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_CM2(6),
      I1 => U3_CM2(4),
      I2 => U2_hcs(6),
      I3 => U3_CM2(5),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(4),
      I2 => U2_hcs(5),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(5)
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM2(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteonM2_cmp_gt0000_lut(4)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9969"
    )
    port map (
      I0 => U3_CM1(9),
      I1 => U2_hcs(9),
      I2 => U3_CM1(8),
      I3 => U3_spriteonM1_addsub0000_8_bdd0,
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_CM1(8),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      I2 => U2_hcs(8),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_CM1(6),
      I1 => U3_CM1(4),
      I2 => U2_hcs(6),
      I3 => U3_CM1(5),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(4),
      I2 => U2_hcs(5),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(5)
    );
  U3_Mcompar_spriteonM1_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM1(4),
      I1 => U2_hcs(4),
      O => U3_Mcompar_spriteonM1_cmp_gt0000_lut(4)
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
  U3_Madd_tank1rom1s_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(6),
      I1 => U3_font2(2),
      I2 => U3_Msub_ypix1_Madd_lut(5),
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_Madd_tank1rom1s_lut(6)
    );
  U3_Madd_tank1rom1s_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_Msub_ypix1_Madd_lut(5),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => U3_font2(1),
      O => U3_Madd_tank1rom1s_lut(5)
    );
  U3_Madd_tank1rom1s_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => U3_font2(0),
      O => U3_Madd_tank1rom1s_lut(4)
    );
  U3_Madd_tank1rom10s_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(6),
      I1 => U3_font1(2),
      I2 => U3_Msub_ypix1_Madd_lut(5),
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_Madd_tank1rom10s_lut(6)
    );
  U3_Madd_tank1rom10s_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_Msub_ypix1_Madd_lut(5),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => U3_font1(1),
      O => U3_Madd_tank1rom10s_lut(5)
    );
  U3_Madd_tank1rom10s_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => U3_font1(0),
      O => U3_Madd_tank1rom10s_lut(4)
    );
  U3_Msub_rom_pix2_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C2(4),
      O => U3_Msub_rom_pix2_Madd_lut(4)
    );
  U3_Msub_rom_pix1_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C1(4),
      O => U3_Msub_rom_pix1_Madd_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_C2(8),
      I2 => U3_C2(9),
      I3 => U3_Madd_spriteon2f_add0004_cy(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C2(8),
      I2 => U3_Madd_spriteon2f_add0004_cy(7),
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
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(8),
      I2 => U2_hcs(9),
      I3 => U3_Madd_spriteon2f_add0004_cy(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0004_cy(7),
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
  buttons_gameRight1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => bounce_delay3(4),
      I2 => bounce_delay2(4),
      I3 => bounce_delay1(4),
      O => sig_gameRight
    );
  U3_rise_and000011 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => who_present_state_FSM_FFd2_2655,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RM1_and0000
    );
  U3_font2_5_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_5_and0000_bdd0,
      O => U3_font2_5_and0001
    );
  U3_font2_5_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_5_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_5_and0000
    );
  U3_font2_4_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_4_and0000_bdd0,
      O => U3_font2_4_and0001
    );
  U3_font2_4_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_4_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_4_and0000
    );
  U3_font2_3_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_3_and0000_bdd0,
      O => U3_font2_3_and0001
    );
  U3_font2_3_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_3_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_3_and0000
    );
  U3_font2_2_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_2_and0000_bdd0,
      O => U3_font2_2_and0001
    );
  U3_font2_2_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_2_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_2_and0000
    );
  U3_font2_1_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_1_and0000_bdd0,
      O => U3_font2_1_and0001
    );
  U3_font2_1_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_1_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_1_and0000
    );
  U3_font2_0_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font2_0_and0000_bdd0,
      O => U3_font2_0_and0001
    );
  U3_font2_0_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font2_0_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font2_0_and0000
    );
  U3_font1_1_and000111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font1_1_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font1_1_and0001
    );
  U3_font1_1_and000011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font1_1_and0000_bdd0,
      O => U3_font1_1_and0000
    );
  U3_font1_0_and000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font1_0_and0000_bdd0,
      O => U3_font1_0_and0001
    );
  U3_font1_0_and000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_font1_0_and0000_bdd0,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_font1_0_and0000
    );
  U3_CM2_9_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(9),
      O => U3_CM2_9_and0001
    );
  U3_CM2_9_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(9),
      O => U3_CM2_9_and0000
    );
  U3_CM2_8_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(8),
      O => U3_CM2_8_and0001
    );
  U3_CM2_8_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(8),
      O => U3_CM2_8_and0000
    );
  U3_CM2_7_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(7),
      O => U3_CM2_7_and0001
    );
  U3_CM2_7_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(7),
      O => U3_CM2_7_and0000
    );
  U3_CM2_6_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(6),
      O => U3_CM2_6_and0001
    );
  U3_CM2_6_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(6),
      O => U3_CM2_6_and0000
    );
  U3_CM2_5_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(5),
      O => U3_CM2_5_and0001
    );
  U3_CM2_5_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(5),
      O => U3_CM2_5_and0000
    );
  U3_CM2_4_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(4),
      O => U3_CM2_4_and0001
    );
  U3_CM2_4_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(4),
      O => U3_CM2_4_and0000
    );
  U3_CM2_3_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(3),
      O => U3_CM2_3_and0001
    );
  U3_CM2_3_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(3),
      O => U3_CM2_3_and0000
    );
  U3_CM2_2_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(2),
      O => U3_CM2_2_and0001
    );
  U3_CM2_2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(2),
      O => U3_CM2_2_and0000
    );
  U3_CM2_1_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(1),
      O => U3_CM2_1_and0001
    );
  U3_CM2_1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM2_sub0000_1(1),
      O => U3_CM2_1_and0000
    );
  U3_CM2_0_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2(0),
      O => U3_CM2_0_and0001
    );
  U3_CM2_0_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2(0),
      O => U3_CM2_0_and0000
    );
  U3_CM1_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_Mhorz_1506,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_CM1_and0000
    );
  U3_CM1_9_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(9),
      O => U3_CM1_9_and0001
    );
  U3_CM1_9_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(9),
      O => U3_CM1_9_and0000
    );
  U3_CM1_8_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(8),
      O => U3_CM1_8_and0001
    );
  U3_CM1_8_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(8),
      O => U3_CM1_8_and0000
    );
  U3_CM1_7_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(7),
      O => U3_CM1_7_and0001
    );
  U3_CM1_7_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(7),
      O => U3_CM1_7_and0000
    );
  U3_CM1_6_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(6),
      O => U3_CM1_6_and0001
    );
  U3_CM1_6_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(6),
      O => U3_CM1_6_and0000
    );
  U3_CM1_5_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(5),
      O => U3_CM1_5_and0001
    );
  U3_CM1_5_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(5),
      O => U3_CM1_5_and0000
    );
  U3_CM1_4_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(4),
      O => U3_CM1_4_and0001
    );
  U3_CM1_4_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(4),
      O => U3_CM1_4_and0000
    );
  U3_CM1_3_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(3),
      O => U3_CM1_3_and0001
    );
  U3_CM1_3_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(3),
      O => U3_CM1_3_and0000
    );
  U3_CM1_2_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(2),
      O => U3_CM1_2_and0001
    );
  U3_CM1_2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(2),
      O => U3_CM1_2_and0000
    );
  U3_CM1_1_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(1),
      O => U3_CM1_1_and0001
    );
  U3_CM1_1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(1),
      O => U3_CM1_1_and0000
    );
  U3_CM1_0_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(0),
      O => U3_CM1_0_and0001
    );
  U3_CM1_0_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_CM1_add0000_0(0),
      O => U3_CM1_0_and0000
    );
  U3_font2_mux0007_5_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(1),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(3),
      O => N01
    );
  U3_font2_mux0007_4_1_SW0 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(3),
      I3 => U3_RMht2(1),
      O => N2
    );
  U3_font1_mux0007_6_1_SW1 : LUT4
    generic map(
      INIT => X"91FF"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(5),
      O => N369
    );
  U3_font1_mux0007_6_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_font1_1_and0000_bdd0,
      I3 => N369,
      O => U3_font1_mux0007(6)
    );
  U3_font1_mux0007_5_1_SW2 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(5),
      I2 => U3_RMht2(4),
      O => N371
    );
  U3_font1_mux0007_5_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2655,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => N18,
      I3 => N371,
      O => U3_font1_mux0007(5)
    );
  U3_font2_mux0007_1_1114 : LUT4
    generic map(
      INIT => X"BF04"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => U3_font2_1_and0000_bdd0,
      I3 => U3_font2_mux0007_1_180,
      O => U3_font2_mux0007(1)
    );
  U3_font2_mux0007_3_1130 : LUT4
    generic map(
      INIT => X"BF04"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => U3_font2_3_and0000_bdd0,
      I3 => U3_font2_mux0007_3_197_2018,
      O => U3_font2_mux0007(3)
    );
  U3_font2_mux0007_2_5128 : LUT4
    generic map(
      INIT => X"BF04"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => U3_font2_2_and0000_bdd0,
      I3 => U3_font2_mux0007_2_596_2016,
      O => U3_font2_mux0007(2)
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_2372,
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg_cmp_eq0000112_2371,
      I3 => nes_counter_reg(2),
      O => ja2_OBUF_2276
    );
  U3_B_mux001615_SW0 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_tank1Angle10s,
      I2 => U3_tank1Angle1s,
      I3 => U3_spriteonB5,
      O => N373
    );
  U3_B_mux001615 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => U3_blue_and0001,
      I2 => U3_blue_and0002,
      I3 => N373,
      O => U3_B_mux001615_742
    );
  U3_spriteonB2_and000040 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB1_cmp_le00002,
      I2 => N375,
      I3 => U3_N57,
      O => U3_spriteonB2
    );
  U3_spriteonB3_and00002 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(8),
      I2 => U2_vcs(5),
      I3 => U3_spriteonB1_and000032,
      O => U3_spriteonB3_and00002_2068
    );
  U3_spriteonB3_and000015_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => N377
    );
  U3_spriteonB3_and000015 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(4),
      I2 => U2_vcs(6),
      I3 => N377,
      O => U3_spriteonB3_and000015_2067
    );
  U3_spriteonB3_and000045 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => U3_spriteonB3_cmp_le0000112_2070,
      I1 => U3_N57,
      I2 => U2_hcs(9),
      I3 => U3_spriteonB3_cmp_le0000128_2071,
      O => U3_spriteonB3_and000045_2069
    );
  U3_spriteonGrnd_and000040 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      I2 => U2_vidon_and00006_734,
      O => U3_spriteonGrnd_and000040_2089
    );
  U3_spriteonGrnd_and000096_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      O => N381
    );
  U3_spriteonGrnd_and000096 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => N381,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U3_spriteonGrnd_and000096_2092
    );
  U3_spriteonB5_and000027_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(3),
      I2 => U2_hcs(1),
      O => N383
    );
  U3_spriteonB5_and000027 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => U2_hcs(5),
      I3 => N383,
      O => U3_spriteonB5_and000027_2084
    );
  M2_31_1 : LUT4
    generic map(
      INIT => X"666E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => M1_0_bdd2,
      O => M1_0_Q
    );
  U3_green_1_1_SW0 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => U3_tank1Angle10s,
      I1 => U3_B_739,
      I2 => U3_blue_and0003,
      I3 => U3_tank1Angle1s,
      O => N100
    );
  U3_green_2_15_SW0 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => U3_N20,
      I1 => U3_B_739,
      I2 => U3_spriteonM1,
      I3 => U3_destroy1_1953,
      O => N163
    );
  M1_29_31 : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(1),
      O => M1_29_bdd5
    );
  M1_27_21 : LUT4
    generic map(
      INIT => X"4111"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M1_27_bdd4
    );
  M1_21_47 : LUT4
    generic map(
      INIT => X"32FA"
    )
    port map (
      I0 => M1_21_27_17,
      I1 => rom1_addr(4),
      I2 => M1_21_2,
      I3 => M1_12_bdd0,
      O => M1_21_Q
    );
  M1_31_75 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_31_62_75,
      I2 => rom1_addr(4),
      I3 => M1_31_25,
      O => M1_31_Q
    );
  M2_2_31 : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(1),
      O => M2_2_bdd5
    );
  M2_0_21 : LUT4
    generic map(
      INIT => X"FF6C"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => M2_0_bdd6,
      O => M2_0_bdd1
    );
  M2_10_47 : LUT4
    generic map(
      INIT => X"32FA"
    )
    port map (
      I0 => M2_10_27_140,
      I1 => rom1_addr(4),
      I2 => M1_21_2,
      I3 => M1_12_bdd0,
      O => M2_10_Q
    );
  M2_0_86 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_0_71,
      I2 => rom1_addr(4),
      I3 => M2_0_25,
      O => M2_0_Q
    );
  selector_blue_0_51_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => sig_MTitle(0),
      I2 => title_spriteon,
      I3 => vidon,
      O => N389
    );
  selector_blue_0_51 : LUT4
    generic map(
      INIT => X"55D5"
    )
    port map (
      I0 => N389,
      I1 => selector_blue_0_25_2434,
      I2 => U3_N33,
      I3 => U3_spriteonGrnd,
      O => blue_0_OBUF_2236
    );
  selector_green_0_42 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U2_vidon_and000039_733,
      I1 => U2_vidon_and0000117_728,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      O => selector_green_0_42_2438
    );
  selector_green_0_51_SW0 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_42_2438,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(2),
      O => N391
    );
  selector_green_0_51 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => selector_green_0_16_2437,
      I1 => U3_N33,
      I2 => U3_spriteonGrnd,
      I3 => N391,
      O => green_0_OBUF_2268
    );
  selector_green_2_86_SW0 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => selector_green_2_17_2445,
      I1 => U3_N33,
      I2 => U3_N100,
      I3 => U3_tank2HP_2_Q,
      O => N393
    );
  selector_green_2_86 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => U3_N29,
      I2 => N393,
      I3 => selector_green_2_81_2446,
      O => green_2_OBUF_2270
    );
  U3_red_0_31 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_vidon_and0000117_728,
      I1 => U3_blue_and0002,
      I2 => U2_vidon_and000039_733,
      I3 => U3_N30,
      O => U3_N33
    );
  U3_blue_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      I2 => U3_M1a_mux0000,
      I3 => U3_N109,
      O => U3_blue_and0000
    );
  U3_B_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      I2 => U3_M1_mux0000,
      I3 => U3_N109,
      O => U3_B_and0000
    );
  selector_red_1_2 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB4,
      I2 => U3_spriteonB2,
      I3 => U3_spriteonB1,
      O => selector_red_1_2_2451
    );
  U3_Madd_tank1rom10s_lut_8_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank1rom10s_lut(8)
    );
  U3_Madd_tank1rom10s_lut_9_1 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(9),
      I1 => U3_tank1rom10s_sub0000(8),
      I2 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank1rom10s_lut(9)
    );
  M2a_3_63 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_28_bdd1,
      I2 => rom1_addr(3),
      I3 => N397,
      O => M2a_3_Q
    );
  M1a_23_18_SW0 : LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => M1a_22_bdd0,
      I3 => M1_21_bdd5,
      O => N399
    );
  M1_27_129 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_27_105_44,
      I2 => N311,
      I3 => rom1_addr(3),
      O => M1_27_129_45
    );
  title_Madd_rom_addr2_add0000_Madd_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(7),
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      I3 => title_N01,
      O => title_Madd_rom_addr2_add0000_Madd_lut(7)
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
  U3_RMcnt_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"B313"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_RMcnt(0),
      I2 => sig_gameA,
      I3 => U3_RMht1(0),
      O => U3_RMcnt_Q_mux0000(0)
    );
  U3_RMcnt2_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"B313"
    )
    port map (
      I0 => U3_C2_not000186,
      I1 => U3_RMcnt2(0),
      I2 => sig_gameA,
      I3 => U3_RMht2(0),
      O => U3_RMcnt2_Q_mux0000(0)
    );
  U3_RMcnt_Q_mux0000_3_1_SW0 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => U3_RMcnt(2),
      I1 => U3_RMcnt(1),
      I2 => U3_RMcnt(0),
      I3 => U3_rise_2029,
      O => N405
    );
  U3_RMcnt_Q_mux0000_3_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => U3_RMcnt_and0000,
      I1 => N405,
      I2 => U3_RMcnt(3),
      I3 => U3_RMht1(3),
      O => U3_RMcnt_Q_mux0000(3)
    );
  U3_RMcnt2_Q_mux0000_3_1_SW0 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => U3_RMcnt2(2),
      I1 => U3_RMcnt2(1),
      I2 => U3_RMcnt2(0),
      I3 => U3_rise2_2030,
      O => N407
    );
  U3_RMcnt2_Q_mux0000_3_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => U3_RMcnt2_and0000,
      I1 => N407,
      I2 => U3_RMcnt2(3),
      I3 => U3_RMht2(3),
      O => U3_RMcnt2_Q_mux0000(3)
    );
  M2a_24_11 : LUT4
    generic map(
      INIT => X"FE6C"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M1a_4_bdd0
    );
  M2a_13_SW0 : LUT4
    generic map(
      INIT => X"87BD"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N75
    );
  M1_3_1 : LUT4
    generic map(
      INIT => X"9381"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => M1_3_1_77
    );
  M1a_12_21 : LUT4
    generic map(
      INIT => X"A404"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M1a_12_bdd1
    );
  U3_Mhorz_or00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => screenstate_present_state_FSM_FFd1_2431,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_Mhorz_or0000
    );
  M1_23_30 : LUT4
    generic map(
      INIT => X"6070"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => M1_22_bdd12,
      O => M1_23_30_29
    );
  M2_8_30 : LUT4
    generic map(
      INIT => X"6070"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => M2_0_bdd16,
      O => M2_8_30_198
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N417,
      O => U3_Mmux_M2a_mux0000_9_1633
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
  M2a_4_152_SW0_SW0 : LUT4
    generic map(
      INIT => X"6071"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2a_4_52_236,
      I3 => M2_3_bdd6,
      O => N421
    );
  M1a_27_152_SW0_SW0 : LUT4
    generic map(
      INIT => X"6071"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1a_27_52_113,
      I3 => M1_22_bdd4,
      O => N423
    );
  M2a_6_11 : LUT4
    generic map(
      INIT => X"28F0"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2a_6_bdd0
    );
  M1a_22_11 : LUT4
    generic map(
      INIT => X"28F0"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M1a_22_bdd0
    );
  M2_3_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      O => M1_28_bdd1
    );
  M2_9_27 : LUT4
    generic map(
      INIT => X"AA75"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2_9_27_201
    );
  M1_22_27 : LUT4
    generic map(
      INIT => X"AA75"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M1_22_27_21
    );
  M2a_5_55 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd16,
      O => M2a_5_55_239
    );
  M1a_26_55 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M1_22_bdd9,
      I3 => M1_22_bdd12,
      O => M1a_26_55_111
    );
  selector_blue_0_8 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB4,
      I2 => U3_N24,
      I3 => who_present_state_FSM_FFd1_2653,
      O => selector_blue_0_8_2435
    );
  M1a_24_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => M1a_24_bdd1
    );
  selector_green_0_16_SW0 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_N24,
      I3 => U3_spriteonB4,
      O => N433
    );
  selector_green_0_16 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => N433,
      I1 => U3_spriteonB1,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      I3 => U3_spriteonB2,
      O => selector_green_0_16_2437
    );
  x7_an_2_mux000126_SW1 : LUT4
    generic map(
      INIT => X"F7EF"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(5),
      I3 => U3_font2_2_and0000_bdd2,
      O => N435
    );
  x7_an_2_mux000126 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(0),
      I2 => U3_RMht1(1),
      I3 => N435,
      O => x7_an_1_mux000126
    );
  selector_blue_1_14_SW1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => who_present_state_FSM_FFd1_2653,
      I2 => U3_N0,
      I3 => U3_spriteonB2,
      O => N437
    );
  selector_blue_1_14 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_N33,
      I2 => U3_spriteonGrnd,
      I3 => N437,
      O => selector_blue_1_14_2436
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
      I0 => screenstate_present_state_FSM_FFd1_2431,
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
      I0 => screenstate_present_state_FSM_FFd1_2431,
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
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => bounce_delay3(6),
      I2 => bounce_delay2(6),
      I3 => bounce_delay1(6),
      O => sig_gameDown
    );
  buttons_gameB1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => bounce_delay3(1),
      I2 => bounce_delay2(1),
      I3 => bounce_delay1(1),
      O => sig_gameB
    );
  U3_tank1_angle_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(1),
      O => sig_tank1_angle_calc(4)
    );
  U3_spriteonB3_cmp_ge0000111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(7),
      I2 => U2_vcs(6),
      O => U3_N32
    );
  U3_green_2_111 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U3_tank1Angle10s,
      I1 => U3_tank1Angle1s_and00009,
      I2 => U3_tank1Angle10s_cmp_le00002,
      I3 => U3_tank1Angle1s_and000033_2189,
      O => U3_N20
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
      I1 => U3_Madd_spriteon2f_add0004_cy(7),
      I2 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      O => U3_spriteon2_addsub0000(8)
    );
  U3_green_0_11_SW1 : LUT4
    generic map(
      INIT => X"0F01"
    )
    port map (
      I0 => U3_tank1Angle1s,
      I1 => U3_tank1Angle10s,
      I2 => U3_blue_and0004,
      I3 => U3_B_739,
      O => N439
    );
  U3_green_0_11 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_destroy1_1953,
      I2 => N439,
      I3 => U3_spriteonB5,
      O => U3_N24
    );
  M2_3_33 : LUT4
    generic map(
      INIT => X"6CFF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => M2_3_bdd6
    );
  M2_1_27 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      I3 => rom1_addr(2),
      O => M2_1_bdd1
    );
  M1_22_42 : LUT4
    generic map(
      INIT => X"FF95"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M1_22_bdd9,
      O => M1_22_bdd7
    );
  M2_0_510 : LUT4
    generic map(
      INIT => X"FF95"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd6,
      O => M2_0_bdd9
    );
  M1_22_210 : LUT4
    generic map(
      INIT => X"6CFF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M1_21_bdd5,
      O => M1_22_bdd4
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
  U3_Mcompar_spriteon2_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_C2(8),
      I2 => U3_Madd_spriteon2f_add0004_cy(7),
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
      I1 => U3_Madd_spriteon2f_add0004_cy(7),
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
  U3_RMcnt_5_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(5),
      O => U3_RMcnt_5_and0001
    );
  U3_RMcnt_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(5),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_5_and0000
    );
  U3_RMcnt_4_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(4),
      O => U3_RMcnt_4_and0001
    );
  U3_RMcnt_4_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(4),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_4_and0000
    );
  U3_RMcnt_3_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(3),
      O => U3_RMcnt_3_and0001
    );
  U3_RMcnt_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(3),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_3_and0000
    );
  U3_RMcnt_2_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(2),
      O => U3_RMcnt_2_and0001
    );
  U3_RMcnt_2_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(2),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_2_and0000
    );
  U3_RMcnt_1_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(1),
      O => U3_RMcnt_1_and0001
    );
  U3_RMcnt_1_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(1),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_1_and0000
    );
  U3_RMcnt_0_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => sig_tank2,
      I3 => U3_RMht1(0),
      O => U3_RMcnt_0_and0001
    );
  U3_RMcnt_0_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht1(0),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt_0_and0000
    );
  U3_RMcnt2_5_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(5),
      O => U3_RMcnt2_5_and0001
    );
  U3_RMcnt2_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(5),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_5_and0000
    );
  U3_RMcnt2_4_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(4),
      O => U3_RMcnt2_4_and0001
    );
  U3_RMcnt2_4_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(4),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_4_and0000
    );
  U3_RMcnt2_3_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(3),
      O => U3_RMcnt2_3_and0001
    );
  U3_RMcnt2_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(3),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_3_and0000
    );
  U3_RMcnt2_2_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(2),
      O => U3_RMcnt2_2_and0001
    );
  U3_RMcnt2_2_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(2),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_2_and0000
    );
  U3_RMcnt2_1_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(1),
      O => U3_RMcnt2_1_and0001
    );
  U3_RMcnt2_1_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(1),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_1_and0000
    );
  U3_RMcnt2_0_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => ld_0_OBUF_2287,
      I2 => U3_C2_not000186,
      I3 => U3_RMht2(0),
      O => U3_RMcnt2_0_and0001
    );
  U3_RMcnt2_0_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2287,
      I1 => U3_RMht2(0),
      I2 => U3_C2_not000186,
      I3 => screenstate_present_state_FSM_FFd1_2431,
      O => U3_RMcnt2_0_and0000
    );
  U3_blue_and0001192_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(6),
      I2 => U2_vcs(7),
      I3 => U2_vcs(8),
      O => N443
    );
  U3_blue_and0001192 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => N289,
      I2 => N443,
      I3 => N291,
      O => U3_N109
    );
  M1_24_105_SW0_SW0 : LUT4
    generic map(
      INIT => X"6108"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(2),
      O => N445
    );
  M1_13_SW1 : LUT4
    generic map(
      INIT => X"1F84"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N121
    );
  M2a_28_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => M1a_3_2
    );
  M2_7_105_SW0_SW0 : LUT4
    generic map(
      INIT => X"6108"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(2),
      O => N447
    );
  M2a_28_1 : LUT4
    generic map(
      INIT => X"3D84"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M1a_3_1
    );
  M1_9_3 : LUT4
    generic map(
      INIT => X"0862"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M1_9_2
    );
  M1_3_2 : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M1_3_2_78
    );
  M2a_13_11 : LUT4
    generic map(
      INIT => X"C242"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M1a_14_bdd0
    );
  M1_9_1 : LUT4
    generic map(
      INIT => X"C783"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M1_9_1_85
    );
  M2a_10_47_SW0_SW0 : LUT4
    generic map(
      INIT => X"EC77"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(3),
      O => N453
    );
  M1a_21_47_SW0_SW0 : LUT4
    generic map(
      INIT => X"EC77"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(3),
      O => N455
    );
  M2_23_11 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      O => M1_3_bdd3
    );
  M1_25_21 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(2),
      O => M1_25_bdd1
    );
  M2_6_11 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(2),
      O => M2_6_bdd0
    );
  U3_spriteonGrnd_and0000127_SW0_SW0 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonGrnd_and000096_2092,
      I2 => title_spriteon_and00006_2631,
      I3 => U2_vcs(4),
      O => N457
    );
  U3_spriteonGrnd_and0000127_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U3_spriteonGrnd_and000074_2091,
      I3 => N457,
      O => N267
    );
  M1_21_27_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      O => N459
    );
  M1_21_27 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => N459,
      O => M1_21_27_17
    );
  M2_10_27 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => N459,
      O => M2_10_27_140
    );
  M2_10_31 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      O => M1_0_bdd2
    );
  buttons_gameA1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2431,
      I1 => bounce_delay3(0),
      I2 => bounce_delay2(0),
      I3 => bounce_delay1(0),
      O => sig_gameA
    );
  U3_RMcnt_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_gameA,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_RMcnt_and0000
    );
  U3_RMcnt2_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sig_gameA,
      I1 => who_present_state_FSM_FFd2_2655,
      I2 => who_present_state_FSM_FFd1_2653,
      O => U3_RMcnt2_and0000
    );
  M2_10_81 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M2_10_bdd14
    );
  M1_21_52 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M1_21_bdd8
    );
  M1a_4_SW0 : LUT4
    generic map(
      INIT => X"96B3"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N131
    );
  M2a_19_SW0 : LUT4
    generic map(
      INIT => X"5FBB"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M2a_18_2
    );
  M2a_30_22 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2a_30_22_232
    );
  M2_13_31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      O => M2_13_bdd4
    );
  U3_Mmux_M2a_mux0000_8_SW0 : LUT4
    generic map(
      INIT => X"0210"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => U3_rom_pix2(0),
      O => N329
    );
  M2a_18_1 : LUT4
    generic map(
      INIT => X"2920"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2a_18_1_215
    );
  M2a_20_1 : LUT4
    generic map(
      INIT => X"3B06"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M1a_11_1
    );
  M2_15_SW0 : LUT4
    generic map(
      INIT => X"58FC"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => N102
    );
  M2_10_11 : LUT4
    generic map(
      INIT => X"37A6"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M1_12_bdd0
    );
  M2_14_SW0 : LUT4
    generic map(
      INIT => X"39FA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => N127
    );
  M2_21_1 : LUT4
    generic map(
      INIT => X"A82B"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M1_10_1
    );
  M2_20_1 : LUT4
    generic map(
      INIT => X"E061"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => M2_20_1_156
    );
  U3_RMht1_2_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_2_1,
      Q => U3_RMht1_2_1_1872
    );
  U3_C2_5_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_5_4,
      Q => U3_C2_5_1_771
    );
  U3_RMht1_1_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_1_1,
      Q => U3_RMht1_1_1_1870
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_2296
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  U3_q_20_BUFG : BUFG
    port map (
      I => U3_q_201,
      O => U3_q(20)
    );
  U3_q_19_BUFG : BUFG
    port map (
      I => U3_q_191,
      O => U3_q(19)
    );
  U1_q_17_BUFG : BUFG
    port map (
      I => U1_q_171,
      O => U1_q(17)
    );
  U3_q_18_BUFG : BUFG
    port map (
      I => U3_q_181,
      O => U3_q(18)
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
  U2_Mcount_vcs_lut_0_INV_0 : INV
    port map (
      I => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  x7_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => x7_clkdiv(0),
      O => x7_Mcount_clkdiv_lut(0)
    );
  title_Msub_ypix_addsub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_Msub_tank1rom10s_sub0000_lut(9)
    );
  title_Msub_ypix_addsub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => title_Msub_ypix_addsub0000_lut(8)
    );
  title_Msub_ypix_addsub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => title_Msub_ypix_addsub0000_lut(7)
    );
  title_Msub_ypix_addsub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => title_Msub_ypix_addsub0000_lut(6)
    );
  title_Msub_ypix_addsub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => title_Msub_ypix_addsub0000_lut(5)
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
  U3_CM1_Madd_add0000_lut_0_INV_0 : INV
    port map (
      I => U3_CM1(0),
      O => U3_CM1_Madd_add0000_lut(0)
    );
  U3_CM2_Msub_sub0000_lut_1_INV_0 : INV
    port map (
      I => U3_CM2(1),
      O => U3_CM2_Msub_sub0000_lut(1)
    );
  U3_CM2_Msub_sub0000_lut_2_INV_0 : INV
    port map (
      I => U3_CM2(2),
      O => U3_CM2_Msub_sub0000_lut(2)
    );
  U3_CM2_Msub_sub0000_lut_3_INV_0 : INV
    port map (
      I => U3_CM2(3),
      O => U3_CM2_Msub_sub0000_lut(3)
    );
  U3_CM2_Msub_sub0000_lut_4_INV_0 : INV
    port map (
      I => U3_CM2(4),
      O => U3_CM2_Msub_sub0000_lut(4)
    );
  U3_CM2_Msub_sub0000_lut_5_INV_0 : INV
    port map (
      I => U3_CM2(5),
      O => U3_CM2_Msub_sub0000_lut(5)
    );
  U3_CM2_Msub_sub0000_lut_6_INV_0 : INV
    port map (
      I => U3_CM2(6),
      O => U3_CM2_Msub_sub0000_lut(6)
    );
  U3_CM2_Msub_sub0000_lut_7_INV_0 : INV
    port map (
      I => U3_CM2(7),
      O => U3_CM2_Msub_sub0000_lut(7)
    );
  U3_CM2_Msub_sub0000_lut_8_INV_0 : INV
    port map (
      I => U3_CM2(8),
      O => U3_CM2_Msub_sub0000_lut(8)
    );
  U3_CM2_Msub_sub0000_lut_9_INV_0 : INV
    port map (
      I => U3_CM2(9),
      O => U3_CM2_Msub_sub0000_lut(9)
    );
  U3_Madd_spriteonM2_addsub0001_lut_2_INV_0 : INV
    port map (
      I => U3_CM2(2),
      O => U3_Madd_spriteonM2_addsub0001_lut_2_Q
    );
  U3_Madd_spriteonM2_addsub0001_lut_0_INV_0 : INV
    port map (
      I => U3_CM2(0),
      O => U3_Madd_spriteonM2_addsub0001_lut_0_Q
    );
  U3_Madd_spriteonM1_addsub0001_lut_2_INV_0 : INV
    port map (
      I => U3_CM1(2),
      O => U3_Madd_spriteonM1_addsub0001_lut_2_Q
    );
  U3_Madd_spriteonM1_addsub0001_lut_0_INV_0 : INV
    port map (
      I => U3_CM1(0),
      O => U3_Madd_spriteonM1_addsub0001_lut_0_Q
    );
  U3_Madd_spriteonM2_addsub0003_lut_2_INV_0 : INV
    port map (
      I => U3_spriteonM2_addsub0002(2),
      O => U3_Madd_spriteonM2_addsub0003_lut_2_Q
    );
  U3_Madd_spriteonM2_addsub0003_lut_0_INV_0 : INV
    port map (
      I => U3_spriteonM2_addsub0002(0),
      O => U3_Madd_spriteonM2_addsub0003_lut_0_Q
    );
  U3_Madd_spriteonM1_addsub0003_lut_2_INV_0 : INV
    port map (
      I => U3_spriteonM1_addsub0002(2),
      O => U3_Madd_spriteonM1_addsub0003_lut_2_Q
    );
  U3_Madd_spriteonM1_addsub0003_lut_0_INV_0 : INV
    port map (
      I => U3_spriteonM1_addsub0002(0),
      O => U3_Madd_spriteonM1_addsub0003_lut_0_Q
    );
  U3_Madd_spriteonM2_addsub0002_lut_4_INV_0 : INV
    port map (
      I => U3_RM2(4),
      O => U3_Madd_spriteonM2_addsub0002_lut(4)
    );
  U3_Madd_spriteonM2_addsub0002_lut_3_INV_0 : INV
    port map (
      I => U3_RM2(3),
      O => U3_Madd_spriteonM2_addsub0002_lut(3)
    );
  U3_Madd_spriteonM2_addsub0002_lut_2_INV_0 : INV
    port map (
      I => U3_RM2(2),
      O => U3_Madd_spriteonM2_addsub0002_lut(2)
    );
  U3_Madd_spriteonM2_addsub0002_lut_1_INV_0 : INV
    port map (
      I => U3_RM2(1),
      O => U3_Madd_spriteonM2_addsub0002_lut(1)
    );
  U3_Madd_spriteonM2_addsub0002_lut_0_INV_0 : INV
    port map (
      I => U3_RM2(0),
      O => U3_Madd_spriteonM2_addsub0002_lut(0)
    );
  U3_Madd_spriteonM1_addsub0002_lut_4_INV_0 : INV
    port map (
      I => U3_RM1(4),
      O => U3_Madd_spriteonM1_addsub0002_lut(4)
    );
  U3_Madd_spriteonM1_addsub0002_lut_3_INV_0 : INV
    port map (
      I => U3_RM1(3),
      O => U3_Madd_spriteonM1_addsub0002_lut(3)
    );
  U3_Madd_spriteonM1_addsub0002_lut_2_INV_0 : INV
    port map (
      I => U3_RM1(2),
      O => U3_Madd_spriteonM1_addsub0002_lut(2)
    );
  U3_Madd_spriteonM1_addsub0002_lut_1_INV_0 : INV
    port map (
      I => U3_RM1(1),
      O => U3_Madd_spriteonM1_addsub0002_lut(1)
    );
  U3_Madd_spriteonM1_addsub0002_lut_0_INV_0 : INV
    port map (
      I => U3_RM1(0),
      O => U3_Madd_spriteonM1_addsub0002_lut(0)
    );
  U3_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => U3_Q_0_1724,
      O => U3_Mcount_q_lut(0)
    );
  U3_Msub_CM2_sub0000_lut_9_INV_0 : INV
    port map (
      I => U3_C2(9),
      O => U3_Msub_CM2_sub0000_lut(9)
    );
  U3_Msub_CM2_sub0000_lut_8_INV_0 : INV
    port map (
      I => U3_C2(8),
      O => U3_Msub_CM2_sub0000_lut(8)
    );
  U3_Msub_CM2_sub0000_lut_7_INV_0 : INV
    port map (
      I => U3_C2(7),
      O => U3_Msub_CM2_sub0000_lut(7)
    );
  U3_Msub_CM2_sub0000_lut_6_INV_0 : INV
    port map (
      I => U3_C2(6),
      O => U3_Msub_CM2_sub0000_lut(6)
    );
  U3_Msub_CM2_sub0000_lut_5_INV_0 : INV
    port map (
      I => U3_C2(5),
      O => U3_Msub_CM2_sub0000_lut(5)
    );
  U3_Msub_CM2_sub0000_lut_4_INV_0 : INV
    port map (
      I => U3_C2(4),
      O => U3_Msub_CM2_sub0000_lut(4)
    );
  U3_Msub_CM2_sub0000_lut_3_INV_0 : INV
    port map (
      I => U3_C2(3),
      O => U3_Msub_CM2_sub0000_lut(3)
    );
  U3_Msub_CM2_sub0000_lut_2_INV_0 : INV
    port map (
      I => U3_C2(2),
      O => U3_Msub_CM2_sub0000_lut(2)
    );
  U3_Madd_CM1_add0000_lut_3_INV_0 : INV
    port map (
      I => U3_C1(3),
      O => U3_Madd_CM1_add0000_lut_3_Q
    );
  U3_Madd_CM1_add0000_lut_1_INV_0 : INV
    port map (
      I => U3_C1(1),
      O => U3_Madd_CM1_add0000_lut_1_Q
    );
  U3_Madd_CM1_add0000_lut_0_INV_0 : INV
    port map (
      I => U3_C1(0),
      O => U3_Madd_CM1_add0000_lut_0_Q
    );
  U3_Msub_tank1rom10s_sub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => U3_Msub_tank1rom10s_sub0000_lut(8)
    );
  U3_Msub_tank1rom10s_sub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => U3_Msub_tank1rom10s_sub0000_lut(7)
    );
  U3_Msub_tank1rom10s_sub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => U3_Msub_tank1rom10s_sub0000_lut(6)
    );
  U3_Msub_tank1rom10s_sub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => U3_Msub_tank1rom10s_sub0000_lut(5)
    );
  U3_tank110sRomPix_2_1_INV_0 : INV
    port map (
      I => U2_hcs(2),
      O => U3_tank110sRomPix(2)
    );
  nes_left_reg_not00011_INV_0 : INV
    port map (
      I => ja1_IBUF_2274,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_2263,
      O => U2_clr_inv
    );
  U3_Result_0_21_INV_0 : INV
    port map (
      I => U3_RMht2(0),
      O => U3_Result_0_2
    );
  U3_Result_0_11_INV_0 : INV
    port map (
      I => U3_RMht1(0),
      O => U3_Result_0_1
    );
  title_Msub_ypix_xor_3_11_INV_0 : INV
    port map (
      I => title_Msub_ypix_cy(3),
      O => title_ypix_3_Q
    );
  U3_Madd_spriteon2f_add0004_xor_4_11_INV_0 : INV
    port map (
      I => U3_C2(4),
      O => U3_spriteon2f_add0004(4)
    );
  U3_Madd_spriteonM1_addsub0000_xor_4_11_INV_0 : INV
    port map (
      I => U3_CM1(4),
      O => U3_spriteonM1_addsub0000(4)
    );
  U3_Madd_spriteonM2_addsub0000_xor_4_11_INV_0 : INV
    port map (
      I => U3_CM2(4),
      O => U3_spriteonM2_addsub0000(4)
    );
  U3_Madd_spriteonM2_addsub0000_xor_4_111_INV_0 : INV
    port map (
      I => U3_CM2(4),
      O => U3_Madd_spriteonM2_addsub0000_xor_4_11
    );
  U3_Madd_spriteonM1_addsub0000_xor_4_111_INV_0 : INV
    port map (
      I => U3_CM1(4),
      O => U3_Madd_spriteonM1_addsub0000_xor_4_11
    );
  U3_Madd_CM1_add0000_lut_4_1_INV_0 : INV
    port map (
      I => U3_C1(4),
      O => U3_Madd_CM1_add0000_lut_4_1
    );
  title_Msub_ypix_addsub0000_lut_9_1_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => title_Msub_ypix_addsub0000_lut(9)
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_6_INV_0 : INV
    port map (
      I => title_Msub_ypix_lut_4_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(6)
    );
  U3_font2_2_and00002 : MUXF5
    port map (
      I0 => N481,
      I1 => N482,
      S => U3_RMht1(5),
      O => U3_font2_2_and0000_bdd0
    );
  U3_font2_2_and00002_F : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      O => N481
    );
  U3_font2_2_and00002_G : LUT4
    generic map(
      INIT => X"DB65"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(1),
      I3 => U3_RMht1(4),
      O => N482
    );
  U3_font2_mux0007_2_596 : MUXF5
    port map (
      I0 => N483,
      I1 => N484,
      S => U3_RMht2(5),
      O => U3_font2_mux0007_2_596_2016
    );
  U3_font2_mux0007_2_596_F : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(1),
      O => N483
    );
  U3_font2_mux0007_2_596_G : LUT4
    generic map(
      INIT => X"6158"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(3),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(1),
      O => N484
    );
  U3_font2_mux0007_3_197 : MUXF5
    port map (
      I0 => N485,
      I1 => N486,
      S => U3_RMht2(1),
      O => U3_font2_mux0007_3_197_2018
    );
  U3_font2_mux0007_3_197_F : LUT4
    generic map(
      INIT => X"2622"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(5),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(4),
      O => N485
    );
  U3_font2_mux0007_3_197_G : LUT4
    generic map(
      INIT => X"4626"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(3),
      I2 => U3_RMht2(5),
      I3 => U3_RMht2(4),
      O => N486
    );
  M2a_8_59 : MUXF5
    port map (
      I0 => N487,
      I1 => N488,
      S => rom1_addr(4),
      O => M2a_8_Q
    );
  M2a_8_59_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M2a_8_11_245,
      I1 => rom1_addr(3),
      I2 => M2_8_bdd1,
      O => N487
    );
  M2a_8_59_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => M1_23_bdd0,
      I1 => M1a_23_41,
      I2 => rom1_addr(3),
      O => N488
    );
  selector_blue_1_52 : MUXF5
    port map (
      I0 => N489,
      I1 => N490,
      S => screenstate_present_state_FSM_FFd1_2431,
      O => blue_1_OBUF_2237
    );
  selector_blue_1_52_F : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => vidon,
      I1 => title_spriteon,
      I2 => sig_MTitle(1),
      O => N489
    );
  selector_blue_1_52_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U3_N100,
      I1 => U3_tank2HP_2_Q,
      I2 => selector_blue_1_14_2436,
      O => N490
    );
  selector_red_0_80 : MUXF5
    port map (
      I0 => N491,
      I1 => N492,
      S => screenstate_present_state_FSM_FFd1_2431,
      O => red_0_OBUF_2424
    );
  selector_red_0_80_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vidon,
      I1 => sig_MTitle(5),
      I2 => title_spriteon,
      O => N491
    );
  selector_red_0_80_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_N29,
      I1 => U3_N100,
      I2 => selector_red_0_34_2447,
      O => N492
    );
  U3_font2_3_and00002 : MUXF5
    port map (
      I0 => N493,
      I1 => N494,
      S => U3_RMht1(2),
      O => U3_font2_3_and0000_bdd0
    );
  U3_font2_3_and00002_F : LUT4
    generic map(
      INIT => X"2FA7"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(1),
      O => N493
    );
  U3_font2_3_and00002_G : LUT4
    generic map(
      INIT => X"F9B9"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(1),
      I2 => U3_RMht1(5),
      I3 => U3_RMht1(4),
      O => N494
    );
  U3_Result_5_2215 : MUXF5
    port map (
      I0 => N495,
      I1 => N496,
      S => U3_RMht2(0),
      O => U3_Result_5_2
    );
  U3_Result_5_2215_F : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht2(1),
      I2 => U3_Result_5_236_1932,
      I3 => U3_RMht2(5),
      O => N495
    );
  U3_Result_5_2215_G : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => sig_gameDown,
      I2 => N239,
      O => N496
    );
  U3_Result_5_1215 : MUXF5
    port map (
      I0 => N497,
      I1 => N498,
      S => U3_RMht1(0),
      O => U3_Result_5_1
    );
  U3_Result_5_1215_F : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht1(1),
      I2 => U3_Result_5_136_1930,
      I3 => U3_RMht1(5),
      O => N497
    );
  U3_Result_5_1215_G : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => sig_gameDown,
      I2 => N241,
      O => N498
    );
  U3_tank1Angle10s_and000025 : MUXF5
    port map (
      I0 => N499,
      I1 => N500,
      S => U2_hcs(3),
      O => U3_tank1Angle10s_and000025_2182
    );
  U3_tank1Angle10s_and000025_F : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => U2_hcs(5),
      I3 => U2_hcs(6),
      O => N499
    );
  U3_tank1Angle10s_and000025_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_tank1Angle10s_and000014_2181,
      I1 => U2_hcs(2),
      I2 => U2_hcs(6),
      O => N500
    );
  x7_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => N501,
      I1 => N502,
      S => x7_clkdiv(19),
      O => x7_digit(3)
    );
  x7_Mmux_digit_2_f5_2_F : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht2(1),
      I2 => U3_RMht2(3),
      I3 => U3_RMht2(2),
      O => N501
    );
  x7_Mmux_digit_2_f5_2_G : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_font2_2_and0000_bdd2,
      I2 => x7_clkdiv(18),
      O => N502
    );
  M1_27_105 : MUXF5
    port map (
      I0 => N503,
      I1 => N504,
      S => sig_tank1rom10s(0),
      O => M1_27_105_44
    );
  M1_27_105_F : LUT3
    generic map(
      INIT => X"92"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      O => N503
    );
  M1_27_105_G : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M1_22_bdd9,
      O => N504
    );
  U3_spriteonB2_and000040_SW0 : MUXF5
    port map (
      I0 => N505,
      I1 => N506,
      S => U2_vcs(9),
      O => N375
    );
  U3_spriteonB2_and000040_SW0_F : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(7),
      I2 => U3_spriteonB2_and00005_2065,
      O => N505
    );
  U3_spriteonB2_and000040_SW0_G : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => U3_spriteonB1_cmp_lt0000212_2062,
      O => N506
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => N507,
      I1 => N508,
      S => x7_clkdiv(19),
      O => x7_digit(2)
    );
  x7_Mmux_digit_2_f5_1_F : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(2),
      I2 => x7_clkdiv(18),
      O => N507
    );
  x7_Mmux_digit_2_f5_1_G : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(2),
      I2 => x7_clkdiv(18),
      O => N508
    );
  M1a_23_58 : MUXF5
    port map (
      I0 => N509,
      I1 => N510,
      S => rom1_addr(4),
      O => M1a_23_Q
    );
  M1a_23_58_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N399,
      I2 => M1_23_bdd1,
      O => N509
    );
  M1a_23_58_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => M1_23_bdd0,
      I1 => M1a_23_41,
      I2 => rom1_addr(3),
      O => N510
    );
  M2_30_74 : MUXF5
    port map (
      I0 => N511,
      I1 => N512,
      S => sig_tank1rom10s(3),
      O => M2_30_Q
    );
  M2_30_74_F : LUT4
    generic map(
      INIT => X"9576"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N511
    );
  M2_30_74_G : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N512
    );
  M1a_19_32 : MUXF5
    port map (
      I0 => N513,
      I1 => N514,
      S => sig_tank1rom10s(2),
      O => M1a_19_Q
    );
  M1a_19_32_F : LUT4
    generic map(
      INIT => X"90B3"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N513
    );
  M1a_19_32_G : LUT4
    generic map(
      INIT => X"04DD"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N514
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N515,
      I1 => N516,
      S => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => M1a_2_Q_119
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"8010"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N515
    );
  M1a_2_G : LUT4
    generic map(
      INIT => X"2A2B"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N516
    );
  M2a_11_Q : MUXF5
    port map (
      I0 => N517,
      I1 => N518,
      S => sig_tank1rom10s(2),
      O => M2a_11_Q_204
    );
  M2a_11_F : LUT4
    generic map(
      INIT => X"D362"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N517
    );
  M2a_11_G : LUT4
    generic map(
      INIT => X"0089"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N518
    );
  M2a_7_63 : MUXF5
    port map (
      I0 => N519,
      I1 => N520,
      S => rom1_addr(4),
      O => M2a_7_Q
    );
  M2a_7_63_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2a_7_38_243,
      I1 => M2_7_bdd0,
      I2 => rom1_addr(3),
      O => N519
    );
  M2a_7_63_G : LUT4
    generic map(
      INIT => X"4255"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N520
    );
  M1a_24_63 : MUXF5
    port map (
      I0 => N521,
      I1 => N522,
      S => rom1_addr(4),
      O => M1a_24_Q
    );
  M1a_24_63_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1a_24_38_105,
      I1 => M1_24_bdd0,
      I2 => rom1_addr(3),
      O => N521
    );
  M1a_24_63_G : LUT4
    generic map(
      INIT => X"4255"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N522
    );
  M1_23_80 : MUXF5
    port map (
      I0 => N523,
      I1 => N524,
      S => rom1_addr(4),
      O => M1_23_Q
    );
  M1_23_80_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_23_bdd1,
      I2 => M1_23_22_28,
      I3 => M1_23_30_29,
      O => N523
    );
  M1_23_80_G : LUT4
    generic map(
      INIT => X"8F98"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(3),
      I3 => sig_tank1rom10s(2),
      O => N524
    );
  M2_8_80 : MUXF5
    port map (
      I0 => N525,
      I1 => N526,
      S => rom1_addr(4),
      O => M2_8_Q
    );
  M2_8_80_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_8_bdd1,
      I2 => M2_8_22_197,
      I3 => M2_8_30_198,
      O => N525
    );
  M2_8_80_G : LUT4
    generic map(
      INIT => X"8F98"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(3),
      I3 => sig_tank1rom10s(2),
      O => N526
    );
  M1a_25_36_SW0 : MUXF5
    port map (
      I0 => N527,
      I1 => N528,
      S => rom1_addr(3),
      O => N275
    );
  M1a_25_36_SW0_F : LUT4
    generic map(
      INIT => X"F690"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1a_24_bdd1,
      I3 => M1a_22_bdd0,
      O => N527
    );
  M1a_25_36_SW0_G : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(2),
      O => N528
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N529,
      I1 => N530,
      S => sig_tank1rom10s(0),
      O => M1_8_Q
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"81AF"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => rom1_addr(4),
      O => N529
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"C635"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N530
    );
  M2_4_107 : MUXF5
    port map (
      I0 => N531,
      I1 => N532,
      S => sig_tank1rom10s(0),
      O => M2_4_107_181
    );
  M2_4_107_F : LUT4
    generic map(
      INIT => X"8208"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(2),
      I3 => M2_0_bdd13,
      O => N531
    );
  M2_4_107_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd6,
      O => N532
    );
  M2_5_1 : MUXF5
    port map (
      I0 => N533,
      I1 => N534,
      S => sig_tank1rom10s(0),
      O => M2_5_bdd0
    );
  M2_5_1_F : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(2),
      O => N533
    );
  M2_5_1_G : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd13,
      O => N534
    );
  M1_26_1 : MUXF5
    port map (
      I0 => N535,
      I1 => N536,
      S => sig_tank1rom10s(0),
      O => M1_26_bdd0
    );
  M1_26_1_F : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(2),
      O => N535
    );
  M1_26_1_G : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M1_21_bdd5,
      O => N536
    );
  M2_1_51 : MUXF5
    port map (
      I0 => N537,
      I1 => N538,
      S => sig_tank1rom10s(0),
      O => M2_1_51_153
    );
  M2_1_51_F : LUT4
    generic map(
      INIT => X"6EFF"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(1),
      O => N537
    );
  M2_1_51_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(1),
      O => N538
    );
  M1_30_51 : MUXF5
    port map (
      I0 => N539,
      I1 => N540,
      S => sig_tank1rom10s(0),
      O => M1_30_51_69
    );
  M1_30_51_F : LUT4
    generic map(
      INIT => X"6EFF"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(1),
      O => N539
    );
  M1_30_51_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(1),
      O => N540
    );
  M1_25_54 : MUXF5
    port map (
      I0 => N541,
      I1 => N542,
      S => sig_tank1rom10s(1),
      O => M1_25_54_37
    );
  M1_25_54_F : LUT4
    generic map(
      INIT => X"42FF"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(0),
      O => N541
    );
  M1_25_54_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      O => N542
    );
  M2_25_Q : MUXF5
    port map (
      I0 => N543,
      I1 => N544,
      S => sig_tank1rom10s(2),
      O => M1_6_Q
    );
  M2_25_F : LUT4
    generic map(
      INIT => X"08CA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N543
    );
  M2_25_G : LUT4
    generic map(
      INIT => X"E144"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N544
    );
  M2a_9_40 : MUXF5
    port map (
      I0 => N545,
      I1 => N546,
      S => rom1_addr(4),
      O => M2a_9_Q
    );
  M2a_9_40_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N339,
      I1 => rom1_addr(3),
      I2 => M2_9_bdd0,
      O => N545
    );
  M2a_9_40_G : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N546
    );
  M2a_5_131 : MUXF5
    port map (
      I0 => N547,
      I1 => N548,
      S => rom1_addr(4),
      O => M2a_5_Q
    );
  M2a_5_131_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N347,
      I1 => rom1_addr(3),
      I2 => M2_5_bdd0,
      O => N547
    );
  M2a_5_131_G : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N548
    );
  M1a_22_40 : MUXF5
    port map (
      I0 => N549,
      I1 => N550,
      S => rom1_addr(4),
      O => M1a_22_Q
    );
  M1a_22_40_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N365,
      I1 => rom1_addr(3),
      I2 => M1_22_bdd0,
      O => N549
    );
  M1a_22_40_G : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N550
    );
  M1a_26_131 : MUXF5
    port map (
      I0 => N551,
      I1 => N552,
      S => rom1_addr(4),
      O => M1a_26_Q
    );
  M1a_26_131_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N367,
      I1 => rom1_addr(3),
      I2 => M1_26_bdd0,
      O => N551
    );
  M1a_26_131_G : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N552
    );
  M1_15_Q : MUXF5
    port map (
      I0 => N553,
      I1 => N554,
      S => sig_tank1rom10s(1),
      O => M1_15_Q_10
    );
  M1_15_F : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(4),
      O => N553
    );
  M1_15_G : LUT4
    generic map(
      INIT => X"C2A4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N554
    );
  M1a_24_38 : MUXF5
    port map (
      I0 => N555,
      I1 => N556,
      S => sig_tank1rom10s(1),
      O => M1a_24_38_105
    );
  M1a_24_38_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(2),
      O => N555
    );
  M1a_24_38_G : LUT4
    generic map(
      INIT => X"20A8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(0),
      O => N556
    );
  M2_26_Q : MUXF5
    port map (
      I0 => N557,
      I1 => N558,
      S => sig_tank1rom10s(2),
      O => M2_26_Q_160
    );
  M2_26_F : LUT4
    generic map(
      INIT => X"8C82"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N557
    );
  M2_26_G : LUT4
    generic map(
      INIT => X"C9CA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N558
    );
  M2a_21_42 : MUXF5
    port map (
      I0 => N559,
      I1 => N560,
      S => sig_tank1rom10s(0),
      O => M1a_10_Q
    );
  M2a_21_42_F : LUT4
    generic map(
      INIT => X"4E14"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N559
    );
  M2a_21_42_G : LUT4
    generic map(
      INIT => X"7E13"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N560
    );
  M1a_1_Q : MUXF5
    port map (
      I0 => N561,
      I1 => N562,
      S => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => M1a_1_Q_96
    );
  M1a_1_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N561
    );
  M1a_1_G : LUT4
    generic map(
      INIT => X"AA2B"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N562
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N563,
      I1 => N564,
      S => sig_tank1rom10s(3),
      O => N255
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"FFBD"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(2),
      O => N563
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"98DC"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(0),
      O => N564
    );
  M2a_15_Q : MUXF5
    port map (
      I0 => N565,
      I1 => N566,
      S => sig_tank1rom10s(3),
      O => M2a_15_Q_213
    );
  M2a_15_F : LUT4
    generic map(
      INIT => X"9715"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N565
    );
  M2a_15_G : LUT4
    generic map(
      INIT => X"762E"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N566
    );
  M2_24_Q : MUXF5
    port map (
      I0 => N567,
      I1 => N568,
      S => sig_tank1rom10s(2),
      O => M1_4_Q
    );
  M2_24_F : LUT4
    generic map(
      INIT => X"08E2"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N567
    );
  M2_24_G : LUT4
    generic map(
      INIT => X"E144"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N568
    );
  M2a_29_32 : MUXF5
    port map (
      I0 => N569,
      I1 => N570,
      S => sig_tank1rom10s(2),
      O => M2a_29_Q
    );
  M2a_29_32_F : LUT4
    generic map(
      INIT => X"889A"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N569
    );
  M2a_29_32_G : LUT4
    generic map(
      INIT => X"6200"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N570
    );
  M1a_9_32 : MUXF5
    port map (
      I0 => N571,
      I1 => N572,
      S => sig_tank1rom10s(2),
      O => M1a_9_Q
    );
  M1a_9_32_F : LUT4
    generic map(
      INIT => X"B501"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N571
    );
  M1a_9_32_G : LUT4
    generic map(
      INIT => X"2A2B"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N572
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N573,
      I1 => N574,
      S => sig_tank1rom10s(2),
      O => M1a_20_Q_97
    );
  M1a_20_F : LUT4
    generic map(
      INIT => X"D362"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N573
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"0089"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N574
    );
  M1_29_126 : MUXF5
    port map (
      I0 => N575,
      I1 => N576,
      S => rom1_addr(4),
      O => M1_29_Q
    );
  M1_29_126_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_29_26,
      I2 => M1_29_69_62,
      I3 => M1_29_77_63,
      O => N575
    );
  M1_29_126_G : LUT4
    generic map(
      INIT => X"9554"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N576
    );
  M2_2_126 : MUXF5
    port map (
      I0 => N577,
      I1 => N578,
      S => rom1_addr(4),
      O => M2_2_Q
    );
  M2_2_126_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_2_26,
      I2 => M2_2_69_166,
      I3 => M2_2_77_167,
      O => N577
    );
  M2_2_126_G : LUT4
    generic map(
      INIT => X"9554"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N578
    );
  M2_3_34 : MUXF5
    port map (
      I0 => N579,
      I1 => N580,
      S => sig_tank1rom10s(1),
      O => M2_3_34_175
    );
  M2_3_34_F : LUT4
    generic map(
      INIT => X"F6FF"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(0),
      O => N579
    );
  M2_3_34_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M2_0_bdd13,
      I2 => sig_tank1rom10s(0),
      O => N580
    );
  M1_28_33 : MUXF5
    port map (
      I0 => N581,
      I1 => N582,
      S => sig_tank1rom10s(1),
      O => M1_28_33_55
    );
  M1_28_33_F : LUT4
    generic map(
      INIT => X"F6FF"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(0),
      O => N581
    );
  M1_28_33_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M1_21_bdd5,
      I2 => sig_tank1rom10s(0),
      O => N582
    );
  M1a_5_32 : MUXF5
    port map (
      I0 => N583,
      I1 => N584,
      S => sig_tank1rom10s(3),
      O => M1a_5_Q
    );
  M1a_5_32_F : LUT4
    generic map(
      INIT => X"813D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N583
    );
  M1a_5_32_G : LUT4
    generic map(
      INIT => X"0242"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N584
    );
  M1_19_32 : MUXF5
    port map (
      I0 => N585,
      I1 => N586,
      S => sig_tank1rom10s(3),
      O => M1_19_Q
    );
  M1_19_32_F : LUT4
    generic map(
      INIT => X"A602"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N585
    );
  M1_19_32_G : LUT4
    generic map(
      INIT => X"9D84"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N586
    );
  M1_27_229 : MUXF5
    port map (
      I0 => N587,
      I1 => N588,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_229_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M1_27_129_45,
      I1 => rom1_addr(3),
      I2 => M1_27_bdd0,
      O => N587
    );
  M1_27_229_G : LUT4
    generic map(
      INIT => X"86A2"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(3),
      O => N588
    );
  M1_26_181 : MUXF5
    port map (
      I0 => N589,
      I1 => N590,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_181_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_41,
      I2 => M1_26_25_40,
      I3 => M1_26_bdd0,
      O => N589
    );
  M1_26_181_G : LUT4
    generic map(
      INIT => X"83A2"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(3),
      O => N590
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N591,
      I1 => N592,
      S => sig_tank1rom10s(0),
      O => M1_11_Q_5
    );
  M1_11_F : LUT4
    generic map(
      INIT => X"C161"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(4),
      O => N591
    );
  M1_11_G : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(2),
      O => N592
    );
  M1_5_Q : MUXF5
    port map (
      I0 => N593,
      I1 => N594,
      S => sig_tank1rom10s(2),
      O => M1_5_Q_81
    );
  M1_5_F : LUT4
    generic map(
      INIT => X"8C82"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N593
    );
  M1_5_G : LUT4
    generic map(
      INIT => X"C9CA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N594
    );
  M2_11_Q : MUXF5
    port map (
      I0 => N595,
      I1 => N596,
      S => sig_tank1rom10s(1),
      O => M2_11_Q_142
    );
  M2_11_F : LUT4
    generic map(
      INIT => X"5043"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N595
    );
  M2_11_G : LUT4
    generic map(
      INIT => X"F968"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => N596
    );
  M2_19_Q : MUXF5
    port map (
      I0 => N597,
      I1 => N598,
      S => sig_tank1rom10s(2),
      O => M2_19_Q_149
    );
  M2_19_F : LUT4
    generic map(
      INIT => X"1A82"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N597
    );
  M2_19_G : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N598
    );
  M2_29_1 : MUXF5
    port map (
      I0 => N599,
      I1 => N600,
      S => sig_tank1rom10s(0),
      O => M1_2_Q
    );
  M2_29_1_F : LUT4
    generic map(
      INIT => X"C85E"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(3),
      O => N599
    );
  M2_29_1_G : LUT4
    generic map(
      INIT => X"A131"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N600
    );
  U3_Mmux_M1a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N601,
      I1 => N602,
      S => sig_tank1rom10s(3),
      O => N325
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"C10C"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N601
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"33D2"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N602
    );
  M2_6_161 : MUXF5
    port map (
      I0 => N603,
      I1 => N604,
      S => rom1_addr(4),
      O => M2_6_Q
    );
  M2_6_161_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M2_6_93_192,
      I1 => rom1_addr(3),
      I2 => M2_6_bdd0,
      O => N603
    );
  M2_6_161_G : LUT4
    generic map(
      INIT => X"CA4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N604
    );
  M2_16_Q : MUXF5
    port map (
      I0 => N605,
      I1 => N606,
      S => sig_tank1rom10s(3),
      O => M2_16_Q_148
    );
  M2_16_F : LUT4
    generic map(
      INIT => X"2422"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N605
    );
  M2_16_G : LUT4
    generic map(
      INIT => X"C682"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(4),
      O => N606
    );
  M2a_22_33 : MUXF5
    port map (
      I0 => N607,
      I1 => N608,
      S => sig_tank1rom10s(2),
      O => M2a_22_Q
    );
  M2a_22_33_F : LUT4
    generic map(
      INIT => X"B501"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N607
    );
  M2a_22_33_G : LUT4
    generic map(
      INIT => X"2A2B"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N608
    );
  M1_1_69 : MUXF5
    port map (
      I0 => N609,
      I1 => N610,
      S => sig_tank1rom10s(0),
      O => M1_1_Q
    );
  M1_1_69_F : LUT4
    generic map(
      INIT => X"C856"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N609
    );
  M1_1_69_G : LUT4
    generic map(
      INIT => X"2113"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N610
    );
  M1_25_152 : MUXF5
    port map (
      I0 => N611,
      I1 => N612,
      S => rom1_addr(4),
      O => M1_25_Q
    );
  M1_25_152_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_25_2,
      I2 => M1_25_54_37,
      I3 => M1_25_bdd1,
      O => N611
    );
  M1_25_152_G : LUT4
    generic map(
      INIT => X"CA4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N612
    );
  M2a_4_152 : MUXF5
    port map (
      I0 => N613,
      I1 => N614,
      S => rom1_addr(4),
      O => M2a_4_Q
    );
  M2a_4_152_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => N421,
      I2 => M2_4_bdd0,
      I3 => rom1_addr(3),
      O => N613
    );
  M2a_4_152_G : LUT4
    generic map(
      INIT => X"0457"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => N614
    );
  M1a_27_152 : MUXF5
    port map (
      I0 => N615,
      I1 => N616,
      S => rom1_addr(4),
      O => M1a_27_Q
    );
  M1a_27_152_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => N423,
      I2 => M1_27_bdd0,
      I3 => rom1_addr(3),
      O => N615
    );
  M1a_27_152_G : LUT4
    generic map(
      INIT => X"0457"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => N616
    );
  M2_9_70 : MUXF5
    port map (
      I0 => N617,
      I1 => N618,
      S => rom1_addr(4),
      O => M2_9_Q
    );
  M2_9_70_F : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_9_bdd0,
      I2 => M2_9_27_201,
      I3 => N341,
      O => N617
    );
  M2_9_70_G : LUT4
    generic map(
      INIT => X"C84E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N618
    );
  M1_22_70 : MUXF5
    port map (
      I0 => N619,
      I1 => N620,
      S => rom1_addr(4),
      O => M1_22_Q
    );
  M1_22_70_F : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_bdd0,
      I2 => M1_22_27_21,
      I3 => N351,
      O => N619
    );
  M1_22_70_G : LUT4
    generic map(
      INIT => X"C84E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N620
    );
  M2_7_105 : MUXF5
    port map (
      I0 => N621,
      I1 => N622,
      S => rom1_addr(4),
      O => M2_7_Q
    );
  M2_7_105_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => N447,
      I3 => M2_7_bdd0,
      O => N621
    );
  M2_7_105_G : LUT4
    generic map(
      INIT => X"CA46"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N622
    );
  M1_24_105 : MUXF5
    port map (
      I0 => N623,
      I1 => N624,
      S => rom1_addr(4),
      O => M1_24_Q
    );
  M1_24_105_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => N445,
      I3 => M1_24_bdd0,
      O => N623
    );
  M1_24_105_G : LUT4
    generic map(
      INIT => X"CA46"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N624
    );
  U3_Mmux_M1a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N625,
      I1 => N626,
      S => sig_tank1rom10s(2),
      O => N323
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"2D2F"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => U3_rom_pix1(0),
      O => N625
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : LUT3
    generic map(
      INIT => X"9D"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      O => N626
    );
  M2a_7_38 : MUXF5
    port map (
      I0 => N627,
      I1 => N628,
      S => sig_tank1rom10s(1),
      O => M2a_7_38_243
    );
  M2a_7_38_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(2),
      O => N627
    );
  M2a_7_38_G : LUT4
    generic map(
      INIT => X"20A8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(0),
      O => N628
    );
  M2a_10_47 : MUXF5
    port map (
      I0 => N629,
      I1 => N630,
      S => rom1_addr(4),
      O => M2a_10_Q
    );
  M2a_10_47_F : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => M1a_21_22,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => N453,
      O => N629
    );
  M2a_10_47_G : LUT4
    generic map(
      INIT => X"21AA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N630
    );
  M1a_21_47 : MUXF5
    port map (
      I0 => N631,
      I1 => N632,
      S => rom1_addr(4),
      O => M1a_21_Q
    );
  M1a_21_47_F : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => M1a_21_22,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => N455,
      O => N631
    );
  M1a_21_47_G : LUT4
    generic map(
      INIT => X"21AA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N632
    );
  M2a_26_32 : MUXF5
    port map (
      I0 => N633,
      I1 => N634,
      S => sig_tank1rom10s(3),
      O => M2a_26_Q
    );
  M2a_26_32_F : LUT4
    generic map(
      INIT => X"813D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N633
    );
  M2a_26_32_G : LUT4
    generic map(
      INIT => X"0242"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N634
    );
  M2a_9_40_SW0 : MUXF5
    port map (
      I0 => N635,
      I1 => N636,
      S => sig_tank1rom10s(0),
      O => N339
    );
  M2a_9_40_SW0_F : LUT4
    generic map(
      INIT => X"CF8F"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => M2_0_bdd13,
      O => N635
    );
  M2a_9_40_SW0_G : LUT4
    generic map(
      INIT => X"D393"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => M2_0_bdd6,
      O => N636
    );
  M1a_22_40_SW0 : MUXF5
    port map (
      I0 => N637,
      I1 => N638,
      S => sig_tank1rom10s(0),
      O => N365
    );
  M1a_22_40_SW0_F : LUT4
    generic map(
      INIT => X"CF8F"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => M1_21_bdd5,
      O => N637
    );
  M1a_22_40_SW0_G : LUT4
    generic map(
      INIT => X"D393"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => N638
    );
  M2_12_Q : MUXF5
    port map (
      I0 => N639,
      I1 => N640,
      S => sig_tank1rom10s(3),
      O => M2_12_Q_143
    );
  M2_12_F : LUT4
    generic map(
      INIT => X"A602"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N639
    );
  M2_12_G : LUT4
    generic map(
      INIT => X"9D84"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N640
    );
  M1_20_Q : MUXF5
    port map (
      I0 => N641,
      I1 => N642,
      S => sig_tank1rom10s(3),
      O => M1_20_Q_14
    );
  M1_20_F : LUT4
    generic map(
      INIT => X"8691"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(2),
      O => N641
    );
  M1_20_G : LUT4
    generic map(
      INIT => X"F360"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N642
    );
  M2a_6_38_SW0 : MUXF5
    port map (
      I0 => N643,
      I1 => N644,
      S => sig_tank1rom10s(2),
      O => N261
    );
  M2a_6_38_SW0_F : LUT4
    generic map(
      INIT => X"1D5D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => N643
    );
  M2a_6_38_SW0_G : LUT4
    generic map(
      INIT => X"CD89"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(0),
      O => N644
    );
  U3_Mmux_M2a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N645,
      I1 => N646,
      S => sig_tank1rom10s(3),
      O => N417
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"6D6F"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => U3_rom_pix2(0),
      O => N645
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"89BA"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => U3_rom_pix2(0),
      I3 => sig_tank1rom10s(0),
      O => N646
    );
  M2_5_181 : MUXF5
    port map (
      I0 => N647,
      I1 => N648,
      S => rom1_addr(4),
      O => M2_5_Q
    );
  M2_5_181_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_5_25_187,
      I2 => M2_5_58_188,
      I3 => M2_5_bdd0,
      O => N647
    );
  M2_5_181_G : LUT4
    generic map(
      INIT => X"A80B"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N648
    );
  M2_4_221 : MUXF5
    port map (
      I0 => N649,
      I1 => N650,
      S => rom1_addr(4),
      O => M2_4_Q
    );
  M2_4_221_F : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_4_107_181,
      I2 => M2_4_bdd0,
      I3 => M2_4_40,
      O => N649
    );
  M2_4_221_G : LUT4
    generic map(
      INIT => X"A81A"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N650
    );
  U3_destroy2_mux0017311 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_blue_and0002,
      I2 => U3_spriteonB3,
      I3 => U3_spriteonB4,
      O => U3_destroy2_mux001731
    );
  U3_destroy2_mux001731_f5 : MUXF5
    port map (
      I0 => U3_destroy2_mux001731,
      I1 => N0,
      S => U3_spriteonGrnd,
      O => U3_N35
    );
  U3_font1_0_and000021 : LUT4
    generic map(
      INIT => X"AA26"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(1),
      I3 => U3_RMht1(2),
      O => U3_font1_0_and00002
    );
  U3_font1_0_and00002_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_font1_0_and00002,
      S => U3_RMht1(5),
      O => U3_font1_0_and0000_bdd0
    );
  U3_font2_0_and000021 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(4),
      O => U3_font2_0_and00002
    );
  U3_font2_0_and00002_f5 : MUXF5
    port map (
      I0 => U3_font2_0_and000021_1985,
      I1 => U3_font2_0_and00002,
      S => U3_RMht1(5),
      O => U3_font2_0_and0000_bdd0
    );
  U3_font2_1_and000021 : LUT4
    generic map(
      INIT => X"EB66"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(4),
      O => U3_font2_1_and00002
    );
  U3_font2_1_and00002_f5 : MUXF5
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_font2_1_and00002,
      S => U3_RMht1(5),
      O => U3_font2_1_and0000_bdd0
    );
  U3_destroy2_mux0017191 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_N35,
      I1 => U3_N30,
      I2 => U3_spriteonB5,
      I3 => U3_spriteonB1,
      O => U3_destroy2_mux0017191_1962
    );
  U3_destroy2_mux001719_f5 : MUXF5
    port map (
      I0 => U3_destroy2_mux0017191_1962,
      I1 => N0,
      S => U3_spriteonM1,
      O => U3_destroy2_mux001719
    );
  U3_RMcnt_Q_mux0000_1_11 : LUT4
    generic map(
      INIT => X"FF96"
    )
    port map (
      I0 => U3_RMcnt(1),
      I1 => U3_rise_2029,
      I2 => U3_RMcnt(0),
      I3 => U3_RMcnt_and0000,
      O => U3_RMcnt_Q_mux0000_1_1
    );
  U3_RMcnt_Q_mux0000_1_12 : LUT4
    generic map(
      INIT => X"4114"
    )
    port map (
      I0 => U3_RMcnt_and0000,
      I1 => U3_RMcnt(1),
      I2 => U3_rise_2029,
      I3 => U3_RMcnt(0),
      O => U3_RMcnt_Q_mux0000_1_11_1857
    );
  U3_RMcnt_Q_mux0000_1_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt_Q_mux0000_1_11_1857,
      I1 => U3_RMcnt_Q_mux0000_1_1,
      S => U3_RMht1(1),
      O => U3_RMcnt_Q_mux0000(1)
    );
  U3_RMcnt2_Q_mux0000_1_11 : LUT4
    generic map(
      INIT => X"FF96"
    )
    port map (
      I0 => U3_RMcnt2(1),
      I1 => U3_rise2_2030,
      I2 => U3_RMcnt2(0),
      I3 => U3_RMcnt2_and0000,
      O => U3_RMcnt2_Q_mux0000_1_1
    );
  U3_RMcnt2_Q_mux0000_1_12 : LUT4
    generic map(
      INIT => X"4114"
    )
    port map (
      I0 => U3_RMcnt2_and0000,
      I1 => U3_RMcnt2(1),
      I2 => U3_rise2_2030,
      I3 => U3_RMcnt2(0),
      O => U3_RMcnt2_Q_mux0000_1_11_1825
    );
  U3_RMcnt2_Q_mux0000_1_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_1_11_1825,
      I1 => U3_RMcnt2_Q_mux0000_1_1,
      S => U3_RMht2(1),
      O => U3_RMcnt2_Q_mux0000(1)
    );
  U3_RMcnt_Q_mux0000_2_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise_2029,
      I1 => U3_RMcnt(1),
      I2 => U3_RMcnt(2),
      I3 => U3_RMcnt(0),
      O => U3_RMcnt_Q_mux0000_2_1
    );
  U3_RMcnt_Q_mux0000_2_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt_Q_mux0000_2_1,
      I1 => U3_RMht1(2),
      S => U3_RMcnt_and0000,
      O => U3_RMcnt_Q_mux0000(2)
    );
  U3_RMcnt2_Q_mux0000_2_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise2_2030,
      I1 => U3_RMcnt2(1),
      I2 => U3_RMcnt2(2),
      I3 => U3_RMcnt2(0),
      O => U3_RMcnt2_Q_mux0000_2_1
    );
  U3_RMcnt2_Q_mux0000_2_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_2_1,
      I1 => U3_RMht2(2),
      S => U3_RMcnt2_and0000,
      O => U3_RMcnt2_Q_mux0000(2)
    );
  title_spriteon_and0000871 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(0),
      I2 => U2_hcs(1),
      I3 => U2_hcs(3),
      O => title_spriteon_and0000871_2633
    );
  title_spriteon_and000087_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => title_spriteon_and0000871_2633,
      S => U2_hcs(4),
      O => title_spriteon_and000087
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
      O => U2_vidon_and0000261_732
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_732,
      S => U2_vcs(4),
      O => U2_vidon_and000026
    );
  U2_vidon_and0000651 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(5),
      I3 => U2_vcs(1),
      O => U2_vidon_and0000651_736
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_736,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  U3_spriteonB4_cmp_le00001351 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(4),
      O => U3_spriteonB4_cmp_le0000135
    );
  U3_spriteonB4_cmp_le0000135_f5 : MUXF5
    port map (
      I0 => U3_spriteonB4_cmp_le00001351_2082,
      I1 => U3_spriteonB4_cmp_le0000135,
      S => U3_spriteonB4_cmp_le0000121_2080,
      O => U3_spriteonB4_cmp_le0000
    );
  U3_tank1Angle1s_and000091 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_vcs(9),
      I3 => U2_hcs(7),
      O => U3_tank1Angle1s_and000091_2191
    );
  U3_tank1Angle1s_and00009_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_tank1Angle1s_and000091_2191,
      S => U3_tank1Angle10s_cmp_gt0000,
      O => U3_tank1Angle1s_and00009
    );
  M2a_23_11 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(4),
      O => M2a_23_1
    );
  M2a_23_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_3_bdd3,
      O => M2a_23_11_224
    );
  M2a_23_1_f5 : MUXF5
    port map (
      I0 => M2a_23_11_224,
      I1 => M2a_23_1,
      S => rom1_addr(3),
      O => M1a_8_Q
    );
  U3_ypix2_4_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => U3_ypix2_4_1
    );
  U3_ypix2_4_12 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => U3_ypix2_4_11_2211
    );
  U3_ypix2_4_1_f5 : MUXF5
    port map (
      I0 => U3_ypix2_4_11_2211,
      I1 => U3_ypix2_4_1,
      S => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => rom1_addr(4)
    );
  M2a_19_1 : LUT4
    generic map(
      INIT => X"21AA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M2a_19_1_218
    );
  M2a_19_f5 : MUXF5
    port map (
      I0 => M2a_18_2,
      I1 => M2a_19_1_218,
      S => rom1_addr(4),
      O => M2a_19_Q
    );
  M2a_12_131 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(4),
      O => M2a_12_13
    );
  M2a_12_132 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(4),
      O => M2a_12_131_206
    );
  M2a_12_13_f5 : MUXF5
    port map (
      I0 => M2a_12_131_206,
      I1 => M2a_12_13,
      S => sig_tank1rom10s(2),
      O => M1a_19_13
    );
  M2a_12_281 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_13_bdd4,
      O => M2a_12_281_208
    );
  M2a_12_282 : LUT4
    generic map(
      INIT => X"7D75"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2a_12_282_209
    );
  M2a_12_28_f5 : MUXF5
    port map (
      I0 => M2a_12_282_209,
      I1 => M2a_12_281_208,
      S => rom1_addr(3),
      O => M2a_12_28
    );
  M2_13_1 : LUT4
    generic map(
      INIT => X"91A3"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => M2_13_Q
    );
  M2_13_f5 : MUXF5
    port map (
      I0 => M2_13_1_145,
      I1 => M2_13_Q,
      S => rom1_addr(4),
      O => M1_18_Q
    );
  M1_30_1081 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M1_27_bdd4,
      I1 => M1_30_91,
      I2 => rom1_addr(4),
      O => M1_30_108
    );
  M1_30_1082 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M1_25_2,
      I1 => M1_30_51_69,
      I2 => rom1_addr(4),
      O => M1_30_1081_68
    );
  M1_30_108_f5 : MUXF5
    port map (
      I0 => M1_30_1081_68,
      I1 => M1_30_108,
      S => rom1_addr(3),
      O => M1_30_Q
    );
  selector_green_1_291 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_N33,
      I1 => selector_green_1_2_2439,
      I2 => U3_N28,
      I3 => U3_N29,
      O => selector_green_1_291_2441
    );
  selector_green_1_292 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_N33,
      I1 => U3_N0,
      I2 => U3_N28,
      I3 => U3_N29,
      O => selector_green_1_292_2442
    );
  selector_green_1_29_f5 : MUXF5
    port map (
      I0 => selector_green_1_292_2442,
      I1 => selector_green_1_291_2441,
      S => U3_spriteonB3,
      O => selector_green_1_29
    );
  selector_green_1_661 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sig_MTitle(3),
      I1 => selector_green_0_42_2438,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      I3 => selector_green_1_29,
      O => selector_green_1_66
    );
  selector_green_1_662 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => title_green_cmp_lt0000,
      I1 => selector_green_0_42_2438,
      I2 => screenstate_present_state_FSM_FFd1_2431,
      I3 => selector_green_1_29,
      O => selector_green_1_661_2444
    );
  selector_green_1_66_f5 : MUXF5
    port map (
      I0 => selector_green_1_661_2444,
      I1 => selector_green_1_66,
      S => title_spriteon,
      O => green_1_OBUF_2269
    );
  M1_28_1291 : LUT4
    generic map(
      INIT => X"91FF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => M1_28_1291_52
    );
  M1_28_1292 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => M1_28_bdd1,
      I1 => rom1_addr(4),
      O => M1_28_1292_53
    );
  M1_28_129_f5 : MUXF5
    port map (
      I0 => M1_28_1292_53,
      I1 => M1_28_1291_52,
      S => rom1_addr(3),
      O => M1_28_129
    );
  U3_RMcnt_Q_mux0000_5_SW01 : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => U3_rise_2029,
      I1 => U3_RMcnt(3),
      I2 => U3_RMcnt(4),
      I3 => N185,
      O => U3_RMcnt_Q_mux0000_5_SW0
    );
  U3_RMcnt_Q_mux0000_5_SW02 : LUT4
    generic map(
      INIT => X"1557"
    )
    port map (
      I0 => U3_rise_2029,
      I1 => N185,
      I2 => U3_RMcnt(4),
      I3 => U3_RMcnt(3),
      O => U3_RMcnt_Q_mux0000_5_SW01_1865
    );
  U3_RMcnt_Q_mux0000_5_SW0_f5 : MUXF5
    port map (
      I0 => U3_RMcnt_Q_mux0000_5_SW01_1865,
      I1 => U3_RMcnt_Q_mux0000_5_SW0,
      S => U3_RMcnt(5),
      O => N58
    );
  U3_RMcnt2_Q_mux0000_5_SW01 : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => U3_rise2_2030,
      I1 => U3_RMcnt2(3),
      I2 => U3_RMcnt2(4),
      I3 => N187,
      O => U3_RMcnt2_Q_mux0000_5_SW0
    );
  U3_RMcnt2_Q_mux0000_5_SW02 : LUT4
    generic map(
      INIT => X"1557"
    )
    port map (
      I0 => U3_rise2_2030,
      I1 => N187,
      I2 => U3_RMcnt2(4),
      I3 => U3_RMcnt2(3),
      O => U3_RMcnt2_Q_mux0000_5_SW01_1833
    );
  U3_RMcnt2_Q_mux0000_5_SW0_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_5_SW01_1833,
      I1 => U3_RMcnt2_Q_mux0000_5_SW0,
      S => U3_RMcnt2(5),
      O => N60
    );
  U3_RMcnt_Q_mux0000_4_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise_2029,
      I1 => U3_RMcnt(3),
      I2 => U3_RMcnt(4),
      I3 => N185,
      O => U3_RMcnt_Q_mux0000_4_1
    );
  U3_RMcnt_Q_mux0000_4_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt_Q_mux0000_4_1,
      I1 => U3_RMht1(4),
      S => U3_RMcnt_and0000,
      O => U3_RMcnt_Q_mux0000(4)
    );
  U3_RMcnt2_Q_mux0000_4_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise2_2030,
      I1 => U3_RMcnt2(3),
      I2 => U3_RMcnt2(4),
      I3 => N187,
      O => U3_RMcnt2_Q_mux0000_4_1
    );
  U3_RMcnt2_Q_mux0000_4_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_4_1,
      I1 => U3_RMht2(4),
      S => U3_RMcnt2_and0000,
      O => U3_RMcnt2_Q_mux0000(4)
    );
  M2a_14_1 : LUT4
    generic map(
      INIT => X"6B24"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2a_14_1_211
    );
  M2a_14_f5 : MUXF5
    port map (
      I0 => M2a_14_2,
      I1 => M2a_14_1_211,
      S => rom1_addr(4),
      O => M2a_14_Q
    );
  U3_font2_mux0007_1_1801 : LUT4
    generic map(
      INIT => X"1929"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(1),
      I2 => U3_RMht2(4),
      I3 => U3_RMht2(2),
      O => U3_font2_mux0007_1_1801_2013
    );
  U3_font2_mux0007_1_180_f5 : MUXF5
    port map (
      I0 => U3_font2_mux0007_1_1802,
      I1 => U3_font2_mux0007_1_1801_2013,
      S => U3_RMht2(5),
      O => U3_font2_mux0007_1_180
    );
  M2_3_1271 : LUT4
    generic map(
      INIT => X"91FF"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => M2_3_1271_173
    );
  M2_3_1272 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_28_bdd1,
      O => M2_3_1272_174
    );
  M2_3_127_f5 : MUXF5
    port map (
      I0 => M2_3_1272_174,
      I1 => M2_3_1271_173,
      S => rom1_addr(3),
      O => M2_3_127
    );
  U3_spriteonB1_cmp_le0000130_SW01 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(3),
      I2 => U2_hcs(2),
      I3 => U2_hcs(1),
      O => U3_spriteonB1_cmp_le0000130_SW0
    );
  U3_spriteonB1_cmp_le0000130_SW0_f5 : MUXF5
    port map (
      I0 => U3_spriteonB1_cmp_le0000130_SW0,
      I1 => N1,
      S => U2_hcs(6),
      O => N287
    );
  U3_blue_and0001132_SW01 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => U3_blue_and0001132_SW0
    );
  U3_blue_and0001132_SW0_f5 : MUXF5
    port map (
      I0 => U3_blue_and0001132_SW0,
      I1 => N1,
      S => U2_vcs(4),
      O => N289
    );
  M1_29_261 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M1_29_261_60
    );
  M1_29_262 : LUT4
    generic map(
      INIT => X"FF84"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(1),
      O => M1_29_262_61
    );
  M1_29_26_f5 : MUXF5
    port map (
      I0 => M1_29_262_61,
      I1 => M1_29_261_60,
      S => sig_tank1rom10s(2),
      O => M1_29_26
    );
  M2_2_261 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M2_2_261_164
    );
  M2_2_262 : LUT4
    generic map(
      INIT => X"FF84"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(1),
      O => M2_2_262_165
    );
  M2_2_26_f5 : MUXF5
    port map (
      I0 => M2_2_262_165,
      I1 => M2_2_261_164,
      S => sig_tank1rom10s(2),
      O => M2_2_26
    );
  M2_4_401 : LUT4
    generic map(
      INIT => X"A404"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(1),
      I3 => M2_3_48_176,
      O => M2_4_401_183
    );
  M2_4_402 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_3_48_176,
      O => M2_4_402_184
    );
  M2_4_40_f5 : MUXF5
    port map (
      I0 => M2_4_402_184,
      I1 => M2_4_401_183,
      S => sig_tank1rom10s(2),
      O => M2_4_40
    );
  M1_31_251 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      O => M1_31_251_73
    );
  M1_31_252 : LUT4
    generic map(
      INIT => X"083B"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M1_21_bdd5,
      I3 => M1_22_bdd12,
      O => M1_31_252_74
    );
  M1_31_25_f5 : MUXF5
    port map (
      I0 => M1_31_252_74,
      I1 => M1_31_251_73,
      S => sig_tank1rom10s(1),
      O => M1_31_25
    );
  M2_0_251 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd6,
      O => M2_0_251_131
    );
  M2_0_252 : LUT4
    generic map(
      INIT => X"083B"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd16,
      O => M2_0_252_132
    );
  M2_0_25_f5 : MUXF5
    port map (
      I0 => M2_0_252_132,
      I1 => M2_0_251_131,
      S => sig_tank1rom10s(1),
      O => M2_0_25
    );
  M1a_25_361 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M1a_25_36
    );
  M1a_25_36_f5 : MUXF5
    port map (
      I0 => N275,
      I1 => M1a_25_36,
      S => rom1_addr(4),
      O => M1a_25_Q
    );
  selector_red_0_34_SW01 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U3_N84,
      I1 => U3_spriteonB4,
      I2 => U3_spriteonB5,
      I3 => U3_spriteonB3,
      O => selector_red_0_34_SW0
    );
  selector_red_0_34_SW02 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_N84,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB5,
      O => selector_red_0_34_SW01_2449
    );
  selector_red_0_34_SW0_f5 : MUXF5
    port map (
      I0 => selector_red_0_34_SW01_2449,
      I1 => selector_red_0_34_SW0,
      S => who_present_state_FSM_FFd1_2653,
      O => N297
    );
  U3_spriteonB4_and0000311 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => U3_spriteonB4_cmp_le0000121_2080,
      I1 => U2_hcs(3),
      I2 => U2_hcs(4),
      I3 => U2_hcs(2),
      O => U3_spriteonB4_and0000311_2076
    );
  U3_spriteonB4_and0000312 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_spriteonB3_cmp_le0000112_2070,
      I1 => U3_spriteonB3_cmp_le0000128_2071,
      O => U3_spriteonB4_and0000312_2077
    );
  U3_spriteonB4_and000031_f5 : MUXF5
    port map (
      I0 => U3_spriteonB4_and0000312_2077,
      I1 => U3_spriteonB4_and0000311_2076,
      S => U2_hcs(9),
      O => U3_spriteonB4_and000031
    );
  M1a_28_63_SW01 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(0),
      I3 => M1_21_bdd5,
      O => M1a_28_63_SW0
    );
  M1a_28_63_SW0_f5 : MUXF5
    port map (
      I0 => M1a_28_63_SW0,
      I1 => N0,
      S => sig_tank1rom10s(2),
      O => N263
    );
  M2a_3_63_SW01 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => M2a_3_63_SW0
    );
  M2a_3_63_SW0_f5 : MUXF5
    port map (
      I0 => M2a_3_63_SW0,
      I1 => N0,
      S => sig_tank1rom10s(2),
      O => N397
    );
  U3_rise_and0000_SW0 : LUT4_L
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U3_RMcnt(3),
      I1 => U3_RMcnt(4),
      I2 => U3_RMcnt(5),
      I3 => U3_RM1_and0000,
      LO => N36
    );
  U3_rise2_and0000_SW0 : LUT4_L
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U3_RMcnt2(3),
      I1 => U3_RMcnt2(4),
      I2 => U3_RMcnt2(5),
      I3 => U3_RM2_and0000,
      LO => N38
    );
  who_present_state_FSM_FFd2_In11 : LUT4_D
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2653,
      I1 => who_delay2_2651,
      I2 => who_delay1_2650,
      I3 => who_delay3_2652,
      LO => N651,
      O => who_present_state_FSM_N0
    );
  nes_a_reg_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(9),
      I3 => N40,
      LO => N652,
      O => nes_N0
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
      LO => N653,
      O => U2_hcs_cmp_eq000010_713
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
      LO => N654,
      O => nes_counter_reg_cmp_eq0000112_2371
    );
  U3_Mhorz_cmp_ne000032 : LUT4_D
    generic map(
      INIT => X"7DBE"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMcnt(4),
      I3 => U3_RMcnt(3),
      LO => N655,
      O => U3_Mhorz_cmp_ne000032_1509
    );
  U3_Mhorz_cmp_ne000132 : LUT4_D
    generic map(
      INIT => X"7DBE"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(4),
      I2 => U3_RMcnt2(4),
      I3 => U3_RMcnt2(3),
      LO => N656,
      O => U3_Mhorz_cmp_ne000132_1513
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2_5_1_771,
      I1 => U3_C2(3),
      LO => U3_C2_not00011_777
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(6),
      I2 => U3_C2_not000113_778,
      I3 => U3_C2_not00016_781,
      LO => U3_C2_not000123_779
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
      LO => U3_C2_not000150_780
    );
  U3_C1_not00014 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_C1(2),
      I1 => U3_C1(3),
      I2 => U3_C1(4),
      I3 => U3_C1(5),
      LO => U3_C1_not00014_761
    );
  U3_RMht1_not00011171 : LUT4_L
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1_not00011131_1878,
      I2 => U3_RMht1_not00011168_1879,
      I3 => U3_RMht1_not00011114_1877,
      LO => U3_RMht1_not00011171_1880
    );
  U2_hcs_cmp_eq000014 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => U2_hcs(7),
      LO => N657,
      O => U2_N3
    );
  U3_RMht1_not00011114_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1_2_1_1872,
      I2 => U3_RMht1_1_1_1870,
      LO => N198
    );
  U3_RM1_mux0002_0_11 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000032_1509,
      I1 => U3_Mhorz_cmp_ne000065_1510,
      I2 => U3_Mhorz_cmp_ne0000113_1508,
      I3 => U3_rise_2029,
      LO => N658,
      O => U3_N14
    );
  U3_RM2_mux0002_0_11 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000132_1513,
      I1 => U3_Mhorz_cmp_ne000165_1514,
      I2 => U3_Mhorz_cmp_ne0001113_1512,
      I3 => U3_rise2_2030,
      LO => N659,
      O => U3_N15
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => N206,
      I3 => U2_N2,
      LO => N660,
      O => U2_vcs_cmp_eq0000_725
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => U3_C1_not000147_762,
      I1 => N210,
      I2 => U3_C1(7),
      I3 => N211,
      LO => U3_C1_not000183_764
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(9),
      I1 => nes_scalar_reg(8),
      I2 => nes_scalar_next_cmp_eq000010_2403,
      I3 => nes_scalar_next_cmp_eq000021_2404,
      LO => N661,
      O => nes_scalar_next_cmp_eq0000
    );
  U3_RMcnt_and000136_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMcnt(2),
      I1 => U3_RMcnt(1),
      I2 => U3_RMcnt(0),
      I3 => N221,
      LO => N200
    );
  U3_RMcnt2_and000136_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMcnt2(2),
      I1 => U3_RMcnt2(1),
      I2 => U3_RMcnt2(0),
      I3 => N223,
      LO => N202
    );
  U3_RMht2_not00011218_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(1),
      LO => N225
    );
  U3_RMht1_not0001164_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(3),
      LO => N227
    );
  U3_RMht2_not0001157_SW0 : LUT4_L
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2_not0001_bdd1,
      I2 => U3_RMht2(3),
      I3 => N231,
      LO => N229
    );
  U3_destroy1_mux001562 : LUT4_L
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => U3_destroy1_mux001541_1957,
      I1 => U3_spriteonM1,
      I2 => U3_N30,
      I3 => N299,
      LO => U3_destroy1_mux001562_1958
    );
  U3_font2_0_and000022_INV_0 : INV
    port map (
      I => U3_RMht1(0),
      O => U3_font2_0_and000021_1985
    );
  U3_spriteonB4_cmp_le00001352_INV_0 : INV
    port map (
      I => U2_hcs(9),
      O => U3_spriteonB4_cmp_le00001351_2082
    );
  M2_13_2_INV_0 : INV
    port map (
      I => M1_14_bdd1,
      O => M2_13_1_145
    );
  M2a_14_2_INV_0 : INV
    port map (
      I => M1a_14_bdd0,
      O => M2a_14_2
    );
  U3_font2_mux0007_1_1802_INV_0 : INV
    port map (
      I => U3_RMht2(1),
      O => U3_font2_mux0007_1_1802
    );

end STRUCTURE;

