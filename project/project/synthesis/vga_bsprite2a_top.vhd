--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_bsprite2a_top.vhd
-- /___/   /\     Timestamp: Thu Apr 24 15:55:42 2014
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
  signal M1_10_1_3 : STD_LOGIC; 
  signal M1_10_2 : STD_LOGIC; 
  signal M1_10_bdd7 : STD_LOGIC; 
  signal M1_10_bdd8 : STD_LOGIC; 
  signal M1_11_Q_7 : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal M1_18_Q_9 : STD_LOGIC; 
  signal M1_19_Q : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_20_Q_12 : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_27_17 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_23_22_24 : STD_LOGIC; 
  signal M1_23_30_25 : STD_LOGIC; 
  signal M1_23_bdd0 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal M1_25_2 : STD_LOGIC; 
  signal M1_25_54 : STD_LOGIC; 
  signal M1_25_541_34 : STD_LOGIC; 
  signal M1_25_542_35 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_26_25_38 : STD_LOGIC; 
  signal M1_26_58_39 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_27_119_42 : STD_LOGIC; 
  signal M1_27_13 : STD_LOGIC; 
  signal M1_27_45 : STD_LOGIC; 
  signal M1_27_451_45 : STD_LOGIC; 
  signal M1_27_452_46 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_12_50 : STD_LOGIC; 
  signal M1_28_129 : STD_LOGIC; 
  signal M1_28_1291_52 : STD_LOGIC; 
  signal M1_28_1292_53 : STD_LOGIC; 
  signal M1_28_33 : STD_LOGIC; 
  signal M1_28_331_55 : STD_LOGIC; 
  signal M1_28_332_56 : STD_LOGIC; 
  signal M1_28_71_57 : STD_LOGIC; 
  signal M1_28_bdd1 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_26 : STD_LOGIC; 
  signal M1_29_261_61 : STD_LOGIC; 
  signal M1_29_262_62 : STD_LOGIC; 
  signal M1_29_69_63 : STD_LOGIC; 
  signal M1_29_77_64 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_30_104_68 : STD_LOGIC; 
  signal M1_30_51_69 : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_31_25 : STD_LOGIC; 
  signal M1_31_251_72 : STD_LOGIC; 
  signal M1_31_252_73 : STD_LOGIC; 
  signal M1_31_62_74 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_3_1_76 : STD_LOGIC; 
  signal M1_3_2_77 : STD_LOGIC; 
  signal M1_3_bdd3 : STD_LOGIC; 
  signal M1_4_Q_79 : STD_LOGIC; 
  signal M1_4_SW1 : STD_LOGIC; 
  signal M1_4_SW11_81 : STD_LOGIC; 
  signal M1_4_bdd0 : STD_LOGIC; 
  signal M1_5_Q_83 : STD_LOGIC; 
  signal M1_8_Q_84 : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal M1_9_1_86 : STD_LOGIC; 
  signal M1_9_2 : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_18_Q_93 : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal M1a_1_Q_95 : STD_LOGIC; 
  signal M1a_20_Q_96 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal M1a_21_25_98 : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_0_102 : STD_LOGIC; 
  signal M1a_23_15_103 : STD_LOGIC; 
  signal M1a_23_4_104 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1a_24_38_106 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_25_36 : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal M1a_26_33_111 : STD_LOGIC; 
  signal M1a_26_55_112 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_27_52_114 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_28_63_SW0 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_32_118 : STD_LOGIC; 
  signal M1a_29_58_119 : STD_LOGIC; 
  signal M1a_2_Q_120 : STD_LOGIC; 
  signal M1a_30_37_121 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_3_1_123 : STD_LOGIC; 
  signal M1a_3_2_124 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_8_1 : STD_LOGIC; 
  signal M1a_8_11_128 : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_27_131 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_0_bdd18 : STD_LOGIC; 
  signal M2_0_bdd2 : STD_LOGIC; 
  signal M2_0_bdd20 : STD_LOGIC; 
  signal M2_0_bdd4 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_23 : STD_LOGIC; 
  signal M2_10_231_141 : STD_LOGIC; 
  signal M2_10_232_142 : STD_LOGIC; 
  signal M2_10_8 : STD_LOGIC; 
  signal M2_10_bdd0 : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_10_bdd5 : STD_LOGIC; 
  signal M2_11_Q_147 : STD_LOGIC; 
  signal M2_11_bdd0 : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M2_12_44 : STD_LOGIC; 
  signal M2_12_bdd5 : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal M2_18_bdd0 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_101_155 : STD_LOGIC; 
  signal M2_1_63_156 : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_20_Q : STD_LOGIC; 
  signal M2_20_12_159 : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal M2_21_bdd0 : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_22_1_163 : STD_LOGIC; 
  signal M2_22_2_164 : STD_LOGIC; 
  signal M2_23_Q_165 : STD_LOGIC; 
  signal M2_28_Q_166 : STD_LOGIC; 
  signal M2_29_Q : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_111_169 : STD_LOGIC; 
  signal M2_2_70_170 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_19_174 : STD_LOGIC; 
  signal M2_3_24_175 : STD_LOGIC; 
  signal M2_3_5_176 : STD_LOGIC; 
  signal M2_3_94_177 : STD_LOGIC; 
  signal M2_3_bdd7 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_4_122_180 : STD_LOGIC; 
  signal M2_4_133_181 : STD_LOGIC; 
  signal M2_4_36_182 : STD_LOGIC; 
  signal M2_4_46_183 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_4_bdd10 : STD_LOGIC; 
  signal M2_4_bdd2 : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal M2_5_103 : STD_LOGIC; 
  signal M2_5_1031_189 : STD_LOGIC; 
  signal M2_5_1032_190 : STD_LOGIC; 
  signal M2_5_160 : STD_LOGIC; 
  signal M2_5_1601_192 : STD_LOGIC; 
  signal M2_5_1602_193 : STD_LOGIC; 
  signal M2_5_31 : STD_LOGIC; 
  signal M2_5_311_195 : STD_LOGIC; 
  signal M2_5_45 : STD_LOGIC; 
  signal M2_5_451_197 : STD_LOGIC; 
  signal M2_5_452_198 : STD_LOGIC; 
  signal M2_5_bdd2 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_108_201 : STD_LOGIC; 
  signal M2_6_17_202 : STD_LOGIC; 
  signal M2_6_171_203 : STD_LOGIC; 
  signal M2_6_bdd1 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_7_43_206 : STD_LOGIC; 
  signal M2_7_75_207 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_53_210 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_31_212 : STD_LOGIC; 
  signal M2_9_69_213 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_10_28_215 : STD_LOGIC; 
  signal M2a_11_Q : STD_LOGIC; 
  signal M2a_11_25_217 : STD_LOGIC; 
  signal M2a_11_37_218 : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q : STD_LOGIC; 
  signal M2a_14_Q_221 : STD_LOGIC; 
  signal M2a_15_Q : STD_LOGIC; 
  signal M2a_16_Q : STD_LOGIC; 
  signal M2a_1_Q_224 : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_21_Q : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_24_Q : STD_LOGIC; 
  signal M2a_26_Q : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_2_231 : STD_LOGIC; 
  signal M2a_29_59_232 : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_18_234 : STD_LOGIC; 
  signal M2a_2_46_235 : STD_LOGIC; 
  signal M2a_30_19_236 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_3_1_238 : STD_LOGIC; 
  signal M2a_3_2_239 : STD_LOGIC; 
  signal M2a_3_3_240 : STD_LOGIC; 
  signal M2a_3_f5_241 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_4_114_243 : STD_LOGIC; 
  signal M2a_4_194_244 : STD_LOGIC; 
  signal M2a_4_20_245 : STD_LOGIC; 
  signal M2a_4_36_246 : STD_LOGIC; 
  signal M2a_4_58_247 : STD_LOGIC; 
  signal M2a_4_76 : STD_LOGIC; 
  signal M2a_4_761 : STD_LOGIC; 
  signal M2a_4_762_250 : STD_LOGIC; 
  signal M2a_4_9_251 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M2a_5_101_253 : STD_LOGIC; 
  signal M2a_5_125_254 : STD_LOGIC; 
  signal M2a_5_64_SW0 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_6_32 : STD_LOGIC; 
  signal M2a_6_51_258 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M2a_7_53_261 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_29_263 : STD_LOGIC; 
  signal M2a_8_94 : STD_LOGIC; 
  signal M2a_8_941_265 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_9_33_267 : STD_LOGIC; 
  signal M2a_9_67 : STD_LOGIC; 
  signal M2a_9_671_269 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
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
  signal N53 : STD_LOGIC; 
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
  signal N55 : STD_LOGIC; 
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
  signal N57 : STD_LOGIC; 
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
  signal N6 : STD_LOGIC; 
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
  signal N61 : STD_LOGIC; 
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
  signal N660 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N662 : STD_LOGIC; 
  signal N663 : STD_LOGIC; 
  signal N664 : STD_LOGIC; 
  signal N665 : STD_LOGIC; 
  signal N666 : STD_LOGIC; 
  signal N667 : STD_LOGIC; 
  signal N668 : STD_LOGIC; 
  signal N669 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N670 : STD_LOGIC; 
  signal N671 : STD_LOGIC; 
  signal N672 : STD_LOGIC; 
  signal N673 : STD_LOGIC; 
  signal N674 : STD_LOGIC; 
  signal N675 : STD_LOGIC; 
  signal N676 : STD_LOGIC; 
  signal N677 : STD_LOGIC; 
  signal N678 : STD_LOGIC; 
  signal N679 : STD_LOGIC; 
  signal N680 : STD_LOGIC; 
  signal N681 : STD_LOGIC; 
  signal N682 : STD_LOGIC; 
  signal N683 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U1_Mcount_q_cy_10_rt_614 : STD_LOGIC; 
  signal U1_Mcount_q_cy_11_rt_616 : STD_LOGIC; 
  signal U1_Mcount_q_cy_12_rt_618 : STD_LOGIC; 
  signal U1_Mcount_q_cy_13_rt_620 : STD_LOGIC; 
  signal U1_Mcount_q_cy_14_rt_622 : STD_LOGIC; 
  signal U1_Mcount_q_cy_15_rt_624 : STD_LOGIC; 
  signal U1_Mcount_q_cy_16_rt_626 : STD_LOGIC; 
  signal U1_Mcount_q_cy_1_rt_628 : STD_LOGIC; 
  signal U1_Mcount_q_cy_2_rt_630 : STD_LOGIC; 
  signal U1_Mcount_q_cy_3_rt_632 : STD_LOGIC; 
  signal U1_Mcount_q_cy_4_rt_634 : STD_LOGIC; 
  signal U1_Mcount_q_cy_5_rt_636 : STD_LOGIC; 
  signal U1_Mcount_q_cy_6_rt_638 : STD_LOGIC; 
  signal U1_Mcount_q_cy_7_rt_640 : STD_LOGIC; 
  signal U1_Mcount_q_cy_8_rt_642 : STD_LOGIC; 
  signal U1_Mcount_q_cy_9_rt_644 : STD_LOGIC; 
  signal U1_Mcount_q_xor_17_rt_646 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U1_q_171 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_rt_669 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_rt_671 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_rt_673 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_rt_675 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_rt_677 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_rt_679 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_7_rt_681 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_rt_683 : STD_LOGIC; 
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
  signal U2_Mcount_hcs_xor_9_rt_695 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_698 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_700 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_702 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_704 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_706 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_708 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_710 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_712 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_724 : STD_LOGIC; 
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
  signal U2_hcs_cmp_eq000010_759 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_760 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_771 : STD_LOGIC; 
  signal U2_vidon_and00000_772 : STD_LOGIC; 
  signal U2_vidon_and0000105_773 : STD_LOGIC; 
  signal U2_vidon_and0000117_774 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and0000181_776 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_778 : STD_LOGIC; 
  signal U2_vidon_and000039_779 : STD_LOGIC; 
  signal U2_vidon_and00006_780 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_782 : STD_LOGIC; 
  signal U2_vidon_and000080_783 : STD_LOGIC; 
  signal U2_vsenable_784 : STD_LOGIC; 
  signal U3_B_785 : STD_LOGIC; 
  signal U3_B_and0000 : STD_LOGIC; 
  signal U3_B_mux0016 : STD_LOGIC; 
  signal U3_B_mux001612_788 : STD_LOGIC; 
  signal U3_B_mux0016124_789 : STD_LOGIC; 
  signal U3_B_mux0016128_790 : STD_LOGIC; 
  signal U3_B_mux001617_791 : STD_LOGIC; 
  signal U3_B_mux001618_792 : STD_LOGIC; 
  signal U3_B_mux001662_793 : STD_LOGIC; 
  signal U3_B_mux00167_794 : STD_LOGIC; 
  signal U3_B_mux001685_795 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000110_807 : STD_LOGIC; 
  signal U3_C1_not0001105_808 : STD_LOGIC; 
  signal U3_C1_not000127_809 : STD_LOGIC; 
  signal U3_C1_not00014_810 : STD_LOGIC; 
  signal U3_C1_not000147_811 : STD_LOGIC; 
  signal U3_C1_not00015_812 : STD_LOGIC; 
  signal U3_C1_not000183_813 : STD_LOGIC; 
  signal U3_C2_5_1_820 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not00011_826 : STD_LOGIC; 
  signal U3_C2_not000113_827 : STD_LOGIC; 
  signal U3_C2_not000123_828 : STD_LOGIC; 
  signal U3_C2_not000150_829 : STD_LOGIC; 
  signal U3_C2_not00016_830 : STD_LOGIC; 
  signal U3_C2_not000164_831 : STD_LOGIC; 
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
  signal U3_CM1_Madd_add0000_cy_1_rt_864 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_2_rt_866 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_3_rt_868 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_4_rt_870 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_5_rt_872 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_6_rt_874 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_7_rt_876 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_cy_8_rt_878 : STD_LOGIC; 
  signal U3_CM1_Madd_add0000_xor_9_rt_880 : STD_LOGIC; 
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
  signal U3_CM2_Msub_sub0000_cy_0_rt_943 : STD_LOGIC; 
  signal U3_CM2_and0000 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_2_rt_998 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_5_rt_1002 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_6_rt_1004 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_7_rt_1006 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_cy_8_rt_1008 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_1_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_3_Q : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_lut_4_1 : STD_LOGIC; 
  signal U3_Madd_CM1_add0000_xor_9_rt_1013 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_4_11 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_5_11_1027 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_6_11_1028 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0000_xor_7_11_1029 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_cy_1_rt_1032 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_cy_3_rt_1035 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0001_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_5_rt_1049 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_6_rt_1051 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_7_rt_1053 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_cy_8_rt_1055 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0002_xor_9_rt_1061 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_1_rt_1064 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_3_rt_1067 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_4_rt_1069 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_5_rt_1071 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_6_rt_1073 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_7_rt_1075 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_cy_8_rt_1077 : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM1_addsub0003_xor_9_rt_1080 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_4_11 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_5_11_1082 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_6_11_1083 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0000_xor_7_11_1084 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_cy_1_rt_1087 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_cy_3_rt_1090 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0001_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_5_rt_1104 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_6_rt_1106 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_7_rt_1108 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_cy_8_rt_1110 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0002_xor_9_rt_1116 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_1_rt_1119 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_3_rt_1122 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_4_rt_1124 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_5_rt_1126 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_6_rt_1128 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_7_rt_1130 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_cy_8_rt_1132 : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_lut_0_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_lut_2_Q : STD_LOGIC; 
  signal U3_Madd_spriteonM2_addsub0003_xor_9_rt_1135 : STD_LOGIC; 
  signal U3_Madd_tank1ascii1s_add0000_cy_5_bdd2 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_lut_4_Q_1144 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_lut_5_Q_1145 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_lut_6_Q_1146 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_lut_8_Q_1147 : STD_LOGIC; 
  signal U3_Madd_tank1rom10s_lut_9_Q_1148 : STD_LOGIC; 
  signal U3_Madd_tank2rom10s_lut_4_Q_1171 : STD_LOGIC; 
  signal U3_Madd_tank2rom10s_lut_5_Q_1172 : STD_LOGIC; 
  signal U3_Madd_tank2rom10s_lut_6_Q_1173 : STD_LOGIC; 
  signal U3_Madd_tank2rom10s_lut_8_Q_1174 : STD_LOGIC; 
  signal U3_Madd_tank2rom10s_lut_9_Q_1175 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_rt_1541 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_rt_1543 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_rt_1545 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_rt_1547 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_rt_1549 : STD_LOGIC; 
  signal U3_Mcount_q_cy_15_rt_1551 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_rt_1553 : STD_LOGIC; 
  signal U3_Mcount_q_cy_17_rt_1555 : STD_LOGIC; 
  signal U3_Mcount_q_cy_18_rt_1557 : STD_LOGIC; 
  signal U3_Mcount_q_cy_19_rt_1559 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_rt_1561 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_rt_1563 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_rt_1565 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_rt_1567 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_rt_1569 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_rt_1571 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_rt_1573 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_rt_1575 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_rt_1577 : STD_LOGIC; 
  signal U3_Mcount_q_xor_20_rt_1579 : STD_LOGIC; 
  signal U3_Mhorz_1580 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0000 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0000113_1582 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000032_1583 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000065_1584 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0001 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne0001113_1586 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000132_1587 : STD_LOGIC; 
  signal U3_Mhorz_cmp_ne000165_1588 : STD_LOGIC; 
  signal U3_Mhorz_not0001_1589 : STD_LOGIC; 
  signal U3_Mhorz_or0000 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_1591 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7_1592 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6_1593 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7_1594 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_1595 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6_1596 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_1598 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_1599 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6_1602 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_1603 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_1604 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_1605 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_1606 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5_1607 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_1610 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_1611 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_1612 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_1613 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_1614 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_1615 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_1616 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_1617 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_1618 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_1619 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_1620 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_1621 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7_1622 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6_1623 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7_1624 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_1625 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6_1626 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_1628 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_1629 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6_1632 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_1633 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_1634 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_1635 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_1636 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5_1637 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_1640 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_1641 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_1642 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_1643 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_1644 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_1645 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_1646 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_1647 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_1648 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_1649 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_1650 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_1651 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7_1652 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6_1653 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7_1654 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_1655 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6_1656 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_1658 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_1659 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6_1662 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_1663 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_1664 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_1665 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_1666 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5_1667 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_1670 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_1671 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_1672 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_1673 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_1674 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_1675 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_1676 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_1677 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_1678 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_1679 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_1680 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_1681 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7_1682 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6_1683 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7_1684 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_1685 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6_1686 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_1688 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_1689 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6_1692 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_1693 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_1694 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_1695 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_1696 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5_1697 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_1700 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_1701 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_1702 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_SW0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_1704 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_1705 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_1706 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_1708 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_1709 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_1710 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_1711 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_1712 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_3_f5_1713 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_1714 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_4_f5_1715 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_5_1716 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_51_1717 : STD_LOGIC; 
  signal U3_Mmux_tank110sM_mux0000_6_1718 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_3_f5_1719 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_1720 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_4_f5_1721 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_5_1722 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_51_1723 : STD_LOGIC; 
  signal U3_Mmux_tank11sM_mux0000_6_1724 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_3_f5_1725 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_4_1726 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_4_f5_1727 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_5_1728 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_51_1729 : STD_LOGIC; 
  signal U3_Mmux_tank210sM_mux0000_6_1730 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_3_f5_1731 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_4_1732 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_4_f5_1733 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_5_1734 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_51_1735 : STD_LOGIC; 
  signal U3_Mmux_tank21sM_mux0000_6_1736 : STD_LOGIC; 
  signal U3_Msub_CM2_sub0000_cy_1_rt_1738 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_0_rt_1774 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_1_rt_1776 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_2_rt_1778 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_3_rt_1780 : STD_LOGIC; 
  signal U3_Msub_tank1rom10s_sub0000_cy_4_rt_1782 : STD_LOGIC; 
  signal U3_N0 : STD_LOGIC; 
  signal U3_N1 : STD_LOGIC; 
  signal U3_N13 : STD_LOGIC; 
  signal U3_N14 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N191 : STD_LOGIC; 
  signal U3_N25 : STD_LOGIC; 
  signal U3_N281 : STD_LOGIC; 
  signal U3_N29 : STD_LOGIC; 
  signal U3_N33 : STD_LOGIC; 
  signal U3_N37 : STD_LOGIC; 
  signal U3_N50 : STD_LOGIC; 
  signal U3_N80 : STD_LOGIC; 
  signal U3_N82 : STD_LOGIC; 
  signal U3_N87 : STD_LOGIC; 
  signal U3_N89 : STD_LOGIC; 
  signal U3_N90 : STD_LOGIC; 
  signal U3_Q_0_1811 : STD_LOGIC; 
  signal U3_Q_1_1812 : STD_LOGIC; 
  signal U3_Q_10_1813 : STD_LOGIC; 
  signal U3_Q_11_1814 : STD_LOGIC; 
  signal U3_Q_12_1815 : STD_LOGIC; 
  signal U3_Q_13_1816 : STD_LOGIC; 
  signal U3_Q_14_1817 : STD_LOGIC; 
  signal U3_Q_15_1818 : STD_LOGIC; 
  signal U3_Q_16_1819 : STD_LOGIC; 
  signal U3_Q_17_1820 : STD_LOGIC; 
  signal U3_Q_2_1821 : STD_LOGIC; 
  signal U3_Q_3_1822 : STD_LOGIC; 
  signal U3_Q_4_1823 : STD_LOGIC; 
  signal U3_Q_5_1824 : STD_LOGIC; 
  signal U3_Q_6_1825 : STD_LOGIC; 
  signal U3_Q_7_1826 : STD_LOGIC; 
  signal U3_Q_8_1827 : STD_LOGIC; 
  signal U3_Q_9_1828 : STD_LOGIC; 
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
  signal U3_RMcnt2_Q_mux0000_2_1 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_4_1 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_5_SW0 : STD_LOGIC; 
  signal U3_RMcnt2_Q_mux0000_5_SW01_1919 : STD_LOGIC; 
  signal U3_RMcnt2_and0000 : STD_LOGIC; 
  signal U3_RMcnt2_and0001 : STD_LOGIC; 
  signal U3_RMcnt2_and000112_1922 : STD_LOGIC; 
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
  signal U3_RMcnt_Q_mux0000_2_1 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_4_1 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_5_SW0 : STD_LOGIC; 
  signal U3_RMcnt_Q_mux0000_5_SW01_1951 : STD_LOGIC; 
  signal U3_RMcnt_and0000 : STD_LOGIC; 
  signal U3_RMcnt_and0001 : STD_LOGIC; 
  signal U3_RMcnt_and000112_1954 : STD_LOGIC; 
  signal U3_RMht1_not0001 : STD_LOGIC; 
  signal U3_RMht1_not000110_1962 : STD_LOGIC; 
  signal U3_RMht1_not0001127_1963 : STD_LOGIC; 
  signal U3_RMht1_not0001_bdd1 : STD_LOGIC; 
  signal U3_RMht2_not0001 : STD_LOGIC; 
  signal U3_RMht2_not000124_1972 : STD_LOGIC; 
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
  signal U3_Result_3_1_2000 : STD_LOGIC; 
  signal U3_Result_3_2_2001 : STD_LOGIC; 
  signal U3_Result_3_3 : STD_LOGIC; 
  signal U3_Result_3_4 : STD_LOGIC; 
  signal U3_Result_4_1_2005 : STD_LOGIC; 
  signal U3_Result_4_2_2006 : STD_LOGIC; 
  signal U3_Result_4_3 : STD_LOGIC; 
  signal U3_Result_4_4 : STD_LOGIC; 
  signal U3_Result_5_1 : STD_LOGIC; 
  signal U3_Result_5_136_2011 : STD_LOGIC; 
  signal U3_Result_5_2 : STD_LOGIC; 
  signal U3_Result_5_236_2013 : STD_LOGIC; 
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
  signal U3_blue_and0001138_2030 : STD_LOGIC; 
  signal U3_blue_and0001156_2031 : STD_LOGIC; 
  signal U3_blue_and0002 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_blue_and0004 : STD_LOGIC; 
  signal U3_destroy1_2035 : STD_LOGIC; 
  signal U3_destroy1_mux0015 : STD_LOGIC; 
  signal U3_destroy1_mux001527_2037 : STD_LOGIC; 
  signal U3_destroy1_mux00154_2038 : STD_LOGIC; 
  signal U3_destroy1_mux001541_2039 : STD_LOGIC; 
  signal U3_destroy1_mux001562_2040 : STD_LOGIC; 
  signal U3_destroy2_2041 : STD_LOGIC; 
  signal U3_destroy2_mux0017 : STD_LOGIC; 
  signal U3_destroy2_mux001719 : STD_LOGIC; 
  signal U3_destroy2_mux0017191_2044 : STD_LOGIC; 
  signal U3_destroy2_mux001727_2045 : STD_LOGIC; 
  signal U3_destroy2_mux001766_2046 : STD_LOGIC; 
  signal U3_font1_0_1 : STD_LOGIC; 
  signal U3_font2_0_Q : STD_LOGIC; 
  signal U3_font2_0_1 : STD_LOGIC; 
  signal U3_font2_2_Q : STD_LOGIC; 
  signal U3_font3_cmp_lt0000 : STD_LOGIC; 
  signal U3_font3_cmp_lt0001 : STD_LOGIC; 
  signal U3_font3_cmp_lt0002 : STD_LOGIC; 
  signal U3_font4_2_Q : STD_LOGIC; 
  signal U3_font4_2_1_2056 : STD_LOGIC; 
  signal U3_font4_2_2_2057 : STD_LOGIC; 
  signal U3_font4_4_Q : STD_LOGIC; 
  signal U3_font4_5_Q : STD_LOGIC; 
  signal U3_green_1_116_2060 : STD_LOGIC; 
  signal U3_green_1_138_2061 : STD_LOGIC; 
  signal U3_green_2_112_2062 : STD_LOGIC; 
  signal U3_green_2_17 : STD_LOGIC; 
  signal U3_leftBTN_inv1_inv1 : STD_LOGIC; 
  signal U3_q_181 : STD_LOGIC; 
  signal U3_q_191 : STD_LOGIC; 
  signal U3_q_201 : STD_LOGIC; 
  signal U3_red_0_328 : STD_LOGIC; 
  signal U3_rise_2072 : STD_LOGIC; 
  signal U3_rise2_2073 : STD_LOGIC; 
  signal U3_rise2_and0000_2074 : STD_LOGIC; 
  signal U3_rise_and0000_2075 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and0000113 : STD_LOGIC; 
  signal U3_spriteonB1_and0000115_2098 : STD_LOGIC; 
  signal U3_spriteonB1_and000017_2099 : STD_LOGIC; 
  signal U3_spriteonB1_and00004_2100 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_le00001 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_le00002 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000212_2104 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000235 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt00002351_2106 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_2108 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000112_2110 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le0000128_2111 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000019 : STD_LOGIC; 
  signal U3_spriteonB4_and0000191_2115 : STD_LOGIC; 
  signal U3_spriteonB4_and000050_2116 : STD_LOGIC; 
  signal U3_spriteonB4_and00009 : STD_LOGIC; 
  signal U3_spriteonB4_and000091_2118 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000121_2120 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le000018_2121 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000012_2123 : STD_LOGIC; 
  signal U3_spriteonB5_and000039_2124 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000103_2126 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000117_2127 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000017_2128 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000020_2129 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000041_2130 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00005 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000063_2132 : STD_LOGIC; 
  signal U3_spriteonM1 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_8_2_2139 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_8_bdd0 : STD_LOGIC; 
  signal U3_spriteonM1_addsub0000_9_1_2142 : STD_LOGIC; 
  signal U3_spriteonM1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonM1_cmp_le0000 : STD_LOGIC; 
  signal U3_spriteonM2 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_8_2_2181 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_8_bdd0 : STD_LOGIC; 
  signal U3_spriteonM2_addsub0000_9_1_2184 : STD_LOGIC; 
  signal U3_spriteonM2_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteonM2_cmp_le0000 : STD_LOGIC; 
  signal U3_tank110sM_mux0000 : STD_LOGIC; 
  signal U3_tank11sM_mux0000 : STD_LOGIC; 
  signal U3_tank1Angle10s : STD_LOGIC; 
  signal U3_tank1Angle10s_and00000_2220 : STD_LOGIC; 
  signal U3_tank1Angle10s_and0000128 : STD_LOGIC; 
  signal U3_tank1Angle10s_and00001281_2222 : STD_LOGIC; 
  signal U3_tank1Angle10s_and000017_2223 : STD_LOGIC; 
  signal U3_tank1Angle1s : STD_LOGIC; 
  signal U3_tank1Angle1s_and000010_2225 : STD_LOGIC; 
  signal U3_tank1Angle1s_and000018_2226 : STD_LOGIC; 
  signal U3_tank1HP_0_Q : STD_LOGIC; 
  signal U3_tank1HP_2_Q : STD_LOGIC; 
  signal U3_tank1HP_mux0005_0_Q_2229 : STD_LOGIC; 
  signal U3_tank1HP_mux0005_2_Q_2230 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_11_2236 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_111_2237 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_112_2238 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_113_2239 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_114_2240 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_115_2241 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_10_bdd0 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_7_1_2247 : STD_LOGIC; 
  signal U3_tank1rom10s_sub0001_7_11_2248 : STD_LOGIC; 
  signal U3_tank210sM_mux0000 : STD_LOGIC; 
  signal U3_tank21sM_mux0000 : STD_LOGIC; 
  signal U3_tank2Angle10s : STD_LOGIC; 
  signal U3_tank2Angle1s : STD_LOGIC; 
  signal U3_tank2HP_0_Q : STD_LOGIC; 
  signal U3_tank2HP_2_Q : STD_LOGIC; 
  signal U3_tank2HP_mux0007_0_Q_2257 : STD_LOGIC; 
  signal U3_tank2HP_mux0007_2_Q_2258 : STD_LOGIC; 
  signal a_to_g_0_OBUF_2266 : STD_LOGIC; 
  signal a_to_g_1_OBUF_2267 : STD_LOGIC; 
  signal a_to_g_2_OBUF_2268 : STD_LOGIC; 
  signal a_to_g_3_OBUF_2269 : STD_LOGIC; 
  signal a_to_g_4_OBUF_2270 : STD_LOGIC; 
  signal a_to_g_5_OBUF_2271 : STD_LOGIC; 
  signal a_to_g_6_OBUF_2272 : STD_LOGIC; 
  signal an_0_OBUF_2277 : STD_LOGIC; 
  signal an_1_OBUF_2278 : STD_LOGIC; 
  signal an_2_OBUF_2279 : STD_LOGIC; 
  signal an_3_OBUF_2280 : STD_LOGIC; 
  signal blue_0_OBUF_2283 : STD_LOGIC; 
  signal blue_1_OBUF_2284 : STD_LOGIC; 
  signal btn_3_IBUF_2310 : STD_LOGIC; 
  signal green_0_OBUF_2315 : STD_LOGIC; 
  signal green_1_OBUF_2316 : STD_LOGIC; 
  signal green_2_OBUF_2317 : STD_LOGIC; 
  signal hsync_OBUF_2319 : STD_LOGIC; 
  signal ja1_IBUF_2321 : STD_LOGIC; 
  signal ja2_OBUF_2323 : STD_LOGIC; 
  signal ja3_OBUF_2325 : STD_LOGIC; 
  signal ld_0_OBUF_2334 : STD_LOGIC; 
  signal ld_1_OBUF_2335 : STD_LOGIC; 
  signal ld_2_OBUF_2336 : STD_LOGIC; 
  signal ld_3_OBUF_2337 : STD_LOGIC; 
  signal ld_4_OBUF_2338 : STD_LOGIC; 
  signal ld_5_OBUF_2339 : STD_LOGIC; 
  signal ld_6_OBUF_2340 : STD_LOGIC; 
  signal ld_7_OBUF_2341 : STD_LOGIC; 
  signal mclk_BUFGP_2343 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_2346 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_2348 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_2350 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_2352 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_2354 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_2356 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_2358 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_2360 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_2362 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_2365 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_2367 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_2369 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_2371 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_2373 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_2375 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_2377 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_2379 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_2391 : STD_LOGIC; 
  signal nes_N0 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_a_reg_2404 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_b_reg_2406 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_2418 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_2419 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_2421 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_2423 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_nes_clk31_2426 : STD_LOGIC; 
  signal nes_right_reg_2427 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_2450 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_2451 : STD_LOGIC; 
  signal nes_sel_reg_2462 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_2464 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_up_reg_2466 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal red_0_OBUF_2471 : STD_LOGIC; 
  signal red_1_OBUF_2472 : STD_LOGIC; 
  signal red_2_OBUF_2473 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_2478 : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal screenstate_present_state_FSM_FFd2_2480 : STD_LOGIC; 
  signal selector_blue_0_53_2481 : STD_LOGIC; 
  signal selector_blue_1_17_2482 : STD_LOGIC; 
  signal selector_blue_1_46_2483 : STD_LOGIC; 
  signal selector_green_0_103_2484 : STD_LOGIC; 
  signal selector_green_0_58_2485 : STD_LOGIC; 
  signal selector_green_0_98_2486 : STD_LOGIC; 
  signal selector_green_1_21_2487 : STD_LOGIC; 
  signal selector_green_1_64_2488 : STD_LOGIC; 
  signal selector_green_2_21_2489 : STD_LOGIC; 
  signal selector_green_2_38_2490 : STD_LOGIC; 
  signal selector_green_2_93_2491 : STD_LOGIC; 
  signal selector_red_0_34_2492 : STD_LOGIC; 
  signal selector_red_0_34_SW0 : STD_LOGIC; 
  signal selector_red_0_34_SW01_2494 : STD_LOGIC; 
  signal selector_red_0_77_2495 : STD_LOGIC; 
  signal selector_red_1_11 : STD_LOGIC; 
  signal selector_red_1_111_2497 : STD_LOGIC; 
  signal selector_red_1_112_2498 : STD_LOGIC; 
  signal selector_red_1_47_2499 : STD_LOGIC; 
  signal selector_red_2_20_2500 : STD_LOGIC; 
  signal selector_red_2_63_2501 : STD_LOGIC; 
  signal sig_gameA : STD_LOGIC; 
  signal sig_gameB : STD_LOGIC; 
  signal sig_gameDown : STD_LOGIC; 
  signal sig_gameRight : STD_LOGIC; 
  signal sig_tank1 : STD_LOGIC; 
  signal sig_tank1_angle_calc_2_Q : STD_LOGIC; 
  signal sig_tank1_angle_calc_4_Q : STD_LOGIC; 
  signal sig_tank1_angle_calc_5_Q : STD_LOGIC; 
  signal sig_tank2 : STD_LOGIC; 
  signal title_green_cmp_lt0000 : STD_LOGIC; 
  signal title_green_cmp_lt0000225_2589 : STD_LOGIC; 
  signal title_spriteon : STD_LOGIC; 
  signal title_spriteon_and0000119_2591 : STD_LOGIC; 
  signal title_spriteon_and0000124_2592 : STD_LOGIC; 
  signal title_spriteon_and0000169_2593 : STD_LOGIC; 
  signal title_spriteon_and0000178_2594 : STD_LOGIC; 
  signal title_spriteon_and000019_2595 : STD_LOGIC; 
  signal title_spriteon_and0000205_2596 : STD_LOGIC; 
  signal title_spriteon_and000035_2597 : STD_LOGIC; 
  signal title_spriteon_and000038_2598 : STD_LOGIC; 
  signal title_spriteon_and000052_2599 : STD_LOGIC; 
  signal title_spriteon_and000059_2600 : STD_LOGIC; 
  signal title_spriteon_and000087 : STD_LOGIC; 
  signal title_spriteon_and0000871_2602 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_2605 : STD_LOGIC; 
  signal who_delay1_2606 : STD_LOGIC; 
  signal who_delay2_2607 : STD_LOGIC; 
  signal who_delay3_2608 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_2609 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_2611 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal who_present_state_FSM_N0 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_rt_2616 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_rt_2618 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_rt_2620 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_rt_2622 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_rt_2624 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_rt_2626 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_rt_2628 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_17_rt_2630 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_rt_2632 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_rt_2634 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_rt_2636 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_rt_2638 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_rt_2640 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_rt_2642 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_rt_2644 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_rt_2646 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_rt_2648 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_rt_2650 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_xor_19_rt_2652 : STD_LOGIC; 
  signal x7_Mmux_digit_3_2653 : STD_LOGIC; 
  signal x7_Mmux_digit_31_2654 : STD_LOGIC; 
  signal x7_Mmux_digit_4_2655 : STD_LOGIC; 
  signal x7_Mmux_digit_41_2656 : STD_LOGIC; 
  signal x7_an_1_mux000110_2677 : STD_LOGIC; 
  signal x7_an_2_mux000117_2678 : STD_LOGIC; 
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
  signal U3_Madd_tank1rom1s_cy : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank1rom1s_lut : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank2ascii1s_add0000_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_Madd_tank2rom10s_cy : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank2rom1s_cy : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U3_Madd_tank2rom1s_lut : STD_LOGIC_VECTOR ( 10 downto 4 ); 
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
  signal U3_Msub_font4_sub0002_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
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
  signal U3_RMcnt2_Maddsub_addsub0000_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U3_RMcnt2_Q_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMcnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMcnt_Maddsub_addsub0000_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U3_RMcnt_Q_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMht1 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_RMht2 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U3_Result : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal U3_font1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
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
  signal U3_tank1rom10s_sub0000 : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_tank1rom10s_sub0001 : STD_LOGIC_VECTOR ( 10 downto 4 ); 
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
  signal sig_tank110sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank11sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank1rom10s : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sig_tank1rom1s : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal sig_tank210sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank21sM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sig_tank2_angle_calc : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal sig_tank2rom10s : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal sig_tank2rom1s : STD_LOGIC_VECTOR ( 11 downto 4 ); 
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
      PRE => btn_3_IBUF_2310,
      Q => who_present_state_FSM_FFd2_2611
    );
  who_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => who_present_state_FSM_FFd1_In,
      Q => who_present_state_FSM_FFd1_2609
    );
  who_delay3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => who_delay2_2607,
      Q => who_delay3_2608
    );
  who_delay2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => who_delay1_2606,
      Q => who_delay2_2607
    );
  who_delay1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => sig_gameA,
      Q => who_delay1_2606
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(0),
      Q => U1_q_01
    );
  U1_q_1 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(1),
      Q => U1_q(1)
    );
  U1_q_2 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(2),
      Q => U1_q(2)
    );
  U1_q_3 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(3),
      Q => U1_q(3)
    );
  U1_q_4 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(4),
      Q => U1_q(4)
    );
  U1_q_5 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(5),
      Q => U1_q(5)
    );
  U1_q_6 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(6),
      Q => U1_q(6)
    );
  U1_q_7 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(7),
      Q => U1_q(7)
    );
  U1_q_8 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(8),
      Q => U1_q(8)
    );
  U1_q_9 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(9),
      Q => U1_q(9)
    );
  U1_q_10 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(10),
      Q => U1_q(10)
    );
  U1_q_11 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(11),
      Q => U1_q(11)
    );
  U1_q_12 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(12),
      Q => U1_q(12)
    );
  U1_q_13 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(13),
      Q => U1_q(13)
    );
  U1_q_14 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(14),
      Q => U1_q(14)
    );
  U1_q_15 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(15),
      Q => U1_q(15)
    );
  U1_q_16 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => Result(16),
      Q => U1_q(16)
    );
  U1_q_17 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
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
      S => U1_Mcount_q_cy_1_rt_628,
      O => U1_Mcount_q_cy(1)
    );
  U1_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(0),
      LI => U1_Mcount_q_cy_1_rt_628,
      O => Result(1)
    );
  U1_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(1),
      DI => N0,
      S => U1_Mcount_q_cy_2_rt_630,
      O => U1_Mcount_q_cy(2)
    );
  U1_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(1),
      LI => U1_Mcount_q_cy_2_rt_630,
      O => Result(2)
    );
  U1_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(2),
      DI => N0,
      S => U1_Mcount_q_cy_3_rt_632,
      O => U1_Mcount_q_cy(3)
    );
  U1_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(2),
      LI => U1_Mcount_q_cy_3_rt_632,
      O => Result(3)
    );
  U1_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(3),
      DI => N0,
      S => U1_Mcount_q_cy_4_rt_634,
      O => U1_Mcount_q_cy(4)
    );
  U1_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(3),
      LI => U1_Mcount_q_cy_4_rt_634,
      O => Result(4)
    );
  U1_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(4),
      DI => N0,
      S => U1_Mcount_q_cy_5_rt_636,
      O => U1_Mcount_q_cy(5)
    );
  U1_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(4),
      LI => U1_Mcount_q_cy_5_rt_636,
      O => Result(5)
    );
  U1_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(5),
      DI => N0,
      S => U1_Mcount_q_cy_6_rt_638,
      O => U1_Mcount_q_cy(6)
    );
  U1_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(5),
      LI => U1_Mcount_q_cy_6_rt_638,
      O => Result(6)
    );
  U1_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(6),
      DI => N0,
      S => U1_Mcount_q_cy_7_rt_640,
      O => U1_Mcount_q_cy(7)
    );
  U1_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(6),
      LI => U1_Mcount_q_cy_7_rt_640,
      O => Result(7)
    );
  U1_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(7),
      DI => N0,
      S => U1_Mcount_q_cy_8_rt_642,
      O => U1_Mcount_q_cy(8)
    );
  U1_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(7),
      LI => U1_Mcount_q_cy_8_rt_642,
      O => Result(8)
    );
  U1_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(8),
      DI => N0,
      S => U1_Mcount_q_cy_9_rt_644,
      O => U1_Mcount_q_cy(9)
    );
  U1_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(8),
      LI => U1_Mcount_q_cy_9_rt_644,
      O => Result(9)
    );
  U1_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(9),
      DI => N0,
      S => U1_Mcount_q_cy_10_rt_614,
      O => U1_Mcount_q_cy(10)
    );
  U1_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(9),
      LI => U1_Mcount_q_cy_10_rt_614,
      O => Result(10)
    );
  U1_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(10),
      DI => N0,
      S => U1_Mcount_q_cy_11_rt_616,
      O => U1_Mcount_q_cy(11)
    );
  U1_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(10),
      LI => U1_Mcount_q_cy_11_rt_616,
      O => Result(11)
    );
  U1_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(11),
      DI => N0,
      S => U1_Mcount_q_cy_12_rt_618,
      O => U1_Mcount_q_cy(12)
    );
  U1_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(11),
      LI => U1_Mcount_q_cy_12_rt_618,
      O => Result(12)
    );
  U1_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(12),
      DI => N0,
      S => U1_Mcount_q_cy_13_rt_620,
      O => U1_Mcount_q_cy(13)
    );
  U1_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(12),
      LI => U1_Mcount_q_cy_13_rt_620,
      O => Result(13)
    );
  U1_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(13),
      DI => N0,
      S => U1_Mcount_q_cy_14_rt_622,
      O => U1_Mcount_q_cy(14)
    );
  U1_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(13),
      LI => U1_Mcount_q_cy_14_rt_622,
      O => Result(14)
    );
  U1_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(14),
      DI => N0,
      S => U1_Mcount_q_cy_15_rt_624,
      O => U1_Mcount_q_cy(15)
    );
  U1_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(14),
      LI => U1_Mcount_q_cy_15_rt_624,
      O => Result(15)
    );
  U1_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(15),
      DI => N0,
      S => U1_Mcount_q_cy_16_rt_626,
      O => U1_Mcount_q_cy(16)
    );
  U1_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(15),
      LI => U1_Mcount_q_cy_16_rt_626,
      O => Result(16)
    );
  U1_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(16),
      LI => U1_Mcount_q_xor_17_rt_646,
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
      addra(14) => N0,
      addra(13) => N0,
      addra(12) => N0,
      addra(11) => N0,
      addra(10) => N0,
      addra(9) => N0,
      addra(8) => N0,
      addra(7) => N0,
      addra(6) => N0,
      addra(5) => N0,
      addra(4) => N0,
      addra(3) => N0,
      addra(2) => N0,
      addra(1) => N0,
      addra(0) => N0
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
  tank2font10s : fonts
    port map (
      clk => U1_q(0),
      dout(7) => sig_tank210sM(0),
      dout(6) => sig_tank210sM(1),
      dout(5) => sig_tank210sM(2),
      dout(4) => sig_tank210sM(3),
      dout(3) => sig_tank210sM(4),
      dout(2) => sig_tank210sM(5),
      dout(1) => sig_tank210sM(6),
      dout(0) => sig_tank210sM(7),
      addr(11) => sig_tank2rom10s(11),
      addr(10) => sig_tank2rom10s(10),
      addr(9) => sig_tank2rom10s(9),
      addr(8) => sig_tank2rom10s(8),
      addr(7) => sig_tank2rom10s(7),
      addr(6) => sig_tank2rom10s(6),
      addr(5) => sig_tank2rom10s(5),
      addr(4) => sig_tank2rom10s(4),
      addr(3) => sig_tank1rom10s(3),
      addr(2) => sig_tank1rom10s(2),
      addr(1) => sig_tank1rom10s(1),
      addr(0) => sig_tank1rom10s(0)
    );
  tank2font1s : fonts
    port map (
      clk => U1_q(0),
      dout(7) => sig_tank21sM(0),
      dout(6) => sig_tank21sM(1),
      dout(5) => sig_tank21sM(2),
      dout(4) => sig_tank21sM(3),
      dout(3) => sig_tank21sM(4),
      dout(2) => sig_tank21sM(5),
      dout(1) => sig_tank21sM(6),
      dout(0) => sig_tank21sM(7),
      addr(11) => sig_tank2rom1s(11),
      addr(10) => sig_tank2rom1s(10),
      addr(9) => sig_tank2rom1s(9),
      addr(8) => sig_tank2rom1s(8),
      addr(7) => sig_tank2rom1s(7),
      addr(6) => sig_tank2rom1s(6),
      addr(5) => sig_tank2rom1s(5),
      addr(4) => sig_tank2rom1s(4),
      addr(3) => sig_tank1rom10s(3),
      addr(2) => sig_tank1rom10s(2),
      addr(1) => sig_tank1rom10s(1),
      addr(0) => sig_tank1rom10s(0)
    );
  U2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(8),
      LI => U2_Mcount_hcs_xor_9_rt_695,
      O => U2_Result_9_1
    );
  U2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      LI => U2_Mcount_hcs_cy_8_rt_683,
      O => U2_Result_8_1
    );
  U2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(7),
      DI => N0,
      S => U2_Mcount_hcs_cy_8_rt_683,
      O => U2_Mcount_hcs_cy(8)
    );
  U2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      LI => U2_Mcount_hcs_cy_7_rt_681,
      O => U2_Result_7_1
    );
  U2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(6),
      DI => N0,
      S => U2_Mcount_hcs_cy_7_rt_681,
      O => U2_Mcount_hcs_cy(7)
    );
  U2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      LI => U2_Mcount_hcs_cy_6_rt_679,
      O => U2_Result_6_1
    );
  U2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(5),
      DI => N0,
      S => U2_Mcount_hcs_cy_6_rt_679,
      O => U2_Mcount_hcs_cy(6)
    );
  U2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      LI => U2_Mcount_hcs_cy_5_rt_677,
      O => U2_Result_5_1
    );
  U2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(4),
      DI => N0,
      S => U2_Mcount_hcs_cy_5_rt_677,
      O => U2_Mcount_hcs_cy(5)
    );
  U2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      LI => U2_Mcount_hcs_cy_4_rt_675,
      O => U2_Result_4_1
    );
  U2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(3),
      DI => N0,
      S => U2_Mcount_hcs_cy_4_rt_675,
      O => U2_Mcount_hcs_cy(4)
    );
  U2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      LI => U2_Mcount_hcs_cy_3_rt_673,
      O => U2_Result_3_1
    );
  U2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(2),
      DI => N0,
      S => U2_Mcount_hcs_cy_3_rt_673,
      O => U2_Mcount_hcs_cy(3)
    );
  U2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      LI => U2_Mcount_hcs_cy_2_rt_671,
      O => U2_Result_2_1
    );
  U2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(1),
      DI => N0,
      S => U2_Mcount_hcs_cy_2_rt_671,
      O => U2_Mcount_hcs_cy(2)
    );
  U2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      LI => U2_Mcount_hcs_cy_1_rt_669,
      O => U2_Result_1_1
    );
  U2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_hcs_cy(0),
      DI => N0,
      S => U2_Mcount_hcs_cy_1_rt_669,
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
      LI => U2_Mcount_vcs_xor_9_rt_724,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_712,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_712,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_710,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_710,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_708,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_708,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_706,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_706,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_704,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_704,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_702,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_702,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_700,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_700,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_698,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_698,
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
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_9,
      Q => U2_hcs(9)
    );
  U2_hcs_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_8,
      Q => U2_hcs(8)
    );
  U2_hcs_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_7,
      Q => U2_hcs(7)
    );
  U2_hcs_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_6,
      Q => U2_hcs(6)
    );
  U2_hcs_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_5,
      Q => U2_hcs(5)
    );
  U2_hcs_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_4,
      Q => U2_hcs(4)
    );
  U2_hcs_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_3,
      Q => U2_hcs(3)
    );
  U2_hcs_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_2,
      Q => U2_hcs(2)
    );
  U2_hcs_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_1,
      Q => U2_hcs(1)
    );
  U2_hcs_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_hcs_eqn_0,
      Q => U2_hcs(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_vsenable_784,
      CLR => btn_3_IBUF_2310,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_vsenable : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_hcs_cmp_eq0000,
      Q => U2_vsenable_784
    );
  x7_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7_Mmux_digit_4_2655,
      I1 => x7_Mmux_digit_3_2653,
      S => x7_clkdiv(19),
      O => x7_digit(0)
    );
  x7_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7_Mmux_digit_41_2656,
      I1 => x7_Mmux_digit_31_2654,
      S => x7_clkdiv(19),
      O => x7_digit(1)
    );
  x7_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(18),
      LI => x7_Mcount_clkdiv_xor_19_rt_2652,
      O => x7_Result(19)
    );
  x7_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      LI => x7_Mcount_clkdiv_cy_18_rt_2632,
      O => x7_Result(18)
    );
  x7_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_18_rt_2632,
      O => x7_Mcount_clkdiv_cy(18)
    );
  x7_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      LI => x7_Mcount_clkdiv_cy_17_rt_2630,
      O => x7_Result(17)
    );
  x7_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_17_rt_2630,
      O => x7_Mcount_clkdiv_cy(17)
    );
  x7_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      LI => x7_Mcount_clkdiv_cy_16_rt_2628,
      O => x7_Result(16)
    );
  x7_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_16_rt_2628,
      O => x7_Mcount_clkdiv_cy(16)
    );
  x7_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      LI => x7_Mcount_clkdiv_cy_15_rt_2626,
      O => x7_Result(15)
    );
  x7_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_15_rt_2626,
      O => x7_Mcount_clkdiv_cy(15)
    );
  x7_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      LI => x7_Mcount_clkdiv_cy_14_rt_2624,
      O => x7_Result(14)
    );
  x7_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_14_rt_2624,
      O => x7_Mcount_clkdiv_cy(14)
    );
  x7_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      LI => x7_Mcount_clkdiv_cy_13_rt_2622,
      O => x7_Result(13)
    );
  x7_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_13_rt_2622,
      O => x7_Mcount_clkdiv_cy(13)
    );
  x7_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      LI => x7_Mcount_clkdiv_cy_12_rt_2620,
      O => x7_Result(12)
    );
  x7_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_12_rt_2620,
      O => x7_Mcount_clkdiv_cy(12)
    );
  x7_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      LI => x7_Mcount_clkdiv_cy_11_rt_2618,
      O => x7_Result(11)
    );
  x7_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_11_rt_2618,
      O => x7_Mcount_clkdiv_cy(11)
    );
  x7_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      LI => x7_Mcount_clkdiv_cy_10_rt_2616,
      O => x7_Result(10)
    );
  x7_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_10_rt_2616,
      O => x7_Mcount_clkdiv_cy(10)
    );
  x7_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      LI => x7_Mcount_clkdiv_cy_9_rt_2650,
      O => x7_Result(9)
    );
  x7_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_9_rt_2650,
      O => x7_Mcount_clkdiv_cy(9)
    );
  x7_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      LI => x7_Mcount_clkdiv_cy_8_rt_2648,
      O => x7_Result(8)
    );
  x7_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_8_rt_2648,
      O => x7_Mcount_clkdiv_cy(8)
    );
  x7_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      LI => x7_Mcount_clkdiv_cy_7_rt_2646,
      O => x7_Result(7)
    );
  x7_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_7_rt_2646,
      O => x7_Mcount_clkdiv_cy(7)
    );
  x7_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      LI => x7_Mcount_clkdiv_cy_6_rt_2644,
      O => x7_Result(6)
    );
  x7_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_6_rt_2644,
      O => x7_Mcount_clkdiv_cy(6)
    );
  x7_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      LI => x7_Mcount_clkdiv_cy_5_rt_2642,
      O => x7_Result(5)
    );
  x7_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_5_rt_2642,
      O => x7_Mcount_clkdiv_cy(5)
    );
  x7_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      LI => x7_Mcount_clkdiv_cy_4_rt_2640,
      O => x7_Result(4)
    );
  x7_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_4_rt_2640,
      O => x7_Mcount_clkdiv_cy(4)
    );
  x7_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      LI => x7_Mcount_clkdiv_cy_3_rt_2638,
      O => x7_Result(3)
    );
  x7_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_3_rt_2638,
      O => x7_Mcount_clkdiv_cy(3)
    );
  x7_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      LI => x7_Mcount_clkdiv_cy_2_rt_2636,
      O => x7_Result(2)
    );
  x7_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_2_rt_2636,
      O => x7_Mcount_clkdiv_cy(2)
    );
  x7_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      LI => x7_Mcount_clkdiv_cy_1_rt_2634,
      O => x7_Result(1)
    );
  x7_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7_Mcount_clkdiv_cy_1_rt_2634,
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
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(19),
      Q => x7_clkdiv(19)
    );
  x7_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(18),
      Q => x7_clkdiv(18)
    );
  x7_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(17),
      Q => x7_clkdiv(17)
    );
  x7_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(16),
      Q => x7_clkdiv(16)
    );
  x7_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(15),
      Q => x7_clkdiv(15)
    );
  x7_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(14),
      Q => x7_clkdiv(14)
    );
  x7_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(13),
      Q => x7_clkdiv(13)
    );
  x7_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(12),
      Q => x7_clkdiv(12)
    );
  x7_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(11),
      Q => x7_clkdiv(11)
    );
  x7_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(10),
      Q => x7_clkdiv(10)
    );
  x7_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(9),
      Q => x7_clkdiv(9)
    );
  x7_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(8),
      Q => x7_clkdiv(8)
    );
  x7_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(7),
      Q => x7_clkdiv(7)
    );
  x7_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(6),
      Q => x7_clkdiv(6)
    );
  x7_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(5),
      Q => x7_clkdiv(5)
    );
  x7_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(4),
      Q => x7_clkdiv(4)
    );
  x7_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(3),
      Q => x7_clkdiv(3)
    );
  x7_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(2),
      Q => x7_clkdiv(2)
    );
  x7_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(1),
      Q => x7_clkdiv(1)
    );
  x7_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => x7_Result(0),
      Q => x7_clkdiv(0)
    );
  screenstate_present_state_FSM_FFd2 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_2343,
      D => N1,
      PRE => btn_3_IBUF_2310,
      Q => screenstate_present_state_FSM_FFd2_2480
    );
  screenstate_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => screenstate_present_state_FSM_FFd1_In,
      Q => screenstate_present_state_FSM_FFd1_2478
    );
  bounce_delay3_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(7),
      Q => bounce_delay3(7)
    );
  bounce_delay3_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(6),
      Q => bounce_delay3(6)
    );
  bounce_delay3_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(5),
      Q => bounce_delay3(5)
    );
  bounce_delay3_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(4),
      Q => bounce_delay3(4)
    );
  bounce_delay3_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(3),
      Q => bounce_delay3(3)
    );
  bounce_delay3_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(2),
      Q => bounce_delay3(2)
    );
  bounce_delay3_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(1),
      Q => bounce_delay3(1)
    );
  bounce_delay3_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay2(0),
      Q => bounce_delay3(0)
    );
  bounce_delay2_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(7),
      Q => bounce_delay2(7)
    );
  bounce_delay2_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(6),
      Q => bounce_delay2(6)
    );
  bounce_delay2_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(5),
      Q => bounce_delay2(5)
    );
  bounce_delay2_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(4),
      Q => bounce_delay2(4)
    );
  bounce_delay2_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(3),
      Q => bounce_delay2(3)
    );
  bounce_delay2_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(2),
      Q => bounce_delay2(2)
    );
  bounce_delay2_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(1),
      Q => bounce_delay2(1)
    );
  bounce_delay2_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => bounce_delay1(0),
      Q => bounce_delay2(0)
    );
  bounce_delay1_7 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_left_reg_2423,
      Q => bounce_delay1(7)
    );
  bounce_delay1_6 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_down_reg_2421,
      Q => bounce_delay1(6)
    );
  bounce_delay1_5 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_up_reg_2466,
      Q => bounce_delay1(5)
    );
  bounce_delay1_4 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_right_reg_2427,
      Q => bounce_delay1(4)
    );
  bounce_delay1_3 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_sel_reg_2462,
      Q => bounce_delay1(3)
    );
  bounce_delay1_2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_start_reg_2464,
      Q => bounce_delay1(2)
    );
  bounce_delay1_1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_b_reg_2406,
      Q => bounce_delay1(1)
    );
  bounce_delay1_0 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_2310,
      D => nes_a_reg_2404,
      Q => bounce_delay1(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_2391,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_2379,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_2379,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_2377,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_2377,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_2375,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_2375,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_2373,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_2373,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_2371,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_2371,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_2369,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_2369,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_2367,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_2367,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_2365,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_2365,
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
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_2362,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_2360,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_2360,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_2358,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_2358,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_2356,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_2356,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_2354,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_2354,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_2352,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_2352,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_2350,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_2350,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_2348,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_2348,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_2346,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_2346,
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
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => U1_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_2310,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_2427
    );
  nes_b_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_b_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_b_reg_2406
    );
  nes_sel_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_sel_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_sel_reg_2462
    );
  nes_start_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_start_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_start_reg_2464
    );
  nes_a_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_2404
    );
  nes_up_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_2466
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_2310,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_2421
    );
  nes_left_reg : FDE
    port map (
      C => U1_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_2423
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
      S => U3_CM1_Madd_add0000_cy_1_rt_864,
      O => U3_CM1_Madd_add0000_cy(1)
    );
  U3_CM1_Madd_add0000_xor_1_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(0),
      LI => U3_CM1_Madd_add0000_cy_1_rt_864,
      O => U3_CM1_add0000(1)
    );
  U3_CM1_Madd_add0000_cy_2_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(1),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_2_rt_866,
      O => U3_CM1_Madd_add0000_cy(2)
    );
  U3_CM1_Madd_add0000_xor_2_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(1),
      LI => U3_CM1_Madd_add0000_cy_2_rt_866,
      O => U3_CM1_add0000(2)
    );
  U3_CM1_Madd_add0000_cy_3_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(2),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_3_rt_868,
      O => U3_CM1_Madd_add0000_cy(3)
    );
  U3_CM1_Madd_add0000_xor_3_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(2),
      LI => U3_CM1_Madd_add0000_cy_3_rt_868,
      O => U3_CM1_add0000(3)
    );
  U3_CM1_Madd_add0000_cy_4_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(3),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_4_rt_870,
      O => U3_CM1_Madd_add0000_cy(4)
    );
  U3_CM1_Madd_add0000_xor_4_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(3),
      LI => U3_CM1_Madd_add0000_cy_4_rt_870,
      O => U3_CM1_add0000(4)
    );
  U3_CM1_Madd_add0000_cy_5_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(4),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_5_rt_872,
      O => U3_CM1_Madd_add0000_cy(5)
    );
  U3_CM1_Madd_add0000_xor_5_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(4),
      LI => U3_CM1_Madd_add0000_cy_5_rt_872,
      O => U3_CM1_add0000(5)
    );
  U3_CM1_Madd_add0000_cy_6_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(5),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_6_rt_874,
      O => U3_CM1_Madd_add0000_cy(6)
    );
  U3_CM1_Madd_add0000_xor_6_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(5),
      LI => U3_CM1_Madd_add0000_cy_6_rt_874,
      O => U3_CM1_add0000(6)
    );
  U3_CM1_Madd_add0000_cy_7_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(6),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_7_rt_876,
      O => U3_CM1_Madd_add0000_cy(7)
    );
  U3_CM1_Madd_add0000_xor_7_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(6),
      LI => U3_CM1_Madd_add0000_cy_7_rt_876,
      O => U3_CM1_add0000(7)
    );
  U3_CM1_Madd_add0000_cy_8_Q : MUXCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(7),
      DI => N0,
      S => U3_CM1_Madd_add0000_cy_8_rt_878,
      O => U3_CM1_Madd_add0000_cy(8)
    );
  U3_CM1_Madd_add0000_xor_8_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(7),
      LI => U3_CM1_Madd_add0000_cy_8_rt_878,
      O => U3_CM1_add0000(8)
    );
  U3_CM1_Madd_add0000_xor_9_Q : XORCY
    port map (
      CI => U3_CM1_Madd_add0000_cy(8),
      LI => U3_CM1_Madd_add0000_xor_9_rt_880,
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
      S => U3_CM2_Msub_sub0000_cy_0_rt_943,
      O => U3_CM2_Msub_sub0000_cy(0)
    );
  U3_CM2_Msub_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_CM2_Msub_sub0000_cy_0_rt_943,
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
      LI => U3_spriteonM2_addsub0000_9_1_2184,
      O => U3_spriteonM2_addsub0001(9)
    );
  U3_Madd_spriteonM2_addsub0001_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(7),
      LI => U3_spriteonM2_addsub0000_8_2_2181,
      O => U3_spriteonM2_addsub0001(8)
    );
  U3_Madd_spriteonM2_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(7),
      DI => N0,
      S => U3_spriteonM2_addsub0000_8_2_2181,
      O => U3_Madd_spriteonM2_addsub0001_cy(8)
    );
  U3_Madd_spriteonM2_addsub0001_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(6),
      LI => U3_Madd_spriteonM2_addsub0000_xor_7_11_1084,
      O => U3_spriteonM2_addsub0001(7)
    );
  U3_Madd_spriteonM2_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_7_11_1084,
      O => U3_Madd_spriteonM2_addsub0001_cy(7)
    );
  U3_Madd_spriteonM2_addsub0001_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(5),
      LI => U3_Madd_spriteonM2_addsub0000_xor_6_11_1083,
      O => U3_spriteonM2_addsub0001(6)
    );
  U3_Madd_spriteonM2_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_6_11_1083,
      O => U3_Madd_spriteonM2_addsub0001_cy(6)
    );
  U3_Madd_spriteonM2_addsub0001_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(4),
      LI => U3_Madd_spriteonM2_addsub0000_xor_5_11_1082,
      O => U3_spriteonM2_addsub0001(5)
    );
  U3_Madd_spriteonM2_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0000_xor_5_11_1082,
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
      LI => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1090,
      O => U3_spriteonM2_addsub0001(3)
    );
  U3_Madd_spriteonM2_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1090,
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
      LI => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1087,
      O => U3_spriteonM2_addsub0001(1)
    );
  U3_Madd_spriteonM2_addsub0001_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0001_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1087,
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
      LI => U3_spriteonM1_addsub0000_9_1_2142,
      O => U3_spriteonM1_addsub0001(9)
    );
  U3_Madd_spriteonM1_addsub0001_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(7),
      LI => U3_spriteonM1_addsub0000_8_2_2139,
      O => U3_spriteonM1_addsub0001(8)
    );
  U3_Madd_spriteonM1_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(7),
      DI => N0,
      S => U3_spriteonM1_addsub0000_8_2_2139,
      O => U3_Madd_spriteonM1_addsub0001_cy(8)
    );
  U3_Madd_spriteonM1_addsub0001_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(6),
      LI => U3_Madd_spriteonM1_addsub0000_xor_7_11_1029,
      O => U3_spriteonM1_addsub0001(7)
    );
  U3_Madd_spriteonM1_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_7_11_1029,
      O => U3_Madd_spriteonM1_addsub0001_cy(7)
    );
  U3_Madd_spriteonM1_addsub0001_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(5),
      LI => U3_Madd_spriteonM1_addsub0000_xor_6_11_1028,
      O => U3_spriteonM1_addsub0001(6)
    );
  U3_Madd_spriteonM1_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_6_11_1028,
      O => U3_Madd_spriteonM1_addsub0001_cy(6)
    );
  U3_Madd_spriteonM1_addsub0001_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(4),
      LI => U3_Madd_spriteonM1_addsub0000_xor_5_11_1027,
      O => U3_spriteonM1_addsub0001(5)
    );
  U3_Madd_spriteonM1_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0000_xor_5_11_1027,
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
      LI => U3_Madd_spriteonM1_addsub0001_cy_3_rt_1035,
      O => U3_spriteonM1_addsub0001(3)
    );
  U3_Madd_spriteonM1_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0001_cy_3_rt_1035,
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
      LI => U3_Madd_spriteonM1_addsub0001_cy_1_rt_1032,
      O => U3_spriteonM1_addsub0001(1)
    );
  U3_Madd_spriteonM1_addsub0001_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0001_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0001_cy_1_rt_1032,
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
  U3_Mmux_tank21sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank21sM(6),
      I2 => sig_tank21sM(7),
      O => U3_Mmux_tank21sM_mux0000_4_1732
    );
  U3_Mmux_tank21sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank21sM(4),
      I2 => sig_tank21sM(5),
      O => U3_Mmux_tank21sM_mux0000_5_1734
    );
  U3_Mmux_tank21sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank21sM_mux0000_5_1734,
      I1 => U3_Mmux_tank21sM_mux0000_4_1732,
      S => U2_hcs(1),
      O => U3_Mmux_tank21sM_mux0000_3_f5_1731
    );
  U3_Mmux_tank21sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank21sM(2),
      I2 => sig_tank21sM(3),
      O => U3_Mmux_tank21sM_mux0000_51_1735
    );
  U3_Mmux_tank21sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank21sM(0),
      I2 => sig_tank21sM(1),
      O => U3_Mmux_tank21sM_mux0000_6_1736
    );
  U3_Mmux_tank21sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank21sM_mux0000_6_1736,
      I1 => U3_Mmux_tank21sM_mux0000_51_1735,
      S => U2_hcs(1),
      O => U3_Mmux_tank21sM_mux0000_4_f5_1733
    );
  U3_Mmux_tank21sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank21sM_mux0000_4_f5_1733,
      I1 => U3_Mmux_tank21sM_mux0000_3_f5_1731,
      S => U2_hcs(2),
      O => U3_tank21sM_mux0000
    );
  U3_Mmux_tank210sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank210sM(6),
      I2 => sig_tank210sM(7),
      O => U3_Mmux_tank210sM_mux0000_4_1726
    );
  U3_Mmux_tank210sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank210sM(4),
      I2 => sig_tank210sM(5),
      O => U3_Mmux_tank210sM_mux0000_5_1728
    );
  U3_Mmux_tank210sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank210sM_mux0000_5_1728,
      I1 => U3_Mmux_tank210sM_mux0000_4_1726,
      S => U2_hcs(1),
      O => U3_Mmux_tank210sM_mux0000_3_f5_1725
    );
  U3_Mmux_tank210sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank210sM(2),
      I2 => sig_tank210sM(3),
      O => U3_Mmux_tank210sM_mux0000_51_1729
    );
  U3_Mmux_tank210sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank210sM(0),
      I2 => sig_tank210sM(1),
      O => U3_Mmux_tank210sM_mux0000_6_1730
    );
  U3_Mmux_tank210sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank210sM_mux0000_6_1730,
      I1 => U3_Mmux_tank210sM_mux0000_51_1729,
      S => U2_hcs(1),
      O => U3_Mmux_tank210sM_mux0000_4_f5_1727
    );
  U3_Mmux_tank210sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank210sM_mux0000_4_f5_1727,
      I1 => U3_Mmux_tank210sM_mux0000_3_f5_1725,
      S => U2_hcs(2),
      O => U3_tank210sM_mux0000
    );
  U3_Mmux_M1a_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_28_Q,
      I2 => M1a_29_Q,
      O => U3_Mmux_M1a_mux0000_7_1633
    );
  U3_Mmux_M1a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_1633,
      I1 => U3_Mmux_M1a_mux0000_6_1628,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_1625
    );
  U3_Mmux_M1a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_26_Q,
      I2 => M1a_27_Q,
      O => U3_Mmux_M1a_mux0000_71_1634
    );
  U3_Mmux_M1a_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_24_Q,
      I2 => M1a_25_Q,
      O => U3_Mmux_M1a_mux0000_8_1640
    );
  U3_Mmux_M1a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_1640,
      I1 => U3_Mmux_M1a_mux0000_71_1634,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_1629
    );
  U3_Mmux_M1a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f5_1629,
      I1 => U3_Mmux_M1a_mux0000_5_f5_1625,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_4_f6_1623
    );
  U3_Mmux_M1a_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_22_Q,
      I2 => M1a_23_Q,
      O => U3_Mmux_M1a_mux0000_72_1635
    );
  U3_Mmux_M1a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_20_Q_96,
      I2 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_1641
    );
  U3_Mmux_M1a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_81_1641,
      I1 => U3_Mmux_M1a_mux0000_72_1635,
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
      O => U3_Mmux_M1a_mux0000_82_1642
    );
  U3_Mmux_M1a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_9_1647,
      I1 => U3_Mmux_M1a_mux0000_82_1642,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_7_f5_1637
    );
  U3_Mmux_M1a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_7_f5_1637,
      I1 => U3_Mmux_M1a_mux0000_6_f51,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_5_f6_1626
    );
  U3_Mmux_M1a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_5_f6_1626,
      I1 => U3_Mmux_M1a_mux0000_4_f6_1623,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1a_mux0000_3_f7_1622
    );
  U3_Mmux_M1a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_83_1643,
      I1 => U3_Mmux_M1a_mux0000_73_1636,
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
      O => U3_Mmux_M1a_mux0000_84_1644
    );
  U3_Mmux_M1a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_8_Q,
      I2 => M1a_9_Q,
      O => U3_Mmux_M1a_mux0000_91_1648
    );
  U3_Mmux_M1a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_91_1648,
      I1 => U3_Mmux_M1a_mux0000_84_1644,
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
  U3_Mmux_M1a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_92_1649,
      I1 => U3_Mmux_M1a_mux0000_85_1645,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1a_2_Q_120,
      I2 => M1a_3_Q,
      O => U3_Mmux_M1a_mux0000_93_1650
    );
  U3_Mmux_M1a_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => N0,
      I2 => M1a_1_Q_95,
      O => U3_Mmux_M1a_mux0000_10_1621
    );
  U3_Mmux_M1a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1a_mux0000_10_1621,
      I1 => U3_Mmux_M1a_mux0000_93_1650,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_1646
    );
  U3_Mmux_M1a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1a_mux0000_8_f5_1646,
      I1 => U3_Mmux_M1a_mux0000_7_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1a_mux0000_6_f6_1632
    );
  U3_Mmux_M1a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1a_mux0000_6_f6_1632,
      I1 => U3_Mmux_M1a_mux0000_5_f61,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1a_mux0000_4_f7_1624
    );
  U3_Mmux_M1a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1a_mux0000_4_f7_1624,
      I1 => U3_Mmux_M1a_mux0000_3_f7_1622,
      S => U3_rom_pix1(4),
      O => U3_M1a_mux0000
    );
  U3_Mmux_M2a_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_1693,
      I1 => U3_Mmux_M2a_mux0000_6_1688,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_1685
    );
  U3_Mmux_M2a_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_26_Q,
      I2 => M2a_24_Q,
      O => U3_Mmux_M2a_mux0000_71_1694
    );
  U3_Mmux_M2a_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_1700,
      I1 => U3_Mmux_M2a_mux0000_71_1694,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_1689
    );
  U3_Mmux_M2a_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f5_1689,
      I1 => U3_Mmux_M2a_mux0000_5_f5_1685,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_4_f6_1683
    );
  U3_Mmux_M2a_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_20_Q,
      I2 => M2a_21_Q,
      O => U3_Mmux_M2a_mux0000_81_1701
    );
  U3_Mmux_M2a_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_81_1701,
      I1 => U3_Mmux_M2a_mux0000_72_1695,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_16_Q,
      I2 => M2a_14_Q_221,
      O => U3_Mmux_M2a_mux0000_9_1709
    );
  U3_Mmux_M2a_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_9_1709,
      I1 => U3_Mmux_M2a_mux0000_82_1702,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_7_f5_1697
    );
  U3_Mmux_M2a_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_7_f5_1697,
      I1 => U3_Mmux_M2a_mux0000_6_f51,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_5_f6_1686
    );
  U3_Mmux_M2a_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_5_f6_1686,
      I1 => U3_Mmux_M2a_mux0000_4_f6_1683,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2a_mux0000_3_f7_1682
    );
  U3_Mmux_M2a_mux0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_14_Q_221,
      I2 => M2a_15_Q,
      O => U3_Mmux_M2a_mux0000_73_1696
    );
  U3_Mmux_M2a_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_12_Q,
      I2 => M2a_13_Q,
      O => U3_Mmux_M2a_mux0000_83_1704
    );
  U3_Mmux_M2a_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_83_1704,
      I1 => U3_Mmux_M2a_mux0000_73_1696,
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
      I2 => M2a_11_Q,
      O => U3_Mmux_M2a_mux0000_84_1705
    );
  U3_Mmux_M2a_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_8_Q,
      I2 => M2a_9_Q,
      O => U3_Mmux_M2a_mux0000_91_1710
    );
  U3_Mmux_M2a_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_91_1710,
      I1 => U3_Mmux_M2a_mux0000_84_1705,
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
      O => U3_Mmux_M2a_mux0000_85_1706
    );
  U3_Mmux_M2a_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_4_Q,
      I2 => M2a_5_Q,
      O => U3_Mmux_M2a_mux0000_92_1711
    );
  U3_Mmux_M2a_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_92_1711,
      I1 => U3_Mmux_M2a_mux0000_85_1706,
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
      O => U3_Mmux_M2a_mux0000_93_1712
    );
  U3_Mmux_M2a_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => N0,
      I2 => M2a_1_Q_224,
      O => U3_Mmux_M2a_mux0000_10_1681
    );
  U3_Mmux_M2a_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_10_1681,
      I1 => U3_Mmux_M2a_mux0000_93_1712,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_1708
    );
  U3_Mmux_M2a_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2a_mux0000_8_f5_1708,
      I1 => U3_Mmux_M2a_mux0000_7_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2a_mux0000_6_f6_1692
    );
  U3_Mmux_M2a_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2a_mux0000_6_f6_1692,
      I1 => U3_Mmux_M2a_mux0000_5_f61,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2a_mux0000_4_f7_1684
    );
  U3_Mmux_M2a_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2a_mux0000_4_f7_1684,
      I1 => U3_Mmux_M2a_mux0000_3_f7_1682,
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
      O => U3_Mmux_tank110sM_mux0000_4_1714
    );
  U3_Mmux_tank110sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(4),
      I2 => sig_tank110sM(5),
      O => U3_Mmux_tank110sM_mux0000_5_1716
    );
  U3_Mmux_tank110sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_5_1716,
      I1 => U3_Mmux_tank110sM_mux0000_4_1714,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_3_f5_1713
    );
  U3_Mmux_tank110sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(2),
      I2 => sig_tank110sM(3),
      O => U3_Mmux_tank110sM_mux0000_51_1717
    );
  U3_Mmux_tank110sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank110sM(0),
      I2 => sig_tank110sM(1),
      O => U3_Mmux_tank110sM_mux0000_6_1718
    );
  U3_Mmux_tank110sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_6_1718,
      I1 => U3_Mmux_tank110sM_mux0000_51_1717,
      S => U2_hcs(1),
      O => U3_Mmux_tank110sM_mux0000_4_f5_1715
    );
  U3_Mmux_tank110sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank110sM_mux0000_4_f5_1715,
      I1 => U3_Mmux_tank110sM_mux0000_3_f5_1713,
      S => U2_hcs(2),
      O => U3_tank110sM_mux0000
    );
  U3_Mmux_tank11sM_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(6),
      I2 => sig_tank11sM(7),
      O => U3_Mmux_tank11sM_mux0000_4_1720
    );
  U3_Mmux_tank11sM_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(4),
      I2 => sig_tank11sM(5),
      O => U3_Mmux_tank11sM_mux0000_5_1722
    );
  U3_Mmux_tank11sM_mux0000_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_5_1722,
      I1 => U3_Mmux_tank11sM_mux0000_4_1720,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_3_f5_1719
    );
  U3_Mmux_tank11sM_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(2),
      I2 => sig_tank11sM(3),
      O => U3_Mmux_tank11sM_mux0000_51_1723
    );
  U3_Mmux_tank11sM_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => sig_tank11sM(0),
      I2 => sig_tank11sM(1),
      O => U3_Mmux_tank11sM_mux0000_6_1724
    );
  U3_Mmux_tank11sM_mux0000_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_6_1724,
      I1 => U3_Mmux_tank11sM_mux0000_51_1723,
      S => U2_hcs(1),
      O => U3_Mmux_tank11sM_mux0000_4_f5_1721
    );
  U3_Mmux_tank11sM_mux0000_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_tank11sM_mux0000_4_f5_1721,
      I1 => U3_Mmux_tank11sM_mux0000_3_f5_1719,
      S => U2_hcs(2),
      O => U3_tank11sM_mux0000
    );
  U3_Mmux_M1_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_30_Q,
      I2 => M1_31_Q,
      O => U3_Mmux_M1_mux0000_6_1598
    );
  U3_Mmux_M1_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_28_Q,
      I2 => M1_29_Q,
      O => U3_Mmux_M1_mux0000_7_1603
    );
  U3_Mmux_M1_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_7_1603,
      I1 => U3_Mmux_M1_mux0000_6_1598,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_1595
    );
  U3_Mmux_M1_mux0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_26_Q,
      I2 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_1604
    );
  U3_Mmux_M1_mux0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_24_Q,
      I2 => M1_25_Q,
      O => U3_Mmux_M1_mux0000_8_1610
    );
  U3_Mmux_M1_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_8_1610,
      I1 => U3_Mmux_M1_mux0000_71_1604,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_1599
    );
  U3_Mmux_M1_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f5_1599,
      I1 => U3_Mmux_M1_mux0000_5_f5_1595,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_4_f6_1593
    );
  U3_Mmux_M1_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_22_Q,
      I2 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_1605
    );
  U3_Mmux_M1_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_20_Q_12,
      I2 => M1_21_Q,
      O => U3_Mmux_M1_mux0000_81_1611
    );
  U3_Mmux_M1_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_81_1611,
      I1 => U3_Mmux_M1_mux0000_72_1605,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_18_Q_9,
      I2 => M1_19_Q,
      O => U3_Mmux_M1_mux0000_82_1612
    );
  U3_Mmux_M1_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_9_1617,
      I1 => U3_Mmux_M1_mux0000_82_1612,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_7_f5_1607
    );
  U3_Mmux_M1_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_7_f5_1607,
      I1 => U3_Mmux_M1_mux0000_6_f51,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_5_f6_1596
    );
  U3_Mmux_M1_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_5_f6_1596,
      I1 => U3_Mmux_M1_mux0000_4_f6_1593,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1_mux0000_3_f7_1592
    );
  U3_Mmux_M1_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_83_1613,
      I1 => U3_Mmux_M1_mux0000_73_1606,
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
      I2 => M1_11_Q_7,
      O => U3_Mmux_M1_mux0000_84_1614
    );
  U3_Mmux_M1_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_8_Q_84,
      I2 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_1618
    );
  U3_Mmux_M1_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_91_1618,
      I1 => U3_Mmux_M1_mux0000_84_1614,
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
  U3_Mmux_M1_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_4_Q_79,
      I2 => M1_5_Q_83,
      O => U3_Mmux_M1_mux0000_92_1619
    );
  U3_Mmux_M1_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_92_1619,
      I1 => U3_Mmux_M1_mux0000_85_1615,
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
      O => U3_Mmux_M1_mux0000_93_1620
    );
  U3_Mmux_M1_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => M1_0_Q,
      I2 => M1_1_Q,
      O => U3_Mmux_M1_mux0000_10_1591
    );
  U3_Mmux_M1_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M1_mux0000_10_1591,
      I1 => U3_Mmux_M1_mux0000_93_1620,
      S => U3_rom_pix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_1616
    );
  U3_Mmux_M1_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M1_mux0000_8_f5_1616,
      I1 => U3_Mmux_M1_mux0000_7_f52,
      S => U3_rom_pix1(2),
      O => U3_Mmux_M1_mux0000_6_f6_1602
    );
  U3_Mmux_M1_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M1_mux0000_6_f6_1602,
      I1 => U3_Mmux_M1_mux0000_5_f61,
      S => U3_rom_pix1(3),
      O => U3_Mmux_M1_mux0000_4_f7_1594
    );
  U3_Mmux_M1_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M1_mux0000_4_f7_1594,
      I1 => U3_Mmux_M1_mux0000_3_f7_1592,
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
      O => U3_Mmux_M2_mux0000_6_1658
    );
  U3_Mmux_M2_mux0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_28_Q_166,
      I2 => M2_29_Q,
      O => U3_Mmux_M2_mux0000_7_1663
    );
  U3_Mmux_M2_mux0000_5_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_7_1663,
      I1 => U3_Mmux_M2_mux0000_6_1658,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_1655
    );
  U3_Mmux_M2_mux0000_6_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_8_1670,
      I1 => U3_Mmux_M2_mux0000_71_1664,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_1659
    );
  U3_Mmux_M2_mux0000_4_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f5_1659,
      I1 => U3_Mmux_M2_mux0000_5_f5_1655,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_4_f6_1653
    );
  U3_Mmux_M2_mux0000_72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_22_Q,
      I2 => M2_23_Q_165,
      O => U3_Mmux_M2_mux0000_72_1665
    );
  U3_Mmux_M2_mux0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_20_Q,
      I2 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_1671
    );
  U3_Mmux_M2_mux0000_6_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_81_1671,
      I1 => U3_Mmux_M2_mux0000_72_1665,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_7_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_9_1677,
      I1 => U3_Mmux_M2_mux0000_82_1672,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_7_f5_1667
    );
  U3_Mmux_M2_mux0000_5_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_7_f5_1667,
      I1 => U3_Mmux_M2_mux0000_6_f51,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_5_f6_1656
    );
  U3_Mmux_M2_mux0000_3_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_5_f6_1656,
      I1 => U3_Mmux_M2_mux0000_4_f6_1653,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2_mux0000_3_f7_1652
    );
  U3_Mmux_M2_mux0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_12_Q,
      I2 => M2_13_Q,
      O => U3_Mmux_M2_mux0000_83_1673
    );
  U3_Mmux_M2_mux0000_6_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_83_1673,
      I1 => U3_Mmux_M2_mux0000_73_1666,
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
      I2 => M2_11_Q_147,
      O => U3_Mmux_M2_mux0000_84_1674
    );
  U3_Mmux_M2_mux0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_8_Q,
      I2 => M2_9_Q,
      O => U3_Mmux_M2_mux0000_91_1678
    );
  U3_Mmux_M2_mux0000_7_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_91_1678,
      I1 => U3_Mmux_M2_mux0000_84_1674,
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
      O => U3_Mmux_M2_mux0000_85_1675
    );
  U3_Mmux_M2_mux0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_4_Q,
      I2 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_1679
    );
  U3_Mmux_M2_mux0000_7_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_92_1679,
      I1 => U3_Mmux_M2_mux0000_85_1675,
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
      O => U3_Mmux_M2_mux0000_93_1680
    );
  U3_Mmux_M2_mux0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2_0_Q,
      I2 => M2_1_Q,
      O => U3_Mmux_M2_mux0000_10_1651
    );
  U3_Mmux_M2_mux0000_8_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2_mux0000_10_1651,
      I1 => U3_Mmux_M2_mux0000_93_1680,
      S => U3_rom_pix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_1676
    );
  U3_Mmux_M2_mux0000_6_f6 : MUXF6
    port map (
      I0 => U3_Mmux_M2_mux0000_8_f5_1676,
      I1 => U3_Mmux_M2_mux0000_7_f52,
      S => U3_rom_pix2(2),
      O => U3_Mmux_M2_mux0000_6_f6_1662
    );
  U3_Mmux_M2_mux0000_4_f7 : MUXF7
    port map (
      I0 => U3_Mmux_M2_mux0000_6_f6_1662,
      I1 => U3_Mmux_M2_mux0000_5_f61,
      S => U3_rom_pix2(3),
      O => U3_Mmux_M2_mux0000_4_f7_1654
    );
  U3_Mmux_M2_mux0000_2_f8 : MUXF8
    port map (
      I0 => U3_Mmux_M2_mux0000_4_f7_1654,
      I1 => U3_Mmux_M2_mux0000_3_f7_1652,
      S => U3_rom_pix2(4),
      O => U3_M2_mux0000
    );
  U3_Madd_spriteonM2_addsub0003_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(8),
      LI => U3_Madd_spriteonM2_addsub0003_xor_9_rt_1135,
      O => U3_spriteonM2_addsub0003(9)
    );
  U3_Madd_spriteonM2_addsub0003_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(7),
      LI => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1132,
      O => U3_spriteonM2_addsub0003(8)
    );
  U3_Madd_spriteonM2_addsub0003_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1132,
      O => U3_Madd_spriteonM2_addsub0003_cy(8)
    );
  U3_Madd_spriteonM2_addsub0003_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(6),
      LI => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1130,
      O => U3_spriteonM2_addsub0003(7)
    );
  U3_Madd_spriteonM2_addsub0003_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1130,
      O => U3_Madd_spriteonM2_addsub0003_cy(7)
    );
  U3_Madd_spriteonM2_addsub0003_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(5),
      LI => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1128,
      O => U3_spriteonM2_addsub0003(6)
    );
  U3_Madd_spriteonM2_addsub0003_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1128,
      O => U3_Madd_spriteonM2_addsub0003_cy(6)
    );
  U3_Madd_spriteonM2_addsub0003_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(4),
      LI => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1126,
      O => U3_spriteonM2_addsub0003(5)
    );
  U3_Madd_spriteonM2_addsub0003_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1126,
      O => U3_Madd_spriteonM2_addsub0003_cy(5)
    );
  U3_Madd_spriteonM2_addsub0003_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(3),
      LI => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1124,
      O => U3_spriteonM2_addsub0003(4)
    );
  U3_Madd_spriteonM2_addsub0003_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1124,
      O => U3_Madd_spriteonM2_addsub0003_cy(4)
    );
  U3_Madd_spriteonM2_addsub0003_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(2),
      LI => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1122,
      O => U3_spriteonM2_addsub0003(3)
    );
  U3_Madd_spriteonM2_addsub0003_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1122,
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
      LI => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1119,
      O => U3_spriteonM2_addsub0003(1)
    );
  U3_Madd_spriteonM2_addsub0003_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0003_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1119,
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
      LI => U3_Madd_spriteonM1_addsub0003_xor_9_rt_1080,
      O => U3_spriteonM1_addsub0003(9)
    );
  U3_Madd_spriteonM1_addsub0003_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(7),
      LI => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1077,
      O => U3_spriteonM1_addsub0003(8)
    );
  U3_Madd_spriteonM1_addsub0003_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1077,
      O => U3_Madd_spriteonM1_addsub0003_cy(8)
    );
  U3_Madd_spriteonM1_addsub0003_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(6),
      LI => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1075,
      O => U3_spriteonM1_addsub0003(7)
    );
  U3_Madd_spriteonM1_addsub0003_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1075,
      O => U3_Madd_spriteonM1_addsub0003_cy(7)
    );
  U3_Madd_spriteonM1_addsub0003_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(5),
      LI => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1073,
      O => U3_spriteonM1_addsub0003(6)
    );
  U3_Madd_spriteonM1_addsub0003_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1073,
      O => U3_Madd_spriteonM1_addsub0003_cy(6)
    );
  U3_Madd_spriteonM1_addsub0003_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(4),
      LI => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1071,
      O => U3_spriteonM1_addsub0003(5)
    );
  U3_Madd_spriteonM1_addsub0003_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1071,
      O => U3_Madd_spriteonM1_addsub0003_cy(5)
    );
  U3_Madd_spriteonM1_addsub0003_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(3),
      LI => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1069,
      O => U3_spriteonM1_addsub0003(4)
    );
  U3_Madd_spriteonM1_addsub0003_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(3),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1069,
      O => U3_Madd_spriteonM1_addsub0003_cy(4)
    );
  U3_Madd_spriteonM1_addsub0003_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(2),
      LI => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1067,
      O => U3_spriteonM1_addsub0003(3)
    );
  U3_Madd_spriteonM1_addsub0003_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(2),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1067,
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
      LI => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1064,
      O => U3_spriteonM1_addsub0003(1)
    );
  U3_Madd_spriteonM1_addsub0003_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0003_cy(0),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1064,
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
  U3_Madd_tank2rom1s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_112_2238,
      O => sig_tank2rom1s(11)
    );
  U3_Madd_tank2rom1s_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(9),
      LI => U3_Madd_tank2rom1s_lut(10),
      O => sig_tank2rom1s(10)
    );
  U3_Madd_tank2rom1s_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(9),
      DI => U3_tank1rom10s_sub0001(10),
      S => U3_Madd_tank2rom1s_lut(10),
      O => U3_Madd_tank2rom1s_cy(10)
    );
  U3_Madd_tank2rom1s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(8),
      LI => U3_Madd_tank2rom1s_lut(9),
      O => sig_tank2rom1s(9)
    );
  U3_Madd_tank2rom1s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(8),
      DI => U3_tank1rom10s_sub0001(9),
      S => U3_Madd_tank2rom1s_lut(9),
      O => U3_Madd_tank2rom1s_cy(9)
    );
  U3_Madd_tank2rom1s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(7),
      LI => U3_Madd_tank2rom1s_lut(8),
      O => sig_tank2rom1s(8)
    );
  U3_Madd_tank2rom1s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(7),
      DI => U3_tank1rom10s_sub0001(8),
      S => U3_Madd_tank2rom1s_lut(8),
      O => U3_Madd_tank2rom1s_cy(8)
    );
  U3_Madd_tank2rom1s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(6),
      LI => U3_Madd_tank2rom1s_lut(7),
      O => sig_tank2rom1s(7)
    );
  U3_Madd_tank2rom1s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(6),
      DI => U3_tank1rom10s_sub0001(7),
      S => U3_Madd_tank2rom1s_lut(7),
      O => U3_Madd_tank2rom1s_cy(7)
    );
  U3_Madd_tank2rom1s_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(5),
      LI => U3_Madd_tank2rom1s_lut(6),
      O => sig_tank2rom1s(6)
    );
  U3_Madd_tank2rom1s_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(5),
      DI => U3_tank1rom10s_sub0001(6),
      S => U3_Madd_tank2rom1s_lut(6),
      O => U3_Madd_tank2rom1s_cy(6)
    );
  U3_Madd_tank2rom1s_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(4),
      LI => U3_Madd_tank2rom1s_lut(5),
      O => sig_tank2rom1s(5)
    );
  U3_Madd_tank2rom1s_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom1s_cy(4),
      DI => U3_tank1rom10s_sub0001(5),
      S => U3_Madd_tank2rom1s_lut(5),
      O => U3_Madd_tank2rom1s_cy(5)
    );
  U3_Madd_tank2rom1s_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_tank2rom1s_lut(4),
      O => sig_tank2rom1s(4)
    );
  U3_Madd_tank2rom1s_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_tank1rom10s_sub0001(4),
      S => U3_Madd_tank2rom1s_lut(4),
      O => U3_Madd_tank2rom1s_cy(4)
    );
  U3_Madd_tank1rom1s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom1s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_113_2239,
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
      DI => U3_tank1rom10s_sub0001(10),
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
      DI => U3_tank1rom10s_sub0001(7),
      S => U3_Madd_tank1rom1s_lut(7),
      O => U3_Madd_tank1rom1s_cy(7)
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
      DI => U3_tank1rom10s_sub0001(6),
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
      DI => U3_tank1rom10s_sub0001(5),
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
      DI => U3_tank1rom10s_sub0001(4),
      S => U3_Madd_tank1rom1s_lut(4),
      O => U3_Madd_tank1rom1s_cy(4)
    );
  U3_Madd_tank1rom1s_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(4),
      I1 => U3_font2_0_Q,
      O => U3_Madd_tank1rom1s_lut(4)
    );
  U3_Madd_tank1rom10s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_114_2240,
      O => sig_tank1rom10s(11)
    );
  U3_Madd_tank1rom10s_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(9),
      LI => U3_tank1rom10s_sub0001_10_11_2236,
      O => sig_tank1rom10s(10)
    );
  U3_Madd_tank1rom10s_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(9),
      DI => N0,
      S => U3_tank1rom10s_sub0001_10_11_2236,
      O => U3_Madd_tank1rom10s_cy(10)
    );
  U3_Madd_tank1rom10s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      LI => U3_Madd_tank1rom10s_lut_9_Q_1148,
      O => sig_tank1rom10s(9)
    );
  U3_Madd_tank1rom10s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(8),
      DI => N1,
      S => U3_Madd_tank1rom10s_lut_9_Q_1148,
      O => U3_Madd_tank1rom10s_cy(9)
    );
  U3_Madd_tank1rom10s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      LI => U3_Madd_tank1rom10s_lut_8_Q_1147,
      O => sig_tank1rom10s(8)
    );
  U3_Madd_tank1rom10s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(7),
      DI => N1,
      S => U3_Madd_tank1rom10s_lut_8_Q_1147,
      O => U3_Madd_tank1rom10s_cy(8)
    );
  U3_Madd_tank1rom10s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      LI => U3_tank1rom10s_sub0001_7_1_2247,
      O => sig_tank1rom10s(7)
    );
  U3_Madd_tank1rom10s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(6),
      DI => N0,
      S => U3_tank1rom10s_sub0001_7_1_2247,
      O => U3_Madd_tank1rom10s_cy(7)
    );
  U3_Madd_tank1rom10s_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(5),
      LI => U3_Madd_tank1rom10s_lut_6_Q_1146,
      O => sig_tank1rom10s(6)
    );
  U3_Madd_tank1rom10s_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(5),
      DI => U3_tank1rom10s_sub0001(6),
      S => U3_Madd_tank1rom10s_lut_6_Q_1146,
      O => U3_Madd_tank1rom10s_cy(6)
    );
  U3_Madd_tank1rom10s_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(4),
      LI => U3_Madd_tank1rom10s_lut_5_Q_1145,
      O => sig_tank1rom10s(5)
    );
  U3_Madd_tank1rom10s_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_tank1rom10s_cy(4),
      DI => U3_tank1rom10s_sub0001(5),
      S => U3_Madd_tank1rom10s_lut_5_Q_1145,
      O => U3_Madd_tank1rom10s_cy(5)
    );
  U3_Madd_tank1rom10s_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_tank1rom10s_lut_4_Q_1144,
      O => sig_tank1rom10s(4)
    );
  U3_Madd_tank1rom10s_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_tank1rom10s_sub0001(4),
      S => U3_Madd_tank1rom10s_lut_4_Q_1144,
      O => U3_Madd_tank1rom10s_cy(4)
    );
  U3_Madd_tank1rom10s_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(4),
      I1 => U3_font1(0),
      O => U3_Madd_tank1rom10s_lut_4_Q_1144
    );
  U3_Madd_tank2rom10s_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(10),
      LI => U3_tank1rom10s_sub0001_10_115_2241,
      O => sig_tank2rom10s(11)
    );
  U3_Madd_tank2rom10s_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(9),
      LI => U3_tank1rom10s_sub0001_10_111_2237,
      O => sig_tank2rom10s(10)
    );
  U3_Madd_tank2rom10s_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(9),
      DI => N0,
      S => U3_tank1rom10s_sub0001_10_111_2237,
      O => U3_Madd_tank2rom10s_cy(10)
    );
  U3_Madd_tank2rom10s_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(8),
      LI => U3_Madd_tank2rom10s_lut_9_Q_1175,
      O => sig_tank2rom10s(9)
    );
  U3_Madd_tank2rom10s_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(8),
      DI => N1,
      S => U3_Madd_tank2rom10s_lut_9_Q_1175,
      O => U3_Madd_tank2rom10s_cy(9)
    );
  U3_Madd_tank2rom10s_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(7),
      LI => U3_Madd_tank2rom10s_lut_8_Q_1174,
      O => sig_tank2rom10s(8)
    );
  U3_Madd_tank2rom10s_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(7),
      DI => N1,
      S => U3_Madd_tank2rom10s_lut_8_Q_1174,
      O => U3_Madd_tank2rom10s_cy(8)
    );
  U3_Madd_tank2rom10s_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(6),
      LI => U3_tank1rom10s_sub0001_7_11_2248,
      O => sig_tank2rom10s(7)
    );
  U3_Madd_tank2rom10s_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(6),
      DI => N0,
      S => U3_tank1rom10s_sub0001_7_11_2248,
      O => U3_Madd_tank2rom10s_cy(7)
    );
  U3_Madd_tank2rom10s_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(5),
      LI => U3_Madd_tank2rom10s_lut_6_Q_1173,
      O => sig_tank2rom10s(6)
    );
  U3_Madd_tank2rom10s_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(5),
      DI => U3_tank1rom10s_sub0001(6),
      S => U3_Madd_tank2rom10s_lut_6_Q_1173,
      O => U3_Madd_tank2rom10s_cy(6)
    );
  U3_Madd_tank2rom10s_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(4),
      LI => U3_Madd_tank2rom10s_lut_5_Q_1172,
      O => sig_tank2rom10s(5)
    );
  U3_Madd_tank2rom10s_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_tank2rom10s_cy(4),
      DI => U3_tank1rom10s_sub0001(5),
      S => U3_Madd_tank2rom10s_lut_5_Q_1172,
      O => U3_Madd_tank2rom10s_cy(5)
    );
  U3_Madd_tank2rom10s_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_tank2rom10s_lut_4_Q_1171,
      O => sig_tank2rom10s(4)
    );
  U3_Madd_tank2rom10s_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_tank1rom10s_sub0001(4),
      S => U3_Madd_tank2rom10s_lut_4_Q_1171,
      O => U3_Madd_tank2rom10s_cy(4)
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
      LI => U3_Madd_spriteonM2_addsub0002_xor_9_rt_1116,
      O => U3_spriteonM2_addsub0002(9)
    );
  U3_Madd_spriteonM2_addsub0002_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(7),
      LI => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1110,
      O => U3_spriteonM2_addsub0002(8)
    );
  U3_Madd_spriteonM2_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1110,
      O => U3_Madd_spriteonM2_addsub0002_cy(8)
    );
  U3_Madd_spriteonM2_addsub0002_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(6),
      LI => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1108,
      O => U3_spriteonM2_addsub0002(7)
    );
  U3_Madd_spriteonM2_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1108,
      O => U3_Madd_spriteonM2_addsub0002_cy(7)
    );
  U3_Madd_spriteonM2_addsub0002_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(5),
      LI => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1106,
      O => U3_spriteonM2_addsub0002(6)
    );
  U3_Madd_spriteonM2_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1106,
      O => U3_Madd_spriteonM2_addsub0002_cy(6)
    );
  U3_Madd_spriteonM2_addsub0002_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(4),
      LI => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1104,
      O => U3_spriteonM2_addsub0002(5)
    );
  U3_Madd_spriteonM2_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM2_addsub0002_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1104,
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
      LI => U3_Madd_spriteonM1_addsub0002_xor_9_rt_1061,
      O => U3_spriteonM1_addsub0002(9)
    );
  U3_Madd_spriteonM1_addsub0002_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(7),
      LI => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1055,
      O => U3_spriteonM1_addsub0002(8)
    );
  U3_Madd_spriteonM1_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(7),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1055,
      O => U3_Madd_spriteonM1_addsub0002_cy(8)
    );
  U3_Madd_spriteonM1_addsub0002_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(6),
      LI => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1053,
      O => U3_spriteonM1_addsub0002(7)
    );
  U3_Madd_spriteonM1_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(6),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1053,
      O => U3_Madd_spriteonM1_addsub0002_cy(7)
    );
  U3_Madd_spriteonM1_addsub0002_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(5),
      LI => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1051,
      O => U3_spriteonM1_addsub0002(6)
    );
  U3_Madd_spriteonM1_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(5),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1051,
      O => U3_Madd_spriteonM1_addsub0002_cy(6)
    );
  U3_Madd_spriteonM1_addsub0002_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(4),
      LI => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1049,
      O => U3_spriteonM1_addsub0002(5)
    );
  U3_Madd_spriteonM1_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_spriteonM1_addsub0002_cy(4),
      DI => N0,
      S => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1049,
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
      I1 => U3_rise2_2073,
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
      I1 => U3_rise2_2073,
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
      I1 => U3_rise2_2073,
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
      I1 => U3_rise2_2073,
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
      I1 => U3_rise2_2073,
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
      I2 => U3_rise2_2073,
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
      I2 => U3_rise2_2073,
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
      I2 => U3_rise2_2073,
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
      I2 => U3_rise2_2073,
      O => U3_Maddsub_RM2_share0000_lut(1)
    );
  U3_Maddsub_RM2_share0000_xor_0_Q : XORCY
    port map (
      CI => U3_rise2_2073,
      LI => U3_Maddsub_RM2_share0000_lut(0),
      O => U3_RM2_share0000(0)
    );
  U3_Maddsub_RM2_share0000_cy_0_Q : MUXCY
    port map (
      CI => U3_rise2_2073,
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
      I2 => U3_rise2_2073,
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
      I1 => U3_rise_2072,
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
      I1 => U3_rise_2072,
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
      I1 => U3_rise_2072,
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
      I1 => U3_rise_2072,
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
      I1 => U3_rise_2072,
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
      I2 => U3_rise_2072,
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
      I2 => U3_rise_2072,
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
      I2 => U3_rise_2072,
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
      I2 => U3_rise_2072,
      O => U3_Maddsub_RM1_share0000_lut(1)
    );
  U3_Maddsub_RM1_share0000_xor_0_Q : XORCY
    port map (
      CI => U3_rise_2072,
      LI => U3_Maddsub_RM1_share0000_lut(0),
      O => U3_RM1_share0000(0)
    );
  U3_Maddsub_RM1_share0000_cy_0_Q : MUXCY
    port map (
      CI => U3_rise_2072,
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
      I2 => U3_rise_2072,
      O => U3_Maddsub_RM1_share0000_lut(0)
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
      DI => U3_C2_5_1_820,
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
  U3_Mcount_q_xor_20_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(19),
      LI => U3_Mcount_q_xor_20_rt_1579,
      O => U3_Result(20)
    );
  U3_Mcount_q_xor_19_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(18),
      LI => U3_Mcount_q_cy_19_rt_1559,
      O => U3_Result(19)
    );
  U3_Mcount_q_cy_19_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(18),
      DI => N0,
      S => U3_Mcount_q_cy_19_rt_1559,
      O => U3_Mcount_q_cy(19)
    );
  U3_Mcount_q_xor_18_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(17),
      LI => U3_Mcount_q_cy_18_rt_1557,
      O => U3_Result(18)
    );
  U3_Mcount_q_cy_18_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(17),
      DI => N0,
      S => U3_Mcount_q_cy_18_rt_1557,
      O => U3_Mcount_q_cy(18)
    );
  U3_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(16),
      LI => U3_Mcount_q_cy_17_rt_1555,
      O => U3_Result(17)
    );
  U3_Mcount_q_cy_17_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(16),
      DI => N0,
      S => U3_Mcount_q_cy_17_rt_1555,
      O => U3_Mcount_q_cy(17)
    );
  U3_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(15),
      LI => U3_Mcount_q_cy_16_rt_1553,
      O => U3_Result(16)
    );
  U3_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(15),
      DI => N0,
      S => U3_Mcount_q_cy_16_rt_1553,
      O => U3_Mcount_q_cy(16)
    );
  U3_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(14),
      LI => U3_Mcount_q_cy_15_rt_1551,
      O => U3_Result(15)
    );
  U3_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(14),
      DI => N0,
      S => U3_Mcount_q_cy_15_rt_1551,
      O => U3_Mcount_q_cy(15)
    );
  U3_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(13),
      LI => U3_Mcount_q_cy_14_rt_1549,
      O => U3_Result(14)
    );
  U3_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(13),
      DI => N0,
      S => U3_Mcount_q_cy_14_rt_1549,
      O => U3_Mcount_q_cy(14)
    );
  U3_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(12),
      LI => U3_Mcount_q_cy_13_rt_1547,
      O => U3_Result(13)
    );
  U3_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(12),
      DI => N0,
      S => U3_Mcount_q_cy_13_rt_1547,
      O => U3_Mcount_q_cy(13)
    );
  U3_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(11),
      LI => U3_Mcount_q_cy_12_rt_1545,
      O => U3_Result(12)
    );
  U3_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(11),
      DI => N0,
      S => U3_Mcount_q_cy_12_rt_1545,
      O => U3_Mcount_q_cy(12)
    );
  U3_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(10),
      LI => U3_Mcount_q_cy_11_rt_1543,
      O => U3_Result(11)
    );
  U3_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(10),
      DI => N0,
      S => U3_Mcount_q_cy_11_rt_1543,
      O => U3_Mcount_q_cy(11)
    );
  U3_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(9),
      LI => U3_Mcount_q_cy_10_rt_1541,
      O => U3_Result(10)
    );
  U3_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(9),
      DI => N0,
      S => U3_Mcount_q_cy_10_rt_1541,
      O => U3_Mcount_q_cy(10)
    );
  U3_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(8),
      LI => U3_Mcount_q_cy_9_rt_1577,
      O => U3_Result(9)
    );
  U3_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(8),
      DI => N0,
      S => U3_Mcount_q_cy_9_rt_1577,
      O => U3_Mcount_q_cy(9)
    );
  U3_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(7),
      LI => U3_Mcount_q_cy_8_rt_1575,
      O => U3_Result(8)
    );
  U3_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(7),
      DI => N0,
      S => U3_Mcount_q_cy_8_rt_1575,
      O => U3_Mcount_q_cy(8)
    );
  U3_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(6),
      LI => U3_Mcount_q_cy_7_rt_1573,
      O => U3_Result(7)
    );
  U3_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(6),
      DI => N0,
      S => U3_Mcount_q_cy_7_rt_1573,
      O => U3_Mcount_q_cy(7)
    );
  U3_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(5),
      LI => U3_Mcount_q_cy_6_rt_1571,
      O => U3_Result(6)
    );
  U3_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(5),
      DI => N0,
      S => U3_Mcount_q_cy_6_rt_1571,
      O => U3_Mcount_q_cy(6)
    );
  U3_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(4),
      LI => U3_Mcount_q_cy_5_rt_1569,
      O => U3_Result(5)
    );
  U3_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(4),
      DI => N0,
      S => U3_Mcount_q_cy_5_rt_1569,
      O => U3_Mcount_q_cy(5)
    );
  U3_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(3),
      LI => U3_Mcount_q_cy_4_rt_1567,
      O => U3_Result(4)
    );
  U3_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(3),
      DI => N0,
      S => U3_Mcount_q_cy_4_rt_1567,
      O => U3_Mcount_q_cy(4)
    );
  U3_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(2),
      LI => U3_Mcount_q_cy_3_rt_1565,
      O => U3_Result(3)
    );
  U3_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(2),
      DI => N0,
      S => U3_Mcount_q_cy_3_rt_1565,
      O => U3_Mcount_q_cy(3)
    );
  U3_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(1),
      LI => U3_Mcount_q_cy_2_rt_1563,
      O => U3_Result(2)
    );
  U3_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(1),
      DI => N0,
      S => U3_Mcount_q_cy_2_rt_1563,
      O => U3_Mcount_q_cy(2)
    );
  U3_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U3_Mcount_q_cy(0),
      LI => U3_Mcount_q_cy_1_rt_1561,
      O => U3_Result(1)
    );
  U3_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcount_q_cy(0),
      DI => N0,
      S => U3_Mcount_q_cy_1_rt_1561,
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
      LI => U3_Msub_CM2_sub0000_cy_1_rt_1738,
      O => U3_CM2_sub0000_1(1)
    );
  U3_Msub_CM2_sub0000_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_CM2_sub0000_cy_1_rt_1738,
      O => U3_Msub_CM2_sub0000_cy(1)
    );
  U3_Madd_CM1_add0000_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(8),
      LI => U3_Madd_CM1_add0000_xor_9_rt_1013,
      O => U3_CM1_add0000_0(9)
    );
  U3_Madd_CM1_add0000_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(7),
      LI => U3_Madd_CM1_add0000_cy_8_rt_1008,
      O => U3_CM1_add0000_0(8)
    );
  U3_Madd_CM1_add0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(7),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_8_rt_1008,
      O => U3_Madd_CM1_add0000_cy(8)
    );
  U3_Madd_CM1_add0000_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(6),
      LI => U3_Madd_CM1_add0000_cy_7_rt_1006,
      O => U3_CM1_add0000_0(7)
    );
  U3_Madd_CM1_add0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(6),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_7_rt_1006,
      O => U3_Madd_CM1_add0000_cy(7)
    );
  U3_Madd_CM1_add0000_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(5),
      LI => U3_Madd_CM1_add0000_cy_6_rt_1004,
      O => U3_CM1_add0000_0(6)
    );
  U3_Madd_CM1_add0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(5),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_6_rt_1004,
      O => U3_Madd_CM1_add0000_cy(6)
    );
  U3_Madd_CM1_add0000_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(4),
      LI => U3_Madd_CM1_add0000_cy_5_rt_1002,
      O => U3_CM1_add0000_0(5)
    );
  U3_Madd_CM1_add0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(4),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_5_rt_1002,
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
      LI => U3_Madd_CM1_add0000_cy_2_rt_998,
      O => U3_CM1_add0000_0(2)
    );
  U3_Madd_CM1_add0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_CM1_add0000_cy(1),
      DI => N0,
      S => U3_Madd_CM1_add0000_cy_2_rt_998,
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
      LI => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1782,
      O => U3_Msub_tank1rom10s_sub0001_cy(4)
    );
  U3_Msub_tank1rom10s_sub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(3),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1782,
      O => U3_Msub_tank1rom10s_sub0000_cy(4)
    );
  U3_Msub_tank1rom10s_sub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(2),
      LI => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1780,
      O => sig_tank1rom10s(3)
    );
  U3_Msub_tank1rom10s_sub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(2),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1780,
      O => U3_Msub_tank1rom10s_sub0000_cy(3)
    );
  U3_Msub_tank1rom10s_sub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(1),
      LI => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1778,
      O => sig_tank1rom10s(2)
    );
  U3_Msub_tank1rom10s_sub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(1),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1778,
      O => U3_Msub_tank1rom10s_sub0000_cy(2)
    );
  U3_Msub_tank1rom10s_sub0000_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(0),
      LI => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1776,
      O => sig_tank1rom10s(1)
    );
  U3_Msub_tank1rom10s_sub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_tank1rom10s_sub0000_cy(0),
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1776,
      O => U3_Msub_tank1rom10s_sub0000_cy(1)
    );
  U3_Msub_tank1rom10s_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1774,
      O => sig_tank1rom10s(0)
    );
  U3_Msub_tank1rom10s_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1774,
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
      D => U3_Result_4_2_2006,
      Q => U3_RMht2(4)
    );
  U3_RMht2_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht2_not0001,
      D => U3_Result_3_2_2001,
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
      D => U3_Result_4_1_2005,
      Q => U3_RMht1(4)
    );
  U3_RMht1_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_RMht1_not0001,
      D => U3_Result_3_1_2000,
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
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(20),
      Q => U3_q_201
    );
  U3_q_19 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(19),
      Q => U3_q_191
    );
  U3_q_18 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(18),
      Q => U3_q_181
    );
  U3_q_17 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(17),
      Q => U3_Q_17_1820
    );
  U3_q_16 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(16),
      Q => U3_Q_16_1819
    );
  U3_q_15 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(15),
      Q => U3_Q_15_1818
    );
  U3_q_14 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(14),
      Q => U3_Q_14_1817
    );
  U3_q_13 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(13),
      Q => U3_Q_13_1816
    );
  U3_q_12 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(12),
      Q => U3_Q_12_1815
    );
  U3_q_11 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(11),
      Q => U3_Q_11_1814
    );
  U3_q_10 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(10),
      Q => U3_Q_10_1813
    );
  U3_q_9 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(9),
      Q => U3_Q_9_1828
    );
  U3_q_8 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(8),
      Q => U3_Q_8_1827
    );
  U3_q_7 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(7),
      Q => U3_Q_7_1826
    );
  U3_q_6 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(6),
      Q => U3_Q_6_1825
    );
  U3_q_5 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(5),
      Q => U3_Q_5_1824
    );
  U3_q_4 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(4),
      Q => U3_Q_4_1823
    );
  U3_q_3 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(3),
      Q => U3_Q_3_1822
    );
  U3_q_2 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(2),
      Q => U3_Q_2_1821
    );
  U3_q_1 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(1),
      Q => U3_Q_1_1812
    );
  U3_q_0 : FDC
    port map (
      C => mclk_BUFGP_2343,
      CLR => btn_3_IBUF_2310,
      D => U3_Result(0),
      Q => U3_Q_0_1811
    );
  U3_tank2HP_2 : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => U3_tank2HP_mux0007_0_Q_2257,
      G => vidon,
      Q => U3_tank2HP_2_Q
    );
  U3_tank2HP_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_tank2HP_mux0007_2_Q_2258,
      G => vidon,
      Q => U3_tank2HP_0_Q
    );
  U3_tank1HP_2 : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => U3_tank1HP_mux0005_0_Q_2229,
      G => vidon,
      Q => U3_tank1HP_2_Q
    );
  U3_tank1HP_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_tank1HP_mux0005_2_Q_2230,
      G => vidon,
      Q => U3_tank1HP_0_Q
    );
  U3_B : LDE_1
    port map (
      D => U3_B_mux0016,
      G => U3_B_and0000,
      GE => vidon,
      Q => U3_B_785
    );
  U3_destroy1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_destroy1_mux0015,
      G => vidon,
      Q => U3_destroy1_2035
    );
  U3_destroy2 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => U3_destroy2_mux0017,
      G => vidon,
      Q => U3_destroy2_2041
    );
  U3_rise2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_rise2_and0000_2074,
      D => N0,
      PRE => U3_RMcnt2_and0000,
      Q => U3_rise2_2073
    );
  U3_rise : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(20),
      CE => U3_rise_and0000_2075,
      D => N0,
      PRE => U3_RMcnt_and0000,
      Q => U3_rise_2072
    );
  U3_Mhorz : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U3_q(20),
      CE => U3_Mhorz_not0001_1589,
      D => N0,
      PRE => U3_Mhorz_or0000,
      Q => U3_Mhorz_1580
    );
  U3_destroy2_mux00173 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB4,
      I3 => N01,
      O => U3_N33
    );
  x7_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => x7_clkdiv(19),
      O => an_0_OBUF_2277
    );
  bounce_outp_7_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(7),
      I1 => bounce_delay2(7),
      I2 => bounce_delay1(7),
      O => ld_7_OBUF_2341
    );
  bounce_outp_6_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(6),
      I1 => bounce_delay2(6),
      I2 => bounce_delay1(6),
      O => ld_6_OBUF_2340
    );
  bounce_outp_5_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(5),
      I1 => bounce_delay2(5),
      I2 => bounce_delay1(5),
      O => ld_5_OBUF_2339
    );
  bounce_outp_4_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(4),
      I1 => bounce_delay2(4),
      I2 => bounce_delay1(4),
      O => ld_4_OBUF_2338
    );
  bounce_outp_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(3),
      I1 => bounce_delay2(3),
      I2 => bounce_delay1(3),
      O => ld_3_OBUF_2337
    );
  bounce_outp_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(2),
      I1 => bounce_delay2(2),
      I2 => bounce_delay1(2),
      O => ld_2_OBUF_2336
    );
  bounce_outp_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(1),
      I1 => bounce_delay2(1),
      I2 => bounce_delay1(1),
      O => ld_1_OBUF_2335
    );
  bounce_outp_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bounce_delay3(0),
      I1 => bounce_delay2(0),
      I2 => bounce_delay1(0),
      O => ld_0_OBUF_2334
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(8),
      I2 => U2_hcs(9),
      O => hsync_OBUF_2319
    );
  screenstate_present_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_2_OBUF_2336,
      I2 => screenstate_present_state_FSM_FFd2_2480,
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
      I1 => N4,
      I2 => U3_spriteonM2,
      I3 => U3_B_and0000,
      O => U3_tank1HP_mux0005_0_Q_2229
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
      O => N7
    );
  U3_tank2HP_mux0007_2_Q : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_N29,
      I2 => N7,
      I3 => N6,
      O => U3_tank2HP_mux0007_2_Q_2258
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
      O => N10
    );
  U3_tank1HP_mux0005_2_Q : LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => U3_B_and0000,
      I2 => N10,
      I3 => N9,
      O => U3_tank1HP_mux0005_2_Q_2230
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      O => N12
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N12,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_N2,
      O => vsync_OBUF_2605
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
      O => nes_nes_clk31_2426
    );
  U3_rise_and0000 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMcnt(1),
      I1 => U3_RMcnt(2),
      I2 => N14,
      I3 => U3_RMcnt(0),
      O => U3_rise_and0000_2075
    );
  U3_rise2_and0000 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_RMcnt2(1),
      I1 => U3_RMcnt2(2),
      I2 => N16,
      I3 => U3_RMcnt2(0),
      O => U3_rise2_and0000_2074
    );
  who_present_state_FSM_FFd2_In2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2611,
      I1 => who_present_state_FSM_N0,
      O => who_present_state_FSM_FFd2_In
    );
  who_present_state_FSM_FFd2_In11 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2609,
      I1 => who_delay2_2607,
      I2 => who_delay1_2606,
      I3 => who_delay3_2608,
      O => who_present_state_FSM_N0
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
      O => U3_destroy2_mux001727_2045
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
      O => U3_destroy1_mux00154_2038
    );
  U3_destroy1_mux001541 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_blue_and0002,
      I2 => U3_spriteonGrnd,
      O => U3_destroy1_mux001541_2039
    );
  U3_destroy1_mux001571 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_destroy1_mux001527_2037,
      I1 => U3_destroy1_mux001562_2040,
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
      I1 => sig_tank1_angle_calc_5_Q,
      I2 => sig_tank1_angle_calc_4_Q,
      I3 => x7_clkdiv(19),
      O => an_3_OBUF_2280
    );
  nes_up_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => N676,
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
      O => N18
    );
  U3_Msub_font2_sub0002_xor_2_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      O => sig_tank1_angle_calc_2_Q
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
      I1 => U2_vcs_cmp_eq0000_771,
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
  U3_RMcnt_Q_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F606"
    )
    port map (
      I0 => U3_RMcnt(0),
      I1 => U3_RMcnt_Maddsub_addsub0000_lut(1),
      I2 => U3_RMcnt_and0000,
      I3 => U3_RMht1(1),
      O => U3_RMcnt_Q_mux0000(1)
    );
  U3_RMcnt2_Q_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F606"
    )
    port map (
      I0 => U3_RMcnt2(0),
      I1 => U3_RMcnt2_Maddsub_addsub0000_lut(1),
      I2 => U3_RMcnt2_and0000,
      I3 => U3_RMht2(1),
      O => U3_RMcnt2_Q_mux0000(1)
    );
  U2_hcs_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(9),
      I2 => U2_hcs(0),
      I3 => N681,
      O => U2_hcs_cmp_eq00005_760
    );
  U2_hcs_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N677,
      I1 => U2_hcs_cmp_eq00005_760,
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
      O => nes_scalar_next_cmp_eq000010_2450
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
      O => nes_scalar_next_cmp_eq000021_2451
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      O => N22
    );
  U3_Result_3_2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => N22,
      O => U3_Result_3_2_2001
    );
  U3_Result_3_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => N24,
      O => U3_Result_3_1_2000
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      O => title_green_cmp_lt0000225_2589
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      O => nes_counter_reg_cmp_eq0000125_2419
    );
  nes_counter_reg_cmp_eq0000126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000125_2419,
      I1 => N678,
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
      I1 => U2_vcs_cmp_eq0000_771,
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
  U3_tank1_angle_5_1 : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(5),
      I2 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      O => sig_tank1_angle_calc_5_Q
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
      O => a_to_g_2_OBUF_2268
    );
  x7_Mrom_a_to_g41 : LUT4
    generic map(
      INIT => X"C140"
    )
    port map (
      I0 => x7_digit(0),
      I1 => x7_digit(2),
      I2 => x7_digit(3),
      I3 => x7_digit(1),
      O => a_to_g_4_OBUF_2270
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
      O => a_to_g_1_OBUF_2267
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
      O => a_to_g_5_OBUF_2271
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
      O => a_to_g_0_OBUF_2266
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
      O => a_to_g_3_OBUF_2269
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
      O => a_to_g_6_OBUF_2272
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
      I1 => U2_vcs_cmp_eq0000_771,
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
      INIT => X"4"
    )
    port map (
      I0 => N682,
      I1 => U2_Result(9),
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
  U3_Madd_tank1ascii1s_add0000_cy_5_31 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(3),
      O => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2
    );
  U3_RM2_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(0),
      I1 => U3_N14,
      O => U3_RM2_mux0002(9)
    );
  U3_RM2_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(1),
      I1 => U3_N14,
      O => U3_RM2_mux0002(8)
    );
  U3_RM2_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(2),
      I1 => U3_N14,
      O => U3_RM2_mux0002(7)
    );
  U3_RM2_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(3),
      I1 => U3_N14,
      O => U3_RM2_mux0002(6)
    );
  U3_RM2_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM2_share0000(4),
      I1 => U3_N14,
      O => U3_RM2_mux0002(5)
    );
  U3_RM2_mux0002_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM2_share0000(5),
      O => U3_RM2_mux0002(4)
    );
  U3_RM2_mux0002_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM2_share0000(6),
      O => U3_RM2_mux0002(3)
    );
  U3_RM2_mux0002_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM2_share0000(7),
      O => U3_RM2_mux0002(2)
    );
  U3_RM2_mux0002_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM2_share0000(8),
      O => U3_RM2_mux0002(1)
    );
  U3_RM2_mux0002_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_N14,
      I1 => U3_RM2_share0000(9),
      O => U3_RM2_mux0002(0)
    );
  U3_RM1_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(0),
      I1 => U3_N13,
      O => U3_RM1_mux0002(9)
    );
  U3_RM1_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(1),
      I1 => U3_N13,
      O => U3_RM1_mux0002(8)
    );
  U3_RM1_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(2),
      I1 => U3_N13,
      O => U3_RM1_mux0002(7)
    );
  U3_RM1_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(3),
      I1 => U3_N13,
      O => U3_RM1_mux0002(6)
    );
  U3_RM1_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RM1_share0000(4),
      I1 => U3_N13,
      O => U3_RM1_mux0002(5)
    );
  U3_RM1_mux0002_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_RM1_share0000(5),
      O => U3_RM1_mux0002(4)
    );
  U3_RM1_mux0002_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_RM1_share0000(6),
      O => U3_RM1_mux0002(3)
    );
  U3_RM1_mux0002_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_RM1_share0000(7),
      O => U3_RM1_mux0002(2)
    );
  U3_RM1_mux0002_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_N13,
      I1 => U3_RM1_share0000(8),
      O => U3_RM1_mux0002(1)
    );
  U3_RM1_mux0002_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_N13,
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
      O => N26
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
      O => N27
    );
  U3_Result_4_2 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(2),
      I2 => N26,
      I3 => N27,
      O => U3_Result_4_2_2006
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
      O => N29
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
      O => N30
    );
  U3_Result_4_1 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(2),
      I2 => N29,
      I3 => N30,
      O => U3_Result_4_1_2005
    );
  U3_Mhorz_cmp_ne000165 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(3),
      I2 => U3_RMcnt2(2),
      I3 => U3_RMcnt2(3),
      O => U3_Mhorz_cmp_ne000165_1588
    );
  U3_Mhorz_cmp_ne0001113 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => U3_RMht2(1),
      I2 => U3_RMcnt2(0),
      I3 => U3_RMcnt2(1),
      O => U3_Mhorz_cmp_ne0001113_1586
    );
  U3_font3_cmp_lt00001 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(3),
      O => U3_font3_cmp_lt0000
    );
  U3_C2_not00016 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_C2(3),
      I1 => U3_C2(2),
      I2 => U3_C2(4),
      I3 => U3_C2_not00011_826,
      O => U3_C2_not00016_830
    );
  U3_C2_not000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2(7),
      I1 => U3_C2(8),
      O => U3_C2_not000113_827
    );
  U3_C2_not000188 : LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      I0 => U3_N37,
      I1 => U3_leftBTN_inv1_inv1,
      I2 => U3_C2_not000164_831,
      I3 => U3_C2_not000123_828,
      O => U3_C2_not0001
    );
  U3_Mhorz_cmp_ne000065 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(3),
      I2 => U3_RMcnt(2),
      I3 => U3_RMcnt(3),
      O => U3_Mhorz_cmp_ne000065_1584
    );
  U3_Mhorz_cmp_ne0000113 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1(1),
      I2 => U3_RMcnt(0),
      I3 => U3_RMcnt(1),
      O => U3_Mhorz_cmp_ne0000113_1582
    );
  U3_C1_not00015 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(0),
      I1 => U3_C1(1),
      O => U3_C1_not00015_812
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
      O => U3_C1_not000110_807
    );
  U3_C1_not000127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1_not00015_812,
      I2 => U3_C1_not000110_807,
      I3 => U3_C1_not00014_810,
      O => U3_C1_not000127_809
    );
  U3_C1_not000147 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U3_C1(2),
      I1 => U3_C1(4),
      O => U3_C1_not000147_811
    );
  U3_C1_not0001105 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C1(8),
      I2 => U3_C1(9),
      I3 => sig_gameRight,
      O => U3_C1_not0001105_808
    );
  U3_C1_not0001142 : LUT4
    generic map(
      INIT => X"A8A0"
    )
    port map (
      I0 => sig_tank2,
      I1 => U3_C1_not0001105_808,
      I2 => U3_C1_not000127_809,
      I3 => U3_C1_not000183_813,
      O => U3_C1_not0001
    );
  U3_tank1rom10s_sub0001_5_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_Msub_ypix1_Madd_lut(5),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_tank1rom10s_sub0001(5)
    );
  U3_B_mux00167 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U3_blue_and0001,
      I1 => U3_blue_and0000,
      I2 => U3_spriteonGrnd,
      I3 => U3_N0,
      O => U3_B_mux00167_794
    );
  U3_B_mux001612 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_spriteonB4,
      I2 => U3_spriteonB3,
      I3 => U3_spriteonB2,
      O => U3_B_mux001612_788
    );
  U3_B_mux001617 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_blue_and0004,
      I2 => U3_blue_and0003,
      I3 => U3_blue_and0002,
      O => U3_B_mux001617_791
    );
  U3_B_mux001618 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_B_mux001612_788,
      I1 => U3_B_mux001617_791,
      O => U3_B_mux001618_792
    );
  U3_B_mux001662 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U3_tank2Angle10s,
      I1 => U3_tank210sM_mux0000,
      I2 => U3_tank21sM_mux0000,
      I3 => U3_tank2Angle1s,
      O => U3_B_mux001662_793
    );
  U3_B_mux0016124 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_spriteonB1,
      I2 => U3_blue_and0004,
      I3 => U3_blue_and0003,
      O => U3_B_mux0016124_789
    );
  U3_B_mux0016128 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_blue_and0001,
      I1 => U3_blue_and0000,
      I2 => U3_N33,
      I3 => U3_B_mux0016124_789,
      O => U3_B_mux0016128_790
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
      O => U3_Result_5_236_2013
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
      O => U3_Result_5_136_2011
    );
  who_present_state_FSM_Out11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2611,
      I1 => who_present_state_FSM_FFd1_2609,
      O => sig_tank1
    );
  who_present_state_FSM_Out01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2611,
      I1 => who_present_state_FSM_FFd1_2609,
      O => sig_tank2
    );
  U3_font2_3_1_SW0 : LUT4
    generic map(
      INIT => X"63F3"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(5),
      I3 => U3_RMht1(4),
      O => N36
    );
  U3_font2_3_1_SW1 : LUT4
    generic map(
      INIT => X"FC8F"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(1),
      I3 => U3_RMht1(3),
      O => N37
    );
  U3_font3_cmp_lt00011 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMht2(3),
      I2 => U3_RMht2(4),
      O => U3_font3_cmp_lt0001
    );
  U3_tank1rom10s_sub0001_6_1 : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => U3_Msub_ypix1_Madd_lut(5),
      I1 => U3_tank1rom10s_sub0000(6),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_tank1rom10s_sub0001(6)
    );
  U3_tank1rom10s_sub0001_7_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(7),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_tank1rom10s_sub0001(7)
    );
  U3_font2_1_1_SW0 : LUT4
    generic map(
      INIT => X"D9AE"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(3),
      O => N42
    );
  U3_Msub_font4_sub0002_xor_5_11 : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(5),
      I2 => U3_Msub_font4_sub0002_cy(3),
      O => sig_tank2_angle_calc(5)
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => U2_vidon_and00000_772
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
      O => U2_vidon_and00006_780
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_780,
      I2 => U2_vidon_and000018,
      I3 => U2_vidon_and00000_772,
      O => U2_vidon_and000039_779
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
      O => U2_vidon_and000080_783
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
      O => U2_vidon_and0000105_773
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U2_vidon_and0000105_773,
      I1 => U2_vidon_and000080_783,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_774
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_779,
      I1 => U2_vidon_and0000117_774,
      O => vidon
    );
  title_spriteon_and00006 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(1),
      I2 => U2_vcs(0),
      I3 => U2_vcs(3),
      O => U3_spriteonGrnd_and00005
    );
  title_spriteon_and000016 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      O => U3_spriteonB1_and0000113
    );
  title_spriteon_and000019 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonB1_and0000113,
      I2 => U2_vcs(4),
      I3 => U3_spriteonGrnd_and00005,
      O => title_spriteon_and000019_2595
    );
  title_spriteon_and000035 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(3),
      O => title_spriteon_and000035_2597
    );
  title_spriteon_and000038 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_hcs(0),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      O => title_spriteon_and000038_2598
    );
  title_spriteon_and000052 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => title_spriteon_and000035_2597,
      I2 => U2_hcs(7),
      I3 => title_spriteon_and000038_2598,
      O => title_spriteon_and000052_2599
    );
  title_spriteon_and000059 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(9),
      O => title_spriteon_and000059_2600
    );
  title_spriteon_and0000119 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(8),
      I2 => U2_hcs(7),
      O => title_spriteon_and0000119_2591
    );
  title_spriteon_and0000124 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => title_spriteon_and0000119_2591,
      I1 => U2_hcs(6),
      I2 => title_spriteon_and000087,
      I3 => U2_hcs(5),
      O => title_spriteon_and0000124_2592
    );
  title_spriteon_and0000169 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      O => title_spriteon_and0000169_2593
    );
  title_spriteon_and0000178 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(5),
      O => title_spriteon_and0000178_2594
    );
  title_spriteon_and0000205 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => title_spriteon_and0000169_2593,
      I3 => title_spriteon_and0000178_2594,
      O => title_spriteon_and0000205_2596
    );
  U3_RMht1_not0001127 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1_not0001_bdd1,
      I2 => U3_RMht1(2),
      I3 => U3_RMht1_not000110_1962,
      O => U3_RMht1_not0001127_1963
    );
  U3_tank1rom10s_sub0001_10_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001(10)
    );
  U3_Msub_font4_sub0002_cy_3_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(3),
      O => U3_Msub_font4_sub0002_cy(3)
    );
  U3_tank1rom10s_sub0001_9_11 : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_tank1rom10s_sub0001(9)
    );
  U3_tank1rom10s_sub0001_8_11 : LUT2
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
  U3_RMcnt_Maddsub_addsub0000_lut_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMcnt(1),
      I1 => U3_rise_2072,
      O => U3_RMcnt_Maddsub_addsub0000_lut(1)
    );
  U3_RMcnt2_Maddsub_addsub0000_lut_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMcnt2(1),
      I1 => U3_rise2_2073,
      O => U3_RMcnt2_Maddsub_addsub0000_lut(1)
    );
  U3_blue_and0001156 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(9),
      I2 => U2_vcs(8),
      I3 => U2_vcs(7),
      O => U3_blue_and0001156_2031
    );
  U3_blue_and0001157 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0001138_2030,
      I1 => U3_blue_and0001156_2031,
      O => U3_N90
    );
  U3_spriteonB4_cmp_le000018 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(2),
      I2 => U2_hcs(4),
      O => U3_spriteonB4_cmp_le000018_2121
    );
  U3_spriteonB4_cmp_le0000121 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      I3 => U2_hcs(8),
      O => U3_spriteonB4_cmp_le0000121_2120
    );
  U3_spriteonB4_cmp_le0000135 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB4_cmp_le0000121_2120,
      I2 => U3_spriteonB4_cmp_le000018_2121,
      O => U3_spriteonB4_cmp_le0000
    );
  U3_spriteonGrnd_and000017 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      O => U3_spriteonGrnd_and000017_2128
    );
  U3_spriteonGrnd_and000020 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U3_spriteonGrnd_and000017_2128,
      I2 => U2_vcs(4),
      I3 => U3_spriteonGrnd_and00005,
      O => U3_spriteonGrnd_and000020_2129
    );
  U3_spriteonGrnd_and000041 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(6),
      I2 => U2_vidon_and00000_772,
      I3 => U3_N80,
      O => U3_spriteonGrnd_and000041_2130
    );
  U3_spriteonGrnd_and0000130 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonGrnd_and0000117_2127,
      I2 => U3_spriteonGrnd_and000020_2129,
      O => U3_spriteonGrnd
    );
  U3_RMcnt_Q_mux0000_5_Q : LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_RMcnt_and0000,
      I2 => U3_rise_2072,
      I3 => N49,
      O => U3_RMcnt_Q_mux0000(5)
    );
  U3_RMcnt2_Q_mux0000_5_Q : LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMcnt2_and0000,
      I2 => U3_rise2_2073,
      I3 => N51,
      O => U3_RMcnt2_Q_mux0000(5)
    );
  U3_font3_cmp_lt00021_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(5),
      O => N53
    );
  U3_font3_cmp_lt00021 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(1),
      I3 => N53,
      O => U3_font3_cmp_lt0002
    );
  U3_spriteonB3_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_N191,
      I2 => U3_N89,
      I3 => U3_spriteonB3_cmp_le00002,
      O => U3_spriteonB3
    );
  U3_spriteonB2_cmp_le000011_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => U2_hcs(4),
      I2 => U2_hcs(5),
      O => N55
    );
  U3_spriteonB2_cmp_le000011 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => N55,
      I2 => U2_hcs(6),
      I3 => U2_hcs(8),
      O => U3_N191
    );
  U3_spriteonB1_cmp_le00001_SW0 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(2),
      I2 => U2_hcs(3),
      I3 => U2_hcs(4),
      O => N57
    );
  U3_spriteonB3_cmp_le0000112 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      I3 => U2_hcs(7),
      O => U3_spriteonB3_cmp_le0000112_2110
    );
  U3_spriteonB3_cmp_le0000128 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(2),
      I2 => U2_hcs(1),
      I3 => U2_hcs(3),
      O => U3_spriteonB3_cmp_le0000128_2111
    );
  U3_spriteonB3_cmp_le0000129 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_spriteonB3_cmp_le0000112_2110,
      I1 => U3_spriteonB3_cmp_le0000128_2111,
      O => U3_spriteonB3_cmp_le00002
    );
  U3_spriteonB5_and000012 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(0),
      I2 => U2_hcs(1),
      I3 => U2_hcs(3),
      O => U3_spriteonB5_and000012_2123
    );
  U3_spriteonB5_and000083 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U3_spriteonB4_cmp_le0000,
      I1 => U2_hcs(9),
      I2 => U3_N89,
      I3 => U3_spriteonB5_and000039_2124,
      O => U3_spriteonB5
    );
  U3_spriteonB2_and00005 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(5),
      O => U3_spriteonB2_and00005_2108
    );
  U3_spriteonB4_and000053 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U3_spriteonB4_and000050_2116,
      I2 => U3_spriteonB1_cmp_lt0000,
      I3 => U3_spriteonB4_and000019,
      O => U3_spriteonB4
    );
  U3_spriteonB1_cmp_lt0000212 : LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => title_spriteon_and0000169_2593,
      I2 => U2_vcs(3),
      I3 => U2_vcs(4),
      O => U3_spriteonB1_cmp_lt0000212_2104
    );
  U3_spriteonB1_and000017 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(1),
      I3 => U2_vcs(2),
      O => U3_spriteonB1_and000017_2099
    );
  U3_spriteonB1_and00004 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => U2_hcs(1),
      I1 => U2_hcs(0),
      I2 => U2_hcs(2),
      I3 => U2_hcs(3),
      O => U3_spriteonB1_and00004_2100
    );
  U3_spriteonB5_cmp_lt00001111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(4),
      O => U3_N80
    );
  U3_red_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_tank2Angle10s,
      I1 => U3_tank2Angle1s,
      I2 => U3_tank1Angle10s,
      I3 => U3_tank1Angle1s,
      O => U3_N0
    );
  U3_tank2Angle1s_and0000_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U3_N80,
      I2 => U2_hcs(8),
      I3 => U2_hcs(9),
      O => N61
    );
  U3_tank2Angle1s_and0000 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => N61,
      I2 => U2_hcs(6),
      I3 => U3_N82,
      O => U3_tank2Angle1s
    );
  U3_tank2Angle10s_and0000 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_hcs(3),
      I1 => N61,
      I2 => U2_hcs(6),
      I3 => U3_N82,
      O => U3_tank2Angle10s
    );
  U3_tank1Angle1s_and000010 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(8),
      I2 => U2_hcs(3),
      I3 => U2_hcs(5),
      O => U3_tank1Angle1s_and000010_2225
    );
  U3_tank1Angle1s_and000018 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(9),
      I2 => U2_hcs(6),
      O => U3_tank1Angle1s_and000018_2226
    );
  U3_tank1Angle1s_and000030 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_N82,
      I1 => U3_tank1Angle1s_and000010_2225,
      I2 => U3_tank1Angle1s_and000018_2226,
      O => U3_tank1Angle1s
    );
  U3_tank1Angle10s_and00000 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_hcs(7),
      I1 => U2_hcs(5),
      O => U3_tank1Angle10s_and00000_2220
    );
  U3_tank1Angle10s_and000017 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U2_hcs(4),
      I2 => U2_hcs(6),
      I3 => U2_hcs(3),
      O => U3_tank1Angle10s_and000017_2223
    );
  U3_tank1Angle10s_and000030 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_tank1Angle10s_and00000_2220,
      I1 => U2_hcs(8),
      I2 => U3_N82,
      I3 => U3_tank1Angle10s_and000017_2223,
      O => U3_tank1Angle10s
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
      INIT => X"FF80"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(5),
      I2 => U3_C2(4),
      I3 => U3_C2(7),
      O => U3_Madd_spriteon2f_add0004_cy(7)
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
  M2_31_1 : LUT4
    generic map(
      INIT => X"666E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(4),
      I2 => rom1_addr(1),
      I3 => M1_0_bdd2,
      O => M1_0_Q
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
  U3_ypix2_4_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      O => N67
    );
  U3_ypix2_4_1 : LUT4
    generic map(
      INIT => X"E1C3"
    )
    port map (
      I0 => N67,
      I1 => sig_tank1rom10s(3),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => sig_tank1rom10s(2),
      O => rom1_addr(4)
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
  M1_6_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => M1_3_bdd3,
      O => N72
    );
  M1_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N72,
      I2 => N76,
      O => M1_4_Q_79
    );
  M2_20_12 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => M1_10_bdd7,
      I3 => rom1_addr(4),
      O => M2_20_12_159
    );
  M2_20_67 : LUT4
    generic map(
      INIT => X"32FA"
    )
    port map (
      I0 => M2_12_44,
      I1 => rom1_addr(4),
      I2 => M2_20_12_159,
      I3 => M2_11_bdd0,
      O => M2_20_Q
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
  M2a_11_25 : LUT4
    generic map(
      INIT => X"FF48"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => rom1_addr(3),
      I2 => rom1_addr(2),
      I3 => rom1_addr(4),
      O => M2a_11_25_217
    );
  M2a_11_48 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => M2a_11_25_217,
      I1 => rom1_addr(4),
      I2 => M2a_11_37_218,
      O => M2a_11_Q
    );
  M1_9_f5 : MUXF5
    port map (
      I0 => M1_9_2,
      I1 => M1_9_1_86,
      S => rom1_addr(4),
      O => M1_9_Q
    );
  M1_3_f5 : MUXF5
    port map (
      I0 => M1_3_2_77,
      I1 => M1_3_1_76,
      S => rom1_addr(4),
      O => M1_3_Q
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
  M1a_3_f5 : MUXF5
    port map (
      I0 => M1a_3_2_124,
      I1 => M1a_3_1_123,
      S => rom1_addr(4),
      O => M1a_3_Q
    );
  M2a_2_18 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_2_bdd5,
      I2 => rom1_addr(3),
      I3 => M2_0_bdd18,
      O => M2a_2_18_234
    );
  M2a_2_46 : LUT4
    generic map(
      INIT => X"FF1D"
    )
    port map (
      I0 => M2_0_bdd18,
      I1 => rom1_addr(3),
      I2 => M2_0_bdd4,
      I3 => rom1_addr(1),
      O => M2a_2_46_235
    );
  M2a_2_60 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => M2a_2_46_235,
      I3 => M2a_2_18_234,
      O => M2a_2_Q
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
  M1_10_f5 : MUXF5
    port map (
      I0 => M1_10_2,
      I1 => M1_10_1_3,
      S => rom1_addr(4),
      O => M1_10_Q
    );
  M2_22_f5 : MUXF5
    port map (
      I0 => M2_22_2_164,
      I1 => M2_22_1_163,
      S => rom1_addr(4),
      O => M2_22_Q
    );
  M2a_1_SW0 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd18,
      I2 => M2_0_bdd9,
      I3 => rom1_addr(3),
      O => N147
    );
  M2a_1_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd2,
      I2 => rom1_addr(4),
      I3 => N147,
      O => M2a_1_Q_224
    );
  M2a_3_2 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_3_bdd7,
      I2 => rom1_addr(3),
      I3 => M2_4_bdd10,
      O => M2a_3_2_239
    );
  M2a_3_3 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => rom1_addr(3),
      I2 => rom1_addr(1),
      I3 => M2_0_bdd6,
      O => M2a_3_3_240
    );
  M2a_3_f5 : MUXF5
    port map (
      I0 => M2a_3_3_240,
      I1 => M2a_3_2_239,
      S => sig_tank1rom10s(0),
      O => M2a_3_f5_241
    );
  M2a_3_f6 : MUXF6
    port map (
      I0 => M2a_3_f5_241,
      I1 => M2a_3_1_238,
      S => rom1_addr(4),
      O => M2a_3_Q
    );
  M2a_4_20 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_4_bdd2,
      I2 => rom1_addr(1),
      I3 => M2a_4_9_251,
      O => M2a_4_20_245
    );
  M2a_4_58 : LUT4
    generic map(
      INIT => X"FDD5"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd6,
      O => M2a_4_58_247
    );
  M2a_4_114 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M2a_4_36_246,
      I1 => rom1_addr(1),
      I2 => M2a_4_58_247,
      I3 => M2a_4_76,
      O => M2a_4_114_243
    );
  U3_red_1_111 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U3_N0,
      I1 => U3_B_785,
      I2 => U3_blue_and0004,
      I3 => U3_blue_and0003,
      O => U3_N50
    );
  selector_blue_1_17 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_tank2HP_0_Q,
      I2 => U3_tank2HP_2_Q,
      O => selector_blue_1_17_2482
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
      O => M1a_29_58_119
    );
  M1a_29_60 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1a_29_58_119,
      I2 => M1a_29_32_118,
      O => M1a_29_Q
    );
  M2_1_112 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(1),
      I2 => M2_1_101_155,
      I3 => M2_1_63_156,
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
      O => M1a_27_52_114
    );
  M2a_5_125 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_5_bdd2,
      I2 => rom1_addr(1),
      I3 => M2a_5_101_253,
      O => M2a_5_125_254
    );
  U3_tank2Angle_0_1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_RMht2(3),
      I1 => U3_RMht2(0),
      I2 => U3_RMht2(1),
      O => N149
    );
  U3_tank2Angle_0_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(5),
      I3 => N149,
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
      O => N151
    );
  U3_tank1Angle_0_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(5),
      I3 => N151,
      O => M1_21_bdd5
    );
  M2_10_42 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_10_23,
      I2 => M2_10_bdd0,
      I3 => M2_10_8,
      O => M2_10_Q
    );
  M1_30_108 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_30_104_68,
      I2 => M1_25_2,
      I3 => M1_30_51_69,
      O => M1_30_Q
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
      I2 => M1_28_33,
      I3 => M1_28_71_57,
      O => M1_28_Q
    );
  selector_green_0_103 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_98_2486,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(2),
      O => selector_green_0_103_2484
    );
  selector_green_0_107 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => selector_green_0_103_2484,
      I1 => U3_N87,
      I2 => selector_green_0_58_2485,
      O => green_0_OBUF_2315
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
  U3_blue_and00031 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_destroy1_2035,
      O => U3_blue_and0003
    );
  U3_green_1_138 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_blue_and0004,
      I2 => U3_green_1_116_2060,
      I3 => U3_blue_and0003,
      O => U3_green_1_138_2061
    );
  U3_green_1_145 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_spriteonB4,
      I1 => U3_green_1_138_2061,
      O => U3_N1
    );
  M1a_23_15 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_23_bdd1,
      O => M1a_23_15_103
    );
  M2_3_19 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      O => M2_3_19_174
    );
  M2_0_65 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_0_bdd2,
      I2 => rom1_addr(4),
      I3 => M2_0_27_131,
      O => M2_0_Q
    );
  M2_4_36 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_3_19_174,
      I2 => M2_4_bdd10,
      I3 => rom1_addr(3),
      O => M2_4_36_182
    );
  M2_4_46 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_4_bdd2,
      O => M2_4_46_183
    );
  U3_blue_and00041 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2,
      I1 => U3_destroy2_2041,
      O => U3_blue_and0004
    );
  U3_green_2_32 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => U3_blue_and0004,
      I1 => U3_spriteonB5,
      I2 => N153,
      I3 => U3_spriteonB4,
      O => U3_N281
    );
  M2_7_43 : LUT4
    generic map(
      INIT => X"1800"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(0),
      O => M2_7_43_206
    );
  M2_7_75 : LUT4
    generic map(
      INIT => X"4FEF"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_7_43_206,
      I2 => rom1_addr(1),
      I3 => M2_7_bdd0,
      O => M2_7_75_207
    );
  M2_5_163 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_5_160,
      I2 => M2_5_45,
      I3 => M2_5_103,
      O => M2_5_Q
    );
  M2_0_112 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => M2_0_bdd13,
      O => M2_0_bdd20
    );
  U3_destroy2_mux001721 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_blue_and0001,
      I1 => U3_B_and0000,
      I2 => U3_blue_and0000,
      O => U3_N29
    );
  U3_red_0_411 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_blue_and0002,
      I2 => U3_N29,
      I3 => vidon,
      O => U3_N87
    );
  U3_tank2Angle_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(1),
      O => N158
    );
  U3_tank2Angle_1_Q : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(5),
      I2 => U3_RMht2(3),
      I3 => N158,
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
      O => N160
    );
  U3_tank1Angle_1_Q : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(5),
      I2 => U3_RMht1(3),
      I3 => N160,
      O => M1_22_bdd9
    );
  U3_red_0_37 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => U3_tank1HP_0_Q,
      I2 => U3_B_and0000,
      O => U3_green_2_17
    );
  U3_green_2_132 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => U3_green_2_112_2062,
      I1 => vidon,
      I2 => U3_N29,
      I3 => U3_green_2_17,
      O => U3_N15
    );
  selector_red_2_63 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_98_2486,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(7),
      O => selector_red_2_63_2501
    );
  selector_red_2_68 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_N15,
      I2 => selector_red_2_63_2501,
      I3 => selector_red_2_20_2500,
      O => red_2_OBUF_2473
    );
  selector_green_1_64 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => title_spriteon,
      I1 => title_green_cmp_lt0000,
      I2 => selector_green_0_98_2486,
      I3 => sig_MTitle(3),
      O => selector_green_1_64_2488
    );
  selector_green_1_69 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_N15,
      I2 => selector_green_1_64_2488,
      I3 => selector_green_1_21_2487,
      O => green_1_OBUF_2316
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
      O => M1a_26_33_111
    );
  selector_red_1_47 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => title_spriteon,
      I1 => title_green_cmp_lt0000,
      I2 => selector_green_0_98_2486,
      I3 => sig_MTitle(6),
      O => selector_red_1_47_2499
    );
  selector_red_1_52 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_N25,
      I2 => selector_red_1_47_2499,
      I3 => selector_red_1_11,
      O => red_1_OBUF_2472
    );
  M2_6_17 : LUT4
    generic map(
      INIT => X"FF1D"
    )
    port map (
      I0 => M2_1_bdd1,
      I1 => rom1_addr(3),
      I2 => M2_6_bdd1,
      I3 => rom1_addr(1),
      O => M2_6_17_202
    );
  M2_6_171 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M2_10_bdd5,
      I2 => rom1_addr(4),
      I3 => M2_4_bdd0,
      O => M2_6_171_203
    );
  M2_6_174 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_6_171_203,
      I2 => M2_6_17_202,
      I3 => M2_6_108_201,
      O => M2_6_Q
    );
  selector_green_2_21 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_N37,
      I2 => U3_blue_and0002,
      I3 => U3_N281,
      O => selector_green_2_21_2489
    );
  selector_green_2_38 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => vidon,
      I1 => selector_green_2_21_2489,
      I2 => U3_N29,
      I3 => selector_blue_1_17_2482,
      O => selector_green_2_38_2490
    );
  selector_green_2_93 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => selector_green_0_98_2486,
      I1 => title_spriteon,
      I2 => title_green_cmp_lt0000,
      I3 => sig_MTitle(4),
      O => selector_green_2_93_2491
    );
  selector_green_2_98 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_N15,
      I2 => selector_green_2_93_2491,
      I3 => selector_green_2_38_2490,
      O => green_2_OBUF_2317
    );
  selector_red_0_77 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => vidon,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => sig_MTitle(5),
      I3 => title_spriteon,
      O => selector_red_0_77_2495
    );
  selector_red_0_80 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_N25,
      I2 => selector_red_0_77_2495,
      I3 => selector_red_0_34_2492,
      O => red_0_OBUF_2471
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_2321
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_2310
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_2605,
      O => vsync
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_2323,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_2325,
      O => ja3
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_2319,
      O => hsync
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_2280,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_2279,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_2278,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_2277,
      O => an(0)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_2284,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_2283,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_2317,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_2316,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_2315,
      O => green(0)
    );
  ld_7_OBUF : OBUF
    port map (
      I => ld_7_OBUF_2341,
      O => ld(7)
    );
  ld_6_OBUF : OBUF
    port map (
      I => ld_6_OBUF_2340,
      O => ld(6)
    );
  ld_5_OBUF : OBUF
    port map (
      I => ld_5_OBUF_2339,
      O => ld(5)
    );
  ld_4_OBUF : OBUF
    port map (
      I => ld_4_OBUF_2338,
      O => ld(4)
    );
  ld_3_OBUF : OBUF
    port map (
      I => ld_3_OBUF_2337,
      O => ld(3)
    );
  ld_2_OBUF : OBUF
    port map (
      I => ld_2_OBUF_2336,
      O => ld(2)
    );
  ld_1_OBUF : OBUF
    port map (
      I => ld_1_OBUF_2335,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => ld_0_OBUF_2334,
      O => ld(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_2272,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_2271,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_2270,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_2269,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_2268,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_2267,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_2266,
      O => a_to_g(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_2473,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_2472,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_2471,
      O => red(0)
    );
  U1_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(1),
      O => U1_Mcount_q_cy_1_rt_628
    );
  U1_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(2),
      O => U1_Mcount_q_cy_2_rt_630
    );
  U1_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(3),
      O => U1_Mcount_q_cy_3_rt_632
    );
  U1_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(4),
      O => U1_Mcount_q_cy_4_rt_634
    );
  U1_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(5),
      O => U1_Mcount_q_cy_5_rt_636
    );
  U1_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(6),
      O => U1_Mcount_q_cy_6_rt_638
    );
  U1_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(7),
      O => U1_Mcount_q_cy_7_rt_640
    );
  U1_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(8),
      O => U1_Mcount_q_cy_8_rt_642
    );
  U1_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(9),
      O => U1_Mcount_q_cy_9_rt_644
    );
  U1_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(10),
      O => U1_Mcount_q_cy_10_rt_614
    );
  U1_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(11),
      O => U1_Mcount_q_cy_11_rt_616
    );
  U1_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(12),
      O => U1_Mcount_q_cy_12_rt_618
    );
  U1_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(13),
      O => U1_Mcount_q_cy_13_rt_620
    );
  U1_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(14),
      O => U1_Mcount_q_cy_14_rt_622
    );
  U1_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(15),
      O => U1_Mcount_q_cy_15_rt_624
    );
  U1_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(16),
      O => U1_Mcount_q_cy_16_rt_626
    );
  U2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(8),
      O => U2_Mcount_hcs_cy_8_rt_683
    );
  U2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(7),
      O => U2_Mcount_hcs_cy_7_rt_681
    );
  U2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(6),
      O => U2_Mcount_hcs_cy_6_rt_679
    );
  U2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(5),
      O => U2_Mcount_hcs_cy_5_rt_677
    );
  U2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(4),
      O => U2_Mcount_hcs_cy_4_rt_675
    );
  U2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(3),
      O => U2_Mcount_hcs_cy_3_rt_673
    );
  U2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(2),
      O => U2_Mcount_hcs_cy_2_rt_671
    );
  U2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(1),
      O => U2_Mcount_hcs_cy_1_rt_669
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_712
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_710
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_708
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_706
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_704
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_702
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_700
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_698
    );
  x7_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(18),
      O => x7_Mcount_clkdiv_cy_18_rt_2632
    );
  x7_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(17),
      O => x7_Mcount_clkdiv_cy_17_rt_2630
    );
  x7_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(16),
      O => x7_Mcount_clkdiv_cy_16_rt_2628
    );
  x7_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(15),
      O => x7_Mcount_clkdiv_cy_15_rt_2626
    );
  x7_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(14),
      O => x7_Mcount_clkdiv_cy_14_rt_2624
    );
  x7_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(13),
      O => x7_Mcount_clkdiv_cy_13_rt_2622
    );
  x7_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(12),
      O => x7_Mcount_clkdiv_cy_12_rt_2620
    );
  x7_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(11),
      O => x7_Mcount_clkdiv_cy_11_rt_2618
    );
  x7_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(10),
      O => x7_Mcount_clkdiv_cy_10_rt_2616
    );
  x7_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(9),
      O => x7_Mcount_clkdiv_cy_9_rt_2650
    );
  x7_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(8),
      O => x7_Mcount_clkdiv_cy_8_rt_2648
    );
  x7_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(7),
      O => x7_Mcount_clkdiv_cy_7_rt_2646
    );
  x7_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(6),
      O => x7_Mcount_clkdiv_cy_6_rt_2644
    );
  x7_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(5),
      O => x7_Mcount_clkdiv_cy_5_rt_2642
    );
  x7_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(4),
      O => x7_Mcount_clkdiv_cy_4_rt_2640
    );
  x7_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(3),
      O => x7_Mcount_clkdiv_cy_3_rt_2638
    );
  x7_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(2),
      O => x7_Mcount_clkdiv_cy_2_rt_2636
    );
  x7_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(1),
      O => x7_Mcount_clkdiv_cy_1_rt_2634
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_2379
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_2377
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_2375
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_2373
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_2371
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_2369
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_2367
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_2365
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_2360
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_2358
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_2356
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_2354
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_2352
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_2350
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_2348
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_2346
    );
  U3_CM1_Madd_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(1),
      O => U3_CM1_Madd_add0000_cy_1_rt_864
    );
  U3_CM1_Madd_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(2),
      O => U3_CM1_Madd_add0000_cy_2_rt_866
    );
  U3_CM1_Madd_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(3),
      O => U3_CM1_Madd_add0000_cy_3_rt_868
    );
  U3_CM1_Madd_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(4),
      O => U3_CM1_Madd_add0000_cy_4_rt_870
    );
  U3_CM1_Madd_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(5),
      O => U3_CM1_Madd_add0000_cy_5_rt_872
    );
  U3_CM1_Madd_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(6),
      O => U3_CM1_Madd_add0000_cy_6_rt_874
    );
  U3_CM1_Madd_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(7),
      O => U3_CM1_Madd_add0000_cy_7_rt_876
    );
  U3_CM1_Madd_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(8),
      O => U3_CM1_Madd_add0000_cy_8_rt_878
    );
  U3_CM2_Msub_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(0),
      O => U3_CM2_Msub_sub0000_cy_0_rt_943
    );
  U3_spriteonM2_addsub0000_8_21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM2(8),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      O => U3_spriteonM2_addsub0000_8_2_2181
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
      O => U3_Madd_spriteonM2_addsub0000_xor_7_11_1084
    );
  U3_Madd_spriteonM2_addsub0000_xor_6_111 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM2(4),
      I1 => U3_CM2(5),
      I2 => U3_CM2(6),
      O => U3_Madd_spriteonM2_addsub0000_xor_6_11_1083
    );
  U3_Madd_spriteonM2_addsub0000_xor_5_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM2(5),
      I1 => U3_CM2(4),
      O => U3_Madd_spriteonM2_addsub0000_xor_5_11_1082
    );
  U3_Madd_spriteonM2_addsub0001_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(3),
      O => U3_Madd_spriteonM2_addsub0001_cy_3_rt_1090
    );
  U3_Madd_spriteonM2_addsub0001_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM2(1),
      O => U3_Madd_spriteonM2_addsub0001_cy_1_rt_1087
    );
  U3_spriteonM1_addsub0000_8_21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_CM1(8),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      O => U3_spriteonM1_addsub0000_8_2_2139
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
      O => U3_Madd_spriteonM1_addsub0000_xor_7_11_1029
    );
  U3_Madd_spriteonM1_addsub0000_xor_6_111 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_CM1(4),
      I1 => U3_CM1(5),
      I2 => U3_CM1(6),
      O => U3_Madd_spriteonM1_addsub0000_xor_6_11_1028
    );
  U3_Madd_spriteonM1_addsub0000_xor_5_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_CM1(5),
      I1 => U3_CM1(4),
      O => U3_Madd_spriteonM1_addsub0000_xor_5_11_1027
    );
  U3_Madd_spriteonM1_addsub0001_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(3),
      O => U3_Madd_spriteonM1_addsub0001_cy_3_rt_1035
    );
  U3_Madd_spriteonM1_addsub0001_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(1),
      O => U3_Madd_spriteonM1_addsub0001_cy_1_rt_1032
    );
  U3_Madd_spriteonM2_addsub0003_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(8),
      O => U3_Madd_spriteonM2_addsub0003_cy_8_rt_1132
    );
  U3_Madd_spriteonM2_addsub0003_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(7),
      O => U3_Madd_spriteonM2_addsub0003_cy_7_rt_1130
    );
  U3_Madd_spriteonM2_addsub0003_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(6),
      O => U3_Madd_spriteonM2_addsub0003_cy_6_rt_1128
    );
  U3_Madd_spriteonM2_addsub0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(5),
      O => U3_Madd_spriteonM2_addsub0003_cy_5_rt_1126
    );
  U3_Madd_spriteonM2_addsub0003_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(4),
      O => U3_Madd_spriteonM2_addsub0003_cy_4_rt_1124
    );
  U3_Madd_spriteonM2_addsub0003_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(3),
      O => U3_Madd_spriteonM2_addsub0003_cy_3_rt_1122
    );
  U3_Madd_spriteonM2_addsub0003_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(1),
      O => U3_Madd_spriteonM2_addsub0003_cy_1_rt_1119
    );
  U3_Madd_spriteonM1_addsub0003_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(8),
      O => U3_Madd_spriteonM1_addsub0003_cy_8_rt_1077
    );
  U3_Madd_spriteonM1_addsub0003_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(7),
      O => U3_Madd_spriteonM1_addsub0003_cy_7_rt_1075
    );
  U3_Madd_spriteonM1_addsub0003_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(6),
      O => U3_Madd_spriteonM1_addsub0003_cy_6_rt_1073
    );
  U3_Madd_spriteonM1_addsub0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(5),
      O => U3_Madd_spriteonM1_addsub0003_cy_5_rt_1071
    );
  U3_Madd_spriteonM1_addsub0003_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(4),
      O => U3_Madd_spriteonM1_addsub0003_cy_4_rt_1069
    );
  U3_Madd_spriteonM1_addsub0003_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(3),
      O => U3_Madd_spriteonM1_addsub0003_cy_3_rt_1067
    );
  U3_Madd_spriteonM1_addsub0003_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(1),
      O => U3_Madd_spriteonM1_addsub0003_cy_1_rt_1064
    );
  U3_tank1rom10s_sub0001_10_111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_11_2236
    );
  U3_tank1rom10s_sub0001_7_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(7),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_tank1rom10s_sub0001_7_1_2247
    );
  U3_tank1rom10s_sub0001_10_112 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_111_2237
    );
  U3_tank1rom10s_sub0001_7_12 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(7),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I3 => U3_tank1rom10s_sub0000(6),
      O => U3_tank1rom10s_sub0001_7_11_2248
    );
  U3_Madd_spriteonM2_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(8),
      O => U3_Madd_spriteonM2_addsub0002_cy_8_rt_1110
    );
  U3_Madd_spriteonM2_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(7),
      O => U3_Madd_spriteonM2_addsub0002_cy_7_rt_1108
    );
  U3_Madd_spriteonM2_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(6),
      O => U3_Madd_spriteonM2_addsub0002_cy_6_rt_1106
    );
  U3_Madd_spriteonM2_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(5),
      O => U3_Madd_spriteonM2_addsub0002_cy_5_rt_1104
    );
  U3_Madd_spriteonM1_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(8),
      O => U3_Madd_spriteonM1_addsub0002_cy_8_rt_1055
    );
  U3_Madd_spriteonM1_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(7),
      O => U3_Madd_spriteonM1_addsub0002_cy_7_rt_1053
    );
  U3_Madd_spriteonM1_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(6),
      O => U3_Madd_spriteonM1_addsub0002_cy_6_rt_1051
    );
  U3_Madd_spriteonM1_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(5),
      O => U3_Madd_spriteonM1_addsub0002_cy_5_rt_1049
    );
  U3_Mcount_q_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_191,
      O => U3_Mcount_q_cy_19_rt_1559
    );
  U3_Mcount_q_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_181,
      O => U3_Mcount_q_cy_18_rt_1557
    );
  U3_Mcount_q_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_17_1820,
      O => U3_Mcount_q_cy_17_rt_1555
    );
  U3_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_16_1819,
      O => U3_Mcount_q_cy_16_rt_1553
    );
  U3_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_15_1818,
      O => U3_Mcount_q_cy_15_rt_1551
    );
  U3_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_14_1817,
      O => U3_Mcount_q_cy_14_rt_1549
    );
  U3_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_13_1816,
      O => U3_Mcount_q_cy_13_rt_1547
    );
  U3_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_12_1815,
      O => U3_Mcount_q_cy_12_rt_1545
    );
  U3_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_11_1814,
      O => U3_Mcount_q_cy_11_rt_1543
    );
  U3_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_10_1813,
      O => U3_Mcount_q_cy_10_rt_1541
    );
  U3_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_9_1828,
      O => U3_Mcount_q_cy_9_rt_1577
    );
  U3_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_8_1827,
      O => U3_Mcount_q_cy_8_rt_1575
    );
  U3_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_7_1826,
      O => U3_Mcount_q_cy_7_rt_1573
    );
  U3_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_6_1825,
      O => U3_Mcount_q_cy_6_rt_1571
    );
  U3_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_5_1824,
      O => U3_Mcount_q_cy_5_rt_1569
    );
  U3_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_4_1823,
      O => U3_Mcount_q_cy_4_rt_1567
    );
  U3_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_3_1822,
      O => U3_Mcount_q_cy_3_rt_1565
    );
  U3_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_2_1821,
      O => U3_Mcount_q_cy_2_rt_1563
    );
  U3_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_Q_1_1812,
      O => U3_Mcount_q_cy_1_rt_1561
    );
  U3_Msub_CM2_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C2(1),
      O => U3_Msub_CM2_sub0000_cy_1_rt_1738
    );
  U3_Madd_CM1_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(8),
      O => U3_Madd_CM1_add0000_cy_8_rt_1008
    );
  U3_Madd_CM1_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(7),
      O => U3_Madd_CM1_add0000_cy_7_rt_1006
    );
  U3_Madd_CM1_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(6),
      O => U3_Madd_CM1_add0000_cy_6_rt_1004
    );
  U3_Madd_CM1_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(5),
      O => U3_Madd_CM1_add0000_cy_5_rt_1002
    );
  U3_Madd_CM1_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(2),
      O => U3_Madd_CM1_add0000_cy_2_rt_998
    );
  U3_Msub_tank1rom10s_sub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U3_Msub_tank1rom10s_sub0000_cy_4_rt_1782
    );
  U3_Msub_tank1rom10s_sub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U3_Msub_tank1rom10s_sub0000_cy_3_rt_1780
    );
  U3_Msub_tank1rom10s_sub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U3_Msub_tank1rom10s_sub0000_cy_2_rt_1778
    );
  U3_Msub_tank1rom10s_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Msub_tank1rom10s_sub0000_cy_1_rt_1776
    );
  U3_Msub_tank1rom10s_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Msub_tank1rom10s_sub0000_cy_0_rt_1774
    );
  U1_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q_171,
      O => U1_Mcount_q_xor_17_rt_646
    );
  U2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_hcs(9),
      O => U2_Mcount_hcs_xor_9_rt_695
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_724
    );
  x7_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7_clkdiv(19),
      O => x7_Mcount_clkdiv_xor_19_rt_2652
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_2391
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_2362
    );
  U3_CM1_Madd_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_CM1(9),
      O => U3_CM1_Madd_add0000_xor_9_rt_880
    );
  U3_spriteonM2_addsub0000_9_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM2(9),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      I2 => U3_CM2(8),
      O => U3_spriteonM2_addsub0000_9_1_2184
    );
  U3_spriteonM1_addsub0000_9_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U3_CM1(9),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      I2 => U3_CM1(8),
      O => U3_spriteonM1_addsub0000_9_1_2142
    );
  U3_Madd_spriteonM2_addsub0003_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM2_addsub0002(9),
      O => U3_Madd_spriteonM2_addsub0003_xor_9_rt_1135
    );
  U3_Madd_spriteonM1_addsub0003_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_spriteonM1_addsub0002(9),
      O => U3_Madd_spriteonM1_addsub0003_xor_9_rt_1080
    );
  U3_tank1rom10s_sub0001_10_113 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_112_2238
    );
  U3_tank1rom10s_sub0001_10_114 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_113_2239
    );
  U3_tank1rom10s_sub0001_10_115 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_114_2240
    );
  U3_tank1rom10s_sub0001_10_116 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001_10_bdd0,
      I1 => U3_tank1rom10s_sub0000(9),
      I2 => U3_tank1rom10s_sub0000(8),
      O => U3_tank1rom10s_sub0001_10_115_2241
    );
  U3_Madd_spriteonM2_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM2(9),
      O => U3_Madd_spriteonM2_addsub0002_xor_9_rt_1116
    );
  U3_Madd_spriteonM1_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_RM1(9),
      O => U3_Madd_spriteonM1_addsub0002_xor_9_rt_1061
    );
  U3_Mcount_q_xor_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_q_201,
      O => U3_Mcount_q_xor_20_rt_1579
    );
  U3_Madd_CM1_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_C1(9),
      O => U3_Madd_CM1_add0000_xor_9_rt_1013
    );
  U3_RMcnt_Maddsub_addsub0000_cy_3_11_SW0 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U3_RMcnt(2),
      I1 => U3_RMcnt(0),
      I2 => U3_RMcnt(1),
      I3 => U3_rise_2072,
      O => N168
    );
  U3_RMcnt2_Maddsub_addsub0000_cy_3_11_SW0 : LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      I0 => U3_RMcnt2(2),
      I1 => U3_RMcnt2(0),
      I2 => U3_RMcnt2(1),
      I3 => U3_rise2_2073,
      O => N170
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
  U3_RM1_mux0002_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_rise_2072,
      I1 => N680,
      I2 => U3_Mhorz_cmp_ne000065_1584,
      I3 => U3_Mhorz_cmp_ne0000113_1582,
      O => U3_N13
    );
  U3_RM2_mux0002_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_rise2_2073,
      I1 => N679,
      I2 => U3_Mhorz_cmp_ne000165_1588,
      I3 => U3_Mhorz_cmp_ne0001113_1586,
      O => U3_N14
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => N683,
      I3 => nes_N11,
      O => nes_counter_reg_not0001
    );
  U2_Mcount_hcs_eqn_01 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_0_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_0
    );
  U3_RMcnt_and000144 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => U3_RM1_and0000,
      I1 => U3_rise_2072,
      I2 => N178,
      I3 => U3_Mhorz_cmp_ne0000,
      O => U3_RMcnt_and0001
    );
  U3_RMcnt2_and000144 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => U3_RM2_and0000,
      I1 => U3_rise2_2073,
      I2 => N180,
      I3 => U3_Mhorz_cmp_ne0001,
      O => U3_RMcnt2_and0001
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(4),
      I3 => U2_vcs(9),
      O => N182
    );
  U2_Mcount_hcs_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_1_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_1
    );
  U2_Mcount_hcs_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_2_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_2
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
  U2_Mcount_hcs_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_3_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_3
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
  U2_Mcount_hcs_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_4_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_4
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
  U2_Mcount_hcs_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_5_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_5
    );
  U3_C1_not000152_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N184
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
  U2_Mcount_hcs_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_6_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_6
    );
  nes_Mcount_counter_reg_eqn_51 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_N11,
      I3 => nes_Result(5),
      O => nes_Mcount_counter_reg_eqn_5
    );
  U2_Mcount_hcs_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_Result_7_1,
      I2 => U2_hcs_cmp_eq00005_760,
      O => U2_Mcount_hcs_eqn_7
    );
  nes_Mcount_counter_reg_eqn_61 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_N11,
      I3 => nes_Result(6),
      O => nes_Mcount_counter_reg_eqn_6
    );
  U2_Mcount_hcs_eqn_81 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_hcs_cmp_eq00005_760,
      I2 => U2_Result_8_1,
      O => U2_Mcount_hcs_eqn_8
    );
  nes_Mcount_counter_reg_eqn_71 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_N11,
      I3 => nes_Result(7),
      O => nes_Mcount_counter_reg_eqn_7
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
      I0 => U2_hcs_cmp_eq000010_759,
      I1 => U2_hcs_cmp_eq00005_760,
      I2 => U2_Result_9_1,
      O => U2_Mcount_hcs_eqn_9
    );
  U3_RMht2_not000137 : LUT4
    generic map(
      INIT => X"3302"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_N37,
      I2 => N190,
      I3 => U3_RMht2_not000124_1972,
      O => U3_RMht2_not0001
    );
  U3_C2_not000164 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U3_leftBTN_inv1_inv1,
      I1 => U3_C2(9),
      I2 => sig_gameRight,
      I3 => U3_C2_not000150_829,
      O => U3_C2_not000164_831
    );
  U3_RMcnt_and000136_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U3_RMcnt(1),
      I1 => U3_RMcnt(0),
      I2 => U3_RMcnt_and000112_1954,
      O => N178
    );
  U3_RMcnt2_and000136_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U3_RMcnt2(1),
      I1 => U3_RMcnt2(0),
      I2 => U3_RMcnt2_and000112_1922,
      O => N180
    );
  U3_RMht2_not000137_SW0 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(3),
      I3 => N200,
      O => N190
    );
  U3_C1_not000152_SW1 : MUXF5
    port map (
      I0 => N204,
      I1 => N205,
      S => U3_C1(3),
      O => N185
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
      O => N204
    );
  U3_C1_not000152_SW1_G : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(5),
      O => N205
    );
  U3_RMht1_not00011190 : MUXF5
    port map (
      I0 => N206,
      I1 => N207,
      S => U3_RMht1(5),
      O => U3_RMht1_not0001
    );
  U3_RMht1_not00011190_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1_not0001_bdd1,
      I2 => U3_RMht1_not0001127_1963,
      O => N207
    );
  U3_blue_and0001138_SW0 : LUT4
    generic map(
      INIT => X"DB9B"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(5),
      I2 => U2_vcs(1),
      I3 => U2_vcs(0),
      O => N208
    );
  U3_blue_and0001138 : LUT4
    generic map(
      INIT => X"3237"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(5),
      I2 => U2_vcs(4),
      I3 => N208,
      O => U3_blue_and0001138_2030
    );
  U3_spriteonM1_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_Mcompar_spriteonM1_cmp_gt0000_cy(9),
      I1 => U3_Mcompar_spriteonM1_cmp_lt0000_cy(9),
      I2 => U3_spriteonM1_cmp_ge0000,
      I3 => U3_spriteonM1_cmp_le0000,
      O => U3_spriteonM1
    );
  U3_spriteonM2_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_Mcompar_spriteonM2_cmp_gt0000_cy(9),
      I1 => U3_Mcompar_spriteonM2_cmp_lt0000_cy(9),
      I2 => U3_spriteonM2_cmp_ge0000,
      I3 => U3_spriteonM2_cmp_le0000,
      O => U3_spriteonM2
    );
  U3_B_mux0016150_SW0 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => U3_B_mux001685_795,
      I1 => U3_B_mux0016128_790,
      I2 => U3_tank110sM_mux0000,
      I3 => U3_tank1Angle10s,
      O => N210
    );
  U3_B_mux0016150 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_B_785,
      I1 => U3_B_mux001618_792,
      I2 => N210,
      I3 => U3_B_mux00167_794,
      O => U3_B_mux0016
    );
  U3_destroy2_mux001780 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_destroy2_2041,
      I1 => U3_destroy2_mux001766_2046,
      I2 => U3_spriteonM2,
      I3 => U3_destroy2_mux001727_2045,
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
      O => N212
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
      O => N214
    );
  U3_tank1Angle10s_and0000159_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U3_tank1Angle10s_and0000128,
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      I3 => U2_vcs(5),
      O => N224
    );
  U3_tank1Angle10s_and0000159 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => U2_vcs(8),
      I3 => N224,
      O => U3_N82
    );
  U3_Mmux_M1a_mux0000_83 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N246,
      O => U3_Mmux_M1a_mux0000_83_1643
    );
  U3_Mmux_M2a_mux0000_82 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd1,
      I2 => N248,
      O => U3_Mmux_M2a_mux0000_82_1702
    );
  U3_Mmux_M2_mux0000_82 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_18_bdd0,
      I2 => N250,
      O => U3_Mmux_M2_mux0000_82_1672
    );
  title_spriteon_and0000250_SW0 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => title_spriteon_and000052_2599,
      I1 => title_spriteon_and0000124_2592,
      I2 => title_spriteon_and000059_2600,
      I3 => U2_vcs(9),
      O => N252
    );
  title_spriteon_and0000250 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => title_spriteon_and0000205_2596,
      I2 => N252,
      I3 => title_spriteon_and000019_2595,
      O => title_spriteon
    );
  M1a_28_63 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_28_bdd1,
      I2 => rom1_addr(3),
      I3 => N256,
      O => M1a_28_Q
    );
  U3_Mmux_M1a_mux0000_6 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => M1a_29_58_119,
      I1 => rom1_addr(3),
      I2 => U3_rom_pix1(0),
      I3 => M1a_30_37_121,
      O => U3_Mmux_M1a_mux0000_6_1628
    );
  U3_Mmux_M2a_mux0000_6 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => rom1_addr(4),
      I2 => M2a_29_2_231,
      I3 => M2a_30_19_236,
      O => U3_Mmux_M2a_mux0000_6_1688
    );
  U3_B_mux001685 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U3_tank1Angle1s,
      I1 => U3_tank11sM_mux0000,
      I2 => U3_tank1Angle10s,
      I3 => U3_B_mux001662_793,
      O => U3_B_mux001685_795
    );
  M2a_4_214 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_4_20_245,
      I2 => M2a_4_114_243,
      I3 => M2a_4_194_244,
      O => M2a_4_Q
    );
  M2_9_95 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_9_31_212,
      I2 => M2_21_bdd0,
      I3 => M2_9_69_213,
      O => M2_9_Q
    );
  M2_7_119_SW0 : LUT4
    generic map(
      INIT => X"FF8B"
    )
    port map (
      I0 => M2_12_bdd5,
      I1 => rom1_addr(3),
      I2 => M2_1_bdd1,
      I3 => rom1_addr(1),
      O => N282
    );
  M2_7_119 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => N282,
      I2 => M2_7_75_207,
      I3 => M2_10_bdd0,
      O => M2_7_Q
    );
  x7_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht1(1),
      I2 => sig_tank1_angle_calc_5_Q,
      O => x7_Mmux_digit_31_2654
    );
  x7_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht2(1),
      I2 => sig_tank2_angle_calc(5),
      O => x7_Mmux_digit_41_2656
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      I0 => U3_Madd_spriteon1_addsub0001_cy_5_Q,
      I1 => U2_hcs(7),
      I2 => U3_Madd_spriteon1_addsub0001_lut(7),
      I3 => U3_Madd_spriteon1_addsub0001_lut(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mmux_M2a_mux0000_7 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_28_Q,
      I2 => M2a_29_2_231,
      I3 => M2a_29_59_232,
      O => U3_Mmux_M2a_mux0000_7_1693
    );
  U3_Madd_tank2rom1s_lut_10_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(10),
      I1 => U3_font4_5_Q,
      I2 => U3_Madd_tank2ascii1s_add0000_cy(4),
      O => U3_Madd_tank2rom1s_lut(10)
    );
  U3_Madd_tank2rom1s_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(9),
      I1 => U3_font4_5_Q,
      I2 => U3_Madd_tank2ascii1s_add0000_cy(4),
      O => U3_Madd_tank2rom1s_lut(9)
    );
  U3_Madd_tank2rom1s_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      I2 => U3_Madd_tank2ascii1s_add0000_cy(4),
      O => U3_Madd_tank2rom1s_lut(8)
    );
  U3_Madd_tank2rom1s_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U3_font3_cmp_lt0000,
      I1 => U3_RMht2(0),
      I2 => U3_tank1rom10s_sub0001(4),
      O => U3_Madd_tank2rom1s_lut(4)
    );
  U3_Madd_tank1rom1s_lut_10_Q : LUT4
    generic map(
      INIT => X"E1C3"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(5),
      I2 => U3_tank1rom10s_sub0001(10),
      I3 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      O => U3_Madd_tank1rom1s_lut(10)
    );
  U3_Madd_tank1rom1s_lut_9_Q : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(9),
      I1 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      I2 => U3_RMht1(4),
      I3 => U3_RMht1(5),
      O => U3_Madd_tank1rom1s_lut(9)
    );
  U3_Madd_tank1rom1s_lut_8_Q : LUT4
    generic map(
      INIT => X"5569"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(8),
      I1 => U3_RMht1(4),
      I2 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      I3 => U3_RMht1(5),
      O => U3_Madd_tank1rom1s_lut(8)
    );
  U3_Madd_tank1rom1s_lut_7_Q : LUT4
    generic map(
      INIT => X"A695"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(7),
      I1 => U3_RMht1(2),
      I2 => N37,
      I3 => N36,
      O => U3_Madd_tank1rom1s_lut(7)
    );
  U3_Madd_tank1rom1s_lut_5_Q : LUT4
    generic map(
      INIT => X"A695"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(5),
      I1 => U3_RMht1(5),
      I2 => N42,
      I3 => U3_RMht1(1),
      O => U3_Madd_tank1rom1s_lut(5)
    );
  U3_Madd_tank1rom10s_lut_6_Q : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(6),
      I1 => U3_RMht1(3),
      I2 => U3_RMht1(4),
      I3 => U3_RMht1(5),
      O => U3_Madd_tank1rom10s_lut_6_Q_1146
    );
  U3_Madd_tank2rom10s_lut_5_Q : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_font3_cmp_lt0000,
      I3 => U3_font3_cmp_lt0001,
      O => U3_Madd_tank2rom10s_lut_5_Q_1172
    );
  U3_Madd_tank2rom10s_lut_4_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(4),
      I1 => U3_font3_cmp_lt0002,
      I2 => U3_font3_cmp_lt0001,
      I3 => U3_font3_cmp_lt0000,
      O => U3_Madd_tank2rom10s_lut_4_Q_1171
    );
  nes_nes_clk33_SW0 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(1),
      I2 => nes_counter_reg(2),
      I3 => nes_nes_clk31_2426,
      O => N284
    );
  nes_nes_clk33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(9),
      I3 => N284,
      O => ja3_OBUF_2325
    );
  x7_an_1_mux000148 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => N286,
      I2 => sig_tank1_angle_calc_2_Q,
      I3 => x7_clkdiv(19),
      O => an_1_OBUF_2278
    );
  title_green_cmp_lt0000242_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => U2_vcs(2),
      I2 => title_green_cmp_lt0000225_2589,
      I3 => U2_vcs(3),
      O => N288
    );
  title_green_cmp_lt0000242 : LUT4
    generic map(
      INIT => X"0405"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => N288,
      I2 => U2_vcs(9),
      I3 => U2_vcs(0),
      O => title_green_cmp_lt0000
    );
  U3_spriteonGrnd_and000063_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      I2 => title_spriteon_and0000169_2593,
      I3 => U2_vcs(8),
      O => N290
    );
  U3_spriteonGrnd_and000063 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => N290,
      I3 => U2_vcs(5),
      O => U3_spriteonGrnd_and000063_2132
    );
  U3_spriteonGrnd_and0000117 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteonGrnd_and000063_2132,
      I1 => U2_vcs(9),
      I2 => U3_spriteonGrnd_and0000103_2126,
      I3 => U3_spriteonGrnd_and000041_2130,
      O => U3_spriteonGrnd_and0000117_2127
    );
  U3_spriteonB1_and0000115 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_spriteonB1_and0000113,
      I1 => U2_vcs(4),
      I2 => U2_vcs(5),
      I3 => U3_spriteonB1_and000017_2099,
      O => U3_spriteonB1_and0000115_2098
    );
  M2a_29_2 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(1),
      I2 => rom1_addr(2),
      I3 => rom1_addr(4),
      O => M2a_29_2_231
    );
  selector_green_0_58 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonB2,
      I2 => screenstate_present_state_FSM_FFd1_2478,
      I3 => N294,
      O => selector_green_0_58_2485
    );
  U3_blue_and00021 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_M2a_mux0000,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy(9),
      I2 => U3_spriteon2f_cmp_le0000,
      I3 => U3_N90,
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
      I3 => U3_N90,
      O => U3_blue_and0001
    );
  selector_green_1_21 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_N37,
      I2 => N296,
      I3 => U3_N1,
      O => selector_green_1_21_2487
    );
  selector_red_0_34 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_spriteonB2,
      I2 => N298,
      I3 => U3_N87,
      O => selector_red_0_34_2492
    );
  M2_21_f51 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_21_bdd0,
      I2 => M1_10_2,
      O => M2_21_Q
    );
  U3_destroy1_mux001562_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N33,
      I1 => U3_spriteonB5,
      I2 => U3_blue_and0002,
      I3 => U3_tank2HP_2_Q,
      O => N300
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
      O => N302
    );
  U3_tank2HP_mux0007_0_Q : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U3_tank2HP_2_Q,
      I1 => U3_B_and0000,
      I2 => sig_gameB,
      I3 => N302,
      O => U3_tank2HP_mux0007_0_Q_2257
    );
  U3_Mcount_C2_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(1),
      O => U3_Mcount_C2_lut(1)
    );
  U3_Mcount_C1_lut_1_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(1),
      O => U3_Mcount_C1_lut(1)
    );
  U3_Mcount_C2_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(2),
      O => U3_Mcount_C2_lut(2)
    );
  U3_Mcount_C1_lut_2_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(2),
      O => U3_Mcount_C1_lut(2)
    );
  U3_Mcount_C2_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(3),
      O => U3_Mcount_C2_lut(3)
    );
  U3_Mcount_C1_lut_3_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(3),
      O => U3_Mcount_C1_lut(3)
    );
  U3_Mcount_C2_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(4),
      O => U3_Mcount_C2_lut(4)
    );
  U3_Mcount_C1_lut_4_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(4),
      O => U3_Mcount_C1_lut(4)
    );
  U3_Mcount_C2_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2_5_1_820,
      O => U3_Mcount_C2_lut(5)
    );
  U3_Mcount_C1_lut_5_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(5),
      O => U3_Mcount_C1_lut(5)
    );
  U3_Mcount_C2_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(6),
      O => U3_Mcount_C2_lut(6)
    );
  U3_Mcount_C1_lut_6_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(6),
      O => U3_Mcount_C1_lut(6)
    );
  U3_Mcount_C2_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(7),
      O => U3_Mcount_C2_lut(7)
    );
  U3_Mcount_C1_lut_7_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(7),
      O => U3_Mcount_C1_lut(7)
    );
  U3_Mcount_C2_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(8),
      O => U3_Mcount_C2_lut(8)
    );
  U3_Mcount_C1_lut_8_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(8),
      O => U3_Mcount_C1_lut(8)
    );
  U3_Mcount_C2_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C2(9),
      O => U3_Mcount_C2_lut(9)
    );
  U3_Mcount_C1_lut_9_Q : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_7_OBUF_2341,
      I2 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  U3_Mcount_C2_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_C2(0),
      I2 => ld_7_OBUF_2341,
      O => U3_Mcount_C2_lut(0)
    );
  U3_Mcount_C1_lut_0_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_C1(0),
      I2 => ld_7_OBUF_2341,
      O => U3_Mcount_C1_lut(0)
    );
  U3_CM2_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_CM2_sub0000(0),
      I2 => ld_0_OBUF_2334,
      I3 => U3_C2(0),
      O => U3_CM2_Q_mux0000(0)
    );
  U3_CM1_Q_mux0000_0_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_CM1_add0000(0),
      I2 => ld_0_OBUF_2334,
      I3 => U3_CM1_add0000_0(0),
      O => U3_CM1_Q_mux0000(0)
    );
  U3_tank1HP_mux0005_0_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U3_tank1HP_2_Q,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => ld_1_OBUF_2335,
      O => N4
    );
  U3_tank2HP_mux0007_2_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U3_tank2HP_0_Q,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => ld_1_OBUF_2335,
      O => N6
    );
  U3_tank1HP_mux0005_2_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => U3_tank1HP_0_Q,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => ld_1_OBUF_2335,
      O => N9
    );
  U3_destroy1_mux001527_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_spriteonGrnd,
      I2 => U3_destroy1_mux00154_2038,
      O => N304
    );
  U3_destroy1_mux001527 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => U3_destroy1_2035,
      I2 => N304,
      I3 => ld_1_OBUF_2335,
      O => U3_destroy1_mux001527_2037
    );
  who_present_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => who_present_state_FSM_N0,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => ld_0_OBUF_2334,
      I3 => who_present_state_FSM_FFd1_2609,
      O => who_present_state_FSM_FFd1_In
    );
  U3_Result_1_21 : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(0),
      I2 => screenstate_present_state_FSM_FFd1_2478,
      I3 => ld_6_OBUF_2340,
      O => U3_Result_1_2
    );
  U3_Result_1_11 : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => U3_RMht1(1),
      I1 => U3_RMht1(0),
      I2 => screenstate_present_state_FSM_FFd1_2478,
      I3 => ld_6_OBUF_2340,
      O => U3_Result_1_1
    );
  M2a_18_11 : LUT4
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
  M2_24_11 : LUT4
    generic map(
      INIT => X"7797"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => M1_4_bdd0
    );
  M2_13_21 : LUT4
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
  M2_20_44 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => M2_12_44
    );
  M2_22_2 : LUT4
    generic map(
      INIT => X"0862"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M2_22_2_164
    );
  M2a_4_194 : LUT4
    generic map(
      INIT => X"44C5"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M2a_4_194_244
    );
  U3_spriteon2_addsub0000_7_1 : LUT4
    generic map(
      INIT => X"C393"
    )
    port map (
      I0 => U3_C2(5),
      I1 => U3_C2(7),
      I2 => U3_C2(6),
      I3 => U3_C2(4),
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
  U3_font4_5_54 : LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_Msub_font4_sub0002_cy(3),
      I2 => N1,
      I3 => U3_RMht2(4),
      O => U3_font4_5_Q
    );
  M2_4_11 : LUT4
    generic map(
      INIT => X"2AEC"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => M2_4_bdd0
    );
  M2_10_41 : LUT4
    generic map(
      INIT => X"74D4"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => M2_10_bdd5
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
  M2a_4_36 : LUT4
    generic map(
      INIT => X"9454"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2a_4_36_246
    );
  M1_24_11 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
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
      O => M1_28_71_57
    );
  x7_an_2_mux000117 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(0),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(1),
      O => x7_an_2_mux000117_2678
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
  M1_26_25 : LUT4
    generic map(
      INIT => X"66F6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(2),
      O => M1_26_25_38
    );
  M1_26_58 : LUT4
    generic map(
      INIT => X"9BD9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => M1_26_58_39
    );
  U3_Mmux_M1a_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N314,
      O => U3_Mmux_M1a_mux0000_9_1647
    );
  U3_Mmux_M1a_mux0000_73 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_14_bdd0,
      I2 => N316,
      O => U3_Mmux_M1a_mux0000_73_1636
    );
  U3_Mmux_M1a_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N318,
      O => U3_Mmux_M1a_mux0000_85_1645
    );
  U3_Mmux_M1_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N320,
      O => U3_Mmux_M1_mux0000_9_1617
    );
  U3_Mmux_M1_mux0000_85 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N72,
      I2 => N322,
      O => U3_Mmux_M1_mux0000_85_1615
    );
  U3_rise2_and000011 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => who_present_state_FSM_FFd1_2609,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RM2_and0000
    );
  U3_CM2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U3_Mhorz_1580,
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => who_present_state_FSM_FFd1_2609,
      O => U3_CM2_and0000
    );
  x7_an_2_mux000134_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(5),
      O => N324
    );
  x7_an_2_mux000134 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => x7_clkdiv(19),
      I1 => x7_an_2_mux000117_2678,
      I2 => N324,
      I3 => x7_clkdiv(18),
      O => an_2_OBUF_2279
    );
  U3_green_2_311 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2609,
      I1 => who_present_state_FSM_FFd2_2611,
      O => U3_N37
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
  U3_RMht1_not000131 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ld_5_OBUF_2339,
      I1 => sig_tank2,
      I2 => screenstate_present_state_FSM_FFd1_2478,
      I3 => ld_6_OBUF_2340,
      O => U3_RMht1_not0001_bdd1
    );
  x7_an_1_mux000110 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(1),
      I3 => U3_RMht1(0),
      O => x7_an_1_mux000110_2677
    );
  U3_spriteonB2_and000041 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB1_cmp_le00002,
      I2 => N326,
      I3 => U3_N191,
      O => U3_spriteonB2
    );
  U3_spriteonB4_and000050 : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => U3_spriteonB3_cmp_le00002,
      I2 => U3_spriteonB4_cmp_le000018_2121,
      I3 => U3_spriteonB4_cmp_le0000121_2120,
      O => U3_spriteonB4_and000050_2116
    );
  M2_12_31 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      O => M2_12_bdd5
    );
  M2_7_11 : LUT4
    generic map(
      INIT => X"6CEE"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => M2_0_bdd6,
      O => M2_7_bdd0
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
      O => M1a_29_32_118
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
      O => M1_31_62_74
    );
  M1_23_22 : LUT4
    generic map(
      INIT => X"9DBF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd7,
      I3 => M1_22_bdd4,
      O => M1_23_22_24
    );
  M2_1_101 : LUT4
    generic map(
      INIT => X"666E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd18,
      I3 => rom1_addr(3),
      O => M2_1_101_155
    );
  M1_29_69 : LUT4
    generic map(
      INIT => X"9DBF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_29_bdd5,
      I3 => M1_22_bdd12,
      O => M1_29_69_63
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
      O => M1_29_77_64
    );
  M2a_5_101 : LUT4
    generic map(
      INIT => X"20A8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd6,
      I3 => M2_0_bdd20,
      O => M2a_5_101_253
    );
  M2_6_31 : LUT4
    generic map(
      INIT => X"A6B7"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => M2_0_bdd6,
      O => M2_6_bdd1
    );
  M2_4_31 : LUT4
    generic map(
      INIT => X"09CF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(0),
      O => M2_4_bdd2
    );
  M2a_10_51 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd0,
      I2 => M2a_10_28_215,
      O => M2a_10_Q
    );
  M1a_30_37 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd7,
      I3 => M1_22_bdd12,
      O => M1a_30_37_121
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
      O => N332
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
  M1a_21_47 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_12_bdd0,
      I2 => M1a_21_25_98,
      O => M1a_21_Q
    );
  M2a_7_81_SW0 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_12_bdd5,
      I2 => rom1_addr(1),
      I3 => M2a_6_bdd1,
      O => N340
    );
  M2a_7_81 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_7_53_261,
      I2 => M1a_12_bdd0,
      I3 => N340,
      O => M2a_7_Q
    );
  M2_3_94 : LUT4
    generic map(
      INIT => X"A2F2"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd20,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => M2_3_94_177
    );
  M2a_6_21 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M2_0_bdd6,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => M2a_6_bdd1
    );
  M2_2_111 : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => rom1_addr(2),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(0),
      O => M2_2_111_169
    );
  selector_red_2_20_SW0 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_N281,
      I2 => U3_spriteonB3,
      I3 => U3_tank2HP_0_Q,
      O => N352
    );
  selector_red_2_20 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_N29,
      I1 => N352,
      I2 => U2_vidon_and0000117_774,
      I3 => U2_vidon_and000039_779,
      O => selector_red_2_20_2500
    );
  M1a_26_131_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(1),
      I1 => M1a_26_33_111,
      I2 => rom1_addr(3),
      I3 => M1a_26_55_112,
      O => N354
    );
  M2_6_108_SW0 : LUT4
    generic map(
      INIT => X"BBDF"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd6,
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => N356
    );
  M2_6_108 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N356,
      I2 => rom1_addr(1),
      I3 => M1_10_bdd7,
      O => M2_6_108_201
    );
  x7_Mmux_digit_3 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht1(4),
      I2 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      I3 => U3_RMht1(0),
      O => x7_Mmux_digit_3_2653
    );
  x7_Mmux_digit_4 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht2(4),
      I2 => U3_Msub_font4_sub0002_cy(3),
      I3 => U3_RMht2(0),
      O => x7_Mmux_digit_4_2655
    );
  U3_Mcompar_spriteonM2_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9A65"
    )
    port map (
      I0 => U3_CM2(9),
      I1 => U3_spriteonM2_addsub0000_8_bdd0,
      I2 => U3_CM2(8),
      I3 => U2_hcs(9),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_CM2(4),
      I1 => U3_CM2(6),
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
      INIT => X"9A65"
    )
    port map (
      I0 => U3_CM1(9),
      I1 => U3_spriteonM1_addsub0000_8_bdd0,
      I2 => U3_CM1(8),
      I3 => U2_hcs(9),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_CM1(4),
      I1 => U3_CM1(6),
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
  U3_Madd_tank2rom1s_lut_6_Q : LUT4
    generic map(
      INIT => X"5A69"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(6),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_font4_2_Q,
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_Madd_tank2rom1s_lut(6)
    );
  U3_Madd_tank2rom1s_lut_5_SW0 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_font3_cmp_lt0001,
      I2 => U3_font3_cmp_lt0002,
      O => N358
    );
  U3_Madd_tank2rom1s_lut_5_Q : LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      I0 => U3_font3_cmp_lt0000,
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => U3_Msub_ypix1_Madd_lut(5),
      I3 => N358,
      O => U3_Madd_tank2rom1s_lut(5)
    );
  U3_Madd_tank1rom1s_lut_6_Q : LUT4
    generic map(
      INIT => X"5A69"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(6),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_font2_2_Q,
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_Madd_tank1rom1s_lut(6)
    );
  U3_Madd_tank1rom10s_lut_9_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(9),
      I1 => U3_tank1rom10s_sub0000(8),
      I2 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank1rom10s_lut_9_Q_1148
    );
  U3_Madd_tank1rom10s_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank1rom10s_lut_8_Q_1147
    );
  U3_Madd_tank1rom10s_lut_5_SW0 : LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(2),
      O => N360
    );
  U3_Madd_tank1rom10s_lut_5_Q : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => U3_Msub_ypix1_Madd_lut(5),
      I2 => U3_RMht1(5),
      I3 => N360,
      O => U3_Madd_tank1rom10s_lut_5_Q_1145
    );
  U3_Madd_tank2rom10s_lut_9_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(9),
      I1 => U3_tank1rom10s_sub0000(8),
      I2 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank2rom10s_lut_9_Q_1175
    );
  U3_Madd_tank2rom10s_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_tank1rom10s_sub0000(8),
      I1 => U3_tank1rom10s_sub0001_10_bdd0,
      O => U3_Madd_tank2rom10s_lut_8_Q_1174
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
  U3_Msub_rom_pix2_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U3_C2(4),
      O => U3_Msub_rom_pix2_Madd_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U2_hcs(9),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U2_hcs(6),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C1(8),
      I1 => U2_hcs(9),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C1(4),
      I1 => U2_hcs(6),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C2(8),
      I1 => U3_C2(9),
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
      INIT => X"69C3"
    )
    port map (
      I0 => U3_C2(4),
      I1 => U3_C2(6),
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
      I0 => screenstate_present_state_FSM_FFd1_2478,
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
      I0 => ld_0_OBUF_2334,
      I1 => who_present_state_FSM_FFd1_2609,
      I2 => who_present_state_FSM_FFd2_2611,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RM1_and0000
    );
  U3_CM2_9_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(9),
      O => U3_CM2_9_and0001
    );
  U3_CM2_9_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(9),
      O => U3_CM2_9_and0000
    );
  U3_CM2_8_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(8),
      O => U3_CM2_8_and0001
    );
  U3_CM2_8_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(8),
      O => U3_CM2_8_and0000
    );
  U3_CM2_7_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(7),
      O => U3_CM2_7_and0001
    );
  U3_CM2_7_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(7),
      O => U3_CM2_7_and0000
    );
  U3_CM2_6_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(6),
      O => U3_CM2_6_and0001
    );
  U3_CM2_6_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(6),
      O => U3_CM2_6_and0000
    );
  U3_CM2_5_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(5),
      O => U3_CM2_5_and0001
    );
  U3_CM2_5_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(5),
      O => U3_CM2_5_and0000
    );
  U3_CM2_4_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(4),
      O => U3_CM2_4_and0001
    );
  U3_CM2_4_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(4),
      O => U3_CM2_4_and0000
    );
  U3_CM2_3_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(3),
      O => U3_CM2_3_and0001
    );
  U3_CM2_3_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(3),
      O => U3_CM2_3_and0000
    );
  U3_CM2_2_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(2),
      O => U3_CM2_2_and0001
    );
  U3_CM2_2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(2),
      O => U3_CM2_2_and0000
    );
  U3_CM2_1_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(1),
      O => U3_CM2_1_and0001
    );
  U3_CM2_1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM2_sub0000_1(1),
      O => U3_CM2_1_and0000
    );
  U3_CM2_0_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_C2(0),
      O => U3_CM2_0_and0001
    );
  U3_CM2_0_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_C2(0),
      O => U3_CM2_0_and0000
    );
  U3_CM1_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U3_Mhorz_1580,
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => who_present_state_FSM_FFd1_2609,
      O => U3_CM1_and0000
    );
  U3_CM1_9_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(9),
      O => U3_CM1_9_and0001
    );
  U3_CM1_9_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(9),
      O => U3_CM1_9_and0000
    );
  U3_CM1_8_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(8),
      O => U3_CM1_8_and0001
    );
  U3_CM1_8_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(8),
      O => U3_CM1_8_and0000
    );
  U3_CM1_7_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(7),
      O => U3_CM1_7_and0001
    );
  U3_CM1_7_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(7),
      O => U3_CM1_7_and0000
    );
  U3_CM1_6_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(6),
      O => U3_CM1_6_and0001
    );
  U3_CM1_6_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(6),
      O => U3_CM1_6_and0000
    );
  U3_CM1_5_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(5),
      O => U3_CM1_5_and0001
    );
  U3_CM1_5_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(5),
      O => U3_CM1_5_and0000
    );
  U3_CM1_4_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(4),
      O => U3_CM1_4_and0001
    );
  U3_CM1_4_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(4),
      O => U3_CM1_4_and0000
    );
  U3_CM1_3_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(3),
      O => U3_CM1_3_and0001
    );
  U3_CM1_3_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(3),
      O => U3_CM1_3_and0000
    );
  U3_CM1_2_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(2),
      O => U3_CM1_2_and0001
    );
  U3_CM1_2_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(2),
      O => U3_CM1_2_and0000
    );
  U3_CM1_1_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(1),
      O => U3_CM1_1_and0001
    );
  U3_CM1_1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(1),
      O => U3_CM1_1_and0000
    );
  U3_CM1_0_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(0),
      O => U3_CM1_0_and0001
    );
  U3_CM1_0_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => U3_CM1_add0000_0(0),
      O => U3_CM1_0_and0000
    );
  U3_destroy2_mux00173_SW0 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_spriteonGrnd_and0000117_2127,
      I1 => U2_vcs(9),
      I2 => U3_spriteonB2,
      I3 => U3_spriteonGrnd_and000020_2129,
      O => N01
    );
  U3_destroy2_mux001766_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U3_spriteonGrnd,
      I1 => U3_blue_and0002,
      I2 => U3_spriteonM1,
      I3 => U3_spriteonM2,
      O => N362
    );
  U3_destroy2_mux001766 : LUT4
    generic map(
      INIT => X"32FA"
    )
    port map (
      I0 => N362,
      I1 => ld_1_OBUF_2335,
      I2 => U3_N29,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_destroy2_mux001766_2046
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(2),
      I2 => nes_counter_reg_cmp_eq0000112_2418,
      I3 => nes_counter_reg_cmp_eq0000125_2419,
      O => ja2_OBUF_2323
    );
  U3_RMht1_not000110 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => who_present_state_FSM_FFd1_2609,
      I2 => ld_6_OBUF_2340,
      I3 => who_present_state_FSM_FFd2_2611,
      O => U3_RMht1_not000110_1962
    );
  U3_spriteonGrnd_and0000103_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U2_hcs(6),
      I2 => U2_hcs(7),
      O => N364
    );
  U3_spriteonGrnd_and0000103 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(8),
      I1 => N364,
      I2 => U2_hcs(4),
      I3 => U2_hcs(9),
      O => U3_spriteonGrnd_and0000103_2126
    );
  U3_spriteonB5_and000039_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U2_hcs(5),
      I1 => U3_spriteonB5_and000012_2123,
      I2 => U2_hcs(4),
      O => N366
    );
  U3_spriteonB5_and000039 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(7),
      I2 => U2_hcs(8),
      I3 => N366,
      O => U3_spriteonB5_and000039_2124
    );
  U3_spriteonB1_and0000131 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_spriteonB1_cmp_lt0000,
      I1 => U2_vcs(8),
      I2 => U2_vcs(9),
      I3 => U3_spriteonB1_and0000115_2098,
      O => U3_N89
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
      O => M2_0_bdd4
    );
  M1_29_31 : LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(1),
      O => M1_29_bdd5
    );
  M1_27_21 : LUT4
    generic map(
      INIT => X"0905"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      I3 => sig_tank1rom10s(1),
      O => M1_27_bdd4
    );
  M1_31_75 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => M1_31_62_74,
      I1 => rom1_addr(3),
      I2 => rom1_addr(4),
      I3 => M1_31_25,
      O => M1_31_Q
    );
  selector_blue_0_21_SW0 : LUT4
    generic map(
      INIT => X"AF23"
    )
    port map (
      I0 => U3_B_785,
      I1 => U3_spriteonM2,
      I2 => U3_N0,
      I3 => U3_destroy2_2041,
      O => N370
    );
  selector_green_0_98 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U2_vidon_and000039_779,
      I1 => U2_vidon_and0000117_774,
      I2 => screenstate_present_state_FSM_FFd1_2478,
      O => selector_green_0_98_2486
    );
  M1a_23_0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      O => M1a_23_0_102
    );
  M1a_23_4 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => M1a_23_0_102,
      I3 => rom1_addr(3),
      O => M1a_23_4_104
    );
  M2_3_5 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(3),
      I2 => M2_0_bdd13,
      I3 => rom1_addr(2),
      O => M2_3_5_176
    );
  M2_2_31 : LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(1),
      O => M2_2_bdd5
    );
  M2_0_81 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd18,
      I3 => M2_0_bdd4,
      O => M2_0_bdd2
    );
  M2a_6_51 : LUT4
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => M2a_6_32,
      I1 => rom1_addr(1),
      I2 => rom1_addr(3),
      I3 => M2a_4_36_246,
      O => M2a_6_51_258
    );
  U3_green_2_32_SW0 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => U3_N0,
      I1 => U3_B_785,
      I2 => U3_spriteonM1,
      I3 => U3_destroy1_2035,
      O => N153
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
  U3_blue_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy(9),
      I2 => U3_M1a_mux0000,
      I3 => U3_N90,
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
      I3 => U3_N90,
      O => U3_B_and0000
    );
  U3_green_2_112 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_spriteonGrnd,
      I2 => U3_spriteonB1,
      I3 => U3_spriteonB2,
      O => U3_green_2_112_2062
    );
  selector_red_1_9_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_spriteonB2,
      I1 => U3_spriteonB3,
      I2 => U3_spriteonB4,
      O => N372
    );
  U3_Mmux_M1a_mux0000_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N376,
      O => U3_Mmux_M1a_mux0000_92_1649
    );
  U3_Mmux_M1_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N378,
      O => U3_Mmux_M1_mux0000_73_1606
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
      I0 => sig_tank1,
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
      I3 => U3_rise_2072,
      O => N382
    );
  U3_RMcnt_Q_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F606"
    )
    port map (
      I0 => U3_RMcnt(3),
      I1 => N382,
      I2 => U3_RMcnt_and0000,
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
      I3 => U3_rise2_2073,
      O => N384
    );
  U3_RMcnt2_Q_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F606"
    )
    port map (
      I0 => U3_RMcnt2(3),
      I1 => N384,
      I2 => U3_RMcnt2_and0000,
      I3 => U3_RMht2(3),
      O => U3_RMcnt2_Q_mux0000(3)
    );
  U3_Mhorz_not0001 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => who_present_state_FSM_FFd1_2609,
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => U3_N14,
      I3 => U3_N13,
      O => U3_Mhorz_not0001_1589
    );
  M2a_23_SW1 : LUT4
    generic map(
      INIT => X"96B1"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N390
    );
  M1_9_1 : LUT4
    generic map(
      INIT => X"A875"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M1_9_1_86
    );
  M1_28_12_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      O => N396
    );
  M1_28_12 : LUT4
    generic map(
      INIT => X"FF26"
    )
    port map (
      I0 => N396,
      I1 => sig_tank1rom10s(3),
      I2 => M1_21_bdd5,
      I3 => rom1_addr(4),
      O => M1_28_12_50
    );
  M2_3_203_SW0 : LUT4
    generic map(
      INIT => X"566E"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N222
    );
  M2_18_11 : LUT4
    generic map(
      INIT => X"7DFF"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => M2_18_bdd0
    );
  M2a_3_1 : LUT4
    generic map(
      INIT => X"5060"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => M2a_3_1_238
    );
  M1_30_104_SW0 : LUT4
    generic map(
      INIT => X"8786"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => M1_22_bdd9,
      O => N400
    );
  M1_30_104 : LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => N400,
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(3),
      O => M1_30_104_68
    );
  U3_Madd_tank2rom10s_lut_6_Q : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => U3_tank1rom10s_sub0001(6),
      I1 => U3_RMht2(4),
      I2 => U3_RMht2(3),
      I3 => U3_RMht2(5),
      O => U3_Madd_tank2rom10s_lut_6_Q_1173
    );
  M2_11_11 : LUT4
    generic map(
      INIT => X"37B6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => M2_11_bdd0
    );
  M2_3_24 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => M2_3_19_174,
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      O => M2_3_24_175
    );
  M1_22_11 : LUT4
    generic map(
      INIT => X"6C6E"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M1_21_bdd5,
      O => M1_22_bdd0
    );
  U3_Mhorz_or00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => screenstate_present_state_FSM_FFd1_2478,
      I2 => who_present_state_FSM_FFd1_2609,
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
      O => M1_23_30_25
    );
  M2_10_81 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => M2_10_bdd14,
      O => M2_10_8
    );
  U3_Mmux_M2_mux0000_71 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N406,
      O => U3_Mmux_M2_mux0000_71_1664
    );
  U3_Mmux_M2_mux0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => N408,
      O => U3_Mmux_M2_mux0000_8_1670
    );
  U3_Mmux_M2_mux0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N410,
      O => U3_Mmux_M2_mux0000_9_1677
    );
  U3_Mmux_M2_mux0000_73 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_14_bdd1,
      I2 => N412,
      O => U3_Mmux_M2_mux0000_73_1666
    );
  U3_spriteonB1_and000052 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U2_hcs(9),
      I1 => N420,
      I2 => U3_N89,
      I3 => U2_hcs(8),
      O => U3_spriteonB1
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"5A69"
    )
    port map (
      I0 => U3_C1(6),
      I1 => U3_C1(4),
      I2 => U2_hcs(6),
      I3 => U3_C1(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(6)
    );
  x7_an_1_mux000148_SW0_SW0 : LUT4
    generic map(
      INIT => X"DFBF"
    )
    port map (
      I0 => U3_Msub_font4_sub0002_cy(3),
      I1 => U3_RMht2(5),
      I2 => x7_an_1_mux000110_2677,
      I3 => U3_RMht2(4),
      O => N422
    );
  x7_an_1_mux000148_SW0 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => U3_Madd_tank1ascii1s_add0000_cy_5_bdd2,
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(5),
      I3 => N422,
      O => N286
    );
  M1a_27_152_SW0_SW0 : LUT4
    generic map(
      INIT => X"6071"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M1a_27_52_114,
      I3 => M1_22_bdd4,
      O => N424
    );
  M2a_4_9 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(3),
      O => M2a_4_9_251
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
  M1_28_21 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      O => M1_28_bdd1
    );
  M1_22_27 : LUT4
    generic map(
      INIT => X"99D9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => M1_22_27_17
    );
  M1a_26_55 : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd12,
      O => M1a_26_55_112
    );
  selector_blue_0_53_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N370,
      I1 => U3_blue_and0003,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB5,
      O => N434
    );
  selector_blue_0_53 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => who_present_state_FSM_FFd1_2609,
      I2 => U3_spriteonB2,
      I3 => N434,
      O => selector_blue_0_53_2481
    );
  U3_green_1_116_SW0 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => U3_tank1Angle1s_and000010_2225,
      I1 => U3_tank1Angle1s_and000018_2226,
      I2 => U2_hcs(6),
      I3 => N61,
      O => N436
    );
  U3_green_1_116 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => U3_N82,
      I1 => U3_tank1Angle10s,
      I2 => N436,
      I3 => U3_B_785,
      O => U3_green_1_116_2060
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
  U3_Mmux_M1_mux0000_83 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => N438,
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(0),
      I3 => N236,
      O => U3_Mmux_M1_mux0000_83_1613
    );
  selector_green_0_58_SW0 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB4,
      I2 => N440,
      I3 => who_present_state_FSM_FFd1_2609,
      O => N294
    );
  M2a_24_69_SW0 : LUT4
    generic map(
      INIT => X"96B3"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N444
    );
  M2a_24_69 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N444,
      O => M2a_24_Q
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"5A69"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U3_C2(4),
      I2 => U3_C2(6),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"5A69"
    )
    port map (
      I0 => U3_C2(6),
      I1 => U3_C2(4),
      I2 => U2_hcs(6),
      I3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(6)
    );
  buttons_gameLeft1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
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
      I0 => screenstate_present_state_FSM_FFd1_2478,
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
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => bounce_delay3(1),
      I2 => bounce_delay2(1),
      I3 => bounce_delay1(1),
      O => sig_gameB
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
  M1_22_42 : LUT4
    generic map(
      INIT => X"FF93"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M1_22_bdd9,
      O => M1_22_bdd7
    );
  M2_4_61 : LUT4
    generic map(
      INIT => X"28A0"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2_4_bdd10
    );
  M2_10_82 : LUT4
    generic map(
      INIT => X"28A0"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2_10_bdd14
    );
  selector_blue_1_46_SW1 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => N268,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB2,
      I3 => U3_blue_and0002,
      O => N448
    );
  selector_blue_1_46 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => N448,
      I1 => U2_vcs(9),
      I2 => U3_spriteonGrnd_and000020_2129,
      I3 => U3_spriteonGrnd_and0000117_2127,
      O => selector_blue_1_46_2483
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
  selector_green_1_21_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vidon_and000039_779,
      I1 => U3_N29,
      I2 => U3_blue_and0002,
      I3 => U2_vidon_and0000117_774,
      O => N296
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
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(5),
      O => U3_RMcnt_5_and0001
    );
  U3_RMcnt_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(5),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_5_and0000
    );
  U3_RMcnt_4_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(4),
      O => U3_RMcnt_4_and0001
    );
  U3_RMcnt_4_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(4),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_4_and0000
    );
  U3_RMcnt_3_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(3),
      O => U3_RMcnt_3_and0001
    );
  U3_RMcnt_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(3),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_3_and0000
    );
  U3_RMcnt_2_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(2),
      O => U3_RMcnt_2_and0001
    );
  U3_RMcnt_2_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(2),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_2_and0000
    );
  U3_RMcnt_1_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(1),
      O => U3_RMcnt_1_and0001
    );
  U3_RMcnt_1_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(1),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_1_and0000
    );
  U3_RMcnt_0_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank2,
      I3 => U3_RMht1(0),
      O => U3_RMcnt_0_and0001
    );
  U3_RMcnt_0_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht1(0),
      I2 => sig_tank2,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt_0_and0000
    );
  U3_RMcnt2_5_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(5),
      O => U3_RMcnt2_5_and0001
    );
  U3_RMcnt2_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(5),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_5_and0000
    );
  U3_RMcnt2_4_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(4),
      O => U3_RMcnt2_4_and0001
    );
  U3_RMcnt2_4_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(4),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_4_and0000
    );
  U3_RMcnt2_3_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(3),
      O => U3_RMcnt2_3_and0001
    );
  U3_RMcnt2_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(3),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_3_and0000
    );
  U3_RMcnt2_2_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(2),
      O => U3_RMcnt2_2_and0001
    );
  U3_RMcnt2_2_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(2),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_2_and0000
    );
  U3_RMcnt2_1_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(1),
      O => U3_RMcnt2_1_and0001
    );
  U3_RMcnt2_1_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(1),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_1_and0000
    );
  U3_RMcnt2_0_and00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_0_OBUF_2334,
      I2 => sig_tank1,
      I3 => U3_RMht2(0),
      O => U3_RMcnt2_0_and0001
    );
  U3_RMcnt2_0_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ld_0_OBUF_2334,
      I1 => U3_RMht2(0),
      I2 => sig_tank1,
      I3 => screenstate_present_state_FSM_FFd1_2478,
      O => U3_RMcnt2_0_and0000
    );
  U3_RMht1_not00011190_F_SW0 : LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      I0 => ld_5_OBUF_2339,
      I1 => ld_6_OBUF_2340,
      I2 => U3_RMht1(4),
      I3 => N202,
      O => N450
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
      O => N452
    );
  U3_font4_3_62_SW1 : LUT4
    generic map(
      INIT => X"818F"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_RMht2(2),
      I2 => U3_font3_cmp_lt0001,
      I3 => N53,
      O => N456
    );
  M2a_6_103_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_6_bdd1,
      I2 => rom1_addr(1),
      I3 => M2a_6_bdd1,
      O => N458
    );
  M2a_6_103 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2a_6_51_258,
      I2 => N414,
      I3 => N458,
      O => M2a_6_Q
    );
  U3_Mmux_M2a_mux0000_72 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => M2a_22_Q,
      I2 => rom1_addr(4),
      I3 => N390,
      O => U3_Mmux_M2a_mux0000_72_1695
    );
  U3_RMht1_not00011190_F : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => who_present_state_FSM_FFd2_2611,
      I1 => who_present_state_FSM_FFd1_2609,
      I2 => screenstate_present_state_FSM_FFd1_2478,
      I3 => N450,
      O => N206
    );
  M2_22_1 : LUT4
    generic map(
      INIT => X"A875"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M2_22_1_163
    );
  M1a_3_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => M1a_3_2_124
    );
  M2_21_11 : LUT4
    generic map(
      INIT => X"24FE"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M2_21_bdd0
    );
  M2a_10_1 : LUT4
    generic map(
      INIT => X"F363"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => M1a_12_bdd0
    );
  M1a_3_1 : LUT4
    generic map(
      INIT => X"658C"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M1a_3_1_123
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
      O => M1_3_2_77
    );
  M2a_30_19 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => M2a_30_19_236
    );
  M2_4_133 : LUT4
    generic map(
      INIT => X"7F91"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => M2_4_133_181
    );
  M1_3_21 : LUT3
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
      INIT => X"F2F3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => M1_25_bdd1
    );
  U3_Mmux_M2a_mux0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1a_4_bdd0,
      I2 => N464,
      O => U3_Mmux_M2a_mux0000_8_1700
    );
  M2_10_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      O => M1_10_bdd8
    );
  M2_8_15_SW0 : LUT4
    generic map(
      INIT => X"9091"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(3),
      I3 => M2_0_bdd20,
      O => N466
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
      O => M2a_6_32
    );
  U3_Mmux_M1_mux0000_83_SW1 : LUT4
    generic map(
      INIT => X"6EFD"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N438
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
  M1_21_47_SW0_SW0 : LUT4
    generic map(
      INIT => X"BD9F"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_21_bdd5,
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => N392
    );
  M2_1_24 : LUT4
    generic map(
      INIT => X"F9FF"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd20,
      I3 => sig_tank1rom10s(0),
      O => M2_1_bdd1
    );
  buttons_gameA1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
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
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => who_present_state_FSM_FFd1_2609,
      O => U3_RMcnt_and0000
    );
  U3_RMcnt2_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sig_gameA,
      I1 => who_present_state_FSM_FFd2_2611,
      I2 => who_present_state_FSM_FFd1_2609,
      O => U3_RMcnt2_and0000
    );
  U3_tank1_angle_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U3_RMht1(4),
      I1 => U3_RMht1(1),
      I2 => U3_RMht1(2),
      I3 => U3_RMht1(3),
      O => sig_tank1_angle_calc_4_Q
    );
  M2_3_41 : LUT4
    generic map(
      INIT => X"6CFF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => M2_3_bdd7
    );
  M2_0_51 : LUT4
    generic map(
      INIT => X"FF93"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd6,
      O => M2_0_bdd9
    );
  M2_0_102 : LUT4
    generic map(
      INIT => X"FF93"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd20,
      O => M2_0_bdd18
    );
  M1_21_52 : LUT4
    generic map(
      INIT => X"28A0"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M1_21_bdd8
    );
  selector_blue_1_46_SW0 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => U3_spriteonB3,
      I1 => U3_spriteonB4,
      I2 => U3_green_1_138_2061,
      I3 => who_present_state_FSM_FFd1_2609,
      O => N268
    );
  selector_green_0_58_SW0_SW0 : LUT4
    generic map(
      INIT => X"0405"
    )
    port map (
      I0 => U3_spriteonB5,
      I1 => U3_destroy1_2035,
      I2 => N370,
      I3 => U3_spriteonM1,
      O => N440
    );
  M2_10_11 : LUT4
    generic map(
      INIT => X"19FA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(1),
      O => M2_10_bdd0
    );
  U3_Madd_tank2rom1s_lut_7_Q : LUT4
    generic map(
      INIT => X"C66C"
    )
    port map (
      I0 => U3_font3_cmp_lt0000,
      I1 => U3_tank1rom10s_sub0001(7),
      I2 => N456,
      I3 => U3_RMht2(3),
      O => U3_Madd_tank2rom1s_lut(7)
    );
  M1_3_1 : LUT4
    generic map(
      INIT => X"9581"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => M1_3_1_76
    );
  M2a_11_37 : LUT4
    generic map(
      INIT => X"3B06"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M2a_11_37_218
    );
  M1a_14_11 : LUT4
    generic map(
      INIT => X"9818"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => M1a_14_bdd0
    );
  M2a_6_96_SW0 : LUT4
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => N414
    );
  M2_12_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      O => M1_10_bdd7
    );
  M1_10_1 : LUT4
    generic map(
      INIT => X"B0D1"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => M1_10_1_3
    );
  U3_C2_5_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => U3_q(19),
      CE => U3_C2_not0001,
      D => U3_Result_5_4,
      Q => U3_C2_5_1_820
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_2343
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
      I => U3_Q_0_1811,
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
  U3_Msub_tank1rom10s_sub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_Msub_tank1rom10s_sub0000_lut(9)
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
  nes_left_reg_not00011_INV_0 : INV
    port map (
      I => ja1_IBUF_2321,
      O => nes_left_reg_not0001
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_2310,
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
  U3_tank1rom10s_sub0001_4_1_INV_0 : INV
    port map (
      I => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => U3_tank1rom10s_sub0001(4)
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
  M2_4_218 : MUXF5
    port map (
      I0 => N486,
      I1 => N487,
      S => rom1_addr(1),
      O => M2_4_Q
    );
  M2_4_218_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_4_46_183,
      I2 => M2_4_36_182,
      I3 => M1_0_bdd2,
      O => N486
    );
  M2_4_218_G : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_4_122_180,
      I2 => M2_4_133_181,
      I3 => M2_4_bdd0,
      O => N487
    );
  U3_font2_2_1 : MUXF5
    port map (
      I0 => N488,
      I1 => N489,
      S => U3_RMht1(5),
      O => U3_font2_2_Q
    );
  U3_font2_2_1_F : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      O => N488
    );
  U3_font2_2_1_G : LUT4
    generic map(
      INIT => X"2962"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(1),
      O => N489
    );
  selector_blue_1_88 : MUXF5
    port map (
      I0 => N490,
      I1 => N491,
      S => screenstate_present_state_FSM_FFd1_2478,
      O => blue_1_OBUF_2284
    );
  selector_blue_1_88_F : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => vidon,
      I1 => title_spriteon,
      I2 => sig_MTitle(1),
      O => N490
    );
  selector_blue_1_88_G : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => vidon,
      I1 => selector_blue_1_17_2482,
      I2 => U3_N29,
      I3 => selector_blue_1_46_2483,
      O => N491
    );
  selector_blue_0_120 : MUXF5
    port map (
      I0 => N492,
      I1 => N493,
      S => screenstate_present_state_FSM_FFd1_2478,
      O => blue_0_OBUF_2283
    );
  selector_blue_0_120_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vidon,
      I1 => sig_MTitle(0),
      I2 => title_spriteon,
      O => N492
    );
  selector_blue_0_120_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_N87,
      I2 => selector_blue_0_53_2481,
      O => N493
    );
  M2_2_70 : MUXF5
    port map (
      I0 => N494,
      I1 => N495,
      S => rom1_addr(3),
      O => M2_2_70_170
    );
  M2_2_70_F : LUT4
    generic map(
      INIT => X"0246"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_2_bdd5,
      I3 => M2_0_bdd18,
      O => N494
    );
  M2_2_70_G : LUT4
    generic map(
      INIT => X"6664"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd20,
      I3 => rom1_addr(2),
      O => N495
    );
  U3_Result_5_2215 : MUXF5
    port map (
      I0 => N496,
      I1 => N497,
      S => U3_RMht2(0),
      O => U3_Result_5_2
    );
  U3_Result_5_2215_F : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => sig_gameDown,
      I2 => U3_RMht2(1),
      I3 => U3_Result_5_236_2013,
      O => N496
    );
  U3_Result_5_2215_G : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht2(5),
      I2 => N212,
      O => N497
    );
  U3_Result_5_1215 : MUXF5
    port map (
      I0 => N498,
      I1 => N499,
      S => U3_RMht1(0),
      O => U3_Result_5_1
    );
  U3_Result_5_1215_F : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => sig_gameDown,
      I2 => U3_RMht1(1),
      I3 => U3_Result_5_136_2011,
      O => N498
    );
  U3_Result_5_1215_G : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => sig_gameDown,
      I1 => U3_RMht1(5),
      I2 => N214,
      O => N499
    );
  M1a_23_58 : MUXF5
    port map (
      I0 => N500,
      I1 => N501,
      S => rom1_addr(4),
      O => M1a_23_Q
    );
  M1a_23_58_F : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => M1a_23_4_104,
      I1 => M1a_23_15_103,
      I2 => rom1_addr(1),
      I3 => M1a_22_bdd0,
      O => N500
    );
  M1a_23_58_G : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_23_bdd0,
      I2 => rom1_addr(1),
      I3 => rom1_addr(2),
      O => N501
    );
  M2_2_147 : MUXF5
    port map (
      I0 => N502,
      I1 => N503,
      S => rom1_addr(4),
      O => M2_2_Q
    );
  M2_2_147_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_2_70_170,
      I1 => M1a_23_0_102,
      I2 => M2_2_111_169,
      O => N502
    );
  M2_2_147_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N503
    );
  M2_23_Q : MUXF5
    port map (
      I0 => N504,
      I1 => N505,
      S => sig_tank1rom10s(1),
      O => M2_23_Q_165
    );
  M2_23_F : LUT4
    generic map(
      INIT => X"5953"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N504
    );
  M2_23_G : LUT4
    generic map(
      INIT => X"C3C5"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N505
    );
  M1a_19_30 : MUXF5
    port map (
      I0 => N506,
      I1 => N507,
      S => sig_tank1rom10s(2),
      O => M1a_19_Q
    );
  M1a_19_30_F : LUT4
    generic map(
      INIT => X"90B3"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N506
    );
  M1a_19_30_G : LUT4
    generic map(
      INIT => X"5171"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N507
    );
  M2_4_122 : MUXF5
    port map (
      I0 => N508,
      I1 => N509,
      S => sig_tank1rom10s(0),
      O => M2_4_122_180
    );
  M2_4_122_F : LUT4
    generic map(
      INIT => X"92FF"
    )
    port map (
      I0 => M2_0_bdd13,
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(3),
      O => N508
    );
  M2_4_122_G : LUT4
    generic map(
      INIT => X"8E77"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(3),
      O => N509
    );
  M2_30_71 : MUXF5
    port map (
      I0 => N510,
      I1 => N511,
      S => sig_tank1rom10s(3),
      O => M2_30_Q
    );
  M2_30_71_F : LUT4
    generic map(
      INIT => X"933E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N510
    );
  M2_30_71_G : LUT4
    generic map(
      INIT => X"1A08"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(0),
      I3 => M1_10_bdd8,
      O => N511
    );
  M2_9_69 : MUXF5
    port map (
      I0 => N512,
      I1 => N513,
      S => sig_tank1rom10s(0),
      O => M2_9_69_213
    );
  M2_9_69_F : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => M2_0_bdd13,
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(2),
      O => N512
    );
  M2_9_69_G : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => M2_0_bdd6,
      O => N513
    );
  M2a_9_67_SW0 : MUXF5
    port map (
      I0 => N514,
      I1 => N515,
      S => sig_tank1rom10s(1),
      O => N338
    );
  M2a_9_67_SW0_F : LUT4
    generic map(
      INIT => X"FF8B"
    )
    port map (
      I0 => M2_10_bdd14,
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N514
    );
  M2a_9_67_SW0_G : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => N515
    );
  M2a_10_28 : MUXF5
    port map (
      I0 => N516,
      I1 => N517,
      S => sig_tank1rom10s(1),
      O => M2a_10_28_215
    );
  M2a_10_28_F : LUT4
    generic map(
      INIT => X"9111"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(2),
      I3 => M2_0_bdd13,
      O => N516
    );
  M2a_10_28_G : LUT3
    generic map(
      INIT => X"C2"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => N517
    );
  M1a_21_25 : MUXF5
    port map (
      I0 => N518,
      I1 => N519,
      S => sig_tank1rom10s(1),
      O => M1a_21_25_98
    );
  M1a_21_25_F : LUT4
    generic map(
      INIT => X"9111"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => N518
    );
  M1a_21_25_G : LUT3
    generic map(
      INIT => X"C2"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => N519
    );
  M2_3_218 : MUXF5
    port map (
      I0 => N520,
      I1 => N521,
      S => rom1_addr(1),
      O => M2_3_Q
    );
  M2_3_218_F : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M2_3_24_175,
      I2 => N222,
      I3 => M2_3_5_176,
      O => N520
    );
  M2_3_218_G : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => rom1_addr(3),
      I2 => N222,
      I3 => M2_3_94_177,
      O => N521
    );
  M2_0_27 : MUXF5
    port map (
      I0 => N522,
      I1 => N523,
      S => rom1_addr(3),
      O => M2_0_27_131
    );
  M2_0_27_F : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd6,
      O => N522
    );
  M2_0_27_G : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd6,
      O => N523
    );
  U3_spriteonB2_and000041_SW0 : MUXF5
    port map (
      I0 => N524,
      I1 => N525,
      S => U2_vcs(8),
      O => N326
    );
  U3_spriteonB2_and000041_SW0_F : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(7),
      I2 => U2_vcs(6),
      I3 => U3_spriteonB1_cmp_lt0000212_2104,
      O => N524
    );
  U3_spriteonB2_and000041_SW0_G : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U3_spriteonB2_and00005_2108,
      I2 => U2_vcs(9),
      O => N525
    );
  x7_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => N526,
      I1 => N527,
      S => x7_clkdiv(19),
      O => x7_digit(2)
    );
  x7_Mmux_digit_2_f5_1_F : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U3_RMht2(2),
      I1 => U3_RMht2(1),
      I2 => x7_clkdiv(18),
      O => N526
    );
  x7_Mmux_digit_2_f5_1_G : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      I2 => x7_clkdiv(18),
      O => N527
    );
  x7_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => N528,
      I1 => N529,
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
      O => N528
    );
  x7_Mmux_digit_2_f5_2_G : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => x7_clkdiv(18),
      I1 => U3_RMht1(1),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(2),
      O => N529
    );
  M2_1_63 : MUXF5
    port map (
      I0 => N530,
      I1 => N531,
      S => sig_tank1rom10s(0),
      O => M2_1_63_156
    );
  M2_1_63_F : LUT4
    generic map(
      INIT => X"28A8"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => M2_0_bdd6,
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(2),
      O => N530
    );
  M2_1_63_G : LUT4
    generic map(
      INIT => X"0C09"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => M2_0_bdd6,
      I3 => sig_tank1rom10s(1),
      O => N531
    );
  M2a_7_53 : MUXF5
    port map (
      I0 => N532,
      I1 => N533,
      S => sig_tank1rom10s(0),
      O => M2a_7_53_261
    );
  M2a_7_53_F : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => M2_0_bdd13,
      O => N532
    );
  M2a_7_53_G : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N533
    );
  M2a_26_31 : MUXF5
    port map (
      I0 => N534,
      I1 => N535,
      S => sig_tank1rom10s(3),
      O => M2a_26_Q
    );
  M2a_26_31_F : LUT4
    generic map(
      INIT => X"813D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N534
    );
  M2a_26_31_G : LUT4
    generic map(
      INIT => X"0424"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N535
    );
  M2_8_53 : MUXF5
    port map (
      I0 => N536,
      I1 => N537,
      S => sig_tank1rom10s(3),
      O => M2_8_53_210
    );
  M2_8_53_F : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => M2_0_bdd20,
      O => N536
    );
  M2_8_53_G : LUT4
    generic map(
      INIT => X"0246"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd9,
      I3 => M2_3_bdd7,
      O => N537
    );
  M2a_8_94_SW0 : MUXF5
    port map (
      I0 => N538,
      I1 => N539,
      S => sig_tank1rom10s(1),
      O => N276
    );
  M2a_8_94_SW0_F : LUT4
    generic map(
      INIT => X"EBAB"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => M2_0_bdd13,
      O => N538
    );
  M2a_8_94_SW0_G : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => N539
    );
  M1a_24_63 : MUXF5
    port map (
      I0 => N540,
      I1 => N541,
      S => rom1_addr(4),
      O => M1a_24_Q
    );
  M1a_24_63_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M1a_24_38_106,
      I1 => M1_24_bdd0,
      I2 => rom1_addr(3),
      O => N540
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
      O => N541
    );
  M1_23_80 : MUXF5
    port map (
      I0 => N542,
      I1 => N543,
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
      I2 => M1_23_22_24,
      I3 => M1_23_30_25,
      O => N542
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
      O => N543
    );
  M1a_25_36_SW0 : MUXF5
    port map (
      I0 => N544,
      I1 => N545,
      S => rom1_addr(3),
      O => N272
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
      O => N544
    );
  M1a_25_36_SW0_G : LUT4
    generic map(
      INIT => X"F2F3"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => M1_22_bdd9,
      O => N545
    );
  M1_8_Q : MUXF5
    port map (
      I0 => N546,
      I1 => N547,
      S => sig_tank1rom10s(2),
      O => M1_8_Q_84
    );
  M1_8_F : LUT4
    generic map(
      INIT => X"4955"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(4),
      O => N546
    );
  M1_8_G : LUT4
    generic map(
      INIT => X"F313"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N547
    );
  M1_26_1 : MUXF5
    port map (
      I0 => N548,
      I1 => N549,
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
      O => N548
    );
  M1_26_1_G : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => M1_21_bdd5,
      O => N549
    );
  M1_30_51 : MUXF5
    port map (
      I0 => N550,
      I1 => N551,
      S => sig_tank1rom10s(0),
      O => M1_30_51_69
    );
  M1_30_51_F : LUT4
    generic map(
      INIT => X"7AFF"
    )
    port map (
      I0 => M1_22_bdd9,
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(1),
      O => N550
    );
  M1_30_51_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(1),
      O => N551
    );
  M1_27_119 : MUXF5
    port map (
      I0 => N552,
      I1 => N553,
      S => sig_tank1rom10s(1),
      O => M1_27_119_42
    );
  M1_27_119_F : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => M1_22_bdd9,
      O => N552
    );
  M1_27_119_G : LUT4
    generic map(
      INIT => X"0086"
    )
    port map (
      I0 => M1_21_bdd5,
      I1 => M1_22_bdd9,
      I2 => rom1_addr(2),
      I3 => sig_tank1rom10s(0),
      O => N553
    );
  M2a_5_151 : MUXF5
    port map (
      I0 => N554,
      I1 => N555,
      S => rom1_addr(4),
      O => M2a_5_Q
    );
  M2a_5_151_F : LUT4
    generic map(
      INIT => X"FF48"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => N330,
      I2 => sig_tank1rom10s(1),
      I3 => M2a_5_125_254,
      O => N554
    );
  M2a_5_151_G : LUT4
    generic map(
      INIT => X"5D04"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N555
    );
  M1a_22_40 : MUXF5
    port map (
      I0 => N556,
      I1 => N557,
      S => rom1_addr(4),
      O => M1a_22_Q
    );
  M1a_22_40_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N350,
      I2 => M1_22_bdd0,
      O => N556
    );
  M1a_22_40_G : LUT4
    generic map(
      INIT => X"5D04"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N557
    );
  M1a_26_131 : MUXF5
    port map (
      I0 => N558,
      I1 => N559,
      S => rom1_addr(4),
      O => M1a_26_Q
    );
  M1a_26_131_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N354,
      I1 => rom1_addr(3),
      I2 => M1_26_bdd0,
      O => N558
    );
  M1a_26_131_G : LUT4
    generic map(
      INIT => X"5D04"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N559
    );
  M2_11_Q : MUXF5
    port map (
      I0 => N560,
      I1 => N561,
      S => sig_tank1rom10s(3),
      O => M2_11_Q_147
    );
  M2_11_F : LUT4
    generic map(
      INIT => X"9483"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N560
    );
  M2_11_G : LUT4
    generic map(
      INIT => X"F360"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N561
    );
  U3_spriteonB1_and000052_SW0 : MUXF5
    port map (
      I0 => N562,
      I1 => N563,
      S => U2_hcs(7),
      O => N420
    );
  U3_spriteonB1_and000052_SW0_F : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => U2_hcs(4),
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      I3 => U3_spriteonB1_and00004_2100,
      O => N562
    );
  U3_spriteonB1_and000052_SW0_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N57,
      I1 => U2_hcs(5),
      I2 => U2_hcs(6),
      O => N563
    );
  M2a_16_63 : MUXF5
    port map (
      I0 => N564,
      I1 => N565,
      S => sig_tank1rom10s(1),
      O => M2a_16_Q
    );
  M2a_16_63_F : LUT4
    generic map(
      INIT => X"D1D9"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N564
    );
  M2a_16_63_G : LUT4
    generic map(
      INIT => X"24D7"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N565
    );
  M2a_13_49 : MUXF5
    port map (
      I0 => N566,
      I1 => N567,
      S => sig_tank1rom10s(1),
      O => M2a_13_Q
    );
  M2a_13_49_F : LUT4
    generic map(
      INIT => X"DD91"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N566
    );
  M2a_13_49_G : LUT4
    generic map(
      INIT => X"24D7"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N567
    );
  M1_29_126 : MUXF5
    port map (
      I0 => N568,
      I1 => N569,
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
      I2 => M1_29_69_63,
      I3 => M1_29_77_64,
      O => N568
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
      O => N569
    );
  M2a_20_41 : MUXF5
    port map (
      I0 => N570,
      I1 => N571,
      S => sig_tank1rom10s(2),
      O => M2a_20_Q
    );
  M2a_20_41_F : LUT4
    generic map(
      INIT => X"CBAC"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N570
    );
  M2a_20_41_G : LUT4
    generic map(
      INIT => X"23BA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => N67,
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => N571
    );
  U3_Mmux_M2_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N572,
      I1 => N573,
      S => sig_tank1rom10s(0),
      O => N410
    );
  U3_Mmux_M2_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"3F1C"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => N572
    );
  U3_Mmux_M2_mux0000_9_SW0_G : LUT4
    generic map(
      INIT => X"6F6C"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => U3_rom_pix2(0),
      O => N573
    );
  U3_Mmux_M2_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N574,
      I1 => N575,
      S => sig_tank1rom10s(1),
      O => N412
    );
  U3_Mmux_M2_mux0000_73_SW0_F : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      O => N574
    );
  U3_Mmux_M2_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"3839"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => U3_rom_pix2(0),
      O => N575
    );
  M1a_24_38 : MUXF5
    port map (
      I0 => N576,
      I1 => N577,
      S => sig_tank1rom10s(1),
      O => M1a_24_38_106
    );
  M1a_24_38_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => M1_22_bdd9,
      I2 => sig_tank1rom10s(2),
      O => N576
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
      O => N577
    );
  M1a_10_42 : MUXF5
    port map (
      I0 => N578,
      I1 => N579,
      S => sig_tank1rom10s(0),
      O => M1a_10_Q
    );
  M1a_10_42_F : LUT4
    generic map(
      INIT => X"4E14"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N578
    );
  M1a_10_42_G : LUT4
    generic map(
      INIT => X"7E13"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N579
    );
  M2_8_142 : MUXF5
    port map (
      I0 => N580,
      I1 => N581,
      S => rom1_addr(4),
      O => M2_8_Q
    );
  M2_8_142_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => M2_8_53_210,
      I1 => rom1_addr(2),
      I2 => N466,
      O => N580
    );
  M2_8_142_G : LUT4
    generic map(
      INIT => X"F889"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N581
    );
  M2a_15_51 : MUXF5
    port map (
      I0 => N582,
      I1 => N583,
      S => sig_tank1rom10s(1),
      O => M2a_15_Q
    );
  M2a_15_51_F : LUT4
    generic map(
      INIT => X"EC75"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => N582
    );
  M2a_15_51_G : LUT4
    generic map(
      INIT => X"24D5"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N583
    );
  M2_28_Q : MUXF5
    port map (
      I0 => N584,
      I1 => N585,
      S => sig_tank1rom10s(3),
      O => M2_28_Q_166
    );
  M2_28_F : LUT4
    generic map(
      INIT => X"475F"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(1),
      O => N584
    );
  M2_28_G : LUT4
    generic map(
      INIT => X"8680"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N585
    );
  U3_Mmux_M1_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N586,
      I1 => N587,
      S => sig_tank1rom10s(3),
      O => N378
    );
  U3_Mmux_M1_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"FF26"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(2),
      O => N586
    );
  U3_Mmux_M1_mux0000_73_SW0_G : LUT4
    generic map(
      INIT => X"33D2"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N587
    );
  U3_Mmux_M2_mux0000_8_SW0 : MUXF5
    port map (
      I0 => N588,
      I1 => N589,
      S => sig_tank1rom10s(0),
      O => N408
    );
  U3_Mmux_M2_mux0000_8_SW0_F : LUT4
    generic map(
      INIT => X"7E7C"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => U3_rom_pix2(0),
      O => N588
    );
  U3_Mmux_M2_mux0000_8_SW0_G : LUT4
    generic map(
      INIT => X"6C6D"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => U3_rom_pix2(0),
      O => N589
    );
  U3_Mmux_M1a_mux0000_73_SW0 : MUXF5
    port map (
      I0 => N590,
      I1 => N591,
      S => sig_tank1rom10s(3),
      O => N316
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : LUT4
    generic map(
      INIT => X"8292"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => U3_rom_pix1(0),
      O => N590
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
      O => N591
    );
  U3_Mmux_M2_mux0000_71_SW0 : MUXF5
    port map (
      I0 => N592,
      I1 => N593,
      S => sig_tank1rom10s(0),
      O => N406
    );
  U3_Mmux_M2_mux0000_71_SW0_F : LUT4
    generic map(
      INIT => X"83E1"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => U3_rom_pix2(0),
      O => N592
    );
  U3_Mmux_M2_mux0000_71_SW0_G : LUT4
    generic map(
      INIT => X"D60C"
    )
    port map (
      I0 => U3_rom_pix2(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N593
    );
  M1a_1_Q : MUXF5
    port map (
      I0 => N594,
      I1 => N595,
      S => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => M1a_1_Q_95
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
      O => N594
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
      O => N595
    );
  M2a_22_f5 : MUXF5
    port map (
      I0 => N596,
      I1 => N597,
      S => sig_tank1rom10s(0),
      O => M2a_22_Q
    );
  M2a_22_f5_F : LUT4
    generic map(
      INIT => X"781D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => N596
    );
  M2a_22_f5_G : LUT4
    generic map(
      INIT => X"48C2"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(4),
      O => N597
    );
  M1_5_Q : MUXF5
    port map (
      I0 => N598,
      I1 => N599,
      S => sig_tank1rom10s(2),
      O => M1_5_Q_83
    );
  M1_5_F : LUT4
    generic map(
      INIT => X"A920"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N598
    );
  M1_5_G : LUT4
    generic map(
      INIT => X"AA9C"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(4),
      O => N599
    );
  M1_18_Q : MUXF5
    port map (
      I0 => N600,
      I1 => N601,
      S => sig_tank1rom10s(1),
      O => M1_18_Q_9
    );
  M1_18_F : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N600
    );
  M1_18_G : LUT4
    generic map(
      INIT => X"C2A4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N601
    );
  M2a_28_36 : MUXF5
    port map (
      I0 => N602,
      I1 => N603,
      S => sig_tank1rom10s(2),
      O => M2a_28_Q
    );
  M2a_28_36_F : LUT4
    generic map(
      INIT => X"C140"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N602
    );
  M2a_28_36_G : LUT4
    generic map(
      INIT => X"6860"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N603
    );
  M2_9_31 : MUXF5
    port map (
      I0 => N604,
      I1 => N605,
      S => sig_tank1rom10s(2),
      O => M2_9_31_212
    );
  M2_9_31_F : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd13,
      O => N604
    );
  M2_9_31_G : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => M2_0_bdd20,
      O => N605
    );
  M2a_8_29 : MUXF5
    port map (
      I0 => N606,
      I1 => N607,
      S => sig_tank1rom10s(2),
      O => M2a_8_29_263
    );
  M2a_8_29_F : LUT4
    generic map(
      INIT => X"99D9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => M2_0_bdd20,
      I3 => sig_tank1rom10s(3),
      O => N606
    );
  M2a_8_29_G : LUT4
    generic map(
      INIT => X"FC8F"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N607
    );
  M2a_9_33 : MUXF5
    port map (
      I0 => N608,
      I1 => N609,
      S => sig_tank1rom10s(3),
      O => M2a_9_33_267
    );
  M2a_9_33_F : LUT4
    generic map(
      INIT => X"F54F"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M2_0_bdd13,
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N608
    );
  M2a_9_33_G : LUT4
    generic map(
      INIT => X"FC8F"
    )
    port map (
      I0 => M2_0_bdd6,
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N609
    );
  M1a_9_32 : MUXF5
    port map (
      I0 => N610,
      I1 => N611,
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
      O => N610
    );
  M1a_9_32_G : LUT4
    generic map(
      INIT => X"44CD"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N611
    );
  M1a_18_Q : MUXF5
    port map (
      I0 => N612,
      I1 => N613,
      S => sig_tank1rom10s(3),
      O => M1a_18_Q_93
    );
  M1a_18_F : LUT4
    generic map(
      INIT => X"9535"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N612
    );
  M1a_18_G : LUT4
    generic map(
      INIT => X"35EC"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N613
    );
  M1a_20_Q : MUXF5
    port map (
      I0 => N614,
      I1 => N615,
      S => sig_tank1rom10s(2),
      O => M1a_20_Q_96
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
      O => N614
    );
  M1a_20_G : LUT4
    generic map(
      INIT => X"4401"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N615
    );
  U3_Mmux_M1_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N616,
      I1 => N617,
      S => sig_tank1rom10s(2),
      O => N320
    );
  U3_Mmux_M1_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"9A8A"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(1),
      I3 => U3_rom_pix1(0),
      O => N616
    );
  U3_Mmux_M1_mux0000_9_SW0_G : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      O => N617
    );
  M2a_21_32 : MUXF5
    port map (
      I0 => N618,
      I1 => N619,
      S => sig_tank1rom10s(0),
      O => M2a_21_Q
    );
  M2a_21_32_F : LUT4
    generic map(
      INIT => X"4E14"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N618
    );
  M2a_21_32_G : LUT4
    generic map(
      INIT => X"7E13"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N619
    );
  M2_13_52 : MUXF5
    port map (
      I0 => N620,
      I1 => N621,
      S => sig_tank1rom10s(1),
      O => M2_13_Q
    );
  M2_13_52_F : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N620
    );
  M2_13_52_G : LUT4
    generic map(
      INIT => X"C2A4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N621
    );
  M2_12_68 : MUXF5
    port map (
      I0 => N622,
      I1 => N623,
      S => sig_tank1rom10s(0),
      O => M2_12_Q
    );
  M2_12_68_F : LUT4
    generic map(
      INIT => X"B622"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N622
    );
  M2_12_68_G : LUT4
    generic map(
      INIT => X"C828"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(2),
      O => N623
    );
  U3_Mmux_M1a_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N624,
      I1 => N625,
      S => sig_tank1rom10s(2),
      O => N246
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"63F9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(0),
      O => N624
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      O => N625
    );
  M2a_14_Q : MUXF5
    port map (
      I0 => N626,
      I1 => N627,
      S => sig_tank1rom10s(3),
      O => M2a_14_Q_221
    );
  M2a_14_F : LUT4
    generic map(
      INIT => X"971D"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N626
    );
  M2a_14_G : LUT4
    generic map(
      INIT => X"35EC"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N627
    );
  M1_26_181 : MUXF5
    port map (
      I0 => N628,
      I1 => N629,
      S => rom1_addr(4),
      O => M1_26_Q
    );
  M1_26_181_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_26_58_39,
      I2 => M1_26_25_38,
      I3 => M1_26_bdd0,
      O => N628
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
      O => N629
    );
  M1_25_152 : MUXF5
    port map (
      I0 => N630,
      I1 => N631,
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
      I2 => M1_25_54,
      I3 => M1_25_bdd1,
      O => N630
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
      O => N631
    );
  M1_27_229 : MUXF5
    port map (
      I0 => N632,
      I1 => N633,
      S => rom1_addr(4),
      O => M1_27_Q
    );
  M1_27_229_F : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_27_45,
      I2 => M1_27_bdd0,
      I3 => M1_27_119_42,
      O => N632
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
      O => N633
    );
  M1a_27_152 : MUXF5
    port map (
      I0 => N634,
      I1 => N635,
      S => rom1_addr(4),
      O => M1a_27_Q
    );
  M1a_27_152_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => N424,
      I2 => M1_27_bdd0,
      I3 => rom1_addr(3),
      O => N634
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
      O => N635
    );
  M1a_2_Q : MUXF5
    port map (
      I0 => N636,
      I1 => N637,
      S => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => M1a_2_Q_120
    );
  M1a_2_F : LUT4
    generic map(
      INIT => X"8100"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(0),
      O => N636
    );
  M1a_2_G : LUT4
    generic map(
      INIT => X"44CD"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => N637
    );
  M1_19_32 : MUXF5
    port map (
      I0 => N638,
      I1 => N639,
      S => sig_tank1rom10s(3),
      O => M1_19_Q
    );
  M1_19_32_F : LUT4
    generic map(
      INIT => X"848A"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => N638
    );
  M1_19_32_G : LUT4
    generic map(
      INIT => X"B590"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => rom1_addr(4),
      O => N639
    );
  M1_11_Q : MUXF5
    port map (
      I0 => N640,
      I1 => N641,
      S => sig_tank1rom10s(1),
      O => M1_11_Q_7
    );
  M1_11_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      O => N640
    );
  M1_11_G : LUT4
    generic map(
      INIT => X"DA14"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => rom1_addr(4),
      O => N641
    );
  U3_Mmux_M1a_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N642,
      I1 => N643,
      S => sig_tank1rom10s(2),
      O => N318
    );
  U3_Mmux_M1a_mux0000_85_SW0_F : LUT4
    generic map(
      INIT => X"3D0B"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N642
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : LUT3
    generic map(
      INIT => X"A7"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      O => N643
    );
  U3_Mmux_M1a_mux0000_9_SW0 : MUXF5
    port map (
      I0 => N644,
      I1 => N645,
      S => sig_tank1rom10s(2),
      O => N314
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : LUT4
    generic map(
      INIT => X"55B5"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => U3_rom_pix1(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N644
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : LUT3
    generic map(
      INIT => X"A7"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      O => N645
    );
  U3_Mmux_M1_mux0000_83_SW0 : MUXF5
    port map (
      I0 => N646,
      I1 => N647,
      S => sig_tank1rom10s(3),
      O => N236
    );
  U3_Mmux_M1_mux0000_83_SW0_F : LUT4
    generic map(
      INIT => X"7724"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(2),
      O => N646
    );
  U3_Mmux_M1_mux0000_83_SW0_G : LUT4
    generic map(
      INIT => X"6273"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => U3_rom_pix1(0),
      O => N647
    );
  M1_21_47 : MUXF5
    port map (
      I0 => N648,
      I1 => N649,
      S => rom1_addr(4),
      O => M1_21_Q
    );
  M1_21_47_F : LUT4
    generic map(
      INIT => X"141E"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => N392,
      O => N648
    );
  M1_21_47_G : LUT4
    generic map(
      INIT => X"E065"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N649
    );
  U3_Mmux_M1a_mux0000_92_SW0 : MUXF5
    port map (
      I0 => N650,
      I1 => N651,
      S => sig_tank1rom10s(3),
      O => N376
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : LUT4
    generic map(
      INIT => X"66DF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(0),
      O => N650
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : LUT4
    generic map(
      INIT => X"E9E8"
    )
    port map (
      I0 => U3_rom_pix1(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => N651
    );
  M1_1_69 : MUXF5
    port map (
      I0 => N652,
      I1 => N653,
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
      O => N652
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
      O => N653
    );
  M1_22_70 : MUXF5
    port map (
      I0 => N654,
      I1 => N655,
      S => rom1_addr(4),
      O => M1_22_Q
    );
  M1_22_70_F : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M1_22_27_17,
      I2 => N332,
      I3 => M1_22_bdd0,
      O => N654
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
      O => N655
    );
  M1_24_105 : MUXF5
    port map (
      I0 => N656,
      I1 => N657,
      S => rom1_addr(4),
      O => M1_24_Q
    );
  M1_24_105_F : LUT4
    generic map(
      INIT => X"40EA"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => N452,
      I2 => sig_tank1rom10s(0),
      I3 => M1_24_bdd0,
      O => N656
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
      O => N657
    );
  M2_29_2 : MUXF5
    port map (
      I0 => N658,
      I1 => N659,
      S => sig_tank1rom10s(3),
      O => M2_29_Q
    );
  M2_29_2_F : LUT4
    generic map(
      INIT => X"95F6"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N658
    );
  M2_29_2_G : LUT4
    generic map(
      INIT => X"80A8"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N659
    );
  U3_Mmux_M2_mux0000_82_SW0 : MUXF5
    port map (
      I0 => N660,
      I1 => N661,
      S => sig_tank1rom10s(0),
      O => N250
    );
  U3_Mmux_M2_mux0000_82_SW0_F : LUT4
    generic map(
      INIT => X"32EA"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => U3_rom_pix2(0),
      I3 => sig_tank1rom10s(3),
      O => N660
    );
  U3_Mmux_M2_mux0000_82_SW0_G : LUT4
    generic map(
      INIT => X"7645"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => U3_rom_pix2(0),
      I3 => sig_tank1rom10s(3),
      O => N661
    );
  U3_Mmux_M1_mux0000_85_SW0 : MUXF5
    port map (
      I0 => N662,
      I1 => N663,
      S => rom1_addr(4),
      O => N322
    );
  U3_Mmux_M1_mux0000_85_SW0_F : LUT4
    generic map(
      INIT => X"7797"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(3),
      O => N662
    );
  U3_Mmux_M1_mux0000_85_SW0_G : LUT4
    generic map(
      INIT => X"7724"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => U3_rom_pix1(0),
      I3 => sig_tank1rom10s(2),
      O => N663
    );
  M2a_12_38 : MUXF5
    port map (
      I0 => N664,
      I1 => N665,
      S => sig_tank1rom10s(2),
      O => M2a_12_Q
    );
  M2a_12_38_F : LUT4
    generic map(
      INIT => X"90B3"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(0),
      I3 => rom1_addr(4),
      O => N664
    );
  M2a_12_38_G : LUT4
    generic map(
      INIT => X"5171"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => rom1_addr(4),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => N665
    );
  M1a_22_40_SW0 : MUXF5
    port map (
      I0 => N666,
      I1 => N667,
      S => sig_tank1rom10s(0),
      O => N350
    );
  M1a_22_40_SW0_F : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => M1_21_bdd5,
      O => N666
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
      O => N667
    );
  M2a_29_59 : MUXF5
    port map (
      I0 => N668,
      I1 => N669,
      S => sig_tank1rom10s(2),
      O => M2a_29_59_232
    );
  M2a_29_59_F : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(3),
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => N668
    );
  M2a_29_59_G : LUT4
    generic map(
      INIT => X"36BE"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I2 => N67,
      I3 => sig_tank1rom10s(1),
      O => N669
    );
  M1_20_Q : MUXF5
    port map (
      I0 => N670,
      I1 => N671,
      S => sig_tank1rom10s(3),
      O => M1_20_Q_12
    );
  M1_20_F : LUT4
    generic map(
      INIT => X"9483"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N670
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
      O => N671
    );
  M1_2_1 : MUXF5
    port map (
      I0 => N672,
      I1 => N673,
      S => sig_tank1rom10s(3),
      O => M1_2_Q
    );
  M1_2_1_F : LUT4
    generic map(
      INIT => X"95F6"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => sig_tank1rom10s(2),
      O => N672
    );
  M1_2_1_G : LUT4
    generic map(
      INIT => X"80A8"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(0),
      O => N673
    );
  M1a_11_f5 : MUXF5
    port map (
      I0 => N674,
      I1 => N675,
      S => sig_tank1rom10s(2),
      O => M1a_11_Q
    );
  M1a_11_f5_F : LUT4
    generic map(
      INIT => X"CBAC"
    )
    port map (
      I0 => U3_Msub_tank1rom10s_sub0001_cy(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(1),
      O => N674
    );
  M1a_11_f5_G : LUT4
    generic map(
      INIT => X"23BA"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => N67,
      I3 => U3_Msub_tank1rom10s_sub0001_cy(4),
      O => N675
    );
  U3_destroy2_mux0017191 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U3_N29,
      I1 => U3_spriteonB1,
      I2 => U3_spriteonB5,
      I3 => U3_N33,
      O => U3_destroy2_mux0017191_2044
    );
  U3_destroy2_mux001719_f5 : MUXF5
    port map (
      I0 => U3_destroy2_mux0017191_2044,
      I1 => N0,
      S => U3_spriteonM1,
      O => U3_destroy2_mux001719
    );
  U3_RMcnt_Q_mux0000_2_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise_2072,
      I1 => U3_RMcnt(0),
      I2 => U3_RMcnt(2),
      I3 => U3_RMcnt(1),
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
      I0 => U3_rise2_2073,
      I1 => U3_RMcnt2(0),
      I2 => U3_RMcnt2(2),
      I3 => U3_RMcnt2(1),
      O => U3_RMcnt2_Q_mux0000_2_1
    );
  U3_RMcnt2_Q_mux0000_2_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_2_1,
      I1 => U3_RMht2(2),
      S => U3_RMcnt2_and0000,
      O => U3_RMcnt2_Q_mux0000(2)
    );
  U3_font1_0_11 : LUT4
    generic map(
      INIT => X"55D9"
    )
    port map (
      I0 => U3_RMht1(3),
      I1 => U3_RMht1(4),
      I2 => U3_RMht1(1),
      I3 => U3_RMht1(2),
      O => U3_font1_0_1
    );
  U3_font1_0_1_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_font1_0_1,
      S => U3_RMht1(5),
      O => U3_font1(0)
    );
  U3_font2_0_11 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(4),
      O => U3_font2_0_1
    );
  U3_font2_0_1_f5 : MUXF5
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_font2_0_1,
      S => U3_RMht1(5),
      O => U3_font2_0_Q
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
      O => U2_vidon_and0000181_776
    );
  U2_vidon_and000018_f5 : MUXF5
    port map (
      I0 => U2_vidon_and0000181_776,
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
      O => U2_vidon_and0000261_778
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_778,
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
      O => U2_vidon_and0000651_782
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_782,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  title_spriteon_and0000871 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_hcs(2),
      I1 => U2_hcs(1),
      I2 => U2_hcs(0),
      I3 => U2_hcs(3),
      O => title_spriteon_and0000871_2602
    );
  title_spriteon_and000087_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => title_spriteon_and0000871_2602,
      S => U2_hcs(4),
      O => title_spriteon_and000087
    );
  U3_spriteonB1_cmp_le000011 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => N57,
      I2 => U2_hcs(5),
      I3 => U2_hcs(7),
      O => U3_spriteonB1_cmp_le00001
    );
  U3_spriteonB1_cmp_le00001_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_spriteonB1_cmp_le00001,
      S => U2_hcs(8),
      O => U3_spriteonB1_cmp_le00002
    );
  U3_spriteonB4_and000091 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => U3_spriteonB4_and000091_2118
    );
  U3_spriteonB4_and00009_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_spriteonB4_and000091_2118,
      S => U2_vcs(4),
      O => U3_spriteonB4_and00009
    );
  U3_spriteonB4_and0000191 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(5),
      I2 => U2_vcs(6),
      I3 => U2_vcs(7),
      O => U3_spriteonB4_and0000191_2115
    );
  U3_spriteonB4_and000019_f5 : MUXF5
    port map (
      I0 => U3_spriteonB4_and0000191_2115,
      I1 => U2_vcs(8),
      S => U3_spriteonB4_and00009,
      O => U3_spriteonB4_and000019
    );
  U3_spriteonB1_cmp_lt00002351 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(6),
      I2 => U2_vcs(7),
      I3 => U2_vcs(9),
      O => U3_spriteonB1_cmp_lt0000235
    );
  U3_spriteonB1_cmp_lt0000235_f5 : MUXF5
    port map (
      I0 => U3_spriteonB1_cmp_lt00002351_2106,
      I1 => U3_spriteonB1_cmp_lt0000235,
      S => U3_spriteonB1_cmp_lt0000212_2104,
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_tank1Angle10s_and00001281 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      I3 => U2_vcs(4),
      O => U3_tank1Angle10s_and00001281_2222
    );
  U3_tank1Angle10s_and0000128_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U3_tank1Angle10s_and00001281_2222,
      S => U2_vcs(5),
      O => U3_tank1Angle10s_and0000128
    );
  M1a_8_11 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(4),
      I3 => sig_tank1rom10s(2),
      O => M1a_8_1
    );
  M1a_8_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_3_bdd3,
      O => M1a_8_11_128
    );
  M1a_8_1_f5 : MUXF5
    port map (
      I0 => M1a_8_11_128,
      I1 => M1a_8_1,
      S => rom1_addr(3),
      O => M1a_8_Q
    );
  M1_4_SW11 : LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(1),
      I3 => M1_4_bdd0,
      O => M1_4_SW1
    );
  M1_4_SW12 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => M1_4_bdd0,
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(1),
      O => M1_4_SW11_81
    );
  M1_4_SW1_f5 : MUXF5
    port map (
      I0 => M1_4_SW11_81,
      I1 => M1_4_SW1,
      S => sig_tank1rom10s(2),
      O => N76
    );
  M2a_4_762 : LUT4
    generic map(
      INIT => X"1450"
    )
    port map (
      I0 => rom1_addr(3),
      I1 => M2_0_bdd13,
      I2 => rom1_addr(2),
      I3 => M2_0_bdd6,
      O => M2a_4_762_250
    );
  M2a_4_76_f5 : MUXF5
    port map (
      I0 => M2a_4_762_250,
      I1 => M2a_4_761,
      S => sig_tank1rom10s(0),
      O => M2a_4_76
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
  M2_5_1601 : LUT4
    generic map(
      INIT => X"09FF"
    )
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => sig_tank1rom10s(1),
      I2 => rom1_addr(1),
      I3 => rom1_addr(4),
      O => M2_5_1601_192
    );
  M2_5_1602 : LUT4
    generic map(
      INIT => X"DF57"
    )
    port map (
      I0 => rom1_addr(4),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => rom1_addr(1),
      O => M2_5_1602_193
    );
  M2_5_160_f5 : MUXF5
    port map (
      I0 => M2_5_1602_193,
      I1 => M2_5_1601_192,
      S => sig_tank1rom10s(0),
      O => M2_5_160
    );
  U3_red_0_3281 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => U3_blue_and0002,
      I1 => U3_tank2HP_0_Q,
      I2 => U3_N29,
      I3 => U3_green_2_17,
      O => U3_red_0_328
    );
  U3_red_0_328_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_red_0_328,
      S => vidon,
      O => U3_N25
    );
  selector_red_1_111 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U3_spriteonB1,
      I1 => U3_N87,
      I2 => N372,
      O => selector_red_1_111_2497
    );
  selector_red_1_112 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U3_N87,
      I1 => U3_N50,
      I2 => U3_spriteonB1,
      I3 => N372,
      O => selector_red_1_112_2498
    );
  selector_red_1_11_f5 : MUXF5
    port map (
      I0 => selector_red_1_112_2498,
      I1 => selector_red_1_111_2497,
      S => U3_spriteonB5,
      O => selector_red_1_11
    );
  U3_RMcnt_Q_mux0000_5_SW01 : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => U3_rise_2072,
      I1 => U3_RMcnt(3),
      I2 => U3_RMcnt(4),
      I3 => N168,
      O => U3_RMcnt_Q_mux0000_5_SW0
    );
  U3_RMcnt_Q_mux0000_5_SW02 : LUT4
    generic map(
      INIT => X"017F"
    )
    port map (
      I0 => U3_RMcnt(3),
      I1 => N168,
      I2 => U3_RMcnt(4),
      I3 => U3_rise_2072,
      O => U3_RMcnt_Q_mux0000_5_SW01_1951
    );
  U3_RMcnt_Q_mux0000_5_SW0_f5 : MUXF5
    port map (
      I0 => U3_RMcnt_Q_mux0000_5_SW01_1951,
      I1 => U3_RMcnt_Q_mux0000_5_SW0,
      S => U3_RMcnt(5),
      O => N49
    );
  U3_RMcnt2_Q_mux0000_5_SW01 : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => U3_rise2_2073,
      I1 => U3_RMcnt2(3),
      I2 => U3_RMcnt2(4),
      I3 => N170,
      O => U3_RMcnt2_Q_mux0000_5_SW0
    );
  U3_RMcnt2_Q_mux0000_5_SW02 : LUT4
    generic map(
      INIT => X"017F"
    )
    port map (
      I0 => U3_RMcnt2(3),
      I1 => N170,
      I2 => U3_RMcnt2(4),
      I3 => U3_rise2_2073,
      O => U3_RMcnt2_Q_mux0000_5_SW01_1919
    );
  U3_RMcnt2_Q_mux0000_5_SW0_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_5_SW01_1919,
      I1 => U3_RMcnt2_Q_mux0000_5_SW0,
      S => U3_RMcnt2(5),
      O => N51
    );
  U3_RMcnt_Q_mux0000_4_11 : LUT4
    generic map(
      INIT => X"B4D2"
    )
    port map (
      I0 => U3_rise_2072,
      I1 => N168,
      I2 => U3_RMcnt(4),
      I3 => U3_RMcnt(3),
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
      I0 => U3_rise2_2073,
      I1 => N170,
      I2 => U3_RMcnt2(4),
      I3 => U3_RMcnt2(3),
      O => U3_RMcnt2_Q_mux0000_4_1
    );
  U3_RMcnt2_Q_mux0000_4_1_f5 : MUXF5
    port map (
      I0 => U3_RMcnt2_Q_mux0000_4_1,
      I1 => U3_RMht2(4),
      S => U3_RMcnt2_and0000,
      O => U3_RMcnt2_Q_mux0000(4)
    );
  U3_font4_2_1 : LUT4
    generic map(
      INIT => X"22A8"
    )
    port map (
      I0 => U3_font3_cmp_lt0000,
      I1 => U3_RMht2(1),
      I2 => U3_font3_cmp_lt0002,
      I3 => U3_font3_cmp_lt0001,
      O => U3_font4_2_1_2056
    );
  U3_font4_2_2 : LUT4
    generic map(
      INIT => X"8090"
    )
    port map (
      I0 => U3_RMht2(1),
      I1 => U3_font3_cmp_lt0001,
      I2 => U3_font3_cmp_lt0000,
      I3 => U3_font3_cmp_lt0002,
      O => U3_font4_2_2_2057
    );
  U3_font4_2_f5 : MUXF5
    port map (
      I0 => U3_font4_2_2_2057,
      I1 => U3_font4_2_1_2056,
      S => U3_RMht2(2),
      O => U3_font4_2_Q
    );
  U3_Mmux_M2a_mux0000_82_SW01 : LUT4
    generic map(
      INIT => X"B6BF"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(3),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => U3_Mmux_M2a_mux0000_82_SW0
    );
  U3_Mmux_M2a_mux0000_82_SW0_f5 : MUXF5
    port map (
      I0 => U3_Mmux_M2a_mux0000_82_SW0,
      I1 => M1a_12_bdd0,
      S => U3_rom_pix2(0),
      O => N248
    );
  M2a_8_941 : LUT4
    generic map(
      INIT => X"1312"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(3),
      O => M2a_8_94
    );
  M2a_8_942 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => M2a_8_29_263,
      I1 => N276,
      O => M2a_8_941_265
    );
  M2a_8_94_f5 : MUXF5
    port map (
      I0 => M2a_8_941_265,
      I1 => M2a_8_94,
      S => rom1_addr(4),
      O => M2a_8_Q
    );
  M2_10_231 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M2_0_bdd13,
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(0),
      O => M2_10_231_141
    );
  M2_10_232 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M2_10_232_142
    );
  M2_10_23_f5 : MUXF5
    port map (
      I0 => M2_10_232_142,
      I1 => M2_10_231_141,
      S => sig_tank1rom10s(3),
      O => M2_10_23
    );
  M1_29_261 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      O => M1_29_261_61
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
      O => M1_29_262_62
    );
  M1_29_26_f5 : MUXF5
    port map (
      I0 => M1_29_262_62,
      I1 => M1_29_261_61,
      S => sig_tank1rom10s(2),
      O => M1_29_26
    );
  M2_5_311 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd13,
      O => M2_5_31
    );
  M2_5_312 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd13,
      I3 => M2_0_bdd6,
      O => M2_5_311_195
    );
  M2_5_31_f5 : MUXF5
    port map (
      I0 => M2_5_311_195,
      I1 => M2_5_31,
      S => sig_tank1rom10s(2),
      O => M2_5_bdd2
    );
  M1_28_331 : LUT4
    generic map(
      INIT => X"ADFD"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_23_bdd6,
      I2 => sig_tank1rom10s(1),
      I3 => M1_21_bdd5,
      O => M1_28_331_55
    );
  M1_28_332 : LUT3
    generic map(
      INIT => X"E5"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => M1_23_bdd6,
      I2 => sig_tank1rom10s(0),
      O => M1_28_332_56
    );
  M1_28_33_f5 : MUXF5
    port map (
      I0 => M1_28_332_56,
      I1 => M1_28_331_55,
      S => sig_tank1rom10s(2),
      O => M1_28_33
    );
  M2a_9_671 : LUT4
    generic map(
      INIT => X"5D04"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => sig_tank1rom10s(3),
      O => M2a_9_67
    );
  M2a_9_672 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N338,
      I1 => M2a_9_33_267,
      O => M2a_9_671_269
    );
  M2a_9_67_f5 : MUXF5
    port map (
      I0 => M2a_9_671_269,
      I1 => M2a_9_67,
      S => rom1_addr(4),
      O => M2a_9_Q
    );
  M1_25_541 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => M1_22_bdd4,
      I1 => sig_tank1rom10s(0),
      O => M1_25_541_34
    );
  M1_25_542 : LUT4
    generic map(
      INIT => X"42FF"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_22_bdd9,
      I2 => M1_21_bdd5,
      I3 => sig_tank1rom10s(0),
      O => M1_25_542_35
    );
  M1_25_54_f5 : MUXF5
    port map (
      I0 => M1_25_542_35,
      I1 => M1_25_541_34,
      S => sig_tank1rom10s(1),
      O => M1_25_54
    );
  M1_31_251 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => sig_tank1rom10s(0),
      I2 => M1_22_bdd9,
      O => M1_31_251_72
    );
  M1_31_252 : LUT4
    generic map(
      INIT => X"11B1"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => M1_22_bdd12,
      I2 => rom1_addr(2),
      I3 => M1_21_bdd5,
      O => M1_31_252_73
    );
  M1_31_25_f5 : MUXF5
    port map (
      I0 => M1_31_252_73,
      I1 => M1_31_251_72,
      S => sig_tank1rom10s(1),
      O => M1_31_25
    );
  selector_red_0_34_SW01 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U3_N50,
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
      I1 => U3_N50,
      I2 => U3_spriteonB4,
      I3 => U3_spriteonB5,
      O => selector_red_0_34_SW01_2494
    );
  selector_red_0_34_SW0_f5 : MUXF5
    port map (
      I0 => selector_red_0_34_SW01_2494,
      I1 => selector_red_0_34_SW0,
      S => who_present_state_FSM_FFd1_2609,
      O => N298
    );
  M2_5_451 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_5_bdd2,
      O => M2_5_451_197
    );
  M2_5_452 : LUT4
    generic map(
      INIT => X"66F6"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => sig_tank1rom10s(1),
      I2 => M2_0_bdd13,
      I3 => sig_tank1rom10s(2),
      O => M2_5_452_198
    );
  M2_5_45_f5 : MUXF5
    port map (
      I0 => M2_5_452_198,
      I1 => M2_5_451_197,
      S => rom1_addr(3),
      O => M2_5_45
    );
  M1_27_451 : LUT4
    generic map(
      INIT => X"A880"
    )
    port map (
      I0 => sig_tank1rom10s(0),
      I1 => rom1_addr(2),
      I2 => M1_21_bdd5,
      I3 => M1_22_bdd9,
      O => M1_27_451_45
    );
  M1_27_452 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M1_21_bdd5,
      I2 => sig_tank1rom10s(0),
      I3 => M1_22_bdd9,
      O => M1_27_452_46
    );
  M1_27_45_f5 : MUXF5
    port map (
      I0 => M1_27_452_46,
      I1 => M1_27_451_45,
      S => sig_tank1rom10s(1),
      O => M1_27_45
    );
  U3_Mmux_M2a_mux0000_8_SW01 : LUT4
    generic map(
      INIT => X"978D"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(3),
      I3 => sig_tank1rom10s(0),
      O => U3_Mmux_M2a_mux0000_8_SW0
    );
  U3_Mmux_M2a_mux0000_8_SW0_f5 : MUXF5
    port map (
      I0 => N444,
      I1 => U3_Mmux_M2a_mux0000_8_SW0,
      S => U3_rom_pix2(0),
      O => N464
    );
  M2_5_1031 : LUT4
    generic map(
      INIT => X"9BD9"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(0),
      I2 => sig_tank1rom10s(2),
      I3 => M2_0_bdd6,
      O => M2_5_1031_189
    );
  M2_5_1032 : LUT3
    generic map(
      INIT => X"A7"
    )
    port map (
      I0 => sig_tank1rom10s(1),
      I1 => sig_tank1rom10s(2),
      I2 => sig_tank1rom10s(0),
      O => M2_5_1032_190
    );
  M2_5_103_f5 : MUXF5
    port map (
      I0 => M2_5_1032_190,
      I1 => M2_5_1031_189,
      S => sig_tank1rom10s(3),
      O => M2_5_103
    );
  M2a_5_64_SW01 : LUT4
    generic map(
      INIT => X"FFE8"
    )
    port map (
      I0 => rom1_addr(2),
      I1 => M2_0_bdd13,
      I2 => M2_0_bdd6,
      I3 => rom1_addr(3),
      O => M2a_5_64_SW0
    );
  M2a_5_64_SW0_f5 : MUXF5
    port map (
      I0 => sig_tank1rom10s(2),
      I1 => M2a_5_64_SW0,
      S => sig_tank1rom10s(0),
      O => N330
    );
  U3_font4_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U3_RMht2(4),
      I1 => U3_RMht2(3),
      I2 => U3_RMht2(2),
      I3 => U3_RMht2(1),
      O => U3_font4_4_Q
    );
  U3_font4_4_f5 : MUXF5
    port map (
      I0 => U3_font4_4_Q,
      I1 => N0,
      S => U3_RMht2(5),
      O => U3_Madd_tank2ascii1s_add0000_cy(4)
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
      O => N256
    );
  M1a_25_361 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => sig_tank1rom10s(3),
      I1 => sig_tank1rom10s(1),
      I2 => sig_tank1rom10s(0),
      I3 => sig_tank1rom10s(2),
      O => M1a_25_36
    );
  M1a_25_36_f5 : MUXF5
    port map (
      I0 => N272,
      I1 => M1a_25_36,
      S => rom1_addr(4),
      O => M1a_25_Q
    );
  U3_rise_and0000_SW0 : LUT4_L
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U3_RMcnt(3),
      I1 => U3_RMcnt(5),
      I2 => U3_RMcnt(4),
      I3 => U3_RM1_and0000,
      LO => N14
    );
  U3_rise2_and0000_SW0 : LUT4_L
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => U3_RMcnt2(3),
      I1 => U3_RMcnt2(5),
      I2 => U3_RMcnt2(4),
      I3 => U3_RM2_and0000,
      LO => N16
    );
  nes_a_reg_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(9),
      I3 => N18,
      LO => N676,
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
      LO => N677,
      O => U2_hcs_cmp_eq000010_759
    );
  U3_Result_3_1_SW0 : LUT4_L
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => U3_RMht1(2),
      I1 => U3_RMht1(1),
      I2 => U3_RMht1(0),
      I3 => sig_gameDown,
      LO => N24
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
      LO => N678,
      O => nes_counter_reg_cmp_eq0000112_2418
    );
  U3_RMcnt_and000112 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMcnt(5),
      I1 => U3_RMcnt(4),
      I2 => U3_RMcnt(3),
      I3 => U3_RMcnt(2),
      LO => U3_RMcnt_and000112_1954
    );
  U3_RMcnt2_and000112 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U3_RMcnt2(5),
      I1 => U3_RMcnt2(4),
      I2 => U3_RMcnt2(3),
      I3 => U3_RMcnt2(2),
      LO => U3_RMcnt2_and000112_1922
    );
  U3_Mhorz_cmp_ne000132 : LUT4_D
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht2(5),
      I1 => U3_RMcnt2(5),
      I2 => U3_RMht2(4),
      I3 => U3_RMcnt2(4),
      LO => N679,
      O => U3_Mhorz_cmp_ne000132_1587
    );
  U3_Mhorz_cmp_ne0001115 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000132_1587,
      I1 => U3_Mhorz_cmp_ne000165_1588,
      I2 => U3_Mhorz_cmp_ne0001113_1586,
      LO => U3_Mhorz_cmp_ne0001
    );
  U3_C2_not00011 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_C2_5_1_820,
      I1 => U3_C2(1),
      LO => U3_C2_not00011_826
    );
  U3_C2_not000123 : LUT4_L
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U3_C2_not000113_827,
      I1 => U3_C2(6),
      I2 => U3_C2(9),
      I3 => U3_C2_not00016_830,
      LO => U3_C2_not000123_828
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
      LO => U3_C2_not000150_829
    );
  U3_Mhorz_cmp_ne000032 : LUT4_D
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U3_RMht1(5),
      I1 => U3_RMcnt(5),
      I2 => U3_RMht1(4),
      I3 => U3_RMcnt(4),
      LO => N680,
      O => U3_Mhorz_cmp_ne000032_1583
    );
  U3_Mhorz_cmp_ne0000115 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U3_Mhorz_cmp_ne000032_1583,
      I1 => U3_Mhorz_cmp_ne000065_1584,
      I2 => U3_Mhorz_cmp_ne0000113_1582,
      LO => U3_Mhorz_cmp_ne0000
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
      LO => U3_C1_not00014_810
    );
  U2_hcs_cmp_eq000014 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_hcs(6),
      I1 => U2_hcs(5),
      I2 => U2_hcs(7),
      LO => N681,
      O => U2_N3
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => N182,
      I3 => U2_N2,
      LO => N682,
      O => U2_vcs_cmp_eq0000_771
    );
  U3_C1_not000183 : LUT4_L
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => U3_C1_not000147_811,
      I1 => N184,
      I2 => U3_C1(7),
      I3 => N185,
      LO => U3_C1_not000183_813
    );
  U3_RMht2_not000124 : LUT4_L
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => screenstate_present_state_FSM_FFd1_2478,
      I1 => ld_6_OBUF_2340,
      I2 => ld_5_OBUF_2339,
      I3 => U3_font3_cmp_lt0000,
      LO => U3_RMht2_not000124_1972
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(9),
      I1 => nes_scalar_reg(8),
      I2 => nes_scalar_next_cmp_eq000010_2450,
      I3 => nes_scalar_next_cmp_eq000021_2451,
      LO => N683,
      O => nes_scalar_next_cmp_eq0000
    );
  U3_RMht2_not000137_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U3_RMht2(0),
      I1 => U3_RMht2(2),
      I2 => U3_RMht2(1),
      LO => N200
    );
  U3_RMht1_not00011165_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U3_RMht1(0),
      I1 => U3_RMht1(2),
      I2 => U3_RMht1(3),
      I3 => U3_RMht1(1),
      LO => N202
    );
  U3_destroy1_mux001562 : LUT4_L
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => U3_spriteonM1,
      I1 => U3_destroy1_mux001541_2039,
      I2 => U3_N29,
      I3 => N300,
      LO => U3_destroy1_mux001562_2040
    );
  U3_spriteonB1_cmp_lt00002352_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_spriteonB1_cmp_lt00002351_2106
    );
  M2a_4_761_INV_0 : INV
    port map (
      I => rom1_addr(3),
      O => M2a_4_761
    );

end STRUCTURE;

