--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: EuclidsGCD_top2.vhd
-- /___/   /\     Timestamp: Sun Feb 16 21:59:22 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w EuclidsGCD_top2.ngc EuclidsGCD_top2.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: EuclidsGCD_top2.ngc
-- Output file	: EuclidsGCD_top2.vhd
-- # of Entities	: 1
-- Design Name	: EuclidsGCD_top2
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

entity EuclidsGCD_top2 is
  port (
    dp : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 2 ); 
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end EuclidsGCD_top2;

architecture STRUCTURE of EuclidsGCD_top2 is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal SW_0_IBUF_37 : STD_LOGIC; 
  signal SW_1_IBUF_38 : STD_LOGIC; 
  signal SW_2_IBUF_39 : STD_LOGIC; 
  signal SW_3_IBUF_40 : STD_LOGIC; 
  signal SW_4_IBUF_41 : STD_LOGIC; 
  signal SW_5_IBUF_42 : STD_LOGIC; 
  signal SW_6_IBUF_43 : STD_LOGIC; 
  signal SW_7_IBUF_44 : STD_LOGIC; 
  signal a_to_g_0_OBUF_52 : STD_LOGIC; 
  signal a_to_g_1_OBUF_53 : STD_LOGIC; 
  signal a_to_g_2_OBUF_54 : STD_LOGIC; 
  signal a_to_g_3_OBUF_55 : STD_LOGIC; 
  signal a_to_g_4_OBUF_56 : STD_LOGIC; 
  signal a_to_g_5_OBUF_57 : STD_LOGIC; 
  signal a_to_g_6_OBUF_58 : STD_LOGIC; 
  signal an_0_OBUF_63 : STD_LOGIC; 
  signal an_1_OBUF_64 : STD_LOGIC; 
  signal an_2_OBUF_65 : STD_LOGIC; 
  signal btn_2_IBUF_68 : STD_LOGIC; 
  signal btn_3_IBUF_69 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_rt_72 : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_rt_74 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_rt_76 : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_rt_78 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_rt_80 : STD_LOGIC; 
  signal cd_Mcount_q_cy_15_rt_82 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_rt_84 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_rt_86 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_rt_88 : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_rt_90 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_rt_92 : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_rt_94 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_rt_96 : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_rt_98 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_rt_100 : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_rt_102 : STD_LOGIC; 
  signal cd_Mcount_q_xor_17_rt_104 : STD_LOGIC; 
  signal cp_delay1_123 : STD_LOGIC; 
  signal cp_delay2_124 : STD_LOGIC; 
  signal cp_delay3_125 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_143 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_0_not0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000133_146 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_not0001 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload112_148 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload125_149 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000133_151 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_152 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_not0002 : STD_LOGIC; 
  signal gcd_submax_z_0_and0000 : STD_LOGIC; 
  signal gcd_submax_z_0_and0001 : STD_LOGIC; 
  signal gcd_submax_z_1_and0000 : STD_LOGIC; 
  signal gcd_submax_z_1_and0001 : STD_LOGIC; 
  signal gcd_submax_z_2_and0000 : STD_LOGIC; 
  signal gcd_submax_z_2_and0001 : STD_LOGIC; 
  signal gcd_submax_z_3_and0000 : STD_LOGIC; 
  signal gcd_submax_z_3_and000011 : STD_LOGIC; 
  signal gcd_submax_z_3_and0000111_168 : STD_LOGIC; 
  signal gcd_submax_z_3_and0001 : STD_LOGIC; 
  signal gcd_sxload : STD_LOGIC; 
  signal gcd_syload : STD_LOGIC; 
  signal mclk_BUFGP_177 : STD_LOGIC; 
  signal sclk : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_10_rt_181 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_11_rt_183 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_12_rt_185 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_13_rt_187 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_14_rt_189 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_15_rt_191 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_16_rt_193 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_17_rt_195 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_18_rt_197 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_1_rt_199 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_2_rt_201 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_3_rt_203 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_4_rt_205 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_5_rt_207 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_6_rt_209 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_7_rt_211 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_8_rt_213 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_9_rt_215 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_xor_19_rt_217 : STD_LOGIC; 
  signal x7seg_Mmux_digit2 : STD_LOGIC; 
  signal x7seg_Mmux_digit21_219 : STD_LOGIC; 
  signal x7seg_Mmux_digit4 : STD_LOGIC; 
  signal x7seg_Mmux_digit41_221 : STD_LOGIC; 
  signal x7seg_Mmux_digit6 : STD_LOGIC; 
  signal x7seg_Mmux_digit61_223 : STD_LOGIC; 
  signal x7seg_Mmux_digit8 : STD_LOGIC; 
  signal x7seg_Mmux_digit81_225 : STD_LOGIC; 
  signal x7seg_N12 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal cd_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gcd_mxbus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_mybus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_registerX_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_registerY_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_Msub_z_mux0001_lut : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal gcd_submax_z : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal x7seg_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal x7seg_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7seg_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7seg_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal x7seg_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
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
      C => cd_q(17),
      CLR => btn_3_IBUF_69,
      D => cp_delay2_124,
      Q => cp_delay3_125
    );
  cp_delay2 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_69,
      D => cp_delay1_123,
      Q => cp_delay2_124
    );
  cp_delay1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_69,
      D => btn_2_IBUF_68,
      Q => cp_delay1_123
    );
  gcd_submax_z_0 : LDCP
    port map (
      CLR => gcd_submax_z_0_and0000,
      D => gcd_submax_z_mux0001(0),
      G => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      PRE => gcd_submax_z_0_and0001,
      Q => gcd_submax_z(0)
    );
  gcd_submax_z_1 : LDCP
    port map (
      CLR => gcd_submax_z_1_and0000,
      D => gcd_submax_z_mux0001(1),
      G => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      PRE => gcd_submax_z_1_and0001,
      Q => gcd_submax_z(1)
    );
  gcd_submax_z_2 : LDCP
    port map (
      CLR => gcd_submax_z_2_and0000,
      D => gcd_submax_z_mux0001(2),
      G => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      PRE => gcd_submax_z_2_and0001,
      Q => gcd_submax_z(2)
    );
  gcd_submax_z_3 : LDCP
    port map (
      CLR => gcd_submax_z_3_and0000,
      D => gcd_submax_z_mux0001(3),
      G => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      PRE => gcd_submax_z_3_and0001,
      Q => gcd_submax_z(3)
    );
  gcd_registerX_q_0 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_69,
      D => gcd_mxbus(0),
      Q => gcd_registerX_q(0)
    );
  gcd_registerX_q_1 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_69,
      D => gcd_mxbus(1),
      Q => gcd_registerX_q(1)
    );
  gcd_registerX_q_2 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_69,
      D => gcd_mxbus(2),
      Q => gcd_registerX_q(2)
    );
  gcd_registerX_q_3 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_69,
      D => gcd_mxbus(3),
      Q => gcd_registerX_q(3)
    );
  gcd_registerY_q_0 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_69,
      D => gcd_mybus(0),
      Q => gcd_registerY_q(0)
    );
  gcd_registerY_q_1 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_69,
      D => gcd_mybus(1),
      Q => gcd_registerY_q(1)
    );
  gcd_registerY_q_2 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_69,
      D => gcd_mybus(2),
      Q => gcd_registerY_q(2)
    );
  gcd_registerY_q_3 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_69,
      D => gcd_mybus(3),
      Q => gcd_registerY_q(3)
    );
  gcd_regmuxctrl_xmuxsel : LDCP
    port map (
      CLR => gcd_regmuxctrl_xmuxsel_0_not0000,
      D => N1,
      G => gcd_regmuxctrl_xmuxsel_not0001,
      PRE => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      Q => gcd_regmuxctrl_xmuxsel_143
    );
  gcd_regmuxctrl_ymuxsel : LDC
    port map (
      CLR => gcd_regmuxctrl_xmuxsel_0_not0000,
      D => N1,
      G => gcd_regmuxctrl_ymuxsel_not0002,
      Q => gcd_regmuxctrl_ymuxsel_152
    );
  cd_q_0 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(0),
      Q => cd_q(0)
    );
  cd_q_1 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(1),
      Q => cd_q(1)
    );
  cd_q_2 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(2),
      Q => cd_q(2)
    );
  cd_q_3 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(3),
      Q => cd_q(3)
    );
  cd_q_4 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(4),
      Q => cd_q(4)
    );
  cd_q_5 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(5),
      Q => cd_q(5)
    );
  cd_q_6 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(6),
      Q => cd_q(6)
    );
  cd_q_7 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(7),
      Q => cd_q(7)
    );
  cd_q_8 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(8),
      Q => cd_q(8)
    );
  cd_q_9 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(9),
      Q => cd_q(9)
    );
  cd_q_10 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(10),
      Q => cd_q(10)
    );
  cd_q_11 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(11),
      Q => cd_q(11)
    );
  cd_q_12 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(12),
      Q => cd_q(12)
    );
  cd_q_13 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(13),
      Q => cd_q(13)
    );
  cd_q_14 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(14),
      Q => cd_q(14)
    );
  cd_q_15 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(15),
      Q => cd_q(15)
    );
  cd_q_16 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(16),
      Q => cd_q(16)
    );
  cd_q_17 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => Result(17),
      Q => cd_q(17)
    );
  cd_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => cd_Mcount_q_lut(0),
      O => cd_Mcount_q_cy(0)
    );
  cd_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => cd_Mcount_q_lut(0),
      O => Result(0)
    );
  cd_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(0),
      DI => N0,
      S => cd_Mcount_q_cy_1_rt_86,
      O => cd_Mcount_q_cy(1)
    );
  cd_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(0),
      LI => cd_Mcount_q_cy_1_rt_86,
      O => Result(1)
    );
  cd_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(1),
      DI => N0,
      S => cd_Mcount_q_cy_2_rt_88,
      O => cd_Mcount_q_cy(2)
    );
  cd_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(1),
      LI => cd_Mcount_q_cy_2_rt_88,
      O => Result(2)
    );
  cd_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(2),
      DI => N0,
      S => cd_Mcount_q_cy_3_rt_90,
      O => cd_Mcount_q_cy(3)
    );
  cd_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(2),
      LI => cd_Mcount_q_cy_3_rt_90,
      O => Result(3)
    );
  cd_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(3),
      DI => N0,
      S => cd_Mcount_q_cy_4_rt_92,
      O => cd_Mcount_q_cy(4)
    );
  cd_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(3),
      LI => cd_Mcount_q_cy_4_rt_92,
      O => Result(4)
    );
  cd_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(4),
      DI => N0,
      S => cd_Mcount_q_cy_5_rt_94,
      O => cd_Mcount_q_cy(5)
    );
  cd_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(4),
      LI => cd_Mcount_q_cy_5_rt_94,
      O => Result(5)
    );
  cd_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(5),
      DI => N0,
      S => cd_Mcount_q_cy_6_rt_96,
      O => cd_Mcount_q_cy(6)
    );
  cd_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(5),
      LI => cd_Mcount_q_cy_6_rt_96,
      O => Result(6)
    );
  cd_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(6),
      DI => N0,
      S => cd_Mcount_q_cy_7_rt_98,
      O => cd_Mcount_q_cy(7)
    );
  cd_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(6),
      LI => cd_Mcount_q_cy_7_rt_98,
      O => Result(7)
    );
  cd_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(7),
      DI => N0,
      S => cd_Mcount_q_cy_8_rt_100,
      O => cd_Mcount_q_cy(8)
    );
  cd_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(7),
      LI => cd_Mcount_q_cy_8_rt_100,
      O => Result(8)
    );
  cd_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(8),
      DI => N0,
      S => cd_Mcount_q_cy_9_rt_102,
      O => cd_Mcount_q_cy(9)
    );
  cd_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(8),
      LI => cd_Mcount_q_cy_9_rt_102,
      O => Result(9)
    );
  cd_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(9),
      DI => N0,
      S => cd_Mcount_q_cy_10_rt_72,
      O => cd_Mcount_q_cy(10)
    );
  cd_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(9),
      LI => cd_Mcount_q_cy_10_rt_72,
      O => Result(10)
    );
  cd_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(10),
      DI => N0,
      S => cd_Mcount_q_cy_11_rt_74,
      O => cd_Mcount_q_cy(11)
    );
  cd_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(10),
      LI => cd_Mcount_q_cy_11_rt_74,
      O => Result(11)
    );
  cd_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(11),
      DI => N0,
      S => cd_Mcount_q_cy_12_rt_76,
      O => cd_Mcount_q_cy(12)
    );
  cd_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(11),
      LI => cd_Mcount_q_cy_12_rt_76,
      O => Result(12)
    );
  cd_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(12),
      DI => N0,
      S => cd_Mcount_q_cy_13_rt_78,
      O => cd_Mcount_q_cy(13)
    );
  cd_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(12),
      LI => cd_Mcount_q_cy_13_rt_78,
      O => Result(13)
    );
  cd_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(13),
      DI => N0,
      S => cd_Mcount_q_cy_14_rt_80,
      O => cd_Mcount_q_cy(14)
    );
  cd_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(13),
      LI => cd_Mcount_q_cy_14_rt_80,
      O => Result(14)
    );
  cd_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(14),
      DI => N0,
      S => cd_Mcount_q_cy_15_rt_82,
      O => cd_Mcount_q_cy(15)
    );
  cd_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(14),
      LI => cd_Mcount_q_cy_15_rt_82,
      O => Result(15)
    );
  cd_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(15),
      DI => N0,
      S => cd_Mcount_q_cy_16_rt_84,
      O => cd_Mcount_q_cy(16)
    );
  cd_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(15),
      LI => cd_Mcount_q_cy_16_rt_84,
      O => Result(16)
    );
  cd_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(16),
      LI => cd_Mcount_q_xor_17_rt_104,
      O => Result(17)
    );
  x7seg_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(18),
      LI => x7seg_Mcount_clkdiv_xor_19_rt_217,
      O => x7seg_Result(19)
    );
  x7seg_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(17),
      LI => x7seg_Mcount_clkdiv_cy_18_rt_197,
      O => x7seg_Result(18)
    );
  x7seg_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_18_rt_197,
      O => x7seg_Mcount_clkdiv_cy(18)
    );
  x7seg_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(16),
      LI => x7seg_Mcount_clkdiv_cy_17_rt_195,
      O => x7seg_Result(17)
    );
  x7seg_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_17_rt_195,
      O => x7seg_Mcount_clkdiv_cy(17)
    );
  x7seg_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(15),
      LI => x7seg_Mcount_clkdiv_cy_16_rt_193,
      O => x7seg_Result(16)
    );
  x7seg_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_16_rt_193,
      O => x7seg_Mcount_clkdiv_cy(16)
    );
  x7seg_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(14),
      LI => x7seg_Mcount_clkdiv_cy_15_rt_191,
      O => x7seg_Result(15)
    );
  x7seg_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_15_rt_191,
      O => x7seg_Mcount_clkdiv_cy(15)
    );
  x7seg_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(13),
      LI => x7seg_Mcount_clkdiv_cy_14_rt_189,
      O => x7seg_Result(14)
    );
  x7seg_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_14_rt_189,
      O => x7seg_Mcount_clkdiv_cy(14)
    );
  x7seg_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(12),
      LI => x7seg_Mcount_clkdiv_cy_13_rt_187,
      O => x7seg_Result(13)
    );
  x7seg_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_13_rt_187,
      O => x7seg_Mcount_clkdiv_cy(13)
    );
  x7seg_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(11),
      LI => x7seg_Mcount_clkdiv_cy_12_rt_185,
      O => x7seg_Result(12)
    );
  x7seg_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_12_rt_185,
      O => x7seg_Mcount_clkdiv_cy(12)
    );
  x7seg_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(10),
      LI => x7seg_Mcount_clkdiv_cy_11_rt_183,
      O => x7seg_Result(11)
    );
  x7seg_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_11_rt_183,
      O => x7seg_Mcount_clkdiv_cy(11)
    );
  x7seg_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(9),
      LI => x7seg_Mcount_clkdiv_cy_10_rt_181,
      O => x7seg_Result(10)
    );
  x7seg_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_10_rt_181,
      O => x7seg_Mcount_clkdiv_cy(10)
    );
  x7seg_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(8),
      LI => x7seg_Mcount_clkdiv_cy_9_rt_215,
      O => x7seg_Result(9)
    );
  x7seg_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_9_rt_215,
      O => x7seg_Mcount_clkdiv_cy(9)
    );
  x7seg_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(7),
      LI => x7seg_Mcount_clkdiv_cy_8_rt_213,
      O => x7seg_Result(8)
    );
  x7seg_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_8_rt_213,
      O => x7seg_Mcount_clkdiv_cy(8)
    );
  x7seg_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(6),
      LI => x7seg_Mcount_clkdiv_cy_7_rt_211,
      O => x7seg_Result(7)
    );
  x7seg_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_7_rt_211,
      O => x7seg_Mcount_clkdiv_cy(7)
    );
  x7seg_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(5),
      LI => x7seg_Mcount_clkdiv_cy_6_rt_209,
      O => x7seg_Result(6)
    );
  x7seg_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_6_rt_209,
      O => x7seg_Mcount_clkdiv_cy(6)
    );
  x7seg_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(4),
      LI => x7seg_Mcount_clkdiv_cy_5_rt_207,
      O => x7seg_Result(5)
    );
  x7seg_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_5_rt_207,
      O => x7seg_Mcount_clkdiv_cy(5)
    );
  x7seg_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(3),
      LI => x7seg_Mcount_clkdiv_cy_4_rt_205,
      O => x7seg_Result(4)
    );
  x7seg_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_4_rt_205,
      O => x7seg_Mcount_clkdiv_cy(4)
    );
  x7seg_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(2),
      LI => x7seg_Mcount_clkdiv_cy_3_rt_203,
      O => x7seg_Result(3)
    );
  x7seg_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_3_rt_203,
      O => x7seg_Mcount_clkdiv_cy(3)
    );
  x7seg_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(1),
      LI => x7seg_Mcount_clkdiv_cy_2_rt_201,
      O => x7seg_Result(2)
    );
  x7seg_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_2_rt_201,
      O => x7seg_Mcount_clkdiv_cy(2)
    );
  x7seg_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(0),
      LI => x7seg_Mcount_clkdiv_cy_1_rt_199,
      O => x7seg_Result(1)
    );
  x7seg_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_1_rt_199,
      O => x7seg_Mcount_clkdiv_cy(1)
    );
  x7seg_Mcount_clkdiv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => x7seg_Mcount_clkdiv_lut(0),
      O => x7seg_Result(0)
    );
  x7seg_Mcount_clkdiv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => x7seg_Mcount_clkdiv_lut(0),
      O => x7seg_Mcount_clkdiv_cy(0)
    );
  x7seg_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(19),
      Q => x7seg_clkdiv(19)
    );
  x7seg_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(18),
      Q => x7seg_clkdiv(18)
    );
  x7seg_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(17),
      Q => x7seg_clkdiv(17)
    );
  x7seg_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(16),
      Q => x7seg_clkdiv(16)
    );
  x7seg_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(15),
      Q => x7seg_clkdiv(15)
    );
  x7seg_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(14),
      Q => x7seg_clkdiv(14)
    );
  x7seg_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(13),
      Q => x7seg_clkdiv(13)
    );
  x7seg_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(12),
      Q => x7seg_clkdiv(12)
    );
  x7seg_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(11),
      Q => x7seg_clkdiv(11)
    );
  x7seg_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(10),
      Q => x7seg_clkdiv(10)
    );
  x7seg_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(9),
      Q => x7seg_clkdiv(9)
    );
  x7seg_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(8),
      Q => x7seg_clkdiv(8)
    );
  x7seg_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(7),
      Q => x7seg_clkdiv(7)
    );
  x7seg_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(6),
      Q => x7seg_clkdiv(6)
    );
  x7seg_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(5),
      Q => x7seg_clkdiv(5)
    );
  x7seg_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(4),
      Q => x7seg_clkdiv(4)
    );
  x7seg_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(3),
      Q => x7seg_clkdiv(3)
    );
  x7seg_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(2),
      Q => x7seg_clkdiv(2)
    );
  x7seg_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(1),
      Q => x7seg_clkdiv(1)
    );
  x7seg_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_177,
      CLR => btn_3_IBUF_69,
      D => x7seg_Result(0),
      Q => x7seg_clkdiv(0)
    );
  gcd_submax_z_3_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_submax_z_mux0001(3),
      O => gcd_submax_z_3_and0001
    );
  gcd_submax_z_3_and00002 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_submax_z_mux0001(3),
      O => gcd_submax_z_3_and0000
    );
  cp_outp1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cp_delay3_125,
      I1 => cp_delay2_124,
      I2 => cp_delay1_123,
      O => sclk
    );
  gcd_my_y_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_152,
      I1 => SW_3_IBUF_40,
      I2 => gcd_submax_z(3),
      O => gcd_mybus(3)
    );
  gcd_my_y_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_152,
      I1 => SW_2_IBUF_39,
      I2 => gcd_submax_z(2),
      O => gcd_mybus(2)
    );
  gcd_my_y_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_152,
      I1 => SW_1_IBUF_38,
      I2 => gcd_submax_z(1),
      O => gcd_mybus(1)
    );
  gcd_my_y_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_152,
      I1 => SW_0_IBUF_37,
      I2 => gcd_submax_z(0),
      O => gcd_mybus(0)
    );
  gcd_mx_y_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_143,
      I1 => SW_7_IBUF_44,
      I2 => gcd_submax_z(3),
      O => gcd_mxbus(3)
    );
  gcd_mx_y_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_143,
      I1 => SW_6_IBUF_43,
      I2 => gcd_submax_z(2),
      O => gcd_mxbus(2)
    );
  gcd_mx_y_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_143,
      I1 => SW_5_IBUF_42,
      I2 => gcd_submax_z(1),
      O => gcd_mxbus(1)
    );
  gcd_mx_y_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_143,
      I1 => SW_4_IBUF_41,
      I2 => gcd_submax_z(0),
      O => gcd_mxbus(0)
    );
  x7seg_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => x7seg_clkdiv(19),
      O => an_0_OBUF_63
    );
  x7seg_an_2_mux00011 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => x7seg_clkdiv(19),
      I1 => x7seg_clkdiv(18),
      I2 => x7seg_N12,
      O => an_2_OBUF_65
    );
  x7seg_an_1_mux000111 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => SW_7_IBUF_44,
      I1 => SW_6_IBUF_43,
      I2 => SW_5_IBUF_42,
      I3 => SW_4_IBUF_41,
      O => x7seg_N12
    );
  x7seg_an_1_mux0001_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => SW_0_IBUF_37,
      I1 => SW_1_IBUF_38,
      I2 => x7seg_N12,
      I3 => SW_2_IBUF_39,
      O => N31
    );
  x7seg_an_1_mux0001 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => SW_3_IBUF_40,
      I2 => N31,
      I3 => x7seg_clkdiv(19),
      O => an_1_OBUF_64
    );
  x7seg_Mrom_a_to_g21 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => x7seg_digit(3),
      I1 => x7seg_digit(0),
      I2 => x7seg_digit(2),
      I3 => x7seg_digit(1),
      O => a_to_g_2_OBUF_54
    );
  x7seg_Mrom_a_to_g41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => x7seg_digit(1),
      I1 => x7seg_digit(3),
      I2 => x7seg_digit(2),
      I3 => x7seg_digit(0),
      O => a_to_g_4_OBUF_56
    );
  x7seg_Mrom_a_to_g111 : LUT4
    generic map(
      INIT => X"0382"
    )
    port map (
      I0 => x7seg_digit(0),
      I1 => x7seg_digit(2),
      I2 => x7seg_digit(3),
      I3 => x7seg_digit(1),
      O => a_to_g_1_OBUF_53
    );
  x7seg_Mrom_a_to_g51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => x7seg_digit(0),
      I1 => x7seg_digit(2),
      I2 => x7seg_digit(1),
      I3 => x7seg_digit(3),
      O => a_to_g_5_OBUF_57
    );
  x7seg_Mrom_a_to_g11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => x7seg_digit(1),
      I1 => x7seg_digit(2),
      I2 => x7seg_digit(3),
      I3 => x7seg_digit(0),
      O => a_to_g_0_OBUF_52
    );
  x7seg_Mrom_a_to_g31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => x7seg_digit(1),
      I1 => x7seg_digit(3),
      I2 => x7seg_digit(0),
      I3 => x7seg_digit(2),
      O => a_to_g_3_OBUF_55
    );
  x7seg_Mrom_a_to_g61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => x7seg_digit(0),
      I1 => x7seg_digit(1),
      I2 => x7seg_digit(2),
      I3 => x7seg_digit(3),
      O => a_to_g_6_OBUF_58
    );
  gcd_regmuxctrl_yload112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerY_q(3),
      I2 => gcd_registerX_q(2),
      I3 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_yload112_148
    );
  gcd_regmuxctrl_yload126 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N29,
      I1 => gcd_regmuxctrl_yload112_148,
      O => gcd_regmuxctrl_xmuxsel_0_not0000
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000133 : LUT4
    generic map(
      INIT => X"4D44"
    )
    port map (
      I0 => gcd_registerY_q(1),
      I1 => gcd_registerX_q(1),
      I2 => gcd_registerY_q(0),
      I3 => gcd_registerX_q(0),
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_146
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_69
    );
  btn_2_IBUF : IBUF
    port map (
      I => btn(2),
      O => btn_2_IBUF_68
    );
  SW_7_IBUF : IBUF
    port map (
      I => SW(7),
      O => SW_7_IBUF_44
    );
  SW_6_IBUF : IBUF
    port map (
      I => SW(6),
      O => SW_6_IBUF_43
    );
  SW_5_IBUF : IBUF
    port map (
      I => SW(5),
      O => SW_5_IBUF_42
    );
  SW_4_IBUF : IBUF
    port map (
      I => SW(4),
      O => SW_4_IBUF_41
    );
  SW_3_IBUF : IBUF
    port map (
      I => SW(3),
      O => SW_3_IBUF_40
    );
  SW_2_IBUF : IBUF
    port map (
      I => SW(2),
      O => SW_2_IBUF_39
    );
  SW_1_IBUF : IBUF
    port map (
      I => SW(1),
      O => SW_1_IBUF_38
    );
  SW_0_IBUF : IBUF
    port map (
      I => SW(0),
      O => SW_0_IBUF_37
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  an_3_OBUF : OBUF
    port map (
      I => N1,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_65,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_64,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_63,
      O => an(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_58,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_57,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_56,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_55,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_54,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_53,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_52,
      O => a_to_g(0)
    );
  cd_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(1),
      O => cd_Mcount_q_cy_1_rt_86
    );
  cd_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(2),
      O => cd_Mcount_q_cy_2_rt_88
    );
  cd_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(3),
      O => cd_Mcount_q_cy_3_rt_90
    );
  cd_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(4),
      O => cd_Mcount_q_cy_4_rt_92
    );
  cd_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(5),
      O => cd_Mcount_q_cy_5_rt_94
    );
  cd_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(6),
      O => cd_Mcount_q_cy_6_rt_96
    );
  cd_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(7),
      O => cd_Mcount_q_cy_7_rt_98
    );
  cd_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(8),
      O => cd_Mcount_q_cy_8_rt_100
    );
  cd_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(9),
      O => cd_Mcount_q_cy_9_rt_102
    );
  cd_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(10),
      O => cd_Mcount_q_cy_10_rt_72
    );
  cd_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(11),
      O => cd_Mcount_q_cy_11_rt_74
    );
  cd_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(12),
      O => cd_Mcount_q_cy_12_rt_76
    );
  cd_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(13),
      O => cd_Mcount_q_cy_13_rt_78
    );
  cd_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(14),
      O => cd_Mcount_q_cy_14_rt_80
    );
  cd_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(15),
      O => cd_Mcount_q_cy_15_rt_82
    );
  cd_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(16),
      O => cd_Mcount_q_cy_16_rt_84
    );
  x7seg_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      O => x7seg_Mcount_clkdiv_cy_18_rt_197
    );
  x7seg_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(17),
      O => x7seg_Mcount_clkdiv_cy_17_rt_195
    );
  x7seg_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(16),
      O => x7seg_Mcount_clkdiv_cy_16_rt_193
    );
  x7seg_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(15),
      O => x7seg_Mcount_clkdiv_cy_15_rt_191
    );
  x7seg_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(14),
      O => x7seg_Mcount_clkdiv_cy_14_rt_189
    );
  x7seg_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(13),
      O => x7seg_Mcount_clkdiv_cy_13_rt_187
    );
  x7seg_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(12),
      O => x7seg_Mcount_clkdiv_cy_12_rt_185
    );
  x7seg_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(11),
      O => x7seg_Mcount_clkdiv_cy_11_rt_183
    );
  x7seg_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(10),
      O => x7seg_Mcount_clkdiv_cy_10_rt_181
    );
  x7seg_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(9),
      O => x7seg_Mcount_clkdiv_cy_9_rt_215
    );
  x7seg_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(8),
      O => x7seg_Mcount_clkdiv_cy_8_rt_213
    );
  x7seg_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(7),
      O => x7seg_Mcount_clkdiv_cy_7_rt_211
    );
  x7seg_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(6),
      O => x7seg_Mcount_clkdiv_cy_6_rt_209
    );
  x7seg_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(5),
      O => x7seg_Mcount_clkdiv_cy_5_rt_207
    );
  x7seg_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(4),
      O => x7seg_Mcount_clkdiv_cy_4_rt_205
    );
  x7seg_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(3),
      O => x7seg_Mcount_clkdiv_cy_3_rt_203
    );
  x7seg_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(2),
      O => x7seg_Mcount_clkdiv_cy_2_rt_201
    );
  x7seg_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(1),
      O => x7seg_Mcount_clkdiv_cy_1_rt_199
    );
  cd_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(17),
      O => cd_Mcount_q_xor_17_rt_104
    );
  x7seg_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(19),
      O => x7seg_Mcount_clkdiv_xor_19_rt_217
    );
  gcd_regmuxctrl_yload_cmp_gt0000155_SW0 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => gcd_regmuxctrl_yload_cmp_gt0000133_151,
      O => N13
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000155_SW0 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_146,
      O => N15
    );
  gcd_regmuxctrl_yload1 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => gcd_regmuxctrl_yload125_149,
      I1 => gcd_regmuxctrl_yload112_148,
      I2 => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      I3 => gcd_regmuxctrl_yload_cmp_gt0000,
      O => gcd_syload
    );
  gcd_regmuxctrl_xload1 : LUT4
    generic map(
      INIT => X"FFD4"
    )
    port map (
      I0 => gcd_registerY_q(3),
      I1 => gcd_registerX_q(3),
      I2 => N15,
      I3 => gcd_regmuxctrl_xmuxsel_0_not0000,
      O => gcd_sxload
    );
  gcd_submax_Msub_z_mux0001_lut_1_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gcd_registerX_q(1),
      I1 => gcd_registerY_q(1),
      O => gcd_submax_Msub_z_mux0001_lut(1)
    );
  gcd_submax_Msub_z_mux0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      O => gcd_submax_Msub_z_mux0001_lut(2)
    );
  gcd_submax_z_1_and00011 : LUT4
    generic map(
      INIT => X"280A"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerY_q(0),
      I2 => gcd_submax_Msub_z_mux0001_lut(1),
      I3 => gcd_registerX_q(0),
      O => gcd_submax_z_1_and0001
    );
  gcd_submax_z_1_and00001 : LUT4
    generic map(
      INIT => X"82A0"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerY_q(0),
      I2 => gcd_submax_Msub_z_mux0001_lut(1),
      I3 => gcd_registerX_q(0),
      O => gcd_submax_z_1_and0000
    );
  gcd_submax_Msub_z_mux0001_xor_1_11 : LUT4
    generic map(
      INIT => X"3693"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_submax_Msub_z_mux0001_lut(1),
      I2 => gcd_registerX_q(0),
      I3 => gcd_registerY_q(0),
      O => gcd_submax_z_mux0001(1)
    );
  gcd_regmuxctrl_ymuxsel_not00021 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => N15,
      I2 => gcd_registerY_q(3),
      O => gcd_regmuxctrl_ymuxsel_not0002
    );
  gcd_regmuxctrl_xmuxsel_not00011 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => N13,
      I1 => gcd_registerY_q(3),
      I2 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_xmuxsel_not0001
    );
  gcd_submax_Msub_z_mux0001_xor_0_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gcd_registerX_q(0),
      I1 => gcd_registerY_q(0),
      O => gcd_submax_z_mux0001(0)
    );
  gcd_submax_z_0_and00011 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerX_q(0),
      I2 => gcd_registerY_q(0),
      O => gcd_submax_z_0_and0001
    );
  gcd_submax_z_0_and00001 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerX_q(0),
      I2 => gcd_registerY_q(0),
      O => gcd_submax_z_0_and0000
    );
  gcd_submax_Msub_z_mux0001_xor_2_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => N01,
      O => gcd_submax_z_mux0001(2)
    );
  gcd_submax_z_2_and00011 : LUT4
    generic map(
      INIT => X"8228"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerY_q(2),
      I2 => gcd_registerX_q(2),
      I3 => N01,
      O => gcd_submax_z_2_and0001
    );
  gcd_submax_z_2_and00001 : LUT4
    generic map(
      INIT => X"2882"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerY_q(2),
      I2 => gcd_registerX_q(2),
      I3 => N01,
      O => gcd_submax_z_2_and0000
    );
  gcd_regmuxctrl_yload_cmp_gt0000155 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => gcd_registerY_q(3),
      I1 => gcd_registerX_q(3),
      I2 => N13,
      O => gcd_regmuxctrl_yload_cmp_gt0000
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_177
    );
  cd_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => cd_q(0),
      O => cd_Mcount_q_lut(0)
    );
  x7seg_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => x7seg_clkdiv(0),
      O => x7seg_Mcount_clkdiv_lut(0)
    );
  gcd_submax_Msub_z_mux0001_xor_3_11 : MUXF5
    port map (
      I0 => N25,
      I1 => N26,
      S => gcd_submax_Msub_z_mux0001_lut(2),
      O => gcd_submax_z_mux0001(3)
    );
  gcd_submax_Msub_z_mux0001_xor_3_11_F : LUT4
    generic map(
      INIT => X"6429"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerY_q(3),
      I2 => gcd_registerX_q(2),
      I3 => gcd_registerY_q(2),
      O => N25
    );
  gcd_submax_Msub_z_mux0001_xor_3_11_G : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerY_q(3),
      I2 => N01,
      O => N26
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000155 : MUXF5
    port map (
      I0 => N27,
      I1 => N28,
      S => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_146,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000155_F : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerX_q(2),
      I2 => gcd_registerY_q(2),
      I3 => gcd_registerY_q(3),
      O => N27
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000155_G : LUT4
    generic map(
      INIT => X"F751"
    )
    port map (
      I0 => gcd_registerY_q(3),
      I1 => gcd_registerY_q(2),
      I2 => gcd_registerX_q(2),
      I3 => gcd_registerX_q(3),
      O => N28
    );
  x7seg_Mmux_digit81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SW_7_IBUF_44,
      I1 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit8
    );
  x7seg_Mmux_digit82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => gcd_registerX_q(3),
      I2 => SW_3_IBUF_40,
      O => x7seg_Mmux_digit81_225
    );
  x7seg_Mmux_digit8_f5 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit81_225,
      I1 => x7seg_Mmux_digit8,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(3)
    );
  x7seg_Mmux_digit61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SW_6_IBUF_43,
      I1 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit6
    );
  x7seg_Mmux_digit62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => gcd_registerX_q(2),
      I2 => SW_2_IBUF_39,
      O => x7seg_Mmux_digit61_223
    );
  x7seg_Mmux_digit6_f5 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit61_223,
      I1 => x7seg_Mmux_digit6,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(2)
    );
  x7seg_Mmux_digit41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SW_5_IBUF_42,
      I1 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit4
    );
  x7seg_Mmux_digit42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => gcd_registerX_q(1),
      I2 => SW_1_IBUF_38,
      O => x7seg_Mmux_digit41_221
    );
  x7seg_Mmux_digit4_f5 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit41_221,
      I1 => x7seg_Mmux_digit4,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(1)
    );
  x7seg_Mmux_digit21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SW_4_IBUF_41,
      I1 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit2
    );
  x7seg_Mmux_digit22 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => gcd_registerX_q(0),
      I2 => SW_0_IBUF_37,
      O => x7seg_Mmux_digit21_219
    );
  x7seg_Mmux_digit2_f5 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit21_219,
      I1 => x7seg_Mmux_digit2,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(0)
    );
  gcd_submax_z_3_and0000111 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gcd_registerX_q(1),
      I1 => gcd_registerX_q(0),
      I2 => gcd_registerY_q(0),
      I3 => gcd_registerY_q(1),
      O => gcd_submax_z_3_and000011
    );
  gcd_submax_z_3_and0000112 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gcd_registerY_q(1),
      I1 => gcd_registerY_q(0),
      I2 => gcd_registerX_q(0),
      I3 => gcd_registerX_q(1),
      O => gcd_submax_z_3_and0000111_168
    );
  gcd_submax_z_3_and000011_f5 : MUXF5
    port map (
      I0 => gcd_submax_z_3_and0000111_168,
      I1 => gcd_submax_z_3_and000011,
      S => gcd_regmuxctrl_yload_cmp_gt0000,
      O => N01
    );
  gcd_regmuxctrl_yload125 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gcd_registerY_q(1),
      I1 => gcd_registerX_q(1),
      I2 => gcd_registerY_q(0),
      I3 => gcd_registerX_q(0),
      LO => N29,
      O => gcd_regmuxctrl_yload125_149
    );
  gcd_regmuxctrl_yload_cmp_gt0000133 : LUT4_L
    generic map(
      INIT => X"22B2"
    )
    port map (
      I0 => gcd_registerY_q(1),
      I1 => gcd_registerX_q(1),
      I2 => gcd_registerY_q(0),
      I3 => gcd_registerX_q(0),
      LO => gcd_regmuxctrl_yload_cmp_gt0000133_151
    );

end STRUCTURE;

