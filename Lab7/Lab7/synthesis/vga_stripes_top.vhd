--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_stripes_top.vhd
-- /___/   /\     Timestamp: Mon Mar 24 21:05:38 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w vga_stripes_top.ngc vga_stripes_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: vga_stripes_top.ngc
-- Output file	: vga_stripes_top.vhd
-- # of Entities	: 1
-- Design Name	: vga_stripes_top
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

entity vga_stripes_top is
  port (
    vsync : out STD_LOGIC; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end vga_stripes_top;

architecture STRUCTURE of vga_stripes_top is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_26 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00002_27 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_1_rt_30 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_rt_32 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_3_rt_34 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_rt_36 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_5_rt_38 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_rt_40 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_7_rt_42 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_rt_44 : STD_LOGIC; 
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
  signal U2_Mcount_HCS_xor_9_rt_56 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_rt_59 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_rt_61 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_rt_63 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_rt_65 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_rt_67 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_rt_69 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_7_rt_71 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_rt_73 : STD_LOGIC; 
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
  signal U2_Mcount_vcs_xor_9_rt_85 : STD_LOGIC; 
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
  signal U2_VSENABLE_108 : STD_LOGIC; 
  signal U2_clr_inv : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_120 : STD_LOGIC; 
  signal U2_vidon_and00001_121 : STD_LOGIC; 
  signal U2_vidon_and0000110_122 : STD_LOGIC; 
  signal U2_vidon_and000014 : STD_LOGIC; 
  signal U2_vidon_and0000141_124 : STD_LOGIC; 
  signal U2_vidon_and000042 : STD_LOGIC; 
  signal U2_vidon_and0000421_126 : STD_LOGIC; 
  signal U2_vidon_and000073_127 : STD_LOGIC; 
  signal U2_vidon_and000094_128 : STD_LOGIC; 
  signal btn_3_IBUF_132 : STD_LOGIC; 
  signal green_0_OBUF_136 : STD_LOGIC; 
  signal hsync_OBUF_138 : STD_LOGIC; 
  signal mclk_BUFGP_140 : STD_LOGIC; 
  signal red_0_OBUF_144 : STD_LOGIC; 
  signal vsync_OBUF_146 : STD_LOGIC; 
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
      C => mclk_BUFGP_140,
      CLR => btn_3_IBUF_132,
      D => Result(0),
      Q => U1_q_01
    );
  U1_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U1_Mcount_q_lut(0),
      O => Result(0)
    );
  U2_Mcount_HCS_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(8),
      LI => U2_Mcount_HCS_xor_9_rt_56,
      O => U2_Result_9_1
    );
  U2_Mcount_HCS_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      LI => U2_Mcount_HCS_cy_8_rt_44,
      O => U2_Result_8_1
    );
  U2_Mcount_HCS_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(7),
      DI => N0,
      S => U2_Mcount_HCS_cy_8_rt_44,
      O => U2_Mcount_HCS_cy(8)
    );
  U2_Mcount_HCS_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      LI => U2_Mcount_HCS_cy_7_rt_42,
      O => U2_Result_7_1
    );
  U2_Mcount_HCS_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(6),
      DI => N0,
      S => U2_Mcount_HCS_cy_7_rt_42,
      O => U2_Mcount_HCS_cy(7)
    );
  U2_Mcount_HCS_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      LI => U2_Mcount_HCS_cy_6_rt_40,
      O => U2_Result_6_1
    );
  U2_Mcount_HCS_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(5),
      DI => N0,
      S => U2_Mcount_HCS_cy_6_rt_40,
      O => U2_Mcount_HCS_cy(6)
    );
  U2_Mcount_HCS_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      LI => U2_Mcount_HCS_cy_5_rt_38,
      O => U2_Result_5_1
    );
  U2_Mcount_HCS_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(4),
      DI => N0,
      S => U2_Mcount_HCS_cy_5_rt_38,
      O => U2_Mcount_HCS_cy(5)
    );
  U2_Mcount_HCS_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      LI => U2_Mcount_HCS_cy_4_rt_36,
      O => U2_Result_4_1
    );
  U2_Mcount_HCS_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(3),
      DI => N0,
      S => U2_Mcount_HCS_cy_4_rt_36,
      O => U2_Mcount_HCS_cy(4)
    );
  U2_Mcount_HCS_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      LI => U2_Mcount_HCS_cy_3_rt_34,
      O => U2_Result_3_1
    );
  U2_Mcount_HCS_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(2),
      DI => N0,
      S => U2_Mcount_HCS_cy_3_rt_34,
      O => U2_Mcount_HCS_cy(3)
    );
  U2_Mcount_HCS_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      LI => U2_Mcount_HCS_cy_2_rt_32,
      O => U2_Result_2_1
    );
  U2_Mcount_HCS_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(1),
      DI => N0,
      S => U2_Mcount_HCS_cy_2_rt_32,
      O => U2_Mcount_HCS_cy(2)
    );
  U2_Mcount_HCS_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      LI => U2_Mcount_HCS_cy_1_rt_30,
      O => U2_Result_1_1
    );
  U2_Mcount_HCS_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_HCS_cy(0),
      DI => N0,
      S => U2_Mcount_HCS_cy_1_rt_30,
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
      LI => U2_Mcount_vcs_xor_9_rt_85,
      O => U2_Result(9)
    );
  U2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      LI => U2_Mcount_vcs_cy_8_rt_73,
      O => U2_Result(8)
    );
  U2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(7),
      DI => N0,
      S => U2_Mcount_vcs_cy_8_rt_73,
      O => U2_Mcount_vcs_cy(8)
    );
  U2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      LI => U2_Mcount_vcs_cy_7_rt_71,
      O => U2_Result(7)
    );
  U2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(6),
      DI => N0,
      S => U2_Mcount_vcs_cy_7_rt_71,
      O => U2_Mcount_vcs_cy(7)
    );
  U2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      LI => U2_Mcount_vcs_cy_6_rt_69,
      O => U2_Result(6)
    );
  U2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(5),
      DI => N0,
      S => U2_Mcount_vcs_cy_6_rt_69,
      O => U2_Mcount_vcs_cy(6)
    );
  U2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      LI => U2_Mcount_vcs_cy_5_rt_67,
      O => U2_Result(5)
    );
  U2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(4),
      DI => N0,
      S => U2_Mcount_vcs_cy_5_rt_67,
      O => U2_Mcount_vcs_cy(5)
    );
  U2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      LI => U2_Mcount_vcs_cy_4_rt_65,
      O => U2_Result(4)
    );
  U2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(3),
      DI => N0,
      S => U2_Mcount_vcs_cy_4_rt_65,
      O => U2_Mcount_vcs_cy(4)
    );
  U2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      LI => U2_Mcount_vcs_cy_3_rt_63,
      O => U2_Result(3)
    );
  U2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(2),
      DI => N0,
      S => U2_Mcount_vcs_cy_3_rt_63,
      O => U2_Mcount_vcs_cy(3)
    );
  U2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      LI => U2_Mcount_vcs_cy_2_rt_61,
      O => U2_Result(2)
    );
  U2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(1),
      DI => N0,
      S => U2_Mcount_vcs_cy_2_rt_61,
      O => U2_Mcount_vcs_cy(2)
    );
  U2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      LI => U2_Mcount_vcs_cy_1_rt_59,
      O => U2_Result(1)
    );
  U2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_vcs_cy(0),
      DI => N0,
      S => U2_Mcount_vcs_cy_1_rt_59,
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
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_9,
      Q => U2_HCS(9)
    );
  U2_HCS_8 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_8,
      Q => U2_HCS(8)
    );
  U2_HCS_7 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_7,
      Q => U2_HCS(7)
    );
  U2_HCS_6 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_6,
      Q => U2_HCS(6)
    );
  U2_HCS_5 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_5,
      Q => U2_HCS(5)
    );
  U2_HCS_4 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_4,
      Q => U2_HCS(4)
    );
  U2_HCS_3 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_3,
      Q => U2_HCS(3)
    );
  U2_HCS_2 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_2,
      Q => U2_HCS(2)
    );
  U2_HCS_1 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_1,
      Q => U2_HCS(1)
    );
  U2_HCS_0 : FDC
    port map (
      C => U1_q(0),
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_HCS_eqn_0,
      Q => U2_HCS(0)
    );
  U2_vcs_9 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_9,
      Q => U2_vcs(9)
    );
  U2_vcs_8 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_8,
      Q => U2_vcs(8)
    );
  U2_vcs_7 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_7,
      Q => U2_vcs(7)
    );
  U2_vcs_6 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_6,
      Q => U2_vcs(6)
    );
  U2_vcs_5 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_5,
      Q => U2_vcs(5)
    );
  U2_vcs_4 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_4,
      Q => U2_vcs(4)
    );
  U2_vcs_3 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_3,
      Q => U2_vcs(3)
    );
  U2_vcs_2 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_2,
      Q => U2_vcs(2)
    );
  U2_vcs_1 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_1,
      Q => U2_vcs(1)
    );
  U2_vcs_0 : FDCE
    port map (
      C => U1_q(0),
      CE => U2_VSENABLE_108,
      CLR => btn_3_IBUF_132,
      D => U2_Mcount_vcs_eqn_0,
      Q => U2_vcs(0)
    );
  U2_VSENABLE : FDE
    port map (
      C => U1_q(0),
      CE => U2_clr_inv,
      D => U2_HCS_cmp_eq0000,
      Q => U2_VSENABLE_108
    );
  U2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(8),
      I2 => U2_HCS(9),
      O => hsync_OBUF_138
    );
  U2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(2),
      I2 => U2_vcs(1),
      O => N01
    );
  U2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N01,
      I1 => U2_vcs(4),
      I2 => U2_vcs(9),
      I3 => U2_N2,
      O => vsync_OBUF_146
    );
  U2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(0),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_vcs(8),
      I1 => U2_vcs(6),
      I2 => U2_vcs(5),
      I3 => U2_vcs(7),
      O => U2_N2
    );
  U2_HCS_cmp_eq000012 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N12,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_HCS_cmp_eq000010_26,
      O => U2_HCS_cmp_eq0000
    );
  U2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(1),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(2),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(3),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(4),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(5),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(6),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_Result(7),
      I1 => U2_vcs_cmp_eq0000_120,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => N13,
      I1 => U2_Result(8),
      O => U2_Mcount_vcs_eqn_8
    );
  U2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_vcs_cmp_eq0000_120,
      I1 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  U2_vidon_and00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_vcs(6),
      I1 => U2_vcs(7),
      O => U2_vidon_and00001_121
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
      O => U2_vidon_and000094_128
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_132
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_146,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_138,
      O => hsync
    );
  blue_1_OBUF : OBUF
    port map (
      I => N0,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => N0,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_0_OBUF_136,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_0_OBUF_136,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_136,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => red_0_OBUF_144,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => red_0_OBUF_144,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => red_0_OBUF_144,
      O => red(0)
    );
  U2_Mcount_HCS_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(8),
      O => U2_Mcount_HCS_cy_8_rt_44
    );
  U2_Mcount_HCS_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(7),
      O => U2_Mcount_HCS_cy_7_rt_42
    );
  U2_Mcount_HCS_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(6),
      O => U2_Mcount_HCS_cy_6_rt_40
    );
  U2_Mcount_HCS_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(5),
      O => U2_Mcount_HCS_cy_5_rt_38
    );
  U2_Mcount_HCS_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(4),
      O => U2_Mcount_HCS_cy_4_rt_36
    );
  U2_Mcount_HCS_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(3),
      O => U2_Mcount_HCS_cy_3_rt_34
    );
  U2_Mcount_HCS_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(2),
      O => U2_Mcount_HCS_cy_2_rt_32
    );
  U2_Mcount_HCS_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(1),
      O => U2_Mcount_HCS_cy_1_rt_30
    );
  U2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(8),
      O => U2_Mcount_vcs_cy_8_rt_73
    );
  U2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(7),
      O => U2_Mcount_vcs_cy_7_rt_71
    );
  U2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(6),
      O => U2_Mcount_vcs_cy_6_rt_69
    );
  U2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(5),
      O => U2_Mcount_vcs_cy_5_rt_67
    );
  U2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(4),
      O => U2_Mcount_vcs_cy_4_rt_65
    );
  U2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(3),
      O => U2_Mcount_vcs_cy_3_rt_63
    );
  U2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(2),
      O => U2_Mcount_vcs_cy_2_rt_61
    );
  U2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(1),
      O => U2_Mcount_vcs_cy_1_rt_59
    );
  U2_Mcount_HCS_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_HCS(9),
      O => U2_Mcount_HCS_xor_9_rt_56
    );
  U2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_vcs(9),
      O => U2_Mcount_vcs_xor_9_rt_85
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_vcs(3),
      I2 => U2_vcs(2),
      I3 => U2_vcs(4),
      O => N4
    );
  U2_Mcount_HCS_eqn_01 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => U2_N3,
      I1 => U2_Result_0_1,
      I2 => U2_HCS_cmp_eq00002_27,
      I3 => U2_HCS_cmp_eq000010_26,
      O => U2_Mcount_HCS_eqn_0
    );
  U2_vidon_and0000110_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U2_HCS(7),
      I1 => U2_HCS(4),
      I2 => U2_HCS(5),
      I3 => U2_HCS(6),
      O => N6
    );
  U2_vidon_and0000110 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U2_vcs(9),
      I1 => U2_HCS(8),
      I2 => U2_HCS(9),
      I3 => N6,
      O => U2_vidon_and0000110_122
    );
  U3_red_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vidon_and000073_127,
      I1 => U2_vidon_and000094_128,
      I2 => U2_vidon_and0000110_122,
      I3 => U2_vcs(4),
      O => red_0_OBUF_144
    );
  U3_green_1_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U2_vcs(4),
      I1 => U2_vidon_and000073_127,
      I2 => U2_vidon_and000094_128,
      I3 => U2_vidon_and0000110_122,
      O => green_0_OBUF_136
    );
  U2_Mcount_HCS_eqn_11 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => N11,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_1_1,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_Mcount_HCS_eqn_21 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => N10,
      I2 => U2_N3,
      I3 => U2_Result_2_1,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_Mcount_HCS_eqn_31 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_3_1,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_Mcount_HCS_eqn_41 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_4_1,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_Mcount_HCS_eqn_51 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_5_1,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_Mcount_HCS_eqn_61 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_6_1,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_Mcount_HCS_eqn_71 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_7_1,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_Mcount_HCS_eqn_81 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_8_1,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_Mcount_HCS_eqn_91 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => U2_HCS_cmp_eq000010_26,
      I1 => U2_HCS_cmp_eq00002_27,
      I2 => U2_N3,
      I3 => U2_Result_9_1,
      O => U2_Mcount_HCS_eqn_9
    );
  U1_q_0_BUFG : BUFG
    port map (
      I => U1_q_01,
      O => U1_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_140
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
  U2_clr_inv1_INV_0 : INV
    port map (
      I => btn_3_IBUF_132,
      O => U2_clr_inv
    );
  U2_vidon_and000073 : MUXF5
    port map (
      I0 => N8,
      I1 => N9,
      S => U2_vcs(8),
      O => U2_vidon_and000073_127
    );
  U2_vidon_and000073_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_vidon_and000014,
      I1 => U2_vcs(5),
      I2 => U2_vcs(9),
      I3 => U2_vidon_and00001_121,
      O => N8
    );
  U2_vidon_and000073_G : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => U2_vcs(2),
      I1 => U2_vcs(3),
      I2 => U2_vidon_and000042,
      I3 => U2_vcs(0),
      O => N9
    );
  U2_vidon_and0000141 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_vcs(3),
      I1 => U2_vcs(0),
      I2 => U2_vcs(2),
      I3 => U2_vcs(1),
      O => U2_vidon_and0000141_124
    );
  U2_vidon_and000014_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => U2_vidon_and0000141_124,
      S => U2_vcs(4),
      O => U2_vidon_and000014
    );
  U2_vidon_and0000421 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_vcs(5),
      I1 => U2_vcs(1),
      I2 => U2_vcs(4),
      I3 => U2_vcs(6),
      O => U2_vidon_and0000421_126
    );
  U2_vidon_and000042_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => U2_vidon_and0000421_126,
      S => U2_vcs(7),
      O => U2_vidon_and000042
    );
  U2_HCS_cmp_eq00002 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_HCS(0),
      I1 => U2_HCS(1),
      I2 => U2_HCS(9),
      LO => N10,
      O => U2_HCS_cmp_eq00002_27
    );
  U2_HCS_cmp_eq000010 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_HCS(2),
      I1 => U2_HCS(3),
      I2 => U2_HCS(4),
      I3 => U2_HCS(8),
      LO => N11,
      O => U2_HCS_cmp_eq000010_26
    );
  U2_HCS_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U2_HCS(6),
      I1 => U2_HCS(5),
      I2 => U2_HCS(7),
      LO => N12,
      O => U2_N3
    );
  U2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U2_vcs(0),
      I1 => U2_vcs(1),
      I2 => U2_N2,
      I3 => N4,
      LO => N13,
      O => U2_vcs_cmp_eq0000_120
    );

end STRUCTURE;

