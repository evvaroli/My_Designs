--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Sat Apr 19 18:21:46 2014
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
  signal M1_0_bdd0 : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_10_Q : STD_LOGIC; 
  signal M1_10_1_4 : STD_LOGIC; 
  signal M1_10_2_5 : STD_LOGIC; 
  signal M1_10_bdd4 : STD_LOGIC; 
  signal M1_10_bdd5 : STD_LOGIC; 
  signal M1_11_Q_8 : STD_LOGIC; 
  signal M1_12_Q_9 : STD_LOGIC; 
  signal M1_12_bdd3 : STD_LOGIC; 
  signal M1_13_Q_11 : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_18_Q : STD_LOGIC; 
  signal M1_18_1_14 : STD_LOGIC; 
  signal M1_18_2 : STD_LOGIC; 
  signal M1_19_Q_16 : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q_18 : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_bdd3 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_11_24 : STD_LOGIC; 
  signal M1_22_35_25 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_20_32 : STD_LOGIC; 
  signal M1_23_29_33 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd3 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_39_38 : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_138_41 : STD_LOGIC; 
  signal M1_25_35 : STD_LOGIC; 
  signal M1_25_351 : STD_LOGIC; 
  signal M1_25_352_44 : STD_LOGIC; 
  signal M1_25_75_45 : STD_LOGIC; 
  signal M1_25_bdd0 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_30_49 : STD_LOGIC; 
  signal M1_26_58_50 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_102_53 : STD_LOGIC; 
  signal M1_27_127_54 : STD_LOGIC; 
  signal M1_27_192_55 : STD_LOGIC; 
  signal M1_27_40_56 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_12_60 : STD_LOGIC; 
  signal M1_28_120 : STD_LOGIC; 
  signal M1_28_1201_62 : STD_LOGIC; 
  signal M1_28_1202_63 : STD_LOGIC; 
  signal M1_28_2_64 : STD_LOGIC; 
  signal M1_28_28_65 : STD_LOGIC; 
  signal M1_28_65_66 : STD_LOGIC; 
  signal M1_28_bdd1 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_0_69 : STD_LOGIC; 
  signal M1_29_126 : STD_LOGIC; 
  signal M1_29_1261_71 : STD_LOGIC; 
  signal M1_29_1262_72 : STD_LOGIC; 
  signal M1_29_14_73 : STD_LOGIC; 
  signal M1_29_35_74 : STD_LOGIC; 
  signal M1_29_60_75 : STD_LOGIC; 
  signal M1_29_75_76 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_30_116 : STD_LOGIC; 
  signal M1_30_1161_81 : STD_LOGIC; 
  signal M1_30_49_82 : STD_LOGIC; 
  signal M1_30_96_83 : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_3_1 : STD_LOGIC; 
  signal M1_3_2 : STD_LOGIC; 
  signal M1_4_Q : STD_LOGIC; 
  signal M1_4_bdd0 : STD_LOGIC; 
  signal M1_5_Q_90 : STD_LOGIC; 
  signal M1_8_Q : STD_LOGIC; 
  signal M1_9_Q_92 : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_10_bdd0 : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_11_1_96 : STD_LOGIC; 
  signal M1a_11_2_97 : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_1_21_103 : STD_LOGIC; 
  signal M1a_1_7_104 : STD_LOGIC; 
  signal M1a_20_Q_105 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_18_108 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_10_111 : STD_LOGIC; 
  signal M1a_23_14_112 : STD_LOGIC; 
  signal M1a_23_54 : STD_LOGIC; 
  signal M1a_23_541_114 : STD_LOGIC; 
  signal M1a_23_542_115 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_139_121 : STD_LOGIC; 
  signal M1a_27_52_122 : STD_LOGIC; 
  signal M1a_27_82_123 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_51_126 : STD_LOGIC; 
  signal M1a_2_Q_127 : STD_LOGIC; 
  signal M1a_30_36_128 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_3_1_130 : STD_LOGIC; 
  signal M1a_3_2_131 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_8_1 : STD_LOGIC; 
  signal M1a_8_11_135 : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_bdd1 : STD_LOGIC; 
  signal M2_0_bdd10 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd16 : STD_LOGIC; 
  signal M2_0_bdd3 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_11_Q_147 : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M2_18_Q : STD_LOGIC; 
  signal M2_19_Q_150 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_115_152 : STD_LOGIC; 
  signal M2_1_49_153 : STD_LOGIC; 
  signal M2_1_60_154 : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_24_Q : STD_LOGIC; 
  signal M2_24_1_158 : STD_LOGIC; 
  signal M2_25_Q_159 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_14_162 : STD_LOGIC; 
  signal M2_2_35_163 : STD_LOGIC; 
  signal M2_2_60_164 : STD_LOGIC; 
  signal M2_2_75_165 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_12_168 : STD_LOGIC; 
  signal M2_3_124 : STD_LOGIC; 
  signal M2_3_1241_170 : STD_LOGIC; 
  signal M2_3_1242_171 : STD_LOGIC; 
  signal M2_3_30_172 : STD_LOGIC; 
  signal M2_3_69_173 : STD_LOGIC; 
  signal M2_3_bdd6 : STD_LOGIC; 
  signal M2_3_bdd9 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_105_177 : STD_LOGIC; 
  signal M2_4_116_178 : STD_LOGIC; 
  signal M2_4_29_179 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_30_182 : STD_LOGIC; 
  signal M2_5_58_183 : STD_LOGIC; 
  signal M2_5_bdd0 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_108_186 : STD_LOGIC; 
  signal M2_6_bdd0 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_44 : STD_LOGIC; 
  signal M2_7_441_190 : STD_LOGIC; 
  signal M2_7_442_191 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_20_194 : STD_LOGIC; 
  signal M2_8_29_195 : STD_LOGIC; 
  signal M2_8_bdd1 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_35_198 : STD_LOGIC; 
  signal M2_9_9_199 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q_203 : STD_LOGIC; 
  signal M2a_18_Q : STD_LOGIC; 
  signal M2a_18_1_205 : STD_LOGIC; 
  signal M2a_18_2 : STD_LOGIC; 
  signal M2a_19_Q_207 : STD_LOGIC; 
  signal M2a_1_36_208 : STD_LOGIC; 
  signal M2a_1_63_209 : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_4_52_217 : STD_LOGIC; 
  signal M2a_4_82_218 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_10_225 : STD_LOGIC; 
  signal M2a_8_14_226 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_9_18_228 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
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
  signal N46 : STD_LOGIC; 
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
  signal N63 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_488 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_490 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_492 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_494 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_496 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_498 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_500 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_502 : STD_LOGIC; 
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
  signal U2_Mcount_hcs_xor_9_rt_514 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_517 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_519 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_521 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_523 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_525 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_527 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_529 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_531 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_543 : STD_LOGIC; 
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
  signal U2_hcs_cmp_eq000010_577 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_578 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_589 : STD_LOGIC; 
  signal U2_vidon_and00000_590 : STD_LOGIC; 
  signal U2_vidon_and0000105_591 : STD_LOGIC; 
  signal U2_vidon_and0000117_592 : STD_LOGIC; 
  signal U2_vidon_and000013 : STD_LOGIC; 
  signal U2_vidon_and000018_594 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_596 : STD_LOGIC; 
  signal U2_vidon_and000039_597 : STD_LOGIC; 
  signal U2_vidon_and00006_598 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_600 : STD_LOGIC; 
  signal U2_vidon_and000080_601 : STD_LOGIC; 
  signal U2_vsenable_602 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_614 : STD_LOGIC; 
  signal U3_C1_not0001105_615 : STD_LOGIC; 
  signal U3_C1_not000127_616 : STD_LOGIC; 
  signal U3_C1_not00014_617 : STD_LOGIC; 
  signal U3_C1_not000147_618 : STD_LOGIC; 
  signal U3_C1_not00015_619 : STD_LOGIC; 
  signal U3_C1_not000183_620 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_632 : STD_LOGIC; 
  signal U3_C2_not000113_633 : STD_LOGIC; 
  signal U3_C2_not000123_634 : STD_LOGIC; 
  signal U3_C2_not000150_635 : STD_LOGIC; 
  signal U3_C2_not00016_636 : STD_LOGIC; 
  signal U3_C2_not000164_637 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_807 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_809 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_811 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_813 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_815 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_817 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_819 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_821 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_823 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_825 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_827 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_829 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_831 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_833 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_835 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_837 : STD_LOGIC; 
  signal U3_Mcount_q_xor_17_rt_839 : STD_LOGIC; 
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
  signal U3_Mmux_M1_mux0000_10_886 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_887 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_888 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_889 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_890 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_891 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_893 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_894 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_897 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_898 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_899 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_900 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_901 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_902 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_905 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_906 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_907 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_908 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_909 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_910 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_911 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_912 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_913 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_914 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_915 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_916 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_917 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_918 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_919 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_920 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_921 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_923 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_924 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_927 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_928 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_929 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_930 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_931 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_932 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_935 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_936 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_937 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_938 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_939 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_940 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_941 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_942 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_943 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_944 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_945 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_946 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_947 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_948 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_949 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_950 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_951 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_953 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_954 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_957 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_958 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_959 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_960 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_961 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_962 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_965 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_966 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_967 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_968 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_969 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_970 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_971 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_972 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_973 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_974 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_975 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_976 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_977 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_978 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_979 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_980 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_981 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_983 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_984 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_987 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_988 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_989 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_990 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_991 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_992 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_995 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_996 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_997 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_998 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_999 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_1000 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_1001 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_1002 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_1003 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_1004 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_1005 : STD_LOGIC; 
  signal U3_N101 : STD_LOGIC; 
  signal U3_N102 : STD_LOGIC; 
  signal U3_N13 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N16 : STD_LOGIC; 
  signal U3_N25 : STD_LOGIC; 
  signal U3_N35 : STD_LOGIC; 
  signal U3_N40 : STD_LOGIC; 
  signal U3_N41 : STD_LOGIC; 
  signal U3_N42 : STD_LOGIC; 
  signal U3_N63 : STD_LOGIC; 
  signal U3_N71 : STD_LOGIC; 
  signal U3_N94 : STD_LOGIC; 
  signal U3_N95 : STD_LOGIC; 
  signal U3_N98 : STD_LOGIC; 
  signal U3_Q_0_1039 : STD_LOGIC; 
  signal U3_Q_1_1040 : STD_LOGIC; 
  signal U3_Q_10_1041 : STD_LOGIC; 
  signal U3_Q_11_1042 : STD_LOGIC; 
  signal U3_Q_12_1043 : STD_LOGIC; 
  signal U3_Q_13_1044 : STD_LOGIC; 
  signal U3_Q_14_1045 : STD_LOGIC; 
  signal U3_Q_15_1046 : STD_LOGIC; 
  signal U3_Q_16_1047 : STD_LOGIC; 
  signal U3_Q_2_1048 : STD_LOGIC; 
  signal U3_Q_3_1049 : STD_LOGIC; 
  signal U3_Q_4_1050 : STD_LOGIC; 
  signal U3_Q_5_1051 : STD_LOGIC; 
  signal U3_Q_6_1052 : STD_LOGIC; 
  signal U3_Q_7_1053 : STD_LOGIC; 
  signal U3_Q_8_1054 : STD_LOGIC; 
  signal U3_Q_9_1055 : STD_LOGIC; 
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
  signal U3_blue_0_27_1094 : STD_LOGIC; 
  signal U3_blue_0_9_1095 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal U3_red_0_15_1099 : STD_LOGIC; 
  signal U3_red_2_1_1101 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_1114 : STD_LOGIC; 
  signal U3_spriteonB1_and000018_1115 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_1116 : STD_LOGIC; 
  signal U3_spriteonB1_and000060_1117 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000217 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt00002171_1120 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_1121 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and000019_1123 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_1124 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW0 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW01_1126 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000013_1128 : STD_LOGIC; 
  signal U3_spriteonB3_and000025_1129 : STD_LOGIC; 
  signal U3_spriteonB3_and000032_1130 : STD_LOGIC; 
  signal U3_spriteonB3_and000041_1131 : STD_LOGIC; 
  signal U3_spriteonB3_and000059_1132 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002112_1133 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002128_1134 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000023_1136 : STD_LOGIC; 
  signal U3_spriteonB4_and000061_1137 : STD_LOGIC; 
  signal U3_spriteonB4_and000089_1138 : STD_LOGIC; 
  signal U3_spriteonB4_and00009_1139 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000017 : STD_LOGIC; 
  signal U3_spriteonB5_and0000171_1142 : STD_LOGIC; 
  signal U3_spriteonB5_and000034_1143 : STD_LOGIC; 
  signal U3_spriteonB5_and00006_1144 : STD_LOGIC; 
  signal U3_spriteonB5_and000081_1145 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000110_1147 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000015_1148 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000034_1149 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000046_1150 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000051_1151 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000064_1152 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000091_1153 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000014_1163 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000027_1164 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000051_1165 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_16_1166 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_4_1167 : STD_LOGIC; 
  signal U3_tank1_angle_calc_not0001 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000011_1178 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000023_1179 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000046_1180 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_16_1182 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_4_1183 : STD_LOGIC; 
  signal U3_tank2_angle_calc_not0001 : STD_LOGIC; 
  signal a_to_g_0_OBUF_1202 : STD_LOGIC; 
  signal a_to_g_1_OBUF_1203 : STD_LOGIC; 
  signal a_to_g_2_OBUF_1204 : STD_LOGIC; 
  signal a_to_g_3_OBUF_1205 : STD_LOGIC; 
  signal a_to_g_4_OBUF_1206 : STD_LOGIC; 
  signal a_to_g_5_OBUF_1207 : STD_LOGIC; 
  signal a_to_g_6_OBUF_1208 : STD_LOGIC; 
  signal an_0_OBUF_1213 : STD_LOGIC; 
  signal an_1_OBUF_1214 : STD_LOGIC; 
  signal an_2_OBUF_1215 : STD_LOGIC; 
  signal an_3_OBUF_1216 : STD_LOGIC; 
  signal blue_0_OBUF_1219 : STD_LOGIC; 
  signal blue_1_OBUF_1220 : STD_LOGIC; 
  signal btn_3_IBUF_1222 : STD_LOGIC; 
  signal green_0_OBUF_1227 : STD_LOGIC; 
  signal green_1_OBUF_1228 : STD_LOGIC; 
  signal green_2_OBUF_1229 : STD_LOGIC; 
  signal hsync_OBUF_1231 : STD_LOGIC; 
  signal ja1_IBUF_1233 : STD_LOGIC; 
  signal ja2_OBUF_1235 : STD_LOGIC; 
  signal ja3_OBUF_1237 : STD_LOGIC; 
  signal mclk_BUFGP_1239 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_1242 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_1244 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_1246 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_1248 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_1250 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_1252 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_1254 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_1256 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_1258 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_1261 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_1263 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_1265 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_1267 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_1269 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_1271 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_1273 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_1275 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_1287 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_1300 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_1312 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_1313 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_1315 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_1317 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_1320 : STD_LOGIC; 
  signal nes_right_reg_1321 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_1344 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_1345 : STD_LOGIC; 
  signal nes_up_reg_1356 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal red_0_OBUF_1361 : STD_LOGIC; 
  signal red_1_OBUF_1362 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_1368 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_1369 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_1370 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_1374 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_1376 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_1378 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_1380 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_1382 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_1384 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_1386 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_1388 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_1390 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_1392 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_1394 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_1396 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_1398 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_1400 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_1402 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_1404 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_1406 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_1408 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_1410 : STD_LOGIC; 
  signal x7_Mmux_digit_3_1411 : STD_LOGIC; 
  signal x7_Mmux_digit_31_1412 : STD_LOGIC; 
  signal x7_Mmux_digit_32_1413 : STD_LOGIC; 
  signal x7_Mmux_digit_33_1414 : STD_LOGIC; 
  signal x7_Mmux_digit_4_1415 : STD_LOGIC; 
  signal x7_Mmux_digit_41_1416 : STD_LOGIC; 
  signal x7_Mmux_digit_42_1417 : STD_LOGIC; 
  signal x7_Mmux_digit_43_1418 : STD_LOGIC; 
  signal x7_an_1_mux000115_1439 : STD_LOGIC; 
  signal x7_an_1_mux00012_1440 : STD_LOGIC; 
  signal x7_an_1_mux000128 : STD_LOGIC; 
  signal x7_an_1_mux000152_1442 : STD_LOGIC; 
  signal x7_an_2_mux000128_1443 : STD_LOGIC; 
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
  signal U3_red : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 8 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_spriteon2f_add0002 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_tank1_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_tank2_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_tank2_angle_calc_mux0004 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
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
      PRE => btn_3_IBUF_1222,
      Q => who_present_state_FSM_FFd2_1370
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_a_reg_1300,
      Q => who_present_state_FSM_FFd1_1369
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => Result(0),
      Q => U1_q_01
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_514,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_502,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_502,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_500,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_500,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_498,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_498,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_496,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_496,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_494,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_494,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_492,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_492,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_490,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_490,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_488,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_488,
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
      LI => U2_Mcount_vcs_xor_9_rt_543,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_531,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_531,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_529,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_529,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_527,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_527,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_525,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_525,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_523,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_523,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_521,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_521,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_519,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_519,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_517,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_517,
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
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_602,
      CLR => btn_3_IBUF_1222,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_602
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
      O => U3_Mmux_M1a_mux0000_7_928
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_928,
      I1 => U3_Mmux_M1a_mux0000_6_923,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_920
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_929
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_935
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_935,
      I1 => U3_Mmux_M1a_mux0000_71_929,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_924
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_924,
      I1 => U3_Mmux_M1a_mux0000_5_f5_920,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_918
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_930
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_20_Q_105,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_936
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_936,
      I1 => U3_Mmux_M1a_mux0000_72_930,
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
      O => U3_Mmux_M1a_mux0000_82_937
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_942,
      I1 => U3_Mmux_M1a_mux0000_82_937,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_932
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_932,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_921
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_921,
      I1 => U3_Mmux_M1a_mux0000_4_f6_918,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_917
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_938,
      I1 => U3_Mmux_M1a_mux0000_73_931,
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
      O => U3_Mmux_M1a_mux0000_84_939
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_943
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_943,
      I1 => U3_Mmux_M1a_mux0000_84_939,
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
      I0 => U3_Mmux_M1a_mux0000_92_944,
      I1 => U3_Mmux_M1a_mux0000_85_940,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1a_2_Q_127,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_945
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_916,
      I1 => U3_Mmux_M1a_mux0000_93_945,
      S => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_941
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_941,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_927
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_927,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_919
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_919,
      I1 => U3_Mmux_M1a_mux0000_3_f7_917,
      S => U3_xpix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M1_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_30_Q,
      I2 => M1_31_Q,
      O => U3_Mmux_M1_mux0000_6_893
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_898
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_898,
      I1 => U3_Mmux_M1_mux0000_6_893,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_890
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_899
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_905
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_905,
      I1 => U3_Mmux_M1_mux0000_71_899,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_894
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_894,
      I1 => U3_Mmux_M1_mux0000_5_f5_890,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_888
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_900
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_20_Q_18,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_906
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_906,
      I1 => U3_Mmux_M1_mux0000_72_900,
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
      I2 => M1_19_Q_16,
      O => U3_Mmux_M1_mux0000_82_907
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_912,
      I1 => U3_Mmux_M1_mux0000_82_907,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_902
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_902,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_891
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_891,
      I1 => U3_Mmux_M1_mux0000_4_f6_888,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_887
    );
  U3_Mmux_M1_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_12_Q_9,
      I2 => M1_13_Q_11,
      O => U3_Mmux_M1_mux0000_83_908
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_908,
      I1 => U3_Mmux_M1_mux0000_73_901,
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
      I2 => M1_11_Q_8,
      O => U3_Mmux_M1_mux0000_84_909
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_8_Q,
      I2 => M1_9_Q_92,
      O => U3_Mmux_M1_mux0000_91_913
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_913,
      I1 => U3_Mmux_M1_mux0000_84_909,
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
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_4_Q,
      I2 => M1_5_Q_90,
      O => U3_Mmux_M1_mux0000_92_914
    );
  U3_Mmux_M1_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_92_914,
      I1 => U3_Mmux_M1_mux0000_85_910,
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
      O => U3_Mmux_M1_mux0000_93_915
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_886
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_886,
      I1 => U3_Mmux_M1_mux0000_93_915,
      S => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_911
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_911,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_897
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_897,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_889
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_889,
      I1 => U3_Mmux_M1_mux0000_3_f7_887,
      S => U3_xpix1(4),
      O => U3_M1_mux0000
    );
  U3_Mmux_M2_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_1_Q,
      I2 => M1_0_Q,
      O => U3_Mmux_M2_mux0000_6_953
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_28_Q,
      I2 => M1_2_Q,
      O => U3_Mmux_M2_mux0000_7_958
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_958,
      I1 => U3_Mmux_M2_mux0000_6_953,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_950
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_4_Q,
      I2 => M2_25_Q_159,
      O => U3_Mmux_M2_mux0000_8_965
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_965,
      I1 => U3_Mmux_M2_mux0000_71_959,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_954
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_954,
      I1 => U3_Mmux_M2_mux0000_5_f5_950,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_948
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_22_Q,
      I2 => M1_8_Q,
      O => U3_Mmux_M2_mux0000_72_960
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M1_11_Q_8,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_966
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_966,
      I1 => U3_Mmux_M2_mux0000_72_960,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_18_Q,
      I2 => M2_19_Q_150,
      O => U3_Mmux_M2_mux0000_82_967
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_972,
      I1 => U3_Mmux_M2_mux0000_82_967,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_962
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_962,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_951
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_951,
      I1 => U3_Mmux_M2_mux0000_4_f6_948,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_947
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_12_Q,
      I2 => M1_18_Q,
      O => U3_Mmux_M2_mux0000_83_968
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_968,
      I1 => U3_Mmux_M2_mux0000_73_961,
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
      I2 => M2_11_Q_147,
      O => U3_Mmux_M2_mux0000_84_969
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_973
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_973,
      I1 => U3_Mmux_M2_mux0000_84_969,
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
      O => U3_Mmux_M2_mux0000_85_970
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_974
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_974,
      I1 => U3_Mmux_M2_mux0000_85_970,
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
      O => U3_Mmux_M2_mux0000_93_975
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2_0_Q,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_946
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_946,
      I1 => U3_Mmux_M2_mux0000_93_975,
      S => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_971
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_971,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_957
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_957,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_949
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_949,
      I1 => U3_Mmux_M2_mux0000_3_f7_947,
      S => U3_xpix2(4),
      O => U3_M2_mux0000
    );
  U3_Mmux_M2a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_28_Q,
      I2 => M2a_29_Q,
      O => U3_Mmux_M2a_mux0000_7_988
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_988,
      I1 => U3_Mmux_M2a_mux0000_6_983,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_980
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_995,
      I1 => U3_Mmux_M2a_mux0000_71_989,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_984
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_984,
      I1 => U3_Mmux_M2a_mux0000_5_f5_980,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_978
    );
  U3_Mmux_M2a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_22_Q,
      I2 => M1a_8_Q,
      O => U3_Mmux_M2a_mux0000_72_990
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_20_Q,
      I2 => M1a_10_Q,
      O => U3_Mmux_M2a_mux0000_81_996
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_996,
      I1 => U3_Mmux_M2a_mux0000_72_990,
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
      I2 => M2a_19_Q_207,
      O => U3_Mmux_M2a_mux0000_82_997
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_1002,
      I1 => U3_Mmux_M2a_mux0000_82_997,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_992
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_992,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_981
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_981,
      I1 => U3_Mmux_M2a_mux0000_4_f6_978,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_977
    );
  U3_Mmux_M2a_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_12_Q,
      I2 => M2a_13_Q_203,
      O => U3_Mmux_M2a_mux0000_83_998
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_998,
      I1 => U3_Mmux_M2a_mux0000_73_991,
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
      I2 => M1a_20_Q_105,
      O => U3_Mmux_M2a_mux0000_84_999
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_1003
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_1003,
      I1 => U3_Mmux_M2a_mux0000_84_999,
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
      O => U3_Mmux_M2a_mux0000_85_1000
    );
  U3_Mmux_M2a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => M2a_4_Q,
      I2 => M2a_5_Q,
      O => U3_Mmux_M2a_mux0000_92_1004
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_1004,
      I1 => U3_Mmux_M2a_mux0000_85_1000,
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
      O => U3_Mmux_M2a_mux0000_93_1005
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_976,
      I1 => U3_Mmux_M2a_mux0000_93_1005,
      S => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_1001
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_1001,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_987
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_987,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_979
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_979,
      I1 => U3_Mmux_M2a_mux0000_3_f7_977,
      S => U3_xpix2(4),
      O => U3_M2a_mux0000
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
  U3_Mcount_C1_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(9),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(9)
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
  U3_Mcount_C1_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(8),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(8)
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
  U3_Mcount_C1_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(7),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(7)
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
  U3_Mcount_C1_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(6),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(6)
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
  U3_Mcount_C1_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(5),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(5)
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
  U3_Mcount_C1_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(4),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(4)
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
  U3_Mcount_C1_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(3),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(3)
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
  U3_Mcount_C1_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(2),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(2)
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
  U3_Mcount_C1_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C1(1),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C1_xor_0_Q : XORCY
    port map (
      CI => nes_left_reg_1317,
      LI => U3_Mcount_C1_lut(0),
      O => U3_Result_0_1
    );
  U3_Mcount_C1_cy_0_Q : MUXCY
    port map (
      CI => nes_left_reg_1317,
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
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C1_lut(0)
    );
  U3_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(16),
      LI => U3_Mcount_q_xor_17_rt_839,
      O => U3_Result(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_819,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_819,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_817,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_817,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_815,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_815,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_813,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_813,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_811,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_811,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_809,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_809,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_807,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_807,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_837,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_837,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_835,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_835,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_833,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_833,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_831,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_831,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_829,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_829,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_827,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_827,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_825,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_825,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_823,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_823,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_821,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_821,
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
  U3_Mcount_C2_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(9),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(9)
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
  U3_Mcount_C2_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(8),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(8)
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
  U3_Mcount_C2_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(7),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(7)
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
  U3_Mcount_C2_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(6),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(6)
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
  U3_Mcount_C2_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(5),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(5)
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
  U3_Mcount_C2_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(4),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(4)
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
  U3_Mcount_C2_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(3),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(3)
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
  U3_Mcount_C2_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(2),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(2)
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
  U3_Mcount_C2_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_C2(1),
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C2_xor_0_Q : XORCY
    port map (
      CI => nes_left_reg_1317,
      LI => U3_Mcount_C2_lut(0),
      O => U3_Result_0_2
    );
  U3_Mcount_C2_cy_0_Q : MUXCY
    port map (
      CI => nes_left_reg_1317,
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
      I1 => nes_left_reg_1317,
      O => U3_Mcount_C2_lut(0)
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
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(17),
      Q => U3_q_171
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(16),
      Q => U3_Q_16_1047
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(15),
      Q => U3_Q_15_1046
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(14),
      Q => U3_Q_14_1045
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(13),
      Q => U3_Q_13_1044
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(12),
      Q => U3_Q_12_1043
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(11),
      Q => U3_Q_11_1042
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(10),
      Q => U3_Q_10_1041
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(9),
      Q => U3_Q_9_1055
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(8),
      Q => U3_Q_8_1054
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(7),
      Q => U3_Q_7_1053
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(6),
      Q => U3_Q_6_1052
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(5),
      Q => U3_Q_5_1051
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(4),
      Q => U3_Q_4_1050
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(3),
      Q => U3_Q_3_1049
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(2),
      Q => U3_Q_2_1048
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(1),
      Q => U3_Q_1_1040
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => U3_Result(0),
      Q => U3_Q_0_1039
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
  U3_Mcount_tank2_angle_calc_lut_3_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc_mux0004(4),
      O => U3_Mcount_tank2_angle_calc_lut(3)
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
      CI => nes_up_reg_1356,
      LI => U3_Mcount_tank2_angle_calc_lut(0),
      O => U3_Mcount_tank2_angle_calc
    );
  U3_Mcount_tank2_angle_calc_cy_0_Q : MUXCY
    port map (
      CI => nes_up_reg_1356,
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
      CI => nes_up_reg_1356,
      LI => U3_Mcount_tank1_angle_calc_lut(0),
      O => U3_Mcount_tank1_angle_calc
    );
  U3_Mcount_tank1_angle_calc_cy_0_Q : MUXCY
    port map (
      CI => nes_up_reg_1356,
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
      O => x7_Mmux_digit_3_1411
    );
  x7_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(0),
      I2 => U3_tank2_angle_calc(4),
      O => x7_Mmux_digit_4_1415
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_1415,
      I1 => x7_Mmux_digit_3_1411,
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
      O => x7_Mmux_digit_31_1412
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(5),
      O => x7_Mmux_digit_41_1416
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_1416,
      I1 => x7_Mmux_digit_31_1412,
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
      O => x7_Mmux_digit_32_1413
    );
  x7_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(2),
      I2 => U3_tank2_angle_calc(6),
      O => x7_Mmux_digit_42_1417
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => x7_Mmux_digit_42_1417,
      I1 => x7_Mmux_digit_32_1413,
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
      O => x7_Mmux_digit_33_1414
    );
  x7_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(7),
      O => x7_Mmux_digit_43_1418
    );
  x7_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => x7_Mmux_digit_43_1418,
      I1 => x7_Mmux_digit_33_1414,
      S => x7_clkdiv(19),
      O => x7_digit(3)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_1410,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_1390,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_1390,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_1388,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_1388,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_1386,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_1386,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_1384,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_1384,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_1382,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_1382,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_1380,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_1380,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_1378,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_1378,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_1376,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_1376,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_1374,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_1374,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_1408,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_1408,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_1406,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_1406,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_1404,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_1404,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_1402,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_1402,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_1400,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_1400,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_1398,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_1398,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_1396,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_1396,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_1394,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_1394,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_1392,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_1392,
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
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_1239,
      CLR => btn_3_IBUF_1222,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_1287,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_1275,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_1275,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_1273,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_1273,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_1271,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_1271,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_1269,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_1269,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_1267,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_1267,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_1265,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_1265,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_1263,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_1263,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_1261,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_1261,
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
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_1258,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_1256,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_1256,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_1254,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_1254,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_1252,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_1252,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_1250,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_1250,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_1248,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_1248,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_1246,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_1246,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_1244,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_1244,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_1242,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_1242,
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
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_1222,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_1321
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_1300
    );
  nes_up_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_1356
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_1222,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_1315
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_1317
    );
  U3_tank2_angle_calc_not00011 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => nes_down_reg_1315,
      I1 => who_present_state_FSM_FFd2_1370,
      I2 => nes_up_reg_1356,
      O => U3_tank2_angle_calc_not0001
    );
  U3_tank1_angle_calc_not00011 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => nes_down_reg_1315,
      I1 => who_present_state_FSM_FFd2_1370,
      I2 => nes_up_reg_1356,
      O => U3_tank1_angle_calc_not0001
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_1213
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_1231
    );
  who_present_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1370,
      I1 => nes_a_reg_1300,
      I2 => who_present_state_FSM_FFd1_1369,
      O => who_present_state_FSM_FFd2_In
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
      O => an_3_OBUF_1216
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
      INIT => X"FFFD"
    )
    port map (
      I0 => U2_N2,
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => N2,
      O => vsync_OBUF_1368
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
      O => x7_an_2_mux000128_1443
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
      O => nes_nes_clk31_1320
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
      O => a_to_g_2_OBUF_1204
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
      O => a_to_g_4_OBUF_1206
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
      O => a_to_g_1_OBUF_1203
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
      O => a_to_g_5_OBUF_1207
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
      O => a_to_g_0_OBUF_1202
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
      O => a_to_g_3_OBUF_1205
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
      O => a_to_g_6_OBUF_1208
    );
  x7_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => x7_an_1_mux00012_1440
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
      O => x7_an_1_mux000115_1439
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
      O => x7_an_1_mux000152_1442
    );
  x7_an_1_mux000172 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => x7_an_1_mux00012_1440,
      I1 => x7_an_1_mux000115_1439,
      I2 => x7_an_1_mux000128,
      I3 => x7_an_1_mux000152_1442,
      O => an_1_OBUF_1214
    );
  U3_tank2_angle_calc_and000011 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_down_reg_1315,
      I1 => nes_up_reg_1356,
      I2 => who_present_state_FSM_FFd2_1370,
      I3 => U3_tank2_angle_calc(0),
      O => U3_tank2_angle_calc_and000011_1178
    );
  U3_tank2_angle_calc_and000023 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(5),
      O => U3_tank2_angle_calc_and000023_1179
    );
  U3_tank2_angle_calc_and000050 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_tank2_angle_calc_and000011_1178,
      I1 => U3_tank2_angle_calc(7),
      I2 => U3_tank2_angle_calc_and000023_1179,
      I3 => U3_tank2_angle_calc_and000046_1180,
      O => U3_tank2_angle_calc_and0000
    );
  U3_tank1_angle_calc_and000027 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(5),
      O => U3_tank1_angle_calc_and000027_1164
    );
  U3_tank1_angle_calc_and000051 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(2),
      I3 => U3_tank1_angle_calc(1),
      O => U3_tank1_angle_calc_and000051_1165
    );
  U3_tank1_angle_calc_and000055 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_tank1_angle_calc_and000014_1163,
      I1 => U3_tank1_angle_calc(7),
      I2 => U3_tank1_angle_calc_and000027_1164,
      I3 => U3_tank1_angle_calc_and000051_1165,
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
      I3 => nes_N01,
      O => nes_up_reg_cmp_eq0000
    );
  nes_right_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => N562,
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
      I3 => nes_N01,
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
      I3 => nes_N01,
      O => nes_down_reg_cmp_eq0000
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
      O => N4
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
      I1 => U2_vcs_cmp_eq0000_589,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(7),
      I2 => U2_vcs(6),
      I3 => U2_vcs(5),
      O => U2_N2
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => N563,
      O => U2_hcs_cmp_eq0000
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
      O => nes_scalar_next_cmp_eq000010_1344
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
      O => nes_scalar_next_cmp_eq000021_1345
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
      I1 => U2_vcs_cmp_eq0000_589,
      O => U2_Mcount_vcs_eqn_1
    );
  U3_tank2_angle_calc_mux0004_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U3_tank2_angle_calc(3),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(0),
      I3 => U3_tank2_angle_calc(2),
      O => U3_tank2_angle_calc_mux0004(4)
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
      I1 => U2_vcs_cmp_eq0000_589,
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
      I1 => U2_vcs_cmp_eq0000_589,
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
      I1 => U2_vcs_cmp_eq0000_589,
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
      I0 => N566,
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
      I0 => U2_vcs_cmp_eq0000_589,
      I1 => U2_Result(6),
      O => U2_Mcount_vcs_eqn_6
    );
  nes_counter_reg_cmp_eq0000112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(7),
      I2 => nes_counter_reg(1),
      I3 => nes_counter_reg(3),
      O => nes_counter_reg_cmp_eq0000112_1312
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N565,
      I1 => nes_counter_reg_cmp_eq0000112_1312,
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
      I0 => U2_vcs_cmp_eq0000_589,
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
      I0 => U2_vcs_cmp_eq0000_589,
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
      I0 => U2_vcs_cmp_eq0000_589,
      I1 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  U3_tank1_angle_calc_mux0004_3_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_tank1_angle_calc(0),
      O => N10
    );
  U3_tank2_angle_calc_mux0004_7_4 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => U3_tank2_angle_calc(6),
      I2 => U3_tank2_angle_calc(5),
      O => U3_tank2_angle_calc_mux0004_7_4_1183
    );
  U3_tank2_angle_calc_mux0004_7_16 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U3_tank2_angle_calc(1),
      I1 => U3_tank2_angle_calc(4),
      I2 => U3_tank2_angle_calc(3),
      I3 => U3_tank2_angle_calc(7),
      O => U3_tank2_angle_calc_mux0004_7_16_1182
    );
  U3_tank1_angle_calc_mux0004_7_4 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(6),
      I2 => U3_tank1_angle_calc(5),
      O => U3_tank1_angle_calc_mux0004_7_4_1167
    );
  U3_tank1_angle_calc_mux0004_7_16 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U3_tank1_angle_calc(1),
      I1 => U3_tank1_angle_calc(4),
      I2 => U3_tank1_angle_calc(3),
      I3 => U3_tank1_angle_calc(7),
      O => U3_tank1_angle_calc_mux0004_7_16_1166
    );
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(3),
      I2 => U3_C2(5),
      I3 => U3_C2_not00011_632,
      O => U3_C2_not00016_636
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_633
    );
  U3_C2_not000186 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_C2_not000164_637,
      I1 => who_present_state_FSM_FFd2_1370,
      I2 => nes_left_reg_1317,
      I3 => U3_C2_not000123_634,
      O => U3_C2_not0001
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(9),
      I1 => U3_C1(8),
      O => U3_C1_not00015_619
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
      O => U3_C1_not000110_614
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => nes_left_reg_1317,
      I1 => U3_C1_not00015_619,
      I2 => U3_C1_not000110_614,
      I3 => U3_C1_not00014_617,
      O => U3_C1_not000127_616
    );
  U3_C1_not000147 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(3),
      I1 => U3_C1(2),
      O => U3_C1_not000147_618
    );
  U3_C1_not0001105 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => nes_left_reg_1317,
      I1 => U3_C1(8),
      I2 => U3_C1(9),
      I3 => nes_right_reg_1321,
      O => U3_C1_not0001105_615
    );
  U3_C1_not0001144 : LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_1370,
      I1 => U3_C1_not0001105_615,
      I2 => U3_C1_not000127_616,
      I3 => U3_C1_not000183_620,
      O => U3_C1_not0001
    );
  U3_tank2_angle_calc_mux0004_0_2_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(0),
      O => N12
    );
  U3_tank1_angle_calc_mux0004_4_11 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_tank1_angle_calc(0),
      O => U3_N63
    );
  U3_spriteonB1_and0000221 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(9),
      O => U2_vidon_and000013
    );
  U3_spriteonGrnd_and0000231 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(6),
      I2 => U2_hcs(5),
      O => U3_N94
    );
  U3_blue_and0000211 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(8),
      O => U3_N101
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_590
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
      O => U2_vidon_and00006_598
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
      O => U2_vidon_and000018_594
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_598,
      I2 => U2_vidon_and000018_594,
      I3 => U2_vidon_and00000_590,
      O => U2_vidon_and000039_597
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
      O => U2_vidon_and000080_601
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_N94,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U2_vidon_and0000105_591
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U2_vidon_and0000105_591,
      I1 => U2_vidon_and000080_601,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_592
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_597,
      I1 => U2_vidon_and0000117_592,
      O => vidon
    );
  U3_spriteonB2_and000021 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => U3_N95
    );
  U3_spriteonB3_cmp_le00002112 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(7),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => U3_spriteonB3_cmp_le00002112_1133
    );
  U3_spriteonB3_cmp_le00002128 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      I2 => U2_hcs(1),
      I3 => U2_hcs(2),
      O => U3_spriteonB3_cmp_le00002128_1134
    );
  U3_spriteonB3_cmp_le00002129 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_spriteonB3_cmp_le00002112_1133,
      I1 => U3_spriteonB3_cmp_le00002128_1134,
      O => U3_N25
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
      O => U3_spriteonB1_cmp_lt0000232_1121
    );
  U3_spriteonB1_cmp_lt0000249 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000232_1121,
      I1 => U2_vcs(9),
      I2 => U3_spriteonB1_cmp_lt0000217,
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_spriteonB1_and000018 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(5),
      O => U3_spriteonB1_and000018_1115
    );
  U3_spriteonB1_and000087 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_N95,
      I1 => U3_spriteonB1_and000010_1114,
      I2 => U3_spriteonB1_and000060_1117,
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
      O => U3_spriteonB2_and00005_1124
    );
  U3_spriteonB3_and000025 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      O => U3_spriteonB3_and000025_1129
    );
  U3_spriteonB3_and000032 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => U3_spriteonB3_and000032_1130
    );
  U3_spriteonB3_and000041 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => U3_spriteonB3_and000025_1129,
      I3 => U3_spriteonB3_and000032_1130,
      O => U3_spriteonB3_and000041_1131
    );
  U3_spriteonB3_and000069 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB3_and000013_1128,
      I2 => U3_spriteonB3_and000059_1132,
      O => U3_spriteonB3
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
  U3_blue_and0000111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      O => U3_N42
    );
  U3_spriteonB5_and00006 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      O => U3_spriteonB5_and00006_1144
    );
  U3_spriteonB5_and0000107 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U3_spriteonB5_and00006_1144,
      I2 => U3_spriteonB5_and000034_1143,
      I3 => U3_spriteonB5_and000081_1145,
      O => U3_spriteonB5
    );
  U3_spriteonGrnd_and000015 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(3),
      I3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000015_1148
    );
  U3_spriteonGrnd_and000046 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      O => U3_spriteonGrnd_and000046_1150
    );
  U3_spriteonGrnd_and000051 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(3),
      I3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000051_1151
    );
  U3_spriteonGrnd_and000064 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_spriteonGrnd_and000046_1150,
      I1 => U2_hcs(7),
      I2 => U2_hcs(4),
      I3 => U3_spriteonGrnd_and000051_1151,
      O => U3_spriteonGrnd_and000064_1152
    );
  U3_spriteonGrnd_and000091 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => U3_spriteonGrnd_and000064_1152,
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      I3 => U3_spriteonGrnd_and000034_1149,
      O => U3_spriteonGrnd_and000091_1153
    );
  U3_spriteonGrnd_and0000110 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(5),
      I2 => U3_N42,
      I3 => U2_vcs(4),
      O => U3_spriteonGrnd_and0000110_1147
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
  U3_red_2_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB3,
      O => U3_N13
    );
  U3_spriteonB4_and00009 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U3_N71,
      I3 => U2_vcs(3),
      O => U3_spriteonB4_and00009_1139
    );
  U3_spriteonB4_and000023 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(5),
      I2 => U3_spriteonB4_and00009_1139,
      I3 => U2_vcs(7),
      O => U3_spriteonB4_and000023_1136
    );
  U3_spriteonB4_and000089 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U2_hcs(9),
      I2 => U3_N25,
      I3 => U3_spriteonB4_and000061_1137,
      O => U3_spriteonB4_and000089_1138
    );
  U3_spriteonB4_and000099 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonB4_and000089_1138,
      I2 => U2_vcs(8),
      I3 => U3_spriteonB4_and000023_1136,
      O => U3_spriteonB4
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
      I0 => N46,
      I1 => U3_C2(9),
      I2 => U3_C2(7),
      I3 => U3_C2(8),
      O => U3_spriteon2_addsub0000(9)
    );
  M1_3_f5 : MUXF5
    port map (
      I0 => M1_3_2,
      I1 => M1_3_1,
      S => rom1_addr(4),
      O => M1_3_Q
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
      I0 => N63,
      I1 => U3_C1(9),
      I2 => U3_C1(7),
      I3 => U3_C1(8),
      O => U3_spriteon1_addsub0001(9)
    );
  M2a_19_Q : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_18_2,
      I2 => M1a_12_bdd0,
      O => M2a_19_Q_207
    );
  M2a_28_f5 : MUXF5
    port map (
      I0 => M1a_3_2_131,
      I1 => M1a_3_1_130,
      S => rom1_addr(4),
      O => M2a_28_Q
    );
  M2a_18_f5 : MUXF5
    port map (
      I0 => M2a_18_2,
      I1 => M2a_18_1_205,
      S => rom1_addr(4),
      O => M2a_18_Q
    );
  M2a_20_f5 : MUXF5
    port map (
      I0 => M1a_11_2_97,
      I1 => M1a_11_1_96,
      S => rom1_addr(4),
      O => M2a_20_Q
    );
  U3_Msub_ypix1_Madd_xor_3_111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      O => U3_N71
    );
  M2_21_f5 : MUXF5
    port map (
      I0 => M1_10_2_5,
      I1 => M1_10_1_4,
      S => rom1_addr(4),
      O => M2_21_Q
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
      O => M1a_29_51_126
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
      O => M1a_27_52_122
    );
  M1a_27_82 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => U2_vcs(0),
      I3 => M1_22_bdd4,
      O => M1a_27_82_123
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
      O => M1a_30_36_128
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
      O => M1a_23_10_111
    );
  M1a_23_59 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_23_54,
      I2 => M1a_23_10_111,
      I3 => M1a_23_14_112,
      O => M1a_23_Q
    );
  M2a_1_36 : LUT4
    generic map(
      INIT => X"094D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd16,
      I3 => M2_0_bdd9,
      O => M2a_1_36_208
    );
  M2a_1_63 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => U2_vcs(1),
      I3 => M2_0_bdd1,
      O => M2a_1_63_209
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
      O => M1_23_20_32
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
      O => M1_29_14_73
    );
  M1_29_35 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_29_0_69,
      I2 => M1_29_14_73,
      I3 => rom1_addr(4),
      O => M1_29_35_74
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
      O => M1_29_60_75
    );
  M1_29_75 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => M1_21_bdd8,
      I3 => U2_vcs(0),
      O => M1_29_75_76
    );
  M1_29_131 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1_29_35_74,
      I1 => M1_29_126,
      I2 => M1_29_60_75,
      I3 => M1_29_75_76,
      O => M1_29_Q
    );
  U3_red_0_21 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => vidon,
      I1 => U3_M1_mux0000,
      I2 => U3_N98,
      I3 => U3_M1a_mux0000,
      O => U3_N35
    );
  M1_30_96 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      O => M1_30_96_83
    );
  M2a_4_52 : LUT4
    generic map(
      INIT => X"6EC8"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(2),
      I2 => U2_vcs(0),
      I3 => M2_0_bdd6,
      O => M2a_4_52_217
    );
  M2a_4_82 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => U2_vcs(0),
      I3 => M2_3_bdd6,
      O => M2a_4_82_218
    );
  M1_28_2 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      O => M1_28_2_64
    );
  M1_28_12 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_bdd4,
      I2 => M1_28_2_64,
      I3 => rom1_addr(4),
      O => M1_28_12_60
    );
  M1_28_28 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd3,
      I2 => M1_23_bdd6,
      I3 => U2_vcs(1),
      O => M1_28_28_65
    );
  M1_28_123 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1_28_12_60,
      I1 => M1_28_120,
      I2 => M1_28_28_65,
      I3 => M1_28_65_66,
      O => M1_28_Q
    );
  M2_1_115 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => M1_30_96_83,
      I3 => M2_0_bdd1,
      O => M2_1_115_152
    );
  M2_1_120 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_1_115_152,
      I2 => M2_1_49_153,
      I3 => M2_1_60_154,
      O => M2_1_Q
    );
  M1_27_40 : LUT4
    generic map(
      INIT => X"C8E8"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => M1_27_40_56
    );
  M1_27_127 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1_27_40_56,
      I2 => M1_27_102_53,
      I3 => rom1_addr(3),
      O => M1_27_127_54
    );
  M2_3_12 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_3_bdd6,
      I2 => M1_28_2_64,
      I3 => rom1_addr(4),
      O => M2_3_12_168
    );
  M2_3_127 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M2_3_12_168,
      I1 => M2_3_124,
      I2 => M2_3_30_172,
      I3 => M2_3_69_173,
      O => M2_3_Q
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
  M2a_8_10 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_10_bdd14,
      I2 => M2a_6_bdd0,
      I3 => rom1_addr(3),
      O => M2a_8_10_225
    );
  M2a_8_59 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_23_54,
      I2 => M2a_8_10_225,
      I3 => M2a_8_14_226,
      O => M2a_8_Q
    );
  U3_red_0_44 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_N41,
      I1 => U3_blue_and0003,
      I2 => U3_red_0_15_1099,
      I3 => U3_N35,
      O => red_0_OBUF_1361
    );
  M2_8_20 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_3_bdd6,
      I2 => M2_0_bdd9,
      I3 => U2_vcs(1),
      O => M2_8_20_194
    );
  M2_2_14 : LUT4
    generic map(
      INIT => X"0F09"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => U2_vcs(1),
      I3 => M1_0_bdd2,
      O => M2_2_14_162
    );
  M2_2_35 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_29_0_69,
      I2 => M2_2_14_162,
      I3 => rom1_addr(4),
      O => M2_2_35_163
    );
  M2_2_60 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd16,
      I2 => M2_2_bdd5,
      I3 => U2_vcs(1),
      O => M2_2_60_164
    );
  M2_2_75 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => rom1_addr(3),
      I2 => M2_10_bdd14,
      I3 => U2_vcs(0),
      O => M2_2_75_165
    );
  M2_2_131 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M2_2_35_163,
      I1 => M1_29_126,
      I2 => M2_2_60_164,
      I3 => M2_2_75_165,
      O => M2_2_Q
    );
  M1_25_75 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => M1_24_39_38,
      I1 => U2_vcs(1),
      I2 => M1_25_35,
      I3 => rom1_addr(3),
      O => M1_25_75_45
    );
  M1_25_138 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_10_bdd5,
      I2 => rom1_addr(4),
      I3 => M1_25_bdd0,
      O => M1_25_138_41
    );
  U3_tank1Angle_0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(2),
      O => N126
    );
  U3_tank1Angle_0_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => U3_tank1_angle_calc(7),
      I2 => U3_tank1_angle_calc(5),
      I3 => N126,
      O => M1_21_bdd5
    );
  U3_tank1Angle_1_1_SW0 : LUT4
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
  U3_tank1Angle_1_1 : LUT4
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
  U3_green_0_SW0 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonB1,
      I3 => U3_spriteonB3,
      O => N130
    );
  U3_green_0_Q : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_N98,
      I1 => U3_N102,
      I2 => N130,
      I3 => U3_M1a_mux0000,
      O => green_0_OBUF_1227
    );
  U3_blue_0_9 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB5,
      I2 => U3_spriteonB4,
      O => U3_blue_0_9_1095
    );
  U3_blue_0_27 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonGrnd,
      I2 => U3_blue_0_9_1095,
      I3 => U3_spriteonB2,
      O => U3_blue_0_27_1094
    );
  U3_blue_0_45 : LUT4
    generic map(
      INIT => X"20A0"
    )
    port map (
      I0 => U3_blue_0_27_1094,
      I1 => U3_M1a_mux0000,
      I2 => U3_N102,
      I3 => U3_N98,
      O => blue_0_OBUF_1219
    );
  M2_6_153 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_25_138_41,
      I2 => M2_6_108_186,
      O => M2_6_Q
    );
  U3_green_1_21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U3_blue_and0003,
      I1 => U3_N41,
      O => U3_N102
    );
  U3_green_2_1 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_N102,
      I1 => U3_N13,
      I2 => U3_spriteonGrnd,
      I3 => U3_N35,
      O => green_2_OBUF_1229
    );
  U3_blue_1_1 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_M1a_mux0000,
      I1 => U3_N102,
      I2 => U3_spriteonGrnd,
      I3 => U3_N98,
      O => blue_1_OBUF_1220
    );
  U3_tank2Angle_0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      O => N137
    );
  U3_tank2Angle_0_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => U3_tank2_angle_calc(7),
      I2 => U3_tank2_angle_calc(5),
      I3 => N137,
      O => M2_0_bdd13
    );
  U3_tank2Angle_1_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      I3 => U3_tank2_angle_calc(1),
      O => N139
    );
  U3_tank2Angle_1_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank2_angle_calc(7),
      I1 => U3_tank2_angle_calc(5),
      I2 => U3_tank2_angle_calc(6),
      I3 => N139,
      O => M2_0_bdd6
    );
  U3_red_0_3 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => U3_N98,
      I1 => vidon,
      I2 => N141,
      I3 => U3_M1_mux0000,
      O => U3_N41
    );
  M2_4_116 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_4_105_177,
      I2 => U2_vcs(1),
      I3 => M2_4_29_179,
      O => M2_4_116_178
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_1233
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_1222
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_1368,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_1235,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_1237,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_1231,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_1216,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_1215,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_1214,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_1213,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_1220,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_1219,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_1229,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_1228,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_1227,
      O => green(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_1208,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_1207,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_1206,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_1205,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_1204,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_1203,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_1202,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_1_OBUF_1362,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_1362,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_1361,
      O => red(0)
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_502
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_500
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_498
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_496
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_494
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_492
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_490
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_488
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_531
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_529
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_527
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_525
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_523
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_521
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_519
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_517
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1047,
      O => U3_Mcount_q_cy_16_rt_819
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1046,
      O => U3_Mcount_q_cy_15_rt_817
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1045,
      O => U3_Mcount_q_cy_14_rt_815
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1044,
      O => U3_Mcount_q_cy_13_rt_813
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1043,
      O => U3_Mcount_q_cy_12_rt_811
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1042,
      O => U3_Mcount_q_cy_11_rt_809
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1041,
      O => U3_Mcount_q_cy_10_rt_807
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1055,
      O => U3_Mcount_q_cy_9_rt_837
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1054,
      O => U3_Mcount_q_cy_8_rt_835
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1053,
      O => U3_Mcount_q_cy_7_rt_833
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1052,
      O => U3_Mcount_q_cy_6_rt_831
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1051,
      O => U3_Mcount_q_cy_5_rt_829
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1050,
      O => U3_Mcount_q_cy_4_rt_827
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1049,
      O => U3_Mcount_q_cy_3_rt_825
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1048,
      O => U3_Mcount_q_cy_2_rt_823
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1040,
      O => U3_Mcount_q_cy_1_rt_821
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_1390
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_1388
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_1386
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_1384
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_1382
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_1380
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_1378
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_1376
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_1374
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_1408
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_1406
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_1404
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_1402
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_1400
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_1398
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_1396
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_1394
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_1392
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_1275
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_1273
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_1271
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_1269
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_1267
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_1265
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_1263
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_1261
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_1256
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_1254
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_1252
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_1250
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_1248
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_1246
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_1244
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_1242
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_514
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_543
    );
  U3_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_171,
      O => U3_Mcount_q_xor_17_rt_839
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_1410
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_1287
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_1258
    );
  M1a_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_3_2_131,
      I2 => M1a_3_1_130,
      O => M1a_3_Q
    );
  M1a_11_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_11_2_97,
      I2 => M1a_11_1_96,
      O => M1a_11_Q
    );
  M2_28_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_3_2,
      I2 => M1_3_1,
      O => M2_28_Q
    );
  U3_Mcount_tank2_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"999B"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => U3_tank2_angle_calc(0),
      I2 => U3_tank2_angle_calc_mux0004_7_16_1182,
      I3 => U3_tank2_angle_calc_mux0004_7_4_1183,
      O => U3_Mcount_tank2_angle_calc_lut(0)
    );
  U3_Mcount_tank1_angle_calc_lut_0_Q : LUT4
    generic map(
      INIT => X"999B"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => U3_tank1_angle_calc(0),
      I2 => U3_tank1_angle_calc_mux0004_7_16_1166,
      I3 => U3_tank1_angle_calc_mux0004_7_4_1167,
      O => U3_Mcount_tank1_angle_calc_lut(0)
    );
  U3_Mcount_tank1_angle_calc_lut_3_Q : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U3_tank1_angle_calc(3),
      I1 => U3_N63,
      I2 => nes_up_reg_1356,
      O => U3_Mcount_tank1_angle_calc_lut(3)
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N567,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  U2_Mcount_hcs_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_hcs_cmp_eq000010_577,
      I2 => U2_hcs_cmp_eq00005_578,
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
      INIT => X"FFDF"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N151
    );
  U3_tank2_angle_calc_mux0004_0_2_SW1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => nes_up_reg_1356,
      O => N153
    );
  U3_Mcount_tank2_angle_calc_lut_6_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank2_angle_calc(6),
      I1 => N12,
      I2 => U3_tank2_angle_calc(5),
      I3 => N153,
      O => U3_Mcount_tank2_angle_calc_lut(6)
    );
  U3_tank1_angle_calc_mux0004_0_2_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => nes_up_reg_1356,
      O => N155
    );
  U3_Mcount_tank1_angle_calc_lut_6_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank1_angle_calc(6),
      I1 => N10,
      I2 => U3_tank1_angle_calc(5),
      I3 => N155,
      O => U3_Mcount_tank1_angle_calc_lut(6)
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
      I0 => N564,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
  U3_C1_not000152_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N157
    );
  U2_Mcount_hcs_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_578,
      O => U2_Mcount_hcs_eqn_6
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
  U2_Mcount_hcs_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_7_1,
      I2 => U2_hcs_cmp_eq00005_578,
      O => U2_Mcount_hcs_eqn_7
    );
  U2_Mcount_hcs_eqn_81 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_8_1,
      I2 => U2_hcs_cmp_eq00005_578,
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
      I0 => U2_hcs_cmp_eq000010_577,
      I1 => U2_Result_9_1,
      I2 => U2_hcs_cmp_eq00005_578,
      O => U2_Mcount_hcs_eqn_9
    );
  U3_Mcount_tank2_angle_calc_lut_1_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(1)
    );
  U3_Mcount_tank1_angle_calc_lut_1_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(1)
    );
  U3_Mcount_tank1_angle_calc_lut_5_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => U3_tank1_angle_calc(1),
      I2 => U3_tank1_angle_calc(0),
      I3 => nes_up_reg_1356,
      O => N160
    );
  U3_Mcount_tank1_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => U3_tank1_angle_calc(4),
      I2 => U3_tank1_angle_calc(3),
      I3 => N160,
      O => U3_Mcount_tank1_angle_calc_lut(5)
    );
  U3_Mcount_tank2_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => nes_up_reg_1356,
      I2 => U3_tank2_angle_calc(1),
      I3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(2)
    );
  U3_Mcount_tank1_angle_calc_lut_2_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank1_angle_calc(2),
      I1 => nes_up_reg_1356,
      I2 => U3_tank1_angle_calc(1),
      I3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(2)
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => U3_C2(9),
      I1 => nes_right_reg_1321,
      I2 => nes_left_reg_1317,
      I3 => U3_C2_not000150_635,
      O => U3_C2_not000164_637
    );
  U3_Mcount_tank2_angle_calc_lut_4_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank2_angle_calc(1),
      I1 => U3_tank2_angle_calc(0),
      I2 => nes_up_reg_1356,
      O => N162
    );
  U3_Mcount_tank2_angle_calc_lut_4_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      I3 => N162,
      O => U3_Mcount_tank2_angle_calc_lut(4)
    );
  U3_tank2_angle_calc_mux0004_0_2_SW2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => U3_tank2_angle_calc(4),
      I2 => U3_tank2_angle_calc(3),
      I3 => nes_up_reg_1356,
      O => N164
    );
  U3_Mcount_tank2_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank2_angle_calc(7),
      I1 => N12,
      I2 => U3_tank2_angle_calc(6),
      I3 => N164,
      O => U3_Mcount_tank2_angle_calc_lut(7)
    );
  U3_tank1_angle_calc_mux0004_0_2_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank1_angle_calc(5),
      I1 => U3_tank1_angle_calc(4),
      I2 => U3_tank1_angle_calc(3),
      I3 => nes_up_reg_1356,
      O => N166
    );
  U3_Mcount_tank1_angle_calc_lut_7_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank1_angle_calc(7),
      I1 => N10,
      I2 => U3_tank1_angle_calc(6),
      I3 => N166,
      O => U3_Mcount_tank1_angle_calc_lut(7)
    );
  U3_Mcount_tank1_angle_calc_lut_4_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_tank1_angle_calc(1),
      I1 => U3_tank1_angle_calc(0),
      I2 => nes_up_reg_1356,
      O => N168
    );
  U3_Mcount_tank1_angle_calc_lut_4_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank1_angle_calc(4),
      I1 => U3_tank1_angle_calc(3),
      I2 => U3_tank1_angle_calc(2),
      I3 => N168,
      O => U3_Mcount_tank1_angle_calc_lut(4)
    );
  U3_Mcount_tank2_angle_calc_lut_5_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_tank2_angle_calc(2),
      I1 => U3_tank2_angle_calc(1),
      I2 => U3_tank2_angle_calc(0),
      I3 => nes_up_reg_1356,
      O => N170
    );
  U3_Mcount_tank2_angle_calc_lut_5_Q : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => U3_tank2_angle_calc(5),
      I1 => U3_tank2_angle_calc(4),
      I2 => U3_tank2_angle_calc(3),
      I3 => N170,
      O => U3_Mcount_tank2_angle_calc_lut(5)
    );
  U3_C1_not000152_SW1 : MUXF5
    port map (
      I0 => N172,
      I1 => N173,
      S => U3_C1(4),
      O => N158
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
      O => N172
    );
  U3_C1_not000152_SW1_G : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N173
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N192,
      O => U3_Mmux_M1a_mux0000_83_938
    );
  M1a_26_128 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N198,
      I2 => M1a_10_bdd0,
      O => M1a_26_Q
    );
  M2a_5_128 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N200,
      I2 => M1a_10_bdd0,
      O => M2a_5_Q
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => M1a_29_51_126,
      I1 => rom1_addr(3),
      I2 => U3_xpix1(0),
      I3 => M1a_30_36_128,
      O => U3_Mmux_M1a_mux0000_6_923
    );
  U3_Mmux_M2a_mux0000_10 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => rom1_addr(3),
      I2 => M2a_1_63_209,
      I3 => M2a_1_36_208,
      O => U3_Mmux_M2a_mux0000_10_976
    );
  U3_blue_and0000258 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => N202,
      I1 => U2_vcs(6),
      I2 => U3_N101,
      I3 => U2_vcs(9),
      O => U3_N40
    );
  M2_9_9 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd16,
      O => M2_9_9_199
    );
  M2_3_30 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd10,
      I2 => M2_3_bdd9,
      I3 => U2_vcs(1),
      O => M2_3_30_172
    );
  M2_0_23_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd10,
      I2 => M2_0_bdd9,
      O => N218
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
  x7_an_2_mux000141 : LUT4
    generic map(
      INIT => X"EAFF"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_an_2_mux000128_1443,
      I2 => x7_an_1_mux000128,
      I3 => x7_clkdiv(19),
      O => an_2_OBUF_1215
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_nes_clk31_1320,
      O => N220
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N220,
      O => ja3_OBUF_1237
    );
  U3_spriteonB1_and000010_SW0 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(3),
      I2 => U2_vcs(7),
      I3 => U2_vcs(4),
      O => N222
    );
  U3_spriteonB1_and000010 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(8),
      I2 => U2_vcs(5),
      I3 => N222,
      O => U3_spriteonB1_and000010_1114
    );
  U3_spriteonB1_and000049_SW0 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      I3 => U2_hcs(3),
      O => N224
    );
  U3_spriteonB1_and000049 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(4),
      I2 => N224,
      I3 => U2_hcs(1),
      O => U3_spriteonB1_and000049_1116
    );
  U3_spriteonB1_and000060 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_spriteonB1_and000018_1115,
      I2 => U2_hcs(7),
      I3 => U3_spriteonB1_and000049_1116,
      O => U3_spriteonB1_and000060_1117
    );
  U3_spriteonB3_and000013_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(3),
      I2 => U2_hcs(4),
      I3 => U2_hcs(5),
      O => N228
    );
  U3_spriteonB3_and000013 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(7),
      I2 => U2_hcs(8),
      I3 => N228,
      O => U3_spriteonB3_and000013_1128
    );
  U3_spriteonB3_and000059 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U3_N25,
      I1 => U2_vidon_and000013,
      I2 => U2_hcs(9),
      I3 => U3_spriteonB3_and000041_1131,
      O => U3_spriteonB3_and000059_1132
    );
  U3_spriteonB5_and000073_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      O => N230
    );
  U3_blue_and000031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_N40,
      I1 => U3_spriteon1_cmp_ge0000,
      I2 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      O => U3_N98
    );
  M1a_27_145_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => M1a_27_82_123,
      I1 => M1a_27_52_122,
      I2 => U2_vcs(1),
      I3 => rom1_addr(4),
      O => N232
    );
  M1a_27_145 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => N232,
      I1 => M1a_27_139_121,
      I2 => M1_27_bdd0,
      I3 => rom1_addr(3),
      O => M1a_27_Q
    );
  M1_24_39 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M1_22_bdd12,
      O => M1_24_39_38
    );
  M2a_4_145_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => M2a_4_82_218,
      I1 => M2a_4_52_217,
      I2 => U2_vcs(1),
      I3 => rom1_addr(4),
      O => N234
    );
  M2a_4_145 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => N234,
      I1 => M1a_27_139_121,
      I2 => M2_4_bdd0,
      I3 => rom1_addr(3),
      O => M2a_4_Q
    );
  U3_red_0_15_SW0 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB4,
      O => N236
    );
  U3_red_0_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonB2,
      I2 => U3_spriteonGrnd,
      I3 => N236,
      O => U3_red_0_15_1099
    );
  U3_blue_and00031 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2a_mux0000,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I2 => U3_spriteon2f_cmp_le0000,
      I3 => U3_N40,
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
      I3 => U3_N40,
      O => N141
    );
  U3_Mmux_M1_mux0000_9_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => N92,
      I2 => N94,
      O => N238
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N238,
      O => U3_Mmux_M1_mux0000_9_912
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N240,
      O => U3_Mmux_M1_mux0000_73_901
    );
  U3_Mmux_M2_mux0000_73_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => N94,
      I2 => N92,
      O => N244
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N244,
      O => U3_Mmux_M2_mux0000_73_961
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N246,
      O => U3_Mmux_M2a_mux0000_71_989
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N248,
      O => U3_Mmux_M2a_mux0000_8_995
    );
  M1a_24_65 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N254,
      I2 => M1a_12_bdd0,
      O => M1a_24_Q
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"55AE"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
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
  M2_9_11 : LUT4
    generic map(
      INIT => X"55AE"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd13,
      I3 => U2_vcs(2),
      O => M2_9_bdd0
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"FF89"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd6,
      I3 => U2_vcs(2),
      O => M2_7_bdd0
    );
  M2a_7_64 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N260,
      I2 => M1a_12_bdd0,
      O => M2a_7_Q
    );
  U3_Mmux_M1a_mux0000_10 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U3_xpix1(0),
      I2 => M1a_1_7_104,
      I3 => M1a_1_21_103,
      O => U3_Mmux_M1a_mux0000_10_916
    );
  U3_Mmux_M2a_mux0000_6 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_1_7_104,
      I2 => U3_xpix2(0),
      I3 => M1a_1_21_103,
      O => U3_Mmux_M2a_mux0000_6_983
    );
  U3_spriteonGrnd_and0000138_SW0 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_spriteonB1_cmp_lt0000217,
      I2 => U3_spriteonGrnd_and0000110_1147,
      I3 => U3_spriteonB1_cmp_lt0000232_1121,
      O => N264
    );
  U3_spriteonGrnd_and0000138 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_N101,
      I1 => U2_vcs(9),
      I2 => U3_spriteonGrnd_and000091_1153,
      I3 => N264,
      O => U3_spriteonGrnd
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
      INIT => X"7A2F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1_27_bdd0
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
      INIT => X"3C28"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M1_22_bdd9,
      O => M1a_22_bdd0
    );
  M2_8_21 : LUT4
    generic map(
      INIT => X"5F1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_3_bdd9,
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M2_8_bdd1
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"7A2F"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd6,
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M2_4_bdd0
    );
  M1_29_0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      O => M1_29_0_69
    );
  M1a_22_44 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N274,
      I2 => M1a_22_18_108,
      I3 => M1a_10_bdd0,
      O => M1a_22_Q
    );
  M1_27_192 : LUT3
    generic map(
      INIT => X"19"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_27_192_55
    );
  M2a_6_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd6,
      O => M2a_6_bdd1
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
  M2a_9_44 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N294,
      I2 => M2a_9_18_228,
      I3 => M1a_10_bdd0,
      O => M2a_9_Q
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
      O => M1_26_30_49
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"90FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(1),
      O => M1_26_58_50
    );
  M2_6_108 : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M2_6_bdd0,
      I3 => N298,
      O => M2_6_108_186
    );
  M2_5_30 : LUT4
    generic map(
      INIT => X"FF42"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd6,
      I3 => U2_vcs(1),
      O => M2_5_30_182
    );
  M2_5_58 : LUT4
    generic map(
      INIT => X"90FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd13,
      I3 => U2_vcs(1),
      O => M2_5_58_183
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
  U3_Msub_xpix1_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C1(4),
      O => U3_Msub_xpix1_Madd_lut(4)
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
      INIT => X"0020"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_1313,
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg_cmp_eq0000112_1312,
      I3 => nes_counter_reg(2),
      O => ja2_OBUF_1235
    );
  U3_spriteonB2_and000019_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(6),
      I2 => U3_spriteonB2_and00005_1124,
      O => N300
    );
  U3_spriteonB2_and000019 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => N300,
      O => U3_spriteonB2_and000019_1123
    );
  U3_spriteonB5_and000034_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(7),
      I2 => U3_spriteonB5_and000017,
      O => N302
    );
  U3_spriteonB5_and000034 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(8),
      I2 => U2_vcs(6),
      I3 => N302,
      O => U3_spriteonB5_and000034_1143
    );
  U3_spriteonB4_and000061_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(4),
      O => N304
    );
  U3_spriteonB4_and000061 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      I3 => N304,
      O => U3_spriteonB4_and000061_1137
    );
  M2_31_1 : LUT4
    generic map(
      INIT => X"69EB"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => U2_vcs(3),
      I2 => U3_N71,
      I3 => M1_0_bdd0,
      O => M1_0_Q
    );
  U3_spriteon2_addsub0000_9_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(6),
      I2 => U3_C2(5),
      O => N46
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U3_C1(6),
      I2 => U3_C1(5),
      O => N63
    );
  M1a_29_53_SW0 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M1_29_bdd5,
      I3 => M1_22_bdd12,
      O => N308
    );
  M1a_29_53 : LUT4
    generic map(
      INIT => X"90F0"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1a_29_51_126,
      I3 => N308,
      O => M1a_29_Q
    );
  M1_23_31 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
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
  M2_3_51 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_3_bdd9
    );
  M1_29_31 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      O => M1_29_bdd5
    );
  M1_27_21 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_27_bdd4
    );
  M2_0_81 : LUT4
    generic map(
      INIT => X"D7FF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      I3 => rom1_addr(2),
      O => M2_0_bdd3
    );
  M1_21_29 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_21_bdd5,
      O => M1_21_bdd3
    );
  M2a_2_57_SW0 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M2_2_bdd5,
      I3 => M2_0_bdd16,
      O => N310
    );
  M2a_2_57 : LUT4
    generic map(
      INIT => X"90F0"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M2a_1_63_209,
      I3 => N310,
      O => M2a_2_Q
    );
  M1_22_111 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => M1_22_bdd12,
      O => M1_22_11_24
    );
  M2_2_31 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      O => M2_2_bdd5
    );
  M2_0_61 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd13,
      O => M2_0_bdd10
    );
  M2_0_21 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      O => M2_0_bdd1
    );
  M2_0_56 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      O => M2_0_bdd9
    );
  U3_green_1_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_spriteonB5,
      I2 => U3_spriteonGrnd,
      O => N316
    );
  U3_green_1_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N316,
      I1 => U3_N41,
      I2 => U3_blue_and0003,
      I3 => U3_N35,
      O => green_1_OBUF_1228
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N318,
      O => U3_Mmux_M2_mux0000_9_972
    );
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N322,
      O => U3_Mmux_M1a_mux0000_9_942
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N324,
      O => U3_Mmux_M1a_mux0000_73_931
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N326,
      O => U3_Mmux_M1a_mux0000_85_940
    );
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N328,
      O => U3_Mmux_M1a_mux0000_92_944
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N330,
      O => U3_Mmux_M2a_mux0000_9_1002
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N332,
      O => U3_Mmux_M2a_mux0000_73_991
    );
  U3_blue_and0000258_SW0 : LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(5),
      I2 => U2_vcs(4),
      I3 => N334,
      O => N202
    );
  M1_25_11 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_25_bdd0
    );
  M2_12_21 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      O => M1_10_bdd4
    );
  M1a_24_27_SW0 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => N212
    );
  M2a_7_27_SW0 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => N216
    );
  M1a_25_36_SW0_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M1a_22_bdd0,
      I2 => M1a_24_bdd1,
      O => N350
    );
  M1a_26_54_SW1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M1_21_bdd5,
      I2 => M1_22_bdd9,
      O => N354
    );
  M2a_6_36_SW0_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2a_6_bdd0,
      I2 => M2a_6_bdd1,
      O => N356
    );
  M2a_5_54_SW1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      O => N360
    );
  M2_3_11 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_28_bdd1
    );
  M1_23_29 : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M1_23_bdd3,
      O => M1_23_29_33
    );
  M1_28_65_SW1 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => U2_vcs(0),
      O => N362
    );
  M1_28_65 : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => N362,
      O => M1_28_65_66
    );
  M2_3_69_SW1 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => rom1_addr(2),
      I2 => M2_0_bdd13,
      I3 => U2_vcs(0),
      O => N364
    );
  M2_3_69 : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => N364,
      O => M2_3_69_173
    );
  M2_8_29 : LUT4
    generic map(
      INIT => X"1193"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => M2_0_bdd3,
      O => M2_8_29_195
    );
  M1_26_1_SW0 : LUT4
    generic map(
      INIT => X"A2A7"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => N366
    );
  M1_26_1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => N366,
      O => M1_26_bdd0
    );
  M2_5_1_SW0 : LUT4
    generic map(
      INIT => X"A2A7"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => N368
    );
  M2_5_1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => N368,
      O => M2_5_bdd0
    );
  U3_spriteonB2_and000082_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U3_spriteonB1_cmp_lt0000,
      I2 => U3_spriteonB2_and000019_1123,
      I3 => U2_hcs(9),
      O => N370
    );
  U3_spriteonB2_and000082 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => N226,
      I1 => U2_hcs(6),
      I2 => N370,
      I3 => U2_hcs(7),
      O => U3_spriteonB2
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
  M1_21_52 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_21_bdd5,
      O => M1_21_bdd8
    );
  M1_22_71 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M1_22_bdd12
    );
  M2_1_60 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => M2_0_bdd16,
      O => M2_1_60_154
    );
  M2_3_310 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M2_0_bdd13,
      O => M2_3_bdd6
    );
  M2_10_82 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd13,
      O => M2_10_bdd14
    );
  M1_22_210 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      O => M1_22_bdd4
    );
  U3_spriteonGrnd_and000034_SW1 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_spriteonGrnd_and000015_1148,
      I2 => U2_hcs(7),
      I3 => U2_hcs(6),
      O => N372
    );
  U3_spriteonGrnd_and000034 : LUT4
    generic map(
      INIT => X"5702"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(5),
      I2 => N372,
      I3 => U2_hcs(8),
      O => U3_spriteonGrnd_and000034_1149
    );
  M1_31_23_SW0 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(2),
      I2 => M1_21_bdd3,
      I3 => M1_22_bdd9,
      O => N214
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
  M1a_23_14 : LUT4
    generic map(
      INIT => X"95FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M1_23_bdd1,
      O => M1a_23_14_112
    );
  M1a_22_18 : LUT4
    generic map(
      INIT => X"95FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M1_22_bdd0,
      O => M1a_22_18_108
    );
  M2a_8_14 : LUT4
    generic map(
      INIT => X"95FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M2_8_bdd1,
      O => M2a_8_14_226
    );
  M2a_9_18 : LUT4
    generic map(
      INIT => X"95FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => M2_9_bdd0,
      O => M2a_9_18_228
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
      O => N334
    );
  M1_24_107_SW0_SW0 : LUT4
    generic map(
      INIT => X"EDDB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => M1_21_bdd5,
      I3 => M1_22_bdd9,
      O => N338
    );
  M1_21_26_SW0 : LUT4
    generic map(
      INIT => X"DFFB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M1_21_bdd5,
      O => N256
    );
  M2_10_26_SW0 : LUT4
    generic map(
      INIT => X"DFFB"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => M2_0_bdd13,
      O => N262
    );
  M1_25_21 : LUT4
    generic map(
      INIT => X"79F9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => M1_22_bdd9,
      O => M1_25_bdd1
    );
  M2_6_11 : LUT4
    generic map(
      INIT => X"79F9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => M2_0_bdd6,
      O => M2_6_bdd0
    );
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N384,
      O => U3_Mmux_M1_mux0000_85_910
    );
  M2_10_21 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      O => M1_12_bdd3
    );
  M1a_21_26_SW0 : LUT4
    generic map(
      INIT => X"5B1F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_21_bdd5,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N352
    );
  M2a_10_26_SW0 : LUT4
    generic map(
      INIT => X"5B1F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N358
    );
  M1_0_11 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_0_bdd0
    );
  U3_Msub_ypix1_Madd_xor_3_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      O => rom1_addr(3)
    );
  M1_22_42 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      O => M1_22_bdd7
    );
  M2_0_91 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => M2_0_bdd16
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
      O => N390
    );
  M2a_3_70_SW0_SW1 : LUT4
    generic map(
      INIT => X"8E9F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => N392
    );
  M1a_1_21 : LUT4
    generic map(
      INIT => X"803F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M1a_1_21_103
    );
  M1a_14_11 : LUT4
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
  M1_16_SW0 : LUT4
    generic map(
      INIT => X"791B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N92
    );
  M1_14_SW0 : LUT4
    generic map(
      INIT => X"7D1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N94
    );
  M2a_18_1 : LUT4
    generic map(
      INIT => X"0216"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2a_18_1_205
    );
  M2_13_21 : LUT4
    generic map(
      INIT => X"DFBE"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => M1_14_bdd1
    );
  M1a_1_7 : LUT4
    generic map(
      INIT => X"7F88"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => M1a_1_7_104
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N402,
      O => U3_Mmux_M2_mux0000_71_959
    );
  M1_10_2 : LUT4
    generic map(
      INIT => X"2290"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => M1_10_2_5
    );
  M1a_11_2 : LUT4
    generic map(
      INIT => X"567E"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_11_2_97
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
  M1a_4_11 : LUT4
    generic map(
      INIT => X"99FB"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => M1a_4_bdd0
    );
  M2_24_11 : LUT4
    generic map(
      INIT => X"E2BF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => M1_4_bdd0
    );
  M2_28_1 : LUT4
    generic map(
      INIT => X"1C19"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => M1_3_1
    );
  M2a_19_SW0 : LUT4
    generic map(
      INIT => X"7F76"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M2a_18_2
    );
  M1a_3_2 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => M1a_3_2_131
    );
  M2_28_2 : LUT4
    generic map(
      INIT => X"7872"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1_3_2
    );
  M1a_10_11 : LUT4
    generic map(
      INIT => X"7DE8"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1a_10_bdd0
    );
  M1_10_51 : LUT3
    generic map(
      INIT => X"C7"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => M1_10_bdd5
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
  M1a_3_1 : LUT4
    generic map(
      INIT => X"9586"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_3_1_130
    );
  M1a_12_11 : LUT4
    generic map(
      INIT => X"7EC6"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => M1a_12_bdd0
    );
  M1_10_1 : LUT4
    generic map(
      INIT => X"5C38"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => M1_10_1_4
    );
  M1a_11_1 : LUT4
    generic map(
      INIT => X"8617"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1a_11_1_96
    );
  M1a_26_13_SW01 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => U2_vcs(0),
      I2 => M1_21_bdd5,
      O => N398
    );
  M2a_5_13_SW01 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => U2_vcs(0),
      I2 => M2_0_bdd13,
      O => N400
    );
  U3_spriteonB5_and000081 : MUXF5
    port map (
      I0 => N408,
      I1 => N409,
      S => U2_hcs(4),
      O => U3_spriteonB5_and000081_1145
    );
  U3_spriteonB5_and000081_F : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => N230,
      O => N408
    );
  U3_spriteonB5_and000081_G : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(6),
      I3 => U2_hcs(5),
      O => N409
    );
  M1_31_78 : MUXF5
    port map (
      I0 => N410,
      I1 => N411,
      S => rom1_addr(3),
      O => M1_31_Q
    );
  M1_31_78_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N214,
      I2 => rom1_addr(4),
      I3 => M1_23_bdd3,
      O => N410
    );
  M1_31_78_G : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_27_bdd4,
      I2 => rom1_addr(4),
      I3 => U2_vcs(1),
      O => N411
    );
  M2_0_80 : MUXF5
    port map (
      I0 => N412,
      I1 => N413,
      S => rom1_addr(3),
      O => M2_0_Q
    );
  M2_0_80_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N218,
      I2 => rom1_addr(4),
      I3 => M2_0_bdd3,
      O => N412
    );
  M2_0_80_G : LUT4
    generic map(
      INIT => X"0203"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => M2_0_bdd1,
      I2 => rom1_addr(4),
      I3 => U2_vcs(0),
      O => N413
    );
  M1_27_232 : MUXF5
    port map (
      I0 => N414,
      I1 => N415,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_232_F : LUT4
    generic map(
      INIT => X"28AA"
    )
    port map (
      I0 => M1_27_127_54,
      I1 => U2_vcs(3),
      I2 => U3_N71,
      I3 => M1_27_bdd0,
      O => N414
    );
  M1_27_232_G : LUT4
    generic map(
      INIT => X"9F06"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_10_bdd5,
      I3 => M1_27_192_55,
      O => N415
    );
  M1_25_141 : MUXF5
    port map (
      I0 => N416,
      I1 => N417,
      S => rom1_addr(4),
      O => M1_25_Q
    );
  M1_25_141_F : LUT4
    generic map(
      INIT => X"28AA"
    )
    port map (
      I0 => M1_25_75_45,
      I1 => U2_vcs(3),
      I2 => U3_N71,
      I3 => M1_25_bdd1,
      O => N416
    );
  M1_25_141_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_25_bdd0,
      I3 => M1_10_bdd5,
      O => N417
    );
  M2_4_222 : MUXF5
    port map (
      I0 => N418,
      I1 => N419,
      S => rom1_addr(4),
      O => M2_4_Q
    );
  M2_4_222_F : LUT4
    generic map(
      INIT => X"28AA"
    )
    port map (
      I0 => M2_4_116_178,
      I1 => U2_vcs(3),
      I2 => U3_N71,
      I3 => M2_4_bdd0,
      O => N418
    );
  M2_4_222_G : LUT4
    generic map(
      INIT => X"9F06"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_10_bdd5,
      I3 => M1_27_192_55,
      O => N419
    );
  M2_1_49 : MUXF5
    port map (
      I0 => N420,
      I1 => N421,
      S => U2_vcs(0),
      O => M2_1_49_153
    );
  M2_1_49_F : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => M2_0_bdd6,
      I2 => U2_vcs(1),
      O => N420
    );
  M2_1_49_G : LUT4
    generic map(
      INIT => X"FF6E"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N421
    );
  M2_4_105 : MUXF5
    port map (
      I0 => N422,
      I1 => N423,
      S => U2_vcs(0),
      O => M2_4_105_177
    );
  M2_4_105_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      O => N422
    );
  M2_4_105_G : LUT4
    generic map(
      INIT => X"0086"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => U2_vcs(1),
      O => N423
    );
  M1_30_49 : MUXF5
    port map (
      I0 => N424,
      I1 => N425,
      S => U2_vcs(0),
      O => M1_30_49_82
    );
  M1_30_49_F : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(1),
      O => N424
    );
  M1_30_49_G : LUT4
    generic map(
      INIT => X"FF6E"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => M1_21_bdd5,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N425
    );
  M1a_24_65_SW0 : MUXF5
    port map (
      I0 => N426,
      I1 => N427,
      S => rom1_addr(3),
      O => N254
    );
  M1a_24_65_SW0_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N212,
      I2 => M1a_24_bdd1,
      O => N426
    );
  M1a_24_65_SW0_G : LUT4
    generic map(
      INIT => X"050E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M1_22_bdd9,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N427
    );
  M2a_7_64_SW0 : MUXF5
    port map (
      I0 => N428,
      I1 => N429,
      S => rom1_addr(3),
      O => N260
    );
  M2a_7_64_SW0_F : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => N216,
      I2 => M2a_6_bdd1,
      O => N428
    );
  M2a_7_64_SW0_G : LUT4
    generic map(
      INIT => X"050E"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd6,
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => N429
    );
  M1_27_102 : MUXF5
    port map (
      I0 => N430,
      I1 => N431,
      S => U2_vcs(0),
      O => M1_27_102_53
    );
  M1_27_102_F : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      O => N430
    );
  M1_27_102_G : LUT4
    generic map(
      INIT => X"6982"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => M1_22_bdd9,
      O => N431
    );
  M2_4_29 : MUXF5
    port map (
      I0 => N432,
      I1 => N433,
      S => U2_vcs(0),
      O => M2_4_29_179
    );
  M2_4_29_F : LUT4
    generic map(
      INIT => X"F660"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd6,
      O => N432
    );
  M2_4_29_G : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      O => N433
    );
  M1_22_65 : MUXF5
    port map (
      I0 => N434,
      I1 => N435,
      S => rom1_addr(4),
      O => M1_22_Q
    );
  M1_22_65_F : LUT4
    generic map(
      INIT => X"FF90"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_22_bdd0,
      I3 => M1_22_35_25,
      O => N434
    );
  M1_22_65_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_10_bdd4,
      I3 => M1_10_bdd5,
      O => N435
    );
  M2_9_65 : MUXF5
    port map (
      I0 => N436,
      I1 => N437,
      S => rom1_addr(4),
      O => M2_9_Q
    );
  M2_9_65_F : LUT4
    generic map(
      INIT => X"FF90"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M2_9_bdd0,
      I3 => M2_9_35_198,
      O => N436
    );
  M2_9_65_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_10_bdd4,
      I3 => M1_10_bdd5,
      O => N437
    );
  M2_7_107 : MUXF5
    port map (
      I0 => N438,
      I1 => N439,
      S => rom1_addr(4),
      O => M2_7_Q
    );
  M2_7_107_F : LUT4
    generic map(
      INIT => X"60F9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M2_7_44,
      I3 => M2_7_bdd0,
      O => N438
    );
  M2_7_107_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => M1_12_bdd3,
      I3 => M1_10_bdd5,
      O => N439
    );
  M2a_12_29 : MUXF5
    port map (
      I0 => N440,
      I1 => N441,
      S => U2_vcs(3),
      O => M2a_12_Q
    );
  M2a_12_29_F : LUT4
    generic map(
      INIT => X"46E6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N440
    );
  M2a_12_29_G : LUT4
    generic map(
      INIT => X"0157"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N441
    );
  M1a_19_34 : MUXF5
    port map (
      I0 => N442,
      I1 => N443,
      S => U2_vcs(3),
      O => M1a_19_Q
    );
  M1a_19_34_F : LUT4
    generic map(
      INIT => X"46E6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N442
    );
  M1a_19_34_G : LUT4
    generic map(
      INIT => X"0157"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N443
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N444,
      I1 => N445,
      S => U2_vcs(3),
      O => M1a_2_Q_127
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"26CC"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N444
    );
  M1a_2_G : LUT4
    generic map(
      INIT => X"0810"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N445
    );
  M2_25_Q : MUXF5
    port map (
      I0 => N446,
      I1 => N447,
      S => U2_vcs(2),
      O => M2_25_Q_159
    );
  M2_25_F : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N446
    );
  M2_25_G : LUT4
    generic map(
      INIT => X"0E35"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => N447
    );
  M1_5_Q : MUXF5
    port map (
      I0 => N448,
      I1 => N449,
      S => U2_vcs(1),
      O => M1_5_Q_90
    );
  M1_5_F : LUT4
    generic map(
      INIT => X"44AC"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N448
    );
  M1_5_G : LUT4
    generic map(
      INIT => X"3706"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N449
    );
  M1_1_74 : MUXF5
    port map (
      I0 => N450,
      I1 => N451,
      S => U2_vcs(3),
      O => M1_1_Q
    );
  M1_1_74_F : LUT4
    generic map(
      INIT => X"D040"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N450
    );
  M1_1_74_G : LUT4
    generic map(
      INIT => X"1337"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N451
    );
  U3_Mmux_M1_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N452,
      I1 => N453,
      S => U2_vcs(1),
      O => N240
    );
  U3_Mmux_M1_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(3),
      O => N452
    );
  U3_Mmux_M1_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"E565"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U3_xpix1(0),
      O => N453
    );
  U3_Mmux_M2a_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N454,
      I1 => N455,
      S => U3_xpix2(0),
      O => N246
    );
  U3_Mmux_M2a_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"9095"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1_0_bdd2,
      O => N454
    );
  U3_Mmux_M2a_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"8596"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N455
    );
  U3_Mmux_M2_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N456,
      I1 => N457,
      S => U2_vcs(2),
      O => N318
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
      O => N456
    );
  U3_Mmux_M2_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"7F11"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U3_xpix2(0),
      I3 => U2_vcs(3),
      O => N457
    );
  M1a_22_44_SW0 : MUXF5
    port map (
      I0 => N458,
      I1 => N459,
      S => U2_vcs(0),
      O => N274
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
      O => N458
    );
  M1a_22_44_SW0_G : LUT4
    generic map(
      INIT => X"7E6E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => M1_21_bdd5,
      O => N459
    );
  M2a_9_44_SW0 : MUXF5
    port map (
      I0 => N460,
      I1 => N461,
      S => U2_vcs(0),
      O => N294
    );
  M2a_9_44_SW0_F : LUT4
    generic map(
      INIT => X"6E6C"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => M2_0_bdd6,
      O => N460
    );
  M2a_9_44_SW0_G : LUT4
    generic map(
      INIT => X"7E6E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => M2_0_bdd13,
      O => N461
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N462,
      I1 => N463,
      S => U2_vcs(3),
      O => M1a_20_Q_105
    );
  M1a_20_F : LUT4
    generic map(
      INIT => X"202A"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N462
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"3515"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(4),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N463
    );
  M1_23_77 : MUXF5
    port map (
      I0 => N464,
      I1 => N465,
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
      I2 => M1_23_20_32,
      I3 => M1_23_29_33,
      O => N464
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
      O => N465
    );
  M2_8_77 : MUXF5
    port map (
      I0 => N466,
      I1 => N467,
      S => rom1_addr(4),
      O => M2_8_Q
    );
  M2_8_77_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_8_bdd1,
      I2 => M2_8_20_194,
      I3 => M2_8_29_195,
      O => N466
    );
  M2_8_77_G : LUT4
    generic map(
      INIT => X"A72A"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => rom1_addr(3),
      I3 => U2_vcs(2),
      O => N467
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N468,
      I1 => N469,
      S => U2_vcs(2),
      O => M1_8_Q
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"54C6"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N468
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"1F1B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N469
    );
  M1a_25_36 : MUXF5
    port map (
      I0 => N470,
      I1 => N471,
      S => rom1_addr(4),
      O => M1a_25_Q
    );
  M1a_25_36_F : LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => N350,
      I3 => M1_25_bdd1,
      O => N470
    );
  M1a_25_36_G : LUT4
    generic map(
      INIT => X"8207"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N471
    );
  M2a_6_36 : MUXF5
    port map (
      I0 => N472,
      I1 => N473,
      S => rom1_addr(4),
      O => M2a_6_Q
    );
  M2a_6_36_F : LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_N71,
      I2 => N356,
      I3 => M2_6_bdd0,
      O => N472
    );
  M2a_6_36_G : LUT4
    generic map(
      INIT => X"8207"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N473
    );
  M1_22_35 : MUXF5
    port map (
      I0 => N474,
      I1 => N475,
      S => U2_vcs(1),
      O => M1_22_35_25
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
      O => N474
    );
  M1_22_35_G : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M1_22_11_24,
      O => N475
    );
  M2_9_35 : MUXF5
    port map (
      I0 => N476,
      I1 => N477,
      S => U2_vcs(1),
      O => M2_9_35_198
    );
  M2_9_35_F : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N476
    );
  M2_9_35_G : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => M2_9_9_199,
      O => N477
    );
  M2_6_108_SW0 : MUXF5
    port map (
      I0 => N478,
      I1 => N479,
      S => U2_vcs(1),
      O => N298
    );
  M2_6_108_SW0_F : LUT4
    generic map(
      INIT => X"DFDB"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => rom1_addr(2),
      I2 => M2_0_bdd6,
      I3 => U2_vcs(0),
      O => N478
    );
  M2_6_108_SW0_G : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => M2_0_bdd6,
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N479
    );
  M1a_21_51 : MUXF5
    port map (
      I0 => N480,
      I1 => N481,
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
      I2 => N352,
      I3 => U2_vcs(3),
      O => N480
    );
  M1a_21_51_G : LUT4
    generic map(
      INIT => X"147E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1a_12_bdd0,
      O => N481
    );
  M2a_10_51 : MUXF5
    port map (
      I0 => N482,
      I1 => N483,
      S => U2_vcs(1),
      O => M2a_10_Q
    );
  M2a_10_51_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => M1a_12_bdd0,
      I2 => N358,
      I3 => U2_vcs(3),
      O => N482
    );
  M2a_10_51_G : LUT4
    generic map(
      INIT => X"147E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => M1a_12_bdd0,
      O => N483
    );
  M2a_22_30 : MUXF5
    port map (
      I0 => N484,
      I1 => N485,
      S => U2_vcs(1),
      O => M2a_22_Q
    );
  M2a_22_30_F : LUT4
    generic map(
      INIT => X"360C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N484
    );
  M2a_22_30_G : LUT4
    generic map(
      INIT => X"1176"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N485
    );
  M1_2_1 : MUXF5
    port map (
      I0 => N486,
      I1 => N487,
      S => U2_vcs(1),
      O => M1_2_Q
    );
  M1_2_1_F : LUT4
    generic map(
      INIT => X"74E4"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N486
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
      O => N487
    );
  M2_12_32 : MUXF5
    port map (
      I0 => N488,
      I1 => N489,
      S => U2_vcs(1),
      O => M2_12_Q
    );
  M2_12_32_F : LUT4
    generic map(
      INIT => X"7190"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N488
    );
  M2_12_32_G : LUT4
    generic map(
      INIT => X"486C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N489
    );
  M1a_26_128_SW0 : MUXF5
    port map (
      I0 => N490,
      I1 => N491,
      S => U2_vcs(1),
      O => N198
    );
  M1a_26_128_SW0_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => N354,
      O => N490
    );
  M1a_26_128_SW0_G : LUT4
    generic map(
      INIT => X"98FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N398,
      I3 => N366,
      O => N491
    );
  M2a_5_128_SW0 : MUXF5
    port map (
      I0 => N492,
      I1 => N493,
      S => U2_vcs(1),
      O => N200
    );
  M2a_5_128_SW0_F : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => N360,
      O => N492
    );
  M2a_5_128_SW0_G : LUT4
    generic map(
      INIT => X"98FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N400,
      I3 => N368,
      O => N493
    );
  M2_18_55 : MUXF5
    port map (
      I0 => N494,
      I1 => N495,
      S => U2_vcs(1),
      O => M2_18_Q
    );
  M2_18_55_F : LUT4
    generic map(
      INIT => X"20A3"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N494
    );
  M2_18_55_G : LUT4
    generic map(
      INIT => X"486C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N495
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N496,
      I1 => N497,
      S => U2_vcs(1),
      O => N192
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"FCB6"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N496
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"FA7A"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U3_xpix1(0),
      O => N497
    );
  U3_Mmux_M1a_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N498,
      I1 => N499,
      S => U2_vcs(1),
      O => N328
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"DEC9"
    )
    port map (
      I0 => U3_xpix1(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N498
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U3_xpix1(0),
      I2 => U2_vcs(2),
      O => N499
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N500,
      I1 => N501,
      S => U2_vcs(1),
      O => M1_11_Q_8
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
      O => N500
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
      O => N501
    );
  U3_Mmux_M1a_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N502,
      I1 => N503,
      S => U2_vcs(2),
      O => N326
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
      O => N502
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N503
    );
  M1a_9_33 : MUXF5
    port map (
      I0 => N504,
      I1 => N505,
      S => U2_vcs(1),
      O => M1a_9_Q
    );
  M1a_9_33_F : LUT4
    generic map(
      INIT => X"360C"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N504
    );
  M1a_9_33_G : LUT4
    generic map(
      INIT => X"1176"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => N505
    );
  M1_21_48 : MUXF5
    port map (
      I0 => N506,
      I1 => N507,
      S => rom1_addr(4),
      O => M1_21_Q
    );
  M1_21_48_F : LUT4
    generic map(
      INIT => X"09CF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => N256,
      I3 => U2_vcs(1),
      O => N506
    );
  M1_21_48_G : LUT4
    generic map(
      INIT => X"0BD8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N507
    );
  M2_10_48 : MUXF5
    port map (
      I0 => N508,
      I1 => N509,
      S => rom1_addr(4),
      O => M2_10_Q
    );
  M2_10_48_F : LUT4
    generic map(
      INIT => X"09CF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => N262,
      I3 => U2_vcs(1),
      O => N508
    );
  M2_10_48_G : LUT4
    generic map(
      INIT => X"0BD8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N509
    );
  U3_Mmux_M2a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N510,
      I1 => N511,
      S => U2_vcs(2),
      O => N330
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"998D"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U3_xpix2(0),
      I3 => U2_vcs(0),
      O => N510
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"F766"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(3),
      I2 => U3_xpix2(0),
      I3 => U2_vcs(0),
      O => N511
    );
  M1_9_Q : MUXF5
    port map (
      I0 => N512,
      I1 => N513,
      S => U2_vcs(1),
      O => M1_9_Q_92
    );
  M1_9_F : LUT4
    generic map(
      INIT => X"640E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N512
    );
  M1_9_G : LUT4
    generic map(
      INIT => X"6069"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N513
    );
  U3_Mmux_M1a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N514,
      I1 => N515,
      S => U2_vcs(1),
      O => N324
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
      O => N514
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"9199"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(0),
      O => N515
    );
  M1_24_107 : MUXF5
    port map (
      I0 => N516,
      I1 => N517,
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
      I2 => N338,
      I3 => U2_vcs(0),
      O => N516
    );
  M1_24_107_G : LUT4
    generic map(
      INIT => X"0BD8"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N517
    );
  M1a_28_70 : MUXF5
    port map (
      I0 => N518,
      I1 => N519,
      S => U2_vcs(4),
      O => M1a_28_Q
    );
  M1a_28_70_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N390,
      O => N518
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
      O => N519
    );
  M2a_3_70 : MUXF5
    port map (
      I0 => N520,
      I1 => N521,
      S => U2_vcs(4),
      O => M2a_3_Q
    );
  M2a_3_70_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => N392,
      O => N520
    );
  M2a_3_70_G : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => N521
    );
  M1_26_176 : MUXF5
    port map (
      I0 => N522,
      I1 => N523,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_176_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_50,
      I2 => M1_26_30_49,
      I3 => M1_26_bdd0,
      O => N522
    );
  M1_26_176_G : LUT4
    generic map(
      INIT => X"9838"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N523
    );
  M2_5_176 : MUXF5
    port map (
      I0 => N524,
      I1 => N525,
      S => rom1_addr(4),
      O => M2_5_Q
    );
  M2_5_176_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_5_58_183,
      I2 => M2_5_30_182,
      I3 => M2_5_bdd0,
      O => N524
    );
  M2_5_176_G : LUT4
    generic map(
      INIT => X"9838"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(3),
      O => N525
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => N526,
      I1 => N527,
      S => U2_vcs(1),
      O => M2_22_Q
    );
  M2_22_f5_F : LUT4
    generic map(
      INIT => X"640E"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N526
    );
  M2_22_f5_G : LUT4
    generic map(
      INIT => X"6069"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N527
    );
  M2a_13_Q : MUXF5
    port map (
      I0 => N528,
      I1 => N529,
      S => U2_vcs(1),
      O => M2a_13_Q_203
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
      O => N528
    );
  M2a_13_G : LUT4
    generic map(
      INIT => X"171B"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N529
    );
  M2a_29_31 : MUXF5
    port map (
      I0 => N530,
      I1 => N531,
      S => U2_vcs(3),
      O => M2a_29_Q
    );
  M2a_29_31_F : LUT4
    generic map(
      INIT => X"26CC"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N530
    );
  M2a_29_31_G : LUT4
    generic map(
      INIT => X"0810"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N531
    );
  M1a_18_31 : MUXF5
    port map (
      I0 => N532,
      I1 => N533,
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
      O => N532
    );
  M1a_18_31_G : LUT4
    generic map(
      INIT => X"171B"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N533
    );
  U3_Mmux_M2a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N534,
      I1 => N535,
      S => U2_vcs(2),
      O => N332
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"1B5B"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U3_xpix2(0),
      O => N534
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      O => N535
    );
  U3_Mmux_M1_mux0000_85_SW1 : MUXF5
    port map (
      I0 => N536,
      I1 => N537,
      S => U2_vcs(2),
      O => N384
    );
  U3_Mmux_M1_mux0000_85_SW1_F : LUT4
    generic map(
      INIT => X"DD6C"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U3_xpix1(0),
      I3 => U2_vcs(1),
      O => N536
    );
  U3_Mmux_M1_mux0000_85_SW1_G : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      O => N537
    );
  M1a_27_139 : MUXF5
    port map (
      I0 => N538,
      I1 => N539,
      S => U2_vcs(1),
      O => M1a_27_139_121
    );
  M1a_27_139_F : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      O => N538
    );
  M1a_27_139_G : LUT4
    generic map(
      INIT => X"F797"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => N539
    );
  U3_Mmux_M2_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N540,
      I1 => N541,
      S => U2_vcs(2),
      O => N402
    );
  U3_Mmux_M2_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"CA79"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => N540
    );
  U3_Mmux_M2_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => U3_xpix2(0),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => N541
    );
  U3_Mmux_M1a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N542,
      I1 => N543,
      S => U2_vcs(2),
      O => N322
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"98B8"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U3_xpix1(0),
      O => N542
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      O => N543
    );
  M2_11_Q : MUXF5
    port map (
      I0 => N544,
      I1 => N545,
      S => U2_vcs(2),
      O => M2_11_Q_147
    );
  M2_11_F : LUT4
    generic map(
      INIT => X"0682"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N544
    );
  M2_11_G : LUT4
    generic map(
      INIT => X"372F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N545
    );
  M1_20_Q : MUXF5
    port map (
      I0 => N546,
      I1 => N547,
      S => U2_vcs(2),
      O => M1_20_Q_18
    );
  M1_20_F : LUT4
    generic map(
      INIT => X"0682"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N546
    );
  M1_20_G : LUT4
    generic map(
      INIT => X"372F"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N547
    );
  M1_10_f51 : MUXF5
    port map (
      I0 => N548,
      I1 => N549,
      S => U2_vcs(1),
      O => M1_10_Q
    );
  M1_10_f51_F : LUT4
    generic map(
      INIT => X"6B40"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N548
    );
  M1_10_f51_G : LUT4
    generic map(
      INIT => X"0C68"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => N549
    );
  M2_19_Q : MUXF5
    port map (
      I0 => N550,
      I1 => N551,
      S => U2_vcs(1),
      O => M2_19_Q_150
    );
  M2_19_F : LUT4
    generic map(
      INIT => X"2029"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N550
    );
  M2_19_G : LUT4
    generic map(
      INIT => X"14D0"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N551
    );
  M1_12_Q : MUXF5
    port map (
      I0 => N552,
      I1 => N553,
      S => U2_vcs(1),
      O => M1_12_Q_9
    );
  M1_12_F : LUT4
    generic map(
      INIT => X"2029"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N552
    );
  M1_12_G : LUT4
    generic map(
      INIT => X"14D0"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(2),
      I3 => U2_vcs(3),
      O => N553
    );
  U3_Mmux_M2a_mux0000_8_SW0 : MUXF5
    port map (
      I0 => N554,
      I1 => N555,
      S => U2_vcs(1),
      O => N248
    );
  U3_Mmux_M2a_mux0000_8_SW0_F : LUT4
    generic map(
      INIT => X"5216"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U3_xpix2(0),
      O => N554
    );
  U3_Mmux_M2a_mux0000_8_SW0_G : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      O => N555
    );
  M1_19_Q : MUXF5
    port map (
      I0 => N556,
      I1 => N557,
      S => U2_vcs(1),
      O => M1_19_Q_16
    );
  M1_19_F : LUT4
    generic map(
      INIT => X"7190"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(4),
      O => N556
    );
  M1_19_G : LUT4
    generic map(
      INIT => X"486C"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(4),
      I3 => U2_vcs(0),
      O => N557
    );
  M1_13_Q : MUXF5
    port map (
      I0 => N558,
      I1 => N559,
      S => U2_vcs(0),
      O => M1_13_Q_11
    );
  M1_13_F : LUT4
    generic map(
      INIT => X"61A1"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => N558
    );
  M1_13_G : LUT4
    generic map(
      INIT => X"2870"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(1),
      O => N559
    );
  M1a_10_47 : MUXF5
    port map (
      I0 => N560,
      I1 => N561,
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
      O => N560
    );
  M1a_10_47_G : LUT4
    generic map(
      INIT => X"4177"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(2),
      O => N561
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_1239
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
      I => U3_Q_0_1039,
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
      I => ja1_IBUF_1233,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_1222,
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
  U2_vidon_and0000261 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U2_vidon_and0000261_596
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_596,
      S => U2_vcs(4),
      O => U2_vidon_and000026
    );
  U2_vidon_and0000651 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U2_vidon_and0000651_600
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_600,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  U3_spriteonB1_cmp_lt00002171 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(4),
      I2 => U2_vcs(3),
      I3 => U2_vcs(2),
      O => U3_spriteonB1_cmp_lt00002171_1120
    );
  U3_spriteonB1_cmp_lt0000217_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_spriteonB1_cmp_lt00002171_1120,
      S => U2_vcs(5),
      O => U3_spriteonB1_cmp_lt0000217
    );
  U3_spriteonB5_and0000171 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => U3_spriteonB5_and0000171_1142
    );
  U3_spriteonB5_and000017_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_spriteonB5_and0000171_1142,
      S => U2_vcs(4),
      O => U3_spriteonB5_and000017
    );
  M1a_8_11 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => rom1_addr(4),
      I2 => rom1_addr(3),
      I3 => U2_vcs(1),
      O => M1a_8_1
    );
  M1a_8_12 : LUT4
    generic map(
      INIT => X"22A8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(1),
      O => M1a_8_11_135
    );
  M1a_8_1_f5 : MUXF5
    port map (
      I0 => M1a_8_11_135,
      I1 => M1a_8_1,
      S => U2_vcs(2),
      O => M1a_8_Q
    );
  M1_18_1 : LUT4
    generic map(
      INIT => X"91AC"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(3),
      O => M1_18_1_14
    );
  M1_18_f5 : MUXF5
    port map (
      I0 => M1_18_2,
      I1 => M1_18_1_14,
      S => rom1_addr(4),
      O => M1_18_Q
    );
  M1_30_1161 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M1_27_bdd4,
      I1 => M1_30_96_83,
      I2 => rom1_addr(4),
      O => M1_30_116
    );
  M1_30_1162 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M1_30_49_82,
      I1 => M1_24_39_38,
      I2 => rom1_addr(4),
      O => M1_30_1161_81
    );
  M1_30_116_f5 : MUXF5
    port map (
      I0 => M1_30_1161_81,
      I1 => M1_30_116,
      S => rom1_addr(3),
      O => M1_30_Q
    );
  M1_28_1201 : LUT4
    generic map(
      INIT => X"89FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => M1_28_1201_62
    );
  M1_28_1202 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => M1_28_bdd1,
      I1 => rom1_addr(4),
      O => M1_28_1202_63
    );
  M1_28_120_f5 : MUXF5
    port map (
      I0 => M1_28_1202_63,
      I1 => M1_28_1201_62,
      S => rom1_addr(3),
      O => M1_28_120
    );
  M2_3_1241 : LUT4
    generic map(
      INIT => X"89FF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => rom1_addr(4),
      O => M2_3_1241_170
    );
  M2_3_1242 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_28_bdd1,
      O => M2_3_1242_171
    );
  M2_3_124_f5 : MUXF5
    port map (
      I0 => M2_3_1242_171,
      I1 => M2_3_1241_170,
      S => rom1_addr(3),
      O => M2_3_124
    );
  U3_red_2_1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_N35,
      I1 => U3_N41,
      I2 => U3_blue_and0003,
      O => U3_red(2)
    );
  U3_red_2_2 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => U3_N41,
      I1 => U3_blue_and0003,
      I2 => U3_N13,
      I3 => U3_N35,
      O => U3_red_2_1_1101
    );
  U3_red_2_f5 : MUXF5
    port map (
      I0 => U3_red_2_1_1101,
      I1 => U3_red(2),
      S => U3_spriteonGrnd,
      O => red_1_OBUF_1362
    );
  M1_25_352 : LUT4
    generic map(
      INIT => X"9006"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => M1_22_bdd9,
      I3 => M1_21_bdd5,
      O => M1_25_352_44
    );
  M1_25_35_f5 : MUXF5
    port map (
      I0 => M1_25_352_44,
      I1 => M1_25_351,
      S => U2_vcs(0),
      O => M1_25_35
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
      O => U3_spriteonB2_and000056_SW01_1126
    );
  U3_spriteonB2_and000056_SW0_f5 : MUXF5
    port map (
      I0 => U3_spriteonB2_and000056_SW01_1126,
      I1 => U3_spriteonB2_and000056_SW0,
      S => U2_hcs(5),
      O => N226
    );
  M2_7_441 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      I3 => U2_vcs(1),
      O => M2_7_441_190
    );
  M2_7_442 : LUT4
    generic map(
      INIT => X"1440"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd13,
      O => M2_7_442_191
    );
  M2_7_44_f5 : MUXF5
    port map (
      I0 => M2_7_442_191,
      I1 => M2_7_441_190,
      S => U2_vcs(2),
      O => M2_7_44
    );
  M2_24_1 : LUT4
    generic map(
      INIT => X"1C29"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(1),
      O => M2_24_Q
    );
  M2_24_f5 : MUXF5
    port map (
      I0 => M2_24_1_158,
      I1 => M2_24_Q,
      S => rom1_addr(4),
      O => M1_4_Q
    );
  M1_29_1261 : LUT4
    generic map(
      INIT => X"95D5"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_vcs(0),
      O => M1_29_1261_71
    );
  M1_29_1262 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      O => M1_29_1262_72
    );
  M1_29_126_f5 : MUXF5
    port map (
      I0 => M1_29_1262_72,
      I1 => M1_29_1261_71,
      S => U2_vcs(4),
      O => M1_29_126
    );
  M1a_23_541 : LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(3),
      O => M1a_23_541_114
    );
  M1a_23_542 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => U2_vcs(3),
      I3 => U2_vcs(0),
      O => M1a_23_542_115
    );
  M1a_23_54_f5 : MUXF5
    port map (
      I0 => M1a_23_542_115,
      I1 => M1a_23_541_114,
      S => U2_vcs(4),
      O => M1a_23_54
    );
  U3_tank2_angle_calc_and000046 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_tank2_angle_calc(4),
      I1 => U3_tank2_angle_calc(3),
      I2 => U3_tank2_angle_calc(2),
      I3 => U3_tank2_angle_calc(1),
      LO => U3_tank2_angle_calc_and000046_1180
    );
  U3_tank1_angle_calc_and000014 : LUT4_L
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => nes_up_reg_1356,
      I1 => who_present_state_FSM_FFd2_1370,
      I2 => U3_tank1_angle_calc(0),
      I3 => nes_down_reg_1315,
      LO => U3_tank1_angle_calc_and000014_1163
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
      LO => N562,
      O => nes_N01
    );
  U2_hcs_cmp_eq00005 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(1),
      I2 => U2_hcs(9),
      I3 => U3_N94,
      LO => N563,
      O => U2_hcs_cmp_eq00005_578
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
      LO => N564,
      O => U2_hcs_cmp_eq000010_577
    );
  nes_counter_reg_cmp_eq0000125 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(9),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(5),
      I3 => nes_counter_reg(6),
      LO => N565,
      O => nes_counter_reg_cmp_eq0000125_1313
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(2),
      I1 => U3_C2(1),
      LO => U3_C2_not00011_632
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => U3_C2(9),
      I1 => U3_C2(6),
      I2 => U3_C2_not000113_633,
      I3 => U3_C2_not00016_636,
      LO => U3_C2_not000123_634
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
      LO => U3_C2_not000150_635
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
      LO => U3_C1_not00014_617
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_N2,
      I3 => N151,
      LO => N566,
      O => U2_vcs_cmp_eq0000_589
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => U3_C1_not000147_618,
      I1 => N157,
      I2 => U3_C1(7),
      I3 => N158,
      LO => U3_C1_not000183_620
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(9),
      I1 => nes_scalar_reg(8),
      I2 => nes_scalar_next_cmp_eq000021_1345,
      I3 => nes_scalar_next_cmp_eq000010_1344,
      LO => N567,
      O => nes_scalar_next_cmp_eq0000
    );
  M1_18_2_INV_0 : INV
    port map (
      I => M1_14_bdd1,
      O => M1_18_2
    );
  M1_25_351_INV_0 : INV
    port map (
      I => M1_22_bdd4,
      O => M1_25_351
    );
  M2_24_2_INV_0 : INV
    port map (
      I => M1_4_bdd0,
      O => M2_24_1_158
    );

end STRUCTURE;

