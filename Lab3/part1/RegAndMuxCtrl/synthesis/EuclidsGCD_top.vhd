--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: EuclidsGCD_top.vhd
-- /___/   /\     Timestamp: Sun Feb 16 22:04:27 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w EuclidsGCD_top.ngc EuclidsGCD_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: EuclidsGCD_top.ngc
-- Output file	: EuclidsGCD_top.vhd
-- # of Entities	: 1
-- Design Name	: EuclidsGCD_top
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

entity EuclidsGCD_top is
  port (
    mclk : in STD_LOGIC := 'X'; 
    LD : out STD_LOGIC_VECTOR ( 7 downto 4 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 2 ); 
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end EuclidsGCD_top;

architecture STRUCTURE of EuclidsGCD_top is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal SW_0_IBUF_40 : STD_LOGIC; 
  signal SW_1_IBUF_41 : STD_LOGIC; 
  signal SW_2_IBUF_42 : STD_LOGIC; 
  signal SW_3_IBUF_43 : STD_LOGIC; 
  signal SW_4_IBUF_44 : STD_LOGIC; 
  signal SW_5_IBUF_45 : STD_LOGIC; 
  signal SW_6_IBUF_46 : STD_LOGIC; 
  signal SW_7_IBUF_47 : STD_LOGIC; 
  signal btn_2_IBUF_50 : STD_LOGIC; 
  signal btn_3_IBUF_51 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_rt_54 : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_rt_56 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_rt_58 : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_rt_60 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_rt_62 : STD_LOGIC; 
  signal cd_Mcount_q_cy_15_rt_64 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_rt_66 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_rt_68 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_rt_70 : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_rt_72 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_rt_74 : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_rt_76 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_rt_78 : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_rt_80 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_rt_82 : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_rt_84 : STD_LOGIC; 
  signal cd_Mcount_q_xor_17_rt_86 : STD_LOGIC; 
  signal cp_delay1_105 : STD_LOGIC; 
  signal cp_delay2_106 : STD_LOGIC; 
  signal cp_delay3_107 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_124 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_0_not0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000133_127 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_not0001 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000012_130 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000025_131 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000133_133 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_134 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_not0002 : STD_LOGIC; 
  signal gcd_submax_z_0_and0000 : STD_LOGIC; 
  signal gcd_submax_z_0_and0001 : STD_LOGIC; 
  signal gcd_submax_z_1_and0000 : STD_LOGIC; 
  signal gcd_submax_z_1_and0001 : STD_LOGIC; 
  signal gcd_submax_z_2_and0000 : STD_LOGIC; 
  signal gcd_submax_z_2_and0001 : STD_LOGIC; 
  signal gcd_submax_z_3_and0000 : STD_LOGIC; 
  signal gcd_submax_z_3_and0001 : STD_LOGIC; 
  signal gcd_sxload : STD_LOGIC; 
  signal gcd_syload : STD_LOGIC; 
  signal mclk_BUFGP_161 : STD_LOGIC; 
  signal sclk : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal cd_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gcd_mxbus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_mybus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_registerX_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_registerY_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_Msub_z_mux0001_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal gcd_submax_Msub_z_mux0001_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal gcd_submax_z : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z_mux0002 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
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
      CLR => btn_3_IBUF_51,
      D => cp_delay2_106,
      Q => cp_delay3_107
    );
  cp_delay2 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_51,
      D => cp_delay1_105,
      Q => cp_delay2_106
    );
  cp_delay1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_3_IBUF_51,
      D => btn_2_IBUF_50,
      Q => cp_delay1_105
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
      CLR => btn_3_IBUF_51,
      D => gcd_mxbus(0),
      Q => gcd_registerX_q(0)
    );
  gcd_registerX_q_1 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_51,
      D => gcd_mxbus(1),
      Q => gcd_registerX_q(1)
    );
  gcd_registerX_q_2 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_51,
      D => gcd_mxbus(2),
      Q => gcd_registerX_q(2)
    );
  gcd_registerX_q_3 : FDCE
    port map (
      C => sclk,
      CE => gcd_sxload,
      CLR => btn_3_IBUF_51,
      D => gcd_mxbus(3),
      Q => gcd_registerX_q(3)
    );
  gcd_registerY_q_0 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_51,
      D => gcd_mybus(0),
      Q => gcd_registerY_q(0)
    );
  gcd_registerY_q_1 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_51,
      D => gcd_mybus(1),
      Q => gcd_registerY_q(1)
    );
  gcd_registerY_q_2 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_51,
      D => gcd_mybus(2),
      Q => gcd_registerY_q(2)
    );
  gcd_registerY_q_3 : FDCE
    port map (
      C => sclk,
      CE => gcd_syload,
      CLR => btn_3_IBUF_51,
      D => gcd_mybus(3),
      Q => gcd_registerY_q(3)
    );
  gcd_regmuxctrl_xmuxsel : LDCP
    port map (
      CLR => gcd_regmuxctrl_xmuxsel_0_not0000,
      D => N1,
      G => gcd_regmuxctrl_xmuxsel_not0001,
      PRE => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      Q => gcd_regmuxctrl_xmuxsel_124
    );
  gcd_regmuxctrl_ymuxsel : LDC
    port map (
      CLR => gcd_regmuxctrl_xmuxsel_0_not0000,
      D => N1,
      G => gcd_regmuxctrl_ymuxsel_not0002,
      Q => gcd_regmuxctrl_ymuxsel_134
    );
  cd_q_0 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(0),
      Q => cd_q(0)
    );
  cd_q_1 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(1),
      Q => cd_q(1)
    );
  cd_q_2 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(2),
      Q => cd_q(2)
    );
  cd_q_3 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(3),
      Q => cd_q(3)
    );
  cd_q_4 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(4),
      Q => cd_q(4)
    );
  cd_q_5 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(5),
      Q => cd_q(5)
    );
  cd_q_6 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(6),
      Q => cd_q(6)
    );
  cd_q_7 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(7),
      Q => cd_q(7)
    );
  cd_q_8 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(8),
      Q => cd_q(8)
    );
  cd_q_9 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(9),
      Q => cd_q(9)
    );
  cd_q_10 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(10),
      Q => cd_q(10)
    );
  cd_q_11 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(11),
      Q => cd_q(11)
    );
  cd_q_12 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(12),
      Q => cd_q(12)
    );
  cd_q_13 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(13),
      Q => cd_q(13)
    );
  cd_q_14 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(14),
      Q => cd_q(14)
    );
  cd_q_15 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(15),
      Q => cd_q(15)
    );
  cd_q_16 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
      D => Result(16),
      Q => cd_q(16)
    );
  cd_q_17 : FDC
    port map (
      C => mclk_BUFGP_161,
      CLR => btn_3_IBUF_51,
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
      S => cd_Mcount_q_cy_1_rt_68,
      O => cd_Mcount_q_cy(1)
    );
  cd_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(0),
      LI => cd_Mcount_q_cy_1_rt_68,
      O => Result(1)
    );
  cd_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(1),
      DI => N0,
      S => cd_Mcount_q_cy_2_rt_70,
      O => cd_Mcount_q_cy(2)
    );
  cd_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(1),
      LI => cd_Mcount_q_cy_2_rt_70,
      O => Result(2)
    );
  cd_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(2),
      DI => N0,
      S => cd_Mcount_q_cy_3_rt_72,
      O => cd_Mcount_q_cy(3)
    );
  cd_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(2),
      LI => cd_Mcount_q_cy_3_rt_72,
      O => Result(3)
    );
  cd_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(3),
      DI => N0,
      S => cd_Mcount_q_cy_4_rt_74,
      O => cd_Mcount_q_cy(4)
    );
  cd_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(3),
      LI => cd_Mcount_q_cy_4_rt_74,
      O => Result(4)
    );
  cd_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(4),
      DI => N0,
      S => cd_Mcount_q_cy_5_rt_76,
      O => cd_Mcount_q_cy(5)
    );
  cd_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(4),
      LI => cd_Mcount_q_cy_5_rt_76,
      O => Result(5)
    );
  cd_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(5),
      DI => N0,
      S => cd_Mcount_q_cy_6_rt_78,
      O => cd_Mcount_q_cy(6)
    );
  cd_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(5),
      LI => cd_Mcount_q_cy_6_rt_78,
      O => Result(6)
    );
  cd_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(6),
      DI => N0,
      S => cd_Mcount_q_cy_7_rt_80,
      O => cd_Mcount_q_cy(7)
    );
  cd_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(6),
      LI => cd_Mcount_q_cy_7_rt_80,
      O => Result(7)
    );
  cd_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(7),
      DI => N0,
      S => cd_Mcount_q_cy_8_rt_82,
      O => cd_Mcount_q_cy(8)
    );
  cd_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(7),
      LI => cd_Mcount_q_cy_8_rt_82,
      O => Result(8)
    );
  cd_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(8),
      DI => N0,
      S => cd_Mcount_q_cy_9_rt_84,
      O => cd_Mcount_q_cy(9)
    );
  cd_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(8),
      LI => cd_Mcount_q_cy_9_rt_84,
      O => Result(9)
    );
  cd_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(9),
      DI => N0,
      S => cd_Mcount_q_cy_10_rt_54,
      O => cd_Mcount_q_cy(10)
    );
  cd_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(9),
      LI => cd_Mcount_q_cy_10_rt_54,
      O => Result(10)
    );
  cd_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(10),
      DI => N0,
      S => cd_Mcount_q_cy_11_rt_56,
      O => cd_Mcount_q_cy(11)
    );
  cd_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(10),
      LI => cd_Mcount_q_cy_11_rt_56,
      O => Result(11)
    );
  cd_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(11),
      DI => N0,
      S => cd_Mcount_q_cy_12_rt_58,
      O => cd_Mcount_q_cy(12)
    );
  cd_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(11),
      LI => cd_Mcount_q_cy_12_rt_58,
      O => Result(12)
    );
  cd_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(12),
      DI => N0,
      S => cd_Mcount_q_cy_13_rt_60,
      O => cd_Mcount_q_cy(13)
    );
  cd_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(12),
      LI => cd_Mcount_q_cy_13_rt_60,
      O => Result(13)
    );
  cd_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(13),
      DI => N0,
      S => cd_Mcount_q_cy_14_rt_62,
      O => cd_Mcount_q_cy(14)
    );
  cd_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(13),
      LI => cd_Mcount_q_cy_14_rt_62,
      O => Result(14)
    );
  cd_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(14),
      DI => N0,
      S => cd_Mcount_q_cy_15_rt_64,
      O => cd_Mcount_q_cy(15)
    );
  cd_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(14),
      LI => cd_Mcount_q_cy_15_rt_64,
      O => Result(15)
    );
  cd_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(15),
      DI => N0,
      S => cd_Mcount_q_cy_16_rt_66,
      O => cd_Mcount_q_cy(16)
    );
  cd_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(15),
      LI => cd_Mcount_q_cy_16_rt_66,
      O => Result(16)
    );
  cd_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(16),
      LI => cd_Mcount_q_xor_17_rt_86,
      O => Result(17)
    );
  cp_outp1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cp_delay3_107,
      I1 => cp_delay2_106,
      I2 => cp_delay1_105,
      O => sclk
    );
  gcd_submax_z_mux0002_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerX_q(1),
      I2 => gcd_registerY_q(1),
      O => gcd_submax_z_mux0002(1)
    );
  gcd_submax_Msub_z_mux0001_lut_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gcd_registerY_q(0),
      I1 => gcd_registerX_q(0),
      O => gcd_submax_Msub_z_mux0001_lut(0)
    );
  gcd_my_y_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_134,
      I1 => SW_3_IBUF_43,
      I2 => gcd_submax_z(3),
      O => gcd_mybus(3)
    );
  gcd_my_y_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_134,
      I1 => SW_2_IBUF_42,
      I2 => gcd_submax_z(2),
      O => gcd_mybus(2)
    );
  gcd_my_y_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_134,
      I1 => SW_1_IBUF_41,
      I2 => gcd_submax_z(1),
      O => gcd_mybus(1)
    );
  gcd_my_y_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_ymuxsel_134,
      I1 => SW_0_IBUF_40,
      I2 => gcd_submax_z(0),
      O => gcd_mybus(0)
    );
  gcd_mx_y_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_124,
      I1 => SW_7_IBUF_47,
      I2 => gcd_submax_z(3),
      O => gcd_mxbus(3)
    );
  gcd_mx_y_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_124,
      I1 => SW_6_IBUF_46,
      I2 => gcd_submax_z(2),
      O => gcd_mxbus(2)
    );
  gcd_mx_y_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_124,
      I1 => SW_5_IBUF_45,
      I2 => gcd_submax_z(1),
      O => gcd_mxbus(1)
    );
  gcd_mx_y_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gcd_regmuxctrl_xmuxsel_124,
      I1 => SW_4_IBUF_44,
      I2 => gcd_submax_z(0),
      O => gcd_mxbus(0)
    );
  gcd_regmuxctrl_yload_and000012 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gcd_registerX_q(0),
      I1 => gcd_registerX_q(1),
      I2 => gcd_registerX_q(2),
      I3 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_yload_and000012_130
    );
  gcd_regmuxctrl_yload_and000026 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N16,
      I1 => gcd_regmuxctrl_yload_and000012_130,
      O => gcd_regmuxctrl_xmuxsel_0_not0000
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000133 : LUT4
    generic map(
      INIT => X"7310"
    )
    port map (
      I0 => gcd_registerY_q(0),
      I1 => gcd_registerY_q(1),
      I2 => gcd_registerX_q(0),
      I3 => gcd_registerX_q(1),
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_127
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_51
    );
  btn_2_IBUF : IBUF
    port map (
      I => btn(2),
      O => btn_2_IBUF_50
    );
  SW_7_IBUF : IBUF
    port map (
      I => SW(7),
      O => SW_7_IBUF_47
    );
  SW_6_IBUF : IBUF
    port map (
      I => SW(6),
      O => SW_6_IBUF_46
    );
  SW_5_IBUF : IBUF
    port map (
      I => SW(5),
      O => SW_5_IBUF_45
    );
  SW_4_IBUF : IBUF
    port map (
      I => SW(4),
      O => SW_4_IBUF_44
    );
  SW_3_IBUF : IBUF
    port map (
      I => SW(3),
      O => SW_3_IBUF_43
    );
  SW_2_IBUF : IBUF
    port map (
      I => SW(2),
      O => SW_2_IBUF_42
    );
  SW_1_IBUF : IBUF
    port map (
      I => SW(1),
      O => SW_1_IBUF_41
    );
  SW_0_IBUF : IBUF
    port map (
      I => SW(0),
      O => SW_0_IBUF_40
    );
  LD_7_OBUF : OBUF
    port map (
      I => gcd_registerX_q(3),
      O => LD(7)
    );
  LD_6_OBUF : OBUF
    port map (
      I => gcd_registerX_q(2),
      O => LD(6)
    );
  LD_5_OBUF : OBUF
    port map (
      I => gcd_registerX_q(1),
      O => LD(5)
    );
  LD_4_OBUF : OBUF
    port map (
      I => gcd_registerX_q(0),
      O => LD(4)
    );
  cd_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(1),
      O => cd_Mcount_q_cy_1_rt_68
    );
  cd_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(2),
      O => cd_Mcount_q_cy_2_rt_70
    );
  cd_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(3),
      O => cd_Mcount_q_cy_3_rt_72
    );
  cd_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(4),
      O => cd_Mcount_q_cy_4_rt_74
    );
  cd_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(5),
      O => cd_Mcount_q_cy_5_rt_76
    );
  cd_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(6),
      O => cd_Mcount_q_cy_6_rt_78
    );
  cd_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(7),
      O => cd_Mcount_q_cy_7_rt_80
    );
  cd_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(8),
      O => cd_Mcount_q_cy_8_rt_82
    );
  cd_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(9),
      O => cd_Mcount_q_cy_9_rt_84
    );
  cd_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(10),
      O => cd_Mcount_q_cy_10_rt_54
    );
  cd_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(11),
      O => cd_Mcount_q_cy_11_rt_56
    );
  cd_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(12),
      O => cd_Mcount_q_cy_12_rt_58
    );
  cd_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(13),
      O => cd_Mcount_q_cy_13_rt_60
    );
  cd_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(14),
      O => cd_Mcount_q_cy_14_rt_62
    );
  cd_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(15),
      O => cd_Mcount_q_cy_15_rt_64
    );
  cd_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(16),
      O => cd_Mcount_q_cy_16_rt_66
    );
  cd_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(17),
      O => cd_Mcount_q_xor_17_rt_86
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161 : LUT4
    generic map(
      INIT => X"D400"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_127,
      I3 => N2,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => gcd_registerY_q(3),
      I1 => gcd_registerX_q(3),
      I2 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000
    );
  gcd_regmuxctrl_xload1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_and000025_131,
      I1 => gcd_regmuxctrl_yload_and000012_130,
      I2 => N4,
      I3 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128,
      O => gcd_sxload
    );
  gcd_regmuxctrl_yload_cmp_gt0000161_SW1_SW0 : LUT4
    generic map(
      INIT => X"20F2"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => gcd_registerY_q(3),
      I3 => gcd_registerX_q(3),
      O => N8
    );
  gcd_regmuxctrl_yload_cmp_gt0000161_SW1_SW1 : LUT4
    generic map(
      INIT => X"B0FB"
    )
    port map (
      I0 => gcd_registerY_q(2),
      I1 => gcd_registerX_q(2),
      I2 => gcd_registerY_q(3),
      I3 => gcd_registerX_q(3),
      O => N9
    );
  gcd_regmuxctrl_yload_cmp_gt0000176 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N17,
      I1 => N8,
      I2 => N9,
      O => gcd_regmuxctrl_yload_cmp_gt0000
    );
  gcd_regmuxctrl_yload1 : LUT4
    generic map(
      INIT => X"CACC"
    )
    port map (
      I0 => N12,
      I1 => gcd_regmuxctrl_xmuxsel_0_not0000,
      I2 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128,
      I3 => gcd_regmuxctrl_yload_cmp_gt0000,
      O => gcd_syload
    );
  gcd_submax_Msub_z_mux0001_lut_2_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gcd_registerX_q(2),
      I1 => gcd_registerY_q(2),
      O => gcd_submax_Msub_z_mux0001_lut(2)
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
  gcd_submax_Msub_z_mux0001_cy_0_11 : LUT3
    generic map(
      INIT => X"DB"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000,
      I1 => gcd_registerY_q(0),
      I2 => gcd_registerX_q(0),
      O => gcd_submax_Msub_z_mux0001_cy(0)
    );
  gcd_submax_Msub_z_mux0001_xor_0_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gcd_registerY_q(0),
      I1 => gcd_registerX_q(0),
      O => gcd_submax_z_mux0001(0)
    );
  gcd_regmuxctrl_ymuxsel_not00021 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_128,
      I2 => gcd_registerY_q(3),
      O => gcd_regmuxctrl_ymuxsel_not0002
    );
  gcd_regmuxctrl_xmuxsel_not00011 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N8,
      I2 => N9,
      O => gcd_regmuxctrl_xmuxsel_not0001
    );
  gcd_submax_z_3_and00011 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(3),
      I3 => N8,
      O => gcd_submax_z_3_and0001
    );
  gcd_submax_z_3_and00001 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(3),
      I3 => N8,
      O => gcd_submax_z_3_and0000
    );
  gcd_submax_z_2_and00011 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(2),
      I3 => N8,
      O => gcd_submax_z_2_and0001
    );
  gcd_submax_z_2_and00001 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(2),
      I3 => N8,
      O => gcd_submax_z_2_and0000
    );
  gcd_submax_z_1_and00011 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(1),
      I3 => N8,
      O => gcd_submax_z_1_and0001
    );
  gcd_submax_z_1_and00001 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_z_mux0001(1),
      I3 => N8,
      O => gcd_submax_z_1_and0000
    );
  gcd_submax_z_0_and00011 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_Msub_z_mux0001_lut(0),
      I3 => N8,
      O => gcd_submax_z_0_and0001
    );
  gcd_submax_z_0_and00001 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => gcd_regmuxctrl_yload_cmp_gt0000133_133,
      I1 => N9,
      I2 => gcd_submax_Msub_z_mux0001_lut(0),
      I3 => N8,
      O => gcd_submax_z_0_and0000
    );
  gcd_submax_Msub_z_mux0001_xor_2_11 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gcd_submax_Msub_z_mux0001_lut(2),
      I1 => gcd_submax_Msub_z_mux0001_lut(1),
      I2 => gcd_submax_z_mux0002(1),
      I3 => gcd_submax_Msub_z_mux0001_cy(0),
      O => gcd_submax_z_mux0001(2)
    );
  gcd_submax_Msub_z_mux0001_xor_3_11_SW0 : LUT4
    generic map(
      INIT => X"2B4D"
    )
    port map (
      I0 => gcd_registerX_q(2),
      I1 => gcd_registerY_q(2),
      I2 => gcd_submax_Msub_z_mux0001_cy(1),
      I3 => gcd_regmuxctrl_yload_cmp_gt0000,
      O => N14
    );
  gcd_submax_Msub_z_mux0001_xor_3_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerY_q(3),
      I2 => N14,
      O => gcd_submax_z_mux0001(3)
    );
  gcd_submax_Msub_z_mux0001_cy_1_11 : LUT4
    generic map(
      INIT => X"DB42"
    )
    port map (
      I0 => gcd_registerX_q(1),
      I1 => gcd_registerY_q(1),
      I2 => gcd_regmuxctrl_yload_cmp_gt0000,
      I3 => gcd_submax_Msub_z_mux0001_cy(0),
      O => gcd_submax_Msub_z_mux0001_cy(1)
    );
  gcd_submax_Msub_z_mux0001_xor_1_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => gcd_registerX_q(1),
      I1 => gcd_registerY_q(1),
      I2 => gcd_submax_Msub_z_mux0001_cy(0),
      O => gcd_submax_z_mux0001(1)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_161
    );
  cd_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => cd_q(0),
      O => cd_Mcount_q_lut(0)
    );
  gcd_regmuxctrl_yload_and000025 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gcd_registerY_q(0),
      I1 => gcd_registerY_q(1),
      I2 => gcd_registerY_q(2),
      I3 => gcd_registerY_q(3),
      LO => N16,
      O => gcd_regmuxctrl_yload_and000025_131
    );
  gcd_regmuxctrl_yload_cmp_gt0000133 : LUT4_D
    generic map(
      INIT => X"20F2"
    )
    port map (
      I0 => gcd_registerY_q(0),
      I1 => gcd_registerX_q(0),
      I2 => gcd_registerY_q(1),
      I3 => gcd_registerX_q(1),
      LO => N17,
      O => gcd_regmuxctrl_yload_cmp_gt0000133_133
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => gcd_registerY_q(3),
      I1 => gcd_registerX_q(3),
      LO => N2
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerY_q(3),
      LO => N4
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => gcd_registerX_q(3),
      I1 => gcd_registerY_q(3),
      LO => N12
    );

end STRUCTURE;

