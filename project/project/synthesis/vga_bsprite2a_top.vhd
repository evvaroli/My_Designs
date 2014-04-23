--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Wed Apr 23 19:06:57 2014
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
  signal M1_10_Q_2 : STD_LOGIC; 
  signal M1_10_bdd5 : STD_LOGIC; 
  signal M1_10_bdd7 : STD_LOGIC; 
  signal M1_11_Q_5 : STD_LOGIC; 
  signal M1_13_Q_6 : STD_LOGIC; 
  signal M1_14_Q : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_15_Q_9 : STD_LOGIC; 
  signal M1_18_Q : STD_LOGIC; 
  signal M1_19_Q_11 : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_34_18 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_14_25 : STD_LOGIC; 
  signal M1_23_37_26 : STD_LOGIC; 
  signal M1_23_bdd0 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd3 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_24_bdd2 : STD_LOGIC; 
  signal M1_24_bdd4 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_35_36 : STD_LOGIC; 
  signal M1_25_80_37 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_25_40 : STD_LOGIC; 
  signal M1_26_58_41 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_116_44 : STD_LOGIC; 
  signal M1_27_127_45 : STD_LOGIC; 
  signal M1_27_40_46 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_0 : STD_LOGIC; 
  signal M1_28_46_51 : STD_LOGIC; 
  signal M1_28_69_52 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_23 : STD_LOGIC; 
  signal M1_29_231_55 : STD_LOGIC; 
  signal M1_29_56_56 : STD_LOGIC; 
  signal M1_29_65 : STD_LOGIC; 
  signal M1_29_80_58 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_30_117 : STD_LOGIC; 
  signal M1_30_65_62 : STD_LOGIC; 
  signal M1_30_98 : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_31_14_65 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_3_1_67 : STD_LOGIC; 
  signal M1_3_2_68 : STD_LOGIC; 
  signal M1_4_Q : STD_LOGIC; 
  signal M1_5_Q_70 : STD_LOGIC; 
  signal M1_6_Q : STD_LOGIC; 
  signal M1_8_Q : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal M1_9_1_74 : STD_LOGIC; 
  signal M1_9_2_75 : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_11_1_78 : STD_LOGIC; 
  signal M1a_11_2_79 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_Q_81 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_16_Q_83 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_1_10_86 : STD_LOGIC; 
  signal M1a_1_22_87 : STD_LOGIC; 
  signal M1a_20_Q_88 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_37 : STD_LOGIC; 
  signal M1a_22_371_92 : STD_LOGIC; 
  signal M1a_22_40_SW0 : STD_LOGIC; 
  signal M1a_22_40_SW01_94 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_9_97 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_13_99 : STD_LOGIC; 
  signal M1a_24_38_100 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_26_33_104 : STD_LOGIC; 
  signal M1a_26_53_105 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_130_107 : STD_LOGIC; 
  signal M1a_27_2_108 : STD_LOGIC; 
  signal M1a_27_80_109 : STD_LOGIC; 
  signal M1a_27_82_110 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_28_19_112 : STD_LOGIC; 
  signal M1a_28_31 : STD_LOGIC; 
  signal M1a_28_311_114 : STD_LOGIC; 
  signal M1a_28_65 : STD_LOGIC; 
  signal M1a_28_651_116 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_32 : STD_LOGIC; 
  signal M1a_29_321_119 : STD_LOGIC; 
  signal M1a_29_322_120 : STD_LOGIC; 
  signal M1a_29_58_121 : STD_LOGIC; 
  signal M1a_2_Q_122 : STD_LOGIC; 
  signal M1a_30_36_123 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_3_1_125 : STD_LOGIC; 
  signal M1a_3_2_126 : STD_LOGIC; 
  signal M1a_4_Q_127 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_5_Q : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_8_1 : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_14_134 : STD_LOGIC; 
  signal M2_0_bdd1 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd16 : STD_LOGIC; 
  signal M2_0_bdd3 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal M2_13_1_144 : STD_LOGIC; 
  signal M2_15_Q_145 : STD_LOGIC; 
  signal M2_16_Q_146 : STD_LOGIC; 
  signal M2_19_Q_147 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_121 : STD_LOGIC; 
  signal M2_1_65_150 : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_21_1_153 : STD_LOGIC; 
  signal M2_21_2_154 : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_26_Q_156 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_23 : STD_LOGIC; 
  signal M2_2_231_160 : STD_LOGIC; 
  signal M2_2_56_161 : STD_LOGIC; 
  signal M2_2_80_162 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_111 : STD_LOGIC; 
  signal M2_3_50_166 : STD_LOGIC; 
  signal M2_3_74_167 : STD_LOGIC; 
  signal M2_3_8_168 : STD_LOGIC; 
  signal M2_3_bdd6 : STD_LOGIC; 
  signal M2_3_bdd9 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_106_172 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_4_bdd4 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_25_176 : STD_LOGIC; 
  signal M2_5_58_177 : STD_LOGIC; 
  signal M2_5_bdd0 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_54_180 : STD_LOGIC; 
  signal M2_6_93_181 : STD_LOGIC; 
  signal M2_6_bdd0 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_14_186 : STD_LOGIC; 
  signal M2_8_37_187 : STD_LOGIC; 
  signal M2_8_bdd1 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_34_190 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_12_Q_193 : STD_LOGIC; 
  signal M2a_13_Q_194 : STD_LOGIC; 
  signal M2a_1_36_195 : STD_LOGIC; 
  signal M2a_1_64_196 : STD_LOGIC; 
  signal M2a_20_Q_197 : STD_LOGIC; 
  signal M2a_22_Q_198 : STD_LOGIC; 
  signal M2a_28_Q_199 : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_32 : STD_LOGIC; 
  signal M2a_2_321_203 : STD_LOGIC; 
  signal M2a_2_322_204 : STD_LOGIC; 
  signal M2a_30_Q_205 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_3_19_207 : STD_LOGIC; 
  signal M2a_3_31 : STD_LOGIC; 
  signal M2a_3_311_209 : STD_LOGIC; 
  signal M2a_4_80_210 : STD_LOGIC; 
  signal M2a_5_111_211 : STD_LOGIC; 
  signal M2a_5_63_212 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_7_13_217 : STD_LOGIC; 
  signal M2a_7_38_218 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_11_220 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_9_40_SW0 : STD_LOGIC; 
  signal M2a_9_40_SW01_223 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
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
  signal N42 : STD_LOGIC; 
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
  signal N62 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal U1_Mcount_q_cy_10_rt_505 : STD_LOGIC; 
  signal U1_Mcount_q_cy_11_rt_507 : STD_LOGIC; 
  signal U1_Mcount_q_cy_12_rt_509 : STD_LOGIC; 
  signal U1_Mcount_q_cy_13_rt_511 : STD_LOGIC; 
  signal U1_Mcount_q_cy_14_rt_513 : STD_LOGIC; 
  signal U1_Mcount_q_cy_15_rt_515 : STD_LOGIC; 
  signal U1_Mcount_q_cy_16_rt_517 : STD_LOGIC; 
  signal U1_Mcount_q_cy_1_rt_519 : STD_LOGIC; 
  signal U1_Mcount_q_cy_2_rt_521 : STD_LOGIC; 
  signal U1_Mcount_q_cy_3_rt_523 : STD_LOGIC; 
  signal U1_Mcount_q_cy_4_rt_525 : STD_LOGIC; 
  signal U1_Mcount_q_cy_5_rt_527 : STD_LOGIC; 
  signal U1_Mcount_q_cy_6_rt_529 : STD_LOGIC; 
  signal U1_Mcount_q_cy_7_rt_531 : STD_LOGIC; 
  signal U1_Mcount_q_cy_8_rt_533 : STD_LOGIC; 
  signal U1_Mcount_q_cy_9_rt_535 : STD_LOGIC; 
  signal U1_Mcount_q_xor_17_rt_537 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U1_q_171 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_560 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_562 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_564 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_566 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_568 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_570 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_572 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_574 : STD_LOGIC; 
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
  signal U2_Mcount_hcs_xor_9_rt_586 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_589 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_591 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_593 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_595 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_597 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_599 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_601 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_603 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_615 : STD_LOGIC; 
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
  signal U2_hcs_cmp_eq000010_649 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_650 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_661 : STD_LOGIC; 
  signal U2_vidon_and00000_662 : STD_LOGIC; 
  signal U2_vidon_and0000105_663 : STD_LOGIC; 
  signal U2_vidon_and0000117_664 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and0000181_666 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_668 : STD_LOGIC; 
  signal U2_vidon_and000039_669 : STD_LOGIC; 
  signal U2_vidon_and00006_670 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_672 : STD_LOGIC; 
  signal U2_vidon_and000080_673 : STD_LOGIC; 
  signal U2_vsenable_674 : STD_LOGIC; 
  signal U3_B_675 : STD_LOGIC; 
  signal U3_B_and0000 : STD_LOGIC; 
  signal U3_B_mux0012 : STD_LOGIC; 
  signal U3_B_mux001236_678 : STD_LOGIC; 
  signal U3_B_mux00124_679 : STD_LOGIC; 
  signal U3_B_mux001249_680 : STD_LOGIC; 
  signal U3_B_mux001254_681 : STD_LOGIC; 
  signal U3_B_mux001269_682 : STD_LOGIC; 
  signal U3_B_mux00129_683 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_695 : STD_LOGIC; 
  signal U3_C1_not0001105_696 : STD_LOGIC; 
  signal U3_C1_not000127_697 : STD_LOGIC; 
  signal U3_C1_not00014_698 : STD_LOGIC; 
  signal U3_C1_not000147_699 : STD_LOGIC; 
  signal U3_C1_not00015_700 : STD_LOGIC; 
  signal U3_C1_not000152_701 : STD_LOGIC; 
  signal U3_C1_not000183_702 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_714 : STD_LOGIC; 
  signal U3_C2_not000113_715 : STD_LOGIC; 
  signal U3_C2_not000123_716 : STD_LOGIC; 
  signal U3_C2_not000150_717 : STD_LOGIC; 
  signal U3_C2_not00016_718 : STD_LOGIC; 
  signal U3_C2_not000164_719 : STD_LOGIC; 
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
  signal U3_Madd_tank1rom10s_cy_8_rt_751 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_cy_9_rt_752 : STD_LOGIC; 
  signal U3_Madd_tank1rom1s_cy_8_rt_762 : STD_LOGIC; 
  signal U3_Madd_tank1rom1s_cy_9_rt_763 : STD_LOGIC; 
  signal U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_888 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_905 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_907 : STD_LOGIC; 
  signal U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_956 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_1012 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_1014 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_1016 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_1018 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_1020 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_1022 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_1024 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_1026 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_1028 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_1030 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_1032 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_1034 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_1036 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_1038 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_1040 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_1042 : STD_LOGIC; 
  signal U3_Mcount_q_xor_17_rt_1044 : STD_LOGIC; 
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
  signal U3_Mmux_M1_mux0000_10_1091 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_1092 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_1093 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_1094 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_1095 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_1096 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_1098 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_1099 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_1102 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_1103 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_1104 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_1105 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_1106 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_1107 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_1110 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_1111 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_1112 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_1113 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_SW0 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_1115 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_1116 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_1117 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_1118 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_1119 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_1120 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_1121 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_1122 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_1123 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_1124 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_1125 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_1126 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_1127 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_1129 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_1130 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_1133 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_1134 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_1135 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_1136 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_1137 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_SW0 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_SW01_1139 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_1140 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_1143 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_1144 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_1145 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_1146 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_1147 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_1148 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_1149 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_1150 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_1151 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_1152 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_1153 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_1154 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_1155 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_1156 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_1157 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_1158 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_1159 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_1161 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_1162 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_1165 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_1166 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_1167 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_1168 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_1169 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_1170 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_1173 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_1174 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_1175 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_1176 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_1177 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_1178 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_1179 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_1180 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_1181 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_1182 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_1183 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_1184 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_1185 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_1186 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_1187 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_1188 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_1189 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_1191 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_1192 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_1195 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_1196 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_1197 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_1198 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_1199 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_1200 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_1203 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_1204 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_1205 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_1206 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_1207 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_1208 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW01_1210 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_1211 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_1212 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_1213 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_1214 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_1215 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_3_f5_1216 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_1217 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_f5_1218 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_5_1219 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_51_1220 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_6_1221 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_3_f5_1222 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_1223 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_f5_1224 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_5_1225 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_51_1226 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_6_1227 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_cy_0_rt_1247 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_cy_1_rt_1249 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_cy_2_rt_1251 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_cy_3_rt_1253 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_cy_4_rt_1255 : STD_LOGIC; 
  signal U3_Msub_ypix1_addsub0000_lut_9_1 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_0_rt_1267 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_1_rt_1269 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_2_rt_1271 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_3_rt_1273 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_4_rt_1275 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_5_rt_1277 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_6_rt_1279 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_cy_8_rt_1282 : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_lut_7_Q : STD_LOGIC; 
  signal U3_Msub_ypix1_sub0000_lut_9_Q : STD_LOGIC; 
  signal U3_N111 : STD_LOGIC; 
  signal U3_N12 : STD_LOGIC; 
  signal U3_N13 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N49 : STD_LOGIC; 
  signal U3_N50 : STD_LOGIC; 
  signal U3_N52 : STD_LOGIC; 
  signal U3_N53 : STD_LOGIC; 
  signal U3_N57 : STD_LOGIC; 
  signal U3_N8 : STD_LOGIC; 
  signal U3_Q_0_1295 : STD_LOGIC; 
  signal U3_Q_1_1296 : STD_LOGIC; 
  signal U3_Q_10_1297 : STD_LOGIC; 
  signal U3_Q_11_1298 : STD_LOGIC; 
  signal U3_Q_12_1299 : STD_LOGIC; 
  signal U3_Q_13_1300 : STD_LOGIC; 
  signal U3_Q_14_1301 : STD_LOGIC; 
  signal U3_Q_15_1302 : STD_LOGIC; 
  signal U3_Q_16_1303 : STD_LOGIC; 
  signal U3_Q_2_1304 : STD_LOGIC; 
  signal U3_Q_3_1305 : STD_LOGIC; 
  signal U3_Q_4_1306 : STD_LOGIC; 
  signal U3_Q_5_1307 : STD_LOGIC; 
  signal U3_Q_6_1308 : STD_LOGIC; 
  signal U3_Q_7_1309 : STD_LOGIC; 
  signal U3_Q_8_1310 : STD_LOGIC; 
  signal U3_Q_9_1311 : STD_LOGIC; 
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
  signal U3_blue_and0000 : STD_LOGIC; 
  signal U3_blue_and0001 : STD_LOGIC; 
  signal U3_blue_and0001117 : STD_LOGIC; 
  signal U3_blue_and00011171_1353 : STD_LOGIC; 
  signal U3_blue_and0001137 : STD_LOGIC; 
  signal U3_blue_and00011371_1355 : STD_LOGIC; 
  signal U3_blue_and0001163_1356 : STD_LOGIC; 
  signal U3_blue_and0002 : STD_LOGIC; 
  signal U3_leftBTN_inv1_inv1 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal U3_red_2_11_1361 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000036_1373 : STD_LOGIC; 
  signal U3_spriteonB1_and000048_1374 : STD_LOGIC; 
  signal U3_spriteonB1_and000063 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and000028 : STD_LOGIC; 
  signal U3_spriteonB2_and0000281_1380 : STD_LOGIC; 
  signal U3_spriteonB2_and0000282_1381 : STD_LOGIC; 
  signal U3_spriteonB2_and000040_1382 : STD_LOGIC; 
  signal U3_spriteonB2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000020_1386 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000112_1388 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000128_1389 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000029_1392 : STD_LOGIC; 
  signal U3_spriteonB4_and000029_SW0 : STD_LOGIC; 
  signal U3_spriteonB4_and000041_1394 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000041_1397 : STD_LOGIC; 
  signal U3_spriteonB5_and000063_1398 : STD_LOGIC; 
  signal U3_spriteonB5_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000109 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000124_1402 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000026_1403 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000047_1404 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000074_1405 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00009 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000091_1407 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000093_1408 : STD_LOGIC; 
  signal U3_tank110sM_mux0000 : STD_LOGIC; 
  signal U3_tank11sM_mux0000 : STD_LOGIC; 
  signal U3_tank1Angle10s : STD_LOGIC; 
  signal U3_tank1Angle10s_and000042_1412 : STD_LOGIC; 
  signal U3_tank1Angle10s_and000055_1413 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_gt0000 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_le0000130_SW0 : STD_LOGIC; 
  signal U3_tank1Angle10s_cmp_le00002 : STD_LOGIC; 
  signal U3_tank1Angle1s : STD_LOGIC; 
  signal U3_tank1Angle1s_and000012_1418 : STD_LOGIC; 
  signal U3_tank1Angle1s_and000036_1419 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000021_1429 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and00003_1430 : STD_LOGIC; 
  signal U3_tank1_angle_calc_cmp_eq0001_1431 : STD_LOGIC; 
  signal U3_tank1_angle_calc_not0001 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000017_1443 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and00003_1444 : STD_LOGIC; 
  signal U3_tank2_angle_calc_cmp_eq0001_1445 : STD_LOGIC; 
  signal U3_tank2_angle_calc_not0001 : STD_LOGIC; 
  signal a_to_g_0_OBUF_1480 : STD_LOGIC; 
  signal a_to_g_1_OBUF_1481 : STD_LOGIC; 
  signal a_to_g_2_OBUF_1482 : STD_LOGIC; 
  signal a_to_g_3_OBUF_1483 : STD_LOGIC; 
  signal a_to_g_4_OBUF_1484 : STD_LOGIC; 
  signal a_to_g_5_OBUF_1485 : STD_LOGIC; 
  signal a_to_g_6_OBUF_1486 : STD_LOGIC; 
  signal an_0_OBUF_1491 : STD_LOGIC; 
  signal an_1_OBUF_1492 : STD_LOGIC; 
  signal an_2_OBUF_1493 : STD_LOGIC; 
  signal an_3_OBUF_1494 : STD_LOGIC; 
  signal blue_0_OBUF_1497 : STD_LOGIC; 
  signal blue_1_OBUF_1498 : STD_LOGIC; 
  signal btn_3_IBUF_1524 : STD_LOGIC; 
  signal green_0_OBUF_1529 : STD_LOGIC; 
  signal green_1_OBUF_1530 : STD_LOGIC; 
  signal green_2_OBUF_1531 : STD_LOGIC; 
  signal hsync_OBUF_1533 : STD_LOGIC; 
  signal ja1_IBUF_1535 : STD_LOGIC; 
  signal ja2_OBUF_1537 : STD_LOGIC; 
  signal ja3_OBUF_1539 : STD_LOGIC; 
  signal ld_0_OBUF_1548 : STD_LOGIC; 
  signal ld_1_OBUF_1549 : STD_LOGIC; 
  signal ld_2_OBUF_1550 : STD_LOGIC; 
  signal ld_3_OBUF_1551 : STD_LOGIC; 
  signal ld_4_OBUF_1552 : STD_LOGIC; 
  signal ld_5_OBUF_1553 : STD_LOGIC; 
  signal ld_6_OBUF_1554 : STD_LOGIC; 
  signal ld_7_OBUF_1555 : STD_LOGIC; 
  signal mclk_BUFGP_1557 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_1560 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_1562 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_1564 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_1566 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_1568 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_1570 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_1572 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_1574 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_1576 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_1579 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_1581 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_1583 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_1585 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_1587 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_1589 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_1591 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_1593 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_1605 : STD_LOGIC; 
  signal nes_N0 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_1618 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_b_reg_1620 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_1632 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_1633 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_1635 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_1637 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_1640 : STD_LOGIC; 
  signal nes_right_reg_1641 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_1664 : STD_LOGIC; 
  signal nes_sel_reg_1675 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_1677 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_up_reg_1679 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal red_0_OBUF_1684 : STD_LOGIC; 
  signal red_1_OBUF_1685 : STD_LOGIC; 
  signal red_2_OBUF_1686 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_1_rt_1694 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_2_rt_1696 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_3_rt_1698 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_4_rt_1700 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_5_rt_1702 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_cy_6_rt_1704 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_0 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_0121_1706 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_018_1707 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_1 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_2 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_3 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_4 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_5 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_6 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_eqn_7 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_lut_0_1 : STD_LOGIC; 
  signal screenstate_Mcount_sig_hill3_xor_7_rt_1716 : STD_LOGIC; 
  signal screenstate_N0 : STD_LOGIC; 
  signal screenstate_N13 : STD_LOGIC; 
  signal screenstate_N3 : STD_LOGIC; 
  signal screenstate_N30 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_1729 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd2_1731 : STD_LOGIC; 
  signal screenstate_sig_hill1_and0001 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_0_bdd2 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_115_1778 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_128_1779 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_1_181_1780 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_4_bdd2 : STD_LOGIC; 
  signal screenstate_sig_hill4_mux0001_5_bdd0 : STD_LOGIC; 
  signal screenstate_sig_hill5_addsub0000_5_bdd0 : STD_LOGIC; 
  signal selector_blue_0_7_1804 : STD_LOGIC; 
  signal selector_blue_0_8_1805 : STD_LOGIC; 
  signal selector_green_0_20_1806 : STD_LOGIC; 
  signal selector_green_0_39_1807 : STD_LOGIC; 
  signal selector_green_0_71_1808 : STD_LOGIC; 
  signal selector_green_0_76_1809 : STD_LOGIC; 
  signal selector_green_1_11 : STD_LOGIC; 
  signal selector_green_1_111_1811 : STD_LOGIC; 
  signal selector_green_1_43_1812 : STD_LOGIC; 
  signal selector_green_2_31_1813 : STD_LOGIC; 
  signal selector_green_2_4_1814 : STD_LOGIC; 
  signal selector_red_0_10_1815 : STD_LOGIC; 
  signal selector_red_0_115_1816 : STD_LOGIC; 
  signal selector_red_0_24_1817 : STD_LOGIC; 
  signal selector_red_0_37_1818 : STD_LOGIC; 
  signal sig_gameA : STD_LOGIC; 
  signal sig_gameDown : STD_LOGIC; 
  signal sig_gameRight : STD_LOGIC; 
  signal sig_gameUp : STD_LOGIC; 
  signal sw_0_IBUF_1883 : STD_LOGIC; 
  signal sw_1_IBUF_1884 : STD_LOGIC; 
  signal sw_2_IBUF_1885 : STD_LOGIC; 
  signal sw_3_IBUF_1886 : STD_LOGIC; 
  signal sw_4_IBUF_1887 : STD_LOGIC; 
  signal sw_5_IBUF_1888 : STD_LOGIC; 
  signal sw_6_IBUF_1889 : STD_LOGIC; 
  signal sw_7_IBUF_1890 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_10_rt_1892 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_11_rt_1894 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_12_rt_1896 : STD_LOGIC; 
  signal title_Madd_rom_addr2_add0000_Madd_cy_13_rt_1898 : STD_LOGIC; 
  signal title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1928 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_0_rt_1946 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_1_rt_1948 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_2_rt_1950 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_3_rt_1952 : STD_LOGIC; 
  signal title_Msub_ypix_addsub0000_cy_4_rt_1954 : STD_LOGIC; 
  signal title_Msub_ypix_lut_4_Q : STD_LOGIC; 
  signal title_Msub_ypix_lut_5_Q : STD_LOGIC; 
  signal title_Msub_ypix_lut_7_Q : STD_LOGIC; 
  signal title_Msub_ypix_xor_6_11_1967 : STD_LOGIC; 
  signal title_N01 : STD_LOGIC; 
  signal title_N27 : STD_LOGIC; 
  signal title_N7 : STD_LOGIC; 
  signal title_green_cmp_lt0000 : STD_LOGIC; 
  signal title_green_cmp_lt0000225_1972 : STD_LOGIC; 
  signal title_spriteon : STD_LOGIC; 
  signal title_spriteon_and0000119_1992 : STD_LOGIC; 
  signal title_spriteon_and0000124_1993 : STD_LOGIC; 
  signal title_spriteon_and000016_1994 : STD_LOGIC; 
  signal title_spriteon_and0000169_1995 : STD_LOGIC; 
  signal title_spriteon_and0000178_1996 : STD_LOGIC; 
  signal title_spriteon_and000019_1997 : STD_LOGIC; 
  signal title_spriteon_and0000205_1998 : STD_LOGIC; 
  signal title_spriteon_and000035_1999 : STD_LOGIC; 
  signal title_spriteon_and000038_2000 : STD_LOGIC; 
  signal title_spriteon_and000052_2001 : STD_LOGIC; 
  signal title_spriteon_and00006_2002 : STD_LOGIC; 
  signal title_spriteon_and000087 : STD_LOGIC; 
  signal title_spriteon_and0000871_2004 : STD_LOGIC; 
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
  signal vsync_OBUF_2020 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_2021 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_2022 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_2026 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_2028 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_2030 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_2032 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_2034 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_2036 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_2038 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_2040 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_2042 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_2044 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_2046 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_2048 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_2050 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_2052 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_2054 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_2056 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_2058 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_2060 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_2062 : STD_LOGIC; 
  signal x7_Mmux_digit_3_2063 : STD_LOGIC; 
  signal x7_Mmux_digit_31_2064 : STD_LOGIC; 
  signal x7_Mmux_digit_32_2065 : STD_LOGIC; 
  signal x7_Mmux_digit_33_2066 : STD_LOGIC; 
  signal x7_Mmux_digit_4_2067 : STD_LOGIC; 
  signal x7_Mmux_digit_41_2068 : STD_LOGIC; 
  signal x7_Mmux_digit_42_2069 : STD_LOGIC; 
  signal x7_Mmux_digit_43_2070 : STD_LOGIC; 
  signal x7_an_1_mux000115_2091 : STD_LOGIC; 
  signal x7_an_1_mux00012_2092 : STD_LOGIC; 
  signal x7_an_1_mux000128 : STD_LOGIC; 
  signal x7_an_1_mux000152_2094 : STD_LOGIC; 
  signal x7_an_2_mux000128_2095 : STD_LOGIC; 
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
  signal U3_Madd_tank1rom10s_cy : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal U3_Madd_tank1rom10s_lut : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal U3_Madd_tank1rom1s_cy : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal U3_Madd_tank1rom1s_lut : STD_LOGIC_VECTOR ( 7 downto 4 ); 
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
  signal U3_Msub_ypix1_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Msub_ypix1_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Msub_ypix1_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
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
  signal U3_ypix1 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_ypix1_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
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
  signal rom1_addr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
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
  signal sig_MTitle : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_gameRed : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal sig_romTitle_addr14 : STD_LOGIC_VECTOR ( 14 downto 2 ); 
  signal sig_tank110sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank11sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank1rom10s : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal sig_tank1rom1s : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal title_Madd_rom_addr2_add0000_Madd_cy : STD_LOGIC_VECTOR ( 13 downto 3 ); 
  signal title_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal title_Madd_rom_addr2_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 6 ); 
  signal title_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 6 ); 
  signal title_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 3 ); 
  signal title_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 3 ); 
  signal title_Msub_ypix_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal title_Msub_ypix_addsub0000_lut : STD_LOGIC_VECTOR ( 8 downto 5 ); 
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
      PRE => btn_3_IBUF_1524,
      Q => who_present_state_FSM_FFd2_2022
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => sig_gameA,
      Q => who_present_state_FSM_FFd1_2021
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(0),
      Q => U1_q_01
    );
  U1_q_1 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(1),
      Q => U1_q(1)
    );
  U1_q_2 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(2),
      Q => U1_q(2)
    );
  U1_q_3 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(3),
      Q => U1_q(3)
    );
  U1_q_4 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(4),
      Q => U1_q(4)
    );
  U1_q_5 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(5),
      Q => U1_q(5)
    );
  U1_q_6 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(6),
      Q => U1_q(6)
    );
  U1_q_7 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(7),
      Q => U1_q(7)
    );
  U1_q_8 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(8),
      Q => U1_q(8)
    );
  U1_q_9 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(9),
      Q => U1_q(9)
    );
  U1_q_10 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(10),
      Q => U1_q(10)
    );
  U1_q_11 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(11),
      Q => U1_q(11)
    );
  U1_q_12 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(12),
      Q => U1_q(12)
    );
  U1_q_13 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(13),
      Q => U1_q(13)
    );
  U1_q_14 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(14),
      Q => U1_q(14)
    );
  U1_q_15 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(15),
      Q => U1_q(15)
    );
  U1_q_16 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => Result(16),
      Q => U1_q(16)
    );
  U1_q_17 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
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
      S => U1_Mcount_q_cy_1_rt_519,
      O => U1_Mcount_q_cy(1)
    );
  U1_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(0),
      LI => U1_Mcount_q_cy_1_rt_519,
      O => Result(1)
    );
  U1_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(1),
      DI => N0,
      S => U1_Mcount_q_cy_2_rt_521,
      O => U1_Mcount_q_cy(2)
    );
  U1_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(1),
      LI => U1_Mcount_q_cy_2_rt_521,
      O => Result(2)
    );
  U1_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(2),
      DI => N0,
      S => U1_Mcount_q_cy_3_rt_523,
      O => U1_Mcount_q_cy(3)
    );
  U1_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(2),
      LI => U1_Mcount_q_cy_3_rt_523,
      O => Result(3)
    );
  U1_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(3),
      DI => N0,
      S => U1_Mcount_q_cy_4_rt_525,
      O => U1_Mcount_q_cy(4)
    );
  U1_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(3),
      LI => U1_Mcount_q_cy_4_rt_525,
      O => Result(4)
    );
  U1_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(4),
      DI => N0,
      S => U1_Mcount_q_cy_5_rt_527,
      O => U1_Mcount_q_cy(5)
    );
  U1_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(4),
      LI => U1_Mcount_q_cy_5_rt_527,
      O => Result(5)
    );
  U1_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(5),
      DI => N0,
      S => U1_Mcount_q_cy_6_rt_529,
      O => U1_Mcount_q_cy(6)
    );
  U1_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(5),
      LI => U1_Mcount_q_cy_6_rt_529,
      O => Result(6)
    );
  U1_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(6),
      DI => N0,
      S => U1_Mcount_q_cy_7_rt_531,
      O => U1_Mcount_q_cy(7)
    );
  U1_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(6),
      LI => U1_Mcount_q_cy_7_rt_531,
      O => Result(7)
    );
  U1_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(7),
      DI => N0,
      S => U1_Mcount_q_cy_8_rt_533,
      O => U1_Mcount_q_cy(8)
    );
  U1_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(7),
      LI => U1_Mcount_q_cy_8_rt_533,
      O => Result(8)
    );
  U1_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(8),
      DI => N0,
      S => U1_Mcount_q_cy_9_rt_535,
      O => U1_Mcount_q_cy(9)
    );
  U1_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(8),
      LI => U1_Mcount_q_cy_9_rt_535,
      O => Result(9)
    );
  U1_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(9),
      DI => N0,
      S => U1_Mcount_q_cy_10_rt_505,
      O => U1_Mcount_q_cy(10)
    );
  U1_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(9),
      LI => U1_Mcount_q_cy_10_rt_505,
      O => Result(10)
    );
  U1_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(10),
      DI => N0,
      S => U1_Mcount_q_cy_11_rt_507,
      O => U1_Mcount_q_cy(11)
    );
  U1_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(10),
      LI => U1_Mcount_q_cy_11_rt_507,
      O => Result(11)
    );
  U1_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(11),
      DI => N0,
      S => U1_Mcount_q_cy_12_rt_509,
      O => U1_Mcount_q_cy(12)
    );
  U1_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(11),
      LI => U1_Mcount_q_cy_12_rt_509,
      O => Result(12)
    );
  U1_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(12),
      DI => N0,
      S => U1_Mcount_q_cy_13_rt_511,
      O => U1_Mcount_q_cy(13)
    );
  U1_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(12),
      LI => U1_Mcount_q_cy_13_rt_511,
      O => Result(13)
    );
  U1_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(13),
      DI => N0,
      S => U1_Mcount_q_cy_14_rt_513,
      O => U1_Mcount_q_cy(14)
    );
  U1_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(13),
      LI => U1_Mcount_q_cy_14_rt_513,
      O => Result(14)
    );
  U1_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(14),
      DI => N0,
      S => U1_Mcount_q_cy_15_rt_515,
      O => U1_Mcount_q_cy(15)
    );
  U1_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(14),
      LI => U1_Mcount_q_cy_15_rt_515,
      O => Result(15)
    );
  U1_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(15),
      DI => N0,
      S => U1_Mcount_q_cy_16_rt_517,
      O => U1_Mcount_q_cy(16)
    );
  U1_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(15),
      LI => U1_Mcount_q_cy_16_rt_517,
      O => Result(16)
    );
  U1_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(16),
      LI => U1_Mcount_q_xor_17_rt_537,
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
      addra(2) => sig_romTitle_addr14(2),
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
      addr(11) => N0,
      addr(10) => sig_tank1rom10s(10),
      addr(9) => sig_tank1rom10s(9),
      addr(8) => sig_tank1rom10s(8),
      addr(7) => sig_tank1rom10s(7),
      addr(6) => sig_tank1rom10s(6),
      addr(5) => sig_tank1rom10s(5),
      addr(4) => sig_tank1rom10s(4),
      addr(3) => rom1_addr(3),
      addr(2) => rom1_addr(2),
      addr(1) => rom1_addr(1),
      addr(0) => rom1_addr(0)
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
      addr(11) => N0,
      addr(10) => sig_tank1rom1s(10),
      addr(9) => sig_tank1rom1s(9),
      addr(8) => sig_tank1rom1s(8),
      addr(7) => sig_tank1rom1s(7),
      addr(6) => sig_tank1rom1s(6),
      addr(5) => sig_tank1rom1s(5),
      addr(4) => sig_tank1rom1s(4),
      addr(3) => rom1_addr(3),
      addr(2) => rom1_addr(2),
      addr(1) => rom1_addr(1),
      addr(0) => rom1_addr(0)
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_586,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_574,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_574,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_572,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_572,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_570,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_570,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_568,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_568,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_566,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_566,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_564,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_564,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_562,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_562,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_560,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_560,
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
      LI => U2_Mcount_vcs_xor_9_rt_615,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_603,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_603,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_601,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_601,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_599,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_599,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_597,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_597,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_595,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_595,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_593,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_593,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_591,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_591,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_589,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_589,
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
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_674,
      CLR => btn_3_IBUF_1524,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_674
    );
  U3_Mmux_tank11sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(6),
      I2 => sig_tank11sM(7),
      O => U3_Mmux_tank11sM_mux0000_4_1223
    );
  U3_Mmux_tank11sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(4),
      I2 => sig_tank11sM(5),
      O => U3_Mmux_tank11sM_mux0000_5_1225
    );
  U3_Mmux_tank11sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_5_1225,
      I1 => U3_Mmux_tank11sM_mux0000_4_1223,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_3_f5_1222
    );
  U3_Mmux_tank11sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(2),
      I2 => sig_tank11sM(3),
      O => U3_Mmux_tank11sM_mux0000_51_1226
    );
  U3_Mmux_tank11sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(0),
      I2 => sig_tank11sM(1),
      O => U3_Mmux_tank11sM_mux0000_6_1227
    );
  U3_Mmux_tank11sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_6_1227,
      I1 => U3_Mmux_tank11sM_mux0000_51_1226,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_4_f5_1224
    );
  U3_Mmux_tank11sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_4_f5_1224,
      I1 => U3_Mmux_tank11sM_mux0000_3_f5_1222,
      S => U2_hcs(2),
      O => U3_tank11sM_mux0000
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
      O => U3_Mmux_M1a_mux0000_7_1134
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_1134,
      I1 => U3_Mmux_M1a_mux0000_6_1129,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_1126
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_1135
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_1143
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_1143,
      I1 => U3_Mmux_M1a_mux0000_71_1135,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_1130
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_1130,
      I1 => U3_Mmux_M1a_mux0000_5_f5_1126,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_1124
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_1136
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_20_Q_88,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_1144
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_1144,
      I1 => U3_Mmux_M1a_mux0000_72_1136,
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
      O => U3_Mmux_M1a_mux0000_82_1145
    );
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_16_Q_83,
      I2 => M1a_14_Q_81,
      O => U3_Mmux_M1a_mux0000_9_1150
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_1150,
      I1 => U3_Mmux_M1a_mux0000_82_1145,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_1140
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_1140,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_1127
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_1127,
      I1 => U3_Mmux_M1a_mux0000_4_f6_1124,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_1123
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_1146,
      I1 => U3_Mmux_M1a_mux0000_73_1137,
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
      O => U3_Mmux_M1a_mux0000_84_1147
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_1151
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_1151,
      I1 => U3_Mmux_M1a_mux0000_84_1147,
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
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_4_Q_127,
      I2 => M1a_5_Q,
      O => U3_Mmux_M1a_mux0000_92_1152
    );
  U3_Mmux_M1a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_92_1152,
      I1 => U3_Mmux_M1a_mux0000_85_1148,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_2_Q_122,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_1153
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_1122,
      I1 => U3_Mmux_M1a_mux0000_93_1153,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_1149
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_1149,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_1133
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_1133,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_1125
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_1125,
      I1 => U3_Mmux_M1a_mux0000_3_f7_1123,
      S => U3_xpix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M2a_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_30_Q_205,
      I2 => N0,
      O => U3_Mmux_M2a_mux0000_6_1191
    );
  U3_Mmux_M2a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_28_Q_199,
      I2 => M2a_29_Q,
      O => U3_Mmux_M2a_mux0000_7_1196
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_1196,
      I1 => U3_Mmux_M2a_mux0000_6_1191,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_1188
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_1203,
      I1 => U3_Mmux_M2a_mux0000_71_1197,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_1192
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_1192,
      I1 => U3_Mmux_M2a_mux0000_5_f5_1188,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_1186
    );
  U3_Mmux_M2a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_22_Q_198,
      I2 => M1a_8_Q,
      O => U3_Mmux_M2a_mux0000_72_1198
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_20_Q_197,
      I2 => M1a_10_Q,
      O => U3_Mmux_M2a_mux0000_81_1204
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_1204,
      I1 => U3_Mmux_M2a_mux0000_72_1198,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_1212,
      I1 => U3_Mmux_M2a_mux0000_82_1205,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_1200
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_1200,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_1189
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_1189,
      I1 => U3_Mmux_M2a_mux0000_4_f6_1186,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_1185
    );
  U3_Mmux_M2a_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_12_Q_193,
      I2 => M2a_13_Q_194,
      O => U3_Mmux_M2a_mux0000_83_1206
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_1206,
      I1 => U3_Mmux_M2a_mux0000_73_1199,
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
      I2 => M1a_20_Q_88,
      O => U3_Mmux_M2a_mux0000_84_1207
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_1213
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_1213,
      I1 => U3_Mmux_M2a_mux0000_84_1207,
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
      O => U3_Mmux_M2a_mux0000_85_1208
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_1214,
      I1 => U3_Mmux_M2a_mux0000_85_1208,
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
      O => U3_Mmux_M2a_mux0000_93_1215
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_1184,
      I1 => U3_Mmux_M2a_mux0000_93_1215,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_1211
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_1211,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_1195
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_1195,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_1187
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_1187,
      I1 => U3_Mmux_M2a_mux0000_3_f7_1185,
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
      O => U3_Mmux_M1_mux0000_6_1098
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_1103
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_1103,
      I1 => U3_Mmux_M1_mux0000_6_1098,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_1095
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_1104
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_1110
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_1110,
      I1 => U3_Mmux_M1_mux0000_71_1104,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_1099
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_1099,
      I1 => U3_Mmux_M1_mux0000_5_f5_1095,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_1093
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_1105
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_20_Q,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_1111
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_1111,
      I1 => U3_Mmux_M1_mux0000_72_1105,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_18_Q,
      I2 => M1_19_Q_11,
      O => U3_Mmux_M1_mux0000_82_1112
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_1118,
      I1 => U3_Mmux_M1_mux0000_82_1112,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_1107
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_1107,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_1096
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_1096,
      I1 => U3_Mmux_M1_mux0000_4_f6_1093,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_1092
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_14_Q,
      I2 => M1_15_Q_9,
      O => U3_Mmux_M1_mux0000_73_1106
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_1113,
      I1 => U3_Mmux_M1_mux0000_73_1106,
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
      I2 => M1_11_Q_5,
      O => U3_Mmux_M1_mux0000_84_1115
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_8_Q,
      I2 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_1119
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_1119,
      I1 => U3_Mmux_M1_mux0000_84_1115,
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
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_6_Q,
      I2 => M1_4_Q,
      O => U3_Mmux_M1_mux0000_85_1116
    );
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_4_Q,
      I2 => M1_5_Q_70,
      O => U3_Mmux_M1_mux0000_92_1120
    );
  U3_Mmux_M1_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_92_1120,
      I1 => U3_Mmux_M1_mux0000_85_1116,
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
      O => U3_Mmux_M1_mux0000_93_1121
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_1091
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_1091,
      I1 => U3_Mmux_M1_mux0000_93_1121,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_1117
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_1117,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_1102
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_1102,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_1094
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_1094,
      I1 => U3_Mmux_M1_mux0000_3_f7_1092,
      S => U3_xpix1(4),
      O => U3_M1_mux0000
    );
  U3_Mmux_tank110sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(6),
      I2 => sig_tank110sM(7),
      O => U3_Mmux_tank110sM_mux0000_4_1217
    );
  U3_Mmux_tank110sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(4),
      I2 => sig_tank110sM(5),
      O => U3_Mmux_tank110sM_mux0000_5_1219
    );
  U3_Mmux_tank110sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_5_1219,
      I1 => U3_Mmux_tank110sM_mux0000_4_1217,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_3_f5_1216
    );
  U3_Mmux_tank110sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(2),
      I2 => sig_tank110sM(3),
      O => U3_Mmux_tank110sM_mux0000_51_1220
    );
  U3_Mmux_tank110sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(0),
      I2 => sig_tank110sM(1),
      O => U3_Mmux_tank110sM_mux0000_6_1221
    );
  U3_Mmux_tank110sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_6_1221,
      I1 => U3_Mmux_tank110sM_mux0000_51_1220,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_4_f5_1218
    );
  U3_Mmux_tank110sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_4_f5_1218,
      I1 => U3_Mmux_tank110sM_mux0000_3_f5_1216,
      S => U2_hcs(2),
      O => U3_tank110sM_mux0000
    );
  U3_Mmux_M2_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_30_Q,
      I2 => M1_0_Q,
      O => U3_Mmux_M2_mux0000_6_1161
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_28_Q,
      I2 => M1_2_Q,
      O => U3_Mmux_M2_mux0000_7_1166
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_1166,
      I1 => U3_Mmux_M2_mux0000_6_1161,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_1158
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_26_Q_156,
      I2 => M1_4_Q,
      O => U3_Mmux_M2_mux0000_71_1167
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_4_Q,
      I2 => M1_6_Q,
      O => U3_Mmux_M2_mux0000_8_1173
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_1173,
      I1 => U3_Mmux_M2_mux0000_71_1167,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_1162
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_1162,
      I1 => U3_Mmux_M2_mux0000_5_f5_1158,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_1156
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_22_Q,
      I2 => M1_8_Q,
      O => U3_Mmux_M2_mux0000_72_1168
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_11_Q_5,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_1174
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_1174,
      I1 => U3_Mmux_M2_mux0000_72_1168,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_13_Q_6,
      I2 => M2_19_Q_147,
      O => U3_Mmux_M2_mux0000_82_1175
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_16_Q_146,
      I2 => M1_14_Q,
      O => U3_Mmux_M2_mux0000_9_1180
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_1180,
      I1 => U3_Mmux_M2_mux0000_82_1175,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_1170
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_1170,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_1159
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_1159,
      I1 => U3_Mmux_M2_mux0000_4_f6_1156,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_1155
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_14_Q,
      I2 => M2_15_Q_145,
      O => U3_Mmux_M2_mux0000_73_1169
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_19_Q_11,
      I2 => M1_18_Q,
      O => U3_Mmux_M2_mux0000_83_1176
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_1176,
      I1 => U3_Mmux_M2_mux0000_73_1169,
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
      I2 => M1_20_Q,
      O => U3_Mmux_M2_mux0000_84_1177
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_1181
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_1181,
      I1 => U3_Mmux_M2_mux0000_84_1177,
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
      O => U3_Mmux_M2_mux0000_85_1178
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_1182
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_1182,
      I1 => U3_Mmux_M2_mux0000_85_1178,
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
      O => U3_Mmux_M2_mux0000_93_1183
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_0_Q,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_1154
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_1154,
      I1 => U3_Mmux_M2_mux0000_93_1183,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_1179
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_1179,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_1165
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_1165,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_1157
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_1157,
      I1 => U3_Mmux_M2_mux0000_3_f7_1155,
      S => U3_xpix2(4),
      O => U3_M2_mux0000
    );
  U3_Madd_tank1rom1s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(8),
      LI => U3_Madd_tank1rom1s_cy_9_rt_763,
      O => sig_tank1rom1s(9)
    );
  U3_Madd_tank1rom1s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(8),
      DI => N0,
      S => U3_Madd_tank1rom1s_cy_9_rt_763,
      O => sig_tank1rom1s(10)
    );
  U3_Madd_tank1rom1s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(7),
      LI => U3_Madd_tank1rom1s_cy_8_rt_762,
      O => sig_tank1rom1s(8)
    );
  U3_Madd_tank1rom1s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(7),
      DI => N0,
      S => U3_Madd_tank1rom1s_cy_8_rt_762,
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
      DI => U3_ypix1(7),
      S => U3_Madd_tank1rom1s_lut(7),
      O => U3_Madd_tank1rom1s_cy(7)
    );
  U3_Madd_tank1rom1s_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(7),
      I1 => sw_3_IBUF_1886,
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
      DI => U3_ypix1(6),
      S => U3_Madd_tank1rom1s_lut(6),
      O => U3_Madd_tank1rom1s_cy(6)
    );
  U3_Madd_tank1rom1s_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(6),
      I1 => sw_2_IBUF_1885,
      O => U3_Madd_tank1rom1s_lut(6)
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
      DI => U3_ypix1(5),
      S => U3_Madd_tank1rom1s_lut(5),
      O => U3_Madd_tank1rom1s_cy(5)
    );
  U3_Madd_tank1rom1s_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(5),
      I1 => sw_1_IBUF_1884,
      O => U3_Madd_tank1rom1s_lut(5)
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
      DI => rom1_addr(4),
      S => U3_Madd_tank1rom1s_lut(4),
      O => U3_Madd_tank1rom1s_cy(4)
    );
  U3_Madd_tank1rom1s_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sw_0_IBUF_1883,
      O => U3_Madd_tank1rom1s_lut(4)
    );
  U3_Madd_tank1rom10s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      LI => U3_Madd_tank1rom10s_cy_9_rt_752,
      O => sig_tank1rom10s(9)
    );
  U3_Madd_tank1rom10s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      DI => N0,
      S => U3_Madd_tank1rom10s_cy_9_rt_752,
      O => sig_tank1rom10s(10)
    );
  U3_Madd_tank1rom10s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      LI => U3_Madd_tank1rom10s_cy_8_rt_751,
      O => sig_tank1rom10s(8)
    );
  U3_Madd_tank1rom10s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      DI => N0,
      S => U3_Madd_tank1rom10s_cy_8_rt_751,
      O => U3_Madd_tank1rom10s_cy(8)
    );
  U3_Madd_tank1rom10s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      LI => U3_Madd_tank1rom10s_lut(7),
      O => sig_tank1rom10s(7)
    );
  U3_Madd_tank1rom10s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      DI => U3_ypix1(7),
      S => U3_Madd_tank1rom10s_lut(7),
      O => U3_Madd_tank1rom10s_cy(7)
    );
  U3_Madd_tank1rom10s_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(7),
      I1 => sw_7_IBUF_1890,
      O => U3_Madd_tank1rom10s_lut(7)
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
      DI => U3_ypix1(6),
      S => U3_Madd_tank1rom10s_lut(6),
      O => U3_Madd_tank1rom10s_cy(6)
    );
  U3_Madd_tank1rom10s_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(6),
      I1 => sw_6_IBUF_1889,
      O => U3_Madd_tank1rom10s_lut(6)
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
      DI => U3_ypix1(5),
      S => U3_Madd_tank1rom10s_lut(5),
      O => U3_Madd_tank1rom10s_cy(5)
    );
  U3_Madd_tank1rom10s_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix1(5),
      I1 => sw_5_IBUF_1888,
      O => U3_Madd_tank1rom10s_lut(5)
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
      DI => rom1_addr(4),
      S => U3_Madd_tank1rom10s_lut(4),
      O => U3_Madd_tank1rom10s_cy(4)
    );
  U3_Madd_tank1rom10s_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sw_4_IBUF_1887,
      O => U3_Madd_tank1rom10s_lut(4)
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
      S => U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_956,
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
      S => U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_907,
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy(1)
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_905,
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
      S => U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_888,
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
  U3_Msub_ypix1_sub0000_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(8),
      LI => U3_Msub_ypix1_sub0000_lut_9_Q,
      O => U3_ypix1(9)
    );
  U3_Msub_ypix1_sub0000_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(7),
      LI => U3_Msub_ypix1_sub0000_cy_8_rt_1282,
      O => U3_ypix1(8)
    );
  U3_Msub_ypix1_sub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(7),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_8_rt_1282,
      O => U3_Msub_ypix1_sub0000_cy(8)
    );
  U3_Msub_ypix1_sub0000_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(6),
      LI => U3_Msub_ypix1_sub0000_lut_7_Q,
      O => U3_ypix1(7)
    );
  U3_Msub_ypix1_sub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(6),
      DI => N1,
      S => U3_Msub_ypix1_sub0000_lut_7_Q,
      O => U3_Msub_ypix1_sub0000_cy(7)
    );
  U3_Msub_ypix1_sub0000_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(5),
      LI => U3_Msub_ypix1_sub0000_cy_6_rt_1279,
      O => U3_ypix1(6)
    );
  U3_Msub_ypix1_sub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(5),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_6_rt_1279,
      O => U3_Msub_ypix1_sub0000_cy(6)
    );
  U3_Msub_ypix1_sub0000_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(4),
      LI => U3_Msub_ypix1_sub0000_cy_5_rt_1277,
      O => U3_ypix1(5)
    );
  U3_Msub_ypix1_sub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(4),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_5_rt_1277,
      O => U3_Msub_ypix1_sub0000_cy(5)
    );
  U3_Msub_ypix1_sub0000_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(3),
      LI => U3_Msub_ypix1_sub0000_cy_4_rt_1275,
      O => rom1_addr(4)
    );
  U3_Msub_ypix1_sub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(3),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_4_rt_1275,
      O => U3_Msub_ypix1_sub0000_cy(4)
    );
  U3_Msub_ypix1_sub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(2),
      LI => U3_Msub_ypix1_sub0000_cy_3_rt_1273,
      O => rom1_addr(3)
    );
  U3_Msub_ypix1_sub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(2),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_3_rt_1273,
      O => U3_Msub_ypix1_sub0000_cy(3)
    );
  U3_Msub_ypix1_sub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(1),
      LI => U3_Msub_ypix1_sub0000_cy_2_rt_1271,
      O => rom1_addr(2)
    );
  U3_Msub_ypix1_sub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(1),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_2_rt_1271,
      O => U3_Msub_ypix1_sub0000_cy(2)
    );
  U3_Msub_ypix1_sub0000_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(0),
      LI => U3_Msub_ypix1_sub0000_cy_1_rt_1269,
      O => rom1_addr(1)
    );
  U3_Msub_ypix1_sub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_sub0000_cy(0),
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_1_rt_1269,
      O => U3_Msub_ypix1_sub0000_cy(1)
    );
  U3_Msub_ypix1_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_ypix1_sub0000_cy_0_rt_1267,
      O => rom1_addr(0)
    );
  U3_Msub_ypix1_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_ypix1_sub0000_cy_0_rt_1267,
      O => U3_Msub_ypix1_sub0000_cy(0)
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
      LI => U3_Mcount_q_xor_17_rt_1044,
      O => U3_Result(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_1024,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_1024,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_1022,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_1022,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_1020,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_1020,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_1018,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_1018,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_1016,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_1016,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_1014,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_1014,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_1012,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_1012,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_1042,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_1042,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_1040,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_1040,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_1038,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_1038,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_1036,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_1036,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_1034,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_1034,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_1032,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_1032,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_1030,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_1030,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_1028,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_1028,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_1026,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_1026,
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
  U3_Msub_ypix1_addsub0000_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(8),
      LI => U3_Msub_ypix1_addsub0000_lut_9_1,
      O => U3_ypix1_addsub0000(9)
    );
  U3_Msub_ypix1_addsub0000_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(7),
      LI => U3_Msub_ypix1_addsub0000_lut(8),
      O => U3_ypix1_addsub0000(8)
    );
  U3_Msub_ypix1_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(7),
      DI => N1,
      S => U3_Msub_ypix1_addsub0000_lut(8),
      O => U3_Msub_ypix1_addsub0000_cy(8)
    );
  U3_Msub_ypix1_addsub0000_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(6),
      LI => U3_Msub_ypix1_addsub0000_lut(7),
      O => U3_ypix1_addsub0000(7)
    );
  U3_Msub_ypix1_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(6),
      DI => N1,
      S => U3_Msub_ypix1_addsub0000_lut(7),
      O => U3_Msub_ypix1_addsub0000_cy(7)
    );
  U3_Msub_ypix1_addsub0000_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(5),
      LI => U3_Msub_ypix1_addsub0000_lut(6),
      O => U3_ypix1_addsub0000(6)
    );
  U3_Msub_ypix1_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(5),
      DI => N1,
      S => U3_Msub_ypix1_addsub0000_lut(6),
      O => U3_Msub_ypix1_addsub0000_cy(6)
    );
  U3_Msub_ypix1_addsub0000_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(4),
      LI => U3_Msub_ypix1_addsub0000_lut(5),
      O => U3_ypix1_addsub0000(5)
    );
  U3_Msub_ypix1_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(4),
      DI => N1,
      S => U3_Msub_ypix1_addsub0000_lut(5),
      O => U3_Msub_ypix1_addsub0000_cy(5)
    );
  U3_Msub_ypix1_addsub0000_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(3),
      LI => U3_Msub_ypix1_addsub0000_cy_4_rt_1255,
      O => U3_ypix1_addsub0000(4)
    );
  U3_Msub_ypix1_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(3),
      DI => N0,
      S => U3_Msub_ypix1_addsub0000_cy_4_rt_1255,
      O => U3_Msub_ypix1_addsub0000_cy(4)
    );
  U3_Msub_ypix1_addsub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(2),
      LI => U3_Msub_ypix1_addsub0000_cy_3_rt_1253,
      O => U3_ypix1_addsub0000(3)
    );
  U3_Msub_ypix1_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(2),
      DI => N0,
      S => U3_Msub_ypix1_addsub0000_cy_3_rt_1253,
      O => U3_Msub_ypix1_addsub0000_cy(3)
    );
  U3_Msub_ypix1_addsub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(1),
      LI => U3_Msub_ypix1_addsub0000_cy_2_rt_1251,
      O => U3_ypix1_addsub0000(2)
    );
  U3_Msub_ypix1_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(1),
      DI => N0,
      S => U3_Msub_ypix1_addsub0000_cy_2_rt_1251,
      O => U3_Msub_ypix1_addsub0000_cy(2)
    );
  U3_Msub_ypix1_addsub0000_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(0),
      LI => U3_Msub_ypix1_addsub0000_cy_1_rt_1249,
      O => U3_ypix1_addsub0000(1)
    );
  U3_Msub_ypix1_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_ypix1_addsub0000_cy(0),
      DI => N0,
      S => U3_Msub_ypix1_addsub0000_cy_1_rt_1249,
      O => U3_Msub_ypix1_addsub0000_cy(1)
    );
  U3_Msub_ypix1_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_956,
      O => U3_ypix1_addsub0000(0)
    );
  U3_Msub_ypix1_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_ypix1_addsub0000_cy_0_rt_1247,
      O => U3_Msub_ypix1_addsub0000_cy(0)
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
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(17),
      Q => U3_q_171
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(16),
      Q => U3_Q_16_1303
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(15),
      Q => U3_Q_15_1302
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(14),
      Q => U3_Q_14_1301
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(13),
      Q => U3_Q_13_1300
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(12),
      Q => U3_Q_12_1299
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(11),
      Q => U3_Q_11_1298
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(10),
      Q => U3_Q_10_1297
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(9),
      Q => U3_Q_9_1311
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(8),
      Q => U3_Q_8_1310
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(7),
      Q => U3_Q_7_1309
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(6),
      Q => U3_Q_6_1308
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(5),
      Q => U3_Q_5_1307
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(4),
      Q => U3_Q_4_1306
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(3),
      Q => U3_Q_3_1305
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(2),
      Q => U3_Q_2_1304
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(1),
      Q => U3_Q_1_1296
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => U3_Result(0),
      Q => U3_Q_0_1295
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
  U3_B : LDE_1
    port map (
      D => U3_B_mux0012,
      G => U3_B_and0000,
      GE => vidon,
      Q => U3_B_675
    );
  x7_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank1_angle_calc(0),
      I2 => U3_tank1_angle_calc(4),
      O => x7_Mmux_digit_3_2063
    );
  x7_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(0),
      I2 => U3_tank2_angle_calc(4),
      O => x7_Mmux_digit_4_2067
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_2067,
      I1 => x7_Mmux_digit_3_2063,
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
      O => x7_Mmux_digit_31_2064
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(5),
      O => x7_Mmux_digit_41_2068
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_2068,
      I1 => x7_Mmux_digit_31_2064,
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
      O => x7_Mmux_digit_32_2065
    );
  x7_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(2),
      I2 => U3_tank2_angle_calc(6),
      O => x7_Mmux_digit_42_2069
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => x7_Mmux_digit_42_2069,
      I1 => x7_Mmux_digit_32_2065,
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
      O => x7_Mmux_digit_33_2066
    );
  x7_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(7),
      O => x7_Mmux_digit_43_2070
    );
  x7_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => x7_Mmux_digit_43_2070,
      I1 => x7_Mmux_digit_33_2066,
      S => x7_clkdiv(19),
      O => x7_digit(3)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_2062,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_2042,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_2042,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_2040,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_2040,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_2038,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_2038,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_2036,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_2036,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_2034,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_2034,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_2032,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_2032,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_2030,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_2030,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_2028,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_2028,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_2026,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_2026,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_2060,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_2060,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_2058,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_2058,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_2056,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_2056,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_2054,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_2054,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_2052,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_2052,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_2050,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_2050,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_2048,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_2048,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_2046,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_2046,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_2044,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_2044,
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
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  screenstate_Mcount_sig_hill3_xor_7_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(6),
      LI => screenstate_Mcount_sig_hill3_xor_7_rt_1716,
      O => screenstate_Result(7)
    );
  screenstate_Mcount_sig_hill3_xor_6_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(5),
      LI => screenstate_Mcount_sig_hill3_cy_6_rt_1704,
      O => screenstate_Result(6)
    );
  screenstate_Mcount_sig_hill3_cy_6_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(5),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_6_rt_1704,
      O => screenstate_Mcount_sig_hill3_cy(6)
    );
  screenstate_Mcount_sig_hill3_xor_5_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(4),
      LI => screenstate_Mcount_sig_hill3_cy_5_rt_1702,
      O => screenstate_Result(5)
    );
  screenstate_Mcount_sig_hill3_cy_5_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(4),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_5_rt_1702,
      O => screenstate_Mcount_sig_hill3_cy(5)
    );
  screenstate_Mcount_sig_hill3_xor_4_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(3),
      LI => screenstate_Mcount_sig_hill3_cy_4_rt_1700,
      O => screenstate_Result(4)
    );
  screenstate_Mcount_sig_hill3_cy_4_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(3),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_4_rt_1700,
      O => screenstate_Mcount_sig_hill3_cy(4)
    );
  screenstate_Mcount_sig_hill3_xor_3_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(2),
      LI => screenstate_Mcount_sig_hill3_cy_3_rt_1698,
      O => screenstate_Result(3)
    );
  screenstate_Mcount_sig_hill3_cy_3_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(2),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_3_rt_1698,
      O => screenstate_Mcount_sig_hill3_cy(3)
    );
  screenstate_Mcount_sig_hill3_xor_2_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(1),
      LI => screenstate_Mcount_sig_hill3_cy_2_rt_1696,
      O => screenstate_Result(2)
    );
  screenstate_Mcount_sig_hill3_cy_2_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(1),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_2_rt_1696,
      O => screenstate_Mcount_sig_hill3_cy(2)
    );
  screenstate_Mcount_sig_hill3_xor_1_Q : XORCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(0),
      LI => screenstate_Mcount_sig_hill3_cy_1_rt_1694,
      O => screenstate_Result(1)
    );
  screenstate_Mcount_sig_hill3_cy_1_Q : MUXCY
    port map (
      CI => screenstate_Mcount_sig_hill3_cy(0),
      DI => N0,
      S => screenstate_Mcount_sig_hill3_cy_1_rt_1694,
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
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_7,
      Q => screenstate_sig_hill3(7)
    );
  screenstate_sig_hill3_6 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_6,
      Q => screenstate_sig_hill3(6)
    );
  screenstate_sig_hill3_5 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_5,
      Q => screenstate_sig_hill3(5)
    );
  screenstate_sig_hill3_4 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_4,
      Q => screenstate_sig_hill3(4)
    );
  screenstate_sig_hill3_3 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_3,
      Q => screenstate_sig_hill3(3)
    );
  screenstate_sig_hill3_2 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_2,
      Q => screenstate_sig_hill3(2)
    );
  screenstate_sig_hill3_1 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_1,
      Q => screenstate_sig_hill3(1)
    );
  screenstate_sig_hill3_0 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_Mcount_sig_hill3_eqn_0,
      Q => screenstate_sig_hill3(0)
    );
  screenstate_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_1557,
      D => N1,
      PRE => btn_3_IBUF_1524,
      Q => screenstate_present_state_FSM_FFd2_1731
    );
  screenstate_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_1557,
      CLR => btn_3_IBUF_1524,
      D => screenstate_present_state_FSM_FFd1_In,
      Q => screenstate_present_state_FSM_FFd1_1729
    );
  screenstate_sig_hill5_7 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(7),
      Q => screenstate_sig_hill5(7)
    );
  screenstate_sig_hill5_6 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(6),
      Q => screenstate_sig_hill5(6)
    );
  screenstate_sig_hill5_5 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(5),
      Q => screenstate_sig_hill5(5)
    );
  screenstate_sig_hill5_4 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(4),
      Q => screenstate_sig_hill5(4)
    );
  screenstate_sig_hill5_3 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(3),
      Q => screenstate_sig_hill5(3)
    );
  screenstate_sig_hill5_2 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_addsub0000(2),
      Q => screenstate_sig_hill5(2)
    );
  screenstate_sig_hill5_1 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill5_mux0001(6),
      Q => screenstate_sig_hill5(1)
    );
  screenstate_sig_hill4_7 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(0),
      Q => screenstate_sig_hill4(7)
    );
  screenstate_sig_hill4_6 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(1),
      Q => screenstate_sig_hill4(6)
    );
  screenstate_sig_hill4_5 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(2),
      Q => screenstate_sig_hill4(5)
    );
  screenstate_sig_hill4_4 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(3),
      Q => screenstate_sig_hill4(4)
    );
  screenstate_sig_hill4_3 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(4),
      Q => screenstate_sig_hill4(3)
    );
  screenstate_sig_hill4_2 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(5),
      Q => screenstate_sig_hill4(2)
    );
  screenstate_sig_hill4_1 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(6),
      Q => screenstate_sig_hill4(1)
    );
  screenstate_sig_hill4_0 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill4_mux0001(7),
      Q => screenstate_sig_hill4(0)
    );
  screenstate_sig_hill1_7 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(7),
      Q => screenstate_sig_hill1(7)
    );
  screenstate_sig_hill1_6 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(6),
      Q => screenstate_sig_hill1(6)
    );
  screenstate_sig_hill1_5 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(5),
      Q => screenstate_sig_hill1(5)
    );
  screenstate_sig_hill1_4 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(4),
      Q => screenstate_sig_hill1(4)
    );
  screenstate_sig_hill1_3 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(3),
      Q => screenstate_sig_hill1(3)
    );
  screenstate_sig_hill1_2 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_addsub0000(2),
      Q => screenstate_sig_hill1(2)
    );
  screenstate_sig_hill1_1 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill1_mux0001(6),
      Q => screenstate_sig_hill1(1)
    );
  screenstate_sig_hill2_7 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(7),
      Q => screenstate_sig_hill2(7)
    );
  screenstate_sig_hill2_6 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(6),
      Q => screenstate_sig_hill2(6)
    );
  screenstate_sig_hill2_5 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(5),
      Q => screenstate_sig_hill2(5)
    );
  screenstate_sig_hill2_4 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(4),
      Q => screenstate_sig_hill2(4)
    );
  screenstate_sig_hill2_3 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_addsub0000(3),
      Q => screenstate_sig_hill2(3)
    );
  screenstate_sig_hill2_2 : FDE
    port map (
      C => mclk_BUFGP_1557,
      CE => screenstate_sig_hill1_and0001,
      D => screenstate_sig_hill2_mux0001(5),
      Q => screenstate_sig_hill2(2)
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
      LI => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_1898,
      O => sig_romTitle_addr14(13)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_13_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(12),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_1898,
      O => title_Madd_rom_addr2_add0000_Madd_cy(13)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(11),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_1896,
      O => sig_romTitle_addr14(12)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(11),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_1896,
      O => title_Madd_rom_addr2_add0000_Madd_cy(12)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(10),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_1894,
      O => sig_romTitle_addr14(11)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(10),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_1894,
      O => title_Madd_rom_addr2_add0000_Madd_cy(11)
    );
  title_Madd_rom_addr2_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(9),
      LI => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_1892,
      O => sig_romTitle_addr14(10)
    );
  title_Madd_rom_addr2_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_add0000_Madd_cy(9),
      DI => N0,
      S => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_1892,
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
      LI => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1928,
      O => title_rom_addr2_addsub0001(13)
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => title_Madd_rom_addr2_addsub0001_Madd_cy(11),
      DI => N0,
      S => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1928,
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
      LI => title_Msub_ypix_xor_6_11_1967,
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
      LI => U3_Msub_ypix1_addsub0000_lut(9),
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
      LI => title_Msub_ypix_addsub0000_cy_4_rt_1954,
      O => title_Msub_ypix_lut_4_Q
    );
  title_Msub_ypix_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(3),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_4_rt_1954,
      O => title_Msub_ypix_addsub0000_cy(4)
    );
  title_Msub_ypix_addsub0000_xor_3_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(2),
      LI => title_Msub_ypix_addsub0000_cy_3_rt_1952,
      O => title_Msub_ypix_cy(3)
    );
  title_Msub_ypix_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(2),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_3_rt_1952,
      O => title_Msub_ypix_addsub0000_cy(3)
    );
  title_Msub_ypix_addsub0000_xor_2_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(1),
      LI => title_Msub_ypix_addsub0000_cy_2_rt_1950,
      O => title_ypix_addsub0000_2_Q
    );
  title_Msub_ypix_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(1),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_2_rt_1950,
      O => title_Msub_ypix_addsub0000_cy(2)
    );
  title_Msub_ypix_addsub0000_xor_1_Q : XORCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(0),
      LI => title_Msub_ypix_addsub0000_cy_1_rt_1948,
      O => title_ypix_addsub0000_1_Q
    );
  title_Msub_ypix_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => title_Msub_ypix_addsub0000_cy(0),
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_1_rt_1948,
      O => title_Msub_ypix_addsub0000_cy(1)
    );
  title_Msub_ypix_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_905,
      O => title_ypix_addsub0000_0_Q
    );
  title_Msub_ypix_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => title_Msub_ypix_addsub0000_cy_0_rt_1946,
      O => title_Msub_ypix_addsub0000_cy(0)
    );
  bounce_delay3_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(7),
      Q => bounce_delay3(7)
    );
  bounce_delay3_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(6),
      Q => bounce_delay3(6)
    );
  bounce_delay3_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(5),
      Q => bounce_delay3(5)
    );
  bounce_delay3_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(4),
      Q => bounce_delay3(4)
    );
  bounce_delay3_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(3),
      Q => bounce_delay3(3)
    );
  bounce_delay3_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(2),
      Q => bounce_delay3(2)
    );
  bounce_delay3_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(1),
      Q => bounce_delay3(1)
    );
  bounce_delay3_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay2(0),
      Q => bounce_delay3(0)
    );
  bounce_delay2_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(7),
      Q => bounce_delay2(7)
    );
  bounce_delay2_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(6),
      Q => bounce_delay2(6)
    );
  bounce_delay2_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(5),
      Q => bounce_delay2(5)
    );
  bounce_delay2_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(4),
      Q => bounce_delay2(4)
    );
  bounce_delay2_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(3),
      Q => bounce_delay2(3)
    );
  bounce_delay2_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(2),
      Q => bounce_delay2(2)
    );
  bounce_delay2_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(1),
      Q => bounce_delay2(1)
    );
  bounce_delay2_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => bounce_delay1(0),
      Q => bounce_delay2(0)
    );
  bounce_delay1_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_left_reg_1637,
      Q => bounce_delay1(7)
    );
  bounce_delay1_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_down_reg_1635,
      Q => bounce_delay1(6)
    );
  bounce_delay1_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_up_reg_1679,
      Q => bounce_delay1(5)
    );
  bounce_delay1_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_right_reg_1641,
      Q => bounce_delay1(4)
    );
  bounce_delay1_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_sel_reg_1675,
      Q => bounce_delay1(3)
    );
  bounce_delay1_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_start_reg_1677,
      Q => bounce_delay1(2)
    );
  bounce_delay1_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_b_reg_1620,
      Q => bounce_delay1(1)
    );
  bounce_delay1_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_1524,
      D => nes_a_reg_1618,
      Q => bounce_delay1(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_1605,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_1593,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_1593,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_1591,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_1591,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_1589,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_1589,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_1587,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_1587,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_1585,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_1585,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_1583,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_1583,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_1581,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_1581,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_1579,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_1579,
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
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_1576,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_1574,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_1574,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_1572,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_1572,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_1570,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_1570,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_1568,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_1568,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_1566,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_1566,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_1564,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_1564,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_1562,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_1562,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_1560,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_1560,
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
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1524,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_1641
    );
  nes_b_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_b_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_b_reg_1620
    );
  nes_sel_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_sel_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_sel_reg_1675
    );
  nes_start_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_start_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_start_reg_1677
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_1618
    );
  nes_up_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_1679
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1524,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_1635
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_1637
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_1491
    );
  bounce_outp_7_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(7),
      I1 => bounce_delay2(7),
      I2 => bounce_delay1(7),
      O => ld_7_OBUF_1555
    );
  bounce_outp_6_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(6),
      I1 => bounce_delay2(6),
      I2 => bounce_delay1(6),
      O => ld_6_OBUF_1554
    );
  bounce_outp_5_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(5),
      I1 => bounce_delay2(5),
      I2 => bounce_delay1(5),
      O => ld_5_OBUF_1553
    );
  bounce_outp_4_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(4),
      I1 => bounce_delay2(4),
      I2 => bounce_delay1(4),
      O => ld_4_OBUF_1552
    );
  bounce_outp_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(3),
      I1 => bounce_delay2(3),
      I2 => bounce_delay1(3),
      O => ld_3_OBUF_1551
    );
  bounce_outp_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(2),
      I1 => bounce_delay2(2),
      I2 => bounce_delay1(2),
      O => ld_2_OBUF_1550
    );
  bounce_outp_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(1),
      I1 => bounce_delay2(1),
      I2 => bounce_delay1(1),
      O => ld_1_OBUF_1549
    );
  bounce_outp_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      O => ld_0_OBUF_1548
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_1533
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
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_2_OBUF_1550,
      I2 => screenstate_present_state_FSM_FFd2_1731,
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
      I0 => who_present_state_FSM_FFd2_2022,
      I1 => who_present_state_FSM_FFd1_2021,
      I2 => ld_0_OBUF_1548,
      I3 => screenstate_present_state_FSM_FFd1_1729,
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
      O => an_3_OBUF_1494
    );
  screenstate_sig_hill1_and00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd2_1731,
      I1 => screenstate_present_state_FSM_FFd1_1729,
      I2 => btn_3_IBUF_1524,
      O => screenstate_sig_hill1_and0001
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      O => N2
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_N2,
      I2 => U2_vcs(2),
      I3 => N2,
      O => vsync_OBUF_2020
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
      O => x7_an_2_mux000128_2095
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
      O => nes_nes_clk31_1640
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
      INIT => X"C6CC"
    )
    port map (
      I0 => screenstate_sig_hill5(5),
      I1 => screenstate_sig_hill5(7),
      I2 => screenstate_sig_hill5_addsub0000_5_bdd0,
      I3 => screenstate_sig_hill5(6),
      O => screenstate_sig_hill5_addsub0000(7)
    );
  screenstate_Madd_sig_hill2_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => screenstate_sig_hill2(6),
      I1 => screenstate_sig_hill2(7),
      I2 => screenstate_sig_hill2(5),
      I3 => screenstate_N30,
      O => screenstate_sig_hill2_addsub0000(7)
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_5_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => screenstate_sig_hill1(4),
      I1 => screenstate_sig_hill1(5),
      I2 => screenstate_sig_hill1(3),
      I3 => N515,
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
      O => a_to_g_2_OBUF_1482
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
      O => a_to_g_4_OBUF_1484
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
      O => a_to_g_1_OBUF_1481
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
      O => a_to_g_5_OBUF_1485
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
      O => a_to_g_0_OBUF_1480
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
      O => a_to_g_3_OBUF_1483
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
      O => a_to_g_6_OBUF_1486
    );
  x7_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => x7_an_1_mux00012_2092
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
      O => x7_an_1_mux000115_2091
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
      O => x7_an_1_mux000152_2094
    );
  x7_an_1_mux000172 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => x7_an_1_mux00012_2092,
      I1 => x7_an_1_mux000115_2091,
      I2 => x7_an_1_mux000128,
      I3 => x7_an_1_mux000152_2094,
      O => an_1_OBUF_1492
    );
  screenstate_Mcount_sig_hill3_eqn_0122 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N512,
      I1 => screenstate_Mcount_sig_hill3_eqn_0121_1706,
      O => screenstate_N0
    );
  U3_tank2_angle_calc_and000017 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => sig_gameDown,
      I1 => sig_gameUp,
      I2 => who_present_state_FSM_FFd2_2022,
      I3 => U3_tank2_angle_calc(1),
      O => U3_tank2_angle_calc_and000017_1443
    );
  U3_tank2_angle_calc_and000029 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_tank2_angle_calc_and00003_1444,
      I1 => U3_tank2_angle_calc(6),
      I2 => U3_tank2_angle_calc_and000017_1443,
      I3 => U3_N50,
      O => U3_tank2_angle_calc_and0000
    );
  U3_tank1_angle_calc_and000021 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2022,
      I1 => sig_gameUp,
      I2 => U3_tank1_angle_calc(1),
      I3 => sig_gameDown,
      O => U3_tank1_angle_calc_and000021_1429
    );
  U3_tank1_angle_calc_and000034 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_tank1_angle_calc_and00003_1430,
      I1 => U3_tank1_angle_calc(6),
      I2 => U3_tank1_angle_calc_and000021_1429,
      I3 => U3_N49,
      O => U3_tank1_angle_calc_and0000
    );
  nes_up_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(2),
      I3 => N514,
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
      INIT => X"4"
    )
    port map (
      I0 => N525,
      I1 => U2_Result(0),
      O => U2_Mcount_vcs_eqn_0
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_6_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => screenstate_sig_hill1(6),
      I1 => N516,
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
      I0 => U2_hcs(0),
      I1 => U2_hcs(1),
      I2 => U2_hcs(9),
      I3 => N522,
      O => U2_hcs_cmp_eq00005_650
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N517,
      I1 => U2_hcs_cmp_eq00005_650,
      O => U2_hcs_cmp_eq0000
    );
  U3_B_mux00124 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_spriteonB5,
      I2 => U3_N8,
      I3 => U3_blue_and0002,
      O => U3_B_mux00124_679
    );
  U3_B_mux001236 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U3_tank1Angle10s,
      I1 => U3_tank110sM_mux0000,
      I2 => U3_tank11sM_mux0000,
      I3 => U3_tank1Angle1s,
      O => U3_B_mux001236_678
    );
  U3_B_mux001254 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_blue_and0001,
      I1 => U3_blue_and0000,
      I2 => U3_spriteonGrnd,
      I3 => U3_B_mux001249_680,
      O => U3_B_mux001254_681
    );
  U3_B_mux001269 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonB1,
      I3 => U3_blue_and0002,
      O => U3_B_mux001269_682
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
      O => nes_scalar_next_cmp_eq000021_1664
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
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_661,
      I1 => U2_Result(1),
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
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_661,
      I1 => U2_Result(2),
      O => U2_Mcount_vcs_eqn_2
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
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_661,
      I1 => U2_Result(3),
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
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_661,
      I1 => U2_Result(4),
      O => U2_Mcount_vcs_eqn_4
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
      O => title_green_cmp_lt0000225_1972
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
      I0 => U2_vcs_cmp_eq0000_661,
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
      I0 => U2_vcs_cmp_eq0000_661,
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
      O => nes_counter_reg_cmp_eq0000125_1633
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_1633,
      I1 => N518,
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
      I0 => U2_vcs_cmp_eq0000_661,
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
      I0 => U2_vcs_cmp_eq0000_661,
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
      I0 => U2_vcs_cmp_eq0000_661,
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
      I3 => N523,
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
      I3 => N524,
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
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(1),
      I1 => U3_C2(4),
      I2 => U3_C2(2),
      I3 => U3_C2_not00011_714,
      O => U3_C2_not00016_718
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_715
    );
  U3_C2_not000186 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_C2_not000164_719,
      I1 => who_present_state_FSM_FFd2_2022,
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000123_716,
      O => U3_C2_not0001
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(0),
      I1 => U3_C1(1),
      O => U3_C1_not00015_700
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
      O => U3_C1_not000110_695
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1_not00015_700,
      I2 => U3_C1_not000110_695,
      I3 => U3_C1_not00014_698,
      O => U3_C1_not000127_697
    );
  U3_C1_not000152 : LUT4
    generic map(
      INIT => X"1300"
    )
    port map (
      I0 => U3_C1(1),
      I1 => U3_C1(2),
      I2 => U3_C1(0),
      I3 => U3_C1_not000147_699,
      O => U3_C1_not000152_701
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
      O => U3_C1_not0001105_696
    );
  U3_C1_not0001144 : LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2022,
      I1 => U3_C1_not0001105_696,
      I2 => U3_C1_not000127_697,
      I3 => U3_C1_not000183_702,
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
      O => screenstate_sig_hill4_mux0001_1_115_1778
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
      O => screenstate_sig_hill4_mux0001_1_128_1779
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
      O => U3_N50
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
      O => U3_N49
    );
  U3_Madd_tank2_angle_calc_addsub0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => U3_tank2_angle_calc(4),
      I2 => N520,
      O => U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q
    );
  U3_Madd_tank1_angle_calc_addsub0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => U3_tank1_angle_calc(4),
      I2 => N521,
      O => U3_Madd_tank1_angle_calc_addsub0000_cy_5_Q
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
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_662
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
      O => U2_vidon_and00006_670
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_670,
      I2 => U2_vidon_and000018,
      I3 => U2_vidon_and00000_662,
      O => U2_vidon_and000039_669
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
      O => U2_vidon_and000080_673
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteonGrnd_and0000109,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U2_vidon_and0000105_663
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U2_vidon_and0000105_663,
      I1 => U2_vidon_and000080_673,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_664
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_669,
      I1 => U2_vidon_and0000117_664,
      O => vidon
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
      O => title_spriteon_and00006_2002
    );
  title_spriteon_and000016 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      O => title_spriteon_and000016_1994
    );
  title_spriteon_and000019 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => title_spriteon_and000016_1994,
      I2 => U2_vcs(4),
      I3 => title_spriteon_and00006_2002,
      O => title_spriteon_and000019_1997
    );
  title_spriteon_and000035 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(3),
      O => title_spriteon_and000035_1999
    );
  title_spriteon_and000038 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      O => title_spriteon_and000038_2000
    );
  title_spriteon_and000052 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => title_spriteon_and000035_1999,
      I2 => title_spriteon_and000038_2000,
      I3 => U2_hcs(7),
      O => title_spriteon_and000052_2001
    );
  title_spriteon_and000059 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      O => U3_spriteonB1_and000063
    );
  title_spriteon_and0000119 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      O => title_spriteon_and0000119_1992
    );
  title_spriteon_and0000124 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => title_spriteon_and0000119_1992,
      I1 => U2_hcs(6),
      I2 => title_spriteon_and000087,
      I3 => U2_hcs(5),
      O => title_spriteon_and0000124_1993
    );
  title_spriteon_and0000169 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => title_spriteon_and0000169_1995
    );
  title_spriteon_and0000178 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(5),
      O => title_spriteon_and0000178_1996
    );
  title_spriteon_and0000205 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => title_spriteon_and0000169_1995,
      I3 => title_spriteon_and0000178_1996,
      O => title_spriteon_and0000205_1998
    );
  U3_blue_and0001163 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      I2 => U2_vcs(7),
      I3 => U2_vcs(6),
      O => U3_blue_and0001163_1356
    );
  U3_blue_and0001166 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_blue_and0001137,
      I1 => U3_blue_and0001163_1356,
      I2 => U2_vcs(5),
      I3 => U3_blue_and0001117,
      O => U3_N57
    );
  title_Msub_ypix_xor_9_11 : LUT4
    generic map(
      INIT => X"E1C3"
    )
    port map (
      I0 => title_N7,
      I1 => title_ypix_addsub0000_8_Q,
      I2 => title_ypix_addsub0000_9_Q,
      I3 => title_Msub_ypix_lut_7_Q,
      O => title_ypix_9_Q
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
      INIT => X"0020"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      I2 => U2_hcs(7),
      I3 => U2_hcs(6),
      O => U3_spriteonB2_and000040_1382
    );
  U3_spriteonB2_and000059 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB2_cmp_ge0000,
      I2 => U3_spriteonB2_and000028,
      I3 => U3_spriteonB2_and000040_1382,
      O => U3_spriteonB2
    );
  U3_tank1Angle10s_cmp_gt00001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(8),
      I2 => U2_vcs(7),
      O => N21
    );
  U3_tank1Angle10s_cmp_gt00001 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => N21,
      I2 => U2_vcs(5),
      I3 => U2_vcs(4),
      O => U3_tank1Angle10s_cmp_gt0000
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
      O => U3_spriteonB3_cmp_le0000112_1388
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
      O => U3_spriteonB3_cmp_le0000128_1389
    );
  U3_spriteonGrnd_and000047 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => U3_spriteonGrnd_and000047_1404
    );
  U3_spriteonGrnd_and0000150 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonGrnd_and000026_1403,
      I2 => U3_spriteonGrnd_and000074_1405,
      I3 => U3_spriteonGrnd_and0000124_1402,
      O => U3_spriteonGrnd
    );
  title_Msub_ypix_xor_5_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => title_Msub_ypix_lut_4_Q,
      I1 => title_Msub_ypix_cy(3),
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
  U3_tank1Angle1s_and000036 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_vcs(9),
      I2 => U2_hcs(3),
      I3 => U2_hcs(5),
      O => U3_tank1Angle1s_and000036_1419
    );
  U3_tank1Angle1s_and000045 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1Angle10s_cmp_le00002,
      I1 => U3_tank1Angle1s_and000012_1418,
      I2 => U3_tank1Angle10s_cmp_gt0000,
      I3 => U3_tank1Angle1s_and000036_1419,
      O => U3_tank1Angle1s
    );
  U3_tank1Angle10s_and000042 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(6),
      I2 => U2_vcs(9),
      O => U3_tank1Angle10s_and000042_1412
    );
  title_Msub_ypix_xor_6_11 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => title_Msub_ypix_cy(3),
      I1 => title_ypix_addsub0000_6_Q,
      I2 => title_Msub_ypix_lut_4_Q,
      I3 => title_Msub_ypix_lut_5_Q,
      O => title_ypix_6_Q
    );
  title_Msub_ypix_xor_8_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => title_ypix_addsub0000_8_Q,
      I1 => title_N7,
      I2 => title_Msub_ypix_lut_7_Q,
      O => title_ypix_8_Q
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
  U3_Madd_spriteonB4_add0000_cy_3_11 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => screenstate_sig_hill4(2),
      I1 => screenstate_sig_hill4(1),
      I2 => screenstate_sig_hill4(3),
      I3 => screenstate_sig_hill4(0),
      O => U3_Madd_spriteonB4_add0000_cy_3_Q
    );
  U3_Madd_spriteonB3_add0000_cy_3_11 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => screenstate_sig_hill3(2),
      I1 => screenstate_sig_hill3(1),
      I2 => screenstate_sig_hill3(3),
      I3 => screenstate_sig_hill3(0),
      O => U3_Madd_spriteonB3_add0000_cy_3_Q
    );
  U3_B_mux0012112 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB3,
      O => U3_N8
    );
  U3_spriteonB3_and000036 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_spriteonB3_cmp_ge0000,
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U3_spriteonB3_and000020_1386,
      O => U3_spriteonB3
    );
  U3_spriteonB4_and000073 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB4_and000029_1392,
      I2 => U3_spriteonB4_cmp_ge0000,
      I3 => U3_spriteonB4_and000041_1394,
      O => U3_spriteonB4
    );
  U3_spriteonB5_and000063 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U2_hcs(7),
      O => U3_spriteonB5_and000063_1398
    );
  U3_spriteonB5_and000079 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_spriteonB5_cmp_ge0000,
      I1 => U3_spriteonB5_and000041_1397,
      I2 => U3_spriteonB5_and000063_1398,
      O => U3_spriteonB5
    );
  U3_spriteonB1_and000082 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_ge0000,
      I1 => U3_spriteonB1_and000048_1374,
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB1_and000063,
      O => U3_spriteonB1
    );
  U3_Madd_spriteon2f_add0002_xor_9_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_Madd_spriteon2f_add0002_cy(7),
      I1 => U3_C2(8),
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
  U3_Madd_spriteon2f_add0002_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(6),
      I2 => U3_C2(5),
      I3 => U3_C2(4),
      O => U3_Madd_spriteon2f_add0002_cy(7)
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
  M1_14_21 : LUT4
    generic map(
      INIT => X"7EFB"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => M1_14_bdd1
    );
  M1_27_11 : LUT4
    generic map(
      INIT => X"DD8B"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => rom1_addr(1),
      O => M1_27_bdd0
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"DD8B"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => rom1_addr(1),
      O => M2_4_bdd0
    );
  M1a_1_10 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(4),
      O => M1a_1_10_86
    );
  M1a_3_f5 : MUXF5
    port map (
      I0 => M1a_3_2_126,
      I1 => M1a_3_1_125,
      S => rom1_addr(4),
      O => M1a_3_Q
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
      O => M1a_29_58_121
    );
  M1a_29_60 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_58_121,
      I2 => M1a_29_32,
      O => M1a_29_Q
    );
  M1a_11_2 : LUT4
    generic map(
      INIT => X"6CEE"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => M1a_11_2_79
    );
  M1a_11_f5 : MUXF5
    port map (
      I0 => M1a_11_2_79,
      I1 => M1a_11_1_78,
      S => rom1_addr(4),
      O => M1a_11_Q
    );
  M1a_27_2 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => M1_27_bdd0,
      O => M1a_27_2_108
    );
  M1a_27_80 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => M1_22_bdd4,
      O => M1a_27_80_109
    );
  M1a_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N42,
      O => M1a_4_Q_127
    );
  M2_28_f5 : MUXF5
    port map (
      I0 => M1_3_2_68,
      I1 => M1_3_1_67,
      S => rom1_addr(4),
      O => M2_28_Q
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => M1_9_2_75,
      I1 => M1_9_1_74,
      S => rom1_addr(4),
      O => M2_22_Q
    );
  M1a_30_36 : LUT4
    generic map(
      INIT => X"068E"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M1_22_bdd12,
      I3 => M1_22_bdd7,
      O => M1a_30_36_123
    );
  M1a_28_19 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M1_22_bdd4,
      I2 => rom1_addr(1),
      I3 => M1_24_bdd4,
      O => M1a_28_19_112
    );
  M1a_28_69 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_28_65,
      I2 => M1a_28_19_112,
      I3 => M1a_28_31,
      O => M1a_28_Q
    );
  M1_27_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      O => M1_27_bdd4
    );
  M1_23_21 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => M1_23_bdd6,
      O => M1_23_bdd1
    );
  M2_15_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N62,
      O => M2_15_Q_145
    );
  M2_21_f5 : MUXF5
    port map (
      I0 => M2_21_2_154,
      I1 => M2_21_1_153,
      S => rom1_addr(4),
      O => M2_21_Q
    );
  M1_13_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      O => N82
    );
  M1_13_Q : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N80,
      I2 => M1_0_bdd2,
      I3 => N82,
      O => M1_13_Q_6
    );
  M2a_1_36 : LUT4
    generic map(
      INIT => X"068E"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M2_0_bdd16,
      I3 => M2_0_bdd9,
      O => M2a_1_36_195
    );
  M2a_1_64 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(1),
      I3 => M2_0_bdd1,
      O => M2a_1_64_196
    );
  M2a_3_19 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M2_3_bdd6,
      I2 => rom1_addr(1),
      I3 => M2_4_bdd4,
      O => M2a_3_19_207
    );
  M2a_3_69 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_28_65,
      I2 => M2a_3_19_207,
      I3 => M2a_3_31,
      O => M2a_3_Q
    );
  M2_1_98 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      O => M1_30_98
    );
  M2_3_0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      O => M1_28_0
    );
  M2_3_8 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_3_bdd6,
      I2 => M1_28_0,
      I3 => rom1_addr(4),
      O => M2_3_8_168
    );
  M2_3_50 : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_3_50_166
    );
  M2_3_310 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(2),
      O => M2_3_bdd6
    );
  M2_12_31 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      O => M1_10_bdd7
    );
  M2_10_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      O => M1_0_bdd2
    );
  M2_0_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      O => M2_0_bdd1
    );
  M2_3_54 : LUT3
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
  M2_8_21 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_3_bdd9,
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => M2_8_bdd1
    );
  M2_14_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N93,
      O => M1_14_Q
    );
  M2a_28_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_3_2_126,
      I2 => M1a_3_1_125,
      O => M2a_28_Q_199
    );
  M2a_2_61 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2a_1_64_196,
      I2 => M2a_2_32,
      O => M2a_2_Q
    );
  M1a_24_38 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_24_13_99,
      I2 => rom1_addr(3),
      I3 => M1a_24_bdd1,
      O => M1a_24_38_100
    );
  M2a_4_80 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => M2_3_bdd6,
      O => M2a_4_80_210
    );
  M1_28_46 : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1_28_46_51
    );
  selector_green_0_39 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => selector_green_0_20_1806,
      I2 => U3_blue_and0000,
      O => selector_green_0_39_1807
    );
  selector_green_0_76 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_71_1808,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(2),
      O => selector_green_0_76_1809
    );
  selector_green_0_80 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => selector_green_0_76_1809,
      I1 => U3_N13,
      I2 => selector_green_0_39_1807,
      O => green_0_OBUF_1529
    );
  M1_22_42 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      O => M1_22_bdd7
    );
  M2a_7_38 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2a_7_13_217,
      I2 => rom1_addr(3),
      I3 => M2a_6_bdd1,
      O => M2a_7_38_218
    );
  M1_23_37 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_23_bdd3,
      I2 => rom1_addr(3),
      I3 => M1_23_14_25,
      O => M1_23_37_26
    );
  M2_0_510 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      O => M2_0_bdd9
    );
  M1_21_52 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      O => M1_21_bdd8
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
      O => M2a_8_11_220
    );
  M2_8_37 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd3,
      I2 => rom1_addr(3),
      I3 => M2_8_14_186,
      O => M2_8_37_187
    );
  M1a_26_33 : LUT4
    generic map(
      INIT => X"AAE8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      I3 => rom1_addr(0),
      O => M1a_26_33_104
    );
  U3_tank2Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      O => N139
    );
  U3_tank2Angle_0_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(7),
      I2 => U3_tank2_angle_calc(5),
      I3 => N139,
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
      O => N141
    );
  U3_tank1Angle_0_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(7),
      I2 => U3_tank1_angle_calc(5),
      I3 => N141,
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
      O => N143
    );
  U3_tank2Angle_1_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank2_angle_calc(7),
      I1 => U3_tank2_angle_calc(5),
      I2 => U3_tank2_angle_calc(6),
      I3 => N143,
      O => M2_0_bdd6
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
      O => N145
    );
  U3_tank1Angle_1_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank1_angle_calc(7),
      I1 => U3_tank1_angle_calc(5),
      I2 => U3_tank1_angle_calc(6),
      I3 => N145,
      O => M1_22_bdd9
    );
  M2_4_21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => rom1_addr(2),
      O => M2_4_bdd4
    );
  M2_10_82 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd13,
      O => M2_10_bdd14
    );
  M1_22_210 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(2),
      O => M1_22_bdd4
    );
  U3_red_2_11 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => U3_N8,
      I1 => U3_spriteonGrnd,
      I2 => U3_N52,
      I3 => U3_blue_and0002,
      O => U3_red_2_11_1361
    );
  M2_5_25 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(1),
      O => M2_5_25_176
    );
  M2_5_58 : LUT4
    generic map(
      INIT => X"24FF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => rom1_addr(1),
      O => M2_5_58_177
    );
  M1_27_40 : LUT4
    generic map(
      INIT => X"C8E8"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => rom1_addr(0),
      O => M1_27_40_46
    );
  M1_27_127 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => M1_27_40_46,
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => M1_27_116_44,
      O => M1_27_127_45
    );
  M2a_5_111 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_5_bdd0,
      I2 => M2a_5_63_212,
      I3 => rom1_addr(4),
      O => M2a_5_111_211
    );
  M1_25_80 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_25_35_36,
      I2 => M1_24_bdd2,
      I3 => rom1_addr(3),
      O => M1_25_80_37
    );
  selector_red_0_10 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => U3_B_675,
      I1 => U3_N12,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB5,
      O => selector_red_0_10_1815
    );
  selector_red_0_24 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonGrnd,
      I2 => U3_spriteonB1,
      O => selector_red_0_24_1817
    );
  selector_red_0_37 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => selector_red_0_24_1817,
      I1 => U3_spriteonB3,
      I2 => selector_red_0_10_1815,
      I3 => U3_blue_and0002,
      O => selector_red_0_37_1818
    );
  selector_red_0_115 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => vidon,
      I1 => screenstate_present_state_FSM_FFd1_1729,
      I2 => sig_MTitle(5),
      I3 => title_spriteon,
      O => selector_red_0_115_1816
    );
  M1_24_21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      O => M1_24_bdd4
    );
  U3_blue_0_31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_spriteonGrnd,
      I2 => U3_blue_and0000,
      O => U3_N53
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
  U3_blue_0_21 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_blue_and0001,
      I2 => U3_B_and0000,
      I3 => vidon,
      O => U3_N13
    );
  M1_26_25 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(1),
      O => M1_26_25_40
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"24FF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => rom1_addr(1),
      O => M1_26_58_41
    );
  selector_green_2_31 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_71_1808,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(4),
      O => selector_green_2_31_1813
    );
  selector_green_2_36 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => U3_N111,
      I2 => selector_green_2_4_1814,
      I3 => selector_green_2_31_1813,
      O => green_2_OBUF_1531
    );
  selector_blue_0_7 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_spriteonB5,
      I2 => U3_spriteonB3,
      I3 => U3_spriteonB4,
      O => selector_blue_0_7_1804
    );
  selector_green_1_43 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => title_spriteon,
      I1 => title_green_cmp_lt0000,
      I2 => selector_green_0_71_1808,
      I3 => sig_MTitle(3),
      O => selector_green_1_43_1812
    );
  selector_green_1_48 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => U3_N111,
      I2 => selector_green_1_11,
      I3 => selector_green_1_43_1812,
      O => green_1_OBUF_1530
    );
  M2_6_54 : LUT4
    generic map(
      INIT => X"3004"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_6_54_180
    );
  M2_6_93 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_6_54_180,
      I2 => M2_1_bdd1,
      I3 => rom1_addr(3),
      O => M2_6_93_181
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_1535
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_1524
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_1890
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_1889
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_1888
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_1887
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_1886
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_1885
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_1884
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_1883
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_2020,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_1537,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_1539,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_1533,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_1494,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_1493,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_1492,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_1491,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_1498,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_1497,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_1531,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_1530,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_1529,
      O => green(0)
    );
  ld_7_OBUF : OBUF
    port map (
      I => ld_7_OBUF_1555,
      O => ld(7)
    );
  ld_6_OBUF : OBUF
    port map (
      I => ld_6_OBUF_1554,
      O => ld(6)
    );
  ld_5_OBUF : OBUF
    port map (
      I => ld_5_OBUF_1553,
      O => ld(5)
    );
  ld_4_OBUF : OBUF
    port map (
      I => ld_4_OBUF_1552,
      O => ld(4)
    );
  ld_3_OBUF : OBUF
    port map (
      I => ld_3_OBUF_1551,
      O => ld(3)
    );
  ld_2_OBUF : OBUF
    port map (
      I => ld_2_OBUF_1550,
      O => ld(2)
    );
  ld_1_OBUF : OBUF
    port map (
      I => ld_1_OBUF_1549,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => ld_0_OBUF_1548,
      O => ld(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_1486,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_1485,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_1484,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_1483,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_1482,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_1481,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_1480,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_1686,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_1685,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_1684,
      O => red(0)
    );
  U1_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(1),
      O => U1_Mcount_q_cy_1_rt_519
    );
  U1_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(2),
      O => U1_Mcount_q_cy_2_rt_521
    );
  U1_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(3),
      O => U1_Mcount_q_cy_3_rt_523
    );
  U1_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(4),
      O => U1_Mcount_q_cy_4_rt_525
    );
  U1_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(5),
      O => U1_Mcount_q_cy_5_rt_527
    );
  U1_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(6),
      O => U1_Mcount_q_cy_6_rt_529
    );
  U1_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(7),
      O => U1_Mcount_q_cy_7_rt_531
    );
  U1_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(8),
      O => U1_Mcount_q_cy_8_rt_533
    );
  U1_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(9),
      O => U1_Mcount_q_cy_9_rt_535
    );
  U1_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(10),
      O => U1_Mcount_q_cy_10_rt_505
    );
  U1_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(11),
      O => U1_Mcount_q_cy_11_rt_507
    );
  U1_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(12),
      O => U1_Mcount_q_cy_12_rt_509
    );
  U1_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(13),
      O => U1_Mcount_q_cy_13_rt_511
    );
  U1_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(14),
      O => U1_Mcount_q_cy_14_rt_513
    );
  U1_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(15),
      O => U1_Mcount_q_cy_15_rt_515
    );
  U1_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(16),
      O => U1_Mcount_q_cy_16_rt_517
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_574
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_572
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_570
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_568
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_566
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_564
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_562
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_560
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_603
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_601
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_599
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_597
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_595
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_593
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_591
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_589
    );
  U3_Madd_tank1rom1s_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1(9),
      O => U3_Madd_tank1rom1s_cy_9_rt_763
    );
  U3_Madd_tank1rom1s_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1(8),
      O => U3_Madd_tank1rom1s_cy_8_rt_762
    );
  U3_Madd_tank1rom10s_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1(9),
      O => U3_Madd_tank1rom10s_cy_9_rt_752
    );
  U3_Madd_tank1rom10s_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1(8),
      O => U3_Madd_tank1rom10s_cy_8_rt_751
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB5_cmp_ge0000_cy_0_rt_956
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy_1_rt_907
    );
  U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB2_cmp_ge0000_cy_0_rt_905
    );
  U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Mcompar_spriteonB1_cmp_ge0000_cy_0_rt_888
    );
  U3_Msub_ypix1_sub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(8),
      O => U3_Msub_ypix1_sub0000_cy_8_rt_1282
    );
  U3_Msub_ypix1_sub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(6),
      O => U3_Msub_ypix1_sub0000_cy_6_rt_1279
    );
  U3_Msub_ypix1_sub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(5),
      O => U3_Msub_ypix1_sub0000_cy_5_rt_1277
    );
  U3_Msub_ypix1_sub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(4),
      O => U3_Msub_ypix1_sub0000_cy_4_rt_1275
    );
  U3_Msub_ypix1_sub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(3),
      O => U3_Msub_ypix1_sub0000_cy_3_rt_1273
    );
  U3_Msub_ypix1_sub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(2),
      O => U3_Msub_ypix1_sub0000_cy_2_rt_1271
    );
  U3_Msub_ypix1_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(1),
      O => U3_Msub_ypix1_sub0000_cy_1_rt_1269
    );
  U3_Msub_ypix1_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix1_addsub0000(0),
      O => U3_Msub_ypix1_sub0000_cy_0_rt_1267
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1303,
      O => U3_Mcount_q_cy_16_rt_1024
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1302,
      O => U3_Mcount_q_cy_15_rt_1022
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1301,
      O => U3_Mcount_q_cy_14_rt_1020
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1300,
      O => U3_Mcount_q_cy_13_rt_1018
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1299,
      O => U3_Mcount_q_cy_12_rt_1016
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1298,
      O => U3_Mcount_q_cy_11_rt_1014
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1297,
      O => U3_Mcount_q_cy_10_rt_1012
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1311,
      O => U3_Mcount_q_cy_9_rt_1042
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1310,
      O => U3_Mcount_q_cy_8_rt_1040
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1309,
      O => U3_Mcount_q_cy_7_rt_1038
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1308,
      O => U3_Mcount_q_cy_6_rt_1036
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1307,
      O => U3_Mcount_q_cy_5_rt_1034
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1306,
      O => U3_Mcount_q_cy_4_rt_1032
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1305,
      O => U3_Mcount_q_cy_3_rt_1030
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1304,
      O => U3_Mcount_q_cy_2_rt_1028
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1296,
      O => U3_Mcount_q_cy_1_rt_1026
    );
  U3_Msub_ypix1_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U3_Msub_ypix1_addsub0000_cy_4_rt_1255
    );
  U3_Msub_ypix1_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U3_Msub_ypix1_addsub0000_cy_3_rt_1253
    );
  U3_Msub_ypix1_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U3_Msub_ypix1_addsub0000_cy_2_rt_1251
    );
  U3_Msub_ypix1_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Msub_ypix1_addsub0000_cy_1_rt_1249
    );
  U3_Msub_ypix1_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Msub_ypix1_addsub0000_cy_0_rt_1247
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_2042
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_2040
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_2038
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_2036
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_2034
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_2032
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_2030
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_2028
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_2026
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_2060
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_2058
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_2056
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_2054
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_2052
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_2050
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_2048
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_2046
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_2044
    );
  screenstate_Mcount_sig_hill3_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(6),
      O => screenstate_Mcount_sig_hill3_cy_6_rt_1704
    );
  screenstate_Mcount_sig_hill3_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(5),
      O => screenstate_Mcount_sig_hill3_cy_5_rt_1702
    );
  screenstate_Mcount_sig_hill3_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(4),
      O => screenstate_Mcount_sig_hill3_cy_4_rt_1700
    );
  screenstate_Mcount_sig_hill3_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(3),
      O => screenstate_Mcount_sig_hill3_cy_3_rt_1698
    );
  screenstate_Mcount_sig_hill3_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(2),
      O => screenstate_Mcount_sig_hill3_cy_2_rt_1696
    );
  screenstate_Mcount_sig_hill3_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(1),
      O => screenstate_Mcount_sig_hill3_cy_1_rt_1694
    );
  title_Madd_rom_addr2_add0000_Madd_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(13),
      O => title_Madd_rom_addr2_add0000_Madd_cy_13_rt_1898
    );
  title_Madd_rom_addr2_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(12),
      O => title_Madd_rom_addr2_add0000_Madd_cy_12_rt_1896
    );
  title_Madd_rom_addr2_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(11),
      O => title_Madd_rom_addr2_add0000_Madd_cy_11_rt_1894
    );
  title_Madd_rom_addr2_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0001(10),
      O => title_Madd_rom_addr2_add0000_Madd_cy_10_rt_1892
    );
  title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(13),
      O => title_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1928
    );
  title_Msub_ypix_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => title_Msub_ypix_addsub0000_cy_4_rt_1954
    );
  title_Msub_ypix_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => title_Msub_ypix_addsub0000_cy_3_rt_1952
    );
  title_Msub_ypix_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => title_Msub_ypix_addsub0000_cy_2_rt_1950
    );
  title_Msub_ypix_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => title_Msub_ypix_addsub0000_cy_1_rt_1948
    );
  title_Msub_ypix_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => title_Msub_ypix_addsub0000_cy_0_rt_1946
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_1593
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_1591
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_1589
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_1587
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_1585
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_1583
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_1581
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_1579
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_1574
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_1572
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_1570
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_1568
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_1566
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_1564
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_1562
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_1560
    );
  U1_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q_171,
      O => U1_Mcount_q_xor_17_rt_537
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_586
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_615
    );
  U3_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_171,
      O => U3_Mcount_q_xor_17_rt_1044
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_2062
    );
  screenstate_Mcount_sig_hill3_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => screenstate_sig_hill3(7),
      O => screenstate_Mcount_sig_hill3_xor_7_rt_1716
    );
  title_Msub_ypix_xor_6_111 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => title_Msub_ypix_cy(3),
      I1 => title_ypix_addsub0000_6_Q,
      I2 => title_Msub_ypix_lut_4_Q,
      I3 => title_Msub_ypix_lut_5_Q,
      O => title_Msub_ypix_xor_6_11_1967
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_1605
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_1576
    );
  M1_9_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_9_2_75,
      I2 => M1_9_1_74,
      O => M1_9_Q
    );
  M1_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_3_2_68,
      I2 => M1_3_1_67,
      O => M1_3_Q
    );
  U3_Mcount_tank2_angle_calc_lut_6_Q : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(6),
      I2 => U3_Madd_tank2_angle_calc_addsub0000_cy_5_Q,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1445,
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
      I3 => U3_tank1_angle_calc_cmp_eq0001_1431,
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
      I3 => U3_tank2_angle_calc_cmp_eq0001_1445,
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
      I3 => U3_tank1_angle_calc_cmp_eq0001_1431,
      O => U3_Mcount_tank1_angle_calc_lut(4)
    );
  U3_tank2_angle_calc_mux0004_5_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(0),
      I1 => U3_tank2_angle_calc(1),
      O => N157
    );
  U3_Mcount_tank2_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(2),
      I2 => N157,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1445,
      O => U3_Mcount_tank2_angle_calc_lut(2)
    );
  U3_tank1_angle_calc_mux0004_5_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(0),
      I1 => U3_tank1_angle_calc(1),
      O => N159
    );
  U3_Mcount_tank1_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(2),
      I2 => N159,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1431,
      O => U3_Mcount_tank1_angle_calc_lut(2)
    );
  U3_tank2_angle_calc_mux0004_2_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_Madd_tank2_angle_calc_addsub0000_cy_3_Q,
      O => N165
    );
  U3_Mcount_tank2_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank2_angle_calc(5),
      I2 => N165,
      I3 => U3_tank2_angle_calc_cmp_eq0001_1445,
      O => U3_Mcount_tank2_angle_calc_lut(5)
    );
  U3_tank1_angle_calc_mux0004_2_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_Madd_tank1_angle_calc_addsub0000_cy_3_Q,
      O => N167
    );
  U3_Mcount_tank1_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"BB93"
    )
    port map (
      I0 => sig_gameUp,
      I1 => U3_tank1_angle_calc(5),
      I2 => N167,
      I3 => U3_tank1_angle_calc_cmp_eq0001_1431,
      O => U3_Mcount_tank1_angle_calc_lut(5)
    );
  U3_tank2_angle_calc_cmp_eq0001_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(4),
      O => N169
    );
  U3_tank1_angle_calc_cmp_eq0001_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(4),
      O => N171
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N526,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  U3_Mcount_tank2_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => ld_5_OBUF_1553,
      I1 => U3_tank2_angle_calc(7),
      I2 => screenstate_present_state_FSM_FFd1_1729,
      I3 => U3_tank2_angle_calc_mux0004(0),
      O => U3_Mcount_tank2_angle_calc_lut(7)
    );
  U3_Mcount_tank1_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => ld_5_OBUF_1553,
      I1 => U3_tank1_angle_calc(7),
      I2 => screenstate_present_state_FSM_FFd1_1729,
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
      O => N179
    );
  screenstate_sig_hill4_mux0001_1_181_SW1 : LUT4
    generic map(
      INIT => X"DF3F"
    )
    port map (
      I0 => screenstate_sig_hill4(7),
      I1 => screenstate_sig_hill4(6),
      I2 => screenstate_sig_hill4(5),
      I3 => N519,
      O => N180
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
      O => N182
    );
  U3_Mcount_tank2_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"EA55"
    )
    port map (
      I0 => U3_tank2_angle_calc(0),
      I1 => U3_N50,
      I2 => N182,
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
      O => N184
    );
  U3_Mcount_tank1_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"EA55"
    )
    port map (
      I0 => U3_tank1_angle_calc(0),
      I1 => U3_N49,
      I2 => N184,
      I3 => sig_gameUp,
      O => U3_Mcount_tank1_angle_calc_lut(0)
    );
  U2_Mcount_hcs_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_hcs_cmp_eq000010_649,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_0
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
  U2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(9),
      O => N186
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
  U2_Mcount_hcs_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_1
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
  U2_Mcount_hcs_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_2
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
  U2_Mcount_hcs_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_3
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
  U2_Mcount_hcs_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_4
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
  U2_Mcount_hcs_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_5
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
  U2_Mcount_hcs_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_6
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
  U2_Mcount_hcs_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_7_1,
      I2 => U2_hcs_cmp_eq00005_650,
      O => U2_Mcount_hcs_eqn_7
    );
  U2_Mcount_hcs_eqn_81 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_8_1,
      I2 => U2_hcs_cmp_eq00005_650,
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
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_649,
      I1 => U2_Result_9_1,
      I2 => U2_hcs_cmp_eq00005_650,
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
      I3 => screenstate_sig_hill4_mux0001_1_181_1780,
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
      O => N192
    );
  U3_Mcount_tank2_angle_calc_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank2_angle_calc(3),
      I1 => N192,
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
      O => N194
    );
  U3_Mcount_tank1_angle_calc_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1_angle_calc(3),
      I1 => N194,
      O => U3_Mcount_tank1_angle_calc_lut(3)
    );
  U3_B_mux001299_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_B_mux001236_678,
      I1 => U3_B_mux001254_681,
      I2 => U3_B_mux001269_682,
      O => N196
    );
  U3_B_mux001299 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_B_675,
      I1 => U3_B_mux00124_679,
      I2 => U3_B_mux00129_683,
      I3 => N196,
      O => U3_B_mux0012
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => U3_C2(9),
      I1 => sig_gameRight,
      I2 => U3_leftBTN_inv1_inv1,
      I3 => U3_C2_not000150_717,
      O => U3_C2_not000164_719
    );
  nes_scalar_next_cmp_eq000030_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => nes_scalar_reg(6),
      I1 => nes_scalar_reg(7),
      I2 => nes_scalar_reg(8),
      I3 => nes_scalar_reg(9),
      O => N198
    );
  M1a_14_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N204,
      O => M1a_14_Q_81
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N210,
      O => U3_Mmux_M1a_mux0000_83_1146
    );
  U3_Mmux_M2a_mux0000_82 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N73,
      I2 => N212,
      O => U3_Mmux_M2a_mux0000_82_1205
    );
  title_spriteon_and0000250_SW0 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => title_spriteon_and0000124_1993,
      I1 => U3_spriteonB1_and000063,
      I2 => title_spriteon_and000052_2001,
      I3 => U2_vcs(9),
      O => N214
    );
  title_spriteon_and0000250 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => title_spriteon_and0000205_1998,
      I2 => N214,
      I3 => title_spriteon_and000019_1997,
      O => title_spriteon
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => M1a_29_58_121,
      I1 => rom1_addr(3),
      I2 => U3_xpix1(0),
      I3 => M1a_30_36_123,
      O => U3_Mmux_M1a_mux0000_6_1129
    );
  U3_Mmux_M1a_mux0000_10 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U3_xpix1(0),
      I2 => M1a_1_10_86,
      I3 => M1a_1_22_87,
      O => U3_Mmux_M1a_mux0000_10_1122
    );
  U3_Mmux_M2a_mux0000_10 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(3),
      I2 => M2a_1_64_196,
      I3 => M2a_1_36_195,
      O => U3_Mmux_M2a_mux0000_10_1184
    );
  M1a_23_9 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_22_bdd0,
      I2 => M1_21_bdd8,
      I3 => rom1_addr(3),
      O => M1a_23_9_97
    );
  M2_3_74 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => N222,
      I2 => rom1_addr(3),
      I3 => M2_3_50_166,
      O => M2_3_74_167
    );
  M1_28_69 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => N224,
      I2 => rom1_addr(3),
      I3 => M1_28_46_51,
      O => M1_28_69_52
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
  U3_Mmux_M2a_mux0000_92 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => N230,
      I2 => M1a_22_37,
      I3 => M2a_5_111_211,
      O => U3_Mmux_M2a_mux0000_92_1214
    );
  U3_Mcompar_spriteonB5_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill5(7),
      I2 => screenstate_sig_hill5(6),
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
      INIT => X"9666"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill4(7),
      I2 => screenstate_sig_hill4(6),
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
      INIT => X"9666"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill3(7),
      I2 => screenstate_sig_hill3(6),
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
      INIT => X"9666"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => screenstate_sig_hill1(7),
      I2 => screenstate_sig_hill1(6),
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
  x7_an_2_mux000141 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => x7_clkdiv(19),
      I1 => x7_clkdiv(18),
      I2 => x7_an_1_mux000128,
      I3 => x7_an_2_mux000128_2095,
      O => an_2_OBUF_1493
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_nes_clk31_1640,
      O => N232
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N232,
      O => ja3_OBUF_1539
    );
  U3_spriteonGrnd_and000074_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(4),
      I2 => U3_spriteonGrnd_and000047_1404,
      I3 => U2_vcs(6),
      O => N234
    );
  U3_spriteonGrnd_and000074 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => N234,
      O => U3_spriteonGrnd_and000074_1405
    );
  U3_tank1Angle10s_cmp_le0000130 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => N236,
      O => U3_tank1Angle10s_cmp_le00002
    );
  U3_tank1Angle10s_and000055 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U3_tank1Angle10s_and000042_1412,
      I1 => U2_hcs(9),
      I2 => U3_tank1Angle10s_cmp_gt0000,
      I3 => U2_hcs(8),
      O => U3_tank1Angle10s_and000055_1413
    );
  U3_spriteonB4_and000029 : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => N238,
      I2 => U2_hcs(4),
      I3 => U2_hcs(2),
      O => U3_spriteonB4_and000029_1392
    );
  U3_spriteonB5_and000033_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      O => N240
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
      O => N242
    );
  U3_spriteonB1_and000036 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => N242,
      I3 => U2_hcs(1),
      O => U3_spriteonB1_and000036_1373
    );
  U3_spriteonB1_and000048_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(5),
      O => N244
    );
  U3_spriteonB1_and000048 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N244,
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      I3 => U3_spriteonB1_and000036_1373,
      O => U3_spriteonB1_and000048_1374
    );
  selector_green_0_20_SW0 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_N15,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB5,
      O => N246
    );
  selector_green_0_20 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N246,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB2,
      I3 => U3_spriteonGrnd,
      O => selector_green_0_20_1806
    );
  U3_blue_and00021 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2a_mux0000,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I2 => U3_spriteon2f_cmp_le0000,
      I3 => U3_N57,
      O => U3_blue_and0002
    );
  U3_blue_and00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon2_cmp_ge0000,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy(9),
      I2 => U3_M2_mux0000,
      I3 => U3_N57,
      O => U3_blue_and0001
    );
  selector_green_2_4 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_N8,
      I2 => U3_N52,
      I3 => U3_spriteonGrnd,
      O => selector_green_2_4_1814
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
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1707,
      I1 => screenstate_Result(0),
      I2 => screenstate_Mcount_sig_hill3_eqn_0121_1706,
      O => screenstate_Mcount_sig_hill3_eqn_0
    );
  U3_Mcount_C2_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(1),
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C1_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(1),
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C2_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(2),
      O => U3_Mcount_C2_lut(2)
    );
  U3_Mcount_C1_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(2),
      O => U3_Mcount_C1_lut(2)
    );
  U3_Mcount_C2_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(3),
      O => U3_Mcount_C2_lut(3)
    );
  U3_Mcount_C1_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(3),
      O => U3_Mcount_C1_lut(3)
    );
  U3_Mcount_C2_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(4),
      O => U3_Mcount_C2_lut(4)
    );
  U3_Mcount_C1_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(4),
      O => U3_Mcount_C1_lut(4)
    );
  U3_Mcount_C2_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(5),
      O => U3_Mcount_C2_lut(5)
    );
  U3_Mcount_C1_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(5),
      O => U3_Mcount_C1_lut(5)
    );
  U3_Mcount_C2_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(6),
      O => U3_Mcount_C2_lut(6)
    );
  U3_Mcount_C1_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(6),
      O => U3_Mcount_C1_lut(6)
    );
  U3_Mcount_C2_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(7),
      O => U3_Mcount_C2_lut(7)
    );
  U3_Mcount_C1_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(7),
      O => U3_Mcount_C1_lut(7)
    );
  U3_Mcount_C2_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(8),
      O => U3_Mcount_C2_lut(8)
    );
  U3_Mcount_C1_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(8),
      O => U3_Mcount_C1_lut(8)
    );
  U3_Mcount_C2_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C2(9),
      O => U3_Mcount_C2_lut(9)
    );
  U3_Mcount_C1_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_7_OBUF_1555,
      I2 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  screenstate_Mcount_sig_hill3_eqn_21 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1707,
      I1 => screenstate_Result(2),
      I2 => N513,
      O => screenstate_Mcount_sig_hill3_eqn_2
    );
  screenstate_Mcount_sig_hill3_eqn_11 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => screenstate_Mcount_sig_hill3_eqn_018_1707,
      I1 => screenstate_Result(1),
      I2 => screenstate_Mcount_sig_hill3_eqn_0121_1706,
      O => screenstate_Mcount_sig_hill3_eqn_1
    );
  U3_Mcount_tank2_angle_calc_lut_1_Q : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => U3_tank2_angle_calc(1),
      I2 => ld_5_OBUF_1553,
      I3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(1)
    );
  U3_Mcount_tank1_angle_calc_lut_1_Q : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => U3_tank1_angle_calc(1),
      I2 => ld_5_OBUF_1553,
      I3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(1)
    );
  U3_Mcount_C2_lut_0_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U3_C2(0),
      I1 => screenstate_present_state_FSM_FFd1_1729,
      I2 => ld_7_OBUF_1555,
      O => U3_Mcount_C2_lut(0)
    );
  U3_Mcount_C1_lut_0_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U3_C1(0),
      I1 => screenstate_present_state_FSM_FFd1_1729,
      I2 => ld_7_OBUF_1555,
      O => U3_Mcount_C1_lut(0)
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
  U3_Mmux_M1_mux0000_83 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N248,
      I2 => M1_0_bdd2,
      I3 => N82,
      O => U3_Mmux_M1_mux0000_83_1113
    );
  M1a_4_11 : LUT4
    generic map(
      INIT => X"9D5F"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => M1a_4_bdd0
    );
  M1_9_1 : LUT4
    generic map(
      INIT => X"1795"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => M1_9_1_74
    );
  M1_3_1 : LUT4
    generic map(
      INIT => X"1790"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => M1_3_1_67
    );
  M1a_12_21 : LUT4
    generic map(
      INIT => X"0113"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => M1a_12_bdd1
    );
  U3_Mmux_M1a_mux0000_85_SW0 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_3_1_125,
      I2 => N42,
      O => N254
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N254,
      O => U3_Mmux_M1a_mux0000_85_1148
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N256,
      O => U3_Mmux_M2a_mux0000_71_1197
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N258,
      O => U3_Mmux_M2a_mux0000_9_1212
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N260,
      O => U3_Mmux_M2a_mux0000_73_1199
    );
  U3_Mmux_M1_mux0000_9_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => N62,
      I2 => N93,
      O => N262
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N262,
      O => U3_Mmux_M1_mux0000_9_1118
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
      I0 => U3_C2(8),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U3_C2(9),
      I3 => U3_Madd_spriteon2_addsub0000_cy_7_Q,
      O => U3_spriteon2_addsub0000(9)
    );
  U3_Madd_spriteon1_addsub0001_xor_9_11 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => U3_C1(8),
      I1 => U3_Madd_spriteon1_addsub0000_cy(7),
      I2 => U3_C1(9),
      I3 => U3_Madd_spriteon1_addsub0001_cy_7_Q,
      O => U3_spriteon1_addsub0001(9)
    );
  selector_red_0_118_SW0 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => selector_red_0_37_1818,
      I1 => vidon,
      I2 => U3_blue_and0001,
      I3 => U3_blue_and0000,
      O => N270
    );
  selector_red_0_118 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N270,
      I1 => screenstate_present_state_FSM_FFd1_1729,
      I2 => U3_B_and0000,
      I3 => selector_red_0_115_1816,
      O => red_0_OBUF_1684
    );
  U3_tank2_angle_calc_not00011 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2022,
      I1 => ld_5_OBUF_1553,
      I2 => screenstate_present_state_FSM_FFd1_1729,
      I3 => ld_6_OBUF_1554,
      O => U3_tank2_angle_calc_not0001
    );
  U3_tank1_angle_calc_not00011 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => ld_5_OBUF_1553,
      I2 => who_present_state_FSM_FFd2_2022,
      I3 => ld_6_OBUF_1554,
      O => U3_tank1_angle_calc_not0001
    );
  M1_23_11 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      O => M1_23_bdd0
    );
  M2_9_11 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M2_0_bdd13,
      I3 => rom1_addr(2),
      O => M2_9_bdd0
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => M2_0_bdd6,
      O => M2_7_bdd0
    );
  M1_25_21 : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M1_22_bdd9,
      O => M1_25_bdd1
    );
  M2_21_2 : LUT4
    generic map(
      INIT => X"C220"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => M2_21_2_154
    );
  M1_31_14 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1_31_14_65
    );
  M2_1_38_SW0 : LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      O => N278
    );
  M1_29_80 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => N280,
      I2 => rom1_addr(3),
      I3 => M1_29_56_56,
      O => M1_29_80_58
    );
  M1a_24_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      I3 => M1_22_bdd9,
      O => M1a_24_bdd1
    );
  M1a_22_11 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      O => M1a_22_bdd0
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M1_21_bdd5,
      I3 => rom1_addr(2),
      O => M1_22_bdd0
    );
  M2_6_11 : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M2_0_bdd6,
      O => M2_6_bdd0
    );
  M1_24_11 : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => M1_22_bdd9,
      O => M1_24_bdd0
    );
  M2_0_14 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_0_14_134
    );
  M1a_24_13 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1a_24_13_99
    );
  M1_30_38_SW0 : LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      O => N286
    );
  M2_2_80 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => N288,
      I2 => rom1_addr(3),
      I3 => M2_2_56_161,
      O => M2_2_80_162
    );
  M2a_7_13 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2a_7_13_217
    );
  M1_23_14 : LUT4
    generic map(
      INIT => X"4602"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1_23_14_25
    );
  M2a_6_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd6,
      O => M2a_6_bdd1
    );
  M2a_6_11 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      O => M2a_6_bdd0
    );
  M2_8_14 : LUT4
    generic map(
      INIT => X"4602"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_8_14_186
    );
  M1a_26_127_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_26_33_104,
      I2 => rom1_addr(3),
      I3 => M1a_26_53_105,
      O => N296
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
  U3_Mcompar_spriteon1_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_Madd_spriteon1_addsub0000_cy(7),
      I2 => U3_C1(9),
      I3 => U3_C1(8),
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
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U3_C2(9),
      I3 => U3_C2(8),
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
      I1 => U3_Madd_spriteon2f_add0002_cy(7),
      I2 => U2_hcs(9),
      I3 => U3_C2(8),
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
  title_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => title_ypix_addsub0000_8_Q,
      I1 => title_Msub_ypix_lut_7_Q,
      I2 => title_rom_addr2_addsub0000(11),
      I3 => title_N7,
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
      INIT => X"9666"
    )
    port map (
      I0 => title_rom_addr2_addsub0000(8),
      I1 => title_Msub_ypix_lut_5_Q,
      I2 => title_Msub_ypix_lut_4_Q,
      I3 => title_Msub_ypix_cy(3),
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
      INIT => X"9666"
    )
    port map (
      I0 => title_ypix_9_Q,
      I1 => title_Msub_ypix_lut_5_Q,
      I2 => title_Msub_ypix_cy(3),
      I3 => title_Msub_ypix_lut_4_Q,
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
      INIT => X"9666"
    )
    port map (
      I0 => title_ypix_addsub0000_1_Q,
      I1 => title_Msub_ypix_lut_5_Q,
      I2 => title_Msub_ypix_lut_4_Q,
      I3 => title_Msub_ypix_cy(3),
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
  sig_gameA1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      I3 => screenstate_present_state_FSM_FFd1_1729,
      O => sig_gameA
    );
  buttons_gameRight1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => bounce_delay3(4),
      I2 => bounce_delay2(4),
      I3 => bounce_delay1(4),
      O => sig_gameRight
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_1633,
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg_cmp_eq0000112_1632,
      I3 => nes_counter_reg(2),
      O => ja2_OBUF_1537
    );
  U3_B_mux00129 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => U3_tank1Angle10s,
      I2 => U3_tank1Angle1s,
      I3 => U3_blue_and0001,
      O => U3_B_mux00129_683
    );
  U3_B_mux001249 : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => U3_spriteonB5_and000041_1397,
      I1 => U3_spriteonB4,
      I2 => U3_spriteonB5_and000063_1398,
      I3 => U3_spriteonB5_cmp_ge0000,
      O => U3_B_mux001249_680
    );
  title_green_cmp_lt0000242_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => title_green_cmp_lt0000225_1972,
      I3 => U2_vcs(3),
      O => N306
    );
  title_green_cmp_lt0000242 : LUT4
    generic map(
      INIT => X"1011"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      I2 => N306,
      I3 => U2_vcs(0),
      O => title_green_cmp_lt0000
    );
  U3_blue_0_111 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U3_tank1Angle10s,
      I1 => U3_tank1Angle1s,
      I2 => U3_B_675,
      O => U3_N15
    );
  U3_spriteonB1_cmp_lt0000250_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(5),
      I2 => U2_vidon_and000080_673,
      I3 => U2_vcs(8),
      O => N308
    );
  U3_spriteonB1_cmp_lt0000250 : LUT4
    generic map(
      INIT => X"3133"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(9),
      I2 => N308,
      I3 => U2_vcs(1),
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_spriteonGrnd_and000026_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => U3_spriteonGrnd_and00009,
      O => N310
    );
  U3_spriteonGrnd_and000026 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      I3 => N310,
      O => U3_spriteonGrnd_and000026_1403
    );
  U3_spriteonGrnd_and000093 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(3),
      I3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000093_1408
    );
  U3_spriteonGrnd_and0000124_SW0 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_spriteonGrnd_and000093_1408,
      I2 => U2_hcs(6),
      I3 => U2_hcs(7),
      O => N312
    );
  U3_spriteonGrnd_and0000124 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => N312,
      I2 => U2_hcs(5),
      I3 => U2_hcs(9),
      O => U3_spriteonGrnd_and0000124_1402
    );
  U3_tank1Angle1s_and000012_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(7),
      I2 => U2_hcs(9),
      O => N314
    );
  U3_tank1Angle1s_and000012 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(6),
      I2 => N314,
      I3 => U2_hcs(3),
      O => U3_tank1Angle1s_and000012_1418
    );
  U3_green_2_111 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U3_B_675,
      I1 => U3_tank1Angle1s,
      I2 => U3_spriteonB5,
      I3 => U3_tank1Angle10s,
      O => U3_N52
    );
  U3_spriteonB3_and000020 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      I2 => U2_hcs(7),
      I3 => N316,
      O => U3_spriteonB3_and000020_1386
    );
  U3_spriteonB4_and000041 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB3_cmp_le0000112_1388,
      I2 => U3_spriteonB3_cmp_le0000128_1389,
      O => U3_spriteonB4_and000041_1394
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
  M1a_27_82_SW0 : LUT4
    generic map(
      INIT => X"9157"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(0),
      I3 => M1_22_bdd9,
      O => N318
    );
  M1a_27_82 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M1a_27_80_109,
      I1 => rom1_addr(1),
      I2 => N318,
      O => M1a_27_82_110
    );
  M1a_27_150 : LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => M1a_27_130_107,
      I1 => M1a_27_82_110,
      I2 => rom1_addr(4),
      I3 => M1a_27_2_108,
      O => M1a_27_Q
    );
  M1_29_56 : LUT4
    generic map(
      INIT => X"14BE"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => M1_22_bdd12,
      O => M1_29_56_56
    );
  M2_3_122 : LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => M2_3_111,
      I1 => M2_3_74_167,
      I2 => rom1_addr(4),
      I3 => M2_3_8_168,
      O => M2_3_Q
    );
  M2a_4_82_SW0 : LUT4
    generic map(
      INIT => X"9157"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(0),
      I3 => M2_0_bdd6,
      O => N322
    );
  M2_2_56 : LUT4
    generic map(
      INIT => X"14BE"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd16,
      O => M2_2_56_161
    );
  selector_green_0_71 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U2_vidon_and0000117_664,
      I1 => U2_vidon_and000039_669,
      I2 => screenstate_present_state_FSM_FFd1_1729,
      O => selector_green_0_71_1808
    );
  M1_23_51 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      I3 => rom1_addr(2),
      O => M1_23_bdd3
    );
  M2_0_82 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      I3 => rom1_addr(2),
      O => M2_0_bdd3
    );
  U3_blue_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      I2 => U3_M1a_mux0000,
      I3 => U3_N57,
      O => U3_blue_and0000
    );
  M1a_26_53 : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M1_22_bdd12,
      I2 => rom1_addr(2),
      I3 => M1_22_bdd9,
      O => M1a_26_53_105
    );
  M2_1_210 : LUT4
    generic map(
      INIT => X"FF9F"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => M2_1_bdd1
    );
  M1_24_51 : LUT4
    generic map(
      INIT => X"FF9F"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => M1_24_bdd2
    );
  U3_B_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      I2 => U3_M1_mux0000,
      I3 => U3_N57,
      O => U3_B_and0000
    );
  selector_blue_0_8 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB2_cmp_ge0000,
      I2 => U3_spriteonB2_and000028,
      I3 => U3_spriteonB2_and000040_1382,
      O => selector_blue_0_8_1805
    );
  M1a_27_130 : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => M1a_27_130_107
    );
  U3_tank1Angle10s_and000064_SW0 : LUT4
    generic map(
      INIT => X"F7EF"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(3),
      I2 => U2_hcs(5),
      I3 => U2_hcs(4),
      O => N324
    );
  U3_tank1Angle10s_and000064 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_tank1Angle10s_and000055_1413,
      I1 => U3_tank1Angle10s_cmp_le00002,
      I2 => N324,
      O => U3_tank1Angle10s
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N326,
      O => U3_Mmux_M2a_mux0000_8_1203
    );
  U3_Mmux_M2a_mux0000_92_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => M2_4_bdd0,
      I1 => rom1_addr(3),
      O => N328
    );
  title_Madd_rom_addr2_add0000_Madd_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => title_N01,
      I2 => title_rom_addr2_addsub0001(7),
      I3 => U2_hcs(6),
      O => title_Madd_rom_addr2_add0000_Madd_lut(7)
    );
  M2_3_74_SW0 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M2_3_bdd9,
      I3 => M2_0_bdd13,
      O => N222
    );
  M1_28_69_SW0 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => M1_23_bdd6,
      I3 => M1_21_bdd5,
      O => N224
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
  M2_7_113_SW0_SW0 : LUT4
    generic map(
      INIT => X"1860"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => rom1_addr(1),
      O => N330
    );
  M1_24_113_SW0_SW0 : LUT4
    generic map(
      INIT => X"1860"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => rom1_addr(1),
      O => N332
    );
  M1_19_SW1 : LUT4
    generic map(
      INIT => X"D48C"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(1),
      O => N80
    );
  M1a_1_22 : LUT4
    generic map(
      INIT => X"071E"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => M1a_1_22_87
    );
  M1a_3_1 : LUT4
    generic map(
      INIT => X"206F"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => M1a_3_1_125
    );
  M1a_4_SW0 : LUT4
    generic map(
      INIT => X"EF90"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N42
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N336,
      O => U3_Mmux_M1a_mux0000_73_1137
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
  M1_21_50_SW0_SW0 : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(0),
      O => N338
    );
  M2_10_50_SW0_SW0 : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(0),
      O => N340
    );
  M1a_3_2 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => M1a_3_2_126
    );
  M1_9_2 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => M1_9_2_75
    );
  M1_3_2 : LUT4
    generic map(
      INIT => X"AAE8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => M1_3_2_68
    );
  M2_10_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      O => M1_10_bdd5
    );
  M2a_19_SW0 : LUT4
    generic map(
      INIT => X"FFE8"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N73
    );
  M1a_21_25_SW0 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => M1_21_bdd5,
      O => N264
    );
  M2a_10_25_SW0 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => M2_0_bdd13,
      O => N266
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
      I0 => screenstate_present_state_FSM_FFd1_1729,
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
      I0 => screenstate_present_state_FSM_FFd1_1729,
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
      I0 => screenstate_present_state_FSM_FFd1_1729,
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
  U3_red_0_21 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U2_vidon_and000039_669,
      I1 => U3_B_and0000,
      I2 => U2_vidon_and0000117_664,
      I3 => U3_blue_and0000,
      O => U3_N111
    );
  selector_red_2_SW1 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => U2_vidon_and000039_669,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(7),
      O => N342
    );
  selector_red_2_Q : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => sig_gameRed(1),
      I2 => U2_vidon_and0000117_664,
      I3 => N342,
      O => red_2_OBUF_1686
    );
  selector_red_1_SW1 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => title_spriteon,
      I1 => title_green_cmp_lt0000,
      I2 => U2_vidon_and000039_669,
      I3 => sig_MTitle(6),
      O => N344
    );
  selector_red_1_Q : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_1729,
      I1 => sig_gameRed(1),
      I2 => U2_vidon_and0000117_664,
      I3 => N344,
      O => red_1_OBUF_1685
    );
  M1_25_35_SW1 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      O => N346
    );
  M1_25_35 : LUT4
    generic map(
      INIT => X"11B1"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => N346,
      I2 => M1_21_bdd5,
      I3 => rom1_addr(2),
      O => M1_25_35_36
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
  U3_red_2_28_SW1 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => U3_red_2_11_1361,
      I1 => U3_blue_and0000,
      I2 => U3_blue_and0001,
      O => N348
    );
  U3_red_2_28 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_vidon_and000039_669,
      I1 => U3_B_and0000,
      I2 => U2_vidon_and0000117_664,
      I3 => N348,
      O => sig_gameRed(1)
    );
  M1a_25_36 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N274,
      I2 => M1_10_bdd5,
      I3 => rom1_addr(3),
      O => M1a_25_Q
    );
  M1_29_80_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(2),
      O => N280
    );
  M2_2_80_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      O => N288
    );
  M2a_6_36 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N294,
      I2 => M1_10_bdd5,
      I3 => rom1_addr(3),
      O => M2a_6_Q
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
  M2_15_SW0 : LUT4
    generic map(
      INIT => X"E475"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N62
    );
  M2a_13_11 : LUT4
    generic map(
      INIT => X"8115"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => M1a_14_bdd0
    );
  M2_14_SW0 : LUT4
    generic map(
      INIT => X"EC75"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N93
    );
  M2_21_1 : LUT4
    generic map(
      INIT => X"35A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => M2_21_1_153
    );
  M2_3_1111 : LUT4
    generic map(
      INIT => X"1395"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => M2_3_111
    );
  M1a_11_1 : LUT4
    generic map(
      INIT => X"159C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => M1a_11_1_78
    );
  M1a_14_SW2 : LUT4
    generic map(
      INIT => X"EA72"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N204
    );
  U3_red_0_111 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U3_tank1Angle10s_and000055_1413,
      I1 => U3_tank1Angle10s_cmp_le00002,
      I2 => N324,
      I3 => U3_tank1Angle1s,
      O => U3_N12
    );
  screenstate_sig_hill4_mux0001_4_1 : MUXF5
    port map (
      I0 => N352,
      I1 => N353,
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
      O => N352
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
      O => N353
    );
  M2_5_1 : MUXF5
    port map (
      I0 => N354,
      I1 => N355,
      S => rom1_addr(0),
      O => M2_5_bdd0
    );
  M2_5_1_F : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(1),
      O => N354
    );
  M2_5_1_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_4_bdd4,
      I2 => rom1_addr(2),
      O => N355
    );
  M1_26_1 : MUXF5
    port map (
      I0 => N356,
      I1 => N357,
      S => rom1_addr(0),
      O => M1_26_bdd0
    );
  M1_26_1_F : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => rom1_addr(1),
      O => N356
    );
  M1_26_1_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_24_bdd4,
      I2 => rom1_addr(2),
      O => N357
    );
  selector_blue_1_22 : MUXF5
    port map (
      I0 => N358,
      I1 => N359,
      S => screenstate_present_state_FSM_FFd1_1729,
      O => blue_1_OBUF_1498
    );
  selector_blue_1_22_F : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => vidon,
      I1 => title_spriteon,
      I2 => sig_MTitle(1),
      O => N358
    );
  selector_blue_1_22_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_N53,
      I1 => U3_N8,
      I2 => U3_spriteonB5,
      I3 => U3_N15,
      O => N359
    );
  selector_blue_0_50 : MUXF5
    port map (
      I0 => N360,
      I1 => N361,
      S => screenstate_present_state_FSM_FFd1_1729,
      O => blue_0_OBUF_1497
    );
  selector_blue_0_50_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vidon,
      I1 => sig_MTitle(0),
      I2 => title_spriteon,
      O => N360
    );
  selector_blue_0_50_G : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_N53,
      I2 => selector_blue_0_7_1804,
      I3 => selector_blue_0_8_1805,
      O => N361
    );
  M2_9_34 : MUXF5
    port map (
      I0 => N362,
      I1 => N363,
      S => rom1_addr(0),
      O => M2_9_34_190
    );
  M2_9_34_F : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd9,
      I2 => rom1_addr(3),
      I3 => M2_10_bdd14,
      O => N362
    );
  M2_9_34_G : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => M2_0_bdd16,
      O => N363
    );
  M1_22_34 : MUXF5
    port map (
      I0 => N364,
      I1 => N365,
      S => rom1_addr(0),
      O => M1_22_34_18
    );
  M1_22_34_F : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_22_bdd7,
      I2 => rom1_addr(3),
      I3 => M1_21_bdd8,
      O => N364
    );
  M1_22_34_G : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => M1_22_bdd12,
      O => N365
    );
  M2a_8_61 : MUXF5
    port map (
      I0 => N366,
      I1 => N367,
      S => rom1_addr(4),
      O => M2a_8_Q
    );
  M2a_8_61_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M2a_8_11_220,
      I1 => rom1_addr(3),
      I2 => M2_8_bdd1,
      O => N366
    );
  M2a_8_61_G : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_23_bdd0,
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N367
    );
  M1_27_116 : MUXF5
    port map (
      I0 => N368,
      I1 => N369,
      S => rom1_addr(2),
      O => M1_27_116_44
    );
  M1_27_116_F : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N368
    );
  M1_27_116_G : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => N369
    );
  M2_4_106 : MUXF5
    port map (
      I0 => N370,
      I1 => N371,
      S => rom1_addr(2),
      O => M2_4_106_172
    );
  M2_4_106_F : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N370
    );
  M2_4_106_G : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => N371
    );
  M1a_9_30 : MUXF5
    port map (
      I0 => N372,
      I1 => N373,
      S => rom1_addr(3),
      O => M1a_9_Q
    );
  M1a_9_30_F : LUT4
    generic map(
      INIT => X"6CC8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N372
    );
  M1a_9_30_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(4),
      I2 => M1_10_bdd7,
      O => N373
    );
  M1a_23_59 : MUXF5
    port map (
      I0 => N374,
      I1 => N375,
      S => rom1_addr(4),
      O => M1a_23_Q
    );
  M1a_23_59_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M1a_23_9_97,
      I1 => rom1_addr(3),
      I2 => M1_23_bdd1,
      O => N374
    );
  M1a_23_59_G : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N375
    );
  U3_spriteonB5_and000041 : MUXF5
    port map (
      I0 => N376,
      I1 => N377,
      S => U2_hcs(4),
      O => U3_spriteonB5_and000041_1397
    );
  U3_spriteonB5_and000041_F : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => N240,
      O => N376
    );
  U3_spriteonB5_and000041_G : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(3),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => N377
    );
  M2a_5_63 : MUXF5
    port map (
      I0 => N378,
      I1 => N379,
      S => rom1_addr(1),
      O => M2a_5_63_212
    );
  M2a_5_63_F : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => M2_0_bdd16,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd6,
      O => N378
    );
  M2a_5_63_G : LUT4
    generic map(
      INIT => X"AAE8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      I3 => rom1_addr(0),
      O => N379
    );
  M1_31_81 : MUXF5
    port map (
      I0 => N380,
      I1 => N381,
      S => rom1_addr(3),
      O => M1_31_Q
    );
  M1_31_81_F : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_23_bdd3,
      I2 => rom1_addr(4),
      I3 => M1_31_14_65,
      O => N380
    );
  M1_31_81_G : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_27_bdd4,
      I2 => rom1_addr(4),
      I3 => M1_29_65,
      O => N381
    );
  M2_0_87 : MUXF5
    port map (
      I0 => N382,
      I1 => N383,
      S => rom1_addr(3),
      O => M2_0_Q
    );
  M2_0_87_F : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd3,
      I2 => rom1_addr(4),
      I3 => M2_0_14_134,
      O => N382
    );
  M2_0_87_G : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd1,
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N383
    );
  M1_23_79 : MUXF5
    port map (
      I0 => N384,
      I1 => N385,
      S => rom1_addr(4),
      O => M1_23_Q
    );
  M1_23_79_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1_23_37_26,
      I1 => rom1_addr(3),
      I2 => M1_23_bdd1,
      O => N384
    );
  M1_23_79_G : LUT4
    generic map(
      INIT => X"3475"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N385
    );
  M2_8_79 : MUXF5
    port map (
      I0 => N386,
      I1 => N387,
      S => rom1_addr(4),
      O => M2_8_Q
    );
  M2_8_79_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_8_37_187,
      I1 => rom1_addr(3),
      I2 => M2_8_bdd1,
      O => N386
    );
  M2_8_79_G : LUT4
    generic map(
      INIT => X"3475"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N387
    );
  M1_29_126 : MUXF5
    port map (
      I0 => N388,
      I1 => N389,
      S => rom1_addr(4),
      O => M1_29_Q
    );
  M1_29_126_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1_29_80_58,
      I1 => rom1_addr(3),
      I2 => M1_29_23,
      O => N388
    );
  M1_29_126_G : LUT4
    generic map(
      INIT => X"545E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M1_0_bdd2,
      O => N389
    );
  M2_2_126 : MUXF5
    port map (
      I0 => N390,
      I1 => N391,
      S => rom1_addr(4),
      O => M2_2_Q
    );
  M2_2_126_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_2_80_162,
      I1 => rom1_addr(3),
      I2 => M2_2_23,
      O => N390
    );
  M2_2_126_G : LUT4
    generic map(
      INIT => X"545E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M1_0_bdd2,
      O => N391
    );
  M1a_25_36_SW0 : MUXF5
    port map (
      I0 => N392,
      I1 => N393,
      S => rom1_addr(3),
      O => N274
    );
  M1a_25_36_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_24_bdd1,
      I2 => M1a_22_bdd0,
      O => N392
    );
  M1a_25_36_SW0_G : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M1_22_bdd9,
      O => N393
    );
  M2a_6_36_SW0 : MUXF5
    port map (
      I0 => N394,
      I1 => N395,
      S => rom1_addr(3),
      O => N294
    );
  M2a_6_36_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2a_6_bdd1,
      I2 => M2a_6_bdd0,
      O => N394
    );
  M2a_6_36_SW0_G : LUT4
    generic map(
      INIT => X"D9DB"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => M2_0_bdd6,
      O => N395
    );
  U3_spriteonB3_and000020_SW0 : MUXF5
    port map (
      I0 => N396,
      I1 => N397,
      S => U2_hcs(6),
      O => N316
    );
  U3_spriteonB3_and000020_SW0_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(3),
      O => N396
    );
  U3_spriteonB3_and000020_SW0_G : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_spriteonB3_cmp_le0000128_1389,
      I2 => U2_hcs(8),
      I3 => U2_hcs(7),
      O => N397
    );
  M2_25_Q : MUXF5
    port map (
      I0 => N398,
      I1 => N399,
      S => rom1_addr(3),
      O => M1_6_Q
    );
  M2_25_F : LUT4
    generic map(
      INIT => X"8028"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(4),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N398
    );
  M2_25_G : LUT4
    generic map(
      INIT => X"427B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N399
    );
  M2_24_Q : MUXF5
    port map (
      I0 => N400,
      I1 => N401,
      S => rom1_addr(3),
      O => M1_4_Q
    );
  M2_24_F : LUT4
    generic map(
      INIT => X"8028"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(4),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N400
    );
  M2_24_G : LUT4
    generic map(
      INIT => X"4A73"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N401
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N402,
      I1 => N403,
      S => rom1_addr(2),
      O => M1_8_Q
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"2A6A"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N402
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"57D4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N403
    );
  M2_4_134_SW0 : MUXF5
    port map (
      I0 => N404,
      I1 => N405,
      S => rom1_addr(0),
      O => N228
    );
  M2_4_134_SW0_F : LUT4
    generic map(
      INIT => X"0E08"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => rom1_addr(1),
      I3 => M2_0_bdd13,
      O => N404
    );
  M2_4_134_SW0_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => rom1_addr(1),
      O => N405
    );
  M2_1_65 : MUXF5
    port map (
      I0 => N406,
      I1 => N407,
      S => rom1_addr(1),
      O => M2_1_65_150
    );
  M2_1_65_F : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N406
    );
  M2_1_65_G : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => N278,
      O => N407
    );
  M1_30_65 : MUXF5
    port map (
      I0 => N408,
      I1 => N409,
      S => rom1_addr(1),
      O => M1_30_65_62
    );
  M1_30_65_F : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N408
    );
  M1_30_65_G : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => N286,
      O => N409
    );
  M1a_22_40 : MUXF5
    port map (
      I0 => N410,
      I1 => N411,
      S => rom1_addr(4),
      O => M1a_22_Q
    );
  M1a_22_40_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N292,
      I1 => rom1_addr(3),
      I2 => M1_22_bdd0,
      O => N410
    );
  M1a_22_40_G : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N411
    );
  M1a_26_127 : MUXF5
    port map (
      I0 => N412,
      I1 => N413,
      S => rom1_addr(4),
      O => M1a_26_Q
    );
  M1a_26_127_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N296,
      I1 => rom1_addr(3),
      I2 => M1_26_bdd0,
      O => N412
    );
  M1a_26_127_G : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N413
    );
  M2a_9_40 : MUXF5
    port map (
      I0 => N414,
      I1 => N415,
      S => rom1_addr(4),
      O => M2a_9_Q
    );
  M2a_9_40_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N298,
      I1 => rom1_addr(3),
      I2 => M2_9_bdd0,
      O => N414
    );
  M2a_9_40_G : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N415
    );
  M1a_19_32 : MUXF5
    port map (
      I0 => N416,
      I1 => N417,
      S => rom1_addr(1),
      O => M1a_19_Q
    );
  M1a_19_32_F : LUT4
    generic map(
      INIT => X"5F40"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N416
    );
  M1a_19_32_G : LUT4
    generic map(
      INIT => X"147C"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N417
    );
  M2_7_113 : MUXF5
    port map (
      I0 => N418,
      I1 => N419,
      S => rom1_addr(4),
      O => M2_7_Q
    );
  M2_7_113_F : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => N330,
      I3 => M2_7_bdd0,
      O => N418
    );
  M2_7_113_G : LUT4
    generic map(
      INIT => X"17A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N419
    );
  M1_24_113 : MUXF5
    port map (
      I0 => N420,
      I1 => N421,
      S => rom1_addr(4),
      O => M1_24_Q
    );
  M1_24_113_F : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => N332,
      I3 => M1_24_bdd0,
      O => N420
    );
  M1_24_113_G : LUT4
    generic map(
      INIT => X"17A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N421
    );
  M1_27_227 : MUXF5
    port map (
      I0 => N422,
      I1 => N423,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_227_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M1_27_127_45,
      I1 => rom1_addr(3),
      I2 => M1_27_bdd0,
      O => N422
    );
  M1_27_227_G : LUT4
    generic map(
      INIT => X"31A1"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N423
    );
  M1_25_146 : MUXF5
    port map (
      I0 => N424,
      I1 => N425,
      S => rom1_addr(4),
      O => M1_25_Q
    );
  M1_25_146_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M1_25_80_37,
      I1 => rom1_addr(3),
      I2 => M1_25_bdd1,
      O => N424
    );
  M1_25_146_G : LUT4
    generic map(
      INIT => X"37A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N425
    );
  M2_6_160 : MUXF5
    port map (
      I0 => N426,
      I1 => N427,
      S => rom1_addr(4),
      O => M2_6_Q
    );
  M2_6_160_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => M2_6_93_181,
      I1 => rom1_addr(3),
      I2 => M2_6_bdd0,
      O => N426
    );
  M2_6_160_G : LUT4
    generic map(
      INIT => X"37A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N427
    );
  M2_9_68 : MUXF5
    port map (
      I0 => N428,
      I1 => N429,
      S => rom1_addr(4),
      O => M2_9_Q
    );
  M2_9_68_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_9_34_190,
      I1 => rom1_addr(3),
      I2 => M2_9_bdd0,
      O => N428
    );
  M2_9_68_G : LUT4
    generic map(
      INIT => X"35A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N429
    );
  M1_22_68 : MUXF5
    port map (
      I0 => N430,
      I1 => N431,
      S => rom1_addr(4),
      O => M1_22_Q
    );
  M1_22_68_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1_22_34_18,
      I1 => rom1_addr(3),
      I2 => M1_22_bdd0,
      O => N430
    );
  M1_22_68_G : LUT4
    generic map(
      INIT => X"35A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N431
    );
  M2_5_179 : MUXF5
    port map (
      I0 => N432,
      I1 => N433,
      S => rom1_addr(4),
      O => M2_5_Q
    );
  M2_5_179_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_5_58_177,
      I2 => M2_5_25_176,
      I3 => M2_5_bdd0,
      O => N432
    );
  M2_5_179_G : LUT4
    generic map(
      INIT => X"31A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N433
    );
  M1_26_179 : MUXF5
    port map (
      I0 => N434,
      I1 => N435,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_179_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_41,
      I2 => M1_26_25_40,
      I3 => M1_26_bdd0,
      O => N434
    );
  M1_26_179_G : LUT4
    generic map(
      INIT => X"31A1"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N435
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N436,
      I1 => N437,
      S => rom1_addr(1),
      O => M1_11_Q_5
    );
  M1_11_F : LUT4
    generic map(
      INIT => X"2E02"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N436
    );
  M1_11_G : LUT4
    generic map(
      INIT => X"6050"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N437
    );
  M2_11_Q : MUXF5
    port map (
      I0 => N438,
      I1 => N439,
      S => rom1_addr(2),
      O => M1_20_Q
    );
  M2_11_F : LUT4
    generic map(
      INIT => X"3382"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N438
    );
  M2_11_G : LUT4
    generic map(
      INIT => X"42DD"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(4),
      O => N439
    );
  M2_4_214 : MUXF5
    port map (
      I0 => N440,
      I1 => N441,
      S => rom1_addr(4),
      O => M2_4_Q
    );
  M2_4_214_F : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N228,
      I2 => M2_4_bdd0,
      I3 => M2_4_106_172,
      O => N440
    );
  M2_4_214_G : LUT4
    generic map(
      INIT => X"31A1"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N441
    );
  M2a_13_Q : MUXF5
    port map (
      I0 => N442,
      I1 => N443,
      S => rom1_addr(1),
      O => M2a_13_Q_194
    );
  M2a_13_F : LUT4
    generic map(
      INIT => X"5C4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => N442
    );
  M2a_13_G : LUT4
    generic map(
      INIT => X"1D76"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N443
    );
  M2_26_Q : MUXF5
    port map (
      I0 => N444,
      I1 => N445,
      S => rom1_addr(0),
      O => M2_26_Q_156
    );
  M2_26_F : LUT4
    generic map(
      INIT => X"7E44"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => rom1_addr(2),
      O => N444
    );
  M2_26_G : LUT4
    generic map(
      INIT => X"4A28"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N445
    );
  M1_10_Q : MUXF5
    port map (
      I0 => N446,
      I1 => N447,
      S => rom1_addr(2),
      O => M1_10_Q_2
    );
  M1_10_F : LUT4
    generic map(
      INIT => X"AD28"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(4),
      O => N446
    );
  M1_10_G : LUT4
    generic map(
      INIT => X"6048"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N447
    );
  M1a_21_47 : MUXF5
    port map (
      I0 => N448,
      I1 => N449,
      S => rom1_addr(4),
      O => M1a_21_Q
    );
  M1a_21_47_F : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => N264,
      O => N448
    );
  M1a_21_47_G : LUT4
    generic map(
      INIT => X"1594"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N449
    );
  M1a_24_63 : MUXF5
    port map (
      I0 => N450,
      I1 => N451,
      S => rom1_addr(4),
      O => M1a_24_Q
    );
  M1a_24_63_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1a_24_38_100,
      I1 => M1_24_bdd0,
      I2 => rom1_addr(3),
      O => N450
    );
  M1a_24_63_G : LUT4
    generic map(
      INIT => X"1594"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N451
    );
  M2a_7_63 : MUXF5
    port map (
      I0 => N452,
      I1 => N453,
      S => rom1_addr(4),
      O => M2a_7_Q
    );
  M2a_7_63_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2a_7_38_218,
      I1 => M2_7_bdd0,
      I2 => rom1_addr(3),
      O => N452
    );
  M2a_7_63_G : LUT4
    generic map(
      INIT => X"1594"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N453
    );
  M2a_10_47 : MUXF5
    port map (
      I0 => N454,
      I1 => N455,
      S => rom1_addr(4),
      O => M2a_10_Q
    );
  M2a_10_47_F : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => N266,
      O => N454
    );
  M2a_10_47_G : LUT4
    generic map(
      INIT => X"1594"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N455
    );
  M2_19_Q : MUXF5
    port map (
      I0 => N456,
      I1 => N457,
      S => rom1_addr(1),
      O => M2_19_Q_147
    );
  M2_19_F : LUT4
    generic map(
      INIT => X"2B02"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => N456
    );
  M2_19_G : LUT4
    generic map(
      INIT => X"2029"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N457
    );
  M2_30_74 : MUXF5
    port map (
      I0 => N458,
      I1 => N459,
      S => rom1_addr(1),
      O => M2_30_Q
    );
  M2_30_74_F : LUT4
    generic map(
      INIT => X"2818"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N458
    );
  M2_30_74_G : LUT4
    generic map(
      INIT => X"726A"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N459
    );
  M2a_20_Q : MUXF5
    port map (
      I0 => N460,
      I1 => N461,
      S => rom1_addr(2),
      O => M2a_20_Q_197
    );
  M2a_20_F : LUT4
    generic map(
      INIT => X"CE24"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => N460
    );
  M2a_20_G : LUT4
    generic map(
      INIT => X"1777"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N461
    );
  M1_19_Q : MUXF5
    port map (
      I0 => N462,
      I1 => N463,
      S => rom1_addr(2),
      O => M1_19_Q_11
    );
  M1_19_F : LUT4
    generic map(
      INIT => X"F724"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(4),
      O => N462
    );
  M1_19_G : LUT4
    generic map(
      INIT => X"4280"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N463
    );
  M2_16_Q : MUXF5
    port map (
      I0 => N464,
      I1 => N465,
      S => rom1_addr(1),
      O => M2_16_Q_146
    );
  M2_16_F : LUT4
    generic map(
      INIT => X"20B0"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N464
    );
  M2_16_G : LUT4
    generic map(
      INIT => X"1B81"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(4),
      O => N465
    );
  M2a_12_Q : MUXF5
    port map (
      I0 => N466,
      I1 => N467,
      S => rom1_addr(1),
      O => M2a_12_Q_193
    );
  M2a_12_F : LUT4
    generic map(
      INIT => X"5F40"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N466
    );
  M2a_12_G : LUT4
    generic map(
      INIT => X"147C"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N467
    );
  M1_15_Q : MUXF5
    port map (
      I0 => N468,
      I1 => N469,
      S => rom1_addr(3),
      O => M1_15_Q_9
    );
  M1_15_F : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(4),
      O => N468
    );
  M1_15_G : LUT4
    generic map(
      INIT => X"1781"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      I3 => rom1_addr(4),
      O => N469
    );
  M1a_10_42 : MUXF5
    port map (
      I0 => N470,
      I1 => N471,
      S => rom1_addr(2),
      O => M1a_10_Q
    );
  M1a_10_42_F : LUT4
    generic map(
      INIT => X"7218"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(0),
      I2 => rom1_addr(3),
      I3 => rom1_addr(1),
      O => N470
    );
  M1a_10_42_G : LUT4
    generic map(
      INIT => X"171F"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => N471
    );
  U3_Mmux_M2a_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N472,
      I1 => N473,
      S => rom1_addr(3),
      O => N256
    );
  U3_Mmux_M2a_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"29BB"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => N472
    );
  U3_Mmux_M2a_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N473
    );
  U3_Mmux_M2a_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N474,
      I1 => N475,
      S => rom1_addr(4),
      O => N230
    );
  U3_Mmux_M2a_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"FF2A"
    )
    port map (
      I0 => M2a_4_80_210,
      I1 => rom1_addr(1),
      I2 => N322,
      I3 => N328,
      O => N474
    );
  U3_Mmux_M2a_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N475
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N476,
      I1 => N477,
      S => rom1_addr(3),
      O => M1a_2_Q_122
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"2AA8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N476
    );
  M1a_2_G : LUT4
    generic map(
      INIT => X"0121"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N477
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N478,
      I1 => N479,
      S => rom1_addr(1),
      O => M1a_20_Q_88
    );
  M1a_20_F : LUT4
    generic map(
      INIT => X"6640"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N478
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => rom1_addr(2),
      O => N479
    );
  M2a_30_Q : MUXF5
    port map (
      I0 => N480,
      I1 => N481,
      S => rom1_addr(3),
      O => M2a_30_Q_205
    );
  M2a_30_F : LUT4
    generic map(
      INIT => X"2AA8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N480
    );
  M2a_30_G : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N481
    );
  M1_28_116 : MUXF5
    port map (
      I0 => N482,
      I1 => N483,
      S => rom1_addr(4),
      O => M1_28_Q
    );
  M1_28_116_F : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_bdd4,
      I2 => M1_28_0,
      I3 => M1_28_69_52,
      O => N482
    );
  M1_28_116_G : LUT4
    generic map(
      INIT => X"1395"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N483
    );
  M1_5_Q : MUXF5
    port map (
      I0 => N484,
      I1 => N485,
      S => rom1_addr(0),
      O => M1_5_Q_70
    );
  M1_5_F : LUT4
    generic map(
      INIT => X"7E44"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => rom1_addr(2),
      O => N484
    );
  M1_5_G : LUT4
    generic map(
      INIT => X"4A28"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => rom1_addr(2),
      O => N485
    );
  M2a_22_Q : MUXF5
    port map (
      I0 => N486,
      I1 => N487,
      S => rom1_addr(1),
      O => M2a_22_Q_198
    );
  M2a_22_F : LUT4
    generic map(
      INIT => X"50EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(4),
      O => N486
    );
  M2a_22_G : LUT4
    generic map(
      INIT => X"1E30"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N487
    );
  U3_Mmux_M2a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N488,
      I1 => N489,
      S => rom1_addr(2),
      O => N260
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"45C5"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => U3_xpix2(0),
      O => N488
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      O => N489
    );
  M1a_18_30 : MUXF5
    port map (
      I0 => N490,
      I1 => N491,
      S => rom1_addr(2),
      O => M1a_18_Q
    );
  M1a_18_30_F : LUT4
    generic map(
      INIT => X"D462"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N490
    );
  M1a_18_30_G : LUT4
    generic map(
      INIT => X"1777"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => N491
    );
  U3_Mmux_M2a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N492,
      I1 => N493,
      S => rom1_addr(2),
      O => N258
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"37E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N492
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(1),
      O => N493
    );
  M2_29_1 : MUXF5
    port map (
      I0 => N494,
      I1 => N495,
      S => rom1_addr(1),
      O => M1_2_Q
    );
  M2_29_1_F : LUT4
    generic map(
      INIT => X"60E2"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => N494
    );
  M2_29_1_G : LUT4
    generic map(
      INIT => X"7E44"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N495
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N496,
      I1 => N497,
      S => rom1_addr(0),
      O => N210
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"DF31"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(2),
      I2 => U3_xpix1(0),
      I3 => rom1_addr(3),
      O => N496
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"EEF6"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => U3_xpix1(0),
      I3 => rom1_addr(2),
      O => N497
    );
  U3_Mmux_M2a_mux0000_82_SW0 : MUXF5
    port map (
      I0 => N498,
      I1 => N499,
      S => rom1_addr(0),
      O => N212
    );
  U3_Mmux_M2a_mux0000_82_SW0_F : LUT4
    generic map(
      INIT => X"F1B5"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => U3_xpix2(0),
      O => N498
    );
  U3_Mmux_M2a_mux0000_82_SW0_G : LUT4
    generic map(
      INIT => X"E6EF"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => U3_xpix2(0),
      O => N499
    );
  M1a_5_36 : MUXF5
    port map (
      I0 => N500,
      I1 => N501,
      S => rom1_addr(2),
      O => M1a_5_Q
    );
  M1a_5_36_F : LUT4
    generic map(
      INIT => X"9AD8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N500
    );
  M1a_5_36_G : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N501
    );
  M1_1_69 : MUXF5
    port map (
      I0 => N502,
      I1 => N503,
      S => rom1_addr(1),
      O => M1_1_Q
    );
  M1_1_69_F : LUT4
    generic map(
      INIT => X"2818"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(4),
      I3 => rom1_addr(0),
      O => N502
    );
  M1_1_69_G : LUT4
    generic map(
      INIT => X"726A"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(0),
      I3 => rom1_addr(2),
      O => N503
    );
  M1_21_50 : MUXF5
    port map (
      I0 => N504,
      I1 => N505,
      S => rom1_addr(4),
      O => M1_21_Q
    );
  M1_21_50_F : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => N338,
      I3 => rom1_addr(2),
      O => N504
    );
  M1_21_50_G : LUT4
    generic map(
      INIT => X"17A1"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N505
    );
  M2_10_50 : MUXF5
    port map (
      I0 => N506,
      I1 => N507,
      S => rom1_addr(4),
      O => M2_10_Q
    );
  M2_10_50_F : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => N340,
      I3 => rom1_addr(2),
      O => N506
    );
  M2_10_50_G : LUT4
    generic map(
      INIT => X"17A1"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => N507
    );
  M2a_29_32 : MUXF5
    port map (
      I0 => N508,
      I1 => N509,
      S => rom1_addr(2),
      O => M2a_29_Q
    );
  M2a_29_32_F : LUT4
    generic map(
      INIT => X"19A8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => rom1_addr(0),
      I3 => rom1_addr(3),
      O => N508
    );
  M2a_29_32_G : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(4),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => N509
    );
  M1a_16_Q : MUXF5
    port map (
      I0 => N510,
      I1 => N511,
      S => rom1_addr(1),
      O => M1a_16_Q_83
    );
  M1a_16_F : LUT4
    generic map(
      INIT => X"5C4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(0),
      O => N510
    );
  M1a_16_G : LUT4
    generic map(
      INIT => X"157E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(0),
      O => N511
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_1557
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
  U2_Mcount_vcs_lut_0_INV_0 : INV
    port map (
      I => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  U3_Msub_ypix1_sub0000_lut_9_INV_0 : INV
    port map (
      I => U3_ypix1_addsub0000(9),
      O => U3_Msub_ypix1_sub0000_lut_9_Q
    );
  U3_Msub_ypix1_sub0000_lut_7_INV_0 : INV
    port map (
      I => U3_ypix1_addsub0000(7),
      O => U3_Msub_ypix1_sub0000_lut_7_Q
    );
  U3_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => U3_Q_0_1295,
      O => U3_Mcount_q_lut(0)
    );
  U3_Msub_ypix1_addsub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_Msub_ypix1_addsub0000_lut(9)
    );
  U3_Msub_ypix1_addsub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => U3_Msub_ypix1_addsub0000_lut(8)
    );
  U3_Msub_ypix1_addsub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => U3_Msub_ypix1_addsub0000_lut(7)
    );
  U3_Msub_ypix1_addsub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => U3_Msub_ypix1_addsub0000_lut(6)
    );
  U3_Msub_ypix1_addsub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => U3_Msub_ypix1_addsub0000_lut(5)
    );
  x7_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => x7_clkdiv(0),
      O => x7_Mcount_clkdiv_lut(0)
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
  nes_left_reg_not00011_INV_0 : INV
    port map (
      I => ja1_IBUF_1535,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_1524,
      O => U2_clr_inv
    );
  title_Msub_xpix_xor_2_11_INV_0 : INV
    port map (
      I => U2_hcs(2),
      O => sig_romTitle_addr14(2)
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
  title_Msub_ypix_xor_3_11_INV_0 : INV
    port map (
      I => title_Msub_ypix_cy(3),
      O => title_ypix_3_Q
    );
  M1_31_45_INV_0 : INV
    port map (
      I => rom1_addr(0),
      O => M1_29_65
    );
  screenstate_Mcount_sig_hill3_lut_0_1_INV_0 : INV
    port map (
      I => screenstate_sig_hill3(0),
      O => screenstate_Mcount_sig_hill3_lut_0_1
    );
  U3_Msub_ypix1_addsub0000_lut_9_1_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_Msub_ypix1_addsub0000_lut_9_1
    );
  title_Madd_rom_addr2_addsub0001_Madd_lut_6_INV_0 : INV
    port map (
      I => title_Msub_ypix_lut_4_Q,
      O => title_Madd_rom_addr2_addsub0001_Madd_lut(6)
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
      O => U2_vidon_and0000181_666
    );
  U2_vidon_and000018_f5 : MUXF5
    port map (
      I0 => U2_vidon_and0000181_666,
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
      O => U2_vidon_and0000261_668
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_668,
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
      O => U2_vidon_and0000651_672
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_672,
      S => U2_vcs(8),
      O => U2_vidon_and000065
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
      O => title_spriteon_and0000871_2004
    );
  title_spriteon_and000087_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => title_spriteon_and0000871_2004,
      S => U2_hcs(4),
      O => title_spriteon_and000087
    );
  U3_blue_and00011171 : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => U3_blue_and00011171_1353
    );
  U3_blue_and0001117_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_blue_and00011171_1353,
      S => U2_vcs(4),
      O => U3_blue_and0001117
    );
  U3_blue_and00011371 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => U3_blue_and00011371_1355
    );
  U3_blue_and0001137_f5 : MUXF5
    port map (
      I0 => U3_blue_and00011371_1355,
      I1 => N0,
      S => U2_vcs(5),
      O => U3_blue_and0001137
    );
  U3_spriteonB2_and0000281 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(3),
      O => U3_spriteonB2_and0000281_1380
    );
  U3_spriteonB2_and0000282 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      I2 => U2_hcs(1),
      I3 => U2_hcs(2),
      O => U3_spriteonB2_and0000282_1381
    );
  U3_spriteonB2_and000028_f5 : MUXF5
    port map (
      I0 => U3_spriteonB2_and0000282_1381,
      I1 => U3_spriteonB2_and0000281_1380,
      S => U2_hcs(5),
      O => U3_spriteonB2_and000028
    );
  U3_spriteonGrnd_and000091 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      I3 => U2_hcs(0),
      O => U3_spriteonGrnd_and000091_1407
    );
  U3_spriteonGrnd_and00009_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_spriteonGrnd_and000091_1407,
      S => U2_hcs(4),
      O => U3_spriteonGrnd_and00009
    );
  M1a_8_11 : LUT4
    generic map(
      INIT => X"3655"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => M1a_8_1
    );
  M1a_8_1_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => M1a_8_1,
      S => rom1_addr(4),
      O => M1a_8_Q
    );
  M1a_29_321 : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_22_bdd12,
      I2 => rom1_addr(0),
      I3 => M1_22_bdd9,
      O => M1a_29_321_119
    );
  M1a_29_322 : LUT4
    generic map(
      INIT => X"80F7"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => M1_22_bdd9,
      I3 => M1_22_bdd12,
      O => M1a_29_322_120
    );
  M1a_29_32_f5 : MUXF5
    port map (
      I0 => M1a_29_322_120,
      I1 => M1a_29_321_119,
      S => rom1_addr(2),
      O => M1a_29_32
    );
  M1a_28_311 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => M1a_28_311_114
    );
  M1a_28_31_f5 : MUXF5
    port map (
      I0 => M1a_28_311_114,
      I1 => N0,
      S => rom1_addr(3),
      O => M1a_28_31
    );
  M2_13_1 : LUT4
    generic map(
      INIT => X"178C"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => M2_13_Q
    );
  M2_13_f5 : MUXF5
    port map (
      I0 => M2_13_1_144,
      I1 => M2_13_Q,
      S => rom1_addr(4),
      O => M1_18_Q
    );
  M2a_3_311 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => rom1_addr(0),
      I3 => rom1_addr(1),
      O => M2a_3_311_209
    );
  M2a_3_31_f5 : MUXF5
    port map (
      I0 => M2a_3_311_209,
      I1 => N0,
      S => rom1_addr(3),
      O => M2a_3_31
    );
  M2_1_1211 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_1_65_150,
      I2 => M1_30_98,
      I3 => M2_0_bdd1,
      O => M2_1_121
    );
  M2_1_121_f5 : MUXF5
    port map (
      I0 => M2_1_121,
      I1 => N0,
      S => rom1_addr(4),
      O => M2_1_Q
    );
  M1_29_231 : LUT4
    generic map(
      INIT => X"AA82"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1_22_bdd9,
      I2 => M1_21_bdd5,
      I3 => rom1_addr(0),
      O => M1_29_231_55
    );
  M1_29_23_f5 : MUXF5
    port map (
      I0 => M1_29_231_55,
      I1 => N1,
      S => rom1_addr(2),
      O => M1_29_23
    );
  M2a_2_321 : LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd16,
      I2 => rom1_addr(0),
      I3 => M2_0_bdd6,
      O => M2a_2_321_203
    );
  M2a_2_322 : LUT4
    generic map(
      INIT => X"80F7"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(1),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd16,
      O => M2a_2_322_204
    );
  M2a_2_32_f5 : MUXF5
    port map (
      I0 => M2a_2_322_204,
      I1 => M2a_2_321_203,
      S => rom1_addr(2),
      O => M2a_2_32
    );
  M1_30_1171 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_30_65_62,
      I2 => M1_27_bdd4,
      I3 => M1_30_98,
      O => M1_30_117
    );
  M1_30_117_f5 : MUXF5
    port map (
      I0 => M1_30_117,
      I1 => N0,
      S => rom1_addr(4),
      O => M1_30_Q
    );
  M2_2_231 : LUT4
    generic map(
      INIT => X"AA82"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      I3 => rom1_addr(0),
      O => M2_2_231_160
    );
  M2_2_23_f5 : MUXF5
    port map (
      I0 => M2_2_231_160,
      I1 => N1,
      S => rom1_addr(2),
      O => M2_2_23
    );
  M1a_22_371 : LUT4
    generic map(
      INIT => X"1352"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => M1a_22_371_92
    );
  M1a_22_37_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => M1a_22_371_92,
      S => rom1_addr(4),
      O => M1a_22_37
    );
  selector_green_1_111 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U3_N15,
      I1 => U3_N13,
      I2 => U3_spriteonB5,
      I3 => U3_N8,
      O => selector_green_1_111_1811
    );
  selector_green_1_11_f5 : MUXF5
    port map (
      I0 => selector_green_1_111_1811,
      I1 => U3_N13,
      S => U3_spriteonGrnd,
      O => selector_green_1_11
    );
  U3_tank1Angle10s_cmp_le0000130_SW01 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(2),
      O => U3_tank1Angle10s_cmp_le0000130_SW0
    );
  U3_tank1Angle10s_cmp_le0000130_SW0_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_tank1Angle10s_cmp_le0000130_SW0,
      S => U2_vcs(5),
      O => N236
    );
  U3_spriteonB4_and000029_SW01 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => U2_hcs(8),
      I3 => U2_hcs(7),
      O => U3_spriteonB4_and000029_SW0
    );
  U3_spriteonB4_and000029_SW0_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_spriteonB4_and000029_SW0,
      S => U2_hcs(9),
      O => N238
    );
  U3_Mmux_M1_mux0000_83_SW01 : LUT4
    generic map(
      INIT => X"E876"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => rom1_addr(3),
      O => U3_Mmux_M1_mux0000_83_SW0
    );
  U3_Mmux_M1_mux0000_83_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_SW0,
      I1 => N80,
      S => U3_xpix1(0),
      O => N248
    );
  M1a_22_40_SW01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => M1a_22_bdd0,
      I1 => rom1_addr(3),
      O => M1a_22_40_SW0
    );
  M1a_22_40_SW02 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => M1a_22_40_SW01_94
    );
  M1a_22_40_SW0_f5 : MUXF5
    port map (
      I0 => M1a_22_40_SW01_94,
      I1 => M1a_22_40_SW0,
      S => rom1_addr(1),
      O => N292
    );
  M2a_9_40_SW01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => M2a_6_bdd0,
      I1 => rom1_addr(3),
      O => M2a_9_40_SW0
    );
  M2a_9_40_SW02 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(0),
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => M2a_9_40_SW01_223
    );
  M2a_9_40_SW0_f5 : MUXF5
    port map (
      I0 => M2a_9_40_SW01_223,
      I1 => M2a_9_40_SW0,
      S => rom1_addr(1),
      O => N298
    );
  M1a_28_651 : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(0),
      O => M1a_28_651_116
    );
  M1a_28_65_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => M1a_28_651_116,
      S => rom1_addr(4),
      O => M1a_28_65
    );
  U3_Mmux_M1a_mux0000_73_SW01 : LUT4
    generic map(
      INIT => X"240F"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(3),
      I3 => rom1_addr(1),
      O => U3_Mmux_M1a_mux0000_73_SW0
    );
  U3_Mmux_M1a_mux0000_73_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_73_SW01_1139,
      I1 => U3_Mmux_M1a_mux0000_73_SW0,
      S => U3_xpix1(0),
      O => N336
    );
  U3_Mmux_M2a_mux0000_8_SW01 : LUT4
    generic map(
      INIT => X"DF90"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => U3_Mmux_M2a_mux0000_8_SW0
    );
  U3_Mmux_M2a_mux0000_8_SW02 : LUT4
    generic map(
      INIT => X"EF90"
    )
    port map (
      I0 => rom1_addr(0),
      I1 => rom1_addr(2),
      I2 => rom1_addr(1),
      I3 => rom1_addr(3),
      O => U3_Mmux_M2a_mux0000_8_SW01_1210
    );
  U3_Mmux_M2a_mux0000_8_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_SW01_1210,
      I1 => U3_Mmux_M2a_mux0000_8_SW0,
      S => U3_xpix2(0),
      O => N326
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
      LO => N512,
      O => screenstate_Mcount_sig_hill3_eqn_018_1707
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
      LO => N513,
      O => screenstate_Mcount_sig_hill3_eqn_0121_1706
    );
  U3_tank2_angle_calc_and00003 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      LO => U3_tank2_angle_calc_and00003_1444
    );
  U3_tank1_angle_calc_and00003 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      LO => U3_tank1_angle_calc_and00003_1430
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
      LO => N514,
      O => nes_N0
    );
  screenstate_Madd_sig_hill1_addsub0000_xor_7_111 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => screenstate_sig_hill1(1),
      I1 => screenstate_sig_hill1(2),
      LO => N515,
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
      LO => N516,
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
      LO => N517,
      O => U2_hcs_cmp_eq000010_649
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
      LO => N518,
      O => nes_counter_reg_cmp_eq0000112_1632
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(3),
      I1 => U3_C2(5),
      LO => U3_C2_not00011_714
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(6),
      I2 => U3_C2_not000113_715,
      I3 => U3_C2_not00016_718,
      LO => U3_C2_not000123_716
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
      LO => U3_C2_not000150_717
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
      LO => U3_C1_not00014_698
    );
  U3_C1_not000147 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(4),
      LO => U3_C1_not000147_699
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"3F1F"
    )
    port map (
      I0 => U3_C1(5),
      I1 => U3_C1(6),
      I2 => U3_C1(7),
      I3 => U3_C1_not000152_701,
      LO => U3_C1_not000183_702
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
      LO => N519,
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
      LO => N520,
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
      LO => N521,
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
      LO => N522,
      O => U3_spriteonGrnd_and0000109
    );
  U3_tank2_angle_calc_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(3),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_N50,
      I3 => N169,
      LO => N523,
      O => U3_tank2_angle_calc_cmp_eq0001_1445
    );
  U3_tank1_angle_calc_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(3),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_N49,
      I3 => N171,
      LO => N524,
      O => U3_tank1_angle_calc_cmp_eq0001_1431
    );
  screenstate_sig_hill4_mux0001_1_181 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => screenstate_sig_hill4_mux0001_1_115_1778,
      I1 => screenstate_sig_hill4_mux0001_1_128_1779,
      I2 => N180,
      I3 => N179,
      LO => screenstate_sig_hill4_mux0001_1_181_1780
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => N186,
      I3 => U2_N2,
      LO => N525,
      O => U2_vcs_cmp_eq0000_661
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_scalar_reg(4),
      I1 => nes_scalar_reg(5),
      I2 => nes_scalar_next_cmp_eq000021_1664,
      I3 => N198,
      LO => N526,
      O => nes_scalar_next_cmp_eq0000
    );
  M2_13_2_INV_0 : INV
    port map (
      I => M1_14_bdd1,
      O => M2_13_1_144
    );
  U3_Mmux_M1a_mux0000_73_SW02_INV_0 : INV
    port map (
      I => N204,
      O => U3_Mmux_M1a_mux0000_73_SW01_1139
    );

end STRUCTURE;

