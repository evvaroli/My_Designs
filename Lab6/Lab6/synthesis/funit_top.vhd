--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: funit_top.vhd
-- /___/   /\     Timestamp: Wed Mar 19 15:43:03 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w funit_top.ngc funit_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: funit_top.ngc
-- Output file	: funit_top.vhd
-- # of Entities	: 1
-- Design Name	: funit_top
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

entity funit_top is
  port (
    dp : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end funit_top;

architecture STRUCTURE of funit_top is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal a_to_g_0_OBUF_10 : STD_LOGIC; 
  signal a_to_g_1_OBUF_11 : STD_LOGIC; 
  signal a_to_g_2_OBUF_12 : STD_LOGIC; 
  signal a_to_g_3_OBUF_13 : STD_LOGIC; 
  signal a_to_g_4_OBUF_14 : STD_LOGIC; 
  signal a_to_g_5_OBUF_15 : STD_LOGIC; 
  signal a_to_g_6_OBUF_16 : STD_LOGIC; 
  signal an_0_OBUF_21 : STD_LOGIC; 
  signal an_1_OBUF_22 : STD_LOGIC; 
  signal an_2_OBUF_23 : STD_LOGIC; 
  signal an_3_OBUF_24 : STD_LOGIC; 
  signal btn_3_IBUF_26 : STD_LOGIC; 
  signal f_y_cmp_eq0000 : STD_LOGIC; 
  signal mclk_BUFGP_62 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_10_rt_65 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_11_rt_67 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_12_rt_69 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_13_rt_71 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_14_rt_73 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_15_rt_75 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_16_rt_77 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_17_rt_79 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_18_rt_81 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_1_rt_83 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_2_rt_85 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_3_rt_87 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_4_rt_89 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_5_rt_91 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_6_rt_93 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_7_rt_95 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_8_rt_97 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_9_rt_99 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_xor_19_rt_101 : STD_LOGIC; 
  signal seg_Mmux_digit_3_102 : STD_LOGIC; 
  signal seg_Mmux_digit_31_103 : STD_LOGIC; 
  signal seg_Mmux_digit_32_104 : STD_LOGIC; 
  signal seg_Mmux_digit_33_105 : STD_LOGIC; 
  signal seg_Mmux_digit_4_106 : STD_LOGIC; 
  signal seg_Mmux_digit_41_107 : STD_LOGIC; 
  signal seg_Mmux_digit_42_108 : STD_LOGIC; 
  signal seg_Mmux_digit_43_109 : STD_LOGIC; 
  signal seg_an_1_mux000115 : STD_LOGIC; 
  signal seg_an_1_mux00012_131 : STD_LOGIC; 
  signal seg_an_1_mux000128_132 : STD_LOGIC; 
  signal seg_an_1_mux000152_133 : STD_LOGIC; 
  signal seg_an_2_mux000128_134 : STD_LOGIC; 
  signal sw_0_IBUF_163 : STD_LOGIC; 
  signal sw_1_IBUF_164 : STD_LOGIC; 
  signal sw_2_IBUF_165 : STD_LOGIC; 
  signal sw_3_IBUF_166 : STD_LOGIC; 
  signal f_y : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal f_y_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal seg_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal seg_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal seg_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal seg_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal seg_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  seg_Mmux_digit_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(8),
      I2 => f_y(12),
      O => seg_Mmux_digit_3_102
    );
  seg_Mmux_digit_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(0),
      I2 => f_y(4),
      O => seg_Mmux_digit_4_106
    );
  seg_Mmux_digit_2_f5 : MUXF5
    port map (
      I0 => seg_Mmux_digit_4_106,
      I1 => seg_Mmux_digit_3_102,
      S => seg_clkdiv(19),
      O => seg_digit(0)
    );
  seg_Mmux_digit_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(9),
      I2 => f_y(13),
      O => seg_Mmux_digit_31_103
    );
  seg_Mmux_digit_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(1),
      I2 => f_y(5),
      O => seg_Mmux_digit_41_107
    );
  seg_Mmux_digit_2_f5_0 : MUXF5
    port map (
      I0 => seg_Mmux_digit_41_107,
      I1 => seg_Mmux_digit_31_103,
      S => seg_clkdiv(19),
      O => seg_digit(1)
    );
  seg_Mmux_digit_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(10),
      I2 => f_y(14),
      O => seg_Mmux_digit_32_104
    );
  seg_Mmux_digit_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(2),
      I2 => f_y(6),
      O => seg_Mmux_digit_42_108
    );
  seg_Mmux_digit_2_f5_1 : MUXF5
    port map (
      I0 => seg_Mmux_digit_42_108,
      I1 => seg_Mmux_digit_32_104,
      S => seg_clkdiv(19),
      O => seg_digit(2)
    );
  seg_Mmux_digit_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(11),
      I2 => f_y(15),
      O => seg_Mmux_digit_33_105
    );
  seg_Mmux_digit_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => f_y(3),
      I2 => f_y(7),
      O => seg_Mmux_digit_43_109
    );
  seg_Mmux_digit_2_f5_2 : MUXF5
    port map (
      I0 => seg_Mmux_digit_43_109,
      I1 => seg_Mmux_digit_33_105,
      S => seg_clkdiv(19),
      O => seg_digit(3)
    );
  seg_Mcount_clkdiv_xor_19_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(18),
      LI => seg_Mcount_clkdiv_xor_19_rt_101,
      O => seg_Result(19)
    );
  seg_Mcount_clkdiv_xor_18_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      LI => seg_Mcount_clkdiv_cy_18_rt_81,
      O => seg_Result(18)
    );
  seg_Mcount_clkdiv_cy_18_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(17),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_18_rt_81,
      O => seg_Mcount_clkdiv_cy(18)
    );
  seg_Mcount_clkdiv_xor_17_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      LI => seg_Mcount_clkdiv_cy_17_rt_79,
      O => seg_Result(17)
    );
  seg_Mcount_clkdiv_cy_17_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(16),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_17_rt_79,
      O => seg_Mcount_clkdiv_cy(17)
    );
  seg_Mcount_clkdiv_xor_16_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      LI => seg_Mcount_clkdiv_cy_16_rt_77,
      O => seg_Result(16)
    );
  seg_Mcount_clkdiv_cy_16_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(15),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_16_rt_77,
      O => seg_Mcount_clkdiv_cy(16)
    );
  seg_Mcount_clkdiv_xor_15_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      LI => seg_Mcount_clkdiv_cy_15_rt_75,
      O => seg_Result(15)
    );
  seg_Mcount_clkdiv_cy_15_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(14),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_15_rt_75,
      O => seg_Mcount_clkdiv_cy(15)
    );
  seg_Mcount_clkdiv_xor_14_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      LI => seg_Mcount_clkdiv_cy_14_rt_73,
      O => seg_Result(14)
    );
  seg_Mcount_clkdiv_cy_14_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(13),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_14_rt_73,
      O => seg_Mcount_clkdiv_cy(14)
    );
  seg_Mcount_clkdiv_xor_13_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      LI => seg_Mcount_clkdiv_cy_13_rt_71,
      O => seg_Result(13)
    );
  seg_Mcount_clkdiv_cy_13_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(12),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_13_rt_71,
      O => seg_Mcount_clkdiv_cy(13)
    );
  seg_Mcount_clkdiv_xor_12_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      LI => seg_Mcount_clkdiv_cy_12_rt_69,
      O => seg_Result(12)
    );
  seg_Mcount_clkdiv_cy_12_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(11),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_12_rt_69,
      O => seg_Mcount_clkdiv_cy(12)
    );
  seg_Mcount_clkdiv_xor_11_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      LI => seg_Mcount_clkdiv_cy_11_rt_67,
      O => seg_Result(11)
    );
  seg_Mcount_clkdiv_cy_11_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(10),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_11_rt_67,
      O => seg_Mcount_clkdiv_cy(11)
    );
  seg_Mcount_clkdiv_xor_10_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      LI => seg_Mcount_clkdiv_cy_10_rt_65,
      O => seg_Result(10)
    );
  seg_Mcount_clkdiv_cy_10_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(9),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_10_rt_65,
      O => seg_Mcount_clkdiv_cy(10)
    );
  seg_Mcount_clkdiv_xor_9_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      LI => seg_Mcount_clkdiv_cy_9_rt_99,
      O => seg_Result(9)
    );
  seg_Mcount_clkdiv_cy_9_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(8),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_9_rt_99,
      O => seg_Mcount_clkdiv_cy(9)
    );
  seg_Mcount_clkdiv_xor_8_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      LI => seg_Mcount_clkdiv_cy_8_rt_97,
      O => seg_Result(8)
    );
  seg_Mcount_clkdiv_cy_8_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(7),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_8_rt_97,
      O => seg_Mcount_clkdiv_cy(8)
    );
  seg_Mcount_clkdiv_xor_7_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      LI => seg_Mcount_clkdiv_cy_7_rt_95,
      O => seg_Result(7)
    );
  seg_Mcount_clkdiv_cy_7_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(6),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_7_rt_95,
      O => seg_Mcount_clkdiv_cy(7)
    );
  seg_Mcount_clkdiv_xor_6_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      LI => seg_Mcount_clkdiv_cy_6_rt_93,
      O => seg_Result(6)
    );
  seg_Mcount_clkdiv_cy_6_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(5),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_6_rt_93,
      O => seg_Mcount_clkdiv_cy(6)
    );
  seg_Mcount_clkdiv_xor_5_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      LI => seg_Mcount_clkdiv_cy_5_rt_91,
      O => seg_Result(5)
    );
  seg_Mcount_clkdiv_cy_5_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(4),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_5_rt_91,
      O => seg_Mcount_clkdiv_cy(5)
    );
  seg_Mcount_clkdiv_xor_4_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      LI => seg_Mcount_clkdiv_cy_4_rt_89,
      O => seg_Result(4)
    );
  seg_Mcount_clkdiv_cy_4_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(3),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_4_rt_89,
      O => seg_Mcount_clkdiv_cy(4)
    );
  seg_Mcount_clkdiv_xor_3_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      LI => seg_Mcount_clkdiv_cy_3_rt_87,
      O => seg_Result(3)
    );
  seg_Mcount_clkdiv_cy_3_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(2),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_3_rt_87,
      O => seg_Mcount_clkdiv_cy(3)
    );
  seg_Mcount_clkdiv_xor_2_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      LI => seg_Mcount_clkdiv_cy_2_rt_85,
      O => seg_Result(2)
    );
  seg_Mcount_clkdiv_cy_2_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(1),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_2_rt_85,
      O => seg_Mcount_clkdiv_cy(2)
    );
  seg_Mcount_clkdiv_xor_1_Q : XORCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      LI => seg_Mcount_clkdiv_cy_1_rt_83,
      O => seg_Result(1)
    );
  seg_Mcount_clkdiv_cy_1_Q : MUXCY
    port map (
      CI => seg_Mcount_clkdiv_cy(0),
      DI => N0,
      S => seg_Mcount_clkdiv_cy_1_rt_83,
      O => seg_Mcount_clkdiv_cy(1)
    );
  seg_Mcount_clkdiv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => seg_Mcount_clkdiv_lut(0),
      O => seg_Result(0)
    );
  seg_Mcount_clkdiv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => seg_Mcount_clkdiv_lut(0),
      O => seg_Mcount_clkdiv_cy(0)
    );
  seg_clkdiv_19 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(19),
      Q => seg_clkdiv(19)
    );
  seg_clkdiv_18 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(18),
      Q => seg_clkdiv(18)
    );
  seg_clkdiv_17 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(17),
      Q => seg_clkdiv(17)
    );
  seg_clkdiv_16 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(16),
      Q => seg_clkdiv(16)
    );
  seg_clkdiv_15 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(15),
      Q => seg_clkdiv(15)
    );
  seg_clkdiv_14 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(14),
      Q => seg_clkdiv(14)
    );
  seg_clkdiv_13 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(13),
      Q => seg_clkdiv(13)
    );
  seg_clkdiv_12 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(12),
      Q => seg_clkdiv(12)
    );
  seg_clkdiv_11 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(11),
      Q => seg_clkdiv(11)
    );
  seg_clkdiv_10 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(10),
      Q => seg_clkdiv(10)
    );
  seg_clkdiv_9 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(9),
      Q => seg_clkdiv(9)
    );
  seg_clkdiv_8 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(8),
      Q => seg_clkdiv(8)
    );
  seg_clkdiv_7 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(7),
      Q => seg_clkdiv(7)
    );
  seg_clkdiv_6 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(6),
      Q => seg_clkdiv(6)
    );
  seg_clkdiv_5 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(5),
      Q => seg_clkdiv(5)
    );
  seg_clkdiv_4 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(4),
      Q => seg_clkdiv(4)
    );
  seg_clkdiv_3 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(3),
      Q => seg_clkdiv(3)
    );
  seg_clkdiv_2 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(2),
      Q => seg_clkdiv(2)
    );
  seg_clkdiv_1 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(1),
      Q => seg_clkdiv(1)
    );
  seg_clkdiv_0 : FDC
    port map (
      C => mclk_BUFGP_62,
      CLR => btn_3_IBUF_26,
      D => seg_Result(0),
      Q => seg_clkdiv(0)
    );
  f_y_15 : LD_1
    port map (
      D => f_y_mux0000(15),
      G => f_y_cmp_eq0000,
      Q => f_y(15)
    );
  f_y_14 : LD_1
    port map (
      D => f_y_mux0000(14),
      G => f_y_cmp_eq0000,
      Q => f_y(14)
    );
  f_y_13 : LD_1
    port map (
      D => f_y_mux0000(13),
      G => f_y_cmp_eq0000,
      Q => f_y(13)
    );
  f_y_12 : LD_1
    port map (
      D => f_y_mux0000(12),
      G => f_y_cmp_eq0000,
      Q => f_y(12)
    );
  f_y_11 : LD_1
    port map (
      D => f_y_mux0000(11),
      G => f_y_cmp_eq0000,
      Q => f_y(11)
    );
  f_y_10 : LD_1
    port map (
      D => f_y_mux0000(10),
      G => f_y_cmp_eq0000,
      Q => f_y(10)
    );
  f_y_9 : LD_1
    port map (
      D => f_y_mux0000(9),
      G => f_y_cmp_eq0000,
      Q => f_y(9)
    );
  f_y_8 : LD_1
    port map (
      D => f_y_mux0000(8),
      G => f_y_cmp_eq0000,
      Q => f_y(8)
    );
  f_y_7 : LD_1
    port map (
      D => f_y_mux0000(7),
      G => f_y_cmp_eq0000,
      Q => f_y(7)
    );
  f_y_6 : LD_1
    port map (
      D => f_y_mux0000(6),
      G => f_y_cmp_eq0000,
      Q => f_y(6)
    );
  f_y_5 : LD_1
    port map (
      D => f_y_mux0000(5),
      G => f_y_cmp_eq0000,
      Q => f_y(5)
    );
  f_y_4 : LD_1
    port map (
      D => f_y_mux0000(4),
      G => f_y_cmp_eq0000,
      Q => f_y(4)
    );
  f_y_3 : LD_1
    port map (
      D => f_y_mux0000(3),
      G => f_y_cmp_eq0000,
      Q => f_y(3)
    );
  f_y_2 : LD_1
    port map (
      D => f_y_mux0000(2),
      G => f_y_cmp_eq0000,
      Q => f_y(2)
    );
  f_y_1 : LD_1
    port map (
      D => f_y_mux0000(1),
      G => f_y_cmp_eq0000,
      Q => f_y(1)
    );
  f_y_0 : LD_1
    port map (
      D => f_y_mux0000(0),
      G => f_y_cmp_eq0000,
      Q => f_y(0)
    );
  f_y_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_0_IBUF_163,
      I2 => sw_2_IBUF_165,
      I3 => sw_1_IBUF_164,
      O => f_y_cmp_eq0000
    );
  f_Mmux_y_mux0000201 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => sw_1_IBUF_164,
      I1 => sw_3_IBUF_166,
      I2 => sw_2_IBUF_165,
      O => f_y_mux0000(5)
    );
  f_Mmux_y_mux0000231 : LUT4
    generic map(
      INIT => X"898B"
    )
    port map (
      I0 => sw_2_IBUF_165,
      I1 => sw_1_IBUF_164,
      I2 => sw_3_IBUF_166,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(7)
    );
  f_Mmux_y_mux0000211 : LUT4
    generic map(
      INIT => X"8903"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_1_IBUF_164,
      I2 => sw_0_IBUF_163,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(6)
    );
  f_Mmux_y_mux0000111 : LUT4
    generic map(
      INIT => X"CC4D"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_1_IBUF_164,
      I2 => sw_0_IBUF_163,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(15)
    );
  f_Mmux_y_mux000021 : LUT4
    generic map(
      INIT => X"A4BC"
    )
    port map (
      I0 => sw_1_IBUF_164,
      I1 => sw_3_IBUF_166,
      I2 => sw_2_IBUF_165,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(10)
    );
  f_Mmux_y_mux000061 : LUT4
    generic map(
      INIT => X"8184"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_2_IBUF_165,
      I2 => sw_1_IBUF_164,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(13)
    );
  f_Mmux_y_mux000051 : LUT4
    generic map(
      INIT => X"8913"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_1_IBUF_164,
      I2 => sw_0_IBUF_163,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(12)
    );
  f_Mmux_y_mux000031 : LUT4
    generic map(
      INIT => X"9C55"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_1_IBUF_164,
      I2 => sw_0_IBUF_163,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(11)
    );
  f_Mmux_y_mux0000261 : LUT4
    generic map(
      INIT => X"95C4"
    )
    port map (
      I0 => sw_3_IBUF_166,
      I1 => sw_1_IBUF_164,
      I2 => sw_2_IBUF_165,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(9)
    );
  f_Mmux_y_mux0000241 : LUT4
    generic map(
      INIT => X"C14A"
    )
    port map (
      I0 => sw_0_IBUF_163,
      I1 => sw_3_IBUF_166,
      I2 => sw_1_IBUF_164,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(8)
    );
  f_Mmux_y_mux0000191 : LUT4
    generic map(
      INIT => X"DC36"
    )
    port map (
      I0 => sw_0_IBUF_163,
      I1 => sw_2_IBUF_165,
      I2 => sw_3_IBUF_166,
      I3 => sw_1_IBUF_164,
      O => f_y_mux0000(4)
    );
  f_Mmux_y_mux0000171 : LUT4
    generic map(
      INIT => X"92A2"
    )
    port map (
      I0 => sw_1_IBUF_164,
      I1 => sw_3_IBUF_166,
      I2 => sw_2_IBUF_165,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(3)
    );
  f_Mmux_y_mux000081 : LUT4
    generic map(
      INIT => X"CD61"
    )
    port map (
      I0 => sw_0_IBUF_163,
      I1 => sw_1_IBUF_164,
      I2 => sw_3_IBUF_166,
      I3 => sw_2_IBUF_165,
      O => f_y_mux0000(14)
    );
  f_Mmux_y_mux0000131 : LUT4
    generic map(
      INIT => X"C519"
    )
    port map (
      I0 => sw_0_IBUF_163,
      I1 => sw_2_IBUF_165,
      I2 => sw_3_IBUF_166,
      I3 => sw_1_IBUF_164,
      O => f_y_mux0000(1)
    );
  f_Mmux_y_mux000011 : LUT4
    generic map(
      INIT => X"C660"
    )
    port map (
      I0 => sw_0_IBUF_163,
      I1 => sw_1_IBUF_164,
      I2 => sw_2_IBUF_165,
      I3 => sw_3_IBUF_166,
      O => f_y_mux0000(0)
    );
  f_Mmux_y_mux0000151 : LUT4
    generic map(
      INIT => X"94C7"
    )
    port map (
      I0 => sw_2_IBUF_165,
      I1 => sw_3_IBUF_166,
      I2 => sw_1_IBUF_164,
      I3 => sw_0_IBUF_163,
      O => f_y_mux0000(2)
    );
  seg_an_0_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => an_0_OBUF_21
    );
  seg_an_3_mux0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => f_y(12),
      I1 => f_y(15),
      I2 => f_y(14),
      O => N2
    );
  seg_an_3_mux0001 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => N2,
      I2 => f_y(13),
      I3 => seg_clkdiv(19),
      O => an_3_OBUF_24
    );
  seg_an_2_mux000115 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y(13),
      I1 => f_y(12),
      I2 => f_y(11),
      I3 => f_y(10),
      O => seg_an_1_mux000115
    );
  seg_an_2_mux000128 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y(9),
      I1 => f_y(8),
      I2 => f_y(15),
      I3 => f_y(14),
      O => seg_an_2_mux000128_134
    );
  seg_Mrom_a_to_g21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => seg_digit(3),
      I1 => seg_digit(0),
      I2 => seg_digit(1),
      I3 => seg_digit(2),
      O => a_to_g_2_OBUF_12
    );
  seg_Mrom_a_to_g41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(3),
      I2 => seg_digit(2),
      I3 => seg_digit(0),
      O => a_to_g_4_OBUF_14
    );
  seg_Mrom_a_to_g111 : LUT4
    generic map(
      INIT => X"0382"
    )
    port map (
      I0 => seg_digit(0),
      I1 => seg_digit(2),
      I2 => seg_digit(3),
      I3 => seg_digit(1),
      O => a_to_g_1_OBUF_11
    );
  seg_Mrom_a_to_g51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => seg_digit(0),
      I1 => seg_digit(2),
      I2 => seg_digit(1),
      I3 => seg_digit(3),
      O => a_to_g_5_OBUF_15
    );
  seg_Mrom_a_to_g11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(2),
      I2 => seg_digit(3),
      I3 => seg_digit(0),
      O => a_to_g_0_OBUF_10
    );
  seg_Mrom_a_to_g31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => seg_digit(1),
      I1 => seg_digit(3),
      I2 => seg_digit(0),
      I3 => seg_digit(2),
      O => a_to_g_3_OBUF_13
    );
  seg_Mrom_a_to_g61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => seg_digit(0),
      I1 => seg_digit(1),
      I2 => seg_digit(2),
      I3 => seg_digit(3),
      O => a_to_g_6_OBUF_16
    );
  seg_an_1_mux00012 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => seg_clkdiv(18),
      I1 => seg_clkdiv(19),
      O => seg_an_1_mux00012_131
    );
  seg_an_1_mux000128 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y(9),
      I1 => f_y(8),
      I2 => f_y(7),
      I3 => f_y(6),
      O => seg_an_1_mux000128_132
    );
  seg_an_1_mux000152 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_y(5),
      I1 => f_y(4),
      I2 => f_y(15),
      I3 => f_y(14),
      O => seg_an_1_mux000152_133
    );
  seg_an_1_mux000172 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => seg_an_1_mux000115,
      I1 => seg_an_1_mux000128_132,
      I2 => seg_an_1_mux000152_133,
      I3 => seg_an_1_mux00012_131,
      O => an_1_OBUF_22
    );
  btn_3_IBUF : IBUF
    port map (
      I => btn(3),
      O => btn_3_IBUF_26
    );
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => sw_3_IBUF_166
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_165
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_164
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_163
    );
  dp_OBUF : OBUF
    port map (
      I => N1,
      O => dp
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_24,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_23,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_22,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_21,
      O => an(0)
    );
  a_to_g_6_OBUF : OBUF
    port map (
      I => a_to_g_6_OBUF_16,
      O => a_to_g(6)
    );
  a_to_g_5_OBUF : OBUF
    port map (
      I => a_to_g_5_OBUF_15,
      O => a_to_g(5)
    );
  a_to_g_4_OBUF : OBUF
    port map (
      I => a_to_g_4_OBUF_14,
      O => a_to_g(4)
    );
  a_to_g_3_OBUF : OBUF
    port map (
      I => a_to_g_3_OBUF_13,
      O => a_to_g(3)
    );
  a_to_g_2_OBUF : OBUF
    port map (
      I => a_to_g_2_OBUF_12,
      O => a_to_g(2)
    );
  a_to_g_1_OBUF : OBUF
    port map (
      I => a_to_g_1_OBUF_11,
      O => a_to_g(1)
    );
  a_to_g_0_OBUF : OBUF
    port map (
      I => a_to_g_0_OBUF_10,
      O => a_to_g(0)
    );
  seg_Mcount_clkdiv_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(18),
      O => seg_Mcount_clkdiv_cy_18_rt_81
    );
  seg_Mcount_clkdiv_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(17),
      O => seg_Mcount_clkdiv_cy_17_rt_79
    );
  seg_Mcount_clkdiv_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(16),
      O => seg_Mcount_clkdiv_cy_16_rt_77
    );
  seg_Mcount_clkdiv_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(15),
      O => seg_Mcount_clkdiv_cy_15_rt_75
    );
  seg_Mcount_clkdiv_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(14),
      O => seg_Mcount_clkdiv_cy_14_rt_73
    );
  seg_Mcount_clkdiv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(13),
      O => seg_Mcount_clkdiv_cy_13_rt_71
    );
  seg_Mcount_clkdiv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(12),
      O => seg_Mcount_clkdiv_cy_12_rt_69
    );
  seg_Mcount_clkdiv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(11),
      O => seg_Mcount_clkdiv_cy_11_rt_67
    );
  seg_Mcount_clkdiv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(10),
      O => seg_Mcount_clkdiv_cy_10_rt_65
    );
  seg_Mcount_clkdiv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(9),
      O => seg_Mcount_clkdiv_cy_9_rt_99
    );
  seg_Mcount_clkdiv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(8),
      O => seg_Mcount_clkdiv_cy_8_rt_97
    );
  seg_Mcount_clkdiv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(7),
      O => seg_Mcount_clkdiv_cy_7_rt_95
    );
  seg_Mcount_clkdiv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(6),
      O => seg_Mcount_clkdiv_cy_6_rt_93
    );
  seg_Mcount_clkdiv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(5),
      O => seg_Mcount_clkdiv_cy_5_rt_91
    );
  seg_Mcount_clkdiv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(4),
      O => seg_Mcount_clkdiv_cy_4_rt_89
    );
  seg_Mcount_clkdiv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(3),
      O => seg_Mcount_clkdiv_cy_3_rt_87
    );
  seg_Mcount_clkdiv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(2),
      O => seg_Mcount_clkdiv_cy_2_rt_85
    );
  seg_Mcount_clkdiv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(1),
      O => seg_Mcount_clkdiv_cy_1_rt_83
    );
  seg_Mcount_clkdiv_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => seg_clkdiv(19),
      O => seg_Mcount_clkdiv_xor_19_rt_101
    );
  seg_an_2_mux000141 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => seg_clkdiv(19),
      I1 => seg_clkdiv(18),
      I2 => seg_an_2_mux000128_134,
      I3 => seg_an_1_mux000115,
      O => an_2_OBUF_23
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_62
    );
  seg_Mcount_clkdiv_lut_0_INV_0 : INV
    port map (
      I => seg_clkdiv(0),
      O => seg_Mcount_clkdiv_lut(0)
    );

end STRUCTURE;

