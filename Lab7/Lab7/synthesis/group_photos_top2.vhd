--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: group_photos_top2.vhd
-- /___/   /\     Timestamp: Tue Mar 25 22:03:37 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w group_photos_top2.ngc group_photos_top2.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: group_photos_top2.ngc
-- Output file	: group_photos_top2.vhd
-- # of Entities	: 1
-- Design Name	: group_photos_top2
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

entity group_photos_top2 is
  port (
    vsync : out STD_LOGIC; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end group_photos_top2;

architecture STRUCTURE of group_photos_top2 is
  component skye
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 13 downto 0 ) 
    );
  end component;
  component mona
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 13 downto 0 ) 
    );
  end component;
  component reymoyet
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 13 downto 0 ) 
    );
  end component;
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U1_Mcount_q_cy_10_rt_70 : STD_LOGIC; 
  signal U1_Mcount_q_cy_11_rt_72 : STD_LOGIC; 
  signal U1_Mcount_q_cy_12_rt_74 : STD_LOGIC; 
  signal U1_Mcount_q_cy_13_rt_76 : STD_LOGIC; 
  signal U1_Mcount_q_cy_14_rt_78 : STD_LOGIC; 
  signal U1_Mcount_q_cy_15_rt_80 : STD_LOGIC; 
  signal U1_Mcount_q_cy_16_rt_82 : STD_LOGIC; 
  signal U1_Mcount_q_cy_17_rt_84 : STD_LOGIC; 
  signal U1_Mcount_q_cy_18_rt_86 : STD_LOGIC; 
  signal U1_Mcount_q_cy_19_rt_88 : STD_LOGIC; 
  signal U1_Mcount_q_cy_1_rt_90 : STD_LOGIC; 
  signal U1_Mcount_q_cy_20_rt_92 : STD_LOGIC; 
  signal U1_Mcount_q_cy_21_rt_94 : STD_LOGIC; 
  signal U1_Mcount_q_cy_22_rt_96 : STD_LOGIC; 
  signal U1_Mcount_q_cy_2_rt_98 : STD_LOGIC; 
  signal U1_Mcount_q_cy_3_rt_100 : STD_LOGIC; 
  signal U1_Mcount_q_cy_4_rt_102 : STD_LOGIC; 
  signal U1_Mcount_q_cy_5_rt_104 : STD_LOGIC; 
  signal U1_Mcount_q_cy_6_rt_106 : STD_LOGIC; 
  signal U1_Mcount_q_cy_7_rt_108 : STD_LOGIC; 
  signal U1_Mcount_q_cy_8_rt_110 : STD_LOGIC; 
  signal U1_Mcount_q_cy_9_rt_112 : STD_LOGIC; 
  signal U1_Mcount_q_xor_23_rt_114 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U1_q_171 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_152 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_153 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_1_rt_156 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_rt_158 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_3_rt_160 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_rt_162 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_5_rt_164 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_rt_166 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_7_rt_168 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_rt_170 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_0 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_1 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_2 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_3 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_4 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_6 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_7 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_8 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_9 : STD_LOGIC; 
  signal U2_Mcount_HCS_xor_9_rt_182 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_185 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_187 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_189 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_191 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_193 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_195 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_197 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_199 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_211 : STD_LOGIC; 
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
  signal U2_VSENABLE_234 : STD_LOGIC; 
  signal U2_clr_inv : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_246 : STD_LOGIC; 
  signal U2_vidon_and00000_247 : STD_LOGIC; 
  signal U2_vidon_and0000105_248 : STD_LOGIC; 
  signal U2_vidon_and0000117_249 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and0000181_251 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and0000261_253 : STD_LOGIC; 
  signal U2_vidon_and000039_254 : STD_LOGIC; 
  signal U2_vidon_and00006_255 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U2_vidon_and0000651_257 : STD_LOGIC; 
  signal U2_vidon_and000080_258 : STD_LOGIC; 
  signal b_Maccum_cmonav_lut_9_1_278 : STD_LOGIC; 
  signal b_Maccum_creyv_lut_9_1_298 : STD_LOGIC; 
  signal b_Maccum_cskyev_lut_9_1_318 : STD_LOGIC; 
  signal b_Maccum_rmonav_lut_9_1_338 : STD_LOGIC; 
  signal b_Maccum_rreyv_lut_9_1_358 : STD_LOGIC; 
  signal b_Maccum_rskyev_lut_9_1_378 : STD_LOGIC; 
  signal b_Madd_dcvmona_sub0000_cy_0_rt_497 : STD_LOGIC; 
  signal b_Madd_dcvrey_sub0000_cy_0_rt_516 : STD_LOGIC; 
  signal b_Madd_dcvskye_sub0000_cy_0_rt_535 : STD_LOGIC; 
  signal b_Madd_drvmona_sub0000_cy_0_rt_554 : STD_LOGIC; 
  signal b_Madd_drvrey_sub0000_cy_0_rt_573 : STD_LOGIC; 
  signal b_Madd_drvskye_sub0000_cy_0_rt_592 : STD_LOGIC; 
  signal b_Result_0_1 : STD_LOGIC; 
  signal b_Result_0_2 : STD_LOGIC; 
  signal b_Result_0_3 : STD_LOGIC; 
  signal b_Result_0_4 : STD_LOGIC; 
  signal b_Result_0_5 : STD_LOGIC; 
  signal b_Result_1_1 : STD_LOGIC; 
  signal b_Result_1_2 : STD_LOGIC; 
  signal b_Result_1_3 : STD_LOGIC; 
  signal b_Result_1_4 : STD_LOGIC; 
  signal b_Result_1_5 : STD_LOGIC; 
  signal b_Result_2_1 : STD_LOGIC; 
  signal b_Result_2_2 : STD_LOGIC; 
  signal b_Result_2_3 : STD_LOGIC; 
  signal b_Result_2_4 : STD_LOGIC; 
  signal b_Result_2_5 : STD_LOGIC; 
  signal b_Result_3_1 : STD_LOGIC; 
  signal b_Result_3_2 : STD_LOGIC; 
  signal b_Result_3_3 : STD_LOGIC; 
  signal b_Result_3_4 : STD_LOGIC; 
  signal b_Result_3_5 : STD_LOGIC; 
  signal b_Result_4_1 : STD_LOGIC; 
  signal b_Result_4_2 : STD_LOGIC; 
  signal b_Result_4_3 : STD_LOGIC; 
  signal b_Result_4_4 : STD_LOGIC; 
  signal b_Result_4_5 : STD_LOGIC; 
  signal b_Result_5_1 : STD_LOGIC; 
  signal b_Result_5_2 : STD_LOGIC; 
  signal b_Result_5_3 : STD_LOGIC; 
  signal b_Result_5_4 : STD_LOGIC; 
  signal b_Result_5_5 : STD_LOGIC; 
  signal b_Result_6_1 : STD_LOGIC; 
  signal b_Result_6_2 : STD_LOGIC; 
  signal b_Result_6_3 : STD_LOGIC; 
  signal b_Result_6_4 : STD_LOGIC; 
  signal b_Result_6_5 : STD_LOGIC; 
  signal b_Result_7_1 : STD_LOGIC; 
  signal b_Result_7_2 : STD_LOGIC; 
  signal b_Result_7_3 : STD_LOGIC; 
  signal b_Result_7_4 : STD_LOGIC; 
  signal b_Result_7_5 : STD_LOGIC; 
  signal b_Result_8_1 : STD_LOGIC; 
  signal b_Result_8_2 : STD_LOGIC; 
  signal b_Result_8_3 : STD_LOGIC; 
  signal b_Result_8_4 : STD_LOGIC; 
  signal b_Result_8_5 : STD_LOGIC; 
  signal b_Result_9_1 : STD_LOGIC; 
  signal b_Result_9_2 : STD_LOGIC; 
  signal b_Result_9_3 : STD_LOGIC; 
  signal b_Result_9_4 : STD_LOGIC; 
  signal b_Result_9_5 : STD_LOGIC; 
  signal b_calc_709 : STD_LOGIC; 
  signal b_dcvmona_not0002 : STD_LOGIC; 
  signal b_dcvmona_not00024_751 : STD_LOGIC; 
  signal b_dcvmona_not00027_752 : STD_LOGIC; 
  signal b_dcvrey_not0002 : STD_LOGIC; 
  signal b_dcvrey_not00024_774 : STD_LOGIC; 
  signal b_dcvrey_not00027_775 : STD_LOGIC; 
  signal b_dcvskye_not0002 : STD_LOGIC; 
  signal b_dcvskye_not00024_797 : STD_LOGIC; 
  signal b_dcvskye_not00027_798 : STD_LOGIC; 
  signal b_drvmona_not0002 : STD_LOGIC; 
  signal b_drvmona_not00021_820 : STD_LOGIC; 
  signal b_drvmona_not00026_821 : STD_LOGIC; 
  signal b_drvrey_not0002 : STD_LOGIC; 
  signal b_drvrey_not00021_843 : STD_LOGIC; 
  signal b_drvrey_not00026_844 : STD_LOGIC; 
  signal b_drvskye_not0002 : STD_LOGIC; 
  signal b_drvskye_not00021_866 : STD_LOGIC; 
  signal b_drvskye_not00026_867 : STD_LOGIC; 
  signal b_rmonav_not0001 : STD_LOGIC; 
  signal blue_0_OBUF_911 : STD_LOGIC; 
  signal blue_1_OBUF_912 : STD_LOGIC; 
  signal btn_0_IBUF_915 : STD_LOGIC; 
  signal btn_3_IBUF_916 : STD_LOGIC; 
  signal cp_delay1_917 : STD_LOGIC; 
  signal cp_delay2_918 : STD_LOGIC; 
  signal cp_delay3_919 : STD_LOGIC; 
  signal go1 : STD_LOGIC; 
  signal green_0_OBUF_924 : STD_LOGIC; 
  signal green_1_OBUF_925 : STD_LOGIC; 
  signal green_2_OBUF_926 : STD_LOGIC; 
  signal hsync_OBUF_928 : STD_LOGIC; 
  signal mclk_BUFGP_930 : STD_LOGIC; 
  signal red_0_OBUF_934 : STD_LOGIC; 
  signal red_1_OBUF_935 : STD_LOGIC; 
  signal red_2_OBUF_936 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0001_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0002_cy_5_rt_991 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0002_cy_6_rt_993 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0002_cy_7_rt_995 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0002_cy_8_rt_997 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0002_xor_9_rt_1003 : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_lut_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_lut_8_Q : STD_LOGIC; 
  signal vga_sprite_Madd_monaspriteon_addsub0003_lut_9_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0001_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0002_cy_5_rt_1024 : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0002_cy_6_rt_1026 : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0002_cy_7_rt_1028 : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0002_cy_8_rt_1030 : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0002_xor_9_rt_1036 : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_lut_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_lut_8_Q : STD_LOGIC; 
  signal vga_sprite_Madd_reyspriteon_addsub0003_lut_9_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_1046 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_1048 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_1050 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_1085 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_1099 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_1101 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_1103 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_1138 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_1152 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_1154 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_1156 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1191 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0001_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0002_cy_5_rt_1216 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0002_cy_6_rt_1218 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0002_cy_7_rt_1220 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0002_cy_8_rt_1222 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0002_xor_9_rt_1228 : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_lut_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_lut_8_Q : STD_LOGIC; 
  signal vga_sprite_Madd_skyespriteon_addsub0003_lut_9_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_sub0000_cy_0_rt_1548 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_sub0000_cy_1_rt_1550 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_sub0000_cy_2_rt_1552 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_sub0000_cy_3_rt_1554 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_sub0000_cy_4_rt_1556 : STD_LOGIC; 
  signal vga_sprite_N01 : STD_LOGIC; 
  signal vga_sprite_N11 : STD_LOGIC; 
  signal vga_sprite_N2 : STD_LOGIC; 
  signal vga_sprite_N3 : STD_LOGIC; 
  signal vga_sprite_N4 : STD_LOGIC; 
  signal vga_sprite_N5 : STD_LOGIC; 
  signal vga_sprite_blue_0_19_1610 : STD_LOGIC; 
  signal vga_sprite_blue_0_3_1611 : STD_LOGIC; 
  signal vga_sprite_blue_1_19_1612 : STD_LOGIC; 
  signal vga_sprite_blue_1_3_1613 : STD_LOGIC; 
  signal vga_sprite_monaspriteon : STD_LOGIC; 
  signal vga_sprite_monaspriteon_addsub0002_0_Q : STD_LOGIC; 
  signal vga_sprite_monaspriteon_addsub0002_1_Q : STD_LOGIC; 
  signal vga_sprite_monaspriteon_addsub0002_5_Q : STD_LOGIC; 
  signal vga_sprite_monaspriteon_addsub0002_6_Q : STD_LOGIC; 
  signal vga_sprite_monaspriteon_cmp_ge0000 : STD_LOGIC; 
  signal vga_sprite_monaspriteon_cmp_le0000 : STD_LOGIC; 
  signal vga_sprite_present_state_FSM_FFd1_1633 : STD_LOGIC; 
  signal vga_sprite_present_state_FSM_FFd2_1634 : STD_LOGIC; 
  signal vga_sprite_present_state_FSM_FFd3_1635 : STD_LOGIC; 
  signal vga_sprite_reyspriteon : STD_LOGIC; 
  signal vga_sprite_reyspriteon_addsub0002_0_Q : STD_LOGIC; 
  signal vga_sprite_reyspriteon_addsub0002_1_Q : STD_LOGIC; 
  signal vga_sprite_reyspriteon_addsub0002_5_Q : STD_LOGIC; 
  signal vga_sprite_reyspriteon_addsub0002_6_Q : STD_LOGIC; 
  signal vga_sprite_reyspriteon_and0000 : STD_LOGIC; 
  signal vga_sprite_reyspriteon_cmp_ge0000 : STD_LOGIC; 
  signal vga_sprite_reyspriteon_cmp_le0000 : STD_LOGIC; 
  signal vga_sprite_skyespriteon : STD_LOGIC; 
  signal vga_sprite_skyespriteon_addsub0002_0_Q : STD_LOGIC; 
  signal vga_sprite_skyespriteon_addsub0002_1_Q : STD_LOGIC; 
  signal vga_sprite_skyespriteon_addsub0002_5_Q : STD_LOGIC; 
  signal vga_sprite_skyespriteon_addsub0002_6_Q : STD_LOGIC; 
  signal vga_sprite_skyespriteon_cmp_ge0000 : STD_LOGIC; 
  signal vga_sprite_skyespriteon_cmp_le0000 : STD_LOGIC; 
  signal vga_sprite_xpixMona_sub0000_8_bdd0 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_1798 : STD_LOGIC; 
  signal MMona : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MRey : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MSkye : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U1_Mcount_q_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U2_HCS : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Mcount_HCS_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_HCS_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_cmonav_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_cmonav_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_creyv_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_creyv_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_cskyev_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_cskyev_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_rmonav_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_rmonav_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_rreyv_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_rreyv_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Maccum_rskyev_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_rskyev_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_add0000_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0000_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0001_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0001_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0002_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0002_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0003_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0003_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0004_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0004_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0005_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_add0005_add0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_dcvmona_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_dcvmona_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_dcvrey_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_dcvrey_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_dcvskye_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_dcvskye_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_drvmona_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_drvmona_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_drvrey_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_drvrey_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_drvskye_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_Madd_drvskye_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_add0000_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_add0001_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_add0002_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_add0003_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_add0004_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_add0005_add0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_cmonav : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_creyv : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_cskyev : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvmona : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvmona_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvrey : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvrey_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvskye : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_dcvskye_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvmona : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvmona_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvrey : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvrey_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvskye : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_drvskye_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_rmonav : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_rreyv : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_rskyev : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal romMona_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal romRey_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal romSkye_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_sprite_Madd_monaspriteon_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal vga_sprite_Madd_monaspriteon_addsub0001_lut : STD_LOGIC_VECTOR ( 9 downto 7 ); 
  signal vga_sprite_Madd_monaspriteon_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Madd_monaspriteon_addsub0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Madd_reyspriteon_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal vga_sprite_Madd_reyspriteon_addsub0001_lut : STD_LOGIC_VECTOR ( 9 downto 7 ); 
  signal vga_sprite_Madd_reyspriteon_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Madd_reyspriteon_addsub0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 2 ); 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 2 ); 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 2 ); 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_Madd_skyespriteon_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal vga_sprite_Madd_skyespriteon_addsub0001_lut : STD_LOGIC_VECTOR ( 9 downto 7 ); 
  signal vga_sprite_Madd_skyespriteon_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Madd_skyespriteon_addsub0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_xpixMona_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_xpixMona_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_xpixRey_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_xpixRey_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_xpixSkye_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_xpixSkye_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal vga_sprite_Msub_ypixRey_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixRey_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_Msub_ypixSkye_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixSkye_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_monaspriteon_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 4 ); 
  signal vga_sprite_monaspriteon_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_monaspriteon_addsub0003 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal vga_sprite_reyspriteon_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 4 ); 
  signal vga_sprite_reyspriteon_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_reyspriteon_addsub0003 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal vga_sprite_rom_addr20_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr20_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_rom_addr21_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr21_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_skyespriteon_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 4 ); 
  signal vga_sprite_skyespriteon_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_skyespriteon_addsub0003 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal vga_sprite_xpixMona : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_xpixMona_sub0000 : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal vga_sprite_xpixRey : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_xpixSkye : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_ypixMona : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixMona_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixRey : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixSkye : STD_LOGIC_VECTOR ( 9 downto 0 ); 
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
      C => U1_q(17),
      CLR => btn_3_IBUF_916,
      D => cp_delay2_918,
      Q => cp_delay3_919
    );
  cp_delay2 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_916,
      D => cp_delay1_917,
      Q => cp_delay2_918
    );
  cp_delay1 : FDC
    port map (
      C => U1_q(17),
      CLR => btn_3_IBUF_916,
      D => btn_0_IBUF_915,
      Q => cp_delay1_917
    );
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(0),
      Q => U1_q_01
    );
  U1_q_1 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(1),
      Q => U1_q(1)
    );
  U1_q_2 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(2),
      Q => U1_q(2)
    );
  U1_q_3 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(3),
      Q => U1_q(3)
    );
  U1_q_4 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(4),
      Q => U1_q(4)
    );
  U1_q_5 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(5),
      Q => U1_q(5)
    );
  U1_q_6 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(6),
      Q => U1_q(6)
    );
  U1_q_7 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(7),
      Q => U1_q(7)
    );
  U1_q_8 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(8),
      Q => U1_q(8)
    );
  U1_q_9 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(9),
      Q => U1_q(9)
    );
  U1_q_10 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(10),
      Q => U1_q(10)
    );
  U1_q_11 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(11),
      Q => U1_q(11)
    );
  U1_q_12 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(12),
      Q => U1_q(12)
    );
  U1_q_13 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(13),
      Q => U1_q(13)
    );
  U1_q_14 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(14),
      Q => U1_q(14)
    );
  U1_q_15 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(15),
      Q => U1_q(15)
    );
  U1_q_16 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(16),
      Q => U1_q(16)
    );
  U1_q_17 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(17),
      Q => U1_q_171
    );
  U1_q_18 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(18),
      Q => U1_q(18)
    );
  U1_q_19 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(19),
      Q => U1_q(19)
    );
  U1_q_20 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(20),
      Q => U1_q(20)
    );
  U1_q_21 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(21),
      Q => U1_q(21)
    );
  U1_q_22 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(22),
      Q => U1_q(22)
    );
  U1_q_23 : FDC
    port map (
      C => mclk_BUFGP_930,
      CLR => btn_3_IBUF_916,
      D => Result(23),
      Q => U1_q(23)
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
      S => U1_Mcount_q_cy_1_rt_90,
      O => U1_Mcount_q_cy(1)
    );
  U1_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(0),
      LI => U1_Mcount_q_cy_1_rt_90,
      O => Result(1)
    );
  U1_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(1),
      DI => N0,
      S => U1_Mcount_q_cy_2_rt_98,
      O => U1_Mcount_q_cy(2)
    );
  U1_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(1),
      LI => U1_Mcount_q_cy_2_rt_98,
      O => Result(2)
    );
  U1_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(2),
      DI => N0,
      S => U1_Mcount_q_cy_3_rt_100,
      O => U1_Mcount_q_cy(3)
    );
  U1_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(2),
      LI => U1_Mcount_q_cy_3_rt_100,
      O => Result(3)
    );
  U1_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(3),
      DI => N0,
      S => U1_Mcount_q_cy_4_rt_102,
      O => U1_Mcount_q_cy(4)
    );
  U1_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(3),
      LI => U1_Mcount_q_cy_4_rt_102,
      O => Result(4)
    );
  U1_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(4),
      DI => N0,
      S => U1_Mcount_q_cy_5_rt_104,
      O => U1_Mcount_q_cy(5)
    );
  U1_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(4),
      LI => U1_Mcount_q_cy_5_rt_104,
      O => Result(5)
    );
  U1_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(5),
      DI => N0,
      S => U1_Mcount_q_cy_6_rt_106,
      O => U1_Mcount_q_cy(6)
    );
  U1_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(5),
      LI => U1_Mcount_q_cy_6_rt_106,
      O => Result(6)
    );
  U1_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(6),
      DI => N0,
      S => U1_Mcount_q_cy_7_rt_108,
      O => U1_Mcount_q_cy(7)
    );
  U1_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(6),
      LI => U1_Mcount_q_cy_7_rt_108,
      O => Result(7)
    );
  U1_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(7),
      DI => N0,
      S => U1_Mcount_q_cy_8_rt_110,
      O => U1_Mcount_q_cy(8)
    );
  U1_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(7),
      LI => U1_Mcount_q_cy_8_rt_110,
      O => Result(8)
    );
  U1_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(8),
      DI => N0,
      S => U1_Mcount_q_cy_9_rt_112,
      O => U1_Mcount_q_cy(9)
    );
  U1_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(8),
      LI => U1_Mcount_q_cy_9_rt_112,
      O => Result(9)
    );
  U1_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(9),
      DI => N0,
      S => U1_Mcount_q_cy_10_rt_70,
      O => U1_Mcount_q_cy(10)
    );
  U1_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(9),
      LI => U1_Mcount_q_cy_10_rt_70,
      O => Result(10)
    );
  U1_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(10),
      DI => N0,
      S => U1_Mcount_q_cy_11_rt_72,
      O => U1_Mcount_q_cy(11)
    );
  U1_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(10),
      LI => U1_Mcount_q_cy_11_rt_72,
      O => Result(11)
    );
  U1_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(11),
      DI => N0,
      S => U1_Mcount_q_cy_12_rt_74,
      O => U1_Mcount_q_cy(12)
    );
  U1_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(11),
      LI => U1_Mcount_q_cy_12_rt_74,
      O => Result(12)
    );
  U1_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(12),
      DI => N0,
      S => U1_Mcount_q_cy_13_rt_76,
      O => U1_Mcount_q_cy(13)
    );
  U1_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(12),
      LI => U1_Mcount_q_cy_13_rt_76,
      O => Result(13)
    );
  U1_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(13),
      DI => N0,
      S => U1_Mcount_q_cy_14_rt_78,
      O => U1_Mcount_q_cy(14)
    );
  U1_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(13),
      LI => U1_Mcount_q_cy_14_rt_78,
      O => Result(14)
    );
  U1_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(14),
      DI => N0,
      S => U1_Mcount_q_cy_15_rt_80,
      O => U1_Mcount_q_cy(15)
    );
  U1_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(14),
      LI => U1_Mcount_q_cy_15_rt_80,
      O => Result(15)
    );
  U1_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(15),
      DI => N0,
      S => U1_Mcount_q_cy_16_rt_82,
      O => U1_Mcount_q_cy(16)
    );
  U1_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(15),
      LI => U1_Mcount_q_cy_16_rt_82,
      O => Result(16)
    );
  U1_Mcount_q_cy_17_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(16),
      DI => N0,
      S => U1_Mcount_q_cy_17_rt_84,
      O => U1_Mcount_q_cy(17)
    );
  U1_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(16),
      LI => U1_Mcount_q_cy_17_rt_84,
      O => Result(17)
    );
  U1_Mcount_q_cy_18_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(17),
      DI => N0,
      S => U1_Mcount_q_cy_18_rt_86,
      O => U1_Mcount_q_cy(18)
    );
  U1_Mcount_q_xor_18_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(17),
      LI => U1_Mcount_q_cy_18_rt_86,
      O => Result(18)
    );
  U1_Mcount_q_cy_19_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(18),
      DI => N0,
      S => U1_Mcount_q_cy_19_rt_88,
      O => U1_Mcount_q_cy(19)
    );
  U1_Mcount_q_xor_19_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(18),
      LI => U1_Mcount_q_cy_19_rt_88,
      O => Result(19)
    );
  U1_Mcount_q_cy_20_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(19),
      DI => N0,
      S => U1_Mcount_q_cy_20_rt_92,
      O => U1_Mcount_q_cy(20)
    );
  U1_Mcount_q_xor_20_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(19),
      LI => U1_Mcount_q_cy_20_rt_92,
      O => Result(20)
    );
  U1_Mcount_q_cy_21_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(20),
      DI => N0,
      S => U1_Mcount_q_cy_21_rt_94,
      O => U1_Mcount_q_cy(21)
    );
  U1_Mcount_q_xor_21_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(20),
      LI => U1_Mcount_q_cy_21_rt_94,
      O => Result(21)
    );
  U1_Mcount_q_cy_22_Q : MUXCY
    port map (
      CI => U1_Mcount_q_cy(21),
      DI => N0,
      S => U1_Mcount_q_cy_22_rt_96,
      O => U1_Mcount_q_cy(22)
    );
  U1_Mcount_q_xor_22_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(21),
      LI => U1_Mcount_q_cy_22_rt_96,
      O => Result(22)
    );
  U1_Mcount_q_xor_23_Q : XORCY
    port map (
      CI => U1_Mcount_q_cy(22),
      LI => U1_Mcount_q_xor_23_rt_114,
      O => Result(23)
    );
  skyePic : skye
    port map (
      clka => U1_q(0),
      douta(7) => MSkye(7),
      douta(6) => MSkye(6),
      douta(5) => MSkye(5),
      douta(4) => MSkye(4),
      douta(3) => MSkye(3),
      douta(2) => MSkye(2),
      douta(1) => MSkye(1),
      douta(0) => MSkye(0),
      addra(13) => romSkye_addr14(13),
      addra(12) => romSkye_addr14(12),
      addra(11) => romSkye_addr14(11),
      addra(10) => romSkye_addr14(10),
      addra(9) => romSkye_addr14(9),
      addra(8) => romSkye_addr14(8),
      addra(7) => romSkye_addr14(7),
      addra(6) => romSkye_addr14(6),
      addra(5) => romSkye_addr14(5),
      addra(4) => romSkye_addr14(4),
      addra(3) => romSkye_addr14(3),
      addra(2) => romSkye_addr14(2),
      addra(1) => romSkye_addr14(1),
      addra(0) => romSkye_addr14(0)
    );
  monaPic : mona
    port map (
      clka => U1_q(0),
      douta(7) => MMona(7),
      douta(6) => MMona(6),
      douta(5) => MMona(5),
      douta(4) => MMona(4),
      douta(3) => MMona(3),
      douta(2) => MMona(2),
      douta(1) => MMona(1),
      douta(0) => MMona(0),
      addra(13) => romMona_addr14(13),
      addra(12) => romMona_addr14(12),
      addra(11) => romMona_addr14(11),
      addra(10) => romMona_addr14(10),
      addra(9) => romMona_addr14(9),
      addra(8) => romMona_addr14(8),
      addra(7) => romMona_addr14(7),
      addra(6) => romMona_addr14(6),
      addra(5) => romMona_addr14(5),
      addra(4) => romMona_addr14(4),
      addra(3) => romMona_addr14(3),
      addra(2) => romMona_addr14(2),
      addra(1) => romMona_addr14(1),
      addra(0) => romMona_addr14(0)
    );
  rey : reymoyet
    port map (
      clka => U1_q(0),
      douta(7) => MRey(7),
      douta(6) => MRey(6),
      douta(5) => MRey(5),
      douta(4) => MRey(4),
      douta(3) => MRey(3),
      douta(2) => MRey(2),
      douta(1) => MRey(1),
      douta(0) => MRey(0),
      addra(13) => romRey_addr14(13),
      addra(12) => romRey_addr14(12),
      addra(11) => romRey_addr14(11),
      addra(10) => romRey_addr14(10),
      addra(9) => romRey_addr14(9),
      addra(8) => romRey_addr14(8),
      addra(7) => romRey_addr14(7),
      addra(6) => romRey_addr14(6),
      addra(5) => romRey_addr14(5),
      addra(4) => romRey_addr14(4),
      addra(3) => romRey_addr14(3),
      addra(2) => romRey_addr14(2),
      addra(1) => romRey_addr14(1),
      addra(0) => romRey_addr14(0)
    );
  U2_Mcount_HCS_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(8),
      LI => U2_Mcount_HCS_xor_9_rt_182,
      O => U2_Result_9_1
    );
  U2_Mcount_HCS_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      LI => U2_Mcount_HCS_cy_8_rt_170,
      O => U2_Result_8_1
    );
  U2_Mcount_HCS_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      DI => N0,
      S => U2_Mcount_HCS_cy_8_rt_170,
      O => U2_Mcount_HCS_cy(8)
    );
  U2_Mcount_HCS_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      LI => U2_Mcount_HCS_cy_7_rt_168,
      O => U2_Result_7_1
    );
  U2_Mcount_HCS_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      DI => N0,
      S => U2_Mcount_HCS_cy_7_rt_168,
      O => U2_Mcount_HCS_cy(7)
    );
  U2_Mcount_HCS_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      LI => U2_Mcount_HCS_cy_6_rt_166,
      O => U2_Result_6_1
    );
  U2_Mcount_HCS_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      DI => N0,
      S => U2_Mcount_HCS_cy_6_rt_166,
      O => U2_Mcount_HCS_cy(6)
    );
  U2_Mcount_HCS_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      LI => U2_Mcount_HCS_cy_5_rt_164,
      O => U2_Result_5_1
    );
  U2_Mcount_HCS_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      DI => N0,
      S => U2_Mcount_HCS_cy_5_rt_164,
      O => U2_Mcount_HCS_cy(5)
    );
  U2_Mcount_HCS_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      LI => U2_Mcount_HCS_cy_4_rt_162,
      O => U2_Result_4_1
    );
  U2_Mcount_HCS_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      DI => N0,
      S => U2_Mcount_HCS_cy_4_rt_162,
      O => U2_Mcount_HCS_cy(4)
    );
  U2_Mcount_HCS_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      LI => U2_Mcount_HCS_cy_3_rt_160,
      O => U2_Result_3_1
    );
  U2_Mcount_HCS_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      DI => N0,
      S => U2_Mcount_HCS_cy_3_rt_160,
      O => U2_Mcount_HCS_cy(3)
    );
  U2_Mcount_HCS_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      LI => U2_Mcount_HCS_cy_2_rt_158,
      O => U2_Result_2_1
    );
  U2_Mcount_HCS_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      DI => N0,
      S => U2_Mcount_HCS_cy_2_rt_158,
      O => U2_Mcount_HCS_cy(2)
    );
  U2_Mcount_HCS_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      LI => U2_Mcount_HCS_cy_1_rt_156,
      O => U2_Result_1_1
    );
  U2_Mcount_HCS_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      DI => N0,
      S => U2_Mcount_HCS_cy_1_rt_156,
      O => U2_Mcount_HCS_cy(1)
    );
  U2_Mcount_HCS_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U2_Mcount_HCS_lut(0),
      O => U2_Result_0_1
    );
  U2_Mcount_HCS_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U2_Mcount_HCS_lut(0),
      O => U2_Mcount_HCS_cy(0)
    );
  U2_Mcount_vcs_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(8),
      LI => U2_Mcount_vcs_xor_9_rt_211,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_199,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_199,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_197,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_197,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_195,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_195,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_193,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_193,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_191,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_191,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_189,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_189,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_187,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_187,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_185,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_185,
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
  U2_HCS_9 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_9,
      Q => U2_HCS(9)
    );
  U2_HCS_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_8,
      Q => U2_HCS(8)
    );
  U2_HCS_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_7,
      Q => U2_HCS(7)
    );
  U2_HCS_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_6,
      Q => U2_HCS(6)
    );
  U2_HCS_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_5,
      Q => U2_HCS(5)
    );
  U2_HCS_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_4,
      Q => U2_HCS(4)
    );
  U2_HCS_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_3,
      Q => U2_HCS(3)
    );
  U2_HCS_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_2,
      Q => U2_HCS(2)
    );
  U2_HCS_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_1,
      Q => U2_HCS(1)
    );
  U2_HCS_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_HCS_eqn_0,
      Q => U2_HCS(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_234,
      CLR => btn_3_IBUF_916,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_VSENABLE : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_HCS_cmp_eq0000,
      Q => U2_VSENABLE_234
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(12),
      LI => vga_sprite_rom_addr2_addsub0001(13),
      O => romRey_addr14(13)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_1156,
      O => romRey_addr14(12)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_1156,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_1154,
      O => romRey_addr14(11)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_1154,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_1152,
      O => romRey_addr14(10)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_1152,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9),
      O => romRey_addr14(9)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(8),
      DI => vga_sprite_rom_addr2_addsub0001(9),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(9),
      I1 => vga_sprite_xpixRey(9),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8),
      O => romRey_addr14(8)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(7),
      DI => vga_sprite_rom_addr2_addsub0001(8),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(8),
      I1 => vga_sprite_xpixRey(8),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7),
      O => romRey_addr14(7)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(6),
      DI => vga_sprite_rom_addr2_addsub0001(7),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(7),
      I1 => vga_sprite_xpixRey(7),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6),
      O => romRey_addr14(6)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(5),
      DI => vga_sprite_rom_addr2_addsub0001(6),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(6),
      I1 => vga_sprite_xpixRey(6),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5),
      O => romRey_addr14(5)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(4),
      DI => vga_sprite_rom_addr2_addsub0001(5),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(5),
      I1 => vga_sprite_xpixRey(5),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4),
      O => romRey_addr14(4)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(3),
      DI => vga_sprite_ypixRey(2),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(2),
      I1 => vga_sprite_xpixRey(4),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(2),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3),
      O => romRey_addr14(3)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(2),
      DI => vga_sprite_ypixRey(1),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(1),
      I1 => vga_sprite_xpixRey(3),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_2_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2),
      O => romRey_addr14(2)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_2_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixRey(0),
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(2)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(0),
      I1 => vga_sprite_xpixRey(2),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(12),
      LI => vga_sprite_rom_addr21_addsub0001(13),
      O => romMona_addr14(13)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_1103,
      O => romMona_addr14(12)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_1103,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_1101,
      O => romMona_addr14(11)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_1101,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_1099,
      O => romMona_addr14(10)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_1099,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9),
      O => romMona_addr14(9)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(8),
      DI => vga_sprite_rom_addr21_addsub0001(9),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(9),
      I1 => vga_sprite_xpixMona(9),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8),
      O => romMona_addr14(8)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(7),
      DI => vga_sprite_rom_addr21_addsub0001(8),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(8),
      I1 => vga_sprite_xpixMona(8),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7),
      O => romMona_addr14(7)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(6),
      DI => vga_sprite_rom_addr21_addsub0001(7),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(7),
      I1 => vga_sprite_xpixMona(7),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6),
      O => romMona_addr14(6)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(5),
      DI => vga_sprite_rom_addr21_addsub0001(6),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(6),
      I1 => vga_sprite_xpixMona(6),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5),
      O => romMona_addr14(5)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(4),
      DI => vga_sprite_rom_addr21_addsub0001(5),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(5),
      I1 => vga_sprite_xpixMona(5),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4),
      O => romMona_addr14(4)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(3),
      DI => vga_sprite_ypixMona(2),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(2),
      I1 => vga_sprite_xpixMona(4),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(2),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3),
      O => romMona_addr14(3)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(2),
      DI => vga_sprite_ypixMona(1),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(1),
      I1 => vga_sprite_xpixMona(3),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_2_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2),
      O => romMona_addr14(2)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_2_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixMona(0),
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(2)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(0),
      I1 => vga_sprite_xpixMona(2),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(12),
      LI => vga_sprite_rom_addr20_addsub0001(13),
      O => romSkye_addr14(13)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_1050,
      O => romSkye_addr14(12)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_1050,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_1048,
      O => romSkye_addr14(11)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_1048,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_1046,
      O => romSkye_addr14(10)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_1046,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9),
      O => romSkye_addr14(9)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(8),
      DI => vga_sprite_rom_addr20_addsub0001(9),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(9),
      I1 => vga_sprite_xpixSkye(9),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8),
      O => romSkye_addr14(8)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(7),
      DI => vga_sprite_rom_addr20_addsub0001(8),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(8),
      I1 => vga_sprite_xpixSkye(8),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7),
      O => romSkye_addr14(7)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(6),
      DI => vga_sprite_rom_addr20_addsub0001(7),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(7),
      I1 => vga_sprite_xpixSkye(7),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6),
      O => romSkye_addr14(6)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(5),
      DI => vga_sprite_rom_addr20_addsub0001(6),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(6),
      I1 => vga_sprite_xpixSkye(6),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5),
      O => romSkye_addr14(5)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(4),
      DI => vga_sprite_rom_addr20_addsub0001(5),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(5),
      I1 => vga_sprite_xpixSkye(5),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4),
      O => romSkye_addr14(4)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(3),
      DI => vga_sprite_ypixSkye(2),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(2),
      I1 => vga_sprite_xpixSkye(4),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(2),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3),
      O => romSkye_addr14(3)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(2),
      DI => vga_sprite_ypixSkye(1),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(1),
      I1 => vga_sprite_xpixSkye(3),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_2_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2),
      O => romSkye_addr14(2)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_2_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixSkye(0),
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(2)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(0),
      I1 => vga_sprite_xpixSkye(2),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr2_addsub0000(13),
      O => vga_sprite_rom_addr2_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1191,
      O => vga_sprite_rom_addr2_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1191,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr2_addsub0001(11)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10),
      DI => vga_sprite_rom_addr2_addsub0000(11),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(11),
      I1 => vga_sprite_ypixRey(9),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr2_addsub0001(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(9),
      DI => vga_sprite_rom_addr2_addsub0000(10),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(10),
      I1 => vga_sprite_ypixRey(8),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0001(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8),
      DI => vga_sprite_rom_addr2_addsub0000(9),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(9),
      I1 => vga_sprite_ypixRey(7),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0001(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(7),
      DI => vga_sprite_rom_addr2_addsub0000(8),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(8),
      I1 => vga_sprite_ypixRey(6),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0001(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6),
      DI => vga_sprite_rom_addr2_addsub0000(7),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(7),
      I1 => vga_sprite_ypixRey(5),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0001(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5),
      DI => vga_sprite_rom_addr2_addsub0000(6),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(6),
      I1 => vga_sprite_ypixRey(4),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0001(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixRey(0),
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(0),
      I1 => vga_sprite_ypixRey(3),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr21_addsub0000(13),
      O => vga_sprite_rom_addr21_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_1138,
      O => vga_sprite_rom_addr21_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_1138,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr21_addsub0001(11)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10),
      DI => vga_sprite_rom_addr21_addsub0000(11),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(11),
      I1 => vga_sprite_ypixMona(9),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr21_addsub0001(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(9),
      DI => vga_sprite_rom_addr21_addsub0000(10),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(10),
      I1 => vga_sprite_ypixMona(8),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0001(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8),
      DI => vga_sprite_rom_addr21_addsub0000(9),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(9),
      I1 => vga_sprite_ypixMona(7),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0001(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(7),
      DI => vga_sprite_rom_addr21_addsub0000(8),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(8),
      I1 => vga_sprite_ypixMona(6),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0001(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6),
      DI => vga_sprite_rom_addr21_addsub0000(7),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(7),
      I1 => vga_sprite_ypixMona(5),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0001(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5),
      DI => vga_sprite_rom_addr21_addsub0000(6),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(6),
      I1 => vga_sprite_ypixMona(4),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0001(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixMona(0),
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(0),
      I1 => vga_sprite_ypixMona(3),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr20_addsub0000(13),
      O => vga_sprite_rom_addr20_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_1085,
      O => vga_sprite_rom_addr20_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_1085,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr20_addsub0001(11)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10),
      DI => vga_sprite_rom_addr20_addsub0000(11),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(11),
      I1 => vga_sprite_ypixSkye(9),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr20_addsub0001(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(9),
      DI => vga_sprite_rom_addr20_addsub0000(10),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(10),
      I1 => vga_sprite_ypixSkye(8),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0001(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8),
      DI => vga_sprite_rom_addr20_addsub0000(9),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(9),
      I1 => vga_sprite_ypixSkye(7),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0001(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(7),
      DI => vga_sprite_rom_addr20_addsub0000(8),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(8),
      I1 => vga_sprite_ypixSkye(6),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0001(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6),
      DI => vga_sprite_rom_addr20_addsub0000(7),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(7),
      I1 => vga_sprite_ypixSkye(5),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0001(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5),
      DI => vga_sprite_rom_addr20_addsub0000(6),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(6),
      I1 => vga_sprite_ypixSkye(4),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0001(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixSkye(0),
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(0),
      I1 => vga_sprite_ypixSkye(3),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr2_addsub0000(13)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(7),
      I1 => vga_sprite_ypixRey(8),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0000(12)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(8),
      DI => vga_sprite_ypixRey(6),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(6),
      I1 => vga_sprite_ypixRey(7),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0000(11)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(7),
      DI => vga_sprite_ypixRey(5),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(5),
      I1 => vga_sprite_ypixRey(6),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0000(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(6),
      DI => vga_sprite_ypixRey(4),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(4),
      I1 => vga_sprite_ypixRey(5),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0000(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(5),
      DI => vga_sprite_ypixRey(3),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(3),
      I1 => vga_sprite_ypixRey(4),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0000(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(4),
      DI => vga_sprite_ypixRey(2),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(2),
      I1 => vga_sprite_ypixRey(3),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr2_addsub0000(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(3),
      DI => vga_sprite_ypixRey(1),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(1),
      I1 => vga_sprite_ypixRey(2),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr2_addsub0000(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixRey(0),
      S => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixRey(0),
      I1 => vga_sprite_ypixRey(1),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr21_addsub0000(13)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(7),
      I1 => vga_sprite_ypixMona(8),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0000(12)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(8),
      DI => vga_sprite_ypixMona(6),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(6),
      I1 => vga_sprite_ypixMona(7),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0000(11)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(7),
      DI => vga_sprite_ypixMona(5),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(5),
      I1 => vga_sprite_ypixMona(6),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0000(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(6),
      DI => vga_sprite_ypixMona(4),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(4),
      I1 => vga_sprite_ypixMona(5),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0000(9)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(5),
      DI => vga_sprite_ypixMona(3),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(3),
      I1 => vga_sprite_ypixMona(4),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0000(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(4),
      DI => vga_sprite_ypixMona(2),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(2),
      I1 => vga_sprite_ypixMona(3),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr21_addsub0000(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(3),
      DI => vga_sprite_ypixMona(1),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(1),
      I1 => vga_sprite_ypixMona(2),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr21_addsub0000(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixMona(0),
      S => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixMona(0),
      I1 => vga_sprite_ypixMona(1),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr20_addsub0000(13)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(7),
      I1 => vga_sprite_ypixSkye(8),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(8),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0000(12)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(8),
      DI => vga_sprite_ypixSkye(6),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(6),
      I1 => vga_sprite_ypixSkye(7),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(7),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0000(11)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(7),
      DI => vga_sprite_ypixSkye(5),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(5),
      I1 => vga_sprite_ypixSkye(6),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(6),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0000(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(6),
      DI => vga_sprite_ypixSkye(4),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(4),
      I1 => vga_sprite_ypixSkye(5),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(5),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0000(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(5),
      DI => vga_sprite_ypixSkye(3),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(3),
      I1 => vga_sprite_ypixSkye(4),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(4),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0000(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(4),
      DI => vga_sprite_ypixSkye(2),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(2),
      I1 => vga_sprite_ypixSkye(3),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(3),
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr20_addsub0000(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(3),
      DI => vga_sprite_ypixSkye(1),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(4)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(1),
      I1 => vga_sprite_ypixSkye(2),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr20_addsub0000(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => vga_sprite_ypixSkye(0),
      S => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy(3)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_sprite_ypixSkye(0),
      I1 => vga_sprite_ypixSkye(1),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(9),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_monaspriteon_addsub0003(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_monaspriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_monaspriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(8),
      DI => vga_sprite_monaspriteon_addsub0001(9),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(9),
      O => vga_sprite_monaspriteon_cmp_le0000
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_monaspriteon_addsub0001(9),
      I1 => U2_HCS(9),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(7),
      DI => vga_sprite_monaspriteon_addsub0001(8),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(6),
      DI => vga_sprite_monaspriteon_addsub0001(7),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(5),
      DI => vga_sprite_monaspriteon_addsub0001(6),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(4),
      DI => vga_sprite_monaspriteon_addsub0001(5),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_monaspriteon_addsub0001(5),
      I1 => U2_HCS(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(3),
      DI => vga_sprite_monaspriteon_addsub0001(4),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(2),
      DI => vga_sprite_monaspriteon_addsub0001(3),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(1),
      DI => vga_sprite_monaspriteon_addsub0001(2),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(0),
      DI => b_cmonav(1),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_cmonav(0),
      S => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_cy(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(9),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_skyespriteon_addsub0003(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_skyespriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_skyespriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(8),
      DI => vga_sprite_skyespriteon_addsub0001(9),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(9),
      O => vga_sprite_skyespriteon_cmp_le0000
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_skyespriteon_addsub0001(9),
      I1 => U2_HCS(9),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(7),
      DI => vga_sprite_skyespriteon_addsub0001(8),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(6),
      DI => vga_sprite_skyespriteon_addsub0001(7),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(5),
      DI => vga_sprite_skyespriteon_addsub0001(6),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(4),
      DI => vga_sprite_skyespriteon_addsub0001(5),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_skyespriteon_addsub0001(5),
      I1 => U2_HCS(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(3),
      DI => vga_sprite_skyespriteon_addsub0001(4),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(2),
      DI => vga_sprite_skyespriteon_addsub0001(3),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(1),
      DI => vga_sprite_skyespriteon_addsub0001(2),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(0),
      DI => b_cskyev(1),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_cskyev(0),
      S => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_cy(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(9),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_reyspriteon_addsub0003(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_reyspriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_reyspriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(8),
      DI => vga_sprite_reyspriteon_addsub0001(9),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(9),
      O => vga_sprite_reyspriteon_cmp_le0000
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_reyspriteon_addsub0001(9),
      I1 => U2_HCS(9),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(7),
      DI => vga_sprite_reyspriteon_addsub0001(8),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(6),
      DI => vga_sprite_reyspriteon_addsub0001(7),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(5),
      DI => vga_sprite_reyspriteon_addsub0001(6),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(4),
      DI => vga_sprite_reyspriteon_addsub0001(5),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_reyspriteon_addsub0001(5),
      I1 => U2_HCS(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(3),
      DI => vga_sprite_reyspriteon_addsub0001(4),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(2),
      DI => vga_sprite_reyspriteon_addsub0001(3),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(1),
      DI => vga_sprite_reyspriteon_addsub0001(2),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(0),
      DI => b_creyv(1),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_creyv(0),
      S => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_cy(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(9),
      O => vga_sprite_monaspriteon_cmp_ge0000
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_9_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_7_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_monaspriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_monaspriteon_addsub0002_5_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_monaspriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_cy(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_monaspriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_ge0000_lut(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(9),
      O => vga_sprite_skyespriteon_cmp_ge0000
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_9_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_7_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_skyespriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_skyespriteon_addsub0002_5_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_skyespriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_cy(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_skyespriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_ge0000_lut(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(8),
      DI => vga_sprite_Madd_monaspriteon_addsub0001_lut(9),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(9),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(7),
      DI => vga_sprite_Madd_monaspriteon_addsub0001_lut(8),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(6),
      DI => vga_sprite_Madd_monaspriteon_addsub0001_lut(7),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(5),
      DI => vga_sprite_monaspriteon_addsub0000(6),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(4),
      DI => vga_sprite_monaspriteon_addsub0000(5),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(3),
      DI => vga_sprite_monaspriteon_addsub0000(4),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(2),
      DI => b_cmonav(3),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(3),
      I1 => U2_HCS(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(1),
      DI => b_cmonav(2),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(0),
      DI => b_cmonav(1),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_cmonav(0),
      S => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cmonav(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(8),
      DI => vga_sprite_Madd_skyespriteon_addsub0001_lut(9),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(9),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(7),
      DI => vga_sprite_Madd_skyespriteon_addsub0001_lut(8),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(6),
      DI => vga_sprite_Madd_skyespriteon_addsub0001_lut(7),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(5),
      DI => vga_sprite_skyespriteon_addsub0000(6),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(4),
      DI => vga_sprite_skyespriteon_addsub0000(5),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(3),
      DI => vga_sprite_skyespriteon_addsub0000(4),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(2),
      DI => b_cskyev(3),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(3),
      I1 => U2_HCS(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(1),
      DI => b_cskyev(2),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(0),
      DI => b_cskyev(1),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_cskyev(0),
      S => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_cskyev(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(8),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(9),
      O => vga_sprite_reyspriteon_cmp_ge0000
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_9_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(7),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(6),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_7_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(5),
      DI => U2_vcs(6),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_reyspriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(4),
      DI => U2_vcs(5),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => vga_sprite_reyspriteon_addsub0002_5_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(3),
      DI => U2_vcs(4),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(2),
      DI => U2_vcs(3),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(1),
      DI => U2_vcs(2),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(0),
      DI => U2_vcs(1),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(1),
      I1 => vga_sprite_reyspriteon_addsub0002_1_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_vcs(0),
      S => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_cy(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => vga_sprite_reyspriteon_addsub0002_0_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_ge0000_lut(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(8),
      DI => vga_sprite_Madd_reyspriteon_addsub0001_lut(9),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(9),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(7),
      DI => vga_sprite_Madd_reyspriteon_addsub0001_lut(8),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(6),
      DI => vga_sprite_Madd_reyspriteon_addsub0001_lut(7),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(5),
      DI => vga_sprite_reyspriteon_addsub0000(6),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(4),
      DI => vga_sprite_reyspriteon_addsub0000(5),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(3),
      DI => vga_sprite_reyspriteon_addsub0000(4),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(2),
      DI => b_creyv(3),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(3),
      I1 => U2_HCS(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(1),
      DI => b_creyv(2),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(0),
      DI => b_creyv(1),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(1),
      I1 => U2_HCS(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_creyv(0),
      S => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(0)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_creyv(0),
      I1 => U2_HCS(0),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(0)
    );
  vga_sprite_Msub_xpixRey_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(8),
      LI => vga_sprite_Msub_xpixRey_lut(9),
      O => vga_sprite_xpixRey(9)
    );
  vga_sprite_Msub_xpixRey_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(7),
      LI => vga_sprite_Msub_xpixRey_lut(8),
      O => vga_sprite_xpixRey(8)
    );
  vga_sprite_Msub_xpixRey_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(7),
      DI => vga_sprite_xpixMona_sub0000(8),
      S => vga_sprite_Msub_xpixRey_lut(8),
      O => vga_sprite_Msub_xpixRey_cy(8)
    );
  vga_sprite_Msub_xpixRey_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(6),
      LI => vga_sprite_Msub_xpixRey_lut(7),
      O => vga_sprite_xpixRey(7)
    );
  vga_sprite_Msub_xpixRey_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(6),
      DI => vga_sprite_xpixMona_sub0000(7),
      S => vga_sprite_Msub_xpixRey_lut(7),
      O => vga_sprite_Msub_xpixRey_cy(7)
    );
  vga_sprite_Msub_xpixRey_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_xpixMona_sub0000(7),
      I1 => b_creyv(7),
      O => vga_sprite_Msub_xpixRey_lut(7)
    );
  vga_sprite_Msub_xpixRey_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(5),
      LI => vga_sprite_Msub_xpixRey_lut(6),
      O => vga_sprite_xpixRey(6)
    );
  vga_sprite_Msub_xpixRey_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(5),
      DI => vga_sprite_xpixMona_sub0000(6),
      S => vga_sprite_Msub_xpixRey_lut(6),
      O => vga_sprite_Msub_xpixRey_cy(6)
    );
  vga_sprite_Msub_xpixRey_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(4),
      LI => vga_sprite_Msub_xpixRey_lut(5),
      O => vga_sprite_xpixRey(5)
    );
  vga_sprite_Msub_xpixRey_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(4),
      DI => vga_sprite_xpixMona_sub0000(5),
      S => vga_sprite_Msub_xpixRey_lut(5),
      O => vga_sprite_Msub_xpixRey_cy(5)
    );
  vga_sprite_Msub_xpixRey_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(3),
      LI => vga_sprite_Msub_xpixRey_lut(4),
      O => vga_sprite_xpixRey(4)
    );
  vga_sprite_Msub_xpixRey_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(3),
      DI => vga_sprite_xpixMona_sub0000(4),
      S => vga_sprite_Msub_xpixRey_lut(4),
      O => vga_sprite_Msub_xpixRey_cy(4)
    );
  vga_sprite_Msub_xpixRey_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(2),
      LI => vga_sprite_Msub_xpixRey_lut(3),
      O => vga_sprite_xpixRey(3)
    );
  vga_sprite_Msub_xpixRey_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(2),
      DI => U2_HCS(3),
      S => vga_sprite_Msub_xpixRey_lut(3),
      O => vga_sprite_Msub_xpixRey_cy(3)
    );
  vga_sprite_Msub_xpixRey_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(3),
      I1 => b_creyv(3),
      O => vga_sprite_Msub_xpixRey_lut(3)
    );
  vga_sprite_Msub_xpixRey_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(1),
      LI => vga_sprite_Msub_xpixRey_lut(2),
      O => vga_sprite_xpixRey(2)
    );
  vga_sprite_Msub_xpixRey_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(1),
      DI => U2_HCS(2),
      S => vga_sprite_Msub_xpixRey_lut(2),
      O => vga_sprite_Msub_xpixRey_cy(2)
    );
  vga_sprite_Msub_xpixRey_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => b_creyv(2),
      O => vga_sprite_Msub_xpixRey_lut(2)
    );
  vga_sprite_Msub_xpixRey_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(0),
      LI => vga_sprite_Msub_xpixRey_lut(1),
      O => romRey_addr14(1)
    );
  vga_sprite_Msub_xpixRey_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(0),
      DI => U2_HCS(1),
      S => vga_sprite_Msub_xpixRey_lut(1),
      O => vga_sprite_Msub_xpixRey_cy(1)
    );
  vga_sprite_Msub_xpixRey_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => b_creyv(1),
      O => vga_sprite_Msub_xpixRey_lut(1)
    );
  vga_sprite_Msub_xpixRey_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixRey_lut(0),
      O => romRey_addr14(0)
    );
  vga_sprite_Msub_xpixRey_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_HCS(0),
      S => vga_sprite_Msub_xpixRey_lut(0),
      O => vga_sprite_Msub_xpixRey_cy(0)
    );
  vga_sprite_Msub_xpixRey_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(0),
      I1 => b_creyv(0),
      O => vga_sprite_Msub_xpixRey_lut(0)
    );
  vga_sprite_Msub_ypixSkye_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(8),
      LI => vga_sprite_Msub_ypixSkye_lut(9),
      O => vga_sprite_ypixSkye(9)
    );
  vga_sprite_Msub_ypixSkye_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(9),
      I1 => b_rskyev(9),
      O => vga_sprite_Msub_ypixSkye_lut(9)
    );
  vga_sprite_Msub_ypixSkye_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(7),
      LI => vga_sprite_Msub_ypixSkye_lut(8),
      O => vga_sprite_ypixSkye(8)
    );
  vga_sprite_Msub_ypixSkye_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(7),
      DI => vga_sprite_ypixMona_sub0000(8),
      S => vga_sprite_Msub_ypixSkye_lut(8),
      O => vga_sprite_Msub_ypixSkye_cy(8)
    );
  vga_sprite_Msub_ypixSkye_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(8),
      I1 => b_rskyev(8),
      O => vga_sprite_Msub_ypixSkye_lut(8)
    );
  vga_sprite_Msub_ypixSkye_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(6),
      LI => vga_sprite_Msub_ypixSkye_lut(7),
      O => vga_sprite_ypixSkye(7)
    );
  vga_sprite_Msub_ypixSkye_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(6),
      DI => vga_sprite_ypixMona_sub0000(7),
      S => vga_sprite_Msub_ypixSkye_lut(7),
      O => vga_sprite_Msub_ypixSkye_cy(7)
    );
  vga_sprite_Msub_ypixSkye_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(7),
      I1 => b_rskyev(7),
      O => vga_sprite_Msub_ypixSkye_lut(7)
    );
  vga_sprite_Msub_ypixSkye_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(5),
      LI => vga_sprite_Msub_ypixSkye_lut(6),
      O => vga_sprite_ypixSkye(6)
    );
  vga_sprite_Msub_ypixSkye_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(5),
      DI => vga_sprite_ypixMona_sub0000(6),
      S => vga_sprite_Msub_ypixSkye_lut(6),
      O => vga_sprite_Msub_ypixSkye_cy(6)
    );
  vga_sprite_Msub_ypixSkye_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(6),
      I1 => b_rskyev(6),
      O => vga_sprite_Msub_ypixSkye_lut(6)
    );
  vga_sprite_Msub_ypixSkye_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(4),
      LI => vga_sprite_Msub_ypixSkye_lut(5),
      O => vga_sprite_ypixSkye(5)
    );
  vga_sprite_Msub_ypixSkye_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(4),
      DI => vga_sprite_ypixMona_sub0000(5),
      S => vga_sprite_Msub_ypixSkye_lut(5),
      O => vga_sprite_Msub_ypixSkye_cy(5)
    );
  vga_sprite_Msub_ypixSkye_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(5),
      I1 => b_rskyev(5),
      O => vga_sprite_Msub_ypixSkye_lut(5)
    );
  vga_sprite_Msub_ypixSkye_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(3),
      LI => vga_sprite_Msub_ypixSkye_lut(4),
      O => vga_sprite_ypixSkye(4)
    );
  vga_sprite_Msub_ypixSkye_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(3),
      DI => vga_sprite_ypixMona_sub0000(4),
      S => vga_sprite_Msub_ypixSkye_lut(4),
      O => vga_sprite_Msub_ypixSkye_cy(4)
    );
  vga_sprite_Msub_ypixSkye_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(4),
      I1 => b_rskyev(4),
      O => vga_sprite_Msub_ypixSkye_lut(4)
    );
  vga_sprite_Msub_ypixSkye_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(2),
      LI => vga_sprite_Msub_ypixSkye_lut(3),
      O => vga_sprite_ypixSkye(3)
    );
  vga_sprite_Msub_ypixSkye_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(2),
      DI => vga_sprite_ypixMona_sub0000(3),
      S => vga_sprite_Msub_ypixSkye_lut(3),
      O => vga_sprite_Msub_ypixSkye_cy(3)
    );
  vga_sprite_Msub_ypixSkye_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(3),
      I1 => b_rskyev(3),
      O => vga_sprite_Msub_ypixSkye_lut(3)
    );
  vga_sprite_Msub_ypixSkye_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(1),
      LI => vga_sprite_Msub_ypixSkye_lut(2),
      O => vga_sprite_ypixSkye(2)
    );
  vga_sprite_Msub_ypixSkye_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(1),
      DI => vga_sprite_ypixMona_sub0000(2),
      S => vga_sprite_Msub_ypixSkye_lut(2),
      O => vga_sprite_Msub_ypixSkye_cy(2)
    );
  vga_sprite_Msub_ypixSkye_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(2),
      I1 => b_rskyev(2),
      O => vga_sprite_Msub_ypixSkye_lut(2)
    );
  vga_sprite_Msub_ypixSkye_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(0),
      LI => vga_sprite_Msub_ypixSkye_lut(1),
      O => vga_sprite_ypixSkye(1)
    );
  vga_sprite_Msub_ypixSkye_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(0),
      DI => vga_sprite_ypixMona_sub0000(1),
      S => vga_sprite_Msub_ypixSkye_lut(1),
      O => vga_sprite_Msub_ypixSkye_cy(1)
    );
  vga_sprite_Msub_ypixSkye_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(1),
      I1 => b_rskyev(1),
      O => vga_sprite_Msub_ypixSkye_lut(1)
    );
  vga_sprite_Msub_ypixSkye_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixSkye_lut(0),
      O => vga_sprite_ypixSkye(0)
    );
  vga_sprite_Msub_ypixSkye_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => vga_sprite_ypixMona_sub0000(0),
      S => vga_sprite_Msub_ypixSkye_lut(0),
      O => vga_sprite_Msub_ypixSkye_cy(0)
    );
  vga_sprite_Msub_ypixSkye_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(0),
      I1 => b_rskyev(0),
      O => vga_sprite_Msub_ypixSkye_lut(0)
    );
  vga_sprite_Msub_ypixRey_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(8),
      LI => vga_sprite_Msub_ypixRey_lut(9),
      O => vga_sprite_ypixRey(9)
    );
  vga_sprite_Msub_ypixRey_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(9),
      I1 => b_rreyv(9),
      O => vga_sprite_Msub_ypixRey_lut(9)
    );
  vga_sprite_Msub_ypixRey_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(7),
      LI => vga_sprite_Msub_ypixRey_lut(8),
      O => vga_sprite_ypixRey(8)
    );
  vga_sprite_Msub_ypixRey_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(7),
      DI => vga_sprite_ypixMona_sub0000(8),
      S => vga_sprite_Msub_ypixRey_lut(8),
      O => vga_sprite_Msub_ypixRey_cy(8)
    );
  vga_sprite_Msub_ypixRey_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(8),
      I1 => b_rreyv(8),
      O => vga_sprite_Msub_ypixRey_lut(8)
    );
  vga_sprite_Msub_ypixRey_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(6),
      LI => vga_sprite_Msub_ypixRey_lut(7),
      O => vga_sprite_ypixRey(7)
    );
  vga_sprite_Msub_ypixRey_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(6),
      DI => vga_sprite_ypixMona_sub0000(7),
      S => vga_sprite_Msub_ypixRey_lut(7),
      O => vga_sprite_Msub_ypixRey_cy(7)
    );
  vga_sprite_Msub_ypixRey_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(7),
      I1 => b_rreyv(7),
      O => vga_sprite_Msub_ypixRey_lut(7)
    );
  vga_sprite_Msub_ypixRey_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(5),
      LI => vga_sprite_Msub_ypixRey_lut(6),
      O => vga_sprite_ypixRey(6)
    );
  vga_sprite_Msub_ypixRey_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(5),
      DI => vga_sprite_ypixMona_sub0000(6),
      S => vga_sprite_Msub_ypixRey_lut(6),
      O => vga_sprite_Msub_ypixRey_cy(6)
    );
  vga_sprite_Msub_ypixRey_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(6),
      I1 => b_rreyv(6),
      O => vga_sprite_Msub_ypixRey_lut(6)
    );
  vga_sprite_Msub_ypixRey_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(4),
      LI => vga_sprite_Msub_ypixRey_lut(5),
      O => vga_sprite_ypixRey(5)
    );
  vga_sprite_Msub_ypixRey_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(4),
      DI => vga_sprite_ypixMona_sub0000(5),
      S => vga_sprite_Msub_ypixRey_lut(5),
      O => vga_sprite_Msub_ypixRey_cy(5)
    );
  vga_sprite_Msub_ypixRey_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(5),
      I1 => b_rreyv(5),
      O => vga_sprite_Msub_ypixRey_lut(5)
    );
  vga_sprite_Msub_ypixRey_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(3),
      LI => vga_sprite_Msub_ypixRey_lut(4),
      O => vga_sprite_ypixRey(4)
    );
  vga_sprite_Msub_ypixRey_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(3),
      DI => vga_sprite_ypixMona_sub0000(4),
      S => vga_sprite_Msub_ypixRey_lut(4),
      O => vga_sprite_Msub_ypixRey_cy(4)
    );
  vga_sprite_Msub_ypixRey_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(4),
      I1 => b_rreyv(4),
      O => vga_sprite_Msub_ypixRey_lut(4)
    );
  vga_sprite_Msub_ypixRey_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(2),
      LI => vga_sprite_Msub_ypixRey_lut(3),
      O => vga_sprite_ypixRey(3)
    );
  vga_sprite_Msub_ypixRey_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(2),
      DI => vga_sprite_ypixMona_sub0000(3),
      S => vga_sprite_Msub_ypixRey_lut(3),
      O => vga_sprite_Msub_ypixRey_cy(3)
    );
  vga_sprite_Msub_ypixRey_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(3),
      I1 => b_rreyv(3),
      O => vga_sprite_Msub_ypixRey_lut(3)
    );
  vga_sprite_Msub_ypixRey_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(1),
      LI => vga_sprite_Msub_ypixRey_lut(2),
      O => vga_sprite_ypixRey(2)
    );
  vga_sprite_Msub_ypixRey_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(1),
      DI => vga_sprite_ypixMona_sub0000(2),
      S => vga_sprite_Msub_ypixRey_lut(2),
      O => vga_sprite_Msub_ypixRey_cy(2)
    );
  vga_sprite_Msub_ypixRey_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(2),
      I1 => b_rreyv(2),
      O => vga_sprite_Msub_ypixRey_lut(2)
    );
  vga_sprite_Msub_ypixRey_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(0),
      LI => vga_sprite_Msub_ypixRey_lut(1),
      O => vga_sprite_ypixRey(1)
    );
  vga_sprite_Msub_ypixRey_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(0),
      DI => vga_sprite_ypixMona_sub0000(1),
      S => vga_sprite_Msub_ypixRey_lut(1),
      O => vga_sprite_Msub_ypixRey_cy(1)
    );
  vga_sprite_Msub_ypixRey_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(1),
      I1 => b_rreyv(1),
      O => vga_sprite_Msub_ypixRey_lut(1)
    );
  vga_sprite_Msub_ypixRey_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixRey_lut(0),
      O => vga_sprite_ypixRey(0)
    );
  vga_sprite_Msub_ypixRey_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => vga_sprite_ypixMona_sub0000(0),
      S => vga_sprite_Msub_ypixRey_lut(0),
      O => vga_sprite_Msub_ypixRey_cy(0)
    );
  vga_sprite_Msub_ypixRey_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(0),
      I1 => b_rreyv(0),
      O => vga_sprite_Msub_ypixRey_lut(0)
    );
  vga_sprite_Msub_ypixMona_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(8),
      LI => vga_sprite_Msub_ypixMona_lut(9),
      O => vga_sprite_ypixMona(9)
    );
  vga_sprite_Msub_ypixMona_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(9),
      I1 => b_rmonav(9),
      O => vga_sprite_Msub_ypixMona_lut(9)
    );
  vga_sprite_Msub_ypixMona_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(7),
      LI => vga_sprite_Msub_ypixMona_lut(8),
      O => vga_sprite_ypixMona(8)
    );
  vga_sprite_Msub_ypixMona_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(7),
      DI => vga_sprite_ypixMona_sub0000(8),
      S => vga_sprite_Msub_ypixMona_lut(8),
      O => vga_sprite_Msub_ypixMona_cy(8)
    );
  vga_sprite_Msub_ypixMona_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(8),
      I1 => b_rmonav(8),
      O => vga_sprite_Msub_ypixMona_lut(8)
    );
  vga_sprite_Msub_ypixMona_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(6),
      LI => vga_sprite_Msub_ypixMona_lut(7),
      O => vga_sprite_ypixMona(7)
    );
  vga_sprite_Msub_ypixMona_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(6),
      DI => vga_sprite_ypixMona_sub0000(7),
      S => vga_sprite_Msub_ypixMona_lut(7),
      O => vga_sprite_Msub_ypixMona_cy(7)
    );
  vga_sprite_Msub_ypixMona_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(7),
      I1 => b_rmonav(7),
      O => vga_sprite_Msub_ypixMona_lut(7)
    );
  vga_sprite_Msub_ypixMona_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(5),
      LI => vga_sprite_Msub_ypixMona_lut(6),
      O => vga_sprite_ypixMona(6)
    );
  vga_sprite_Msub_ypixMona_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(5),
      DI => vga_sprite_ypixMona_sub0000(6),
      S => vga_sprite_Msub_ypixMona_lut(6),
      O => vga_sprite_Msub_ypixMona_cy(6)
    );
  vga_sprite_Msub_ypixMona_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(6),
      I1 => b_rmonav(6),
      O => vga_sprite_Msub_ypixMona_lut(6)
    );
  vga_sprite_Msub_ypixMona_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(4),
      LI => vga_sprite_Msub_ypixMona_lut(5),
      O => vga_sprite_ypixMona(5)
    );
  vga_sprite_Msub_ypixMona_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(4),
      DI => vga_sprite_ypixMona_sub0000(5),
      S => vga_sprite_Msub_ypixMona_lut(5),
      O => vga_sprite_Msub_ypixMona_cy(5)
    );
  vga_sprite_Msub_ypixMona_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(5),
      I1 => b_rmonav(5),
      O => vga_sprite_Msub_ypixMona_lut(5)
    );
  vga_sprite_Msub_ypixMona_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(3),
      LI => vga_sprite_Msub_ypixMona_lut(4),
      O => vga_sprite_ypixMona(4)
    );
  vga_sprite_Msub_ypixMona_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(3),
      DI => vga_sprite_ypixMona_sub0000(4),
      S => vga_sprite_Msub_ypixMona_lut(4),
      O => vga_sprite_Msub_ypixMona_cy(4)
    );
  vga_sprite_Msub_ypixMona_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(4),
      I1 => b_rmonav(4),
      O => vga_sprite_Msub_ypixMona_lut(4)
    );
  vga_sprite_Msub_ypixMona_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(2),
      LI => vga_sprite_Msub_ypixMona_lut(3),
      O => vga_sprite_ypixMona(3)
    );
  vga_sprite_Msub_ypixMona_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(2),
      DI => vga_sprite_ypixMona_sub0000(3),
      S => vga_sprite_Msub_ypixMona_lut(3),
      O => vga_sprite_Msub_ypixMona_cy(3)
    );
  vga_sprite_Msub_ypixMona_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(3),
      I1 => b_rmonav(3),
      O => vga_sprite_Msub_ypixMona_lut(3)
    );
  vga_sprite_Msub_ypixMona_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(1),
      LI => vga_sprite_Msub_ypixMona_lut(2),
      O => vga_sprite_ypixMona(2)
    );
  vga_sprite_Msub_ypixMona_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(1),
      DI => vga_sprite_ypixMona_sub0000(2),
      S => vga_sprite_Msub_ypixMona_lut(2),
      O => vga_sprite_Msub_ypixMona_cy(2)
    );
  vga_sprite_Msub_ypixMona_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(2),
      I1 => b_rmonav(2),
      O => vga_sprite_Msub_ypixMona_lut(2)
    );
  vga_sprite_Msub_ypixMona_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(0),
      LI => vga_sprite_Msub_ypixMona_lut(1),
      O => vga_sprite_ypixMona(1)
    );
  vga_sprite_Msub_ypixMona_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(0),
      DI => vga_sprite_ypixMona_sub0000(1),
      S => vga_sprite_Msub_ypixMona_lut(1),
      O => vga_sprite_Msub_ypixMona_cy(1)
    );
  vga_sprite_Msub_ypixMona_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(1),
      I1 => b_rmonav(1),
      O => vga_sprite_Msub_ypixMona_lut(1)
    );
  vga_sprite_Msub_ypixMona_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixMona_lut(0),
      O => vga_sprite_ypixMona(0)
    );
  vga_sprite_Msub_ypixMona_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => vga_sprite_ypixMona_sub0000(0),
      S => vga_sprite_Msub_ypixMona_lut(0),
      O => vga_sprite_Msub_ypixMona_cy(0)
    );
  vga_sprite_Msub_ypixMona_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixMona_sub0000(0),
      I1 => b_rmonav(0),
      O => vga_sprite_Msub_ypixMona_lut(0)
    );
  vga_sprite_Msub_xpixMona_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(8),
      LI => vga_sprite_Msub_xpixMona_lut(9),
      O => vga_sprite_xpixMona(9)
    );
  vga_sprite_Msub_xpixMona_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(7),
      LI => vga_sprite_Msub_xpixMona_lut(8),
      O => vga_sprite_xpixMona(8)
    );
  vga_sprite_Msub_xpixMona_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(7),
      DI => vga_sprite_xpixMona_sub0000(8),
      S => vga_sprite_Msub_xpixMona_lut(8),
      O => vga_sprite_Msub_xpixMona_cy(8)
    );
  vga_sprite_Msub_xpixMona_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(6),
      LI => vga_sprite_Msub_xpixMona_lut(7),
      O => vga_sprite_xpixMona(7)
    );
  vga_sprite_Msub_xpixMona_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(6),
      DI => vga_sprite_xpixMona_sub0000(7),
      S => vga_sprite_Msub_xpixMona_lut(7),
      O => vga_sprite_Msub_xpixMona_cy(7)
    );
  vga_sprite_Msub_xpixMona_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_xpixMona_sub0000(7),
      I1 => b_cmonav(7),
      O => vga_sprite_Msub_xpixMona_lut(7)
    );
  vga_sprite_Msub_xpixMona_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(5),
      LI => vga_sprite_Msub_xpixMona_lut(6),
      O => vga_sprite_xpixMona(6)
    );
  vga_sprite_Msub_xpixMona_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(5),
      DI => vga_sprite_xpixMona_sub0000(6),
      S => vga_sprite_Msub_xpixMona_lut(6),
      O => vga_sprite_Msub_xpixMona_cy(6)
    );
  vga_sprite_Msub_xpixMona_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(4),
      LI => vga_sprite_Msub_xpixMona_lut(5),
      O => vga_sprite_xpixMona(5)
    );
  vga_sprite_Msub_xpixMona_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(4),
      DI => vga_sprite_xpixMona_sub0000(5),
      S => vga_sprite_Msub_xpixMona_lut(5),
      O => vga_sprite_Msub_xpixMona_cy(5)
    );
  vga_sprite_Msub_xpixMona_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(3),
      LI => vga_sprite_Msub_xpixMona_lut(4),
      O => vga_sprite_xpixMona(4)
    );
  vga_sprite_Msub_xpixMona_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(3),
      DI => vga_sprite_xpixMona_sub0000(4),
      S => vga_sprite_Msub_xpixMona_lut(4),
      O => vga_sprite_Msub_xpixMona_cy(4)
    );
  vga_sprite_Msub_xpixMona_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(2),
      LI => vga_sprite_Msub_xpixMona_lut(3),
      O => vga_sprite_xpixMona(3)
    );
  vga_sprite_Msub_xpixMona_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(2),
      DI => U2_HCS(3),
      S => vga_sprite_Msub_xpixMona_lut(3),
      O => vga_sprite_Msub_xpixMona_cy(3)
    );
  vga_sprite_Msub_xpixMona_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(3),
      I1 => b_cmonav(3),
      O => vga_sprite_Msub_xpixMona_lut(3)
    );
  vga_sprite_Msub_xpixMona_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(1),
      LI => vga_sprite_Msub_xpixMona_lut(2),
      O => vga_sprite_xpixMona(2)
    );
  vga_sprite_Msub_xpixMona_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(1),
      DI => U2_HCS(2),
      S => vga_sprite_Msub_xpixMona_lut(2),
      O => vga_sprite_Msub_xpixMona_cy(2)
    );
  vga_sprite_Msub_xpixMona_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => b_cmonav(2),
      O => vga_sprite_Msub_xpixMona_lut(2)
    );
  vga_sprite_Msub_xpixMona_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(0),
      LI => vga_sprite_Msub_xpixMona_lut(1),
      O => romMona_addr14(1)
    );
  vga_sprite_Msub_xpixMona_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(0),
      DI => U2_HCS(1),
      S => vga_sprite_Msub_xpixMona_lut(1),
      O => vga_sprite_Msub_xpixMona_cy(1)
    );
  vga_sprite_Msub_xpixMona_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => b_cmonav(1),
      O => vga_sprite_Msub_xpixMona_lut(1)
    );
  vga_sprite_Msub_xpixMona_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixMona_lut(0),
      O => romMona_addr14(0)
    );
  vga_sprite_Msub_xpixMona_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_HCS(0),
      S => vga_sprite_Msub_xpixMona_lut(0),
      O => vga_sprite_Msub_xpixMona_cy(0)
    );
  vga_sprite_Msub_xpixMona_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(0),
      I1 => b_cmonav(0),
      O => vga_sprite_Msub_xpixMona_lut(0)
    );
  vga_sprite_Msub_xpixSkye_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(8),
      LI => vga_sprite_Msub_xpixSkye_lut(9),
      O => vga_sprite_xpixSkye(9)
    );
  vga_sprite_Msub_xpixSkye_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(7),
      LI => vga_sprite_Msub_xpixSkye_lut(8),
      O => vga_sprite_xpixSkye(8)
    );
  vga_sprite_Msub_xpixSkye_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(7),
      DI => vga_sprite_xpixMona_sub0000(8),
      S => vga_sprite_Msub_xpixSkye_lut(8),
      O => vga_sprite_Msub_xpixSkye_cy(8)
    );
  vga_sprite_Msub_xpixSkye_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(6),
      LI => vga_sprite_Msub_xpixSkye_lut(7),
      O => vga_sprite_xpixSkye(7)
    );
  vga_sprite_Msub_xpixSkye_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(6),
      DI => vga_sprite_xpixMona_sub0000(7),
      S => vga_sprite_Msub_xpixSkye_lut(7),
      O => vga_sprite_Msub_xpixSkye_cy(7)
    );
  vga_sprite_Msub_xpixSkye_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_xpixMona_sub0000(7),
      I1 => b_cskyev(7),
      O => vga_sprite_Msub_xpixSkye_lut(7)
    );
  vga_sprite_Msub_xpixSkye_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(5),
      LI => vga_sprite_Msub_xpixSkye_lut(6),
      O => vga_sprite_xpixSkye(6)
    );
  vga_sprite_Msub_xpixSkye_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(5),
      DI => vga_sprite_xpixMona_sub0000(6),
      S => vga_sprite_Msub_xpixSkye_lut(6),
      O => vga_sprite_Msub_xpixSkye_cy(6)
    );
  vga_sprite_Msub_xpixSkye_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(4),
      LI => vga_sprite_Msub_xpixSkye_lut(5),
      O => vga_sprite_xpixSkye(5)
    );
  vga_sprite_Msub_xpixSkye_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(4),
      DI => vga_sprite_xpixMona_sub0000(5),
      S => vga_sprite_Msub_xpixSkye_lut(5),
      O => vga_sprite_Msub_xpixSkye_cy(5)
    );
  vga_sprite_Msub_xpixSkye_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(3),
      LI => vga_sprite_Msub_xpixSkye_lut(4),
      O => vga_sprite_xpixSkye(4)
    );
  vga_sprite_Msub_xpixSkye_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(3),
      DI => vga_sprite_xpixMona_sub0000(4),
      S => vga_sprite_Msub_xpixSkye_lut(4),
      O => vga_sprite_Msub_xpixSkye_cy(4)
    );
  vga_sprite_Msub_xpixSkye_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(2),
      LI => vga_sprite_Msub_xpixSkye_lut(3),
      O => vga_sprite_xpixSkye(3)
    );
  vga_sprite_Msub_xpixSkye_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(2),
      DI => U2_HCS(3),
      S => vga_sprite_Msub_xpixSkye_lut(3),
      O => vga_sprite_Msub_xpixSkye_cy(3)
    );
  vga_sprite_Msub_xpixSkye_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(3),
      I1 => b_cskyev(3),
      O => vga_sprite_Msub_xpixSkye_lut(3)
    );
  vga_sprite_Msub_xpixSkye_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(1),
      LI => vga_sprite_Msub_xpixSkye_lut(2),
      O => vga_sprite_xpixSkye(2)
    );
  vga_sprite_Msub_xpixSkye_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(1),
      DI => U2_HCS(2),
      S => vga_sprite_Msub_xpixSkye_lut(2),
      O => vga_sprite_Msub_xpixSkye_cy(2)
    );
  vga_sprite_Msub_xpixSkye_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => b_cskyev(2),
      O => vga_sprite_Msub_xpixSkye_lut(2)
    );
  vga_sprite_Msub_xpixSkye_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(0),
      LI => vga_sprite_Msub_xpixSkye_lut(1),
      O => romSkye_addr14(1)
    );
  vga_sprite_Msub_xpixSkye_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(0),
      DI => U2_HCS(1),
      S => vga_sprite_Msub_xpixSkye_lut(1),
      O => vga_sprite_Msub_xpixSkye_cy(1)
    );
  vga_sprite_Msub_xpixSkye_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => b_cskyev(1),
      O => vga_sprite_Msub_xpixSkye_lut(1)
    );
  vga_sprite_Msub_xpixSkye_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixSkye_lut(0),
      O => romSkye_addr14(0)
    );
  vga_sprite_Msub_xpixSkye_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_HCS(0),
      S => vga_sprite_Msub_xpixSkye_lut(0),
      O => vga_sprite_Msub_xpixSkye_cy(0)
    );
  vga_sprite_Msub_xpixSkye_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(0),
      I1 => b_cskyev(0),
      O => vga_sprite_Msub_xpixSkye_lut(0)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(8),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_xor_9_rt_1003,
      O => vga_sprite_Madd_monaspriteon_addsub0003_lut_9_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(7),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_cy_8_rt_997,
      O => vga_sprite_Madd_monaspriteon_addsub0003_lut_8_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(7),
      DI => N0,
      S => vga_sprite_Madd_monaspriteon_addsub0002_cy_8_rt_997,
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(8)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(6),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_cy_7_rt_995,
      O => vga_sprite_Madd_monaspriteon_addsub0003_lut_7_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(6),
      DI => N0,
      S => vga_sprite_Madd_monaspriteon_addsub0002_cy_7_rt_995,
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(7)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(5),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_cy_6_rt_993,
      O => vga_sprite_monaspriteon_addsub0002_6_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(5),
      DI => N0,
      S => vga_sprite_Madd_monaspriteon_addsub0002_cy_6_rt_993,
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(6)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(4),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_cy_5_rt_991,
      O => vga_sprite_monaspriteon_addsub0002_5_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(4),
      DI => N0,
      S => vga_sprite_Madd_monaspriteon_addsub0002_cy_5_rt_991,
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(5)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(3),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(3),
      DI => N1,
      S => vga_sprite_Madd_monaspriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(4)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(2),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(2),
      DI => N1,
      S => vga_sprite_Madd_monaspriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(3)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(1),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(1),
      DI => N1,
      S => vga_sprite_Madd_monaspriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(2)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(0),
      LI => vga_sprite_Madd_monaspriteon_addsub0002_lut(1),
      O => vga_sprite_monaspriteon_addsub0002_1_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_monaspriteon_addsub0002_cy(0),
      DI => N1,
      S => vga_sprite_Madd_monaspriteon_addsub0002_lut(1),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(1)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_monaspriteon_addsub0002_lut(0),
      O => vga_sprite_monaspriteon_addsub0002_0_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => vga_sprite_Madd_monaspriteon_addsub0002_lut(0),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy(0)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(8),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_xor_9_rt_1228,
      O => vga_sprite_Madd_skyespriteon_addsub0003_lut_9_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(7),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_cy_8_rt_1222,
      O => vga_sprite_Madd_skyespriteon_addsub0003_lut_8_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(7),
      DI => N0,
      S => vga_sprite_Madd_skyespriteon_addsub0002_cy_8_rt_1222,
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(8)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(6),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_cy_7_rt_1220,
      O => vga_sprite_Madd_skyespriteon_addsub0003_lut_7_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(6),
      DI => N0,
      S => vga_sprite_Madd_skyespriteon_addsub0002_cy_7_rt_1220,
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(7)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(5),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_cy_6_rt_1218,
      O => vga_sprite_skyespriteon_addsub0002_6_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(5),
      DI => N0,
      S => vga_sprite_Madd_skyespriteon_addsub0002_cy_6_rt_1218,
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(6)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(4),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_cy_5_rt_1216,
      O => vga_sprite_skyespriteon_addsub0002_5_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(4),
      DI => N0,
      S => vga_sprite_Madd_skyespriteon_addsub0002_cy_5_rt_1216,
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(5)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(3),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(3),
      DI => N1,
      S => vga_sprite_Madd_skyespriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(4)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(2),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(2),
      DI => N1,
      S => vga_sprite_Madd_skyespriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(3)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(1),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(1),
      DI => N1,
      S => vga_sprite_Madd_skyespriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(2)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(0),
      LI => vga_sprite_Madd_skyespriteon_addsub0002_lut(1),
      O => vga_sprite_skyespriteon_addsub0002_1_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_skyespriteon_addsub0002_cy(0),
      DI => N1,
      S => vga_sprite_Madd_skyespriteon_addsub0002_lut(1),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(1)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_skyespriteon_addsub0002_lut(0),
      O => vga_sprite_skyespriteon_addsub0002_0_Q
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => vga_sprite_Madd_skyespriteon_addsub0002_lut(0),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy(0)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(8),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_xor_9_rt_1036,
      O => vga_sprite_Madd_reyspriteon_addsub0003_lut_9_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(7),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_cy_8_rt_1030,
      O => vga_sprite_Madd_reyspriteon_addsub0003_lut_8_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(7),
      DI => N0,
      S => vga_sprite_Madd_reyspriteon_addsub0002_cy_8_rt_1030,
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(8)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(6),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_cy_7_rt_1028,
      O => vga_sprite_Madd_reyspriteon_addsub0003_lut_7_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(6),
      DI => N0,
      S => vga_sprite_Madd_reyspriteon_addsub0002_cy_7_rt_1028,
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(7)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(5),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_cy_6_rt_1026,
      O => vga_sprite_reyspriteon_addsub0002_6_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(5),
      DI => N0,
      S => vga_sprite_Madd_reyspriteon_addsub0002_cy_6_rt_1026,
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(6)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(4),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_cy_5_rt_1024,
      O => vga_sprite_reyspriteon_addsub0002_5_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(4),
      DI => N0,
      S => vga_sprite_Madd_reyspriteon_addsub0002_cy_5_rt_1024,
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(5)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(3),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(3),
      DI => N1,
      S => vga_sprite_Madd_reyspriteon_addsub0002_lut(4),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(4)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(2),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(2),
      DI => N1,
      S => vga_sprite_Madd_reyspriteon_addsub0002_lut(3),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(3)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(1),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(1),
      DI => N1,
      S => vga_sprite_Madd_reyspriteon_addsub0002_lut(2),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(2)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(0),
      LI => vga_sprite_Madd_reyspriteon_addsub0002_lut(1),
      O => vga_sprite_reyspriteon_addsub0002_1_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_reyspriteon_addsub0002_cy(0),
      DI => N1,
      S => vga_sprite_Madd_reyspriteon_addsub0002_lut(1),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(1)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sprite_Madd_reyspriteon_addsub0002_lut(0),
      O => vga_sprite_reyspriteon_addsub0002_0_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => vga_sprite_Madd_reyspriteon_addsub0002_lut(0),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy(0)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(8),
      LI => vga_sprite_Msub_ypixMona_sub0000_lut(9),
      O => vga_sprite_ypixMona_sub0000(9)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(7),
      LI => vga_sprite_Msub_ypixMona_sub0000_lut(8),
      O => vga_sprite_ypixMona_sub0000(8)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(7),
      DI => N1,
      S => vga_sprite_Msub_ypixMona_sub0000_lut(8),
      O => vga_sprite_Msub_ypixMona_sub0000_cy(8)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(6),
      LI => vga_sprite_Msub_ypixMona_sub0000_lut(7),
      O => vga_sprite_ypixMona_sub0000(7)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(6),
      DI => N1,
      S => vga_sprite_Msub_ypixMona_sub0000_lut(7),
      O => vga_sprite_Msub_ypixMona_sub0000_cy(7)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(5),
      LI => vga_sprite_Msub_ypixMona_sub0000_lut(6),
      O => vga_sprite_ypixMona_sub0000(6)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(5),
      DI => N1,
      S => vga_sprite_Msub_ypixMona_sub0000_lut(6),
      O => vga_sprite_Msub_ypixMona_sub0000_cy(6)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(4),
      LI => vga_sprite_Msub_ypixMona_sub0000_lut(5),
      O => vga_sprite_ypixMona_sub0000(5)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(4),
      DI => N1,
      S => vga_sprite_Msub_ypixMona_sub0000_lut(5),
      O => vga_sprite_Msub_ypixMona_sub0000_cy(5)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(3),
      LI => vga_sprite_Msub_ypixMona_sub0000_cy_4_rt_1556,
      O => vga_sprite_ypixMona_sub0000(4)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(3),
      DI => N0,
      S => vga_sprite_Msub_ypixMona_sub0000_cy_4_rt_1556,
      O => vga_sprite_Msub_ypixMona_sub0000_cy(4)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(2),
      LI => vga_sprite_Msub_ypixMona_sub0000_cy_3_rt_1554,
      O => vga_sprite_ypixMona_sub0000(3)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(2),
      DI => N0,
      S => vga_sprite_Msub_ypixMona_sub0000_cy_3_rt_1554,
      O => vga_sprite_Msub_ypixMona_sub0000_cy(3)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(1),
      LI => vga_sprite_Msub_ypixMona_sub0000_cy_2_rt_1552,
      O => vga_sprite_ypixMona_sub0000(2)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(1),
      DI => N0,
      S => vga_sprite_Msub_ypixMona_sub0000_cy_2_rt_1552,
      O => vga_sprite_Msub_ypixMona_sub0000_cy(2)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(0),
      LI => vga_sprite_Msub_ypixMona_sub0000_cy_1_rt_1550,
      O => vga_sprite_ypixMona_sub0000(1)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixMona_sub0000_cy(0),
      DI => N0,
      S => vga_sprite_Msub_ypixMona_sub0000_cy_1_rt_1550,
      O => vga_sprite_Msub_ypixMona_sub0000_cy(1)
    );
  vga_sprite_Msub_ypixMona_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixMona_sub0000_cy_0_rt_1548,
      O => vga_sprite_ypixMona_sub0000(0)
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_ypixMona_sub0000_cy_0_rt_1548,
      O => vga_sprite_Msub_ypixMona_sub0000_cy(0)
    );
  vga_sprite_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(23),
      CLR => btn_3_IBUF_916,
      D => vga_sprite_present_state_FSM_FFd2_1634,
      Q => vga_sprite_present_state_FSM_FFd1_1633
    );
  vga_sprite_present_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_q(23),
      CLR => btn_3_IBUF_916,
      D => vga_sprite_present_state_FSM_FFd3_1635,
      Q => vga_sprite_present_state_FSM_FFd2_1634
    );
  vga_sprite_present_state_FSM_FFd3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => U1_q(23),
      D => vga_sprite_present_state_FSM_FFd1_1633,
      PRE => btn_3_IBUF_916,
      Q => vga_sprite_present_state_FSM_FFd3_1635
    );
  b_dcvrey_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(2),
      Q => b_dcvrey(2)
    );
  b_dcvrey_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      D => b_dcvrey_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_dcvrey(0)
    );
  b_dcvrey_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(1),
      Q => b_dcvrey(1)
    );
  b_dcvrey_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(3),
      Q => b_dcvrey(3)
    );
  b_dcvrey_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(4),
      Q => b_dcvrey(4)
    );
  b_dcvrey_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(7),
      Q => b_dcvrey(7)
    );
  b_dcvrey_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(5),
      Q => b_dcvrey(5)
    );
  b_dcvrey_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(6),
      Q => b_dcvrey(6)
    );
  b_dcvrey_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(8),
      Q => b_dcvrey(8)
    );
  b_dcvrey_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvrey_sub0000(9),
      Q => b_dcvrey(9)
    );
  b_dcvmona_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(2),
      Q => b_dcvmona(2)
    );
  b_dcvmona_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      D => b_dcvmona_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_dcvmona(0)
    );
  b_dcvmona_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(1),
      Q => b_dcvmona(1)
    );
  b_dcvmona_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(3),
      Q => b_dcvmona(3)
    );
  b_dcvmona_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(4),
      Q => b_dcvmona(4)
    );
  b_dcvmona_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(7),
      Q => b_dcvmona(7)
    );
  b_dcvmona_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(5),
      Q => b_dcvmona(5)
    );
  b_dcvmona_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(6),
      Q => b_dcvmona(6)
    );
  b_dcvmona_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(8),
      Q => b_dcvmona(8)
    );
  b_dcvmona_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_dcvmona_not0002,
      CLR => btn_3_IBUF_916,
      D => b_dcvmona_sub0000(9),
      Q => b_dcvmona(9)
    );
  b_drvrey_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(2),
      Q => b_drvrey(2)
    );
  b_drvrey_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      D => b_drvrey_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_drvrey(0)
    );
  b_drvrey_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(1),
      Q => b_drvrey(1)
    );
  b_drvrey_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(3),
      Q => b_drvrey(3)
    );
  b_drvrey_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(4),
      Q => b_drvrey(4)
    );
  b_drvrey_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(7),
      Q => b_drvrey(7)
    );
  b_drvrey_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(5),
      Q => b_drvrey(5)
    );
  b_drvrey_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(6),
      Q => b_drvrey(6)
    );
  b_drvrey_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(8),
      Q => b_drvrey(8)
    );
  b_drvrey_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvrey_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvrey_sub0000(9),
      Q => b_drvrey(9)
    );
  b_drvskye_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(2),
      Q => b_drvskye(2)
    );
  b_drvskye_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      D => b_drvskye_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_drvskye(0)
    );
  b_drvskye_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(1),
      Q => b_drvskye(1)
    );
  b_drvskye_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(3),
      Q => b_drvskye(3)
    );
  b_drvskye_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(4),
      Q => b_drvskye(4)
    );
  b_drvskye_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(7),
      Q => b_drvskye(7)
    );
  b_drvskye_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(5),
      Q => b_drvskye(5)
    );
  b_drvskye_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(6),
      Q => b_drvskye(6)
    );
  b_drvskye_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(8),
      Q => b_drvskye(8)
    );
  b_drvskye_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_drvskye_not0002,
      CLR => btn_3_IBUF_916,
      D => b_drvskye_sub0000(9),
      Q => b_drvskye(9)
    );
  b_Maccum_rskyev_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(8),
      LI => b_Maccum_rskyev_lut_9_1_378,
      O => b_Result_9_4
    );
  b_Maccum_rskyev_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(9),
      I1 => b_drvskye(9),
      O => b_Maccum_rskyev_lut(9)
    );
  b_Maccum_rskyev_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(7),
      LI => b_Maccum_rskyev_lut(8),
      O => b_Result_8_4
    );
  b_Maccum_rskyev_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(7),
      DI => b_rskyev(8),
      S => b_Maccum_rskyev_lut(8),
      O => b_Maccum_rskyev_cy(8)
    );
  b_Maccum_rskyev_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(8),
      I1 => b_drvskye(8),
      O => b_Maccum_rskyev_lut(8)
    );
  b_Maccum_rskyev_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(6),
      LI => b_Maccum_rskyev_lut(7),
      O => b_Result_7_4
    );
  b_Maccum_rskyev_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(6),
      DI => b_rskyev(7),
      S => b_Maccum_rskyev_lut(7),
      O => b_Maccum_rskyev_cy(7)
    );
  b_Maccum_rskyev_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(7),
      I1 => b_drvskye(7),
      O => b_Maccum_rskyev_lut(7)
    );
  b_Maccum_rskyev_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(5),
      LI => b_Maccum_rskyev_lut(6),
      O => b_Result_6_4
    );
  b_Maccum_rskyev_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(5),
      DI => b_rskyev(6),
      S => b_Maccum_rskyev_lut(6),
      O => b_Maccum_rskyev_cy(6)
    );
  b_Maccum_rskyev_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(6),
      I1 => b_drvskye(6),
      O => b_Maccum_rskyev_lut(6)
    );
  b_Maccum_rskyev_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(4),
      LI => b_Maccum_rskyev_lut(5),
      O => b_Result_5_4
    );
  b_Maccum_rskyev_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(4),
      DI => b_rskyev(5),
      S => b_Maccum_rskyev_lut(5),
      O => b_Maccum_rskyev_cy(5)
    );
  b_Maccum_rskyev_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(5),
      I1 => b_drvskye(5),
      O => b_Maccum_rskyev_lut(5)
    );
  b_Maccum_rskyev_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(3),
      LI => b_Maccum_rskyev_lut(4),
      O => b_Result_4_4
    );
  b_Maccum_rskyev_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(3),
      DI => b_rskyev(4),
      S => b_Maccum_rskyev_lut(4),
      O => b_Maccum_rskyev_cy(4)
    );
  b_Maccum_rskyev_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(4),
      I1 => b_drvskye(4),
      O => b_Maccum_rskyev_lut(4)
    );
  b_Maccum_rskyev_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(2),
      LI => b_Maccum_rskyev_lut(3),
      O => b_Result_3_4
    );
  b_Maccum_rskyev_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(2),
      DI => b_rskyev(3),
      S => b_Maccum_rskyev_lut(3),
      O => b_Maccum_rskyev_cy(3)
    );
  b_Maccum_rskyev_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(3),
      I1 => b_drvskye(3),
      O => b_Maccum_rskyev_lut(3)
    );
  b_Maccum_rskyev_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(1),
      LI => b_Maccum_rskyev_lut(2),
      O => b_Result_2_4
    );
  b_Maccum_rskyev_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(1),
      DI => b_rskyev(2),
      S => b_Maccum_rskyev_lut(2),
      O => b_Maccum_rskyev_cy(2)
    );
  b_Maccum_rskyev_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(2),
      I1 => b_drvskye(2),
      O => b_Maccum_rskyev_lut(2)
    );
  b_Maccum_rskyev_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_rskyev_cy(0),
      LI => b_Maccum_rskyev_lut(1),
      O => b_Result_1_4
    );
  b_Maccum_rskyev_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_rskyev_cy(0),
      DI => b_rskyev(1),
      S => b_Maccum_rskyev_lut(1),
      O => b_Maccum_rskyev_cy(1)
    );
  b_Maccum_rskyev_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(1),
      I1 => b_drvskye(1),
      O => b_Maccum_rskyev_lut(1)
    );
  b_Maccum_rskyev_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_rskyev_lut(0),
      O => b_Result_0_4
    );
  b_Maccum_rskyev_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rskyev(0),
      S => b_Maccum_rskyev_lut(0),
      O => b_Maccum_rskyev_cy(0)
    );
  b_Maccum_rskyev_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(0),
      I1 => b_drvskye(0),
      O => b_Maccum_rskyev_lut(0)
    );
  b_Maccum_creyv_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(8),
      LI => b_Maccum_creyv_lut_9_1_298,
      O => b_Result_9_3
    );
  b_Maccum_creyv_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(9),
      I1 => b_dcvrey(9),
      O => b_Maccum_creyv_lut(9)
    );
  b_Maccum_creyv_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(7),
      LI => b_Maccum_creyv_lut(8),
      O => b_Result_8_3
    );
  b_Maccum_creyv_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(7),
      DI => b_creyv(8),
      S => b_Maccum_creyv_lut(8),
      O => b_Maccum_creyv_cy(8)
    );
  b_Maccum_creyv_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(8),
      I1 => b_dcvrey(8),
      O => b_Maccum_creyv_lut(8)
    );
  b_Maccum_creyv_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(6),
      LI => b_Maccum_creyv_lut(7),
      O => b_Result_7_3
    );
  b_Maccum_creyv_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(6),
      DI => b_creyv(7),
      S => b_Maccum_creyv_lut(7),
      O => b_Maccum_creyv_cy(7)
    );
  b_Maccum_creyv_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(7),
      I1 => b_dcvrey(7),
      O => b_Maccum_creyv_lut(7)
    );
  b_Maccum_creyv_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(5),
      LI => b_Maccum_creyv_lut(6),
      O => b_Result_6_3
    );
  b_Maccum_creyv_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(5),
      DI => b_creyv(6),
      S => b_Maccum_creyv_lut(6),
      O => b_Maccum_creyv_cy(6)
    );
  b_Maccum_creyv_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(6),
      I1 => b_dcvrey(6),
      O => b_Maccum_creyv_lut(6)
    );
  b_Maccum_creyv_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(4),
      LI => b_Maccum_creyv_lut(5),
      O => b_Result_5_3
    );
  b_Maccum_creyv_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(4),
      DI => b_creyv(5),
      S => b_Maccum_creyv_lut(5),
      O => b_Maccum_creyv_cy(5)
    );
  b_Maccum_creyv_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(5),
      I1 => b_dcvrey(5),
      O => b_Maccum_creyv_lut(5)
    );
  b_Maccum_creyv_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(3),
      LI => b_Maccum_creyv_lut(4),
      O => b_Result_4_3
    );
  b_Maccum_creyv_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(3),
      DI => b_creyv(4),
      S => b_Maccum_creyv_lut(4),
      O => b_Maccum_creyv_cy(4)
    );
  b_Maccum_creyv_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(4),
      I1 => b_dcvrey(4),
      O => b_Maccum_creyv_lut(4)
    );
  b_Maccum_creyv_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(2),
      LI => b_Maccum_creyv_lut(3),
      O => b_Result_3_3
    );
  b_Maccum_creyv_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(2),
      DI => b_creyv(3),
      S => b_Maccum_creyv_lut(3),
      O => b_Maccum_creyv_cy(3)
    );
  b_Maccum_creyv_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(3),
      I1 => b_dcvrey(3),
      O => b_Maccum_creyv_lut(3)
    );
  b_Maccum_creyv_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(1),
      LI => b_Maccum_creyv_lut(2),
      O => b_Result_2_3
    );
  b_Maccum_creyv_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(1),
      DI => b_creyv(2),
      S => b_Maccum_creyv_lut(2),
      O => b_Maccum_creyv_cy(2)
    );
  b_Maccum_creyv_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(2),
      I1 => b_dcvrey(2),
      O => b_Maccum_creyv_lut(2)
    );
  b_Maccum_creyv_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_creyv_cy(0),
      LI => b_Maccum_creyv_lut(1),
      O => b_Result_1_3
    );
  b_Maccum_creyv_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_creyv_cy(0),
      DI => b_creyv(1),
      S => b_Maccum_creyv_lut(1),
      O => b_Maccum_creyv_cy(1)
    );
  b_Maccum_creyv_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(1),
      I1 => b_dcvrey(1),
      O => b_Maccum_creyv_lut(1)
    );
  b_Maccum_creyv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_creyv_lut(0),
      O => b_Result_0_3
    );
  b_Maccum_creyv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_creyv(0),
      S => b_Maccum_creyv_lut(0),
      O => b_Maccum_creyv_cy(0)
    );
  b_Maccum_creyv_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(0),
      I1 => b_dcvrey(0),
      O => b_Maccum_creyv_lut(0)
    );
  b_Maccum_rreyv_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(8),
      LI => b_Maccum_rreyv_lut_9_1_358,
      O => b_Result_9_5
    );
  b_Maccum_rreyv_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(9),
      I1 => b_drvrey(9),
      O => b_Maccum_rreyv_lut(9)
    );
  b_Maccum_rreyv_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(7),
      LI => b_Maccum_rreyv_lut(8),
      O => b_Result_8_5
    );
  b_Maccum_rreyv_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(7),
      DI => b_rreyv(8),
      S => b_Maccum_rreyv_lut(8),
      O => b_Maccum_rreyv_cy(8)
    );
  b_Maccum_rreyv_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(8),
      I1 => b_drvrey(8),
      O => b_Maccum_rreyv_lut(8)
    );
  b_Maccum_rreyv_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(6),
      LI => b_Maccum_rreyv_lut(7),
      O => b_Result_7_5
    );
  b_Maccum_rreyv_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(6),
      DI => b_rreyv(7),
      S => b_Maccum_rreyv_lut(7),
      O => b_Maccum_rreyv_cy(7)
    );
  b_Maccum_rreyv_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(7),
      I1 => b_drvrey(7),
      O => b_Maccum_rreyv_lut(7)
    );
  b_Maccum_rreyv_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(5),
      LI => b_Maccum_rreyv_lut(6),
      O => b_Result_6_5
    );
  b_Maccum_rreyv_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(5),
      DI => b_rreyv(6),
      S => b_Maccum_rreyv_lut(6),
      O => b_Maccum_rreyv_cy(6)
    );
  b_Maccum_rreyv_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(6),
      I1 => b_drvrey(6),
      O => b_Maccum_rreyv_lut(6)
    );
  b_Maccum_rreyv_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(4),
      LI => b_Maccum_rreyv_lut(5),
      O => b_Result_5_5
    );
  b_Maccum_rreyv_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(4),
      DI => b_rreyv(5),
      S => b_Maccum_rreyv_lut(5),
      O => b_Maccum_rreyv_cy(5)
    );
  b_Maccum_rreyv_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(5),
      I1 => b_drvrey(5),
      O => b_Maccum_rreyv_lut(5)
    );
  b_Maccum_rreyv_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(3),
      LI => b_Maccum_rreyv_lut(4),
      O => b_Result_4_5
    );
  b_Maccum_rreyv_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(3),
      DI => b_rreyv(4),
      S => b_Maccum_rreyv_lut(4),
      O => b_Maccum_rreyv_cy(4)
    );
  b_Maccum_rreyv_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(4),
      I1 => b_drvrey(4),
      O => b_Maccum_rreyv_lut(4)
    );
  b_Maccum_rreyv_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(2),
      LI => b_Maccum_rreyv_lut(3),
      O => b_Result_3_5
    );
  b_Maccum_rreyv_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(2),
      DI => b_rreyv(3),
      S => b_Maccum_rreyv_lut(3),
      O => b_Maccum_rreyv_cy(3)
    );
  b_Maccum_rreyv_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(3),
      I1 => b_drvrey(3),
      O => b_Maccum_rreyv_lut(3)
    );
  b_Maccum_rreyv_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(1),
      LI => b_Maccum_rreyv_lut(2),
      O => b_Result_2_5
    );
  b_Maccum_rreyv_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(1),
      DI => b_rreyv(2),
      S => b_Maccum_rreyv_lut(2),
      O => b_Maccum_rreyv_cy(2)
    );
  b_Maccum_rreyv_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(2),
      I1 => b_drvrey(2),
      O => b_Maccum_rreyv_lut(2)
    );
  b_Maccum_rreyv_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_rreyv_cy(0),
      LI => b_Maccum_rreyv_lut(1),
      O => b_Result_1_5
    );
  b_Maccum_rreyv_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_rreyv_cy(0),
      DI => b_rreyv(1),
      S => b_Maccum_rreyv_lut(1),
      O => b_Maccum_rreyv_cy(1)
    );
  b_Maccum_rreyv_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(1),
      I1 => b_drvrey(1),
      O => b_Maccum_rreyv_lut(1)
    );
  b_Maccum_rreyv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_rreyv_lut(0),
      O => b_Result_0_5
    );
  b_Maccum_rreyv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rreyv(0),
      S => b_Maccum_rreyv_lut(0),
      O => b_Maccum_rreyv_cy(0)
    );
  b_Maccum_rreyv_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(0),
      I1 => b_drvrey(0),
      O => b_Maccum_rreyv_lut(0)
    );
  b_Maccum_cmonav_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(8),
      LI => b_Maccum_cmonav_lut_9_1_278,
      O => b_Result_9_2
    );
  b_Maccum_cmonav_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(9),
      I1 => b_dcvmona(9),
      O => b_Maccum_cmonav_lut(9)
    );
  b_Maccum_cmonav_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(7),
      LI => b_Maccum_cmonav_lut(8),
      O => b_Result_8_2
    );
  b_Maccum_cmonav_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(7),
      DI => b_cmonav(8),
      S => b_Maccum_cmonav_lut(8),
      O => b_Maccum_cmonav_cy(8)
    );
  b_Maccum_cmonav_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => b_dcvmona(8),
      O => b_Maccum_cmonav_lut(8)
    );
  b_Maccum_cmonav_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(6),
      LI => b_Maccum_cmonav_lut(7),
      O => b_Result_7_2
    );
  b_Maccum_cmonav_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(6),
      DI => b_cmonav(7),
      S => b_Maccum_cmonav_lut(7),
      O => b_Maccum_cmonav_cy(7)
    );
  b_Maccum_cmonav_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(7),
      I1 => b_dcvmona(7),
      O => b_Maccum_cmonav_lut(7)
    );
  b_Maccum_cmonav_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(5),
      LI => b_Maccum_cmonav_lut(6),
      O => b_Result_6_2
    );
  b_Maccum_cmonav_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(5),
      DI => b_cmonav(6),
      S => b_Maccum_cmonav_lut(6),
      O => b_Maccum_cmonav_cy(6)
    );
  b_Maccum_cmonav_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(6),
      I1 => b_dcvmona(6),
      O => b_Maccum_cmonav_lut(6)
    );
  b_Maccum_cmonav_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(4),
      LI => b_Maccum_cmonav_lut(5),
      O => b_Result_5_2
    );
  b_Maccum_cmonav_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(4),
      DI => b_cmonav(5),
      S => b_Maccum_cmonav_lut(5),
      O => b_Maccum_cmonav_cy(5)
    );
  b_Maccum_cmonav_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(5),
      I1 => b_dcvmona(5),
      O => b_Maccum_cmonav_lut(5)
    );
  b_Maccum_cmonav_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(3),
      LI => b_Maccum_cmonav_lut(4),
      O => b_Result_4_2
    );
  b_Maccum_cmonav_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(3),
      DI => b_cmonav(4),
      S => b_Maccum_cmonav_lut(4),
      O => b_Maccum_cmonav_cy(4)
    );
  b_Maccum_cmonav_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(4),
      I1 => b_dcvmona(4),
      O => b_Maccum_cmonav_lut(4)
    );
  b_Maccum_cmonav_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(2),
      LI => b_Maccum_cmonav_lut(3),
      O => b_Result_3_2
    );
  b_Maccum_cmonav_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(2),
      DI => b_cmonav(3),
      S => b_Maccum_cmonav_lut(3),
      O => b_Maccum_cmonav_cy(3)
    );
  b_Maccum_cmonav_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(3),
      I1 => b_dcvmona(3),
      O => b_Maccum_cmonav_lut(3)
    );
  b_Maccum_cmonav_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(1),
      LI => b_Maccum_cmonav_lut(2),
      O => b_Result_2_2
    );
  b_Maccum_cmonav_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(1),
      DI => b_cmonav(2),
      S => b_Maccum_cmonav_lut(2),
      O => b_Maccum_cmonav_cy(2)
    );
  b_Maccum_cmonav_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(2),
      I1 => b_dcvmona(2),
      O => b_Maccum_cmonav_lut(2)
    );
  b_Maccum_cmonav_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_cmonav_cy(0),
      LI => b_Maccum_cmonav_lut(1),
      O => b_Result_1_2
    );
  b_Maccum_cmonav_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_cmonav_cy(0),
      DI => b_cmonav(1),
      S => b_Maccum_cmonav_lut(1),
      O => b_Maccum_cmonav_cy(1)
    );
  b_Maccum_cmonav_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(1),
      I1 => b_dcvmona(1),
      O => b_Maccum_cmonav_lut(1)
    );
  b_Maccum_cmonav_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_cmonav_lut(0),
      O => b_Result_0_2
    );
  b_Maccum_cmonav_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_cmonav(0),
      S => b_Maccum_cmonav_lut(0),
      O => b_Maccum_cmonav_cy(0)
    );
  b_Maccum_cmonav_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(0),
      I1 => b_dcvmona(0),
      O => b_Maccum_cmonav_lut(0)
    );
  b_Madd_add0004_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(8),
      LI => b_Maccum_cmonav_lut(9),
      O => b_add0004_add0000(9)
    );
  b_Madd_add0004_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(7),
      LI => b_Madd_add0004_add0000_lut(8),
      O => b_add0004_add0000(8)
    );
  b_Madd_add0004_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(7),
      DI => b_cmonav(8),
      S => b_Madd_add0004_add0000_lut(8),
      O => b_Madd_add0004_add0000_cy(8)
    );
  b_Madd_add0004_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => b_dcvmona(8),
      O => b_Madd_add0004_add0000_lut(8)
    );
  b_Madd_add0004_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(6),
      LI => b_Madd_add0004_add0000_lut(7),
      O => b_add0004_add0000(7)
    );
  b_Madd_add0004_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(6),
      DI => b_cmonav(7),
      S => b_Madd_add0004_add0000_lut(7),
      O => b_Madd_add0004_add0000_cy(7)
    );
  b_Madd_add0004_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(7),
      I1 => b_cmonav(7),
      O => b_Madd_add0004_add0000_lut(7)
    );
  b_Madd_add0004_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(5),
      LI => b_Madd_add0004_add0000_lut(6),
      O => b_add0004_add0000(6)
    );
  b_Madd_add0004_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(5),
      DI => b_cmonav(6),
      S => b_Madd_add0004_add0000_lut(6),
      O => b_Madd_add0004_add0000_cy(6)
    );
  b_Madd_add0004_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(6),
      I1 => b_cmonav(6),
      O => b_Madd_add0004_add0000_lut(6)
    );
  b_Madd_add0004_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(4),
      LI => b_Madd_add0004_add0000_lut(5),
      O => b_add0004_add0000(5)
    );
  b_Madd_add0004_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(4),
      DI => b_cmonav(5),
      S => b_Madd_add0004_add0000_lut(5),
      O => b_Madd_add0004_add0000_cy(5)
    );
  b_Madd_add0004_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(5),
      I1 => b_cmonav(5),
      O => b_Madd_add0004_add0000_lut(5)
    );
  b_Madd_add0004_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(3),
      LI => b_Madd_add0004_add0000_lut(4),
      O => b_add0004_add0000(4)
    );
  b_Madd_add0004_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(3),
      DI => b_cmonav(4),
      S => b_Madd_add0004_add0000_lut(4),
      O => b_Madd_add0004_add0000_cy(4)
    );
  b_Madd_add0004_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(4),
      I1 => b_cmonav(4),
      O => b_Madd_add0004_add0000_lut(4)
    );
  b_Madd_add0004_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(2),
      LI => b_Madd_add0004_add0000_lut(3),
      O => b_add0004_add0000(3)
    );
  b_Madd_add0004_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(2),
      DI => b_cmonav(3),
      S => b_Madd_add0004_add0000_lut(3),
      O => b_Madd_add0004_add0000_cy(3)
    );
  b_Madd_add0004_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(3),
      I1 => b_cmonav(3),
      O => b_Madd_add0004_add0000_lut(3)
    );
  b_Madd_add0004_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0004_add0000_cy(1),
      LI => b_Madd_add0004_add0000_lut(2),
      O => b_add0004_add0000(2)
    );
  b_Madd_add0004_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(1),
      DI => b_cmonav(2),
      S => b_Madd_add0004_add0000_lut(2),
      O => b_Madd_add0004_add0000_cy(2)
    );
  b_Madd_add0004_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(2),
      I1 => b_cmonav(2),
      O => b_Madd_add0004_add0000_lut(2)
    );
  b_Madd_add0004_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0004_add0000_cy(0),
      DI => b_cmonav(1),
      S => b_Madd_add0004_add0000_lut(1),
      O => b_Madd_add0004_add0000_cy(1)
    );
  b_Madd_add0004_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(1),
      I1 => b_cmonav(1),
      O => b_Madd_add0004_add0000_lut(1)
    );
  b_Madd_add0004_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_cmonav(0),
      S => b_Madd_add0004_add0000_lut(0),
      O => b_Madd_add0004_add0000_cy(0)
    );
  b_Madd_add0004_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvmona(0),
      I1 => b_cmonav(0),
      O => b_Madd_add0004_add0000_lut(0)
    );
  b_Madd_add0003_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(8),
      LI => b_Maccum_rskyev_lut(9),
      O => b_add0003_add0000(9)
    );
  b_Madd_add0003_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(7),
      LI => b_Madd_add0003_add0000_lut(8),
      O => b_add0003_add0000(8)
    );
  b_Madd_add0003_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(7),
      DI => b_rskyev(8),
      S => b_Madd_add0003_add0000_lut(8),
      O => b_Madd_add0003_add0000_cy(8)
    );
  b_Madd_add0003_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(8),
      I1 => b_rskyev(8),
      O => b_Madd_add0003_add0000_lut(8)
    );
  b_Madd_add0003_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(6),
      LI => b_Madd_add0003_add0000_lut(7),
      O => b_add0003_add0000(7)
    );
  b_Madd_add0003_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(6),
      DI => b_rskyev(7),
      S => b_Madd_add0003_add0000_lut(7),
      O => b_Madd_add0003_add0000_cy(7)
    );
  b_Madd_add0003_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(7),
      I1 => b_rskyev(7),
      O => b_Madd_add0003_add0000_lut(7)
    );
  b_Madd_add0003_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(5),
      LI => b_Madd_add0003_add0000_lut(6),
      O => b_add0003_add0000(6)
    );
  b_Madd_add0003_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(5),
      DI => b_rskyev(6),
      S => b_Madd_add0003_add0000_lut(6),
      O => b_Madd_add0003_add0000_cy(6)
    );
  b_Madd_add0003_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(6),
      I1 => b_rskyev(6),
      O => b_Madd_add0003_add0000_lut(6)
    );
  b_Madd_add0003_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(4),
      LI => b_Madd_add0003_add0000_lut(5),
      O => b_add0003_add0000(5)
    );
  b_Madd_add0003_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(4),
      DI => b_rskyev(5),
      S => b_Madd_add0003_add0000_lut(5),
      O => b_Madd_add0003_add0000_cy(5)
    );
  b_Madd_add0003_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(5),
      I1 => b_rskyev(5),
      O => b_Madd_add0003_add0000_lut(5)
    );
  b_Madd_add0003_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(3),
      LI => b_Madd_add0003_add0000_lut(4),
      O => b_add0003_add0000(4)
    );
  b_Madd_add0003_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(3),
      DI => b_rskyev(4),
      S => b_Madd_add0003_add0000_lut(4),
      O => b_Madd_add0003_add0000_cy(4)
    );
  b_Madd_add0003_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(4),
      I1 => b_rskyev(4),
      O => b_Madd_add0003_add0000_lut(4)
    );
  b_Madd_add0003_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(2),
      LI => b_Madd_add0003_add0000_lut(3),
      O => b_add0003_add0000(3)
    );
  b_Madd_add0003_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(2),
      DI => b_rskyev(3),
      S => b_Madd_add0003_add0000_lut(3),
      O => b_Madd_add0003_add0000_cy(3)
    );
  b_Madd_add0003_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(3),
      I1 => b_rskyev(3),
      O => b_Madd_add0003_add0000_lut(3)
    );
  b_Madd_add0003_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0003_add0000_cy(1),
      LI => b_Madd_add0003_add0000_lut(2),
      O => b_add0003_add0000(2)
    );
  b_Madd_add0003_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(1),
      DI => b_rskyev(2),
      S => b_Madd_add0003_add0000_lut(2),
      O => b_Madd_add0003_add0000_cy(2)
    );
  b_Madd_add0003_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(2),
      I1 => b_rskyev(2),
      O => b_Madd_add0003_add0000_lut(2)
    );
  b_Madd_add0003_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0003_add0000_cy(0),
      DI => b_rskyev(1),
      S => b_Madd_add0003_add0000_lut(1),
      O => b_Madd_add0003_add0000_cy(1)
    );
  b_Madd_add0003_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(1),
      I1 => b_rskyev(1),
      O => b_Madd_add0003_add0000_lut(1)
    );
  b_Madd_add0003_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rskyev(0),
      S => b_Madd_add0003_add0000_lut(0),
      O => b_Madd_add0003_add0000_cy(0)
    );
  b_Madd_add0003_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvskye(0),
      I1 => b_rskyev(0),
      O => b_Madd_add0003_add0000_lut(0)
    );
  b_Madd_add0001_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(8),
      LI => b_Maccum_rreyv_lut(9),
      O => b_add0001_add0000(9)
    );
  b_Madd_add0001_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(7),
      LI => b_Madd_add0001_add0000_lut(8),
      O => b_add0001_add0000(8)
    );
  b_Madd_add0001_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(7),
      DI => b_rreyv(8),
      S => b_Madd_add0001_add0000_lut(8),
      O => b_Madd_add0001_add0000_cy(8)
    );
  b_Madd_add0001_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(8),
      I1 => b_rreyv(8),
      O => b_Madd_add0001_add0000_lut(8)
    );
  b_Madd_add0001_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(6),
      LI => b_Madd_add0001_add0000_lut(7),
      O => b_add0001_add0000(7)
    );
  b_Madd_add0001_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(6),
      DI => b_rreyv(7),
      S => b_Madd_add0001_add0000_lut(7),
      O => b_Madd_add0001_add0000_cy(7)
    );
  b_Madd_add0001_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(7),
      I1 => b_rreyv(7),
      O => b_Madd_add0001_add0000_lut(7)
    );
  b_Madd_add0001_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(5),
      LI => b_Madd_add0001_add0000_lut(6),
      O => b_add0001_add0000(6)
    );
  b_Madd_add0001_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(5),
      DI => b_rreyv(6),
      S => b_Madd_add0001_add0000_lut(6),
      O => b_Madd_add0001_add0000_cy(6)
    );
  b_Madd_add0001_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(6),
      I1 => b_rreyv(6),
      O => b_Madd_add0001_add0000_lut(6)
    );
  b_Madd_add0001_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(4),
      LI => b_Madd_add0001_add0000_lut(5),
      O => b_add0001_add0000(5)
    );
  b_Madd_add0001_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(4),
      DI => b_rreyv(5),
      S => b_Madd_add0001_add0000_lut(5),
      O => b_Madd_add0001_add0000_cy(5)
    );
  b_Madd_add0001_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(5),
      I1 => b_rreyv(5),
      O => b_Madd_add0001_add0000_lut(5)
    );
  b_Madd_add0001_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(3),
      LI => b_Madd_add0001_add0000_lut(4),
      O => b_add0001_add0000(4)
    );
  b_Madd_add0001_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(3),
      DI => b_rreyv(4),
      S => b_Madd_add0001_add0000_lut(4),
      O => b_Madd_add0001_add0000_cy(4)
    );
  b_Madd_add0001_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(4),
      I1 => b_rreyv(4),
      O => b_Madd_add0001_add0000_lut(4)
    );
  b_Madd_add0001_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(2),
      LI => b_Madd_add0001_add0000_lut(3),
      O => b_add0001_add0000(3)
    );
  b_Madd_add0001_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(2),
      DI => b_rreyv(3),
      S => b_Madd_add0001_add0000_lut(3),
      O => b_Madd_add0001_add0000_cy(3)
    );
  b_Madd_add0001_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(3),
      I1 => b_rreyv(3),
      O => b_Madd_add0001_add0000_lut(3)
    );
  b_Madd_add0001_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0001_add0000_cy(1),
      LI => b_Madd_add0001_add0000_lut(2),
      O => b_add0001_add0000(2)
    );
  b_Madd_add0001_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(1),
      DI => b_rreyv(2),
      S => b_Madd_add0001_add0000_lut(2),
      O => b_Madd_add0001_add0000_cy(2)
    );
  b_Madd_add0001_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(2),
      I1 => b_rreyv(2),
      O => b_Madd_add0001_add0000_lut(2)
    );
  b_Madd_add0001_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0001_add0000_cy(0),
      DI => b_rreyv(1),
      S => b_Madd_add0001_add0000_lut(1),
      O => b_Madd_add0001_add0000_cy(1)
    );
  b_Madd_add0001_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(1),
      I1 => b_rreyv(1),
      O => b_Madd_add0001_add0000_lut(1)
    );
  b_Madd_add0001_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rreyv(0),
      S => b_Madd_add0001_add0000_lut(0),
      O => b_Madd_add0001_add0000_cy(0)
    );
  b_Madd_add0001_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvrey(0),
      I1 => b_rreyv(0),
      O => b_Madd_add0001_add0000_lut(0)
    );
  b_Madd_add0000_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(8),
      LI => b_Maccum_creyv_lut(9),
      O => b_add0000_add0000(9)
    );
  b_Madd_add0000_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(7),
      LI => b_Madd_add0000_add0000_lut(8),
      O => b_add0000_add0000(8)
    );
  b_Madd_add0000_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(7),
      DI => b_creyv(8),
      S => b_Madd_add0000_add0000_lut(8),
      O => b_Madd_add0000_add0000_cy(8)
    );
  b_Madd_add0000_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(8),
      I1 => b_dcvrey(8),
      O => b_Madd_add0000_add0000_lut(8)
    );
  b_Madd_add0000_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(6),
      LI => b_Madd_add0000_add0000_lut(7),
      O => b_add0000_add0000(7)
    );
  b_Madd_add0000_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(6),
      DI => b_creyv(7),
      S => b_Madd_add0000_add0000_lut(7),
      O => b_Madd_add0000_add0000_cy(7)
    );
  b_Madd_add0000_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(7),
      I1 => b_creyv(7),
      O => b_Madd_add0000_add0000_lut(7)
    );
  b_Madd_add0000_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(5),
      LI => b_Madd_add0000_add0000_lut(6),
      O => b_add0000_add0000(6)
    );
  b_Madd_add0000_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(5),
      DI => b_creyv(6),
      S => b_Madd_add0000_add0000_lut(6),
      O => b_Madd_add0000_add0000_cy(6)
    );
  b_Madd_add0000_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(6),
      I1 => b_creyv(6),
      O => b_Madd_add0000_add0000_lut(6)
    );
  b_Madd_add0000_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(4),
      LI => b_Madd_add0000_add0000_lut(5),
      O => b_add0000_add0000(5)
    );
  b_Madd_add0000_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(4),
      DI => b_creyv(5),
      S => b_Madd_add0000_add0000_lut(5),
      O => b_Madd_add0000_add0000_cy(5)
    );
  b_Madd_add0000_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(5),
      I1 => b_creyv(5),
      O => b_Madd_add0000_add0000_lut(5)
    );
  b_Madd_add0000_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(3),
      LI => b_Madd_add0000_add0000_lut(4),
      O => b_add0000_add0000(4)
    );
  b_Madd_add0000_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(3),
      DI => b_creyv(4),
      S => b_Madd_add0000_add0000_lut(4),
      O => b_Madd_add0000_add0000_cy(4)
    );
  b_Madd_add0000_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(4),
      I1 => b_creyv(4),
      O => b_Madd_add0000_add0000_lut(4)
    );
  b_Madd_add0000_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(2),
      LI => b_Madd_add0000_add0000_lut(3),
      O => b_add0000_add0000(3)
    );
  b_Madd_add0000_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(2),
      DI => b_creyv(3),
      S => b_Madd_add0000_add0000_lut(3),
      O => b_Madd_add0000_add0000_cy(3)
    );
  b_Madd_add0000_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(3),
      I1 => b_creyv(3),
      O => b_Madd_add0000_add0000_lut(3)
    );
  b_Madd_add0000_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0000_add0000_cy(1),
      LI => b_Madd_add0000_add0000_lut(2),
      O => b_add0000_add0000(2)
    );
  b_Madd_add0000_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(1),
      DI => b_creyv(2),
      S => b_Madd_add0000_add0000_lut(2),
      O => b_Madd_add0000_add0000_cy(2)
    );
  b_Madd_add0000_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(2),
      I1 => b_creyv(2),
      O => b_Madd_add0000_add0000_lut(2)
    );
  b_Madd_add0000_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0000_add0000_cy(0),
      DI => b_creyv(1),
      S => b_Madd_add0000_add0000_lut(1),
      O => b_Madd_add0000_add0000_cy(1)
    );
  b_Madd_add0000_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(1),
      I1 => b_creyv(1),
      O => b_Madd_add0000_add0000_lut(1)
    );
  b_Madd_add0000_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_creyv(0),
      S => b_Madd_add0000_add0000_lut(0),
      O => b_Madd_add0000_add0000_cy(0)
    );
  b_Madd_add0000_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvrey(0),
      I1 => b_creyv(0),
      O => b_Madd_add0000_add0000_lut(0)
    );
  b_Maccum_cskyev_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(8),
      LI => b_Maccum_cskyev_lut_9_1_318,
      O => b_Result_9_1
    );
  b_Maccum_cskyev_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(9),
      I1 => b_dcvskye(9),
      O => b_Maccum_cskyev_lut(9)
    );
  b_Maccum_cskyev_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(7),
      LI => b_Maccum_cskyev_lut(8),
      O => b_Result_8_1
    );
  b_Maccum_cskyev_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(7),
      DI => b_cskyev(8),
      S => b_Maccum_cskyev_lut(8),
      O => b_Maccum_cskyev_cy(8)
    );
  b_Maccum_cskyev_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => b_dcvskye(8),
      O => b_Maccum_cskyev_lut(8)
    );
  b_Maccum_cskyev_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(6),
      LI => b_Maccum_cskyev_lut(7),
      O => b_Result_7_1
    );
  b_Maccum_cskyev_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(6),
      DI => b_cskyev(7),
      S => b_Maccum_cskyev_lut(7),
      O => b_Maccum_cskyev_cy(7)
    );
  b_Maccum_cskyev_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(7),
      I1 => b_dcvskye(7),
      O => b_Maccum_cskyev_lut(7)
    );
  b_Maccum_cskyev_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(5),
      LI => b_Maccum_cskyev_lut(6),
      O => b_Result_6_1
    );
  b_Maccum_cskyev_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(5),
      DI => b_cskyev(6),
      S => b_Maccum_cskyev_lut(6),
      O => b_Maccum_cskyev_cy(6)
    );
  b_Maccum_cskyev_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(6),
      I1 => b_dcvskye(6),
      O => b_Maccum_cskyev_lut(6)
    );
  b_Maccum_cskyev_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(4),
      LI => b_Maccum_cskyev_lut(5),
      O => b_Result_5_1
    );
  b_Maccum_cskyev_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(4),
      DI => b_cskyev(5),
      S => b_Maccum_cskyev_lut(5),
      O => b_Maccum_cskyev_cy(5)
    );
  b_Maccum_cskyev_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(5),
      I1 => b_dcvskye(5),
      O => b_Maccum_cskyev_lut(5)
    );
  b_Maccum_cskyev_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(3),
      LI => b_Maccum_cskyev_lut(4),
      O => b_Result_4_1
    );
  b_Maccum_cskyev_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(3),
      DI => b_cskyev(4),
      S => b_Maccum_cskyev_lut(4),
      O => b_Maccum_cskyev_cy(4)
    );
  b_Maccum_cskyev_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(4),
      I1 => b_dcvskye(4),
      O => b_Maccum_cskyev_lut(4)
    );
  b_Maccum_cskyev_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(2),
      LI => b_Maccum_cskyev_lut(3),
      O => b_Result_3_1
    );
  b_Maccum_cskyev_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(2),
      DI => b_cskyev(3),
      S => b_Maccum_cskyev_lut(3),
      O => b_Maccum_cskyev_cy(3)
    );
  b_Maccum_cskyev_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(3),
      I1 => b_dcvskye(3),
      O => b_Maccum_cskyev_lut(3)
    );
  b_Maccum_cskyev_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(1),
      LI => b_Maccum_cskyev_lut(2),
      O => b_Result_2_1
    );
  b_Maccum_cskyev_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(1),
      DI => b_cskyev(2),
      S => b_Maccum_cskyev_lut(2),
      O => b_Maccum_cskyev_cy(2)
    );
  b_Maccum_cskyev_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(2),
      I1 => b_dcvskye(2),
      O => b_Maccum_cskyev_lut(2)
    );
  b_Maccum_cskyev_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_cskyev_cy(0),
      LI => b_Maccum_cskyev_lut(1),
      O => b_Result_1_1
    );
  b_Maccum_cskyev_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_cskyev_cy(0),
      DI => b_cskyev(1),
      S => b_Maccum_cskyev_lut(1),
      O => b_Maccum_cskyev_cy(1)
    );
  b_Maccum_cskyev_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(1),
      I1 => b_dcvskye(1),
      O => b_Maccum_cskyev_lut(1)
    );
  b_Maccum_cskyev_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_cskyev_lut(0),
      O => b_Result_0_1
    );
  b_Maccum_cskyev_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_cskyev(0),
      S => b_Maccum_cskyev_lut(0),
      O => b_Maccum_cskyev_cy(0)
    );
  b_Maccum_cskyev_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(0),
      I1 => b_dcvskye(0),
      O => b_Maccum_cskyev_lut(0)
    );
  b_Maccum_rmonav_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(8),
      LI => b_Maccum_rmonav_lut_9_1_338,
      O => b_Result(9)
    );
  b_Maccum_rmonav_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(9),
      I1 => b_drvmona(9),
      O => b_Maccum_rmonav_lut(9)
    );
  b_Maccum_rmonav_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(7),
      LI => b_Maccum_rmonav_lut(8),
      O => b_Result(8)
    );
  b_Maccum_rmonav_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(7),
      DI => b_rmonav(8),
      S => b_Maccum_rmonav_lut(8),
      O => b_Maccum_rmonav_cy(8)
    );
  b_Maccum_rmonav_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(8),
      I1 => b_drvmona(8),
      O => b_Maccum_rmonav_lut(8)
    );
  b_Maccum_rmonav_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(6),
      LI => b_Maccum_rmonav_lut(7),
      O => b_Result(7)
    );
  b_Maccum_rmonav_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(6),
      DI => b_rmonav(7),
      S => b_Maccum_rmonav_lut(7),
      O => b_Maccum_rmonav_cy(7)
    );
  b_Maccum_rmonav_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(7),
      I1 => b_drvmona(7),
      O => b_Maccum_rmonav_lut(7)
    );
  b_Maccum_rmonav_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(5),
      LI => b_Maccum_rmonav_lut(6),
      O => b_Result(6)
    );
  b_Maccum_rmonav_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(5),
      DI => b_rmonav(6),
      S => b_Maccum_rmonav_lut(6),
      O => b_Maccum_rmonav_cy(6)
    );
  b_Maccum_rmonav_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(6),
      I1 => b_drvmona(6),
      O => b_Maccum_rmonav_lut(6)
    );
  b_Maccum_rmonav_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(4),
      LI => b_Maccum_rmonav_lut(5),
      O => b_Result(5)
    );
  b_Maccum_rmonav_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(4),
      DI => b_rmonav(5),
      S => b_Maccum_rmonav_lut(5),
      O => b_Maccum_rmonav_cy(5)
    );
  b_Maccum_rmonav_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(5),
      I1 => b_drvmona(5),
      O => b_Maccum_rmonav_lut(5)
    );
  b_Maccum_rmonav_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(3),
      LI => b_Maccum_rmonav_lut(4),
      O => b_Result(4)
    );
  b_Maccum_rmonav_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(3),
      DI => b_rmonav(4),
      S => b_Maccum_rmonav_lut(4),
      O => b_Maccum_rmonav_cy(4)
    );
  b_Maccum_rmonav_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(4),
      I1 => b_drvmona(4),
      O => b_Maccum_rmonav_lut(4)
    );
  b_Maccum_rmonav_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(2),
      LI => b_Maccum_rmonav_lut(3),
      O => b_Result(3)
    );
  b_Maccum_rmonav_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(2),
      DI => b_rmonav(3),
      S => b_Maccum_rmonav_lut(3),
      O => b_Maccum_rmonav_cy(3)
    );
  b_Maccum_rmonav_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(3),
      I1 => b_drvmona(3),
      O => b_Maccum_rmonav_lut(3)
    );
  b_Maccum_rmonav_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(1),
      LI => b_Maccum_rmonav_lut(2),
      O => b_Result(2)
    );
  b_Maccum_rmonav_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(1),
      DI => b_rmonav(2),
      S => b_Maccum_rmonav_lut(2),
      O => b_Maccum_rmonav_cy(2)
    );
  b_Maccum_rmonav_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(2),
      I1 => b_drvmona(2),
      O => b_Maccum_rmonav_lut(2)
    );
  b_Maccum_rmonav_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_rmonav_cy(0),
      LI => b_Maccum_rmonav_lut(1),
      O => b_Result(1)
    );
  b_Maccum_rmonav_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_rmonav_cy(0),
      DI => b_rmonav(1),
      S => b_Maccum_rmonav_lut(1),
      O => b_Maccum_rmonav_cy(1)
    );
  b_Maccum_rmonav_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(1),
      I1 => b_drvmona(1),
      O => b_Maccum_rmonav_lut(1)
    );
  b_Maccum_rmonav_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Maccum_rmonav_lut(0),
      O => b_Result(0)
    );
  b_Maccum_rmonav_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rmonav(0),
      S => b_Maccum_rmonav_lut(0),
      O => b_Maccum_rmonav_cy(0)
    );
  b_Maccum_rmonav_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(0),
      I1 => b_drvmona(0),
      O => b_Maccum_rmonav_lut(0)
    );
  b_Madd_add0005_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(8),
      LI => b_Maccum_rmonav_lut(9),
      O => b_add0005_add0000(9)
    );
  b_Madd_add0005_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(7),
      LI => b_Madd_add0005_add0000_lut(8),
      O => b_add0005_add0000(8)
    );
  b_Madd_add0005_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(7),
      DI => b_rmonav(8),
      S => b_Madd_add0005_add0000_lut(8),
      O => b_Madd_add0005_add0000_cy(8)
    );
  b_Madd_add0005_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(8),
      I1 => b_rmonav(8),
      O => b_Madd_add0005_add0000_lut(8)
    );
  b_Madd_add0005_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(6),
      LI => b_Madd_add0005_add0000_lut(7),
      O => b_add0005_add0000(7)
    );
  b_Madd_add0005_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(6),
      DI => b_rmonav(7),
      S => b_Madd_add0005_add0000_lut(7),
      O => b_Madd_add0005_add0000_cy(7)
    );
  b_Madd_add0005_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(7),
      I1 => b_rmonav(7),
      O => b_Madd_add0005_add0000_lut(7)
    );
  b_Madd_add0005_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(5),
      LI => b_Madd_add0005_add0000_lut(6),
      O => b_add0005_add0000(6)
    );
  b_Madd_add0005_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(5),
      DI => b_rmonav(6),
      S => b_Madd_add0005_add0000_lut(6),
      O => b_Madd_add0005_add0000_cy(6)
    );
  b_Madd_add0005_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(6),
      I1 => b_rmonav(6),
      O => b_Madd_add0005_add0000_lut(6)
    );
  b_Madd_add0005_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(4),
      LI => b_Madd_add0005_add0000_lut(5),
      O => b_add0005_add0000(5)
    );
  b_Madd_add0005_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(4),
      DI => b_rmonav(5),
      S => b_Madd_add0005_add0000_lut(5),
      O => b_Madd_add0005_add0000_cy(5)
    );
  b_Madd_add0005_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(5),
      I1 => b_rmonav(5),
      O => b_Madd_add0005_add0000_lut(5)
    );
  b_Madd_add0005_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(3),
      LI => b_Madd_add0005_add0000_lut(4),
      O => b_add0005_add0000(4)
    );
  b_Madd_add0005_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(3),
      DI => b_rmonav(4),
      S => b_Madd_add0005_add0000_lut(4),
      O => b_Madd_add0005_add0000_cy(4)
    );
  b_Madd_add0005_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(4),
      I1 => b_rmonav(4),
      O => b_Madd_add0005_add0000_lut(4)
    );
  b_Madd_add0005_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(2),
      LI => b_Madd_add0005_add0000_lut(3),
      O => b_add0005_add0000(3)
    );
  b_Madd_add0005_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(2),
      DI => b_rmonav(3),
      S => b_Madd_add0005_add0000_lut(3),
      O => b_Madd_add0005_add0000_cy(3)
    );
  b_Madd_add0005_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(3),
      I1 => b_rmonav(3),
      O => b_Madd_add0005_add0000_lut(3)
    );
  b_Madd_add0005_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0005_add0000_cy(1),
      LI => b_Madd_add0005_add0000_lut(2),
      O => b_add0005_add0000(2)
    );
  b_Madd_add0005_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(1),
      DI => b_rmonav(2),
      S => b_Madd_add0005_add0000_lut(2),
      O => b_Madd_add0005_add0000_cy(2)
    );
  b_Madd_add0005_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(2),
      I1 => b_rmonav(2),
      O => b_Madd_add0005_add0000_lut(2)
    );
  b_Madd_add0005_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0005_add0000_cy(0),
      DI => b_rmonav(1),
      S => b_Madd_add0005_add0000_lut(1),
      O => b_Madd_add0005_add0000_cy(1)
    );
  b_Madd_add0005_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(1),
      I1 => b_rmonav(1),
      O => b_Madd_add0005_add0000_lut(1)
    );
  b_Madd_add0005_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_rmonav(0),
      S => b_Madd_add0005_add0000_lut(0),
      O => b_Madd_add0005_add0000_cy(0)
    );
  b_Madd_add0005_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_drvmona(0),
      I1 => b_rmonav(0),
      O => b_Madd_add0005_add0000_lut(0)
    );
  b_Madd_add0002_add0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(8),
      LI => b_Maccum_cskyev_lut(9),
      O => b_add0002_add0000(9)
    );
  b_Madd_add0002_add0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(7),
      LI => b_Madd_add0002_add0000_lut(8),
      O => b_add0002_add0000(8)
    );
  b_Madd_add0002_add0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(7),
      DI => b_cskyev(8),
      S => b_Madd_add0002_add0000_lut(8),
      O => b_Madd_add0002_add0000_cy(8)
    );
  b_Madd_add0002_add0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => b_dcvskye(8),
      O => b_Madd_add0002_add0000_lut(8)
    );
  b_Madd_add0002_add0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(6),
      LI => b_Madd_add0002_add0000_lut(7),
      O => b_add0002_add0000(7)
    );
  b_Madd_add0002_add0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(6),
      DI => b_cskyev(7),
      S => b_Madd_add0002_add0000_lut(7),
      O => b_Madd_add0002_add0000_cy(7)
    );
  b_Madd_add0002_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(7),
      I1 => b_cskyev(7),
      O => b_Madd_add0002_add0000_lut(7)
    );
  b_Madd_add0002_add0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(5),
      LI => b_Madd_add0002_add0000_lut(6),
      O => b_add0002_add0000(6)
    );
  b_Madd_add0002_add0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(5),
      DI => b_cskyev(6),
      S => b_Madd_add0002_add0000_lut(6),
      O => b_Madd_add0002_add0000_cy(6)
    );
  b_Madd_add0002_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(6),
      I1 => b_cskyev(6),
      O => b_Madd_add0002_add0000_lut(6)
    );
  b_Madd_add0002_add0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(4),
      LI => b_Madd_add0002_add0000_lut(5),
      O => b_add0002_add0000(5)
    );
  b_Madd_add0002_add0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(4),
      DI => b_cskyev(5),
      S => b_Madd_add0002_add0000_lut(5),
      O => b_Madd_add0002_add0000_cy(5)
    );
  b_Madd_add0002_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(5),
      I1 => b_cskyev(5),
      O => b_Madd_add0002_add0000_lut(5)
    );
  b_Madd_add0002_add0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(3),
      LI => b_Madd_add0002_add0000_lut(4),
      O => b_add0002_add0000(4)
    );
  b_Madd_add0002_add0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(3),
      DI => b_cskyev(4),
      S => b_Madd_add0002_add0000_lut(4),
      O => b_Madd_add0002_add0000_cy(4)
    );
  b_Madd_add0002_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(4),
      I1 => b_cskyev(4),
      O => b_Madd_add0002_add0000_lut(4)
    );
  b_Madd_add0002_add0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(2),
      LI => b_Madd_add0002_add0000_lut(3),
      O => b_add0002_add0000(3)
    );
  b_Madd_add0002_add0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(2),
      DI => b_cskyev(3),
      S => b_Madd_add0002_add0000_lut(3),
      O => b_Madd_add0002_add0000_cy(3)
    );
  b_Madd_add0002_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(3),
      I1 => b_cskyev(3),
      O => b_Madd_add0002_add0000_lut(3)
    );
  b_Madd_add0002_add0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_add0002_add0000_cy(1),
      LI => b_Madd_add0002_add0000_lut(2),
      O => b_add0002_add0000(2)
    );
  b_Madd_add0002_add0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(1),
      DI => b_cskyev(2),
      S => b_Madd_add0002_add0000_lut(2),
      O => b_Madd_add0002_add0000_cy(2)
    );
  b_Madd_add0002_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(2),
      I1 => b_cskyev(2),
      O => b_Madd_add0002_add0000_lut(2)
    );
  b_Madd_add0002_add0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_add0002_add0000_cy(0),
      DI => b_cskyev(1),
      S => b_Madd_add0002_add0000_lut(1),
      O => b_Madd_add0002_add0000_cy(1)
    );
  b_Madd_add0002_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(1),
      I1 => b_cskyev(1),
      O => b_Madd_add0002_add0000_lut(1)
    );
  b_Madd_add0002_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_cskyev(0),
      S => b_Madd_add0002_add0000_lut(0),
      O => b_Madd_add0002_add0000_cy(0)
    );
  b_Madd_add0002_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_dcvskye(0),
      I1 => b_cskyev(0),
      O => b_Madd_add0002_add0000_lut(0)
    );
  b_Madd_dcvskye_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(8),
      LI => b_Madd_dcvskye_not0000(9),
      O => b_dcvskye_sub0000(9)
    );
  b_Madd_dcvskye_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(7),
      LI => b_Madd_dcvskye_not0000(8),
      O => b_dcvskye_sub0000(8)
    );
  b_Madd_dcvskye_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(7),
      DI => N0,
      S => b_Madd_dcvskye_not0000(8),
      O => b_Madd_dcvskye_sub0000_cy(8)
    );
  b_Madd_dcvskye_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(6),
      LI => b_Madd_dcvskye_not0000(7),
      O => b_dcvskye_sub0000(7)
    );
  b_Madd_dcvskye_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(6),
      DI => N0,
      S => b_Madd_dcvskye_not0000(7),
      O => b_Madd_dcvskye_sub0000_cy(7)
    );
  b_Madd_dcvskye_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(5),
      LI => b_Madd_dcvskye_not0000(6),
      O => b_dcvskye_sub0000(6)
    );
  b_Madd_dcvskye_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(5),
      DI => N0,
      S => b_Madd_dcvskye_not0000(6),
      O => b_Madd_dcvskye_sub0000_cy(6)
    );
  b_Madd_dcvskye_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(4),
      LI => b_Madd_dcvskye_not0000(5),
      O => b_dcvskye_sub0000(5)
    );
  b_Madd_dcvskye_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(4),
      DI => N0,
      S => b_Madd_dcvskye_not0000(5),
      O => b_Madd_dcvskye_sub0000_cy(5)
    );
  b_Madd_dcvskye_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(3),
      LI => b_Madd_dcvskye_not0000(4),
      O => b_dcvskye_sub0000(4)
    );
  b_Madd_dcvskye_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(3),
      DI => N0,
      S => b_Madd_dcvskye_not0000(4),
      O => b_Madd_dcvskye_sub0000_cy(4)
    );
  b_Madd_dcvskye_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(2),
      LI => b_Madd_dcvskye_not0000(3),
      O => b_dcvskye_sub0000(3)
    );
  b_Madd_dcvskye_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(2),
      DI => N0,
      S => b_Madd_dcvskye_not0000(3),
      O => b_Madd_dcvskye_sub0000_cy(3)
    );
  b_Madd_dcvskye_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(1),
      LI => b_Madd_dcvskye_not0000(2),
      O => b_dcvskye_sub0000(2)
    );
  b_Madd_dcvskye_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(1),
      DI => N0,
      S => b_Madd_dcvskye_not0000(2),
      O => b_Madd_dcvskye_sub0000_cy(2)
    );
  b_Madd_dcvskye_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(0),
      LI => b_Madd_dcvskye_not0000(1),
      O => b_dcvskye_sub0000(1)
    );
  b_Madd_dcvskye_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_dcvskye_sub0000_cy(0),
      DI => N0,
      S => b_Madd_dcvskye_not0000(1),
      O => b_Madd_dcvskye_sub0000_cy(1)
    );
  b_Madd_dcvskye_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_dcvskye_sub0000_cy_0_rt_535,
      O => b_dcvskye_sub0000(0)
    );
  b_Madd_dcvskye_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_dcvskye_sub0000_cy_0_rt_535,
      O => b_Madd_dcvskye_sub0000_cy(0)
    );
  b_Madd_drvskye_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(8),
      LI => b_Madd_drvskye_not0000(9),
      O => b_drvskye_sub0000(9)
    );
  b_Madd_drvskye_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(7),
      LI => b_Madd_drvskye_not0000(8),
      O => b_drvskye_sub0000(8)
    );
  b_Madd_drvskye_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(7),
      DI => N0,
      S => b_Madd_drvskye_not0000(8),
      O => b_Madd_drvskye_sub0000_cy(8)
    );
  b_Madd_drvskye_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(6),
      LI => b_Madd_drvskye_not0000(7),
      O => b_drvskye_sub0000(7)
    );
  b_Madd_drvskye_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(6),
      DI => N0,
      S => b_Madd_drvskye_not0000(7),
      O => b_Madd_drvskye_sub0000_cy(7)
    );
  b_Madd_drvskye_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(5),
      LI => b_Madd_drvskye_not0000(6),
      O => b_drvskye_sub0000(6)
    );
  b_Madd_drvskye_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(5),
      DI => N0,
      S => b_Madd_drvskye_not0000(6),
      O => b_Madd_drvskye_sub0000_cy(6)
    );
  b_Madd_drvskye_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(4),
      LI => b_Madd_drvskye_not0000(5),
      O => b_drvskye_sub0000(5)
    );
  b_Madd_drvskye_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(4),
      DI => N0,
      S => b_Madd_drvskye_not0000(5),
      O => b_Madd_drvskye_sub0000_cy(5)
    );
  b_Madd_drvskye_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(3),
      LI => b_Madd_drvskye_not0000(4),
      O => b_drvskye_sub0000(4)
    );
  b_Madd_drvskye_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(3),
      DI => N0,
      S => b_Madd_drvskye_not0000(4),
      O => b_Madd_drvskye_sub0000_cy(4)
    );
  b_Madd_drvskye_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(2),
      LI => b_Madd_drvskye_not0000(3),
      O => b_drvskye_sub0000(3)
    );
  b_Madd_drvskye_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(2),
      DI => N0,
      S => b_Madd_drvskye_not0000(3),
      O => b_Madd_drvskye_sub0000_cy(3)
    );
  b_Madd_drvskye_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(1),
      LI => b_Madd_drvskye_not0000(2),
      O => b_drvskye_sub0000(2)
    );
  b_Madd_drvskye_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(1),
      DI => N0,
      S => b_Madd_drvskye_not0000(2),
      O => b_Madd_drvskye_sub0000_cy(2)
    );
  b_Madd_drvskye_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(0),
      LI => b_Madd_drvskye_not0000(1),
      O => b_drvskye_sub0000(1)
    );
  b_Madd_drvskye_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_drvskye_sub0000_cy(0),
      DI => N0,
      S => b_Madd_drvskye_not0000(1),
      O => b_Madd_drvskye_sub0000_cy(1)
    );
  b_Madd_drvskye_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_drvskye_sub0000_cy_0_rt_592,
      O => b_drvskye_sub0000(0)
    );
  b_Madd_drvskye_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_drvskye_sub0000_cy_0_rt_592,
      O => b_Madd_drvskye_sub0000_cy(0)
    );
  b_Madd_drvrey_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(8),
      LI => b_Madd_drvrey_not0000(9),
      O => b_drvrey_sub0000(9)
    );
  b_Madd_drvrey_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(7),
      LI => b_Madd_drvrey_not0000(8),
      O => b_drvrey_sub0000(8)
    );
  b_Madd_drvrey_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(7),
      DI => N0,
      S => b_Madd_drvrey_not0000(8),
      O => b_Madd_drvrey_sub0000_cy(8)
    );
  b_Madd_drvrey_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(6),
      LI => b_Madd_drvrey_not0000(7),
      O => b_drvrey_sub0000(7)
    );
  b_Madd_drvrey_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(6),
      DI => N0,
      S => b_Madd_drvrey_not0000(7),
      O => b_Madd_drvrey_sub0000_cy(7)
    );
  b_Madd_drvrey_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(5),
      LI => b_Madd_drvrey_not0000(6),
      O => b_drvrey_sub0000(6)
    );
  b_Madd_drvrey_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(5),
      DI => N0,
      S => b_Madd_drvrey_not0000(6),
      O => b_Madd_drvrey_sub0000_cy(6)
    );
  b_Madd_drvrey_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(4),
      LI => b_Madd_drvrey_not0000(5),
      O => b_drvrey_sub0000(5)
    );
  b_Madd_drvrey_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(4),
      DI => N0,
      S => b_Madd_drvrey_not0000(5),
      O => b_Madd_drvrey_sub0000_cy(5)
    );
  b_Madd_drvrey_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(3),
      LI => b_Madd_drvrey_not0000(4),
      O => b_drvrey_sub0000(4)
    );
  b_Madd_drvrey_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(3),
      DI => N0,
      S => b_Madd_drvrey_not0000(4),
      O => b_Madd_drvrey_sub0000_cy(4)
    );
  b_Madd_drvrey_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(2),
      LI => b_Madd_drvrey_not0000(3),
      O => b_drvrey_sub0000(3)
    );
  b_Madd_drvrey_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(2),
      DI => N0,
      S => b_Madd_drvrey_not0000(3),
      O => b_Madd_drvrey_sub0000_cy(3)
    );
  b_Madd_drvrey_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(1),
      LI => b_Madd_drvrey_not0000(2),
      O => b_drvrey_sub0000(2)
    );
  b_Madd_drvrey_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(1),
      DI => N0,
      S => b_Madd_drvrey_not0000(2),
      O => b_Madd_drvrey_sub0000_cy(2)
    );
  b_Madd_drvrey_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(0),
      LI => b_Madd_drvrey_not0000(1),
      O => b_drvrey_sub0000(1)
    );
  b_Madd_drvrey_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_drvrey_sub0000_cy(0),
      DI => N0,
      S => b_Madd_drvrey_not0000(1),
      O => b_Madd_drvrey_sub0000_cy(1)
    );
  b_Madd_drvrey_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_drvrey_sub0000_cy_0_rt_573,
      O => b_drvrey_sub0000(0)
    );
  b_Madd_drvrey_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_drvrey_sub0000_cy_0_rt_573,
      O => b_Madd_drvrey_sub0000_cy(0)
    );
  b_Madd_dcvrey_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(8),
      LI => b_Madd_dcvrey_not0000(9),
      O => b_dcvrey_sub0000(9)
    );
  b_Madd_dcvrey_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(7),
      LI => b_Madd_dcvrey_not0000(8),
      O => b_dcvrey_sub0000(8)
    );
  b_Madd_dcvrey_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(7),
      DI => N0,
      S => b_Madd_dcvrey_not0000(8),
      O => b_Madd_dcvrey_sub0000_cy(8)
    );
  b_Madd_dcvrey_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(6),
      LI => b_Madd_dcvrey_not0000(7),
      O => b_dcvrey_sub0000(7)
    );
  b_Madd_dcvrey_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(6),
      DI => N0,
      S => b_Madd_dcvrey_not0000(7),
      O => b_Madd_dcvrey_sub0000_cy(7)
    );
  b_Madd_dcvrey_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(5),
      LI => b_Madd_dcvrey_not0000(6),
      O => b_dcvrey_sub0000(6)
    );
  b_Madd_dcvrey_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(5),
      DI => N0,
      S => b_Madd_dcvrey_not0000(6),
      O => b_Madd_dcvrey_sub0000_cy(6)
    );
  b_Madd_dcvrey_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(4),
      LI => b_Madd_dcvrey_not0000(5),
      O => b_dcvrey_sub0000(5)
    );
  b_Madd_dcvrey_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(4),
      DI => N0,
      S => b_Madd_dcvrey_not0000(5),
      O => b_Madd_dcvrey_sub0000_cy(5)
    );
  b_Madd_dcvrey_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(3),
      LI => b_Madd_dcvrey_not0000(4),
      O => b_dcvrey_sub0000(4)
    );
  b_Madd_dcvrey_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(3),
      DI => N0,
      S => b_Madd_dcvrey_not0000(4),
      O => b_Madd_dcvrey_sub0000_cy(4)
    );
  b_Madd_dcvrey_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(2),
      LI => b_Madd_dcvrey_not0000(3),
      O => b_dcvrey_sub0000(3)
    );
  b_Madd_dcvrey_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(2),
      DI => N0,
      S => b_Madd_dcvrey_not0000(3),
      O => b_Madd_dcvrey_sub0000_cy(3)
    );
  b_Madd_dcvrey_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(1),
      LI => b_Madd_dcvrey_not0000(2),
      O => b_dcvrey_sub0000(2)
    );
  b_Madd_dcvrey_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(1),
      DI => N0,
      S => b_Madd_dcvrey_not0000(2),
      O => b_Madd_dcvrey_sub0000_cy(2)
    );
  b_Madd_dcvrey_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(0),
      LI => b_Madd_dcvrey_not0000(1),
      O => b_dcvrey_sub0000(1)
    );
  b_Madd_dcvrey_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_dcvrey_sub0000_cy(0),
      DI => N0,
      S => b_Madd_dcvrey_not0000(1),
      O => b_Madd_dcvrey_sub0000_cy(1)
    );
  b_Madd_dcvrey_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_dcvrey_sub0000_cy_0_rt_516,
      O => b_dcvrey_sub0000(0)
    );
  b_Madd_dcvrey_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_dcvrey_sub0000_cy_0_rt_516,
      O => b_Madd_dcvrey_sub0000_cy(0)
    );
  b_Madd_drvmona_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(8),
      LI => b_Madd_drvmona_not0000(9),
      O => b_drvmona_sub0000(9)
    );
  b_Madd_drvmona_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(7),
      LI => b_Madd_drvmona_not0000(8),
      O => b_drvmona_sub0000(8)
    );
  b_Madd_drvmona_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(7),
      DI => N0,
      S => b_Madd_drvmona_not0000(8),
      O => b_Madd_drvmona_sub0000_cy(8)
    );
  b_Madd_drvmona_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(6),
      LI => b_Madd_drvmona_not0000(7),
      O => b_drvmona_sub0000(7)
    );
  b_Madd_drvmona_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(6),
      DI => N0,
      S => b_Madd_drvmona_not0000(7),
      O => b_Madd_drvmona_sub0000_cy(7)
    );
  b_Madd_drvmona_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(5),
      LI => b_Madd_drvmona_not0000(6),
      O => b_drvmona_sub0000(6)
    );
  b_Madd_drvmona_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(5),
      DI => N0,
      S => b_Madd_drvmona_not0000(6),
      O => b_Madd_drvmona_sub0000_cy(6)
    );
  b_Madd_drvmona_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(4),
      LI => b_Madd_drvmona_not0000(5),
      O => b_drvmona_sub0000(5)
    );
  b_Madd_drvmona_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(4),
      DI => N0,
      S => b_Madd_drvmona_not0000(5),
      O => b_Madd_drvmona_sub0000_cy(5)
    );
  b_Madd_drvmona_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(3),
      LI => b_Madd_drvmona_not0000(4),
      O => b_drvmona_sub0000(4)
    );
  b_Madd_drvmona_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(3),
      DI => N0,
      S => b_Madd_drvmona_not0000(4),
      O => b_Madd_drvmona_sub0000_cy(4)
    );
  b_Madd_drvmona_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(2),
      LI => b_Madd_drvmona_not0000(3),
      O => b_drvmona_sub0000(3)
    );
  b_Madd_drvmona_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(2),
      DI => N0,
      S => b_Madd_drvmona_not0000(3),
      O => b_Madd_drvmona_sub0000_cy(3)
    );
  b_Madd_drvmona_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(1),
      LI => b_Madd_drvmona_not0000(2),
      O => b_drvmona_sub0000(2)
    );
  b_Madd_drvmona_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(1),
      DI => N0,
      S => b_Madd_drvmona_not0000(2),
      O => b_Madd_drvmona_sub0000_cy(2)
    );
  b_Madd_drvmona_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(0),
      LI => b_Madd_drvmona_not0000(1),
      O => b_drvmona_sub0000(1)
    );
  b_Madd_drvmona_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_drvmona_sub0000_cy(0),
      DI => N0,
      S => b_Madd_drvmona_not0000(1),
      O => b_Madd_drvmona_sub0000_cy(1)
    );
  b_Madd_drvmona_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_drvmona_sub0000_cy_0_rt_554,
      O => b_drvmona_sub0000(0)
    );
  b_Madd_drvmona_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_drvmona_sub0000_cy_0_rt_554,
      O => b_Madd_drvmona_sub0000_cy(0)
    );
  b_Madd_dcvmona_sub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(8),
      LI => b_Madd_dcvmona_not0000(9),
      O => b_dcvmona_sub0000(9)
    );
  b_Madd_dcvmona_sub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(7),
      LI => b_Madd_dcvmona_not0000(8),
      O => b_dcvmona_sub0000(8)
    );
  b_Madd_dcvmona_sub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(7),
      DI => N0,
      S => b_Madd_dcvmona_not0000(8),
      O => b_Madd_dcvmona_sub0000_cy(8)
    );
  b_Madd_dcvmona_sub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(6),
      LI => b_Madd_dcvmona_not0000(7),
      O => b_dcvmona_sub0000(7)
    );
  b_Madd_dcvmona_sub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(6),
      DI => N0,
      S => b_Madd_dcvmona_not0000(7),
      O => b_Madd_dcvmona_sub0000_cy(7)
    );
  b_Madd_dcvmona_sub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(5),
      LI => b_Madd_dcvmona_not0000(6),
      O => b_dcvmona_sub0000(6)
    );
  b_Madd_dcvmona_sub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(5),
      DI => N0,
      S => b_Madd_dcvmona_not0000(6),
      O => b_Madd_dcvmona_sub0000_cy(6)
    );
  b_Madd_dcvmona_sub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(4),
      LI => b_Madd_dcvmona_not0000(5),
      O => b_dcvmona_sub0000(5)
    );
  b_Madd_dcvmona_sub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(4),
      DI => N0,
      S => b_Madd_dcvmona_not0000(5),
      O => b_Madd_dcvmona_sub0000_cy(5)
    );
  b_Madd_dcvmona_sub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(3),
      LI => b_Madd_dcvmona_not0000(4),
      O => b_dcvmona_sub0000(4)
    );
  b_Madd_dcvmona_sub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(3),
      DI => N0,
      S => b_Madd_dcvmona_not0000(4),
      O => b_Madd_dcvmona_sub0000_cy(4)
    );
  b_Madd_dcvmona_sub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(2),
      LI => b_Madd_dcvmona_not0000(3),
      O => b_dcvmona_sub0000(3)
    );
  b_Madd_dcvmona_sub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(2),
      DI => N0,
      S => b_Madd_dcvmona_not0000(3),
      O => b_Madd_dcvmona_sub0000_cy(3)
    );
  b_Madd_dcvmona_sub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(1),
      LI => b_Madd_dcvmona_not0000(2),
      O => b_dcvmona_sub0000(2)
    );
  b_Madd_dcvmona_sub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(1),
      DI => N0,
      S => b_Madd_dcvmona_not0000(2),
      O => b_Madd_dcvmona_sub0000_cy(2)
    );
  b_Madd_dcvmona_sub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(0),
      LI => b_Madd_dcvmona_not0000(1),
      O => b_dcvmona_sub0000(1)
    );
  b_Madd_dcvmona_sub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_dcvmona_sub0000_cy(0),
      DI => N0,
      S => b_Madd_dcvmona_not0000(1),
      O => b_Madd_dcvmona_sub0000_cy(1)
    );
  b_Madd_dcvmona_sub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_dcvmona_sub0000_cy_0_rt_497,
      O => b_dcvmona_sub0000(0)
    );
  b_Madd_dcvmona_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => b_Madd_dcvmona_sub0000_cy_0_rt_497,
      O => b_Madd_dcvmona_sub0000_cy(0)
    );
  b_rreyv_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_9_5,
      Q => b_rreyv(9)
    );
  b_rskyev_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_9_4,
      Q => b_rskyev(9)
    );
  b_creyv_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_9_3,
      Q => b_creyv(9)
    );
  b_cmonav_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_9_2,
      Q => b_cmonav(9)
    );
  b_cskyev_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_9_1,
      Q => b_cskyev(9)
    );
  b_rmonav_9 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(9),
      Q => b_rmonav(9)
    );
  b_rreyv_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_8_5,
      Q => b_rreyv(8)
    );
  b_rreyv_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_6_5,
      Q => b_rreyv(6)
    );
  b_rreyv_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_5_5,
      Q => b_rreyv(5)
    );
  b_rreyv_7 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_7_5,
      PRE => btn_3_IBUF_916,
      Q => b_rreyv(7)
    );
  b_rreyv_3 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_3_5,
      PRE => btn_3_IBUF_916,
      Q => b_rreyv(3)
    );
  b_rreyv_2 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_2_5,
      PRE => btn_3_IBUF_916,
      Q => b_rreyv(2)
    );
  b_rreyv_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_4_5,
      Q => b_rreyv(4)
    );
  b_rreyv_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_0_5,
      Q => b_rreyv(0)
    );
  b_rreyv_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_1_5,
      Q => b_rreyv(1)
    );
  b_rskyev_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_8_4,
      Q => b_rskyev(8)
    );
  b_rskyev_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_6_4,
      Q => b_rskyev(6)
    );
  b_rskyev_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_5_4,
      Q => b_rskyev(5)
    );
  b_rskyev_7 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_7_4,
      PRE => btn_3_IBUF_916,
      Q => b_rskyev(7)
    );
  b_rskyev_3 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_3_4,
      PRE => btn_3_IBUF_916,
      Q => b_rskyev(3)
    );
  b_rskyev_2 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_2_4,
      PRE => btn_3_IBUF_916,
      Q => b_rskyev(2)
    );
  b_rskyev_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_4_4,
      Q => b_rskyev(4)
    );
  b_rskyev_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_0_4,
      Q => b_rskyev(0)
    );
  b_rskyev_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_1_4,
      Q => b_rskyev(1)
    );
  b_creyv_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_8_3,
      Q => b_creyv(8)
    );
  b_creyv_6 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_6_3,
      PRE => btn_3_IBUF_916,
      Q => b_creyv(6)
    );
  b_creyv_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_5_3,
      Q => b_creyv(5)
    );
  b_creyv_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_7_3,
      Q => b_creyv(7)
    );
  b_creyv_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_3_3,
      Q => b_creyv(3)
    );
  b_creyv_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_2_3,
      Q => b_creyv(2)
    );
  b_creyv_4 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_4_3,
      PRE => btn_3_IBUF_916,
      Q => b_creyv(4)
    );
  b_creyv_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_0_3,
      Q => b_creyv(0)
    );
  b_creyv_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_1_3,
      Q => b_creyv(1)
    );
  b_cmonav_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_8_2,
      Q => b_cmonav(8)
    );
  b_cmonav_6 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_6_2,
      PRE => btn_3_IBUF_916,
      Q => b_cmonav(6)
    );
  b_cmonav_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_5_2,
      Q => b_cmonav(5)
    );
  b_cmonav_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_7_2,
      Q => b_cmonav(7)
    );
  b_cmonav_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_3_2,
      Q => b_cmonav(3)
    );
  b_cmonav_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_2_2,
      Q => b_cmonav(2)
    );
  b_cmonav_4 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_4_2,
      PRE => btn_3_IBUF_916,
      Q => b_cmonav(4)
    );
  b_cmonav_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_0_2,
      Q => b_cmonav(0)
    );
  b_cmonav_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_1_2,
      Q => b_cmonav(1)
    );
  b_cskyev_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_8_1,
      Q => b_cskyev(8)
    );
  b_cskyev_6 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_6_1,
      PRE => btn_3_IBUF_916,
      Q => b_cskyev(6)
    );
  b_cskyev_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_5_1,
      Q => b_cskyev(5)
    );
  b_cskyev_7 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_7_1,
      Q => b_cskyev(7)
    );
  b_cskyev_3 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_3_1,
      Q => b_cskyev(3)
    );
  b_cskyev_2 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_2_1,
      Q => b_cskyev(2)
    );
  b_cskyev_4 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result_4_1,
      PRE => btn_3_IBUF_916,
      Q => b_cskyev(4)
    );
  b_cskyev_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_0_1,
      Q => b_cskyev(0)
    );
  b_cskyev_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result_1_1,
      Q => b_cskyev(1)
    );
  b_rmonav_8 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(8),
      Q => b_rmonav(8)
    );
  b_rmonav_6 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(6),
      Q => b_rmonav(6)
    );
  b_rmonav_5 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(5),
      Q => b_rmonav(5)
    );
  b_rmonav_7 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result(7),
      PRE => btn_3_IBUF_916,
      Q => b_rmonav(7)
    );
  b_rmonav_3 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result(3),
      PRE => btn_3_IBUF_916,
      Q => b_rmonav(3)
    );
  b_rmonav_2 : FDPE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      D => b_Result(2),
      PRE => btn_3_IBUF_916,
      Q => b_rmonav(2)
    );
  b_rmonav_4 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(4),
      Q => b_rmonav(4)
    );
  b_rmonav_0 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(0),
      Q => b_rmonav(0)
    );
  b_rmonav_1 : FDCE
    port map (
      C => U1_q(17),
      CE => b_rmonav_not0001,
      CLR => btn_3_IBUF_916,
      D => b_Result(1),
      Q => b_rmonav(1)
    );
  b_dcvskye_9 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(9),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(9)
    );
  b_dcvskye_8 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(8),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(8)
    );
  b_dcvskye_7 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(7),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(7)
    );
  b_dcvskye_6 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(6),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(6)
    );
  b_dcvskye_5 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(5),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(5)
    );
  b_dcvskye_4 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(4),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(4)
    );
  b_dcvskye_3 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(3),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(3)
    );
  b_dcvskye_2 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(2),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(2)
    );
  b_dcvskye_1 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(1),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(1)
    );
  b_dcvskye_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_dcvskye_not0002,
      D => b_dcvskye_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_dcvskye(0)
    );
  b_drvmona_9 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(9),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(9)
    );
  b_drvmona_8 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(8),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(8)
    );
  b_drvmona_7 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(7),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(7)
    );
  b_drvmona_6 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(6),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(6)
    );
  b_drvmona_5 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(5),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(5)
    );
  b_drvmona_4 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(4),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(4)
    );
  b_drvmona_3 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(3),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(3)
    );
  b_drvmona_2 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(2),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(2)
    );
  b_drvmona_1 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(1),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(1)
    );
  b_drvmona_0 : FDPE
    port map (
      C => U1_q(17),
      CE => b_drvmona_not0002,
      D => b_drvmona_sub0000(0),
      PRE => btn_3_IBUF_916,
      Q => b_drvmona(0)
    );
  b_calc : FDCE
    port map (
      C => U1_q(17),
      CE => go1,
      CLR => btn_3_IBUF_916,
      D => N1,
      Q => b_calc_709
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(8),
      I2 => U2_HCS(9),
      O => hsync_OBUF_928
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
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_N2,
      O => vsync_OBUF_1798
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => N34,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_cmp_eq0000_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(3),
      I2 => U2_vcs(9),
      I3 => N33,
      O => N2
    );
  U2_HCS_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N35,
      I1 => U2_HCS(9),
      I2 => U2_HCS(1),
      I3 => U2_HCS(0),
      O => U2_HCS_cmp_eq00005_153
    );
  U2_HCS_cmp_eq000010 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(4),
      I2 => U2_HCS(3),
      I3 => U2_HCS(2),
      O => U2_HCS_cmp_eq000010_152
    );
  U2_HCS_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_HCS_cmp_eq00005_153,
      I1 => U2_HCS_cmp_eq000010_152,
      O => U2_HCS_cmp_eq0000
    );
  cp_outp1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cp_delay3_919,
      I1 => cp_delay2_918,
      I2 => cp_delay1_917,
      O => go1
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(5),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(6),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(7),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(8),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_8
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(9),
      I1 => U2_vcs_cmp_eq0000_246,
      O => U2_Mcount_vcs_eqn_9
    );
  b_dcvskye_not00027 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_add0002_add0000(2),
      I1 => b_add0002_add0000(3),
      I2 => b_add0002_add0000(4),
      O => b_dcvskye_not00027_798
    );
  b_dcvrey_not00027 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_add0000_add0000(2),
      I1 => b_add0000_add0000(3),
      I2 => b_add0000_add0000(4),
      O => b_dcvrey_not00027_775
    );
  b_dcvmona_not00027 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_add0004_add0000(2),
      I1 => b_add0004_add0000(3),
      I2 => b_add0004_add0000(4),
      O => b_dcvmona_not00027_752
    );
  vga_sprite_Msub_xpixMona_sub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(5),
      I2 => U2_HCS(6),
      I3 => U2_HCS(4),
      O => vga_sprite_xpixMona_sub0000(7)
    );
  vga_sprite_Msub_xpixMona_sub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      O => vga_sprite_xpixMona_sub0000(6)
    );
  vga_sprite_Msub_xpixMona_sub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      O => vga_sprite_xpixMona_sub0000(5)
    );
  U2_vidon_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(9),
      O => U2_vidon_and00000_247
    );
  U2_vidon_and00006 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(6),
      I2 => U2_HCS(5),
      I3 => U2_HCS(4),
      O => U2_vidon_and00006_255
    );
  U2_vidon_and000039 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U2_vidon_and000026,
      I1 => U2_vidon_and00006_255,
      I2 => U2_vidon_and000018,
      I3 => U2_vidon_and00000_247,
      O => U2_vidon_and000039_254
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
      O => U2_vidon_and000080_258
    );
  U2_vidon_and0000105 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_N3,
      I2 => U2_HCS(4),
      I3 => U2_HCS(9),
      O => U2_vidon_and0000105_248
    );
  U2_vidon_and0000117 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => U2_vidon_and000080_258,
      I1 => U2_vidon_and0000105_248,
      I2 => U2_vcs(9),
      I3 => U2_vidon_and000065,
      O => U2_vidon_and0000117_249
    );
  U2_vidon_and0000131 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_vidon_and000039_254,
      I1 => U2_vidon_and0000117_249,
      O => vidon
    );
  b_drvskye_not00026 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_add0003_add0000(5),
      I1 => b_add0003_add0000(4),
      I2 => b_add0003_add0000(6),
      I3 => b_drvskye_not00021_866,
      O => b_drvskye_not00026_867
    );
  b_drvrey_not00026 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_add0001_add0000(5),
      I1 => b_add0001_add0000(4),
      I2 => b_add0001_add0000(6),
      I3 => b_drvrey_not00021_843,
      O => b_drvrey_not00026_844
    );
  b_drvmona_not00026 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_add0005_add0000(5),
      I1 => b_add0005_add0000(4),
      I2 => b_add0005_add0000(6),
      I3 => b_drvmona_not00021_820,
      O => b_drvmona_not00026_821
    );
  vga_sprite_xpixMona_sub0000_8_2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      O => vga_sprite_xpixMona_sub0000(8)
    );
  vga_sprite_xpixMona_sub0000_8_11 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(7),
      O => vga_sprite_xpixMona_sub0000_8_bdd0
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_4_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => b_cskyev(4),
      I1 => b_cskyev(3),
      I2 => b_cskyev(2),
      O => vga_sprite_skyespriteon_addsub0001(4)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_4_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => b_creyv(4),
      I1 => b_creyv(3),
      I2 => b_creyv(2),
      O => vga_sprite_reyspriteon_addsub0001(4)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_4_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => b_cmonav(4),
      I1 => b_cmonav(3),
      I2 => b_cmonav(2),
      O => vga_sprite_monaspriteon_addsub0001(4)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_3_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(3),
      I1 => b_cskyev(2),
      O => vga_sprite_skyespriteon_addsub0001(3)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_3_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(3),
      I1 => b_creyv(2),
      O => vga_sprite_reyspriteon_addsub0001(3)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_3_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(3),
      I1 => b_cmonav(2),
      O => vga_sprite_monaspriteon_addsub0001(3)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_cskyev(4),
      I1 => b_cskyev(6),
      I2 => b_cskyev(5),
      O => vga_sprite_skyespriteon_addsub0000(6)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => b_cskyev(7),
      I1 => b_cskyev(5),
      I2 => b_cskyev(6),
      I3 => b_cskyev(4),
      O => vga_sprite_Madd_skyespriteon_addsub0001_lut(7)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_7_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_skyespriteon_addsub0000(6),
      O => vga_sprite_skyespriteon_addsub0001(7)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_7_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_reyspriteon_addsub0000(6),
      O => vga_sprite_reyspriteon_addsub0001(7)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_7_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_monaspriteon_addsub0000(6),
      O => vga_sprite_monaspriteon_addsub0001(7)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => b_creyv(7),
      I1 => b_creyv(5),
      I2 => b_creyv(6),
      I3 => b_creyv(4),
      O => vga_sprite_Madd_reyspriteon_addsub0001_lut(7)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => b_cmonav(7),
      I1 => b_cmonav(5),
      I2 => b_cmonav(6),
      I3 => b_cmonav(4),
      O => vga_sprite_Madd_monaspriteon_addsub0001_lut(7)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_creyv(4),
      I1 => b_creyv(6),
      I2 => b_creyv(5),
      O => vga_sprite_reyspriteon_addsub0000(6)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_6_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_cmonav(4),
      I1 => b_cmonav(6),
      I2 => b_cmonav(5),
      O => vga_sprite_monaspriteon_addsub0000(6)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_9_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => b_cskyev(9),
      I2 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_skyespriteon_addsub0001_lut(9)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_8_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_skyespriteon_addsub0001_lut(8)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => b_cskyev(7),
      I1 => b_cskyev(6),
      I2 => b_cskyev(5),
      I3 => b_cskyev(4),
      O => vga_sprite_Madd_skyespriteon_addsub0000_cy(7)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(5),
      I1 => b_cskyev(4),
      O => vga_sprite_skyespriteon_addsub0000(5)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(5),
      I1 => b_creyv(4),
      O => vga_sprite_reyspriteon_addsub0000(5)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(5),
      I1 => b_cmonav(4),
      O => vga_sprite_monaspriteon_addsub0000(5)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_skyespriteon_addsub0000(6),
      O => vga_sprite_Madd_skyespriteon_addsub0001_cy_7_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0001_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_reyspriteon_addsub0000(6),
      O => vga_sprite_Madd_reyspriteon_addsub0001_cy_7_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0001_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0001_lut(7),
      I1 => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q,
      I2 => vga_sprite_monaspriteon_addsub0000(6),
      O => vga_sprite_Madd_monaspriteon_addsub0001_cy_7_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_9_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_creyv(8),
      I1 => b_creyv(9),
      I2 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_reyspriteon_addsub0001_lut(9)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_9_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => b_cmonav(9),
      I2 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_monaspriteon_addsub0001_lut(9)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_8_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_reyspriteon_addsub0001_lut(8)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_8_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      O => vga_sprite_Madd_monaspriteon_addsub0001_lut(8)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => b_creyv(7),
      I1 => b_creyv(6),
      I2 => b_creyv(5),
      I3 => b_creyv(4),
      O => vga_sprite_Madd_reyspriteon_addsub0000_cy(7)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => b_cmonav(7),
      I1 => b_cmonav(6),
      I2 => b_cmonav(5),
      I3 => b_cmonav(4),
      O => vga_sprite_Madd_monaspriteon_addsub0000_cy(7)
    );
  vga_sprite_Madd_reyspriteon_addsub0003_xor_5_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => vga_sprite_reyspriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q,
      I3 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_reyspriteon_addsub0003(5)
    );
  vga_sprite_Madd_monaspriteon_addsub0003_xor_5_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => vga_sprite_monaspriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q,
      I3 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_monaspriteon_addsub0003(5)
    );
  vga_sprite_Madd_skyespriteon_addsub0003_xor_5_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => vga_sprite_skyespriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q,
      I3 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_skyespriteon_addsub0003(5)
    );
  vga_sprite_Madd_reyspriteon_addsub0003_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0003_lut_7_Q,
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_cy_5_Q,
      I2 => vga_sprite_reyspriteon_addsub0002_6_Q,
      O => vga_sprite_Madd_reyspriteon_addsub0003_cy_7_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0003_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0003_lut_7_Q,
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_cy_5_Q,
      I2 => vga_sprite_monaspriteon_addsub0002_6_Q,
      O => vga_sprite_Madd_monaspriteon_addsub0003_cy_7_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0003_cy_5_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => vga_sprite_reyspriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Madd_reyspriteon_addsub0003_cy_5_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0003_cy_5_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => vga_sprite_monaspriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Madd_monaspriteon_addsub0003_cy_5_Q
    );
  vga_sprite_red_0_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_sprite_present_state_FSM_FFd3_1635,
      I1 => vga_sprite_N4,
      O => vga_sprite_N2
    );
  vga_sprite_green_0_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_sprite_present_state_FSM_FFd2_1634,
      I1 => vga_sprite_N4,
      O => vga_sprite_N11
    );
  vga_sprite_Madd_skyespriteon_addsub0003_cy_7_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0003_lut_7_Q,
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_cy_5_Q,
      I2 => vga_sprite_skyespriteon_addsub0002_6_Q,
      O => vga_sprite_Madd_skyespriteon_addsub0003_cy_7_Q
    );
  vga_sprite_blue_0_31 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vga_sprite_monaspriteon,
      I1 => vga_sprite_skyespriteon,
      I2 => vidon,
      I3 => vga_sprite_reyspriteon,
      O => vga_sprite_N4
    );
  vga_sprite_Madd_skyespriteon_addsub0003_cy_5_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => vga_sprite_skyespriteon_addsub0002_5_Q,
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Madd_skyespriteon_addsub0003_cy_5_Q
    );
  vga_sprite_red_2_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(7),
      I2 => vga_sprite_N3,
      I3 => MSkye(7),
      O => N8
    );
  vga_sprite_red_2_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N2,
      I1 => N8,
      I2 => MRey(7),
      I3 => vga_sprite_N01,
      O => red_2_OBUF_936
    );
  vga_sprite_red_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(6),
      I2 => vga_sprite_N3,
      I3 => MSkye(6),
      O => N10
    );
  vga_sprite_red_1_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N2,
      I1 => N10,
      I2 => MRey(6),
      I3 => vga_sprite_N01,
      O => red_1_OBUF_935
    );
  vga_sprite_red_0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(5),
      I2 => vga_sprite_N3,
      I3 => MSkye(5),
      O => N12
    );
  vga_sprite_red_0_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N2,
      I1 => N12,
      I2 => MRey(5),
      I3 => vga_sprite_N01,
      O => red_0_OBUF_934
    );
  vga_sprite_green_2_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(4),
      I2 => vga_sprite_N3,
      I3 => MSkye(4),
      O => N14
    );
  vga_sprite_green_2_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N11,
      I1 => N14,
      I2 => MRey(4),
      I3 => vga_sprite_N01,
      O => green_2_OBUF_926
    );
  vga_sprite_green_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(3),
      I2 => vga_sprite_N3,
      I3 => MSkye(3),
      O => N16
    );
  vga_sprite_green_1_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N11,
      I1 => N16,
      I2 => MRey(3),
      I3 => vga_sprite_N01,
      O => green_1_OBUF_925
    );
  vga_sprite_green_0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => vga_sprite_N5,
      I1 => MMona(2),
      I2 => vga_sprite_N3,
      I3 => MSkye(2),
      O => N18
    );
  vga_sprite_green_0_Q : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_sprite_N11,
      I1 => N18,
      I2 => MRey(2),
      I3 => vga_sprite_N01,
      O => green_0_OBUF_924
    );
  vga_sprite_blue_1_19 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => vga_sprite_reyspriteon,
      I1 => vga_sprite_present_state_FSM_FFd1_1633,
      I2 => vga_sprite_monaspriteon,
      I3 => MRey(1),
      O => vga_sprite_blue_1_19_1612
    );
  vga_sprite_blue_1_44 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => vidon,
      I1 => vga_sprite_blue_1_19_1612,
      I2 => vga_sprite_skyespriteon,
      I3 => vga_sprite_blue_1_3_1613,
      O => blue_1_OBUF_912
    );
  vga_sprite_blue_0_19 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => vga_sprite_reyspriteon,
      I1 => vga_sprite_present_state_FSM_FFd1_1633,
      I2 => vga_sprite_monaspriteon,
      I3 => MRey(0),
      O => vga_sprite_blue_0_19_1610
    );
  vga_sprite_blue_0_44 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => vidon,
      I1 => vga_sprite_blue_0_19_1610,
      I2 => vga_sprite_skyespriteon,
      I3 => vga_sprite_blue_0_3_1611,
      O => blue_0_OBUF_911
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_916
    );
  btn_0_IBUF : IBUF
    port map (
      I => btn(0),
      O => btn_0_IBUF_915
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_1798,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_928,
      O => hsync
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_912,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_911,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_926,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_925,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_924,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_936,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_935,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_934,
      O => red(0)
    );
  U1_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(1),
      O => U1_Mcount_q_cy_1_rt_90
    );
  U1_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(2),
      O => U1_Mcount_q_cy_2_rt_98
    );
  U1_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(3),
      O => U1_Mcount_q_cy_3_rt_100
    );
  U1_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(4),
      O => U1_Mcount_q_cy_4_rt_102
    );
  U1_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(5),
      O => U1_Mcount_q_cy_5_rt_104
    );
  U1_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(6),
      O => U1_Mcount_q_cy_6_rt_106
    );
  U1_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(7),
      O => U1_Mcount_q_cy_7_rt_108
    );
  U1_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(8),
      O => U1_Mcount_q_cy_8_rt_110
    );
  U1_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(9),
      O => U1_Mcount_q_cy_9_rt_112
    );
  U1_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(10),
      O => U1_Mcount_q_cy_10_rt_70
    );
  U1_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(11),
      O => U1_Mcount_q_cy_11_rt_72
    );
  U1_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(12),
      O => U1_Mcount_q_cy_12_rt_74
    );
  U1_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(13),
      O => U1_Mcount_q_cy_13_rt_76
    );
  U1_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(14),
      O => U1_Mcount_q_cy_14_rt_78
    );
  U1_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(15),
      O => U1_Mcount_q_cy_15_rt_80
    );
  U1_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(16),
      O => U1_Mcount_q_cy_16_rt_82
    );
  U1_Mcount_q_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q_171,
      O => U1_Mcount_q_cy_17_rt_84
    );
  U1_Mcount_q_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(18),
      O => U1_Mcount_q_cy_18_rt_86
    );
  U1_Mcount_q_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(19),
      O => U1_Mcount_q_cy_19_rt_88
    );
  U1_Mcount_q_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(20),
      O => U1_Mcount_q_cy_20_rt_92
    );
  U1_Mcount_q_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(21),
      O => U1_Mcount_q_cy_21_rt_94
    );
  U1_Mcount_q_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(22),
      O => U1_Mcount_q_cy_22_rt_96
    );
  U2_Mcount_HCS_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(8),
      O => U2_Mcount_HCS_cy_8_rt_170
    );
  U2_Mcount_HCS_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(7),
      O => U2_Mcount_HCS_cy_7_rt_168
    );
  U2_Mcount_HCS_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(6),
      O => U2_Mcount_HCS_cy_6_rt_166
    );
  U2_Mcount_HCS_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(5),
      O => U2_Mcount_HCS_cy_5_rt_164
    );
  U2_Mcount_HCS_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => U2_Mcount_HCS_cy_4_rt_162
    );
  U2_Mcount_HCS_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(3),
      O => U2_Mcount_HCS_cy_3_rt_160
    );
  U2_Mcount_HCS_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => U2_Mcount_HCS_cy_2_rt_158
    );
  U2_Mcount_HCS_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(1),
      O => U2_Mcount_HCS_cy_1_rt_156
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_199
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_197
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_195
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_193
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_191
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_189
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_187
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_185
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(12),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_1156
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(11),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_1154
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(10),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_1152
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(12),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_1103
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(11),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_1101
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(10),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_1099
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(12),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_1050
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(11),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_1048
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(10),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_1046
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(12),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_1191
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(12),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_1138
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(12),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_1085
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rmonav(8),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy_8_rt_997
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rmonav(7),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy_7_rt_995
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rmonav(6),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy_6_rt_993
    );
  vga_sprite_Madd_monaspriteon_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rmonav(5),
      O => vga_sprite_Madd_monaspriteon_addsub0002_cy_5_rt_991
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rskyev(8),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy_8_rt_1222
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rskyev(7),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy_7_rt_1220
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rskyev(6),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy_6_rt_1218
    );
  vga_sprite_Madd_skyespriteon_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rskyev(5),
      O => vga_sprite_Madd_skyespriteon_addsub0002_cy_5_rt_1216
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rreyv(8),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy_8_rt_1030
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rreyv(7),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy_7_rt_1028
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rreyv(6),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy_6_rt_1026
    );
  vga_sprite_Madd_reyspriteon_addsub0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rreyv(5),
      O => vga_sprite_Madd_reyspriteon_addsub0002_cy_5_rt_1024
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => vga_sprite_Msub_ypixMona_sub0000_cy_4_rt_1556
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => vga_sprite_Msub_ypixMona_sub0000_cy_3_rt_1554
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => vga_sprite_Msub_ypixMona_sub0000_cy_2_rt_1552
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => vga_sprite_Msub_ypixMona_sub0000_cy_1_rt_1550
    );
  vga_sprite_Msub_ypixMona_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => vga_sprite_Msub_ypixMona_sub0000_cy_0_rt_1548
    );
  U1_Mcount_q_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_q(23),
      O => U1_Mcount_q_xor_23_rt_114
    );
  U2_Mcount_HCS_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(9),
      O => U2_Mcount_HCS_xor_9_rt_182
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_211
    );
  vga_sprite_Madd_monaspriteon_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rmonav(9),
      O => vga_sprite_Madd_monaspriteon_addsub0002_xor_9_rt_1003
    );
  vga_sprite_Madd_skyespriteon_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rskyev(9),
      O => vga_sprite_Madd_skyespriteon_addsub0002_xor_9_rt_1228
    );
  vga_sprite_Madd_reyspriteon_addsub0002_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_rreyv(9),
      O => vga_sprite_Madd_reyspriteon_addsub0002_xor_9_rt_1036
    );
  b_Maccum_rskyev_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rskyev(9),
      I1 => b_drvskye(9),
      O => b_Maccum_rskyev_lut_9_1_378
    );
  b_Maccum_creyv_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(9),
      I1 => b_dcvrey(9),
      O => b_Maccum_creyv_lut_9_1_298
    );
  b_Maccum_rreyv_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rreyv(9),
      I1 => b_drvrey(9),
      O => b_Maccum_rreyv_lut_9_1_358
    );
  b_Maccum_cmonav_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(9),
      I1 => b_dcvmona(9),
      O => b_Maccum_cmonav_lut_9_1_278
    );
  b_Maccum_cskyev_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(9),
      I1 => b_dcvskye(9),
      O => b_Maccum_cskyev_lut_9_1_318
    );
  b_Maccum_rmonav_lut_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_rmonav(9),
      I1 => b_drvmona(9),
      O => b_Maccum_rmonav_lut_9_1_338
    );
  b_drvskye_not000221_SW1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0003_add0000(8),
      I2 => b_add0003_add0000(9),
      O => N21
    );
  b_drvskye_not000226 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => b_add0003_add0000(7),
      I1 => N20,
      I2 => N21,
      I3 => b_drvskye_not00026_867,
      O => b_drvskye_not0002
    );
  b_drvrey_not000221_SW1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0001_add0000(8),
      I2 => b_add0001_add0000(9),
      O => N24
    );
  b_drvrey_not000226 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => b_add0001_add0000(7),
      I1 => N23,
      I2 => N24,
      I3 => b_drvrey_not00026_844,
      O => b_drvrey_not0002
    );
  b_drvmona_not000221_SW1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0005_add0000(8),
      I2 => b_add0005_add0000(9),
      O => N27
    );
  b_drvmona_not000226 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => b_add0005_add0000(7),
      I1 => N26,
      I2 => N27,
      I3 => b_drvmona_not00026_821,
      O => b_drvmona_not0002
    );
  b_dcvskye_not000216 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0002_add0000(9),
      I2 => b_dcvskye_not00027_798,
      I3 => b_dcvskye_not00024_797,
      O => b_dcvskye_not0002
    );
  b_dcvrey_not000216 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0000_add0000(9),
      I2 => b_dcvrey_not00027_775,
      I3 => b_dcvrey_not00024_774,
      O => b_dcvrey_not0002
    );
  b_dcvmona_not000216 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_rmonav_not0001,
      I1 => b_add0004_add0000(9),
      I2 => b_dcvmona_not00027_752,
      I3 => b_dcvmona_not00024_751,
      O => b_dcvmona_not0002
    );
  vga_sprite_skyespriteon_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_cy(9),
      I1 => vga_sprite_skyespriteon_cmp_le0000,
      I2 => vga_sprite_skyespriteon_cmp_ge0000,
      I3 => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(9),
      O => vga_sprite_skyespriteon
    );
  vga_sprite_monaspriteon_and0000_SW1 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => vga_sprite_skyespriteon,
      I1 => vga_sprite_reyspriteon,
      I2 => vga_sprite_monaspriteon_cmp_le0000,
      O => N31
    );
  vga_sprite_monaspriteon_and0000 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_cy(9),
      I1 => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(9),
      I2 => vga_sprite_monaspriteon_cmp_ge0000,
      I3 => N31,
      O => vga_sprite_monaspriteon
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0003_lut_9_Q,
      I1 => U2_vcs(9),
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_cy_7_Q,
      I3 => vga_sprite_Madd_monaspriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_8_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_cy_7_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_7_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_cy_5_Q,
      I3 => vga_sprite_monaspriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_monaspriteon_addsub0002_6_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_cy_5_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0003_lut_4_Q,
      I1 => U2_vcs(4),
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_monaspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0003_lut_9_Q,
      I1 => U2_vcs(9),
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_cy_7_Q,
      I3 => vga_sprite_Madd_skyespriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_8_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_cy_7_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_7_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_cy_5_Q,
      I3 => vga_sprite_skyespriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_skyespriteon_addsub0002_6_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_cy_5_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0003_lut_4_Q,
      I1 => U2_vcs(4),
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_skyespriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0003_lut_9_Q,
      I1 => U2_vcs(9),
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_cy_7_Q,
      I3 => vga_sprite_Madd_reyspriteon_addsub0003_lut_8_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_8_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_cy_7_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_7_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_cy_5_Q,
      I3 => vga_sprite_reyspriteon_addsub0002_6_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => vga_sprite_reyspriteon_addsub0002_6_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_cy_5_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0003_lut_4_Q,
      I1 => U2_vcs(4),
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q,
      I3 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_lut_3_Q,
      I2 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => vga_sprite_Madd_reyspriteon_addsub0003_cy_2_Q,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_blue_1_3 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => MSkye(1),
      I1 => vga_sprite_skyespriteon,
      I2 => MMona(1),
      I3 => vga_sprite_monaspriteon,
      O => vga_sprite_blue_1_3_1613
    );
  vga_sprite_blue_0_3 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => MSkye(0),
      I1 => vga_sprite_skyespriteon,
      I2 => MMona(0),
      I3 => vga_sprite_monaspriteon,
      O => vga_sprite_blue_0_3_1611
    );
  U2_Mcount_HCS_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_0
    );
  b_dcvmona_not000211 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => cp_delay3_919,
      I1 => cp_delay1_917,
      I2 => cp_delay2_918,
      I3 => b_calc_709,
      O => b_rmonav_not0001
    );
  U2_Mcount_HCS_eqn_11 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_1_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_Mcount_HCS_eqn_21 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_2_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_Mcount_HCS_eqn_31 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_3_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_Mcount_HCS_eqn_41 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_4_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_Mcount_HCS_eqn_51 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_5_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_Mcount_HCS_eqn_61 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_6_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_Mcount_HCS_eqn_71 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_7_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_Mcount_HCS_eqn_81 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_8_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_Mcount_HCS_eqn_91 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_9_1,
      I1 => U2_HCS_cmp_eq00005_153,
      I2 => U2_HCS_cmp_eq000010_152,
      O => U2_Mcount_HCS_eqn_9
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_9_11 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      I1 => b_cskyev(8),
      I2 => b_cskyev(9),
      I3 => vga_sprite_Madd_skyespriteon_addsub0001_cy_7_Q,
      O => vga_sprite_skyespriteon_addsub0001(9)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_9_11 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      I1 => b_creyv(8),
      I2 => b_creyv(9),
      I3 => vga_sprite_Madd_reyspriteon_addsub0001_cy_7_Q,
      O => vga_sprite_reyspriteon_addsub0001(9)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_9_11 : LUT4
    generic map(
      INIT => X"1E78"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      I1 => b_cmonav(8),
      I2 => b_cmonav(9),
      I3 => vga_sprite_Madd_monaspriteon_addsub0001_cy_7_Q,
      O => vga_sprite_monaspriteon_addsub0001(9)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_5_11 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => b_cskyev(5),
      I1 => b_cskyev(4),
      I2 => b_cskyev(3),
      I3 => b_cskyev(2),
      O => vga_sprite_skyespriteon_addsub0001(5)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_5_11 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => b_creyv(5),
      I1 => b_creyv(4),
      I2 => b_creyv(3),
      I3 => b_creyv(2),
      O => vga_sprite_reyspriteon_addsub0001(5)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_5_11 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => b_cmonav(5),
      I1 => b_cmonav(4),
      I2 => b_cmonav(3),
      I3 => b_cmonav(2),
      O => vga_sprite_monaspriteon_addsub0001(5)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_cy_5_11 : LUT4
    generic map(
      INIT => X"7666"
    )
    port map (
      I0 => b_cskyev(5),
      I1 => b_cskyev(4),
      I2 => b_cskyev(3),
      I3 => b_cskyev(2),
      O => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q
    );
  vga_sprite_Madd_reyspriteon_addsub0001_cy_5_11 : LUT4
    generic map(
      INIT => X"7666"
    )
    port map (
      I0 => b_creyv(5),
      I1 => b_creyv(4),
      I2 => b_creyv(3),
      I3 => b_creyv(2),
      O => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q
    );
  vga_sprite_Madd_monaspriteon_addsub0001_cy_5_11 : LUT4
    generic map(
      INIT => X"7666"
    )
    port map (
      I0 => b_cmonav(5),
      I1 => b_cmonav(4),
      I2 => b_cmonav(3),
      I3 => b_cmonav(2),
      O => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      I2 => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q,
      I3 => vga_sprite_monaspriteon_addsub0000(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(7)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => vga_sprite_monaspriteon_addsub0000(6),
      I1 => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q,
      I2 => U2_HCS(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => b_cmonav(4),
      I1 => b_cmonav(3),
      I2 => U2_HCS(4),
      I3 => b_cmonav(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cmonav(3),
      I1 => b_cmonav(2),
      I2 => U2_HCS(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      I2 => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q,
      I3 => vga_sprite_skyespriteon_addsub0000(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(7)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => vga_sprite_skyespriteon_addsub0000(6),
      I1 => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q,
      I2 => U2_HCS(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => b_cskyev(4),
      I1 => b_cskyev(3),
      I2 => U2_HCS(4),
      I3 => b_cskyev(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cskyev(3),
      I1 => b_cskyev(2),
      I2 => U2_HCS(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0001_lut(7),
      I1 => U2_HCS(7),
      I2 => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q,
      I3 => vga_sprite_reyspriteon_addsub0000(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(7)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => vga_sprite_reyspriteon_addsub0000(6),
      I1 => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q,
      I2 => U2_HCS(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => b_creyv(4),
      I1 => b_creyv(3),
      I2 => U2_HCS(4),
      I3 => b_creyv(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_creyv(3),
      I1 => b_creyv(2),
      I2 => U2_HCS(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(2),
      I1 => U2_HCS(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => b_cmonav(9),
      I2 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      I3 => b_cmonav(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(9)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      I2 => U2_HCS(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => b_cmonav(6),
      I2 => b_cmonav(5),
      I3 => b_cmonav(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(6)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cmonav(5),
      I1 => b_cmonav(4),
      I2 => U2_HCS(5),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(5)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cmonav(4),
      I1 => U2_HCS(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_gt0000_lut(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => b_cskyev(9),
      I2 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      I3 => b_cskyev(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(9)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      I2 => U2_HCS(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => b_cskyev(6),
      I2 => b_cskyev(5),
      I3 => b_cskyev(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(6)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_cskyev(5),
      I1 => b_cskyev(4),
      I2 => U2_HCS(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(5)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_cskyev(4),
      I1 => U2_HCS(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_gt0000_lut(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => b_creyv(9),
      I2 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      I3 => b_creyv(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(9)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_creyv(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      I2 => U2_HCS(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => b_creyv(6),
      I2 => b_creyv(5),
      I3 => b_creyv(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(6)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_creyv(5),
      I1 => b_creyv(4),
      I2 => U2_HCS(5),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(5)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_creyv(4),
      I1 => U2_HCS(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_lut(4)
    );
  vga_sprite_Msub_xpixRey_lut_9_Q : LUT4
    generic map(
      INIT => X"A569"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_creyv(9),
      I3 => U2_HCS(8),
      O => vga_sprite_Msub_xpixRey_lut(9)
    );
  vga_sprite_Msub_xpixRey_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_creyv(8),
      O => vga_sprite_Msub_xpixRey_lut(8)
    );
  vga_sprite_Msub_xpixRey_lut_6_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(4),
      I2 => b_creyv(6),
      I3 => U2_HCS(5),
      O => vga_sprite_Msub_xpixRey_lut(6)
    );
  vga_sprite_Msub_xpixRey_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      I2 => b_creyv(5),
      O => vga_sprite_Msub_xpixRey_lut(5)
    );
  vga_sprite_Msub_xpixRey_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => b_creyv(4),
      O => vga_sprite_Msub_xpixRey_lut(4)
    );
  vga_sprite_Msub_xpixMona_lut_9_Q : LUT4
    generic map(
      INIT => X"A569"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_cmonav(9),
      I3 => U2_HCS(8),
      O => vga_sprite_Msub_xpixMona_lut(9)
    );
  vga_sprite_Msub_xpixMona_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_cmonav(8),
      O => vga_sprite_Msub_xpixMona_lut(8)
    );
  vga_sprite_Msub_xpixMona_lut_6_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(4),
      I2 => b_cmonav(6),
      I3 => U2_HCS(5),
      O => vga_sprite_Msub_xpixMona_lut(6)
    );
  vga_sprite_Msub_xpixMona_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      I2 => b_cmonav(5),
      O => vga_sprite_Msub_xpixMona_lut(5)
    );
  vga_sprite_Msub_xpixMona_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => b_cmonav(4),
      O => vga_sprite_Msub_xpixMona_lut(4)
    );
  vga_sprite_Msub_xpixSkye_lut_9_Q : LUT4
    generic map(
      INIT => X"A569"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_cskyev(9),
      I3 => U2_HCS(8),
      O => vga_sprite_Msub_xpixSkye_lut(9)
    );
  vga_sprite_Msub_xpixSkye_lut_8_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => vga_sprite_xpixMona_sub0000_8_bdd0,
      I2 => b_cskyev(8),
      O => vga_sprite_Msub_xpixSkye_lut(8)
    );
  vga_sprite_Msub_xpixSkye_lut_6_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(4),
      I2 => b_cskyev(6),
      I3 => U2_HCS(5),
      O => vga_sprite_Msub_xpixSkye_lut(6)
    );
  vga_sprite_Msub_xpixSkye_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      I2 => b_cskyev(5),
      O => vga_sprite_Msub_xpixSkye_lut(5)
    );
  vga_sprite_Msub_xpixSkye_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => b_cskyev(4),
      O => vga_sprite_Msub_xpixSkye_lut(4)
    );
  vga_sprite_blue_0_21 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sprite_skyespriteon,
      I1 => U2_vidon_and000039_254,
      I2 => U2_vidon_and0000117_249,
      O => vga_sprite_N3
    );
  vga_sprite_blue_0_41 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sprite_monaspriteon,
      I1 => U2_vidon_and000039_254,
      I2 => U2_vidon_and0000117_249,
      O => vga_sprite_N5
    );
  vga_sprite_blue_0_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U2_vidon_and0000117_249,
      I1 => vga_sprite_reyspriteon,
      I2 => U2_vidon_and000039_254,
      I3 => vga_sprite_skyespriteon,
      O => vga_sprite_N01
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_6_11 : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_skyespriteon_addsub0001_cy_5_Q,
      I1 => b_cskyev(6),
      I2 => b_cskyev(5),
      I3 => b_cskyev(4),
      O => vga_sprite_skyespriteon_addsub0001(6)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_6_11 : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_reyspriteon_addsub0001_cy_5_Q,
      I1 => b_creyv(6),
      I2 => b_creyv(5),
      I3 => b_creyv(4),
      O => vga_sprite_reyspriteon_addsub0001(6)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_6_11 : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => vga_sprite_Madd_monaspriteon_addsub0001_cy_5_Q,
      I1 => b_cmonav(6),
      I2 => b_cmonav(5),
      I3 => b_cmonav(4),
      O => vga_sprite_monaspriteon_addsub0001(6)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_8_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_skyespriteon_addsub0001_cy_7_Q,
      O => vga_sprite_skyespriteon_addsub0001(8)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_8_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_creyv(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_reyspriteon_addsub0001_cy_7_Q,
      O => vga_sprite_reyspriteon_addsub0001(8)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_8_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_monaspriteon_addsub0001_cy_7_Q,
      O => vga_sprite_monaspriteon_addsub0001(8)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => b_cmonav(8),
      I1 => vga_sprite_Madd_monaspriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_monaspriteon_addsub0001_cy_7_Q,
      I3 => U2_HCS(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_le0000_lut(8)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => b_cskyev(8),
      I1 => vga_sprite_Madd_skyespriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_skyespriteon_addsub0001_cy_7_Q,
      I3 => U2_HCS(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_le0000_lut(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => b_creyv(8),
      I1 => vga_sprite_Madd_reyspriteon_addsub0000_cy(7),
      I2 => vga_sprite_Madd_reyspriteon_addsub0001_cy_7_Q,
      I3 => U2_HCS(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_le0000_lut(8)
    );
  b_Madd_dcvskye_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_dcvskye(0),
      O => b_Madd_dcvskye_sub0000_cy_0_rt_535
    );
  b_Madd_drvskye_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_drvskye(0),
      O => b_Madd_drvskye_sub0000_cy_0_rt_592
    );
  b_Madd_drvrey_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_drvrey(0),
      O => b_Madd_drvrey_sub0000_cy_0_rt_573
    );
  b_Madd_dcvrey_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_dcvrey(0),
      O => b_Madd_dcvrey_sub0000_cy_0_rt_516
    );
  b_Madd_drvmona_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_drvmona(0),
      O => b_Madd_drvmona_sub0000_cy_0_rt_554
    );
  b_Madd_dcvmona_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_dcvmona(0),
      O => b_Madd_dcvmona_sub0000_cy_0_rt_497
    );
  U1_q_17_BUFG : BUFG
    port map (
      I => U1_q_171,
      O => U1_q(17)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_930
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  U1_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => U1_q_01,
      O => U1_Mcount_q_lut(0)
    );
  U2_Mcount_HCS_lut_0_INV_0 : INV
    port map (
      I => U2_HCS(0),
      O => U2_Mcount_HCS_lut(0)
    );
  U2_Mcount_vcs_lut_0_INV_0 : INV
    port map (
      I => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_lut_4_INV_0 : INV
    port map (
      I => b_rmonav(4),
      O => vga_sprite_Madd_monaspriteon_addsub0002_lut(4)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_lut_3_INV_0 : INV
    port map (
      I => b_rmonav(3),
      O => vga_sprite_Madd_monaspriteon_addsub0002_lut(3)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_lut_2_INV_0 : INV
    port map (
      I => b_rmonav(2),
      O => vga_sprite_Madd_monaspriteon_addsub0002_lut(2)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_lut_1_INV_0 : INV
    port map (
      I => b_rmonav(1),
      O => vga_sprite_Madd_monaspriteon_addsub0002_lut(1)
    );
  vga_sprite_Madd_monaspriteon_addsub0002_lut_0_INV_0 : INV
    port map (
      I => b_rmonav(0),
      O => vga_sprite_Madd_monaspriteon_addsub0002_lut(0)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_lut_4_INV_0 : INV
    port map (
      I => b_rskyev(4),
      O => vga_sprite_Madd_skyespriteon_addsub0002_lut(4)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_lut_3_INV_0 : INV
    port map (
      I => b_rskyev(3),
      O => vga_sprite_Madd_skyespriteon_addsub0002_lut(3)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_lut_2_INV_0 : INV
    port map (
      I => b_rskyev(2),
      O => vga_sprite_Madd_skyespriteon_addsub0002_lut(2)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_lut_1_INV_0 : INV
    port map (
      I => b_rskyev(1),
      O => vga_sprite_Madd_skyespriteon_addsub0002_lut(1)
    );
  vga_sprite_Madd_skyespriteon_addsub0002_lut_0_INV_0 : INV
    port map (
      I => b_rskyev(0),
      O => vga_sprite_Madd_skyespriteon_addsub0002_lut(0)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_lut_4_INV_0 : INV
    port map (
      I => b_rreyv(4),
      O => vga_sprite_Madd_reyspriteon_addsub0002_lut(4)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_lut_3_INV_0 : INV
    port map (
      I => b_rreyv(3),
      O => vga_sprite_Madd_reyspriteon_addsub0002_lut(3)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_lut_2_INV_0 : INV
    port map (
      I => b_rreyv(2),
      O => vga_sprite_Madd_reyspriteon_addsub0002_lut(2)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_lut_1_INV_0 : INV
    port map (
      I => b_rreyv(1),
      O => vga_sprite_Madd_reyspriteon_addsub0002_lut(1)
    );
  vga_sprite_Madd_reyspriteon_addsub0002_lut_0_INV_0 : INV
    port map (
      I => b_rreyv(0),
      O => vga_sprite_Madd_reyspriteon_addsub0002_lut(0)
    );
  vga_sprite_Msub_ypixMona_sub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => vga_sprite_Msub_ypixMona_sub0000_lut(9)
    );
  vga_sprite_Msub_ypixMona_sub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => vga_sprite_Msub_ypixMona_sub0000_lut(8)
    );
  vga_sprite_Msub_ypixMona_sub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => vga_sprite_Msub_ypixMona_sub0000_lut(7)
    );
  vga_sprite_Msub_ypixMona_sub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => vga_sprite_Msub_ypixMona_sub0000_lut(6)
    );
  vga_sprite_Msub_ypixMona_sub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => vga_sprite_Msub_ypixMona_sub0000_lut(5)
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_916,
      O => U2_clr_inv
    );
  b_Madd_drvskye_not0000_9_1_INV_0 : INV
    port map (
      I => b_drvskye(9),
      O => b_Madd_drvskye_not0000(9)
    );
  b_Madd_drvrey_not0000_9_1_INV_0 : INV
    port map (
      I => b_drvrey(9),
      O => b_Madd_drvrey_not0000(9)
    );
  b_Madd_drvmona_not0000_9_1_INV_0 : INV
    port map (
      I => b_drvmona(9),
      O => b_Madd_drvmona_not0000(9)
    );
  b_Madd_dcvskye_not0000_9_1_INV_0 : INV
    port map (
      I => b_dcvskye(9),
      O => b_Madd_dcvskye_not0000(9)
    );
  b_Madd_dcvrey_not0000_9_1_INV_0 : INV
    port map (
      I => b_dcvrey(9),
      O => b_Madd_dcvrey_not0000(9)
    );
  b_Madd_dcvmona_not0000_9_1_INV_0 : INV
    port map (
      I => b_dcvmona(9),
      O => b_Madd_dcvmona_not0000(9)
    );
  b_Madd_drvskye_not0000_8_1_INV_0 : INV
    port map (
      I => b_drvskye(8),
      O => b_Madd_drvskye_not0000(8)
    );
  b_Madd_drvrey_not0000_8_1_INV_0 : INV
    port map (
      I => b_drvrey(8),
      O => b_Madd_drvrey_not0000(8)
    );
  b_Madd_drvmona_not0000_8_1_INV_0 : INV
    port map (
      I => b_drvmona(8),
      O => b_Madd_drvmona_not0000(8)
    );
  b_Madd_dcvskye_not0000_8_1_INV_0 : INV
    port map (
      I => b_dcvskye(8),
      O => b_Madd_dcvskye_not0000(8)
    );
  b_Madd_dcvrey_not0000_8_1_INV_0 : INV
    port map (
      I => b_dcvrey(8),
      O => b_Madd_dcvrey_not0000(8)
    );
  b_Madd_dcvmona_not0000_8_1_INV_0 : INV
    port map (
      I => b_dcvmona(8),
      O => b_Madd_dcvmona_not0000(8)
    );
  b_Madd_drvskye_not0000_7_1_INV_0 : INV
    port map (
      I => b_drvskye(7),
      O => b_Madd_drvskye_not0000(7)
    );
  b_Madd_drvrey_not0000_7_1_INV_0 : INV
    port map (
      I => b_drvrey(7),
      O => b_Madd_drvrey_not0000(7)
    );
  b_Madd_drvmona_not0000_7_1_INV_0 : INV
    port map (
      I => b_drvmona(7),
      O => b_Madd_drvmona_not0000(7)
    );
  b_Madd_dcvskye_not0000_7_1_INV_0 : INV
    port map (
      I => b_dcvskye(7),
      O => b_Madd_dcvskye_not0000(7)
    );
  b_Madd_dcvrey_not0000_7_1_INV_0 : INV
    port map (
      I => b_dcvrey(7),
      O => b_Madd_dcvrey_not0000(7)
    );
  b_Madd_dcvmona_not0000_7_1_INV_0 : INV
    port map (
      I => b_dcvmona(7),
      O => b_Madd_dcvmona_not0000(7)
    );
  b_Madd_drvskye_not0000_6_1_INV_0 : INV
    port map (
      I => b_drvskye(6),
      O => b_Madd_drvskye_not0000(6)
    );
  b_Madd_drvrey_not0000_6_1_INV_0 : INV
    port map (
      I => b_drvrey(6),
      O => b_Madd_drvrey_not0000(6)
    );
  b_Madd_drvmona_not0000_6_1_INV_0 : INV
    port map (
      I => b_drvmona(6),
      O => b_Madd_drvmona_not0000(6)
    );
  b_Madd_dcvskye_not0000_6_1_INV_0 : INV
    port map (
      I => b_dcvskye(6),
      O => b_Madd_dcvskye_not0000(6)
    );
  b_Madd_dcvrey_not0000_6_1_INV_0 : INV
    port map (
      I => b_dcvrey(6),
      O => b_Madd_dcvrey_not0000(6)
    );
  b_Madd_dcvmona_not0000_6_1_INV_0 : INV
    port map (
      I => b_dcvmona(6),
      O => b_Madd_dcvmona_not0000(6)
    );
  b_Madd_drvskye_not0000_5_1_INV_0 : INV
    port map (
      I => b_drvskye(5),
      O => b_Madd_drvskye_not0000(5)
    );
  b_Madd_drvrey_not0000_5_1_INV_0 : INV
    port map (
      I => b_drvrey(5),
      O => b_Madd_drvrey_not0000(5)
    );
  b_Madd_drvmona_not0000_5_1_INV_0 : INV
    port map (
      I => b_drvmona(5),
      O => b_Madd_drvmona_not0000(5)
    );
  b_Madd_dcvskye_not0000_5_1_INV_0 : INV
    port map (
      I => b_dcvskye(5),
      O => b_Madd_dcvskye_not0000(5)
    );
  b_Madd_dcvrey_not0000_5_1_INV_0 : INV
    port map (
      I => b_dcvrey(5),
      O => b_Madd_dcvrey_not0000(5)
    );
  b_Madd_dcvmona_not0000_5_1_INV_0 : INV
    port map (
      I => b_dcvmona(5),
      O => b_Madd_dcvmona_not0000(5)
    );
  b_Madd_drvskye_not0000_4_1_INV_0 : INV
    port map (
      I => b_drvskye(4),
      O => b_Madd_drvskye_not0000(4)
    );
  b_Madd_drvrey_not0000_4_1_INV_0 : INV
    port map (
      I => b_drvrey(4),
      O => b_Madd_drvrey_not0000(4)
    );
  b_Madd_drvmona_not0000_4_1_INV_0 : INV
    port map (
      I => b_drvmona(4),
      O => b_Madd_drvmona_not0000(4)
    );
  b_Madd_dcvskye_not0000_4_1_INV_0 : INV
    port map (
      I => b_dcvskye(4),
      O => b_Madd_dcvskye_not0000(4)
    );
  b_Madd_dcvrey_not0000_4_1_INV_0 : INV
    port map (
      I => b_dcvrey(4),
      O => b_Madd_dcvrey_not0000(4)
    );
  b_Madd_dcvmona_not0000_4_1_INV_0 : INV
    port map (
      I => b_dcvmona(4),
      O => b_Madd_dcvmona_not0000(4)
    );
  b_Madd_drvskye_not0000_3_1_INV_0 : INV
    port map (
      I => b_drvskye(3),
      O => b_Madd_drvskye_not0000(3)
    );
  b_Madd_drvrey_not0000_3_1_INV_0 : INV
    port map (
      I => b_drvrey(3),
      O => b_Madd_drvrey_not0000(3)
    );
  b_Madd_drvmona_not0000_3_1_INV_0 : INV
    port map (
      I => b_drvmona(3),
      O => b_Madd_drvmona_not0000(3)
    );
  b_Madd_dcvskye_not0000_3_1_INV_0 : INV
    port map (
      I => b_dcvskye(3),
      O => b_Madd_dcvskye_not0000(3)
    );
  b_Madd_dcvrey_not0000_3_1_INV_0 : INV
    port map (
      I => b_dcvrey(3),
      O => b_Madd_dcvrey_not0000(3)
    );
  b_Madd_dcvmona_not0000_3_1_INV_0 : INV
    port map (
      I => b_dcvmona(3),
      O => b_Madd_dcvmona_not0000(3)
    );
  b_Madd_drvskye_not0000_2_1_INV_0 : INV
    port map (
      I => b_drvskye(2),
      O => b_Madd_drvskye_not0000(2)
    );
  b_Madd_drvrey_not0000_2_1_INV_0 : INV
    port map (
      I => b_drvrey(2),
      O => b_Madd_drvrey_not0000(2)
    );
  b_Madd_drvmona_not0000_2_1_INV_0 : INV
    port map (
      I => b_drvmona(2),
      O => b_Madd_drvmona_not0000(2)
    );
  b_Madd_dcvskye_not0000_2_1_INV_0 : INV
    port map (
      I => b_dcvskye(2),
      O => b_Madd_dcvskye_not0000(2)
    );
  b_Madd_dcvrey_not0000_2_1_INV_0 : INV
    port map (
      I => b_dcvrey(2),
      O => b_Madd_dcvrey_not0000(2)
    );
  b_Madd_dcvmona_not0000_2_1_INV_0 : INV
    port map (
      I => b_dcvmona(2),
      O => b_Madd_dcvmona_not0000(2)
    );
  b_Madd_drvskye_not0000_1_1_INV_0 : INV
    port map (
      I => b_drvskye(1),
      O => b_Madd_drvskye_not0000(1)
    );
  b_Madd_drvrey_not0000_1_1_INV_0 : INV
    port map (
      I => b_drvrey(1),
      O => b_Madd_drvrey_not0000(1)
    );
  b_Madd_drvmona_not0000_1_1_INV_0 : INV
    port map (
      I => b_drvmona(1),
      O => b_Madd_drvmona_not0000(1)
    );
  b_Madd_dcvskye_not0000_1_1_INV_0 : INV
    port map (
      I => b_dcvskye(1),
      O => b_Madd_dcvskye_not0000(1)
    );
  b_Madd_dcvrey_not0000_1_1_INV_0 : INV
    port map (
      I => b_dcvrey(1),
      O => b_Madd_dcvrey_not0000(1)
    );
  b_Madd_dcvmona_not0000_1_1_INV_0 : INV
    port map (
      I => b_dcvmona(1),
      O => b_Madd_dcvmona_not0000(1)
    );
  vga_sprite_Msub_xpixMona_sub0000_xor_4_11_INV_0 : INV
    port map (
      I => U2_HCS(4),
      O => vga_sprite_xpixMona_sub0000(4)
    );
  vga_sprite_Madd_skyespriteon_addsub0001_xor_2_11_INV_0 : INV
    port map (
      I => b_cskyev(2),
      O => vga_sprite_skyespriteon_addsub0001(2)
    );
  vga_sprite_Madd_reyspriteon_addsub0001_xor_2_11_INV_0 : INV
    port map (
      I => b_creyv(2),
      O => vga_sprite_reyspriteon_addsub0001(2)
    );
  vga_sprite_Madd_monaspriteon_addsub0001_xor_2_11_INV_0 : INV
    port map (
      I => b_cmonav(2),
      O => vga_sprite_monaspriteon_addsub0001(2)
    );
  vga_sprite_Madd_skyespriteon_addsub0000_xor_4_11_INV_0 : INV
    port map (
      I => b_cskyev(4),
      O => vga_sprite_skyespriteon_addsub0000(4)
    );
  vga_sprite_Madd_reyspriteon_addsub0000_xor_4_11_INV_0 : INV
    port map (
      I => b_creyv(4),
      O => vga_sprite_reyspriteon_addsub0000(4)
    );
  vga_sprite_Madd_monaspriteon_addsub0000_xor_4_11_INV_0 : INV
    port map (
      I => b_cmonav(4),
      O => vga_sprite_monaspriteon_addsub0000(4)
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
      O => U2_vidon_and0000181_251
    );
  U2_vidon_and000018_f5 : MUXF5
    port map (
      I0 => U2_vidon_and0000181_251,
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
      O => U2_vidon_and0000261_253
    );
  U2_vidon_and000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000261_253,
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
      O => U2_vidon_and0000651_257
    );
  U2_vidon_and000065_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000651_257,
      S => U2_vcs(8),
      O => U2_vidon_and000065
    );
  vga_sprite_reyspriteon_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => vga_sprite_Mcompar_reyspriteon_cmp_gt0000_cy(9),
      I1 => vga_sprite_reyspriteon_cmp_le0000,
      I2 => vga_sprite_reyspriteon_cmp_ge0000,
      I3 => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(9),
      O => vga_sprite_reyspriteon_and0000
    );
  vga_sprite_reyspriteon_and0000_f5 : MUXF5
    port map (
      I0 => vga_sprite_reyspriteon_and0000,
      I1 => N0,
      S => vga_sprite_skyespriteon,
      O => vga_sprite_reyspriteon
    );
  U2_vcs_cmp_eq000011 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(8),
      I2 => U2_vcs(5),
      I3 => U2_vcs(6),
      LO => N33,
      O => U2_N2
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => N2,
      LO => N34,
      O => U2_vcs_cmp_eq0000_246
    );
  b_dcvskye_not00024 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_add0002_add0000(5),
      I1 => b_add0002_add0000(6),
      I2 => b_add0002_add0000(7),
      I3 => b_add0002_add0000(8),
      LO => b_dcvskye_not00024_797
    );
  b_dcvrey_not00024 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_add0000_add0000(5),
      I1 => b_add0000_add0000(6),
      I2 => b_add0000_add0000(7),
      I3 => b_add0000_add0000(8),
      LO => b_dcvrey_not00024_774
    );
  b_dcvmona_not00024 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_add0004_add0000(5),
      I1 => b_add0004_add0000(6),
      I2 => b_add0004_add0000(7),
      I3 => b_add0004_add0000(8),
      LO => b_dcvmona_not00024_751
    );
  U2_HCS_cmp_eq000014 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(7),
      LO => N35,
      O => U2_N3
    );
  b_drvskye_not00021 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_add0003_add0000(2),
      I1 => b_add0003_add0000(3),
      LO => b_drvskye_not00021_866
    );
  b_drvrey_not00021 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_add0001_add0000(2),
      I1 => b_add0001_add0000(3),
      LO => b_drvrey_not00021_843
    );
  b_drvmona_not00021 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_add0005_add0000(2),
      I1 => b_add0005_add0000(3),
      LO => b_drvmona_not00021_820
    );
  b_drvskye_not000221_SW0 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => go1,
      I1 => b_calc_709,
      I2 => b_add0003_add0000(9),
      LO => N20
    );
  b_drvrey_not000221_SW0 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => go1,
      I1 => b_calc_709,
      I2 => b_add0001_add0000(9),
      LO => N23
    );
  b_drvmona_not000221_SW0 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => go1,
      I1 => b_calc_709,
      I2 => b_add0005_add0000(9),
      LO => N26
    );

end STRUCTURE;
