--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: detector_top.vhd
-- /___/   /\     Timestamp: Mon Mar 10 21:54:25 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w detector_top.ngc detector_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: detector_top.ngc
-- Output file	: detector_top.vhd
-- # of Entities	: 1
-- Design Name	: detector_top
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

entity detector_top is
  port (
    dp : out STD_LOGIC; 
    mclK : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ld : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end detector_top;

architecture STRUCTURE of detector_top is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal a_to_g_0_OBUF_35 : STD_LOGIC; 
  signal a_to_g_1_OBUF_36 : STD_LOGIC; 
  signal a_to_g_2_OBUF_37 : STD_LOGIC; 
  signal a_to_g_3_OBUF_38 : STD_LOGIC; 
  signal a_to_g_4_OBUF_39 : STD_LOGIC; 
  signal a_to_g_5_OBUF_40 : STD_LOGIC; 
  signal a_to_g_6_OBUF_41 : STD_LOGIC; 
  signal an_0_OBUF_46 : STD_LOGIC; 
  signal an_1_OBUF_47 : STD_LOGIC; 
  signal an_2_OBUF_48 : STD_LOGIC; 
  signal an_3_OBUF_49 : STD_LOGIC; 
  signal btn_0_IBUF_53 : STD_LOGIC; 
  signal btn_1_IBUF_54 : STD_LOGIC; 
  signal btn_2_IBUF_55 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_rt_58 : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_rt_60 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_rt_62 : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_rt_64 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_rt_66 : STD_LOGIC; 
  signal cd_Mcount_q_cy_15_rt_68 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_rt_70 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_rt_72 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_rt_74 : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_rt_76 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_rt_78 : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_rt_80 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_rt_82 : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_rt_84 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_rt_86 : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_rt_88 : STD_LOGIC; 
  signal cd_Mcount_q_xor_17_rt_90 : STD_LOGIC; 
  signal deb_to_det_115 : STD_LOGIC; 
  signal det_current_state_0_Q : STD_LOGIC; 
  signal det_current_state_1_Q : STD_LOGIC; 
  signal det_current_state_2_Q : STD_LOGIC; 
  signal det_current_state_5_Q : STD_LOGIC; 
  signal det_next_current_state_0_Q : STD_LOGIC; 
  signal det_next_current_state_1_Q_121 : STD_LOGIC; 
  signal det_next_current_state_2_Q_122 : STD_LOGIC; 
  signal det_next_current_state_5_Q : STD_LOGIC; 
  signal det_next_current_state_5_1_124 : STD_LOGIC; 
  signal det_next_current_state_5_13_125 : STD_LOGIC; 
  signal det_next_current_state_5_16_126 : STD_LOGIC; 
  signal det_next_current_state_5_30_127 : STD_LOGIC; 
  signal det_next_current_state_5_35_128 : STD_LOGIC; 
  signal det_next_current_state_5_6_129 : STD_LOGIC; 
  signal det_present_state_FSM_FFd1_130 : STD_LOGIC; 
  signal det_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_132 : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_134 : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_136 : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_138 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_139 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd3_141 : STD_LOGIC; 
  signal det_present_state_FSM_FFd3_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_143 : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd5_145 : STD_LOGIC; 
  signal det_present_state_FSM_FFd5_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_147 : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd7_149 : STD_LOGIC; 
  signal det_present_state_FSM_FFd7_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_151 : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd9_153 : STD_LOGIC; 
  signal det_present_state_FSM_FFd9_In : STD_LOGIC; 
  signal det_present_state_cmp_eq0000 : STD_LOGIC; 
  signal mclK_BUFGP_160 : STD_LOGIC; 
  signal sw_0_IBUF_177 : STD_LOGIC; 
  signal sw_1_IBUF_178 : STD_LOGIC; 
  signal sw_2_IBUF_179 : STD_LOGIC; 
  signal sw_3_IBUF_180 : STD_LOGIC; 
  signal sw_4_IBUF_181 : STD_LOGIC; 
  signal sw_5_IBUF_182 : STD_LOGIC; 
  signal sw_6_IBUF_183 : STD_LOGIC; 
  signal sw_7_IBUF_184 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_10_rt_187 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_11_rt_189 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_12_rt_191 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_13_rt_193 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_14_rt_195 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_15_rt_197 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_16_rt_199 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_17_rt_201 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_18_rt_203 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_1_rt_205 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_2_rt_207 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_3_rt_209 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_4_rt_211 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_5_rt_213 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_6_rt_215 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_7_rt_217 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_8_rt_219 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_9_rt_221 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_xor_19_rt_223 : STD_LOGIC; 
  signal x7seg_Mmux_digit_3_224 : STD_LOGIC; 
  signal x7seg_Mmux_digit_31_225 : STD_LOGIC; 
  signal x7seg_Mmux_digit_32_226 : STD_LOGIC; 
  signal x7seg_Mmux_digit_33_227 : STD_LOGIC; 
  signal x7seg_Mmux_digit_4_228 : STD_LOGIC; 
  signal x7seg_Mmux_digit_41_229 : STD_LOGIC; 
  signal x7seg_Mmux_digit_42_230 : STD_LOGIC; 
  signal x7seg_Mmux_digit_43_231 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal cd_Mcount_q_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal db_delay1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal db_delay2 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal db_delay3 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal r_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
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
  cd_q_0 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(0),
      Q => cd_q(0)
    );
  cd_q_1 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(1),
      Q => cd_q(1)
    );
  cd_q_2 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(2),
      Q => cd_q(2)
    );
  cd_q_3 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(3),
      Q => cd_q(3)
    );
  cd_q_4 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(4),
      Q => cd_q(4)
    );
  cd_q_5 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(5),
      Q => cd_q(5)
    );
  cd_q_6 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(6),
      Q => cd_q(6)
    );
  cd_q_7 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(7),
      Q => cd_q(7)
    );
  cd_q_8 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(8),
      Q => cd_q(8)
    );
  cd_q_9 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(9),
      Q => cd_q(9)
    );
  cd_q_10 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(10),
      Q => cd_q(10)
    );
  cd_q_11 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(11),
      Q => cd_q(11)
    );
  cd_q_12 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(12),
      Q => cd_q(12)
    );
  cd_q_13 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(13),
      Q => cd_q(13)
    );
  cd_q_14 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(14),
      Q => cd_q(14)
    );
  cd_q_15 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(15),
      Q => cd_q(15)
    );
  cd_q_16 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => Result(16),
      Q => cd_q(16)
    );
  cd_q_17 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
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
      S => cd_Mcount_q_cy_1_rt_72,
      O => cd_Mcount_q_cy(1)
    );
  cd_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(0),
      LI => cd_Mcount_q_cy_1_rt_72,
      O => Result(1)
    );
  cd_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(1),
      DI => N0,
      S => cd_Mcount_q_cy_2_rt_74,
      O => cd_Mcount_q_cy(2)
    );
  cd_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(1),
      LI => cd_Mcount_q_cy_2_rt_74,
      O => Result(2)
    );
  cd_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(2),
      DI => N0,
      S => cd_Mcount_q_cy_3_rt_76,
      O => cd_Mcount_q_cy(3)
    );
  cd_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(2),
      LI => cd_Mcount_q_cy_3_rt_76,
      O => Result(3)
    );
  cd_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(3),
      DI => N0,
      S => cd_Mcount_q_cy_4_rt_78,
      O => cd_Mcount_q_cy(4)
    );
  cd_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(3),
      LI => cd_Mcount_q_cy_4_rt_78,
      O => Result(4)
    );
  cd_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(4),
      DI => N0,
      S => cd_Mcount_q_cy_5_rt_80,
      O => cd_Mcount_q_cy(5)
    );
  cd_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(4),
      LI => cd_Mcount_q_cy_5_rt_80,
      O => Result(5)
    );
  cd_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(5),
      DI => N0,
      S => cd_Mcount_q_cy_6_rt_82,
      O => cd_Mcount_q_cy(6)
    );
  cd_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(5),
      LI => cd_Mcount_q_cy_6_rt_82,
      O => Result(6)
    );
  cd_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(6),
      DI => N0,
      S => cd_Mcount_q_cy_7_rt_84,
      O => cd_Mcount_q_cy(7)
    );
  cd_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(6),
      LI => cd_Mcount_q_cy_7_rt_84,
      O => Result(7)
    );
  cd_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(7),
      DI => N0,
      S => cd_Mcount_q_cy_8_rt_86,
      O => cd_Mcount_q_cy(8)
    );
  cd_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(7),
      LI => cd_Mcount_q_cy_8_rt_86,
      O => Result(8)
    );
  cd_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(8),
      DI => N0,
      S => cd_Mcount_q_cy_9_rt_88,
      O => cd_Mcount_q_cy(9)
    );
  cd_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(8),
      LI => cd_Mcount_q_cy_9_rt_88,
      O => Result(9)
    );
  cd_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(9),
      DI => N0,
      S => cd_Mcount_q_cy_10_rt_58,
      O => cd_Mcount_q_cy(10)
    );
  cd_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(9),
      LI => cd_Mcount_q_cy_10_rt_58,
      O => Result(10)
    );
  cd_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(10),
      DI => N0,
      S => cd_Mcount_q_cy_11_rt_60,
      O => cd_Mcount_q_cy(11)
    );
  cd_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(10),
      LI => cd_Mcount_q_cy_11_rt_60,
      O => Result(11)
    );
  cd_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(11),
      DI => N0,
      S => cd_Mcount_q_cy_12_rt_62,
      O => cd_Mcount_q_cy(12)
    );
  cd_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(11),
      LI => cd_Mcount_q_cy_12_rt_62,
      O => Result(12)
    );
  cd_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(12),
      DI => N0,
      S => cd_Mcount_q_cy_13_rt_64,
      O => cd_Mcount_q_cy(13)
    );
  cd_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(12),
      LI => cd_Mcount_q_cy_13_rt_64,
      O => Result(13)
    );
  cd_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(13),
      DI => N0,
      S => cd_Mcount_q_cy_14_rt_66,
      O => cd_Mcount_q_cy(14)
    );
  cd_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(13),
      LI => cd_Mcount_q_cy_14_rt_66,
      O => Result(14)
    );
  cd_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(14),
      DI => N0,
      S => cd_Mcount_q_cy_15_rt_68,
      O => cd_Mcount_q_cy(15)
    );
  cd_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(14),
      LI => cd_Mcount_q_cy_15_rt_68,
      O => Result(15)
    );
  cd_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => cd_Mcount_q_cy(15),
      DI => N0,
      S => cd_Mcount_q_cy_16_rt_70,
      O => cd_Mcount_q_cy(16)
    );
  cd_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(15),
      LI => cd_Mcount_q_cy_16_rt_70,
      O => Result(16)
    );
  cd_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => cd_Mcount_q_cy(16),
      LI => cd_Mcount_q_xor_17_rt_90,
      O => Result(17)
    );
  x7seg_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => det_current_state_0_Q,
      I2 => N0,
      O => x7seg_Mmux_digit_3_224
    );
  x7seg_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => r_q(0),
      I2 => r_q(4),
      O => x7seg_Mmux_digit_4_228
    );
  x7seg_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit_4_228,
      I1 => x7seg_Mmux_digit_3_224,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(0)
    );
  x7seg_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => det_current_state_1_Q,
      I2 => det_current_state_5_Q,
      O => x7seg_Mmux_digit_31_225
    );
  x7seg_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => r_q(1),
      I2 => r_q(5),
      O => x7seg_Mmux_digit_41_229
    );
  x7seg_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit_41_229,
      I1 => x7seg_Mmux_digit_31_225,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(1)
    );
  x7seg_Mmux_digit_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => det_current_state_2_Q,
      I2 => det_current_state_5_Q,
      O => x7seg_Mmux_digit_32_226
    );
  x7seg_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => r_q(2),
      I2 => r_q(6),
      O => x7seg_Mmux_digit_42_230
    );
  x7seg_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit_42_230,
      I1 => x7seg_Mmux_digit_32_226,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(2)
    );
  x7seg_Mmux_digit_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => N0,
      I2 => det_current_state_5_Q,
      O => x7seg_Mmux_digit_33_227
    );
  x7seg_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => r_q(3),
      I2 => r_q(7),
      O => x7seg_Mmux_digit_43_231
    );
  x7seg_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => x7seg_Mmux_digit_43_231,
      I1 => x7seg_Mmux_digit_33_227,
      S => x7seg_clkdiv(19),
      O => x7seg_digit(3)
    );
  x7seg_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(18),
      LI => x7seg_Mcount_clkdiv_xor_19_rt_223,
      O => x7seg_Result(19)
    );
  x7seg_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(17),
      LI => x7seg_Mcount_clkdiv_cy_18_rt_203,
      O => x7seg_Result(18)
    );
  x7seg_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(17),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_18_rt_203,
      O => x7seg_Mcount_clkdiv_cy(18)
    );
  x7seg_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(16),
      LI => x7seg_Mcount_clkdiv_cy_17_rt_201,
      O => x7seg_Result(17)
    );
  x7seg_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(16),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_17_rt_201,
      O => x7seg_Mcount_clkdiv_cy(17)
    );
  x7seg_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(15),
      LI => x7seg_Mcount_clkdiv_cy_16_rt_199,
      O => x7seg_Result(16)
    );
  x7seg_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(15),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_16_rt_199,
      O => x7seg_Mcount_clkdiv_cy(16)
    );
  x7seg_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(14),
      LI => x7seg_Mcount_clkdiv_cy_15_rt_197,
      O => x7seg_Result(15)
    );
  x7seg_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(14),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_15_rt_197,
      O => x7seg_Mcount_clkdiv_cy(15)
    );
  x7seg_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(13),
      LI => x7seg_Mcount_clkdiv_cy_14_rt_195,
      O => x7seg_Result(14)
    );
  x7seg_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(13),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_14_rt_195,
      O => x7seg_Mcount_clkdiv_cy(14)
    );
  x7seg_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(12),
      LI => x7seg_Mcount_clkdiv_cy_13_rt_193,
      O => x7seg_Result(13)
    );
  x7seg_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(12),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_13_rt_193,
      O => x7seg_Mcount_clkdiv_cy(13)
    );
  x7seg_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(11),
      LI => x7seg_Mcount_clkdiv_cy_12_rt_191,
      O => x7seg_Result(12)
    );
  x7seg_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(11),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_12_rt_191,
      O => x7seg_Mcount_clkdiv_cy(12)
    );
  x7seg_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(10),
      LI => x7seg_Mcount_clkdiv_cy_11_rt_189,
      O => x7seg_Result(11)
    );
  x7seg_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(10),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_11_rt_189,
      O => x7seg_Mcount_clkdiv_cy(11)
    );
  x7seg_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(9),
      LI => x7seg_Mcount_clkdiv_cy_10_rt_187,
      O => x7seg_Result(10)
    );
  x7seg_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(9),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_10_rt_187,
      O => x7seg_Mcount_clkdiv_cy(10)
    );
  x7seg_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(8),
      LI => x7seg_Mcount_clkdiv_cy_9_rt_221,
      O => x7seg_Result(9)
    );
  x7seg_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(8),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_9_rt_221,
      O => x7seg_Mcount_clkdiv_cy(9)
    );
  x7seg_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(7),
      LI => x7seg_Mcount_clkdiv_cy_8_rt_219,
      O => x7seg_Result(8)
    );
  x7seg_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(7),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_8_rt_219,
      O => x7seg_Mcount_clkdiv_cy(8)
    );
  x7seg_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(6),
      LI => x7seg_Mcount_clkdiv_cy_7_rt_217,
      O => x7seg_Result(7)
    );
  x7seg_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(6),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_7_rt_217,
      O => x7seg_Mcount_clkdiv_cy(7)
    );
  x7seg_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(5),
      LI => x7seg_Mcount_clkdiv_cy_6_rt_215,
      O => x7seg_Result(6)
    );
  x7seg_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(5),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_6_rt_215,
      O => x7seg_Mcount_clkdiv_cy(6)
    );
  x7seg_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(4),
      LI => x7seg_Mcount_clkdiv_cy_5_rt_213,
      O => x7seg_Result(5)
    );
  x7seg_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(4),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_5_rt_213,
      O => x7seg_Mcount_clkdiv_cy(5)
    );
  x7seg_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(3),
      LI => x7seg_Mcount_clkdiv_cy_4_rt_211,
      O => x7seg_Result(4)
    );
  x7seg_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(3),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_4_rt_211,
      O => x7seg_Mcount_clkdiv_cy(4)
    );
  x7seg_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(2),
      LI => x7seg_Mcount_clkdiv_cy_3_rt_209,
      O => x7seg_Result(3)
    );
  x7seg_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(2),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_3_rt_209,
      O => x7seg_Mcount_clkdiv_cy(3)
    );
  x7seg_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(1),
      LI => x7seg_Mcount_clkdiv_cy_2_rt_207,
      O => x7seg_Result(2)
    );
  x7seg_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(1),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_2_rt_207,
      O => x7seg_Mcount_clkdiv_cy(2)
    );
  x7seg_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(0),
      LI => x7seg_Mcount_clkdiv_cy_1_rt_205,
      O => x7seg_Result(1)
    );
  x7seg_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => x7seg_Mcount_clkdiv_cy(0),
      DI => N0,
      S => x7seg_Mcount_clkdiv_cy_1_rt_205,
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
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(19),
      Q => x7seg_clkdiv(19)
    );
  x7seg_clkdiv_18 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(18),
      Q => x7seg_clkdiv(18)
    );
  x7seg_clkdiv_17 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(17),
      Q => x7seg_clkdiv(17)
    );
  x7seg_clkdiv_16 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(16),
      Q => x7seg_clkdiv(16)
    );
  x7seg_clkdiv_15 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(15),
      Q => x7seg_clkdiv(15)
    );
  x7seg_clkdiv_14 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(14),
      Q => x7seg_clkdiv(14)
    );
  x7seg_clkdiv_13 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(13),
      Q => x7seg_clkdiv(13)
    );
  x7seg_clkdiv_12 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(12),
      Q => x7seg_clkdiv(12)
    );
  x7seg_clkdiv_11 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(11),
      Q => x7seg_clkdiv(11)
    );
  x7seg_clkdiv_10 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(10),
      Q => x7seg_clkdiv(10)
    );
  x7seg_clkdiv_9 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(9),
      Q => x7seg_clkdiv(9)
    );
  x7seg_clkdiv_8 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(8),
      Q => x7seg_clkdiv(8)
    );
  x7seg_clkdiv_7 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(7),
      Q => x7seg_clkdiv(7)
    );
  x7seg_clkdiv_6 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(6),
      Q => x7seg_clkdiv(6)
    );
  x7seg_clkdiv_5 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(5),
      Q => x7seg_clkdiv(5)
    );
  x7seg_clkdiv_4 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(4),
      Q => x7seg_clkdiv(4)
    );
  x7seg_clkdiv_3 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(3),
      Q => x7seg_clkdiv(3)
    );
  x7seg_clkdiv_2 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(2),
      Q => x7seg_clkdiv(2)
    );
  x7seg_clkdiv_1 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(1),
      Q => x7seg_clkdiv(1)
    );
  x7seg_clkdiv_0 : FDC
    port map (
      C => mclK_BUFGP_160,
      CLR => btn_0_IBUF_53,
      D => x7seg_Result(0),
      Q => x7seg_clkdiv(0)
    );
  r_q_7 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_7_IBUF_184,
      Q => r_q(7)
    );
  r_q_6 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_6_IBUF_183,
      Q => r_q(6)
    );
  r_q_5 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_5_IBUF_182,
      Q => r_q(5)
    );
  r_q_4 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_4_IBUF_181,
      Q => r_q(4)
    );
  r_q_3 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_3_IBUF_180,
      Q => r_q(3)
    );
  r_q_2 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_2_IBUF_179,
      Q => r_q(2)
    );
  r_q_1 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_1_IBUF_178,
      Q => r_q(1)
    );
  r_q_0 : FDCE
    port map (
      C => mclK_BUFGP_160,
      CE => det_present_state_FSM_FFd2_139,
      CLR => btn_0_IBUF_53,
      D => sw_0_IBUF_177,
      Q => r_q(0)
    );
  db_delay3_1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => db_delay2(1),
      Q => db_delay3(1)
    );
  db_delay3_0 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => db_delay2(0),
      Q => db_delay3(0)
    );
  db_delay2_1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => db_delay1(1),
      Q => db_delay2(1)
    );
  db_delay2_0 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => db_delay1(0),
      Q => db_delay2(0)
    );
  db_delay1_1 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => btn_2_IBUF_55,
      Q => db_delay1(1)
    );
  db_delay1_0 : FDC
    port map (
      C => cd_q(17),
      CLR => btn_0_IBUF_53,
      D => btn_1_IBUF_54,
      Q => db_delay1(0)
    );
  det_present_state_FSM_FFd12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd12_In,
      Q => det_present_state_FSM_FFd12_136
    );
  det_present_state_FSM_FFd11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd11_In,
      Q => det_present_state_FSM_FFd11_134
    );
  det_present_state_FSM_FFd13 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => deb_to_det_115,
      D => N0,
      PRE => btn_0_IBUF_53,
      Q => det_present_state_FSM_FFd13_138
    );
  det_present_state_FSM_FFd9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd9_In,
      Q => det_present_state_FSM_FFd9_153
    );
  det_present_state_FSM_FFd8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd8_In,
      Q => det_present_state_FSM_FFd8_151
    );
  det_present_state_FSM_FFd10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd10_In,
      Q => det_present_state_FSM_FFd10_132
    );
  det_present_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd6_In,
      Q => det_present_state_FSM_FFd6_147
    );
  det_present_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd5_In,
      Q => det_present_state_FSM_FFd5_145
    );
  det_present_state_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd7_In,
      Q => det_present_state_FSM_FFd7_149
    );
  det_present_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd4_In,
      Q => det_present_state_FSM_FFd4_143
    );
  det_present_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd3_In,
      Q => det_present_state_FSM_FFd3_141
    );
  det_present_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd2_In,
      Q => det_present_state_FSM_FFd2_139
    );
  det_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_present_state_FSM_FFd1_In,
      Q => det_present_state_FSM_FFd1_130
    );
  det_current_state_5 : FDC
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_next_current_state_5_Q,
      Q => det_current_state_5_Q
    );
  det_current_state_2 : FDC
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_next_current_state_2_Q_122,
      Q => det_current_state_2_Q
    );
  det_current_state_1 : FDC
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_next_current_state_1_Q_121,
      Q => det_current_state_1_Q
    );
  det_current_state_0 : FDC
    port map (
      C => deb_to_det_115,
      CLR => btn_0_IBUF_53,
      D => det_next_current_state_0_Q,
      Q => det_current_state_0_Q
    );
  deb_to_det_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => db_delay2(0),
      I1 => db_delay1(0),
      I2 => db_delay3(0),
      O => N01
    );
  deb_to_det : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N01,
      I1 => db_delay2(1),
      I2 => db_delay1(1),
      I3 => db_delay3(1),
      O => deb_to_det_115
    );
  x7seg_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => x7seg_clkdiv(19),
      O => an_0_OBUF_46
    );
  x7seg_an_3_mux00011 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      I1 => x7seg_clkdiv(19),
      I2 => det_current_state_5_Q,
      O => an_3_OBUF_49
    );
  det_present_state_FSM_FFd8_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => btn_2_IBUF_55,
      I1 => btn_1_IBUF_54,
      I2 => det_present_state_FSM_FFd10_132,
      O => det_present_state_FSM_FFd8_In
    );
  det_present_state_FSM_FFd6_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => btn_2_IBUF_55,
      I1 => btn_1_IBUF_54,
      I2 => det_present_state_FSM_FFd8_151,
      O => det_present_state_FSM_FFd6_In
    );
  det_present_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => btn_2_IBUF_55,
      I1 => btn_1_IBUF_54,
      I2 => det_present_state_FSM_FFd4_143,
      O => det_present_state_FSM_FFd2_In
    );
  det_present_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd10_132,
      I1 => btn_1_IBUF_54,
      I2 => btn_2_IBUF_55,
      I3 => det_present_state_FSM_FFd9_153,
      O => det_present_state_FSM_FFd7_In
    );
  det_present_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd8_151,
      I1 => btn_1_IBUF_54,
      I2 => btn_2_IBUF_55,
      I3 => det_present_state_FSM_FFd7_149,
      O => det_present_state_FSM_FFd5_In
    );
  det_present_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd4_143,
      I1 => btn_1_IBUF_54,
      I2 => btn_2_IBUF_55,
      I3 => det_present_state_FSM_FFd3_141,
      O => det_present_state_FSM_FFd1_In
    );
  det_present_state_FSM_FFd12_In1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => det_present_state_cmp_eq0000,
      I1 => det_present_state_FSM_FFd13_138,
      I2 => det_present_state_FSM_FFd1_130,
      I3 => det_present_state_FSM_FFd2_139,
      O => det_present_state_FSM_FFd12_In
    );
  det_present_state_FSM_FFd11_In1 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => det_present_state_cmp_eq0000,
      I1 => det_present_state_FSM_FFd2_139,
      I2 => det_present_state_FSM_FFd1_130,
      I3 => det_present_state_FSM_FFd13_138,
      O => det_present_state_FSM_FFd11_In
    );
  det_next_current_state_2_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd5_145,
      I1 => det_present_state_FSM_FFd7_149,
      I2 => det_present_state_FSM_FFd4_143,
      I3 => N2,
      O => det_next_current_state_2_Q_122
    );
  x7seg_an_2_mux0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => det_current_state_2_Q,
      I1 => det_current_state_1_Q,
      I2 => det_current_state_0_Q,
      O => N4
    );
  x7seg_an_2_mux0001 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => x7seg_clkdiv(19),
      I1 => det_current_state_5_Q,
      I2 => N4,
      I3 => x7seg_clkdiv(18),
      O => an_2_OBUF_48
    );
  det_present_state_cmp_eq00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => btn_1_IBUF_54,
      I1 => btn_2_IBUF_55,
      O => det_present_state_cmp_eq0000
    );
  det_next_current_state_1_Q : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => det_present_state_FSM_FFd12_136,
      I1 => det_present_state_cmp_eq0000,
      I2 => det_present_state_FSM_FFd4_143,
      I3 => N6,
      O => det_next_current_state_1_Q_121
    );
  x7seg_Mrom_a_to_g21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => x7seg_digit(3),
      I1 => x7seg_digit(0),
      I2 => x7seg_digit(1),
      I3 => x7seg_digit(2),
      O => a_to_g_2_OBUF_37
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
      O => a_to_g_4_OBUF_39
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
      O => a_to_g_1_OBUF_36
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
      O => a_to_g_5_OBUF_40
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
      O => a_to_g_0_OBUF_35
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
      O => a_to_g_3_OBUF_38
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
      O => a_to_g_6_OBUF_41
    );
  det_next_current_state_5_6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd9_153,
      I1 => det_present_state_FSM_FFd3_141,
      I2 => det_present_state_FSM_FFd11_134,
      I3 => det_next_current_state_5_1_124,
      O => det_next_current_state_5_6_129
    );
  det_next_current_state_5_13 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => btn_2_IBUF_55,
      I1 => btn_1_IBUF_54,
      O => det_next_current_state_5_13_125
    );
  det_next_current_state_5_35 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd1_130,
      I1 => det_present_state_FSM_FFd6_147,
      I2 => det_present_state_FSM_FFd2_139,
      I3 => det_next_current_state_5_30_127,
      O => det_next_current_state_5_35_128
    );
  det_next_current_state_5_47 : LUT4
    generic map(
      INIT => X"FDFC"
    )
    port map (
      I0 => det_present_state_cmp_eq0000,
      I1 => det_next_current_state_5_16_126,
      I2 => det_next_current_state_5_6_129,
      I3 => det_next_current_state_5_35_128,
      O => det_next_current_state_5_Q
    );
  btn_2_IBUF : IBUF
    port map (
      I => btn(2),
      O => btn_2_IBUF_55
    );
  btn_1_IBUF : IBUF
    port map (
      I => btn(1),
      O => btn_1_IBUF_54
    );
  btn_0_IBUF : IBUF
    port map (
      I => btn(0),
      O => btn_0_IBUF_53
    );
  sw_7_IBUF : IBUF
    port map (
      I => sw(7),
      O => sw_7_IBUF_184
    );
  sw_6_IBUF : IBUF
    port map (
      I => sw(6),
      O => sw_6_IBUF_183
    );
  sw_5_IBUF : IBUF
    port map (
      I => sw(5),
      O => sw_5_IBUF_182
    );
  sw_4_IBUF : IBUF
    port map (
      I => sw(4),
      O => sw_4_IBUF_181
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_180
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_179
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_178
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_177
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_49,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_48,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_47,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_46,
      O => an(0)
    );
  ld_1_OBUF : OBUF
    port map (
      I => det_present_state_FSM_FFd1_130,
      O => ld(1)
    );
  ld_0_OBUF : OBUF
    port map (
      I => det_present_state_FSM_FFd2_139,
      O => ld(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_41,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_40,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_39,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_38,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_37,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_36,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_35,
      O => a_to_g(0)
    );
  cd_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(1),
      O => cd_Mcount_q_cy_1_rt_72
    );
  cd_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(2),
      O => cd_Mcount_q_cy_2_rt_74
    );
  cd_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(3),
      O => cd_Mcount_q_cy_3_rt_76
    );
  cd_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(4),
      O => cd_Mcount_q_cy_4_rt_78
    );
  cd_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(5),
      O => cd_Mcount_q_cy_5_rt_80
    );
  cd_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(6),
      O => cd_Mcount_q_cy_6_rt_82
    );
  cd_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(7),
      O => cd_Mcount_q_cy_7_rt_84
    );
  cd_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(8),
      O => cd_Mcount_q_cy_8_rt_86
    );
  cd_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(9),
      O => cd_Mcount_q_cy_9_rt_88
    );
  cd_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(10),
      O => cd_Mcount_q_cy_10_rt_58
    );
  cd_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(11),
      O => cd_Mcount_q_cy_11_rt_60
    );
  cd_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(12),
      O => cd_Mcount_q_cy_12_rt_62
    );
  cd_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(13),
      O => cd_Mcount_q_cy_13_rt_64
    );
  cd_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(14),
      O => cd_Mcount_q_cy_14_rt_66
    );
  cd_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(15),
      O => cd_Mcount_q_cy_15_rt_68
    );
  cd_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(16),
      O => cd_Mcount_q_cy_16_rt_70
    );
  x7seg_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(18),
      O => x7seg_Mcount_clkdiv_cy_18_rt_203
    );
  x7seg_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(17),
      O => x7seg_Mcount_clkdiv_cy_17_rt_201
    );
  x7seg_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(16),
      O => x7seg_Mcount_clkdiv_cy_16_rt_199
    );
  x7seg_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(15),
      O => x7seg_Mcount_clkdiv_cy_15_rt_197
    );
  x7seg_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(14),
      O => x7seg_Mcount_clkdiv_cy_14_rt_195
    );
  x7seg_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(13),
      O => x7seg_Mcount_clkdiv_cy_13_rt_193
    );
  x7seg_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(12),
      O => x7seg_Mcount_clkdiv_cy_12_rt_191
    );
  x7seg_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(11),
      O => x7seg_Mcount_clkdiv_cy_11_rt_189
    );
  x7seg_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(10),
      O => x7seg_Mcount_clkdiv_cy_10_rt_187
    );
  x7seg_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(9),
      O => x7seg_Mcount_clkdiv_cy_9_rt_221
    );
  x7seg_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(8),
      O => x7seg_Mcount_clkdiv_cy_8_rt_219
    );
  x7seg_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(7),
      O => x7seg_Mcount_clkdiv_cy_7_rt_217
    );
  x7seg_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(6),
      O => x7seg_Mcount_clkdiv_cy_6_rt_215
    );
  x7seg_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(5),
      O => x7seg_Mcount_clkdiv_cy_5_rt_213
    );
  x7seg_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(4),
      O => x7seg_Mcount_clkdiv_cy_4_rt_211
    );
  x7seg_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(3),
      O => x7seg_Mcount_clkdiv_cy_3_rt_209
    );
  x7seg_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(2),
      O => x7seg_Mcount_clkdiv_cy_2_rt_207
    );
  x7seg_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(1),
      O => x7seg_Mcount_clkdiv_cy_1_rt_205
    );
  cd_Mcount_q_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cd_q(17),
      O => cd_Mcount_q_xor_17_rt_90
    );
  x7seg_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => x7seg_clkdiv(19),
      O => x7seg_Mcount_clkdiv_xor_19_rt_223
    );
  x7seg_an_1_mux000151 : LUT4
    generic map(
      INIT => X"BAFF"
    )
    port map (
      I0 => x7seg_clkdiv(19),
      I1 => det_current_state_1_Q,
      I2 => N10,
      I3 => x7seg_clkdiv(18),
      O => an_1_OBUF_47
    );
  det_present_state_FSM_FFd4_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => btn_1_IBUF_54,
      I1 => btn_2_IBUF_55,
      I2 => det_present_state_FSM_FFd6_147,
      O => det_present_state_FSM_FFd4_In
    );
  det_present_state_FSM_FFd10_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => btn_1_IBUF_54,
      I1 => btn_2_IBUF_55,
      I2 => det_present_state_FSM_FFd12_136,
      O => det_present_state_FSM_FFd10_In
    );
  det_present_state_FSM_FFd9_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd12_136,
      I1 => btn_2_IBUF_55,
      I2 => btn_1_IBUF_54,
      I3 => det_present_state_FSM_FFd11_134,
      O => det_present_state_FSM_FFd9_In
    );
  det_present_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd6_147,
      I1 => btn_2_IBUF_55,
      I2 => btn_1_IBUF_54,
      I3 => det_present_state_FSM_FFd5_145,
      O => det_present_state_FSM_FFd3_In
    );
  x7seg_an_1_mux000151_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => r_q(4),
      I1 => r_q(5),
      I2 => r_q(6),
      I3 => r_q(7),
      O => N12
    );
  x7seg_an_1_mux000151_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => det_current_state_5_Q,
      I1 => det_current_state_0_Q,
      I2 => det_current_state_2_Q,
      I3 => N12,
      O => N10
    );
  det_next_current_state_0_18_SW1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => det_present_state_FSM_FFd12_136,
      I1 => btn_2_IBUF_55,
      I2 => btn_1_IBUF_54,
      I3 => det_present_state_FSM_FFd5_145,
      O => N14
    );
  det_next_current_state_0_18 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd10_132,
      I1 => det_present_state_FSM_FFd1_130,
      I2 => N14,
      I3 => N8,
      O => det_next_current_state_0_Q
    );
  mclK_BUFGP : BUFGP
    port map (
      I => mclK,
      O => mclK_BUFGP_160
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
  det_next_current_state_2_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => det_present_state_FSM_FFd8_151,
      I1 => det_present_state_FSM_FFd3_141,
      I2 => det_present_state_FSM_FFd6_147,
      LO => N2
    );
  det_next_current_state_1_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd3_141,
      I1 => det_present_state_FSM_FFd9_153,
      I2 => det_present_state_FSM_FFd11_134,
      I3 => det_present_state_FSM_FFd10_132,
      LO => N6
    );
  det_next_current_state_5_1 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => det_present_state_FSM_FFd7_149,
      I1 => det_present_state_FSM_FFd5_145,
      LO => det_next_current_state_5_1_124
    );
  det_next_current_state_5_16 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => det_next_current_state_5_13_125,
      I1 => det_present_state_FSM_FFd10_132,
      I2 => det_present_state_FSM_FFd8_151,
      I3 => det_present_state_FSM_FFd4_143,
      LO => det_next_current_state_5_16_126
    );
  det_next_current_state_5_30 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => det_present_state_FSM_FFd13_138,
      I1 => det_present_state_FSM_FFd12_136,
      LO => det_next_current_state_5_30_127
    );
  det_next_current_state_0_18_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => det_present_state_FSM_FFd9_153,
      I1 => det_present_state_FSM_FFd13_138,
      I2 => det_present_state_FSM_FFd6_147,
      I3 => det_present_state_FSM_FFd2_139,
      LO => N8
    );

end STRUCTURE;

