--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: nes_driver_top.vhd
-- /___/   /\     Timestamp: Wed Apr 16 20:13:43 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w nes_driver_top.ngc nes_driver_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: nes_driver_top.ngc
-- Output file	: nes_driver_top.vhd
-- # of Entities	: 1
-- Design Name	: nes_driver_top
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

entity nes_driver_top is
  port (
    ja1 : in STD_LOGIC := 'X'; 
    ja2 : out STD_LOGIC; 
    ja3 : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    ld : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end nes_driver_top;

architecture STRUCTURE of nes_driver_top is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal btn_3_IBUF_19 : STD_LOGIC; 
  signal cd_q_01 : STD_LOGIC; 
  signal ja1_IBUF_24 : STD_LOGIC; 
  signal ja2_OBUF_26 : STD_LOGIC; 
  signal ja3_OBUF_28 : STD_LOGIC; 
  signal mclk_BUFGP_38 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_rt_41 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_rt_43 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_rt_45 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_rt_47 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_rt_49 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_rt_51 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_7_rt_53 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_rt_55 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_xor_9_rt_57 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_rt_60 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_rt_62 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_rt_64 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_rt_66 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_rt_68 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_rt_70 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_7_rt_72 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_rt_74 : STD_LOGIC; 
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
  signal nes_Mcount_counter_reg_xor_9_rt_86 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal nes_N3 : STD_LOGIC; 
  signal nes_a_reg_99 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_b_reg_101 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000_113 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_down_reg_115 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_117 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_not0001 : STD_LOGIC; 
  signal nes_right_reg_120 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_143 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_144 : STD_LOGIC; 
  signal nes_sel_reg_155 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_157 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_up_reg_159 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Mcount_counter_reg_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal nes_Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  cd_q_0 : FDC
    port map (
      C => mclk_BUFGP_38,
      CLR => btn_3_IBUF_19,
      D => Result(0),
      Q => cd_q_01
    );
  cd_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => cd_Mcount_q_lut(0),
      O => Result(0)
    );
  nes_Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(8),
      LI => nes_Mcount_counter_reg_xor_9_rt_86,
      O => nes_Result(9)
    );
  nes_Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      LI => nes_Mcount_counter_reg_cy_8_rt_74,
      O => nes_Result(8)
    );
  nes_Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(7),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_8_rt_74,
      O => nes_Mcount_counter_reg_cy(8)
    );
  nes_Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      LI => nes_Mcount_counter_reg_cy_7_rt_72,
      O => nes_Result(7)
    );
  nes_Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(6),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_7_rt_72,
      O => nes_Mcount_counter_reg_cy(7)
    );
  nes_Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      LI => nes_Mcount_counter_reg_cy_6_rt_70,
      O => nes_Result(6)
    );
  nes_Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(5),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_6_rt_70,
      O => nes_Mcount_counter_reg_cy(6)
    );
  nes_Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      LI => nes_Mcount_counter_reg_cy_5_rt_68,
      O => nes_Result(5)
    );
  nes_Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(4),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_5_rt_68,
      O => nes_Mcount_counter_reg_cy(5)
    );
  nes_Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      LI => nes_Mcount_counter_reg_cy_4_rt_66,
      O => nes_Result(4)
    );
  nes_Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(3),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_4_rt_66,
      O => nes_Mcount_counter_reg_cy(4)
    );
  nes_Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      LI => nes_Mcount_counter_reg_cy_3_rt_64,
      O => nes_Result(3)
    );
  nes_Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(2),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_3_rt_64,
      O => nes_Mcount_counter_reg_cy(3)
    );
  nes_Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      LI => nes_Mcount_counter_reg_cy_2_rt_62,
      O => nes_Result(2)
    );
  nes_Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(1),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_2_rt_62,
      O => nes_Mcount_counter_reg_cy(2)
    );
  nes_Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      LI => nes_Mcount_counter_reg_cy_1_rt_60,
      O => nes_Result(1)
    );
  nes_Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => nes_Mcount_counter_reg_cy(0),
      DI => N0,
      S => nes_Mcount_counter_reg_cy_1_rt_60,
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
      LI => nes_Madd_scalar_next_addsub0000_xor_9_rt_57,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_Madd_scalar_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      LI => nes_Madd_scalar_next_addsub0000_cy_8_rt_55,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_Madd_scalar_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(7),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_8_rt_55,
      O => nes_Madd_scalar_next_addsub0000_cy(8)
    );
  nes_Madd_scalar_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      LI => nes_Madd_scalar_next_addsub0000_cy_7_rt_53,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_Madd_scalar_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(6),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_7_rt_53,
      O => nes_Madd_scalar_next_addsub0000_cy(7)
    );
  nes_Madd_scalar_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      LI => nes_Madd_scalar_next_addsub0000_cy_6_rt_51,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_Madd_scalar_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(5),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_6_rt_51,
      O => nes_Madd_scalar_next_addsub0000_cy(6)
    );
  nes_Madd_scalar_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      LI => nes_Madd_scalar_next_addsub0000_cy_5_rt_49,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_Madd_scalar_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(4),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_5_rt_49,
      O => nes_Madd_scalar_next_addsub0000_cy(5)
    );
  nes_Madd_scalar_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      LI => nes_Madd_scalar_next_addsub0000_cy_4_rt_47,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_Madd_scalar_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(3),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_4_rt_47,
      O => nes_Madd_scalar_next_addsub0000_cy(4)
    );
  nes_Madd_scalar_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      LI => nes_Madd_scalar_next_addsub0000_cy_3_rt_45,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_Madd_scalar_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(2),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_3_rt_45,
      O => nes_Madd_scalar_next_addsub0000_cy(3)
    );
  nes_Madd_scalar_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      LI => nes_Madd_scalar_next_addsub0000_cy_2_rt_43,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_Madd_scalar_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(1),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_2_rt_43,
      O => nes_Madd_scalar_next_addsub0000_cy(2)
    );
  nes_Madd_scalar_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      LI => nes_Madd_scalar_next_addsub0000_cy_1_rt_41,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_Madd_scalar_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => nes_Madd_scalar_next_addsub0000_cy(0),
      DI => N0,
      S => nes_Madd_scalar_next_addsub0000_cy_1_rt_41,
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
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_9,
      Q => nes_counter_reg(9)
    );
  nes_counter_reg_8 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_8,
      Q => nes_counter_reg(8)
    );
  nes_counter_reg_7 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_7,
      Q => nes_counter_reg(7)
    );
  nes_counter_reg_6 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_6,
      Q => nes_counter_reg(6)
    );
  nes_counter_reg_5 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_5,
      Q => nes_counter_reg(5)
    );
  nes_counter_reg_4 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_4,
      Q => nes_counter_reg(4)
    );
  nes_counter_reg_3 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_3,
      Q => nes_counter_reg(3)
    );
  nes_counter_reg_2 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_2,
      Q => nes_counter_reg(2)
    );
  nes_counter_reg_1 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_1,
      Q => nes_counter_reg(1)
    );
  nes_counter_reg_0 : FDCE
    port map (
      C => cd_q(0),
      CE => nes_counter_reg_not0001,
      CLR => btn_3_IBUF_19,
      D => nes_Mcount_counter_reg_eqn_0,
      Q => nes_counter_reg(0)
    );
  nes_right_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_right_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_right_reg_120
    );
  nes_b_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_b_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_b_reg_101
    );
  nes_sel_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_sel_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_sel_reg_155
    );
  nes_start_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_start_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_start_reg_157
    );
  nes_a_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_a_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_a_reg_99
    );
  nes_up_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_up_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_up_reg_159
    );
  nes_scalar_reg_9 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(9),
      Q => nes_scalar_reg(9)
    );
  nes_scalar_reg_8 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(8),
      Q => nes_scalar_reg(8)
    );
  nes_scalar_reg_7 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(7),
      Q => nes_scalar_reg(7)
    );
  nes_scalar_reg_6 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(6),
      Q => nes_scalar_reg(6)
    );
  nes_scalar_reg_5 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(5),
      Q => nes_scalar_reg(5)
    );
  nes_scalar_reg_4 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(4),
      Q => nes_scalar_reg(4)
    );
  nes_scalar_reg_3 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(3),
      Q => nes_scalar_reg(3)
    );
  nes_scalar_reg_2 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(2),
      Q => nes_scalar_reg(2)
    );
  nes_scalar_reg_1 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(1),
      Q => nes_scalar_reg(1)
    );
  nes_scalar_reg_0 : FDC
    port map (
      C => cd_q(0),
      CLR => btn_3_IBUF_19,
      D => nes_scalar_next(0),
      Q => nes_scalar_reg(0)
    );
  nes_down_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_down_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_down_reg_115
    );
  nes_left_reg : FDE
    port map (
      C => cd_q(0),
      CE => nes_left_reg_cmp_eq0000,
      D => nes_left_reg_not0001,
      Q => nes_left_reg_117
    );
  nes_state_next_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => nes_N01,
      I1 => nes_counter_reg(0),
      I2 => nes_N3,
      I3 => nes_counter_reg(4),
      O => ja2_OBUF_26
    );
  nes_nes_clk2 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => nes_N01,
      I1 => nes_counter_reg(0),
      I2 => nes_N3,
      I3 => nes_counter_reg(4),
      O => ja3_OBUF_28
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
  nes_Mcount_counter_reg_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_Result(0),
      I1 => nes_counter_reg_cmp_eq0000_113,
      O => nes_Mcount_counter_reg_eqn_0
    );
  nes_counter_reg_cmp_eq0000_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(4),
      O => N3
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
      O => nes_scalar_next_cmp_eq000010_143
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
      O => nes_scalar_next_cmp_eq000021_144
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
  nes_Mcount_counter_reg_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_Result(1),
      I1 => nes_counter_reg_cmp_eq0000_113,
      O => nes_Mcount_counter_reg_eqn_1
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
  nes_Mcount_counter_reg_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_Result(2),
      I1 => nes_counter_reg_cmp_eq0000_113,
      O => nes_Mcount_counter_reg_eqn_2
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
  nes_Mcount_counter_reg_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_Result(3),
      I1 => nes_counter_reg_cmp_eq0000_113,
      O => nes_Mcount_counter_reg_eqn_3
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
  nes_Mcount_counter_reg_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000_113,
      I1 => nes_Result(4),
      O => nes_Mcount_counter_reg_eqn_4
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
  nes_Mcount_counter_reg_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => N30,
      I1 => nes_Result(5),
      O => nes_Mcount_counter_reg_eqn_5
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
  nes_Mcount_counter_reg_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000_113,
      I1 => nes_Result(6),
      O => nes_Mcount_counter_reg_eqn_6
    );
  nes_counter_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(9),
      I1 => nes_counter_reg(6),
      I2 => nes_counter_reg(8),
      I3 => N26,
      O => nes_N3
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
  nes_Mcount_counter_reg_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000_113,
      I1 => nes_Result(7),
      O => nes_Mcount_counter_reg_eqn_7
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
  nes_Mcount_counter_reg_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000_113,
      I1 => nes_Result(8),
      O => nes_Mcount_counter_reg_eqn_8
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
  nes_Mcount_counter_reg_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => nes_counter_reg_cmp_eq0000_113,
      I1 => nes_Result(9),
      O => nes_Mcount_counter_reg_eqn_9
    );
  ja1_IBUF : IBUF
    port map (
      I => ja1,
      O => ja1_IBUF_24
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_19
    );
  ja2_OBUF : OBUF
    port map (
      I => ja2_OBUF_26,
      O => ja2
    );
  ja3_OBUF : OBUF
    port map (
      I => ja3_OBUF_28,
      O => ja3
    );
  ld_7_OBUF : OBUF
    port map (
      I => nes_left_reg_117,
      O => ld(7)
    );
  ld_6_OBUF : OBUF
    port map (
      I => nes_down_reg_115,
      O => ld(6)
    );
  ld_5_OBUF : OBUF
    port map (
      I => nes_up_reg_159,
      O => ld(5)
    );
  ld_4_OBUF : OBUF
    port map (
      I => nes_right_reg_120,
      O => ld(4)
    );
  ld_3_OBUF : OBUF
    port map (
      I => nes_sel_reg_155,
      O => ld(3)
    );
  ld_2_OBUF : OBUF
    port map (
      I => nes_start_reg_157,
      O => ld(2)
    );
  ld_1_OBUF : OBUF
    port map (
      I => nes_b_reg_101,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => nes_a_reg_99,
      O => ld(0)
    );
  nes_Mcount_counter_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(8),
      O => nes_Mcount_counter_reg_cy_8_rt_74
    );
  nes_Mcount_counter_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(7),
      O => nes_Mcount_counter_reg_cy_7_rt_72
    );
  nes_Mcount_counter_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(6),
      O => nes_Mcount_counter_reg_cy_6_rt_70
    );
  nes_Mcount_counter_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(5),
      O => nes_Mcount_counter_reg_cy_5_rt_68
    );
  nes_Mcount_counter_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_cy_4_rt_66
    );
  nes_Mcount_counter_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(3),
      O => nes_Mcount_counter_reg_cy_3_rt_64
    );
  nes_Mcount_counter_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_cy_2_rt_62
    );
  nes_Mcount_counter_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(1),
      O => nes_Mcount_counter_reg_cy_1_rt_60
    );
  nes_Madd_scalar_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(8),
      O => nes_Madd_scalar_next_addsub0000_cy_8_rt_55
    );
  nes_Madd_scalar_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(7),
      O => nes_Madd_scalar_next_addsub0000_cy_7_rt_53
    );
  nes_Madd_scalar_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(6),
      O => nes_Madd_scalar_next_addsub0000_cy_6_rt_51
    );
  nes_Madd_scalar_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(5),
      O => nes_Madd_scalar_next_addsub0000_cy_5_rt_49
    );
  nes_Madd_scalar_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(4),
      O => nes_Madd_scalar_next_addsub0000_cy_4_rt_47
    );
  nes_Madd_scalar_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(3),
      O => nes_Madd_scalar_next_addsub0000_cy_3_rt_45
    );
  nes_Madd_scalar_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(2),
      O => nes_Madd_scalar_next_addsub0000_cy_2_rt_43
    );
  nes_Madd_scalar_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(1),
      O => nes_Madd_scalar_next_addsub0000_cy_1_rt_41
    );
  nes_Mcount_counter_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_counter_reg(9),
      O => nes_Mcount_counter_reg_xor_9_rt_86
    );
  nes_Madd_scalar_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => nes_scalar_reg(9),
      O => nes_Madd_scalar_next_addsub0000_xor_9_rt_57
    );
  nes_a_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(4),
      I1 => nes_counter_reg(0),
      I2 => N25,
      I3 => nes_N3,
      O => nes_a_reg_cmp_eq0000
    );
  nes_counter_reg_cmp_eq0000_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(0),
      O => N7
    );
  nes_counter_reg_not00011 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => N3,
      I1 => N7,
      I2 => nes_N3,
      I3 => N31,
      O => nes_counter_reg_not0001
    );
  nes_up_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(0),
      I2 => N9,
      I3 => nes_N3,
      O => nes_up_reg_cmp_eq0000
    );
  nes_start_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => N28,
      I2 => nes_counter_reg(1),
      I3 => nes_N3,
      O => nes_start_reg_cmp_eq0000
    );
  nes_sel_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(0),
      I2 => N11,
      I3 => nes_N3,
      O => nes_sel_reg_cmp_eq0000
    );
  nes_right_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => N29,
      I2 => nes_counter_reg(1),
      I3 => nes_N3,
      O => nes_right_reg_cmp_eq0000
    );
  nes_left_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => nes_counter_reg(1),
      I1 => nes_counter_reg(0),
      I2 => N15,
      I3 => nes_N3,
      O => nes_left_reg_cmp_eq0000
    );
  nes_down_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => N27,
      I2 => nes_counter_reg(1),
      I3 => nes_N3,
      O => nes_down_reg_cmp_eq0000
    );
  nes_b_reg_cmp_eq00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => N21,
      I2 => nes_counter_reg(1),
      I3 => nes_N3,
      O => nes_b_reg_cmp_eq0000
    );
  nes_counter_reg_cmp_eq00001_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => nes_counter_reg(9),
      I1 => nes_counter_reg(8),
      I2 => nes_counter_reg(6),
      I3 => nes_counter_reg(1),
      O => N23
    );
  cd_q_0_BUFG : BUFG
    port map (
      I => cd_q_01,
      O => cd_q(0)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_38
    );
  cd_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => cd_q_01,
      O => cd_Mcount_q_lut(0)
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
      I => ja1_IBUF_24,
      O => nes_left_reg_not0001
    );
  nes_nes_clk11 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(2),
      I2 => nes_counter_reg(1),
      LO => N25,
      O => nes_N01
    );
  nes_counter_reg_cmp_eq00001_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => nes_counter_reg(7),
      I1 => nes_counter_reg(5),
      LO => N26,
      O => N5
    );
  nes_a_reg_cmp_eq000021_SW0 : LUT3_D
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => nes_counter_reg(3),
      I1 => nes_counter_reg(2),
      I2 => nes_counter_reg(4),
      LO => N27,
      O => N9
    );
  nes_a_reg_cmp_eq000021_SW1 : LUT3_D
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(4),
      LO => N28,
      O => N11
    );
  nes_a_reg_cmp_eq000021_SW3 : LUT3_D
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(4),
      I2 => nes_counter_reg(3),
      LO => N29,
      O => N15
    );
  nes_a_reg_cmp_eq000021_SW6 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => nes_counter_reg(2),
      I1 => nes_counter_reg(3),
      I2 => nes_counter_reg(4),
      LO => N21
    );
  nes_counter_reg_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => nes_counter_reg(0),
      I1 => N5,
      I2 => N3,
      I3 => N23,
      LO => N30,
      O => nes_counter_reg_cmp_eq0000_113
    );
  nes_scalar_next_cmp_eq000030 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => nes_scalar_reg(9),
      I1 => nes_scalar_reg(8),
      I2 => nes_scalar_next_cmp_eq000021_144,
      I3 => nes_scalar_next_cmp_eq000010_143,
      LO => N31,
      O => nes_scalar_next_cmp_eq0000
    );

end STRUCTURE;

