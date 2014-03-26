--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: group_photos_top.vhd
-- /___/   /\     Timestamp: Wed Mar 26 12:20:14 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w group_photos_top.ngc group_photos_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: group_photos_top.ngc
-- Output file	: group_photos_top.vhd
-- # of Entities	: 1
-- Design Name	: group_photos_top
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

entity group_photos_top is
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
end group_photos_top;

architecture STRUCTURE of group_photos_top is
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
  signal N1 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_56 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_57 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_1_rt_60 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_rt_62 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_3_rt_64 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_rt_66 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_5_rt_68 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_rt_70 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_7_rt_72 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_rt_74 : STD_LOGIC; 
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
  signal U2_Mcount_HCS_xor_9_rt_86 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_89 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_91 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_93 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_95 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_97 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_99 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_101 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_103 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_115 : STD_LOGIC; 
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
  signal U2_VSENABLE_138 : STD_LOGIC; 
  signal U2_clr_inv : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_150 : STD_LOGIC; 
  signal U2_vidon_and000011_151 : STD_LOGIC; 
  signal U2_vidon_and0000111 : STD_LOGIC; 
  signal U2_vidon_and00001111_153 : STD_LOGIC; 
  signal U2_vidon_and00001112_154 : STD_LOGIC; 
  signal U2_vidon_and000018_155 : STD_LOGIC; 
  signal U2_vidon_and000018_SW0 : STD_LOGIC; 
  signal U2_vidon_and000057_157 : STD_LOGIC; 
  signal U2_vidon_and000059_158 : STD_LOGIC; 
  signal U2_vidon_and000094_159 : STD_LOGIC; 
  signal U2_vidon_and000098_160 : STD_LOGIC; 
  signal blue_0_OBUF_163 : STD_LOGIC; 
  signal blue_1_OBUF_164 : STD_LOGIC; 
  signal btn_3_IBUF_166 : STD_LOGIC; 
  signal green_0_OBUF_170 : STD_LOGIC; 
  signal green_1_OBUF_171 : STD_LOGIC; 
  signal green_2_OBUF_172 : STD_LOGIC; 
  signal hsync_OBUF_174 : STD_LOGIC; 
  signal mclk_BUFGP_176 : STD_LOGIC; 
  signal red_0_OBUF_180 : STD_LOGIC; 
  signal red_1_OBUF_181 : STD_LOGIC; 
  signal red_2_OBUF_182 : STD_LOGIC; 
  signal sw_2_IBUF_231 : STD_LOGIC; 
  signal sw_3_IBUF_232 : STD_LOGIC; 
  signal sw_4_IBUF_233 : STD_LOGIC; 
  signal sw_5_IBUF_234 : STD_LOGIC; 
  signal sw_6_IBUF_235 : STD_LOGIC; 
  signal sw_7_IBUF_236 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_238 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_240 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_242 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_277 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_291 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_293 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_295 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_330 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_344 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_346 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_348 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_383 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_rt_397 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_rt_407 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_rt_417 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_0_rt_427 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_2_rt_430 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_3_rt_432 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_4_rt_434 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_6_Q_440 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_7_Q_441 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_Q_442 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_1_443 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_2_444 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_0_rt_446 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_4_rt_451 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_2_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_5_Q_459 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_6_Q_460 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_7_Q_461 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_8_Q_462 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_4_11 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_5_11 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_7_11 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_8_11 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_0_rt_468 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_1_rt_470 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_2_rt_472 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_5_Q_480 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_6_Q_481 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_8_Q_482 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_0_rt_484 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_lut_9_1 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_lut_9_2 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_0_rt_505 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_0_rt_523 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_1_rt_525 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_2_rt_527 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_3_rt_529 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_4_rt_531 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_0_rt_542 : STD_LOGIC; 
  signal vga_sprite_blue_0_1_560 : STD_LOGIC; 
  signal vga_sprite_blue_0_1116_561 : STD_LOGIC; 
  signal vga_sprite_blue_0_1127_562 : STD_LOGIC; 
  signal vga_sprite_blue_0_1157_563 : STD_LOGIC; 
  signal vga_sprite_blue_0_123 : STD_LOGIC; 
  signal vga_sprite_blue_0_1231_565 : STD_LOGIC; 
  signal vga_sprite_blue_0_1232_566 : STD_LOGIC; 
  signal vga_sprite_blue_0_16 : STD_LOGIC; 
  signal vga_sprite_blue_0_161_568 : STD_LOGIC; 
  signal vga_sprite_blue_0_181_569 : STD_LOGIC; 
  signal vga_sprite_blue_0_198_570 : STD_LOGIC; 
  signal vga_sprite_blue_1_1_572 : STD_LOGIC; 
  signal vga_sprite_blue_and0000 : STD_LOGIC; 
  signal vga_sprite_blue_and0000104_574 : STD_LOGIC; 
  signal vga_sprite_blue_and0000117_575 : STD_LOGIC; 
  signal vga_sprite_blue_and000021_576 : STD_LOGIC; 
  signal vga_sprite_blue_and00007_577 : STD_LOGIC; 
  signal vga_sprite_blue_and000088_578 : STD_LOGIC; 
  signal vga_sprite_blue_and0001 : STD_LOGIC; 
  signal vga_sprite_blue_and000123_580 : STD_LOGIC; 
  signal vga_sprite_blue_and000137 : STD_LOGIC; 
  signal vga_sprite_blue_and0001371_582 : STD_LOGIC; 
  signal vga_sprite_blue_and000167_583 : STD_LOGIC; 
  signal vga_sprite_blue_and000184_584 : STD_LOGIC; 
  signal vga_sprite_green_0_1_586 : STD_LOGIC; 
  signal vga_sprite_green_1_1_588 : STD_LOGIC; 
  signal vga_sprite_green_2_1_590 : STD_LOGIC; 
  signal vga_sprite_red_0_1_592 : STD_LOGIC; 
  signal vga_sprite_red_1_1_594 : STD_LOGIC; 
  signal vga_sprite_red_2_1_596 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal vsync_OBUF_714 : STD_LOGIC; 
  signal MMona : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MRey : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MSkye : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_HCS : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Mcount_HCS_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_HCS_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal romMona_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal romRey_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal romSkye_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
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
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_Msub_xpixMona_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_xpixRey_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_xpixSkye_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixMona_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal vga_sprite_Msub_ypixRey_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixRey_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal vga_sprite_Msub_ypixRey_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixRey_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal vga_sprite_Msub_ypixSkye_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sprite_Msub_ypixSkye_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal vga_sprite_blue : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal vga_sprite_green : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_red : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_rom_addr20_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr20_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_rom_addr21_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr21_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_xpixMona : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_xpixRey : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_xpixSkye : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_ypixMona : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixRey : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixRey_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
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
  U1_q_0 : FDC
    port map (
      C => mclk_BUFGP_176,
      CLR => btn_3_IBUF_166,
      D => Result(0),
      Q => U1_q_01
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
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
      LI => U2_Mcount_HCS_xor_9_rt_86,
      O => U2_Result_9_1
    );
  U2_Mcount_HCS_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      LI => U2_Mcount_HCS_cy_8_rt_74,
      O => U2_Result_8_1
    );
  U2_Mcount_HCS_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      DI => N0,
      S => U2_Mcount_HCS_cy_8_rt_74,
      O => U2_Mcount_HCS_cy(8)
    );
  U2_Mcount_HCS_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      LI => U2_Mcount_HCS_cy_7_rt_72,
      O => U2_Result_7_1
    );
  U2_Mcount_HCS_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      DI => N0,
      S => U2_Mcount_HCS_cy_7_rt_72,
      O => U2_Mcount_HCS_cy(7)
    );
  U2_Mcount_HCS_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      LI => U2_Mcount_HCS_cy_6_rt_70,
      O => U2_Result_6_1
    );
  U2_Mcount_HCS_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      DI => N0,
      S => U2_Mcount_HCS_cy_6_rt_70,
      O => U2_Mcount_HCS_cy(6)
    );
  U2_Mcount_HCS_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      LI => U2_Mcount_HCS_cy_5_rt_68,
      O => U2_Result_5_1
    );
  U2_Mcount_HCS_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      DI => N0,
      S => U2_Mcount_HCS_cy_5_rt_68,
      O => U2_Mcount_HCS_cy(5)
    );
  U2_Mcount_HCS_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      LI => U2_Mcount_HCS_cy_4_rt_66,
      O => U2_Result_4_1
    );
  U2_Mcount_HCS_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      DI => N0,
      S => U2_Mcount_HCS_cy_4_rt_66,
      O => U2_Mcount_HCS_cy(4)
    );
  U2_Mcount_HCS_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      LI => U2_Mcount_HCS_cy_3_rt_64,
      O => U2_Result_3_1
    );
  U2_Mcount_HCS_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      DI => N0,
      S => U2_Mcount_HCS_cy_3_rt_64,
      O => U2_Mcount_HCS_cy(3)
    );
  U2_Mcount_HCS_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      LI => U2_Mcount_HCS_cy_2_rt_62,
      O => U2_Result_2_1
    );
  U2_Mcount_HCS_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      DI => N0,
      S => U2_Mcount_HCS_cy_2_rt_62,
      O => U2_Mcount_HCS_cy(2)
    );
  U2_Mcount_HCS_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      LI => U2_Mcount_HCS_cy_1_rt_60,
      O => U2_Result_1_1
    );
  U2_Mcount_HCS_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      DI => N0,
      S => U2_Mcount_HCS_cy_1_rt_60,
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
      LI => U2_Mcount_vcs_xor_9_rt_115,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_103,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_103,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_101,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_101,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_99,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_99,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_97,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_97,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_95,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_95,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_93,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_93,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_91,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_91,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_89,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_89,
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
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_9,
      Q => U2_HCS(9)
    );
  U2_HCS_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_8,
      Q => U2_HCS(8)
    );
  U2_HCS_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_7,
      Q => U2_HCS(7)
    );
  U2_HCS_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_6,
      Q => U2_HCS(6)
    );
  U2_HCS_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_5,
      Q => U2_HCS(5)
    );
  U2_HCS_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_4,
      Q => U2_HCS(4)
    );
  U2_HCS_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_3,
      Q => U2_HCS(3)
    );
  U2_HCS_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_2,
      Q => U2_HCS(2)
    );
  U2_HCS_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_1,
      Q => U2_HCS(1)
    );
  U2_HCS_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_HCS_eqn_0,
      Q => U2_HCS(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_138,
      CLR => btn_3_IBUF_166,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_VSENABLE : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_HCS_cmp_eq0000,
      Q => U2_VSENABLE_138
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
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_242,
      O => romSkye_addr14(12)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_242,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_240,
      O => romSkye_addr14(11)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_240,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_238,
      O => romSkye_addr14(10)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_238,
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
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(12),
      LI => vga_sprite_rom_addr21_addsub0001(13),
      O => romMona_addr14(13)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_295,
      O => romMona_addr14(12)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_295,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_293,
      O => romMona_addr14(11)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_293,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_291,
      O => romMona_addr14(10)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_291,
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
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(12),
      LI => vga_sprite_rom_addr2_addsub0001(13),
      O => romRey_addr14(13)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_348,
      O => romRey_addr14(12)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_348,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(12)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(10),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_346,
      O => romRey_addr14(11)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(10),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_346,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(11)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(9),
      LI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_344,
      O => romRey_addr14(10)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_add0000_Madd_cy(9),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_344,
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
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr20_addsub0000(13),
      O => vga_sprite_rom_addr20_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_277,
      O => vga_sprite_rom_addr20_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_277,
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
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr21_addsub0000(13),
      O => vga_sprite_rom_addr21_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_330,
      O => vga_sprite_rom_addr21_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_330,
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
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(12),
      LI => vga_sprite_rom_addr2_addsub0000(13),
      O => vga_sprite_rom_addr2_addsub0001(13)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11),
      LI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_383,
      O => vga_sprite_rom_addr2_addsub0001(12)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11),
      DI => N0,
      S => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_383,
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
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(0),
      DI => N1,
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(5),
      I3 => U2_vcs(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_rt_407,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(0),
      DI => N1,
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(5),
      I3 => U2_vcs(6),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_rt_417,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(9),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(8),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(7),
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(0),
      DI => N1,
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(5),
      I3 => U2_vcs(6),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_rt_397,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(0)
    );
  vga_sprite_Msub_xpixMona_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(8),
      LI => vga_sprite_Msub_xpixMona_lut_9_1_443,
      O => vga_sprite_xpixMona(9)
    );
  vga_sprite_Msub_xpixMona_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(7),
      LI => vga_sprite_Msub_xpixRey_sub0000_xor_8_11,
      O => vga_sprite_xpixMona(8)
    );
  vga_sprite_Msub_xpixMona_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(7),
      DI => N0,
      S => vga_sprite_Msub_xpixRey_sub0000_xor_8_11,
      O => vga_sprite_Msub_xpixMona_cy(8)
    );
  vga_sprite_Msub_xpixMona_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(6),
      LI => vga_sprite_Msub_xpixMona_lut_7_Q_441,
      O => vga_sprite_xpixMona(7)
    );
  vga_sprite_Msub_xpixMona_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(6),
      DI => N1,
      S => vga_sprite_Msub_xpixMona_lut_7_Q_441,
      O => vga_sprite_Msub_xpixMona_cy(7)
    );
  vga_sprite_Msub_xpixMona_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(5),
      LI => vga_sprite_Msub_xpixMona_lut_6_Q_440,
      O => vga_sprite_xpixMona(6)
    );
  vga_sprite_Msub_xpixMona_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(5),
      DI => N1,
      S => vga_sprite_Msub_xpixMona_lut_6_Q_440,
      O => vga_sprite_Msub_xpixMona_cy(6)
    );
  vga_sprite_Msub_xpixMona_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(4),
      LI => vga_sprite_Msub_xpixRey_sub0000_xor_5_11,
      O => vga_sprite_xpixMona(5)
    );
  vga_sprite_Msub_xpixMona_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(4),
      DI => N0,
      S => vga_sprite_Msub_xpixRey_sub0000_xor_5_11,
      O => vga_sprite_Msub_xpixMona_cy(5)
    );
  vga_sprite_Msub_xpixMona_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(3),
      LI => vga_sprite_Msub_xpixMona_cy_4_rt_434,
      O => vga_sprite_xpixMona(4)
    );
  vga_sprite_Msub_xpixMona_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(3),
      DI => N1,
      S => vga_sprite_Msub_xpixMona_cy_4_rt_434,
      O => vga_sprite_Msub_xpixMona_cy(4)
    );
  vga_sprite_Msub_xpixMona_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(2),
      LI => vga_sprite_Msub_xpixMona_cy_3_rt_432,
      O => vga_sprite_xpixMona(3)
    );
  vga_sprite_Msub_xpixMona_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(2),
      DI => N0,
      S => vga_sprite_Msub_xpixMona_cy_3_rt_432,
      O => vga_sprite_Msub_xpixMona_cy(3)
    );
  vga_sprite_Msub_xpixMona_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(1),
      LI => vga_sprite_Msub_xpixMona_cy_2_rt_430,
      O => vga_sprite_xpixMona(2)
    );
  vga_sprite_Msub_xpixMona_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(1),
      DI => N0,
      S => vga_sprite_Msub_xpixMona_cy_2_rt_430,
      O => vga_sprite_Msub_xpixMona_cy(2)
    );
  vga_sprite_Msub_xpixMona_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(0),
      LI => vga_sprite_Msub_xpixMona_lut_1_Q,
      O => romMona_addr14(1)
    );
  vga_sprite_Msub_xpixMona_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixMona_cy(0),
      DI => N1,
      S => vga_sprite_Msub_xpixMona_lut_1_Q,
      O => vga_sprite_Msub_xpixMona_cy(1)
    );
  vga_sprite_Msub_xpixMona_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixRey_cy_0_rt_446,
      O => romMona_addr14(0)
    );
  vga_sprite_Msub_xpixMona_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_xpixMona_cy_0_rt_427,
      O => vga_sprite_Msub_xpixMona_cy(0)
    );
  vga_sprite_Msub_ypixMona_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixMona_cy(8),
      LI => vga_sprite_Msub_ypixMona_lut_9_1,
      O => vga_sprite_ypixMona(9)
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
      DI => vga_sprite_ypixRey_sub0000(8),
      S => vga_sprite_Msub_ypixMona_lut(8),
      O => vga_sprite_Msub_ypixMona_cy(8)
    );
  vga_sprite_Msub_ypixMona_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(8),
      I1 => sw_3_IBUF_232,
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
      DI => vga_sprite_ypixRey_sub0000(7),
      S => vga_sprite_Msub_ypixMona_lut(7),
      O => vga_sprite_Msub_ypixMona_cy(7)
    );
  vga_sprite_Msub_ypixMona_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(7),
      I1 => sw_2_IBUF_231,
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(6),
      O => vga_sprite_Msub_ypixMona_cy(6)
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(5),
      O => vga_sprite_Msub_ypixMona_cy(5)
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(4),
      O => vga_sprite_Msub_ypixMona_cy(4)
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(3),
      O => vga_sprite_Msub_ypixMona_cy(3)
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(2),
      O => vga_sprite_Msub_ypixMona_cy(2)
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
      DI => N1,
      S => vga_sprite_Msub_ypixMona_lut(1),
      O => vga_sprite_Msub_ypixMona_cy(1)
    );
  vga_sprite_Msub_ypixMona_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixSkye_cy_0_rt_542,
      O => vga_sprite_ypixMona(0)
    );
  vga_sprite_Msub_ypixMona_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_ypixMona_cy_0_rt_484,
      O => vga_sprite_Msub_ypixMona_cy(0)
    );
  vga_sprite_Msub_xpixSkye_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(8),
      LI => vga_sprite_Msub_xpixMona_lut_9_2_444,
      O => vga_sprite_xpixSkye(9)
    );
  vga_sprite_Msub_xpixSkye_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(7),
      LI => vga_sprite_Msub_xpixSkye_lut_8_Q_482,
      O => vga_sprite_xpixSkye(8)
    );
  vga_sprite_Msub_xpixSkye_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(7),
      DI => N1,
      S => vga_sprite_Msub_xpixSkye_lut_8_Q_482,
      O => vga_sprite_Msub_xpixSkye_cy(8)
    );
  vga_sprite_Msub_xpixSkye_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(6),
      LI => vga_sprite_Msub_xpixRey_sub0000_xor_7_11,
      O => vga_sprite_xpixSkye(7)
    );
  vga_sprite_Msub_xpixSkye_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(6),
      DI => N0,
      S => vga_sprite_Msub_xpixRey_sub0000_xor_7_11,
      O => vga_sprite_Msub_xpixSkye_cy(7)
    );
  vga_sprite_Msub_xpixSkye_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(5),
      LI => vga_sprite_Msub_xpixSkye_lut_6_Q_481,
      O => vga_sprite_xpixSkye(6)
    );
  vga_sprite_Msub_xpixSkye_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(5),
      DI => N1,
      S => vga_sprite_Msub_xpixSkye_lut_6_Q_481,
      O => vga_sprite_Msub_xpixSkye_cy(6)
    );
  vga_sprite_Msub_xpixSkye_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(4),
      LI => vga_sprite_Msub_xpixSkye_lut_5_Q_480,
      O => vga_sprite_xpixSkye(5)
    );
  vga_sprite_Msub_xpixSkye_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(4),
      DI => N1,
      S => vga_sprite_Msub_xpixSkye_lut_5_Q_480,
      O => vga_sprite_Msub_xpixSkye_cy(5)
    );
  vga_sprite_Msub_xpixSkye_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(3),
      LI => vga_sprite_Msub_xpixRey_sub0000_xor_4_11,
      O => vga_sprite_xpixSkye(4)
    );
  vga_sprite_Msub_xpixSkye_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(3),
      DI => N0,
      S => vga_sprite_Msub_xpixRey_sub0000_xor_4_11,
      O => vga_sprite_Msub_xpixSkye_cy(4)
    );
  vga_sprite_Msub_xpixSkye_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(2),
      LI => vga_sprite_Msub_xpixSkye_lut_3_Q,
      O => vga_sprite_xpixSkye(3)
    );
  vga_sprite_Msub_xpixSkye_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(2),
      DI => N1,
      S => vga_sprite_Msub_xpixSkye_lut_3_Q,
      O => vga_sprite_Msub_xpixSkye_cy(3)
    );
  vga_sprite_Msub_xpixSkye_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(1),
      LI => vga_sprite_Msub_xpixSkye_cy_2_rt_472,
      O => vga_sprite_xpixSkye(2)
    );
  vga_sprite_Msub_xpixSkye_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(1),
      DI => N0,
      S => vga_sprite_Msub_xpixSkye_cy_2_rt_472,
      O => vga_sprite_Msub_xpixSkye_cy(2)
    );
  vga_sprite_Msub_xpixSkye_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(0),
      LI => vga_sprite_Msub_xpixSkye_cy_1_rt_470,
      O => romSkye_addr14(1)
    );
  vga_sprite_Msub_xpixSkye_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixSkye_cy(0),
      DI => N0,
      S => vga_sprite_Msub_xpixSkye_cy_1_rt_470,
      O => vga_sprite_Msub_xpixSkye_cy(1)
    );
  vga_sprite_Msub_xpixSkye_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixSkye_cy_0_rt_468,
      O => romSkye_addr14(0)
    );
  vga_sprite_Msub_xpixSkye_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_xpixSkye_cy_0_rt_468,
      O => vga_sprite_Msub_xpixSkye_cy(0)
    );
  vga_sprite_Msub_xpixRey_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(8),
      LI => vga_sprite_Msub_xpixMona_lut_9_Q_442,
      O => vga_sprite_xpixRey(9)
    );
  vga_sprite_Msub_xpixRey_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(7),
      LI => vga_sprite_Msub_xpixRey_lut_8_Q_462,
      O => vga_sprite_xpixRey(8)
    );
  vga_sprite_Msub_xpixRey_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(7),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_8_Q_462,
      O => vga_sprite_Msub_xpixRey_cy(8)
    );
  vga_sprite_Msub_xpixRey_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(6),
      LI => vga_sprite_Msub_xpixRey_lut_7_Q_461,
      O => vga_sprite_xpixRey(7)
    );
  vga_sprite_Msub_xpixRey_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(6),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_7_Q_461,
      O => vga_sprite_Msub_xpixRey_cy(7)
    );
  vga_sprite_Msub_xpixRey_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(5),
      LI => vga_sprite_Msub_xpixRey_lut_6_Q_460,
      O => vga_sprite_xpixRey(6)
    );
  vga_sprite_Msub_xpixRey_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(5),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_6_Q_460,
      O => vga_sprite_Msub_xpixRey_cy(6)
    );
  vga_sprite_Msub_xpixRey_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(4),
      LI => vga_sprite_Msub_xpixRey_lut_5_Q_459,
      O => vga_sprite_xpixRey(5)
    );
  vga_sprite_Msub_xpixRey_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(4),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_5_Q_459,
      O => vga_sprite_Msub_xpixRey_cy(5)
    );
  vga_sprite_Msub_xpixRey_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(3),
      LI => vga_sprite_Msub_xpixRey_cy_4_rt_451,
      O => vga_sprite_xpixRey(4)
    );
  vga_sprite_Msub_xpixRey_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(3),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_cy_4_rt_451,
      O => vga_sprite_Msub_xpixRey_cy(4)
    );
  vga_sprite_Msub_xpixRey_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(2),
      LI => vga_sprite_Msub_xpixRey_lut_3_Q,
      O => vga_sprite_xpixRey(3)
    );
  vga_sprite_Msub_xpixRey_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(2),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_3_Q,
      O => vga_sprite_Msub_xpixRey_cy(3)
    );
  vga_sprite_Msub_xpixRey_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(1),
      LI => vga_sprite_Msub_xpixRey_lut_2_Q,
      O => vga_sprite_xpixRey(2)
    );
  vga_sprite_Msub_xpixRey_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(1),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_2_Q,
      O => vga_sprite_Msub_xpixRey_cy(2)
    );
  vga_sprite_Msub_xpixRey_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(0),
      LI => vga_sprite_Msub_xpixRey_lut_1_Q,
      O => romRey_addr14(1)
    );
  vga_sprite_Msub_xpixRey_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_xpixRey_cy(0),
      DI => N1,
      S => vga_sprite_Msub_xpixRey_lut_1_Q,
      O => vga_sprite_Msub_xpixRey_cy(1)
    );
  vga_sprite_Msub_xpixRey_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_xpixMona_cy_0_rt_427,
      O => romRey_addr14(0)
    );
  vga_sprite_Msub_xpixRey_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_xpixRey_cy_0_rt_446,
      O => vga_sprite_Msub_xpixRey_cy(0)
    );
  vga_sprite_Msub_ypixRey_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_cy(8),
      LI => vga_sprite_Msub_ypixMona_lut_9_2,
      O => vga_sprite_ypixRey(9)
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
      DI => vga_sprite_ypixRey_sub0000(8),
      S => vga_sprite_Msub_ypixRey_lut(8),
      O => vga_sprite_Msub_ypixRey_cy(8)
    );
  vga_sprite_Msub_ypixRey_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(8),
      I1 => sw_7_IBUF_236,
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
      DI => vga_sprite_ypixRey_sub0000(7),
      S => vga_sprite_Msub_ypixRey_lut(7),
      O => vga_sprite_Msub_ypixRey_cy(7)
    );
  vga_sprite_Msub_ypixRey_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(7),
      I1 => sw_6_IBUF_235,
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(6),
      O => vga_sprite_Msub_ypixRey_cy(6)
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(5),
      O => vga_sprite_Msub_ypixRey_cy(5)
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(4),
      O => vga_sprite_Msub_ypixRey_cy(4)
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(3),
      O => vga_sprite_Msub_ypixRey_cy(3)
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(2),
      O => vga_sprite_Msub_ypixRey_cy(2)
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
      DI => N1,
      S => vga_sprite_Msub_ypixRey_lut(1),
      O => vga_sprite_Msub_ypixRey_cy(1)
    );
  vga_sprite_Msub_ypixRey_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixRey_cy_0_rt_505,
      O => vga_sprite_ypixRey(0)
    );
  vga_sprite_Msub_ypixRey_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_ypixRey_cy_0_rt_505,
      O => vga_sprite_Msub_ypixRey_cy(0)
    );
  vga_sprite_Msub_ypixSkye_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixSkye_cy(8),
      LI => vga_sprite_Msub_ypixMona_lut(9),
      O => vga_sprite_ypixSkye(9)
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
      DI => vga_sprite_ypixRey_sub0000(8),
      S => vga_sprite_Msub_ypixSkye_lut(8),
      O => vga_sprite_Msub_ypixSkye_cy(8)
    );
  vga_sprite_Msub_ypixSkye_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(8),
      I1 => sw_5_IBUF_234,
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
      DI => vga_sprite_ypixRey_sub0000(7),
      S => vga_sprite_Msub_ypixSkye_lut(7),
      O => vga_sprite_Msub_ypixSkye_cy(7)
    );
  vga_sprite_Msub_ypixSkye_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(7),
      I1 => sw_4_IBUF_233,
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(6),
      O => vga_sprite_Msub_ypixSkye_cy(6)
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(5),
      O => vga_sprite_Msub_ypixSkye_cy(5)
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(4),
      O => vga_sprite_Msub_ypixSkye_cy(4)
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(3),
      O => vga_sprite_Msub_ypixSkye_cy(3)
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(2),
      O => vga_sprite_Msub_ypixSkye_cy(2)
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
      DI => N1,
      S => vga_sprite_Msub_ypixSkye_lut(1),
      O => vga_sprite_Msub_ypixSkye_cy(1)
    );
  vga_sprite_Msub_ypixSkye_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixMona_cy_0_rt_484,
      O => vga_sprite_ypixSkye(0)
    );
  vga_sprite_Msub_ypixSkye_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_ypixSkye_cy_0_rt_542,
      O => vga_sprite_Msub_ypixSkye_cy(0)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_9_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(8),
      LI => vga_sprite_Msub_ypixRey_sub0000_lut(9),
      O => vga_sprite_ypixRey_sub0000(9)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_8_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(7),
      LI => vga_sprite_Msub_ypixRey_sub0000_lut(8),
      O => vga_sprite_ypixRey_sub0000(8)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(7),
      DI => N1,
      S => vga_sprite_Msub_ypixRey_sub0000_lut(8),
      O => vga_sprite_Msub_ypixRey_sub0000_cy(8)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_7_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(6),
      LI => vga_sprite_Msub_ypixRey_sub0000_lut(7),
      O => vga_sprite_ypixRey_sub0000(7)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(6),
      DI => N1,
      S => vga_sprite_Msub_ypixRey_sub0000_lut(7),
      O => vga_sprite_Msub_ypixRey_sub0000_cy(7)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_6_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(5),
      LI => vga_sprite_Msub_ypixRey_sub0000_lut(6),
      O => vga_sprite_ypixRey_sub0000(6)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(5),
      DI => N1,
      S => vga_sprite_Msub_ypixRey_sub0000_lut(6),
      O => vga_sprite_Msub_ypixRey_sub0000_cy(6)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_5_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(4),
      LI => vga_sprite_Msub_ypixRey_sub0000_lut(5),
      O => vga_sprite_ypixRey_sub0000(5)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(4),
      DI => N1,
      S => vga_sprite_Msub_ypixRey_sub0000_lut(5),
      O => vga_sprite_Msub_ypixRey_sub0000_cy(5)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_4_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(3),
      LI => vga_sprite_Msub_ypixRey_sub0000_cy_4_rt_531,
      O => vga_sprite_ypixRey_sub0000(4)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(3),
      DI => N0,
      S => vga_sprite_Msub_ypixRey_sub0000_cy_4_rt_531,
      O => vga_sprite_Msub_ypixRey_sub0000_cy(4)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_3_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(2),
      LI => vga_sprite_Msub_ypixRey_sub0000_cy_3_rt_529,
      O => vga_sprite_ypixRey_sub0000(3)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(2),
      DI => N0,
      S => vga_sprite_Msub_ypixRey_sub0000_cy_3_rt_529,
      O => vga_sprite_Msub_ypixRey_sub0000_cy(3)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_2_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(1),
      LI => vga_sprite_Msub_ypixRey_sub0000_cy_2_rt_527,
      O => vga_sprite_ypixRey_sub0000(2)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(1),
      DI => N0,
      S => vga_sprite_Msub_ypixRey_sub0000_cy_2_rt_527,
      O => vga_sprite_Msub_ypixRey_sub0000_cy(2)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_1_Q : XORCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(0),
      LI => vga_sprite_Msub_ypixRey_sub0000_cy_1_rt_525,
      O => vga_sprite_ypixRey_sub0000(1)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sprite_Msub_ypixRey_sub0000_cy(0),
      DI => N0,
      S => vga_sprite_Msub_ypixRey_sub0000_cy_1_rt_525,
      O => vga_sprite_Msub_ypixRey_sub0000_cy(1)
    );
  vga_sprite_Msub_ypixRey_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => vga_sprite_Msub_ypixRey_sub0000_cy_0_rt_523,
      O => vga_sprite_ypixRey_sub0000(0)
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vga_sprite_Msub_ypixRey_sub0000_cy_0_rt_523,
      O => vga_sprite_Msub_ypixRey_sub0000_cy(0)
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(8),
      I2 => U2_HCS(9),
      O => hsync_OBUF_174
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      O => N3
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N3,
      I1 => U2_vcs(1),
      I2 => U2_vcs(2),
      I3 => U2_N2,
      O => vsync_OBUF_714
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => N63,
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
  U2_HCS_cmp_eq00005 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_HCS(0),
      I1 => U2_HCS(1),
      I2 => U2_HCS(9),
      I3 => N62,
      O => U2_HCS_cmp_eq00005_57
    );
  U2_HCS_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N61,
      I1 => U2_HCS_cmp_eq00005_57,
      O => U2_HCS_cmp_eq0000
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(5),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(6),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(7),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(8),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_8
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(9),
      I1 => U2_vcs_cmp_eq0000_150,
      O => U2_Mcount_vcs_eqn_9
    );
  vga_sprite_blue_and000184 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => U2_HCS(8),
      I2 => vga_sprite_blue_and000137,
      I3 => vga_sprite_blue_and000167_583,
      O => vga_sprite_blue_and000184_584
    );
  U2_vidon_and000011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      O => U2_vidon_and000011_151
    );
  U2_vidon_and000057 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(8),
      O => U2_vidon_and000057_157
    );
  U2_vidon_and000094 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => U2_N3,
      I2 => U2_HCS(4),
      I3 => U2_HCS(8),
      O => U2_vidon_and000094_159
    );
  U2_vidon_and000098 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => U2_HCS(5),
      I2 => U2_HCS(6),
      O => U2_vidon_and000098_160
    );
  U2_vidon_and0000130 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vidon_and000018_155,
      I1 => U2_vidon_and000059_158,
      I2 => U2_vidon_and000094_159,
      I3 => U2_vidon_and0000111,
      O => vidon
    );
  vga_sprite_blue_and00007 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => U2_HCS(1),
      I2 => U2_HCS(2),
      I3 => U2_HCS(3),
      O => vga_sprite_blue_and00007_577
    );
  vga_sprite_blue_and000088 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => U2_HCS(3),
      I2 => U2_HCS(1),
      O => vga_sprite_blue_and000088_578
    );
  vga_sprite_blue_0_181 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => U2_HCS(2),
      I2 => U2_HCS(3),
      I3 => U2_HCS(4),
      O => vga_sprite_blue_0_181_569
    );
  vga_sprite_blue_0_198 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(7),
      I2 => U2_HCS(6),
      O => vga_sprite_blue_0_198_570
    );
  vga_sprite_blue_0_1116 : LUT4
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => vga_sprite_blue_0_198_570,
      I2 => U2_HCS(9),
      I3 => vga_sprite_blue_0_181_569,
      O => vga_sprite_blue_0_1116_561
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_166
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_236
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_235
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_234
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_233
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_232
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_231
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_714,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_174,
      O => hsync
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_164,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_163,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_172,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_171,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_170,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_182,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_181,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_180,
      O => red(0)
    );
  U2_Mcount_HCS_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(8),
      O => U2_Mcount_HCS_cy_8_rt_74
    );
  U2_Mcount_HCS_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(7),
      O => U2_Mcount_HCS_cy_7_rt_72
    );
  U2_Mcount_HCS_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(6),
      O => U2_Mcount_HCS_cy_6_rt_70
    );
  U2_Mcount_HCS_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(5),
      O => U2_Mcount_HCS_cy_5_rt_68
    );
  U2_Mcount_HCS_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => U2_Mcount_HCS_cy_4_rt_66
    );
  U2_Mcount_HCS_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(3),
      O => U2_Mcount_HCS_cy_3_rt_64
    );
  U2_Mcount_HCS_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => U2_Mcount_HCS_cy_2_rt_62
    );
  U2_Mcount_HCS_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(1),
      O => U2_Mcount_HCS_cy_1_rt_60
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_103
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_101
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_99
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_97
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_95
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_93
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_91
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_89
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(12),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_rt_242
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(11),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_11_rt_240
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001(10),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_rt_238
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(12),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_rt_295
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(11),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_11_rt_293
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001(10),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_rt_291
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(12),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_rt_348
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(11),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_11_rt_346
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001(10),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_rt_344
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000(12),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy_12_rt_277
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000(12),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy_12_rt_330
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000(12),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_383
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_rt_407
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_rt_417
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_rt_397
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_8_111 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(7),
      I2 => U2_vidon_and000098_160,
      O => vga_sprite_Msub_xpixRey_sub0000_xor_8_11
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_5_111 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_sub0000_xor_5_11
    );
  vga_sprite_Msub_xpixMona_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(3),
      O => vga_sprite_Msub_xpixMona_cy_3_rt_432
    );
  vga_sprite_Msub_xpixMona_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => vga_sprite_Msub_xpixMona_cy_2_rt_430
    );
  vga_sprite_Msub_xpixMona_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(0),
      O => vga_sprite_Msub_xpixMona_cy_0_rt_427
    );
  vga_sprite_Msub_ypixMona_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(0),
      O => vga_sprite_Msub_ypixMona_cy_0_rt_484
    );
  vga_sprite_Msub_xpixSkye_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => vga_sprite_Msub_xpixSkye_cy_2_rt_472
    );
  vga_sprite_Msub_xpixSkye_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(1),
      O => vga_sprite_Msub_xpixSkye_cy_1_rt_470
    );
  vga_sprite_Msub_xpixSkye_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(0),
      O => vga_sprite_Msub_xpixSkye_cy_0_rt_468
    );
  vga_sprite_Msub_xpixRey_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(0),
      O => vga_sprite_Msub_xpixRey_cy_0_rt_446
    );
  vga_sprite_Msub_ypixRey_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(0),
      O => vga_sprite_Msub_ypixRey_cy_0_rt_505
    );
  vga_sprite_Msub_ypixSkye_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000(0),
      O => vga_sprite_Msub_ypixSkye_cy_0_rt_542
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => vga_sprite_Msub_ypixRey_sub0000_cy_4_rt_531
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => vga_sprite_Msub_ypixRey_sub0000_cy_3_rt_529
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => vga_sprite_Msub_ypixRey_sub0000_cy_2_rt_527
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => vga_sprite_Msub_ypixRey_sub0000_cy_1_rt_525
    );
  vga_sprite_Msub_ypixRey_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => vga_sprite_Msub_ypixRey_sub0000_cy_0_rt_523
    );
  U2_Mcount_HCS_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(9),
      O => U2_Mcount_HCS_xor_9_rt_86
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_115
    );
  U2_Mcount_HCS_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_HCS_cmp_eq000010_56,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_0
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
      O => N23
    );
  U2_Mcount_HCS_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_1_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_Mcount_HCS_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_2_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_Mcount_HCS_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_3_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_Mcount_HCS_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_4_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_Mcount_HCS_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_5_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_Mcount_HCS_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_6_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_Mcount_HCS_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_7_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_Mcount_HCS_eqn_81 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_8_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_Mcount_HCS_eqn_91 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_56,
      I1 => U2_Result_9_1,
      I2 => U2_HCS_cmp_eq00005_57,
      O => U2_Mcount_HCS_eqn_9
    );
  vga_sprite_blue_and000123 : LUT4
    generic map(
      INIT => X"EAFE"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => N25,
      I2 => U2_vcs(8),
      I3 => sw_5_IBUF_234,
      O => vga_sprite_blue_and000123_580
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_4_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => sw_7_IBUF_236,
      I2 => sw_6_IBUF_235,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => sw_7_IBUF_236,
      I2 => sw_6_IBUF_235,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => sw_6_IBUF_235,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_4_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => sw_5_IBUF_234,
      I2 => sw_4_IBUF_233,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => sw_5_IBUF_234,
      I2 => sw_4_IBUF_233,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => sw_4_IBUF_233,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_4_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => sw_3_IBUF_232,
      I2 => sw_2_IBUF_231,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => sw_3_IBUF_232,
      I2 => sw_2_IBUF_231,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => sw_2_IBUF_231,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_blue_and0001122 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy(4),
      I1 => vidon,
      I2 => vga_sprite_blue_and000123_580,
      I3 => vga_sprite_blue_and000184_584,
      O => vga_sprite_blue_and0001
    );
  U2_vidon_and000018 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(3),
      I2 => U2_vidon_and000011_151,
      I3 => N27,
      O => U2_vidon_and000018_155
    );
  U2_vidon_and000059_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vidon_and000057_157,
      I2 => U2_vcs(7),
      O => N29
    );
  U2_vidon_and000059 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => N29,
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(5),
      O => U2_vidon_and000059_158
    );
  vga_sprite_blue_and0000104_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => vga_sprite_blue_and000088_578,
      I1 => U2_HCS(5),
      I2 => U2_HCS(6),
      I3 => U2_HCS(7),
      O => N31
    );
  vga_sprite_blue_and0000104 : LUT4
    generic map(
      INIT => X"1011"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(9),
      I2 => N31,
      I3 => U2_HCS(4),
      O => vga_sprite_blue_and0000104_574
    );
  vga_sprite_blue_and0000145 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy(4),
      I1 => vga_sprite_blue_and000021_576,
      I2 => vidon,
      I3 => vga_sprite_blue_and0000117_575,
      O => vga_sprite_blue_and0000
    );
  vga_sprite_blue_0_1157 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy(4),
      I1 => vga_sprite_blue_0_123,
      I2 => vidon,
      I3 => vga_sprite_blue_0_1127_562,
      O => vga_sprite_blue_0_1157_563
    );
  vga_sprite_blue_and000054_SW0 : LUT4
    generic map(
      INIT => X"10F1"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(5),
      I2 => sw_6_IBUF_235,
      I3 => U2_vcs(7),
      O => N33
    );
  vga_sprite_blue_0_156_SW0 : LUT4
    generic map(
      INIT => X"10F1"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(5),
      I2 => sw_2_IBUF_231,
      I3 => U2_vcs(7),
      O => N35
    );
  vga_sprite_Msub_xpixMona_lut_9_Q : LUT4
    generic map(
      INIT => X"363C"
    )
    port map (
      I0 => U2_vidon_and000098_160,
      I1 => U2_HCS(9),
      I2 => U2_HCS(8),
      I3 => U2_HCS(7),
      O => vga_sprite_Msub_xpixMona_lut_9_Q_442
    );
  vga_sprite_Msub_xpixMona_lut_6_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(4),
      O => vga_sprite_Msub_xpixMona_lut_6_Q_440
    );
  vga_sprite_Msub_xpixSkye_lut_8_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(7),
      I2 => U2_vidon_and000098_160,
      O => vga_sprite_Msub_xpixSkye_lut_8_Q_482
    );
  vga_sprite_Msub_xpixSkye_lut_6_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(4),
      O => vga_sprite_Msub_xpixSkye_lut_6_Q_481
    );
  vga_sprite_Msub_xpixSkye_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      O => vga_sprite_Msub_xpixSkye_lut_5_Q_480
    );
  vga_sprite_Msub_xpixRey_lut_8_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(7),
      I2 => U2_vidon_and000098_160,
      O => vga_sprite_Msub_xpixRey_lut_8_Q_462
    );
  vga_sprite_Msub_xpixRey_lut_6_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_lut_6_Q_460
    );
  vga_sprite_Msub_xpixRey_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_lut_5_Q_459
    );
  vga_sprite_blue_and000167_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(2),
      I2 => U2_HCS(3),
      I3 => U2_HCS(6),
      O => N53
    );
  vga_sprite_blue_and000167 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => N53,
      I2 => U2_HCS(4),
      I3 => U2_HCS(8),
      O => vga_sprite_blue_and000167_583
    );
  vga_sprite_blue_and000021_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(6),
      I2 => vga_sprite_blue_and00007_577,
      O => N55
    );
  vga_sprite_blue_and000021 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => U2_HCS(7),
      I2 => N55,
      I3 => U2_HCS(8),
      O => vga_sprite_blue_and000021_576
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_7_111 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixRey_sub0000_xor_7_11
    );
  vga_sprite_Msub_xpixMona_lut_9_1 : LUT4
    generic map(
      INIT => X"363C"
    )
    port map (
      I0 => U2_vidon_and000098_160,
      I1 => U2_HCS(9),
      I2 => U2_HCS(8),
      I3 => U2_HCS(7),
      O => vga_sprite_Msub_xpixMona_lut_9_1_443
    );
  vga_sprite_Msub_xpixMona_lut_9_2 : LUT4
    generic map(
      INIT => X"363C"
    )
    port map (
      I0 => U2_vidon_and000098_160,
      I1 => U2_HCS(9),
      I2 => U2_HCS(8),
      I3 => U2_HCS(7),
      O => vga_sprite_Msub_xpixMona_lut_9_2_444
    );
  vga_sprite_blue_and000123_SW0 : LUT4
    generic map(
      INIT => X"AF8E"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => U2_vcs(6),
      I2 => sw_4_IBUF_233,
      I3 => U2_vcs(5),
      O => N25
    );
  vga_sprite_blue_and0000117_SW0 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => N33,
      I1 => sw_7_IBUF_236,
      I2 => U2_vcs(8),
      O => N57
    );
  vga_sprite_blue_and0000117 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => vga_sprite_blue_and0000104_574,
      I2 => N57,
      O => vga_sprite_blue_and0000117_575
    );
  vga_sprite_blue_0_1127_SW0 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => N35,
      I1 => sw_3_IBUF_232,
      I2 => U2_vcs(8),
      O => N59
    );
  vga_sprite_blue_0_1127 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => vga_sprite_blue_0_1116_561,
      I2 => N59,
      O => vga_sprite_blue_0_1127_562
    );
  vga_sprite_Msub_xpixMona_lut_7_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixMona_lut_7_Q_441
    );
  vga_sprite_Msub_xpixRey_lut_7_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixRey_lut_7_Q_461
    );
  vga_sprite_Msub_xpixMona_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => vga_sprite_Msub_xpixMona_cy_4_rt_434
    );
  vga_sprite_Msub_xpixRey_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_cy_4_rt_451
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_176
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
  vga_sprite_Msub_xpixMona_lut_1_INV_0 : INV
    port map (
      I => U2_HCS(1),
      O => vga_sprite_Msub_xpixMona_lut_1_Q
    );
  vga_sprite_Msub_ypixMona_lut_9_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(9),
      O => vga_sprite_Msub_ypixMona_lut(9)
    );
  vga_sprite_Msub_ypixMona_lut_6_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(6),
      O => vga_sprite_Msub_ypixMona_lut(6)
    );
  vga_sprite_Msub_ypixMona_lut_5_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(5),
      O => vga_sprite_Msub_ypixMona_lut(5)
    );
  vga_sprite_Msub_ypixMona_lut_4_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(4),
      O => vga_sprite_Msub_ypixMona_lut(4)
    );
  vga_sprite_Msub_ypixMona_lut_3_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(3),
      O => vga_sprite_Msub_ypixMona_lut(3)
    );
  vga_sprite_Msub_ypixMona_lut_2_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(2),
      O => vga_sprite_Msub_ypixMona_lut(2)
    );
  vga_sprite_Msub_ypixMona_lut_1_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(1),
      O => vga_sprite_Msub_ypixMona_lut(1)
    );
  vga_sprite_Msub_xpixSkye_lut_3_INV_0 : INV
    port map (
      I => U2_HCS(3),
      O => vga_sprite_Msub_xpixSkye_lut_3_Q
    );
  vga_sprite_Msub_xpixRey_lut_3_INV_0 : INV
    port map (
      I => U2_HCS(3),
      O => vga_sprite_Msub_xpixRey_lut_3_Q
    );
  vga_sprite_Msub_xpixRey_lut_2_INV_0 : INV
    port map (
      I => U2_HCS(2),
      O => vga_sprite_Msub_xpixRey_lut_2_Q
    );
  vga_sprite_Msub_xpixRey_lut_1_INV_0 : INV
    port map (
      I => U2_HCS(1),
      O => vga_sprite_Msub_xpixRey_lut_1_Q
    );
  vga_sprite_Msub_ypixRey_lut_6_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(6),
      O => vga_sprite_Msub_ypixRey_lut(6)
    );
  vga_sprite_Msub_ypixRey_lut_5_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(5),
      O => vga_sprite_Msub_ypixRey_lut(5)
    );
  vga_sprite_Msub_ypixRey_lut_4_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(4),
      O => vga_sprite_Msub_ypixRey_lut(4)
    );
  vga_sprite_Msub_ypixRey_lut_3_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(3),
      O => vga_sprite_Msub_ypixRey_lut(3)
    );
  vga_sprite_Msub_ypixRey_lut_2_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(2),
      O => vga_sprite_Msub_ypixRey_lut(2)
    );
  vga_sprite_Msub_ypixRey_lut_1_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(1),
      O => vga_sprite_Msub_ypixRey_lut(1)
    );
  vga_sprite_Msub_ypixSkye_lut_6_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(6),
      O => vga_sprite_Msub_ypixSkye_lut(6)
    );
  vga_sprite_Msub_ypixSkye_lut_5_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(5),
      O => vga_sprite_Msub_ypixSkye_lut(5)
    );
  vga_sprite_Msub_ypixSkye_lut_4_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(4),
      O => vga_sprite_Msub_ypixSkye_lut(4)
    );
  vga_sprite_Msub_ypixSkye_lut_3_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(3),
      O => vga_sprite_Msub_ypixSkye_lut(3)
    );
  vga_sprite_Msub_ypixSkye_lut_2_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(2),
      O => vga_sprite_Msub_ypixSkye_lut(2)
    );
  vga_sprite_Msub_ypixSkye_lut_1_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(1),
      O => vga_sprite_Msub_ypixSkye_lut(1)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(9)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(8)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(7)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(6)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(5)
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_166,
      O => U2_clr_inv
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_4_111_INV_0 : INV
    port map (
      I => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_sub0000_xor_4_11
    );
  vga_sprite_Msub_ypixMona_lut_9_1_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(9),
      O => vga_sprite_Msub_ypixMona_lut_9_1
    );
  vga_sprite_Msub_ypixMona_lut_9_2_INV_0 : INV
    port map (
      I => vga_sprite_ypixRey_sub0000(9),
      O => vga_sprite_Msub_ypixMona_lut_9_2
    );
  vga_sprite_blue_and0001371 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => U2_HCS(3),
      I1 => U2_HCS(5),
      I2 => U2_HCS(4),
      I3 => U2_HCS(6),
      O => vga_sprite_blue_and0001371_582
    );
  vga_sprite_blue_and000137_f5 : MUXF5
    port map (
      I0 => vga_sprite_blue_and0001371_582,
      I1 => N1,
      S => U2_HCS(7),
      O => vga_sprite_blue_and000137
    );
  U2_vidon_and00001111 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_vcs(9),
      I2 => U2_HCS(9),
      I3 => U2_HCS(8),
      O => U2_vidon_and00001111_153
    );
  U2_vidon_and00001112 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_vcs(9),
      I2 => U2_HCS(9),
      O => U2_vidon_and00001112_154
    );
  U2_vidon_and0000111_f5 : MUXF5
    port map (
      I0 => U2_vidon_and00001112_154,
      I1 => U2_vidon_and00001111_153,
      S => U2_vidon_and000098_160,
      O => U2_vidon_and0000111
    );
  vga_sprite_blue_0_161 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => U2_HCS(4),
      I2 => U2_HCS(1),
      I3 => U2_HCS(3),
      O => vga_sprite_blue_0_161_568
    );
  vga_sprite_blue_0_16_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => vga_sprite_blue_0_161_568,
      S => U2_HCS(5),
      O => vga_sprite_blue_0_16
    );
  vga_sprite_blue_0_1231 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(7),
      I2 => U2_HCS(9),
      O => vga_sprite_blue_0_1231_565
    );
  vga_sprite_blue_0_1232 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(8),
      I2 => U2_HCS(7),
      I3 => U2_HCS(9),
      O => vga_sprite_blue_0_1232_566
    );
  vga_sprite_blue_0_123_f5 : MUXF5
    port map (
      I0 => vga_sprite_blue_0_1232_566,
      I1 => vga_sprite_blue_0_1231_565,
      S => vga_sprite_blue_0_16,
      O => vga_sprite_blue_0_123
    );
  U2_vidon_and000018_SW01 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(8),
      I2 => U2_vcs(6),
      I3 => U2_vcs(7),
      O => U2_vidon_and000018_SW0
    );
  U2_vidon_and000018_SW0_f5 : MUXF5
    port map (
      I0 => U2_vidon_and000018_SW0,
      I1 => N1,
      S => U2_vcs(9),
      O => N27
    );
  vga_sprite_red_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(7),
      I2 => MRey(7),
      O => vga_sprite_red(2)
    );
  vga_sprite_red_2_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(7),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(7),
      O => vga_sprite_red_2_1_596
    );
  vga_sprite_red_2_f5 : MUXF5
    port map (
      I0 => vga_sprite_red_2_1_596,
      I1 => vga_sprite_red(2),
      S => vga_sprite_blue_and0001,
      O => red_2_OBUF_182
    );
  vga_sprite_red_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(6),
      I2 => MRey(6),
      O => vga_sprite_red(1)
    );
  vga_sprite_red_1_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(6),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(6),
      O => vga_sprite_red_1_1_594
    );
  vga_sprite_red_1_f5 : MUXF5
    port map (
      I0 => vga_sprite_red_1_1_594,
      I1 => vga_sprite_red(1),
      S => vga_sprite_blue_and0001,
      O => red_1_OBUF_181
    );
  vga_sprite_red_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(5),
      I2 => MRey(5),
      O => vga_sprite_red(0)
    );
  vga_sprite_red_0_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(5),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(5),
      O => vga_sprite_red_0_1_592
    );
  vga_sprite_red_0_f5 : MUXF5
    port map (
      I0 => vga_sprite_red_0_1_592,
      I1 => vga_sprite_red(0),
      S => vga_sprite_blue_and0001,
      O => red_0_OBUF_180
    );
  vga_sprite_green_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(4),
      I2 => MRey(4),
      O => vga_sprite_green(2)
    );
  vga_sprite_green_2_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(4),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(4),
      O => vga_sprite_green_2_1_590
    );
  vga_sprite_green_2_f5 : MUXF5
    port map (
      I0 => vga_sprite_green_2_1_590,
      I1 => vga_sprite_green(2),
      S => vga_sprite_blue_and0001,
      O => green_2_OBUF_172
    );
  vga_sprite_green_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(3),
      I2 => MRey(3),
      O => vga_sprite_green(1)
    );
  vga_sprite_green_1_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(3),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(3),
      O => vga_sprite_green_1_1_588
    );
  vga_sprite_green_1_f5 : MUXF5
    port map (
      I0 => vga_sprite_green_1_1_588,
      I1 => vga_sprite_green(1),
      S => vga_sprite_blue_and0001,
      O => green_1_OBUF_171
    );
  vga_sprite_green_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(2),
      I2 => MRey(2),
      O => vga_sprite_green(0)
    );
  vga_sprite_green_0_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(2),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(2),
      O => vga_sprite_green_0_1_586
    );
  vga_sprite_green_0_f5 : MUXF5
    port map (
      I0 => vga_sprite_green_0_1_586,
      I1 => vga_sprite_green(0),
      S => vga_sprite_blue_and0001,
      O => green_0_OBUF_170
    );
  vga_sprite_blue_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(1),
      I2 => MRey(1),
      O => vga_sprite_blue(1)
    );
  vga_sprite_blue_1_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(1),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(1),
      O => vga_sprite_blue_1_1_572
    );
  vga_sprite_blue_1_f5 : MUXF5
    port map (
      I0 => vga_sprite_blue_1_1_572,
      I1 => vga_sprite_blue(1),
      S => vga_sprite_blue_and0001,
      O => blue_1_OBUF_164
    );
  vga_sprite_blue_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MSkye(0),
      I2 => MRey(0),
      O => vga_sprite_blue(0)
    );
  vga_sprite_blue_0_2 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => vga_sprite_blue_and0000,
      I1 => MMona(0),
      I2 => vga_sprite_blue_0_1157_563,
      I3 => MRey(0),
      O => vga_sprite_blue_0_1_560
    );
  vga_sprite_blue_0_f5 : MUXF5
    port map (
      I0 => vga_sprite_blue_0_1_560,
      I1 => vga_sprite_blue(0),
      S => vga_sprite_blue_and0001,
      O => blue_0_OBUF_163
    );
  U2_HCS_cmp_eq000010 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => U2_HCS(3),
      I2 => U2_HCS(8),
      I3 => U2_HCS(4),
      LO => N61,
      O => U2_HCS_cmp_eq000010_56
    );
  U2_HCS_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(7),
      LO => N62,
      O => U2_N3
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => N23,
      I3 => U2_N2,
      LO => N63,
      O => U2_vcs_cmp_eq0000_150
    );

end STRUCTURE;

