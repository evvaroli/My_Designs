--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: group_photos_top.vhd
-- /___/   /\     Timestamp: Mon Mar 24 21:13:39 2014
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
  component reymoyet
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 13 downto 0 ) 
    );
  end component;
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_36 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_37 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_1_rt_40 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_rt_42 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_3_rt_44 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_rt_46 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_5_rt_48 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_rt_50 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_7_rt_52 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_rt_54 : STD_LOGIC; 
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
  signal U2_Mcount_HCS_xor_9_rt_66 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_69 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_71 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_73 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_75 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_77 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_79 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_81 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_83 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_95 : STD_LOGIC; 
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
  signal U2_VSENABLE_117 : STD_LOGIC; 
  signal U2_clr_inv : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_129 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_10_rt_131 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_11_rt_133 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_12_rt_135 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_170 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_0_rt_184 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_0_rt_198 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_4_rt_203 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_1_Q : STD_LOGIC; 
  signal U3_Msub_xpix_lut_2_Q : STD_LOGIC; 
  signal U3_Msub_xpix_lut_3_Q : STD_LOGIC; 
  signal U3_Msub_xpix_lut_6_Q_211 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_7_Q_212 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_8_Q_213 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_9_Q_214 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_0_rt_216 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_1_rt_218 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_2_rt_220 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_3_rt_222 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_4_rt_224 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_0_rt_235 : STD_LOGIC; 
  signal U3_blue_and0000 : STD_LOGIC; 
  signal U3_blue_and00000_254 : STD_LOGIC; 
  signal U3_blue_and000016_255 : STD_LOGIC; 
  signal U3_blue_and0000169_256 : STD_LOGIC; 
  signal U3_blue_and0000197_257 : STD_LOGIC; 
  signal U3_blue_and0000248_258 : STD_LOGIC; 
  signal U3_blue_and0000257 : STD_LOGIC; 
  signal U3_blue_and0000300_260 : STD_LOGIC; 
  signal U3_blue_and0000325_261 : STD_LOGIC; 
  signal U3_blue_and000034 : STD_LOGIC; 
  signal U3_blue_and0000341_263 : STD_LOGIC; 
  signal U3_blue_and000042 : STD_LOGIC; 
  signal U3_blue_and0000421_265 : STD_LOGIC; 
  signal U3_blue_and000085_266 : STD_LOGIC; 
  signal U3_blue_and000087_267 : STD_LOGIC; 
  signal U3_xpix_addsub0000_7_bdd0 : STD_LOGIC; 
  signal blue_0_OBUF_317 : STD_LOGIC; 
  signal blue_1_OBUF_318 : STD_LOGIC; 
  signal btn_3_IBUF_320 : STD_LOGIC; 
  signal green_0_OBUF_324 : STD_LOGIC; 
  signal green_1_OBUF_325 : STD_LOGIC; 
  signal green_2_OBUF_326 : STD_LOGIC; 
  signal hsync_OBUF_328 : STD_LOGIC; 
  signal mclk_BUFGP_330 : STD_LOGIC; 
  signal red_0_OBUF_334 : STD_LOGIC; 
  signal red_1_OBUF_335 : STD_LOGIC; 
  signal red_2_OBUF_336 : STD_LOGIC; 
  signal sw_4_IBUF_355 : STD_LOGIC; 
  signal sw_5_IBUF_356 : STD_LOGIC; 
  signal sw_6_IBUF_357 : STD_LOGIC; 
  signal sw_7_IBUF_358 : STD_LOGIC; 
  signal vsync_OBUF_360 : STD_LOGIC; 
  signal M : STD_LOGIC_VECTOR ( 7 downto 0 ); 
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
  signal U3_Madd_rom_addr2_add0000_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 2 ); 
  signal U3_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal U3_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U3_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal U3_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U3_Mcompar_spriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal U3_Msub_xpix_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Msub_ypix_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Msub_ypix_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Msub_ypix_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_Msub_ypix_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U3_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U3_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal U3_xpix : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U3_xpix_addsub0000 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_ypix : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_ypix_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal rom_addr16 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
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
      C => mclk_BUFGP_330,
      CLR => btn_3_IBUF_320,
      D => Result(0),
      Q => U1_q_01
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
    );
  rey : reymoyet
    port map (
      clka => U1_q(0),
      douta(7) => M(7),
      douta(6) => M(6),
      douta(5) => M(5),
      douta(4) => M(4),
      douta(3) => M(3),
      douta(2) => M(2),
      douta(1) => M(1),
      douta(0) => M(0),
      addra(13) => rom_addr16(13),
      addra(12) => rom_addr16(12),
      addra(11) => rom_addr16(11),
      addra(10) => rom_addr16(10),
      addra(9) => rom_addr16(9),
      addra(8) => rom_addr16(8),
      addra(7) => rom_addr16(7),
      addra(6) => rom_addr16(6),
      addra(5) => rom_addr16(5),
      addra(4) => rom_addr16(4),
      addra(3) => rom_addr16(3),
      addra(2) => rom_addr16(2),
      addra(1) => rom_addr16(1),
      addra(0) => rom_addr16(0)
    );
  U2_Mcount_HCS_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(8),
      LI => U2_Mcount_HCS_xor_9_rt_66,
      O => U2_Result_9_1
    );
  U2_Mcount_HCS_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      LI => U2_Mcount_HCS_cy_8_rt_54,
      O => U2_Result_8_1
    );
  U2_Mcount_HCS_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      DI => N0,
      S => U2_Mcount_HCS_cy_8_rt_54,
      O => U2_Mcount_HCS_cy(8)
    );
  U2_Mcount_HCS_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      LI => U2_Mcount_HCS_cy_7_rt_52,
      O => U2_Result_7_1
    );
  U2_Mcount_HCS_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      DI => N0,
      S => U2_Mcount_HCS_cy_7_rt_52,
      O => U2_Mcount_HCS_cy(7)
    );
  U2_Mcount_HCS_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      LI => U2_Mcount_HCS_cy_6_rt_50,
      O => U2_Result_6_1
    );
  U2_Mcount_HCS_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      DI => N0,
      S => U2_Mcount_HCS_cy_6_rt_50,
      O => U2_Mcount_HCS_cy(6)
    );
  U2_Mcount_HCS_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      LI => U2_Mcount_HCS_cy_5_rt_48,
      O => U2_Result_5_1
    );
  U2_Mcount_HCS_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      DI => N0,
      S => U2_Mcount_HCS_cy_5_rt_48,
      O => U2_Mcount_HCS_cy(5)
    );
  U2_Mcount_HCS_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      LI => U2_Mcount_HCS_cy_4_rt_46,
      O => U2_Result_4_1
    );
  U2_Mcount_HCS_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      DI => N0,
      S => U2_Mcount_HCS_cy_4_rt_46,
      O => U2_Mcount_HCS_cy(4)
    );
  U2_Mcount_HCS_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      LI => U2_Mcount_HCS_cy_3_rt_44,
      O => U2_Result_3_1
    );
  U2_Mcount_HCS_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      DI => N0,
      S => U2_Mcount_HCS_cy_3_rt_44,
      O => U2_Mcount_HCS_cy(3)
    );
  U2_Mcount_HCS_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      LI => U2_Mcount_HCS_cy_2_rt_42,
      O => U2_Result_2_1
    );
  U2_Mcount_HCS_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      DI => N0,
      S => U2_Mcount_HCS_cy_2_rt_42,
      O => U2_Mcount_HCS_cy(2)
    );
  U2_Mcount_HCS_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      LI => U2_Mcount_HCS_cy_1_rt_40,
      O => U2_Result_1_1
    );
  U2_Mcount_HCS_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      DI => N0,
      S => U2_Mcount_HCS_cy_1_rt_40,
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
      LI => U2_Mcount_vcs_xor_9_rt_95,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_83,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_83,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_81,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_81,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_79,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_79,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_77,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_77,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_75,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_75,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_73,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_73,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_71,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_71,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_69,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_69,
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
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_9,
      Q => U2_HCS(9)
    );
  U2_HCS_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_8,
      Q => U2_HCS(8)
    );
  U2_HCS_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_7,
      Q => U2_HCS(7)
    );
  U2_HCS_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_6,
      Q => U2_HCS(6)
    );
  U2_HCS_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_5,
      Q => U2_HCS(5)
    );
  U2_HCS_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_4,
      Q => U2_HCS(4)
    );
  U2_HCS_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_3,
      Q => U2_HCS(3)
    );
  U2_HCS_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_2,
      Q => U2_HCS(2)
    );
  U2_HCS_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_1,
      Q => U2_HCS(1)
    );
  U2_HCS_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_HCS_eqn_0,
      Q => U2_HCS(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_117,
      CLR => btn_3_IBUF_320,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_VSENABLE : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_HCS_cmp_eq0000,
      Q => U2_VSENABLE_117
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_13_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(12),
      LI => U3_rom_addr2_addsub0001(13),
      O => rom_addr16(13)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_12_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(11),
      LI => U3_Madd_rom_addr2_add0000_Madd_cy_12_rt_135,
      O => rom_addr16(12)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_12_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(11),
      DI => N0,
      S => U3_Madd_rom_addr2_add0000_Madd_cy_12_rt_135,
      O => U3_Madd_rom_addr2_add0000_Madd_cy(12)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(10),
      LI => U3_Madd_rom_addr2_add0000_Madd_cy_11_rt_133,
      O => rom_addr16(11)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_11_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(10),
      DI => N0,
      S => U3_Madd_rom_addr2_add0000_Madd_cy_11_rt_133,
      O => U3_Madd_rom_addr2_add0000_Madd_cy(11)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(9),
      LI => U3_Madd_rom_addr2_add0000_Madd_cy_10_rt_131,
      O => rom_addr16(10)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(9),
      DI => N0,
      S => U3_Madd_rom_addr2_add0000_Madd_cy_10_rt_131,
      O => U3_Madd_rom_addr2_add0000_Madd_cy(10)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(8),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(9),
      O => rom_addr16(9)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(8),
      DI => U3_rom_addr2_addsub0001(9),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(9),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(9)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(9),
      I1 => U3_xpix(9),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(9)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(7),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(8),
      O => rom_addr16(8)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(7),
      DI => U3_rom_addr2_addsub0001(8),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(8),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(8)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(8),
      I1 => U3_xpix(8),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(8)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(6),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(7),
      O => rom_addr16(7)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(6),
      DI => U3_rom_addr2_addsub0001(7),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(7),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(7)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(7),
      I1 => U3_xpix(7),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(7)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(5),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(6),
      O => rom_addr16(6)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(5),
      DI => U3_rom_addr2_addsub0001(6),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(6),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(6)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(6),
      I1 => U3_xpix(6),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(6)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(4),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(5),
      O => rom_addr16(5)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(4),
      DI => U3_rom_addr2_addsub0001(5),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(5),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(5)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(5),
      I1 => U3_xpix(5),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(5)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(3),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(4),
      O => rom_addr16(4)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(3),
      DI => U3_ypix(2),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(4),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(4)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(2),
      I1 => U3_xpix(4),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(4)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(2),
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(3),
      O => rom_addr16(3)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_add0000_Madd_cy(2),
      DI => U3_ypix(1),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(3),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(3)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(1),
      I1 => U3_xpix(3),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(3)
    );
  U3_Madd_rom_addr2_add0000_Madd_xor_2_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_rom_addr2_add0000_Madd_lut(2),
      O => rom_addr16(2)
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_2_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_ypix(0),
      S => U3_Madd_rom_addr2_add0000_Madd_lut(2),
      O => U3_Madd_rom_addr2_add0000_Madd_cy(2)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(0),
      I1 => U3_xpix(2),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(2)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_13_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(12),
      LI => U3_rom_addr2_addsub0000(13),
      O => U3_rom_addr2_addsub0001(13)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_12_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(11),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_170,
      O => U3_rom_addr2_addsub0001(12)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_12_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(11),
      DI => N0,
      S => U3_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_170,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(12)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(10),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => U3_rom_addr2_addsub0001(11)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_11_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(10),
      DI => U3_rom_addr2_addsub0000(11),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(11)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(11),
      I1 => U3_ypix(9),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(11)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(9),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => U3_rom_addr2_addsub0001(10)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(9),
      DI => U3_rom_addr2_addsub0000(10),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(10)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(10),
      I1 => U3_ypix(8),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(10)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(8),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => U3_rom_addr2_addsub0001(9)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(8),
      DI => U3_rom_addr2_addsub0000(9),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(9)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(9),
      I1 => U3_ypix(7),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(9)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(7),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => U3_rom_addr2_addsub0001(8)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(7),
      DI => U3_rom_addr2_addsub0000(8),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(8)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(8),
      I1 => U3_ypix(6),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(8)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(6),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => U3_rom_addr2_addsub0001(7)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(6),
      DI => U3_rom_addr2_addsub0000(7),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(7)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(7),
      I1 => U3_ypix(5),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(7)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(5),
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => U3_rom_addr2_addsub0001(6)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0001_Madd_cy(5),
      DI => U3_rom_addr2_addsub0000(6),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(6)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(6),
      I1 => U3_ypix(4),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(6)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => U3_rom_addr2_addsub0001(5)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_ypix(0),
      S => U3_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(5)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(0),
      I1 => U3_ypix(3),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(5)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(9),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => U3_rom_addr2_addsub0000(13)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(7),
      I1 => U3_ypix(8),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(10)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(8),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => U3_rom_addr2_addsub0000(12)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(8),
      DI => U3_ypix(6),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(9)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(6),
      I1 => U3_ypix(7),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(9)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(7),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => U3_rom_addr2_addsub0000(11)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(7),
      DI => U3_ypix(5),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(8)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(5),
      I1 => U3_ypix(6),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(8)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(6),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => U3_rom_addr2_addsub0000(10)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(6),
      DI => U3_ypix(4),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(7)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(4),
      I1 => U3_ypix(5),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(7)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(5),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => U3_rom_addr2_addsub0000(9)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(5),
      DI => U3_ypix(3),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(6)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(3),
      I1 => U3_ypix(4),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(6)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(4),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => U3_rom_addr2_addsub0000(8)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(4),
      DI => U3_ypix(2),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(5)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(2),
      I1 => U3_ypix(3),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(5)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(3),
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => U3_rom_addr2_addsub0000(7)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_rom_addr2_addsub0000_Madd_cy(3),
      DI => U3_ypix(1),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(4)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(1),
      I1 => U3_ypix(2),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(4)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_xor_3_Q : XORCY
    port map (
      CI => N0,
      LI => U3_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => U3_rom_addr2_addsub0000(6)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => N0,
      DI => U3_ypix(0),
      S => U3_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy(3)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_ypix(0),
      I1 => U3_ypix(1),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(3)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(5),
      DI => U2_vcs(9),
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(6)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(4),
      DI => U2_vcs(8),
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(5)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(3),
      DI => U2_vcs(7),
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(4)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(2),
      DI => U2_vcs(6),
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(3)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => sw_5_IBUF_356,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(1),
      DI => U2_vcs(5),
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(2)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => sw_4_IBUF_355,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Mcompar_spriteon_cmp_lt0000_cy(0),
      DI => N1,
      S => U3_Mcompar_spriteon_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(1)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(4),
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Mcompar_spriteon_cmp_lt0000_cy_0_rt_184,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy(0)
    );
  U3_Msub_xpix_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(8),
      LI => U3_Msub_xpix_lut_9_Q_214,
      O => U3_xpix(9)
    );
  U3_Msub_xpix_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(7),
      LI => U3_Msub_xpix_lut_8_Q_213,
      O => U3_xpix(8)
    );
  U3_Msub_xpix_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(7),
      DI => N1,
      S => U3_Msub_xpix_lut_8_Q_213,
      O => U3_Msub_xpix_cy(8)
    );
  U3_Msub_xpix_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(6),
      LI => U3_Msub_xpix_lut_7_Q_212,
      O => U3_xpix(7)
    );
  U3_Msub_xpix_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(6),
      DI => N1,
      S => U3_Msub_xpix_lut_7_Q_212,
      O => U3_Msub_xpix_cy(7)
    );
  U3_Msub_xpix_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(5),
      LI => U3_Msub_xpix_lut_6_Q_211,
      O => U3_xpix(6)
    );
  U3_Msub_xpix_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(5),
      DI => N1,
      S => U3_Msub_xpix_lut_6_Q_211,
      O => U3_Msub_xpix_cy(6)
    );
  U3_Msub_xpix_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(4),
      LI => U3_xpix_addsub0000(5),
      O => U3_xpix(5)
    );
  U3_Msub_xpix_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(4),
      DI => N0,
      S => U3_xpix_addsub0000(5),
      O => U3_Msub_xpix_cy(5)
    );
  U3_Msub_xpix_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(3),
      LI => U3_Msub_xpix_cy_4_rt_203,
      O => U3_xpix(4)
    );
  U3_Msub_xpix_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(3),
      DI => N1,
      S => U3_Msub_xpix_cy_4_rt_203,
      O => U3_Msub_xpix_cy(4)
    );
  U3_Msub_xpix_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(2),
      LI => U3_Msub_xpix_lut_3_Q,
      O => U3_xpix(3)
    );
  U3_Msub_xpix_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(2),
      DI => N1,
      S => U3_Msub_xpix_lut_3_Q,
      O => U3_Msub_xpix_cy(3)
    );
  U3_Msub_xpix_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(1),
      LI => U3_Msub_xpix_lut_2_Q,
      O => U3_xpix(2)
    );
  U3_Msub_xpix_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(1),
      DI => N1,
      S => U3_Msub_xpix_lut_2_Q,
      O => U3_Msub_xpix_cy(2)
    );
  U3_Msub_xpix_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_xpix_cy(0),
      LI => U3_Msub_xpix_lut_1_Q,
      O => rom_addr16(1)
    );
  U3_Msub_xpix_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_xpix_cy(0),
      DI => N1,
      S => U3_Msub_xpix_lut_1_Q,
      O => U3_Msub_xpix_cy(1)
    );
  U3_Msub_xpix_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_xpix_cy_0_rt_198,
      O => rom_addr16(0)
    );
  U3_Msub_xpix_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_xpix_cy_0_rt_198,
      O => U3_Msub_xpix_cy(0)
    );
  U3_Msub_ypix_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(8),
      LI => U3_Msub_ypix_lut(9),
      O => U3_ypix(9)
    );
  U3_Msub_ypix_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(7),
      LI => U3_Msub_ypix_lut(8),
      O => U3_ypix(8)
    );
  U3_Msub_ypix_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(7),
      DI => U3_ypix_addsub0000(8),
      S => U3_Msub_ypix_lut(8),
      O => U3_Msub_ypix_cy(8)
    );
  U3_Msub_ypix_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_ypix_addsub0000(8),
      I1 => sw_7_IBUF_358,
      O => U3_Msub_ypix_lut(8)
    );
  U3_Msub_ypix_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(6),
      LI => U3_Msub_ypix_lut(7),
      O => U3_ypix(7)
    );
  U3_Msub_ypix_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(6),
      DI => U3_ypix_addsub0000(7),
      S => U3_Msub_ypix_lut(7),
      O => U3_Msub_ypix_cy(7)
    );
  U3_Msub_ypix_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_ypix_addsub0000(7),
      I1 => sw_6_IBUF_357,
      O => U3_Msub_ypix_lut(7)
    );
  U3_Msub_ypix_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(5),
      LI => U3_Msub_ypix_lut(6),
      O => U3_ypix(6)
    );
  U3_Msub_ypix_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(5),
      DI => U3_ypix_addsub0000(6),
      S => U3_Msub_ypix_lut(6),
      O => U3_Msub_ypix_cy(6)
    );
  U3_Msub_ypix_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_ypix_addsub0000(6),
      I1 => sw_5_IBUF_356,
      O => U3_Msub_ypix_lut(6)
    );
  U3_Msub_ypix_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(4),
      LI => U3_Msub_ypix_lut(5),
      O => U3_ypix(5)
    );
  U3_Msub_ypix_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(4),
      DI => U3_ypix_addsub0000(5),
      S => U3_Msub_ypix_lut(5),
      O => U3_Msub_ypix_cy(5)
    );
  U3_Msub_ypix_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U3_ypix_addsub0000(5),
      I1 => sw_4_IBUF_355,
      O => U3_Msub_ypix_lut(5)
    );
  U3_Msub_ypix_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(3),
      LI => U3_Msub_ypix_lut(4),
      O => U3_ypix(4)
    );
  U3_Msub_ypix_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(3),
      DI => N1,
      S => U3_Msub_ypix_lut(4),
      O => U3_Msub_ypix_cy(4)
    );
  U3_Msub_ypix_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(2),
      LI => U3_Msub_ypix_lut(3),
      O => U3_ypix(3)
    );
  U3_Msub_ypix_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(2),
      DI => N1,
      S => U3_Msub_ypix_lut(3),
      O => U3_Msub_ypix_cy(3)
    );
  U3_Msub_ypix_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(1),
      LI => U3_Msub_ypix_lut(2),
      O => U3_ypix(2)
    );
  U3_Msub_ypix_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(1),
      DI => N1,
      S => U3_Msub_ypix_lut(2),
      O => U3_Msub_ypix_cy(2)
    );
  U3_Msub_ypix_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_ypix_cy(0),
      LI => U3_Msub_ypix_lut(1),
      O => U3_ypix(1)
    );
  U3_Msub_ypix_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_cy(0),
      DI => N1,
      S => U3_Msub_ypix_lut(1),
      O => U3_Msub_ypix_cy(1)
    );
  U3_Msub_ypix_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_ypix_cy_0_rt_235,
      O => U3_ypix(0)
    );
  U3_Msub_ypix_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_ypix_cy_0_rt_235,
      O => U3_Msub_ypix_cy(0)
    );
  U3_Msub_ypix_addsub0000_xor_9_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(8),
      LI => U3_Msub_ypix_addsub0000_lut(9),
      O => U3_ypix_addsub0000(9)
    );
  U3_Msub_ypix_addsub0000_xor_8_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(7),
      LI => U3_Msub_ypix_addsub0000_lut(8),
      O => U3_ypix_addsub0000(8)
    );
  U3_Msub_ypix_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(7),
      DI => N1,
      S => U3_Msub_ypix_addsub0000_lut(8),
      O => U3_Msub_ypix_addsub0000_cy(8)
    );
  U3_Msub_ypix_addsub0000_xor_7_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(6),
      LI => U3_Msub_ypix_addsub0000_lut(7),
      O => U3_ypix_addsub0000(7)
    );
  U3_Msub_ypix_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(6),
      DI => N1,
      S => U3_Msub_ypix_addsub0000_lut(7),
      O => U3_Msub_ypix_addsub0000_cy(7)
    );
  U3_Msub_ypix_addsub0000_xor_6_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(5),
      LI => U3_Msub_ypix_addsub0000_lut(6),
      O => U3_ypix_addsub0000(6)
    );
  U3_Msub_ypix_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(5),
      DI => N1,
      S => U3_Msub_ypix_addsub0000_lut(6),
      O => U3_Msub_ypix_addsub0000_cy(6)
    );
  U3_Msub_ypix_addsub0000_xor_5_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(4),
      LI => U3_Msub_ypix_addsub0000_lut(5),
      O => U3_ypix_addsub0000(5)
    );
  U3_Msub_ypix_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(4),
      DI => N1,
      S => U3_Msub_ypix_addsub0000_lut(5),
      O => U3_Msub_ypix_addsub0000_cy(5)
    );
  U3_Msub_ypix_addsub0000_xor_4_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(3),
      LI => U3_Msub_ypix_addsub0000_cy_4_rt_224,
      O => U3_ypix_addsub0000(4)
    );
  U3_Msub_ypix_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(3),
      DI => N0,
      S => U3_Msub_ypix_addsub0000_cy_4_rt_224,
      O => U3_Msub_ypix_addsub0000_cy(4)
    );
  U3_Msub_ypix_addsub0000_xor_3_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(2),
      LI => U3_Msub_ypix_addsub0000_cy_3_rt_222,
      O => U3_ypix_addsub0000(3)
    );
  U3_Msub_ypix_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(2),
      DI => N0,
      S => U3_Msub_ypix_addsub0000_cy_3_rt_222,
      O => U3_Msub_ypix_addsub0000_cy(3)
    );
  U3_Msub_ypix_addsub0000_xor_2_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(1),
      LI => U3_Msub_ypix_addsub0000_cy_2_rt_220,
      O => U3_ypix_addsub0000(2)
    );
  U3_Msub_ypix_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(1),
      DI => N0,
      S => U3_Msub_ypix_addsub0000_cy_2_rt_220,
      O => U3_Msub_ypix_addsub0000_cy(2)
    );
  U3_Msub_ypix_addsub0000_xor_1_Q : XORCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(0),
      LI => U3_Msub_ypix_addsub0000_cy_1_rt_218,
      O => U3_ypix_addsub0000(1)
    );
  U3_Msub_ypix_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Msub_ypix_addsub0000_cy(0),
      DI => N0,
      S => U3_Msub_ypix_addsub0000_cy_1_rt_218,
      O => U3_Msub_ypix_addsub0000_cy(1)
    );
  U3_Msub_ypix_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Msub_ypix_addsub0000_cy_0_rt_216,
      O => U3_ypix_addsub0000(0)
    );
  U3_Msub_ypix_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U3_Msub_ypix_addsub0000_cy_0_rt_216,
      O => U3_Msub_ypix_addsub0000_cy(0)
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(8),
      I2 => U2_HCS(9),
      O => hsync_OBUF_328
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
      O => vsync_OBUF_360
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => U2_vcs_cmp_eq0000_129,
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
      I3 => N22,
      O => U2_HCS_cmp_eq00005_37
    );
  U2_HCS_cmp_eq0000111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N21,
      I1 => U2_HCS_cmp_eq00005_37,
      O => U2_HCS_cmp_eq0000
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(5),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(6),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(7),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(8),
      I1 => U2_vcs_cmp_eq0000_129,
      O => U2_Mcount_vcs_eqn_8
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => N23,
      I1 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  U3_Msub_xpix_addsub0000_xor_5_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(4),
      O => U3_xpix_addsub0000(5)
    );
  U3_red_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(7),
      O => red_2_OBUF_336
    );
  U3_red_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(6),
      O => red_1_OBUF_335
    );
  U3_red_0_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(5),
      O => red_0_OBUF_334
    );
  U3_green_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(4),
      O => green_2_OBUF_326
    );
  U3_green_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(3),
      O => green_1_OBUF_325
    );
  U3_green_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(2),
      O => green_0_OBUF_324
    );
  U3_blue_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(1),
      O => blue_1_OBUF_318
    );
  U3_blue_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_blue_and0000,
      I1 => M(0),
      O => blue_0_OBUF_317
    );
  U3_blue_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(9),
      O => U3_blue_and00000_254
    );
  U3_blue_and000085 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vcs(0),
      I3 => U2_vcs(8),
      O => U3_blue_and000085_266
    );
  U3_blue_and0000169 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(5),
      I2 => sw_4_IBUF_355,
      I3 => sw_5_IBUF_356,
      O => U3_blue_and0000169_256
    );
  U3_blue_and0000248 : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => U2_HCS(3),
      I2 => U2_HCS(4),
      I3 => U2_HCS(2),
      O => U3_blue_and0000248_258
    );
  U3_xpix_addsub0000_7_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => U2_HCS(5),
      I2 => U2_HCS(6),
      O => U3_xpix_addsub0000_7_bdd0
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_320
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_358
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_357
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_356
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_355
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_360,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_328,
      O => hsync
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_318,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => blue_0_OBUF_317,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_326,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_1_OBUF_325,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_324,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_2_OBUF_336,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_1_OBUF_335,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_334,
      O => red(0)
    );
  U2_Mcount_HCS_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(8),
      O => U2_Mcount_HCS_cy_8_rt_54
    );
  U2_Mcount_HCS_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(7),
      O => U2_Mcount_HCS_cy_7_rt_52
    );
  U2_Mcount_HCS_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(6),
      O => U2_Mcount_HCS_cy_6_rt_50
    );
  U2_Mcount_HCS_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(5),
      O => U2_Mcount_HCS_cy_5_rt_48
    );
  U2_Mcount_HCS_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => U2_Mcount_HCS_cy_4_rt_46
    );
  U2_Mcount_HCS_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(3),
      O => U2_Mcount_HCS_cy_3_rt_44
    );
  U2_Mcount_HCS_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => U2_Mcount_HCS_cy_2_rt_42
    );
  U2_Mcount_HCS_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(1),
      O => U2_Mcount_HCS_cy_1_rt_40
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_83
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_81
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_79
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_77
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_75
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_73
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_71
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_69
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(12),
      O => U3_Madd_rom_addr2_add0000_Madd_cy_12_rt_135
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(11),
      O => U3_Madd_rom_addr2_add0000_Madd_cy_11_rt_133
    );
  U3_Madd_rom_addr2_add0000_Madd_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001(10),
      O => U3_Madd_rom_addr2_add0000_Madd_cy_10_rt_131
    );
  U3_Madd_rom_addr2_addsub0001_Madd_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000(12),
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy_12_rt_170
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_0_rt_184
    );
  U3_Msub_xpix_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(0),
      O => U3_Msub_xpix_cy_0_rt_198
    );
  U3_Msub_ypix_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U3_ypix_addsub0000(0),
      O => U3_Msub_ypix_cy_0_rt_235
    );
  U3_Msub_ypix_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U3_Msub_ypix_addsub0000_cy_4_rt_224
    );
  U3_Msub_ypix_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U3_Msub_ypix_addsub0000_cy_3_rt_222
    );
  U3_Msub_ypix_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U3_Msub_ypix_addsub0000_cy_2_rt_220
    );
  U3_Msub_ypix_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U3_Msub_ypix_addsub0000_cy_1_rt_218
    );
  U3_Msub_ypix_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(0),
      O => U3_Msub_ypix_addsub0000_cy_0_rt_216
    );
  U2_Mcount_HCS_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(9),
      O => U2_Mcount_HCS_xor_9_rt_66
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_95
    );
  U2_Mcount_HCS_eqn_01 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U2_Result_0_1,
      I1 => U2_HCS_cmp_eq000010_36,
      I2 => U2_HCS_cmp_eq00005_37,
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
      O => N7
    );
  U2_Mcount_HCS_eqn_11 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_1_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_Mcount_HCS_eqn_21 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_2_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_Mcount_HCS_eqn_31 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_3_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_Mcount_HCS_eqn_41 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_4_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_Mcount_HCS_eqn_51 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_5_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_Mcount_HCS_eqn_61 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_6_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_Mcount_HCS_eqn_71 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_7_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_Mcount_HCS_eqn_81 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_Result_8_1,
      I2 => U2_HCS_cmp_eq00005_37,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_Mcount_HCS_eqn_91 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_36,
      I1 => U2_HCS_cmp_eq00005_37,
      I2 => U2_Result_9_1,
      O => U2_Mcount_HCS_eqn_9
    );
  U3_blue_and0000197_SW0 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => U3_blue_and0000169_256,
      I1 => U2_vcs(7),
      I2 => sw_6_IBUF_357,
      O => N9
    );
  U3_blue_and0000197 : LUT4
    generic map(
      INIT => X"FFB2"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => sw_7_IBUF_358,
      I2 => N9,
      I3 => U2_vcs(9),
      O => U3_blue_and0000197_257
    );
  U3_blue_and0000349_SW0 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => U3_blue_and00000_254,
      I1 => U3_blue_and000034,
      I2 => U3_blue_and000016_255,
      I3 => U3_blue_and000042,
      O => N11
    );
  U3_blue_and0000349 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U3_Mcompar_spriteon_cmp_lt0000_cy(6),
      I1 => U3_blue_and000087_267,
      I2 => U3_blue_and0000325_261,
      I3 => N11,
      O => U3_blue_and0000
    );
  U3_blue_and0000325_SW0 : LUT4
    generic map(
      INIT => X"8FFF"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => U2_HCS(4),
      I2 => U3_blue_and0000257,
      I3 => U3_blue_and0000248_258,
      O => N13
    );
  U3_blue_and0000325 : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => U3_blue_and0000300_260,
      I1 => U3_blue_and0000197_257,
      I2 => U2_HCS(8),
      I3 => N13,
      O => U3_blue_and0000325_261
    );
  U3_blue_and0000300_SW0 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => U2_HCS(4),
      I1 => U2_HCS(7),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => N15
    );
  U3_blue_and0000300 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => U2_HCS(9),
      I1 => U2_vcs(9),
      I2 => U2_HCS(8),
      I3 => N15,
      O => U3_blue_and0000300_260
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => sw_7_IBUF_358,
      I2 => sw_6_IBUF_357,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => sw_6_IBUF_357,
      I2 => sw_7_IBUF_358,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_vcs(7),
      I1 => sw_6_IBUF_357,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(4)
    );
  U3_Msub_xpix_lut_9_Q : LUT4
    generic map(
      INIT => X"6636"
    )
    port map (
      I0 => U2_HCS(8),
      I1 => U2_HCS(9),
      I2 => U2_HCS(7),
      I3 => U3_xpix_addsub0000_7_bdd0,
      O => U3_Msub_xpix_lut_9_Q_214
    );
  U3_Msub_xpix_lut_8_Q : LUT3
    generic map(
      INIT => X"C6"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(8),
      I2 => U3_xpix_addsub0000_7_bdd0,
      O => U3_Msub_xpix_lut_8_Q_213
    );
  U3_Msub_xpix_lut_6_Q : LUT3
    generic map(
      INIT => X"36"
    )
    port map (
      I0 => U2_HCS(5),
      I1 => U2_HCS(6),
      I2 => U2_HCS(4),
      O => U3_Msub_xpix_lut_6_Q_211
    );
  U3_blue_and000016_SW0 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => U2_HCS(1),
      I1 => U2_HCS(5),
      I2 => U2_HCS(2),
      I3 => U2_HCS(3),
      O => N17
    );
  U3_blue_and000016 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => N17,
      I3 => U2_HCS(6),
      O => U3_blue_and000016_255
    );
  U3_blue_and000087_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U3_blue_and000085_266,
      I2 => U2_vcs(7),
      O => N19
    );
  U3_blue_and000087 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => N19,
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(5),
      O => U3_blue_and000087_267
    );
  U3_Msub_xpix_lut_7_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => U3_Msub_xpix_lut_7_Q_212
    );
  U3_Msub_xpix_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => U3_Msub_xpix_cy_4_rt_203
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_330
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
  U3_Msub_xpix_lut_3_INV_0 : INV
    port map (
      I => U2_HCS(3),
      O => U3_Msub_xpix_lut_3_Q
    );
  U3_Msub_xpix_lut_2_INV_0 : INV
    port map (
      I => U2_HCS(2),
      O => U3_Msub_xpix_lut_2_Q
    );
  U3_Msub_xpix_lut_1_INV_0 : INV
    port map (
      I => U2_HCS(1),
      O => U3_Msub_xpix_lut_1_Q
    );
  U3_Msub_ypix_lut_9_INV_0 : INV
    port map (
      I => U3_ypix_addsub0000(9),
      O => U3_Msub_ypix_lut(9)
    );
  U3_Msub_ypix_lut_4_INV_0 : INV
    port map (
      I => U3_ypix_addsub0000(4),
      O => U3_Msub_ypix_lut(4)
    );
  U3_Msub_ypix_lut_3_INV_0 : INV
    port map (
      I => U3_ypix_addsub0000(3),
      O => U3_Msub_ypix_lut(3)
    );
  U3_Msub_ypix_lut_2_INV_0 : INV
    port map (
      I => U3_ypix_addsub0000(2),
      O => U3_Msub_ypix_lut(2)
    );
  U3_Msub_ypix_lut_1_INV_0 : INV
    port map (
      I => U3_ypix_addsub0000(1),
      O => U3_Msub_ypix_lut(1)
    );
  U3_Msub_ypix_addsub0000_lut_9_INV_0 : INV
    port map (
      I => U2_vcs(9),
      O => U3_Msub_ypix_addsub0000_lut(9)
    );
  U3_Msub_ypix_addsub0000_lut_8_INV_0 : INV
    port map (
      I => U2_vcs(8),
      O => U3_Msub_ypix_addsub0000_lut(8)
    );
  U3_Msub_ypix_addsub0000_lut_7_INV_0 : INV
    port map (
      I => U2_vcs(7),
      O => U3_Msub_ypix_addsub0000_lut(7)
    );
  U3_Msub_ypix_addsub0000_lut_6_INV_0 : INV
    port map (
      I => U2_vcs(6),
      O => U3_Msub_ypix_addsub0000_lut(6)
    );
  U3_Msub_ypix_addsub0000_lut_5_INV_0 : INV
    port map (
      I => U2_vcs(5),
      O => U3_Msub_ypix_addsub0000_lut(5)
    );
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_320,
      O => U2_clr_inv
    );
  U3_blue_and0000341 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(5),
      I2 => U2_vcs(6),
      I3 => U2_vcs(7),
      O => U3_blue_and0000341_263
    );
  U3_blue_and000034_f5 : MUXF5
    port map (
      I0 => U3_blue_and0000341_263,
      I1 => N1,
      S => U2_vcs(9),
      O => U3_blue_and000034
    );
  U3_blue_and0000421 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => U3_blue_and0000421_265
    );
  U3_blue_and000042_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U3_blue_and0000421_265,
      S => U2_vcs(4),
      O => U3_blue_and000042
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
      LO => N21,
      O => U2_HCS_cmp_eq000010_36
    );
  U2_HCS_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(7),
      LO => N22,
      O => U3_blue_and0000257
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => N7,
      I3 => U2_N2,
      LO => N23,
      O => U2_vcs_cmp_eq0000_129
    );

end STRUCTURE;

