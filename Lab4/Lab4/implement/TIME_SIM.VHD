--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Wed Feb 19 19:55:32 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf lab4_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true lab4_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2011-06-20)
-- Input file	: lab4_top.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of lab4_top is
  signal mclk_BUFGP : STD_LOGIC; 
  signal btn_0_IBUF_222 : STD_LOGIC; 
  signal cdivider_q_31 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_241 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_242 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd3_243 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd1_244 : STD_LOGIC; 
  signal driver_sload_0 : STD_LOGIC; 
  signal decoder_N01 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal cdivider_q_0_DXMUX_315 : STD_LOGIC; 
  signal cdivider_q_0_XORF_313 : STD_LOGIC; 
  signal cdivider_q_0_LOGIC_ONE_312 : STD_LOGIC; 
  signal cdivider_q_0_CYINIT_311 : STD_LOGIC; 
  signal cdivider_q_0_CYSELF_302 : STD_LOGIC; 
  signal cdivider_q_0_BXINV_300 : STD_LOGIC; 
  signal cdivider_q_0_DYMUX_293 : STD_LOGIC; 
  signal cdivider_q_0_XORG_291 : STD_LOGIC; 
  signal cdivider_q_0_CYMUXG_290 : STD_LOGIC; 
  signal cdivider_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal cdivider_q_0_LOGIC_ZERO_288 : STD_LOGIC; 
  signal cdivider_q_0_CYSELG_279 : STD_LOGIC; 
  signal cdivider_q_0_G : STD_LOGIC; 
  signal cdivider_q_0_SRINV_277 : STD_LOGIC; 
  signal cdivider_q_0_CLKINV_276 : STD_LOGIC; 
  signal cdivider_q_2_DXMUX_364 : STD_LOGIC; 
  signal cdivider_q_2_XORF_362 : STD_LOGIC; 
  signal cdivider_q_2_LOGIC_ZERO_361 : STD_LOGIC; 
  signal cdivider_q_2_CYINIT_360 : STD_LOGIC; 
  signal cdivider_q_2_CYSELF_351 : STD_LOGIC; 
  signal cdivider_q_2_F : STD_LOGIC; 
  signal cdivider_q_2_DYMUX_343 : STD_LOGIC; 
  signal cdivider_q_2_XORG_341 : STD_LOGIC; 
  signal cdivider_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal cdivider_q_31_rt_338 : STD_LOGIC; 
  signal cdivider_q_2_SRINV_330 : STD_LOGIC; 
  signal cdivider_q_2_CLKINV_329 : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal LD_0_O : STD_LOGIC; 
  signal LD_1_O : STD_LOGIC; 
  signal LD_2_O : STD_LOGIC; 
  signal LD_3_O : STD_LOGIC; 
  signal LD_4_O : STD_LOGIC; 
  signal LD_5_O : STD_LOGIC; 
  signal LD_6_O : STD_LOGIC; 
  signal LD_7_O : STD_LOGIC; 
  signal JA1_O : STD_LOGIC; 
  signal JA2_O : STD_LOGIC; 
  signal JA3_INBUF : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal cdivider_q_3_BUFG_S_INVNOT : STD_LOGIC; 
  signal cdivider_q_3_BUFG_I0_INV : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_DXMUX_514 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_DYMUX_499 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_SRINV_491 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd2_CLKINV_490 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_DXMUX_559 : STD_LOGIC; 
  signal driver_sload : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_DYMUX_544 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd3_In : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_SRINV_534 : STD_LOGIC; 
  signal driver_spi_present_state_FSM_FFd4_CLKINV_533 : STD_LOGIC; 
  signal LD_7_OBUF_587 : STD_LOGIC; 
  signal decoder_N01_pack_1 : STD_LOGIC; 
  signal LD_0_OBUF_611 : STD_LOGIC; 
  signal LD_1_OBUF_604 : STD_LOGIC; 
  signal LD_3_OBUF_635 : STD_LOGIC; 
  signal LD_2_OBUF_628 : STD_LOGIC; 
  signal LD_5_OBUF_659 : STD_LOGIC; 
  signal LD_4_OBUF_652 : STD_LOGIC; 
  signal LD_6_OBUF_671 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal JA1_OBUF_695 : STD_LOGIC; 
  signal driver_a_reg_q_1_DXMUX_718 : STD_LOGIC; 
  signal driver_a_reg_q_1_DYMUX_709 : STD_LOGIC; 
  signal driver_a_reg_q_1_SRINV_707 : STD_LOGIC; 
  signal driver_a_reg_q_1_CLKINV_706 : STD_LOGIC; 
  signal driver_a_reg_q_1_CEINV_705 : STD_LOGIC; 
  signal driver_a_reg_q_3_DXMUX_746 : STD_LOGIC; 
  signal driver_a_reg_q_3_DYMUX_737 : STD_LOGIC; 
  signal driver_a_reg_q_3_SRINV_735 : STD_LOGIC; 
  signal driver_a_reg_q_3_CLKINV_734 : STD_LOGIC; 
  signal driver_a_reg_q_3_CEINV_733 : STD_LOGIC; 
  signal driver_a_reg_q_5_DXMUX_774 : STD_LOGIC; 
  signal driver_a_reg_q_5_DYMUX_765 : STD_LOGIC; 
  signal driver_a_reg_q_5_SRINV_763 : STD_LOGIC; 
  signal driver_a_reg_q_5_CLKINV_762 : STD_LOGIC; 
  signal driver_a_reg_q_5_CEINV_761 : STD_LOGIC; 
  signal driver_a_reg_q_7_DXMUX_802 : STD_LOGIC; 
  signal driver_a_reg_q_7_DYMUX_793 : STD_LOGIC; 
  signal driver_a_reg_q_7_SRINV_791 : STD_LOGIC; 
  signal driver_a_reg_q_7_CLKINV_790 : STD_LOGIC; 
  signal driver_a_reg_q_7_CEINV_789 : STD_LOGIC; 
  signal driver_a_reg_q_9_DXMUX_830 : STD_LOGIC; 
  signal driver_a_reg_q_9_DYMUX_821 : STD_LOGIC; 
  signal driver_a_reg_q_9_SRINV_819 : STD_LOGIC; 
  signal driver_a_reg_q_9_CLKINV_818 : STD_LOGIC; 
  signal driver_a_reg_q_9_CEINV_817 : STD_LOGIC; 
  signal driver_s_reg_qs_1_DXMUX_855 : STD_LOGIC; 
  signal driver_s_reg_qs_1_DYMUX_847 : STD_LOGIC; 
  signal driver_s_reg_qs_1_SRINV_845 : STD_LOGIC; 
  signal driver_s_reg_qs_1_CLKINV_844 : STD_LOGIC; 
  signal driver_s_reg_qs_3_DXMUX_879 : STD_LOGIC; 
  signal driver_s_reg_qs_3_DYMUX_871 : STD_LOGIC; 
  signal driver_s_reg_qs_3_SRINV_869 : STD_LOGIC; 
  signal driver_s_reg_qs_3_CLKINV_868 : STD_LOGIC; 
  signal driver_s_reg_qs_5_DXMUX_903 : STD_LOGIC; 
  signal driver_s_reg_qs_5_DYMUX_895 : STD_LOGIC; 
  signal driver_s_reg_qs_5_SRINV_893 : STD_LOGIC; 
  signal driver_s_reg_qs_5_CLKINV_892 : STD_LOGIC; 
  signal driver_s_reg_qs_7_DXMUX_927 : STD_LOGIC; 
  signal driver_s_reg_qs_7_DYMUX_919 : STD_LOGIC; 
  signal driver_s_reg_qs_7_SRINV_917 : STD_LOGIC; 
  signal driver_s_reg_qs_7_CLKINV_916 : STD_LOGIC; 
  signal driver_s_reg_qs_9_DXMUX_951 : STD_LOGIC; 
  signal driver_s_reg_qs_9_DYMUX_943 : STD_LOGIC; 
  signal driver_s_reg_qs_9_SRINV_941 : STD_LOGIC; 
  signal driver_s_reg_qs_9_CLKINV_940 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal cdivider_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal driver_a_reg_q : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal driver_s_reg_qs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal cdivider_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  cdivider_q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      O => cdivider_q_0_LOGIC_ZERO_288
    );
  cdivider_q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      O => cdivider_q_0_LOGIC_ONE_312
    );
  cdivider_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_0_XORF_313,
      O => cdivider_q_0_DXMUX_315
    );
  cdivider_q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      I0 => cdivider_q_0_CYINIT_311,
      I1 => cdivider_Mcount_q_lut(0),
      O => cdivider_q_0_XORF_313
    );
  cdivider_q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      IA => cdivider_q_0_LOGIC_ONE_312,
      IB => cdivider_q_0_CYINIT_311,
      SEL => cdivider_q_0_CYSELF_302,
      O => cdivider_Mcount_q_cy_0_Q
    );
  cdivider_q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_0_BXINV_300,
      O => cdivider_q_0_CYINIT_311
    );
  cdivider_q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_Mcount_q_lut(0),
      O => cdivider_q_0_CYSELF_302
    );
  cdivider_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => cdivider_q_0_BXINV_300
    );
  cdivider_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_0_XORG_291,
      O => cdivider_q_0_DYMUX_293
    );
  cdivider_q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      I0 => cdivider_Mcount_q_cy_0_Q,
      I1 => cdivider_q_0_G,
      O => cdivider_q_0_XORG_291
    );
  cdivider_q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      IA => cdivider_q_0_LOGIC_ZERO_288,
      IB => cdivider_Mcount_q_cy_0_Q,
      SEL => cdivider_q_0_CYSELG_279,
      O => cdivider_q_0_CYMUXG_290
    );
  cdivider_q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_0_G,
      O => cdivider_q_0_CYSELG_279
    );
  cdivider_q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => cdivider_q_0_SRINV_277
    );
  cdivider_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 694 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cdivider_q_0_CLKINV_276
    );
  cdivider_q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y89"
    )
    port map (
      O => cdivider_q_2_LOGIC_ZERO_361
    );
  cdivider_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_2_XORF_362,
      O => cdivider_q_2_DXMUX_364
    );
  cdivider_q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y89"
    )
    port map (
      I0 => cdivider_q_2_CYINIT_360,
      I1 => cdivider_q_2_F,
      O => cdivider_q_2_XORF_362
    );
  cdivider_q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y89"
    )
    port map (
      IA => cdivider_q_2_LOGIC_ZERO_361,
      IB => cdivider_q_2_CYINIT_360,
      SEL => cdivider_q_2_CYSELF_351,
      O => cdivider_Mcount_q_cy_2_Q
    );
  cdivider_q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_0_CYMUXG_290,
      O => cdivider_q_2_CYINIT_360
    );
  cdivider_q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_2_F,
      O => cdivider_q_2_CYSELF_351
    );
  cdivider_q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_2_XORG_341,
      O => cdivider_q_2_DYMUX_343
    );
  cdivider_q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y89"
    )
    port map (
      I0 => cdivider_Mcount_q_cy_2_Q,
      I1 => cdivider_q_31_rt_338,
      O => cdivider_q_2_XORG_341
    );
  cdivider_q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => cdivider_q_2_SRINV_330
    );
  cdivider_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y89",
      PATHPULSE => 694 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cdivider_q_2_CLKINV_329
    );
  btn_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn(0),
      O => btn_0_INBUF
    );
  LD_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => LD_0_O,
      O => LD(0)
    );
  LD_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => LD_1_O,
      O => LD(1)
    );
  LD_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => LD_2_O,
      O => LD(2)
    );
  LD_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => LD_3_O,
      O => LD(3)
    );
  LD_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => LD_4_O,
      O => LD(4)
    );
  LD_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => LD_5_O,
      O => LD(5)
    );
  LD_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => LD_6_O,
      O => LD(6)
    );
  LD_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => LD_7_O,
      O => LD(7)
    );
  JA1_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => JA1_O,
      O => JA1
    );
  JA2_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => JA2_O,
      O => JA2
    );
  JA3_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => JA3,
      O => JA3_INBUF
    );
  mclk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD29",
      PATHPULSE => 694 ps
    )
    port map (
      I => mclk,
      O => mclk_INBUF
    );
  mclk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => mclk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => mclk_BUFGP_BUFG_S_INVNOT,
      O => mclk_BUFGP
    );
  mclk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 694 ps
    )
    port map (
      I => '1',
      O => mclk_BUFGP_BUFG_S_INVNOT
    );
  mclk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 694 ps
    )
    port map (
      I => mclk_INBUF,
      O => mclk_BUFGP_BUFG_I0_INV
    );
  cdivider_q_3_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => cdivider_q_3_BUFG_I0_INV,
      I1 => GND,
      S => cdivider_q_3_BUFG_S_INVNOT,
      O => cdivider_q(3)
    );
  cdivider_q_3_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => '1',
      O => cdivider_q_3_BUFG_S_INVNOT
    );
  cdivider_q_3_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_31,
      O => cdivider_q_3_BUFG_I0_INV
    );
  driver_spi_present_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_spi_present_state_FSM_FFd2_In,
      O => driver_spi_present_state_FSM_FFd2_DXMUX_514
    );
  driver_spi_present_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_spi_present_state_FSM_FFd1_In,
      O => driver_spi_present_state_FSM_FFd2_DYMUX_499
    );
  driver_spi_present_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_spi_present_state_FSM_FFd2_SRINV_491
    );
  driver_spi_present_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_spi_present_state_FSM_FFd2_CLKINV_490
    );
  driver_spi_present_state_FSM_FFd4_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_spi_present_state_FSM_FFd4_241,
      O => driver_spi_present_state_FSM_FFd4_DXMUX_559
    );
  driver_spi_present_state_FSM_FFd4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload,
      O => driver_sload_0
    );
  driver_spi_present_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_spi_present_state_FSM_FFd3_In,
      O => driver_spi_present_state_FSM_FFd4_DYMUX_544
    );
  driver_spi_present_state_FSM_FFd4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_spi_present_state_FSM_FFd4_SRINV_534
    );
  driver_spi_present_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_spi_present_state_FSM_FFd4_CLKINV_533
    );
  LD_7_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => decoder_N01_pack_1,
      O => decoder_N01
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  driver_a_reg_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(1),
      O => driver_a_reg_q_1_DXMUX_718
    );
  driver_a_reg_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(0),
      O => driver_a_reg_q_1_DYMUX_709
    );
  driver_a_reg_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_a_reg_q_1_SRINV_707
    );
  driver_a_reg_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_a_reg_q_1_CLKINV_706
    );
  driver_a_reg_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload_0,
      O => driver_a_reg_q_1_CEINV_705
    );
  driver_a_reg_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(3),
      O => driver_a_reg_q_3_DXMUX_746
    );
  driver_a_reg_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(2),
      O => driver_a_reg_q_3_DYMUX_737
    );
  driver_a_reg_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_a_reg_q_3_SRINV_735
    );
  driver_a_reg_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_a_reg_q_3_CLKINV_734
    );
  driver_a_reg_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload_0,
      O => driver_a_reg_q_3_CEINV_733
    );
  driver_a_reg_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(5),
      O => driver_a_reg_q_5_DXMUX_774
    );
  driver_a_reg_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(4),
      O => driver_a_reg_q_5_DYMUX_765
    );
  driver_a_reg_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_a_reg_q_5_SRINV_763
    );
  driver_a_reg_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_a_reg_q_5_CLKINV_762
    );
  driver_a_reg_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y59",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload_0,
      O => driver_a_reg_q_5_CEINV_761
    );
  driver_a_reg_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(7),
      O => driver_a_reg_q_7_DXMUX_802
    );
  driver_a_reg_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(6),
      O => driver_a_reg_q_7_DYMUX_793
    );
  driver_a_reg_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_a_reg_q_7_SRINV_791
    );
  driver_a_reg_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_a_reg_q_7_CLKINV_790
    );
  driver_a_reg_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload_0,
      O => driver_a_reg_q_7_CEINV_789
    );
  driver_a_reg_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(9),
      O => driver_a_reg_q_9_DXMUX_830
    );
  driver_a_reg_q_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(8),
      O => driver_a_reg_q_9_DYMUX_821
    );
  driver_a_reg_q_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_a_reg_q_9_SRINV_819
    );
  driver_a_reg_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_a_reg_q_9_CLKINV_818
    );
  driver_a_reg_q_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y62",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_sload_0,
      O => driver_a_reg_q_9_CEINV_817
    );
  driver_s_reg_qs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(0),
      O => driver_s_reg_qs_1_DXMUX_855
    );
  driver_s_reg_qs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => JA3_INBUF,
      O => driver_s_reg_qs_1_DYMUX_847
    );
  driver_s_reg_qs_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_s_reg_qs_1_SRINV_845
    );
  driver_s_reg_qs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_s_reg_qs_1_CLKINV_844
    );
  driver_s_reg_qs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(2),
      O => driver_s_reg_qs_3_DXMUX_879
    );
  driver_s_reg_qs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(1),
      O => driver_s_reg_qs_3_DYMUX_871
    );
  driver_s_reg_qs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_s_reg_qs_3_SRINV_869
    );
  driver_s_reg_qs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_s_reg_qs_3_CLKINV_868
    );
  driver_s_reg_qs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(4),
      O => driver_s_reg_qs_5_DXMUX_903
    );
  driver_s_reg_qs_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(3),
      O => driver_s_reg_qs_5_DYMUX_895
    );
  driver_s_reg_qs_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_s_reg_qs_5_SRINV_893
    );
  driver_s_reg_qs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y58",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_s_reg_qs_5_CLKINV_892
    );
  driver_s_reg_qs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(6),
      O => driver_s_reg_qs_7_DXMUX_927
    );
  driver_s_reg_qs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(5),
      O => driver_s_reg_qs_7_DYMUX_919
    );
  driver_s_reg_qs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_s_reg_qs_7_SRINV_917
    );
  driver_s_reg_qs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_s_reg_qs_7_CLKINV_916
    );
  driver_s_reg_qs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(8),
      O => driver_s_reg_qs_9_DXMUX_951
    );
  driver_s_reg_qs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => driver_s_reg_qs(7),
      O => driver_s_reg_qs_9_DYMUX_943
    );
  driver_s_reg_qs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_IBUF_222,
      O => driver_s_reg_qs_9_SRINV_941
    );
  driver_s_reg_qs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y63",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q(3),
      O => driver_s_reg_qs_9_CLKINV_940
    );
  cdivider_q_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => '0'
    )
    port map (
      I => cdivider_q_0_DYMUX_293,
      CE => VCC,
      CLK => cdivider_q_0_CLKINV_276,
      SET => GND,
      RST => cdivider_q_0_SRINV_277,
      O => cdivider_q(1)
    );
  cdivider_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X49Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cdivider_q(0),
      O => cdivider_Mcount_q_lut(0)
    );
  cdivider_q_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => '0'
    )
    port map (
      I => cdivider_q_0_DXMUX_315,
      CE => VCC,
      CLK => cdivider_q_0_CLKINV_276,
      SET => GND,
      RST => cdivider_q_0_SRINV_277,
      O => cdivider_q(0)
    );
  cdivider_q_31_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cdivider_q_31,
      ADR3 => VCC,
      O => cdivider_q_31_rt_338
    );
  cdivider_q_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y89",
      INIT => '0'
    )
    port map (
      I => cdivider_q_2_DYMUX_343,
      CE => VCC,
      CLK => cdivider_q_2_CLKINV_329,
      SET => GND,
      RST => cdivider_q_2_SRINV_330,
      O => cdivider_q_31
    );
  cdivider_q_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y89",
      INIT => '0'
    )
    port map (
      I => cdivider_q_2_DXMUX_364,
      CE => VCC,
      CLK => cdivider_q_2_CLKINV_329,
      SET => GND,
      RST => cdivider_q_2_SRINV_330,
      O => cdivider_q(2)
    );
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 694 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_222
    );
  driver_spi_present_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X52Y60"
    )
    port map (
      ADR0 => driver_spi_present_state_FSM_FFd3_243,
      ADR1 => driver_spi_present_state_FSM_FFd2_242,
      ADR2 => driver_spi_present_state_FSM_FFd4_241,
      ADR3 => driver_spi_present_state_FSM_FFd1_244,
      O => driver_spi_present_state_FSM_FFd1_In
    );
  driver_spi_present_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X52Y60",
      INIT => '0'
    )
    port map (
      I => driver_spi_present_state_FSM_FFd2_DYMUX_499,
      CE => VCC,
      CLK => driver_spi_present_state_FSM_FFd2_CLKINV_490,
      SET => GND,
      RST => driver_spi_present_state_FSM_FFd2_SRINV_491,
      O => driver_spi_present_state_FSM_FFd1_244
    );
  driver_spi_present_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"66CC",
      LOC => "SLICE_X52Y60"
    )
    port map (
      ADR0 => driver_spi_present_state_FSM_FFd3_243,
      ADR1 => driver_spi_present_state_FSM_FFd2_242,
      ADR2 => VCC,
      ADR3 => driver_spi_present_state_FSM_FFd4_241,
      O => driver_spi_present_state_FSM_FFd2_In
    );
  driver_spi_present_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X52Y60",
      INIT => '0'
    )
    port map (
      I => driver_spi_present_state_FSM_FFd2_DXMUX_514,
      CE => VCC,
      CLK => driver_spi_present_state_FSM_FFd2_CLKINV_490,
      SET => GND,
      RST => driver_spi_present_state_FSM_FFd2_SRINV_491,
      O => driver_spi_present_state_FSM_FFd2_242
    );
  driver_spi_present_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X52Y61"
    )
    port map (
      ADR0 => driver_spi_present_state_FSM_FFd3_243,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver_spi_present_state_FSM_FFd4_241,
      O => driver_spi_present_state_FSM_FFd3_In
    );
  driver_spi_present_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X52Y61",
      INIT => '0'
    )
    port map (
      I => driver_spi_present_state_FSM_FFd4_DYMUX_544,
      CE => VCC,
      CLK => driver_spi_present_state_FSM_FFd4_CLKINV_533,
      SET => GND,
      RST => driver_spi_present_state_FSM_FFd4_SRINV_534,
      O => driver_spi_present_state_FSM_FFd3_243
    );
  driver_spi_present_state_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X52Y61"
    )
    port map (
      ADR0 => driver_spi_present_state_FSM_FFd3_243,
      ADR1 => driver_spi_present_state_FSM_FFd2_242,
      ADR2 => driver_spi_present_state_FSM_FFd1_244,
      ADR3 => driver_spi_present_state_FSM_FFd4_241,
      O => driver_sload
    );
  driver_spi_present_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X52Y61",
      INIT => '0'
    )
    port map (
      I => driver_spi_present_state_FSM_FFd4_DXMUX_559,
      CE => VCC,
      CLK => driver_spi_present_state_FSM_FFd4_CLKINV_533,
      SET => GND,
      RST => driver_spi_present_state_FSM_FFd4_SRINV_534,
      O => driver_spi_present_state_FSM_FFd4_241
    );
  decoder_y_7_11 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X46Y59"
    )
    port map (
      ADR0 => driver_a_reg_q(6),
      ADR1 => driver_a_reg_q(3),
      ADR2 => N2_0,
      ADR3 => driver_a_reg_q(5),
      O => decoder_N01_pack_1
    );
  decoder_y_7_21 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X46Y59"
    )
    port map (
      ADR0 => driver_a_reg_q(7),
      ADR1 => driver_a_reg_q(9),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(8),
      O => LD_7_OBUF_587
    );
  decoder_y_1_1 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X55Y50"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_1_OBUF_604
    );
  decoder_y_0_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X55Y50"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_0_OBUF_611
    );
  decoder_y_2_1 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X55Y49"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_2_OBUF_628
    );
  decoder_y_3_1 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X55Y49"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_3_OBUF_635
    );
  decoder_y_4_1 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X55Y53"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_4_OBUF_652
    );
  decoder_y_5_1 : X_LUT4
    generic map(
      INIT => X"EA00",
      LOC => "SLICE_X55Y53"
    )
    port map (
      ADR0 => driver_a_reg_q(8),
      ADR1 => driver_a_reg_q(7),
      ADR2 => decoder_N01,
      ADR3 => driver_a_reg_q(9),
      O => LD_5_OBUF_659
    );
  decoder_y_6_1 : X_LUT4
    generic map(
      INIT => X"E000",
      LOC => "SLICE_X30Y60"
    )
    port map (
      ADR0 => driver_a_reg_q(7),
      ADR1 => decoder_N01,
      ADR2 => driver_a_reg_q(8),
      ADR3 => driver_a_reg_q(9),
      O => LD_6_OBUF_671
    );
  decoder_y_7_11_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X48Y59"
    )
    port map (
      ADR0 => driver_a_reg_q(1),
      ADR1 => driver_a_reg_q(2),
      ADR2 => driver_a_reg_q(4),
      ADR3 => driver_a_reg_q(0),
      O => N2
    );
  driver_spi_present_state_FSM_Out11 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X64Y60"
    )
    port map (
      ADR0 => driver_spi_present_state_FSM_FFd3_243,
      ADR1 => driver_spi_present_state_FSM_FFd1_244,
      ADR2 => driver_spi_present_state_FSM_FFd2_242,
      ADR3 => VCC,
      O => JA1_OBUF_695
    );
  driver_a_reg_q_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y59",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_1_DYMUX_709,
      CE => driver_a_reg_q_1_CEINV_705,
      CLK => driver_a_reg_q_1_CLKINV_706,
      SET => GND,
      RST => driver_a_reg_q_1_SRINV_707,
      O => driver_a_reg_q(0)
    );
  driver_a_reg_q_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y59",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_1_DXMUX_718,
      CE => driver_a_reg_q_1_CEINV_705,
      CLK => driver_a_reg_q_1_CLKINV_706,
      SET => GND,
      RST => driver_a_reg_q_1_SRINV_707,
      O => driver_a_reg_q(1)
    );
  driver_a_reg_q_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_3_DYMUX_737,
      CE => driver_a_reg_q_3_CEINV_733,
      CLK => driver_a_reg_q_3_CLKINV_734,
      SET => GND,
      RST => driver_a_reg_q_3_SRINV_735,
      O => driver_a_reg_q(2)
    );
  driver_a_reg_q_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_3_DXMUX_746,
      CE => driver_a_reg_q_3_CEINV_733,
      CLK => driver_a_reg_q_3_CLKINV_734,
      SET => GND,
      RST => driver_a_reg_q_3_SRINV_735,
      O => driver_a_reg_q(3)
    );
  driver_a_reg_q_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y59",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_5_DYMUX_765,
      CE => driver_a_reg_q_5_CEINV_761,
      CLK => driver_a_reg_q_5_CLKINV_762,
      SET => GND,
      RST => driver_a_reg_q_5_SRINV_763,
      O => driver_a_reg_q(4)
    );
  driver_a_reg_q_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y59",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_5_DXMUX_774,
      CE => driver_a_reg_q_5_CEINV_761,
      CLK => driver_a_reg_q_5_CLKINV_762,
      SET => GND,
      RST => driver_a_reg_q_5_SRINV_763,
      O => driver_a_reg_q(5)
    );
  driver_a_reg_q_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y62",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_7_DYMUX_793,
      CE => driver_a_reg_q_7_CEINV_789,
      CLK => driver_a_reg_q_7_CLKINV_790,
      SET => GND,
      RST => driver_a_reg_q_7_SRINV_791,
      O => driver_a_reg_q(6)
    );
  driver_a_reg_q_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y62",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_7_DXMUX_802,
      CE => driver_a_reg_q_7_CEINV_789,
      CLK => driver_a_reg_q_7_CLKINV_790,
      SET => GND,
      RST => driver_a_reg_q_7_SRINV_791,
      O => driver_a_reg_q(7)
    );
  driver_a_reg_q_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y62",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_9_DYMUX_821,
      CE => driver_a_reg_q_9_CEINV_817,
      CLK => driver_a_reg_q_9_CLKINV_818,
      SET => GND,
      RST => driver_a_reg_q_9_SRINV_819,
      O => driver_a_reg_q(8)
    );
  driver_a_reg_q_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y62",
      INIT => '0'
    )
    port map (
      I => driver_a_reg_q_9_DXMUX_830,
      CE => driver_a_reg_q_9_CEINV_817,
      CLK => driver_a_reg_q_9_CLKINV_818,
      SET => GND,
      RST => driver_a_reg_q_9_SRINV_819,
      O => driver_a_reg_q(9)
    );
  driver_s_reg_qs_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_1_DYMUX_847,
      CE => VCC,
      CLK => driver_s_reg_qs_1_CLKINV_844,
      SET => GND,
      RST => driver_s_reg_qs_1_SRINV_845,
      O => driver_s_reg_qs(0)
    );
  driver_s_reg_qs_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_1_DXMUX_855,
      CE => VCC,
      CLK => driver_s_reg_qs_1_CLKINV_844,
      SET => GND,
      RST => driver_s_reg_qs_1_SRINV_845,
      O => driver_s_reg_qs(1)
    );
  driver_s_reg_qs_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_3_DYMUX_871,
      CE => VCC,
      CLK => driver_s_reg_qs_3_CLKINV_868,
      SET => GND,
      RST => driver_s_reg_qs_3_SRINV_869,
      O => driver_s_reg_qs(2)
    );
  driver_s_reg_qs_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_3_DXMUX_879,
      CE => VCC,
      CLK => driver_s_reg_qs_3_CLKINV_868,
      SET => GND,
      RST => driver_s_reg_qs_3_SRINV_869,
      O => driver_s_reg_qs(3)
    );
  driver_s_reg_qs_4 : X_FF
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_5_DYMUX_895,
      CE => VCC,
      CLK => driver_s_reg_qs_5_CLKINV_892,
      SET => GND,
      RST => driver_s_reg_qs_5_SRINV_893,
      O => driver_s_reg_qs(4)
    );
  driver_s_reg_qs_5 : X_FF
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_5_DXMUX_903,
      CE => VCC,
      CLK => driver_s_reg_qs_5_CLKINV_892,
      SET => GND,
      RST => driver_s_reg_qs_5_SRINV_893,
      O => driver_s_reg_qs(5)
    );
  driver_s_reg_qs_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_7_DYMUX_919,
      CE => VCC,
      CLK => driver_s_reg_qs_7_CLKINV_916,
      SET => GND,
      RST => driver_s_reg_qs_7_SRINV_917,
      O => driver_s_reg_qs(6)
    );
  driver_s_reg_qs_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_7_DXMUX_927,
      CE => VCC,
      CLK => driver_s_reg_qs_7_CLKINV_916,
      SET => GND,
      RST => driver_s_reg_qs_7_SRINV_917,
      O => driver_s_reg_qs(7)
    );
  driver_s_reg_qs_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y63",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_9_DYMUX_943,
      CE => VCC,
      CLK => driver_s_reg_qs_9_CLKINV_940,
      SET => GND,
      RST => driver_s_reg_qs_9_SRINV_941,
      O => driver_s_reg_qs(8)
    );
  driver_s_reg_qs_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y63",
      INIT => '0'
    )
    port map (
      I => driver_s_reg_qs_9_DXMUX_951,
      CE => VCC,
      CLK => driver_s_reg_qs_9_CLKINV_940,
      SET => GND,
      RST => driver_s_reg_qs_9_SRINV_941,
      O => driver_s_reg_qs(9)
    );
  cdivider_q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y88"
    )
    port map (
      ADR0 => cdivider_q(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cdivider_q_0_G
    );
  cdivider_q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cdivider_q(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cdivider_q_2_F
    );
  LD_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_0_OBUF_611,
      O => LD_0_O
    );
  LD_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_1_OBUF_604,
      O => LD_1_O
    );
  LD_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_2_OBUF_628,
      O => LD_2_O
    );
  LD_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_3_OBUF_635,
      O => LD_3_O
    );
  LD_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_4_OBUF_652,
      O => LD_4_O
    );
  LD_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_5_OBUF_659,
      O => LD_5_O
    );
  LD_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_6_OBUF_671,
      O => LD_6_O
    );
  LD_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 694 ps
    )
    port map (
      I => LD_7_OBUF_587,
      O => LD_7_O
    );
  JA1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => JA1_OBUF_695,
      O => JA1_O
    );
  JA2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 694 ps
    )
    port map (
      I => cdivider_q_31,
      O => JA2_O
    );
  NlwBlock_lab4_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_lab4_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

