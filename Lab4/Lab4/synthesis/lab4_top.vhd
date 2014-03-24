--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: lab4_top.vhd
-- /___/   /\     Timestamp: Wed Feb 19 19:55:00 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w lab4_top.ngc lab4_top.vhd 
-- Device	: xc3s500efg320-5
-- Input file	: lab4_top.ngc
-- Output file	: lab4_top.vhd
-- # of Entities	: 1
-- Design Name	: lab4_top
-- Xilinx	: C:\Xilinx\13.2\ISE_DS\ISE\
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

entity lab4_top is
  port (
    JA1 : out STD_LOGIC; 
    JA2 : out STD_LOGIC; 
    JA3 : in STD_LOGIC := 'X'; 
    mclk : in STD_LOGIC := 'X'; 
    LD : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 0 downto 0 ) 
  );
end lab4_top;

architecture STRUCTURE of lab4_top is
  signal JA1_OBUF_1 : STD_LOGIC; 
  signal JA3_IBUF_4 : STD_LOGIC; 
  signal LD_0_OBUF_13 : STD_LOGIC; 
  signal LD_1_OBUF_14 : STD_LOGIC; 
  signal LD_2_OBUF_15 : STD_LOGIC; 
  signal LD_3_OBUF_16 : STD_LOGIC; 
  signal LD_4_OBUF_17 : STD_LOGIC; 
  signal LD_5_OBUF_18 : STD_LOGIC; 
  signal LD_6_OBUF_19 : STD_LOGIC; 
  signal LD_7_OBUF_20 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal btn_0_IBUF_29 : STD_LOGIC; 
  signal cdivider_Mcount_q_cy_1_rt_32 : STD_LOGIC; 
  signal cdivider_Mcount_q_cy_2_rt_34 : STD_LOGIC; 
  signal cdivider_Mcount_q_xor_3_rt_36 : STD_LOGIC; 
  signal cdivider_q_31 : STD_LOGIC; 
  signal decoder_N01 : STD_LOGIC; 
  signal driver_sload : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd1_64 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_66 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd3_68 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd3_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_70 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_In : STD_LOGIC; 
  signal mclk_BUFGP_73 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cdivider_Mcount_q_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal cdivider_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cdivider_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal driver_a_reg_q : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal driver_s_reg_qs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  cdivider_q_0 : FDC
    port map (
      C => mclk_BUFGP_73,
      CLR => btn_0_IBUF_29,
      D => Result(0),
      Q => cdivider_q(0)
    );
  cdivider_q_1 : FDC
    port map (
      C => mclk_BUFGP_73,
      CLR => btn_0_IBUF_29,
      D => Result(1),
      Q => cdivider_q(1)
    );
  cdivider_q_2 : FDC
    port map (
      C => mclk_BUFGP_73,
      CLR => btn_0_IBUF_29,
      D => Result(2),
      Q => cdivider_q(2)
    );
  cdivider_q_3 : FDC
    port map (
      C => mclk_BUFGP_73,
      CLR => btn_0_IBUF_29,
      D => Result(3),
      Q => cdivider_q_31
    );
  cdivider_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => cdivider_Mcount_q_lut(0),
      O => cdivider_Mcount_q_cy(0)
    );
  cdivider_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => cdivider_Mcount_q_lut(0),
      O => Result(0)
    );
  cdivider_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => cdivider_Mcount_q_cy(0),
      DI => N0,
      S => cdivider_Mcount_q_cy_1_rt_32,
      O => cdivider_Mcount_q_cy(1)
    );
  cdivider_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => cdivider_Mcount_q_cy(0),
      LI => cdivider_Mcount_q_cy_1_rt_32,
      O => Result(1)
    );
  cdivider_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => cdivider_Mcount_q_cy(1),
      DI => N0,
      S => cdivider_Mcount_q_cy_2_rt_34,
      O => cdivider_Mcount_q_cy(2)
    );
  cdivider_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => cdivider_Mcount_q_cy(1),
      LI => cdivider_Mcount_q_cy_2_rt_34,
      O => Result(2)
    );
  cdivider_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => cdivider_Mcount_q_cy(2),
      LI => cdivider_Mcount_q_xor_3_rt_36,
      O => Result(3)
    );
  driver_spi_present_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_spi_present_state_FSM_FFd1_In,
      Q => driver_spi_present_state_FSM_FFd1_64
    );
  driver_spi_present_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_spi_present_state_FSM_FFd2_In,
      Q => driver_spi_present_state_FSM_FFd2_66
    );
  driver_spi_present_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_spi_present_state_FSM_FFd3_In,
      Q => driver_spi_present_state_FSM_FFd3_68
    );
  driver_spi_present_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_spi_present_state_FSM_FFd4_In,
      Q => driver_spi_present_state_FSM_FFd4_70
    );
  driver_a_reg_q_9 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(9),
      Q => driver_a_reg_q(9)
    );
  driver_a_reg_q_8 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(8),
      Q => driver_a_reg_q(8)
    );
  driver_a_reg_q_7 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(7),
      Q => driver_a_reg_q(7)
    );
  driver_a_reg_q_6 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(6),
      Q => driver_a_reg_q(6)
    );
  driver_a_reg_q_5 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(5),
      Q => driver_a_reg_q(5)
    );
  driver_a_reg_q_4 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(4),
      Q => driver_a_reg_q(4)
    );
  driver_a_reg_q_3 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(3),
      Q => driver_a_reg_q(3)
    );
  driver_a_reg_q_2 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(2),
      Q => driver_a_reg_q(2)
    );
  driver_a_reg_q_1 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(1),
      Q => driver_a_reg_q(1)
    );
  driver_a_reg_q_0 : FDCE
    port map (
      C => cdivider_q(3),
      CE => driver_sload,
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(0),
      Q => driver_a_reg_q(0)
    );
  driver_s_reg_qs_9 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(8),
      Q => driver_s_reg_qs(9)
    );
  driver_s_reg_qs_8 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(7),
      Q => driver_s_reg_qs(8)
    );
  driver_s_reg_qs_7 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(6),
      Q => driver_s_reg_qs(7)
    );
  driver_s_reg_qs_6 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(5),
      Q => driver_s_reg_qs(6)
    );
  driver_s_reg_qs_5 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(4),
      Q => driver_s_reg_qs(5)
    );
  driver_s_reg_qs_4 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(3),
      Q => driver_s_reg_qs(4)
    );
  driver_s_reg_qs_3 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(2),
      Q => driver_s_reg_qs(3)
    );
  driver_s_reg_qs_2 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(1),
      Q => driver_s_reg_qs(2)
    );
  driver_s_reg_qs_1 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => driver_s_reg_qs(0),
      Q => driver_s_reg_qs(1)
    );
  driver_s_reg_qs_0 : FDC
    port map (
      C => cdivider_q(3),
      CLR => btn_0_IBUF_29,
      D => JA3_IBUF_4,
      Q => driver_s_reg_qs(0)
    );
  driver_spi_present_state_FSM_Out11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => driver_spi_present_state_FSM_FFd1_64,
      I1 => driver_spi_present_state_FSM_FFd2_66,
      I2 => driver_spi_present_state_FSM_FFd3_68,
      O => JA1_OBUF_1
    );
  driver_spi_present_state_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => driver_spi_present_state_FSM_FFd4_70,
      I1 => driver_spi_present_state_FSM_FFd3_68,
      O => driver_spi_present_state_FSM_FFd3_In
    );
  driver_spi_present_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => driver_spi_present_state_FSM_FFd4_70,
      I1 => driver_spi_present_state_FSM_FFd2_66,
      I2 => driver_spi_present_state_FSM_FFd3_68,
      O => driver_spi_present_state_FSM_FFd2_In
    );
  driver_spi_present_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => driver_spi_present_state_FSM_FFd1_64,
      I1 => driver_spi_present_state_FSM_FFd2_66,
      I2 => driver_spi_present_state_FSM_FFd4_70,
      I3 => driver_spi_present_state_FSM_FFd3_68,
      O => driver_spi_present_state_FSM_FFd1_In
    );
  driver_spi_present_state_FSM_Out01 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => driver_spi_present_state_FSM_FFd1_64,
      I1 => driver_spi_present_state_FSM_FFd2_66,
      I2 => driver_spi_present_state_FSM_FFd3_68,
      I3 => driver_spi_present_state_FSM_FFd4_70,
      O => driver_sload
    );
  decoder_y_7_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => driver_a_reg_q(8),
      I1 => driver_a_reg_q(9),
      I2 => decoder_N01,
      I3 => driver_a_reg_q(7),
      O => LD_7_OBUF_20
    );
  decoder_y_6_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => driver_a_reg_q(7),
      I1 => driver_a_reg_q(9),
      I2 => driver_a_reg_q(8),
      I3 => decoder_N01,
      O => LD_6_OBUF_19
    );
  decoder_y_5_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => driver_a_reg_q(9),
      I1 => driver_a_reg_q(7),
      I2 => decoder_N01,
      I3 => driver_a_reg_q(8),
      O => LD_5_OBUF_18
    );
  decoder_y_4_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => driver_a_reg_q(9),
      I1 => driver_a_reg_q(7),
      I2 => driver_a_reg_q(8),
      I3 => decoder_N01,
      O => LD_4_OBUF_17
    );
  decoder_y_3_1 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => driver_a_reg_q(9),
      I1 => driver_a_reg_q(8),
      I2 => driver_a_reg_q(7),
      I3 => decoder_N01,
      O => LD_3_OBUF_16
    );
  decoder_y_2_1 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => driver_a_reg_q(8),
      I1 => driver_a_reg_q(7),
      I2 => decoder_N01,
      I3 => driver_a_reg_q(9),
      O => LD_2_OBUF_15
    );
  decoder_y_1_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => driver_a_reg_q(8),
      I1 => driver_a_reg_q(9),
      I2 => driver_a_reg_q(7),
      I3 => decoder_N01,
      O => LD_1_OBUF_14
    );
  decoder_y_0_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => driver_a_reg_q(7),
      I1 => driver_a_reg_q(9),
      I2 => decoder_N01,
      I3 => driver_a_reg_q(8),
      O => LD_0_OBUF_13
    );
  decoder_y_7_11_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => driver_a_reg_q(2),
      I1 => driver_a_reg_q(1),
      I2 => driver_a_reg_q(0),
      I3 => driver_a_reg_q(4),
      O => N2
    );
  decoder_y_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => driver_a_reg_q(6),
      I1 => driver_a_reg_q(5),
      I2 => driver_a_reg_q(3),
      I3 => N2,
      O => decoder_N01
    );
  JA3_IBUF : IBUF
    port map (
      I => JA3,
      O => JA3_IBUF_4
    );
  btn_0_IBUF : IBUF
    port map (
      I => btn(0),
      O => btn_0_IBUF_29
    );
  JA1_OBUF : OBUF
    port map (
      I => JA1_OBUF_1,
      O => JA1
    );
  JA2_OBUF : OBUF
    port map (
      I => cdivider_q_31,
      O => JA2
    );
  LD_7_OBUF : OBUF
    port map (
      I => LD_7_OBUF_20,
      O => LD(7)
    );
  LD_6_OBUF : OBUF
    port map (
      I => LD_6_OBUF_19,
      O => LD(6)
    );
  LD_5_OBUF : OBUF
    port map (
      I => LD_5_OBUF_18,
      O => LD(5)
    );
  LD_4_OBUF : OBUF
    port map (
      I => LD_4_OBUF_17,
      O => LD(4)
    );
  LD_3_OBUF : OBUF
    port map (
      I => LD_3_OBUF_16,
      O => LD(3)
    );
  LD_2_OBUF : OBUF
    port map (
      I => LD_2_OBUF_15,
      O => LD(2)
    );
  LD_1_OBUF : OBUF
    port map (
      I => LD_1_OBUF_14,
      O => LD(1)
    );
  LD_0_OBUF : OBUF
    port map (
      I => LD_0_OBUF_13,
      O => LD(0)
    );
  cdivider_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cdivider_q(1),
      O => cdivider_Mcount_q_cy_1_rt_32
    );
  cdivider_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cdivider_q(2),
      O => cdivider_Mcount_q_cy_2_rt_34
    );
  cdivider_Mcount_q_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cdivider_q_31,
      O => cdivider_Mcount_q_xor_3_rt_36
    );
  cdivider_q_3_BUFG : BUFG
    port map (
      I => cdivider_q_31,
      O => cdivider_q(3)
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_73
    );
  cdivider_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => cdivider_q(0),
      O => cdivider_Mcount_q_lut(0)
    );
  driver_spi_present_state_FSM_FFd4_In1_INV_0 : INV
    port map (
      I => driver_spi_present_state_FSM_FFd4_70,
      O => driver_spi_present_state_FSM_FFd4_In
    );

end STRUCTURE;

