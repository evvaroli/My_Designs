--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Sun Feb 16 22:06:31 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf EuclidsGCD_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true EuclidsGCD_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: EuclidsGCD_top.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity EuclidsGCD_top is
  port (
    mclk : in STD_LOGIC := 'X'; 
    LD : out STD_LOGIC_VECTOR ( 7 downto 4 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 2 ); 
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end EuclidsGCD_top;

architecture Structure of EuclidsGCD_top is
  signal mclk_BUFGP : STD_LOGIC; 
  signal btn_3_IBUF_431 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_Q : STD_LOGIC; 
  signal SW_1_IBUF_458 : STD_LOGIC; 
  signal SW_2_IBUF_459 : STD_LOGIC; 
  signal SW_3_IBUF_460 : STD_LOGIC; 
  signal SW_4_IBUF_461 : STD_LOGIC; 
  signal SW_5_IBUF_462 : STD_LOGIC; 
  signal SW_6_IBUF_463 : STD_LOGIC; 
  signal SW_7_IBUF_465 : STD_LOGIC; 
  signal SW_0_IBUF_471 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_0_not0000_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000_0 : STD_LOGIC; 
  signal gcd_syload_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000133_479 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000133_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000025_487 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000012_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O : STD_LOGIC; 
  signal gcd_sxload_0 : STD_LOGIC; 
  signal sclk_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_492 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000_0 : STD_LOGIC; 
  signal gcd_submax_Msub_z_mux0001_lut_0_0 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_501 : STD_LOGIC; 
  signal gcd_submax_Msub_z_mux0001_cy_0_0 : STD_LOGIC; 
  signal gcd_submax_Msub_z_mux0001_lut_2_0 : STD_LOGIC; 
  signal gcd_submax_Msub_z_mux0001_lut_1_0 : STD_LOGIC; 
  signal gcd_submax_z_mux0002_1_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal cp_delay3_519 : STD_LOGIC; 
  signal cp_delay2_520 : STD_LOGIC; 
  signal cp_delay1_521 : STD_LOGIC; 
  signal cd_q_0_DXMUX_569 : STD_LOGIC; 
  signal cd_q_0_XORF_567 : STD_LOGIC; 
  signal cd_q_0_LOGIC_ONE_566 : STD_LOGIC; 
  signal cd_q_0_CYINIT_565 : STD_LOGIC; 
  signal cd_q_0_CYSELF_556 : STD_LOGIC; 
  signal cd_q_0_BXINV_554 : STD_LOGIC; 
  signal cd_q_0_DYMUX_547 : STD_LOGIC; 
  signal cd_q_0_XORG_545 : STD_LOGIC; 
  signal cd_q_0_CYMUXG_544 : STD_LOGIC; 
  signal cd_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal cd_q_0_LOGIC_ZERO_542 : STD_LOGIC; 
  signal cd_q_0_CYSELG_533 : STD_LOGIC; 
  signal cd_q_0_G : STD_LOGIC; 
  signal cd_q_0_SRINV_531 : STD_LOGIC; 
  signal cd_q_0_CLKINV_530 : STD_LOGIC; 
  signal cd_q_2_DXMUX_625 : STD_LOGIC; 
  signal cd_q_2_XORF_623 : STD_LOGIC; 
  signal cd_q_2_CYINIT_622 : STD_LOGIC; 
  signal cd_q_2_F : STD_LOGIC; 
  signal cd_q_2_DYMUX_606 : STD_LOGIC; 
  signal cd_q_2_XORG_604 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal cd_q_2_CYSELF_602 : STD_LOGIC; 
  signal cd_q_2_CYMUXFAST_601 : STD_LOGIC; 
  signal cd_q_2_CYAND_600 : STD_LOGIC; 
  signal cd_q_2_FASTCARRY_599 : STD_LOGIC; 
  signal cd_q_2_CYMUXG2_598 : STD_LOGIC; 
  signal cd_q_2_CYMUXF2_597 : STD_LOGIC; 
  signal cd_q_2_LOGIC_ZERO_596 : STD_LOGIC; 
  signal cd_q_2_CYSELG_587 : STD_LOGIC; 
  signal cd_q_2_G : STD_LOGIC; 
  signal cd_q_2_SRINV_585 : STD_LOGIC; 
  signal cd_q_2_CLKINV_584 : STD_LOGIC; 
  signal cd_q_4_DXMUX_681 : STD_LOGIC; 
  signal cd_q_4_XORF_679 : STD_LOGIC; 
  signal cd_q_4_CYINIT_678 : STD_LOGIC; 
  signal cd_q_4_F : STD_LOGIC; 
  signal cd_q_4_DYMUX_662 : STD_LOGIC; 
  signal cd_q_4_XORG_660 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_Q : STD_LOGIC; 
  signal cd_q_4_CYSELF_658 : STD_LOGIC; 
  signal cd_q_4_CYMUXFAST_657 : STD_LOGIC; 
  signal cd_q_4_CYAND_656 : STD_LOGIC; 
  signal cd_q_4_FASTCARRY_655 : STD_LOGIC; 
  signal cd_q_4_CYMUXG2_654 : STD_LOGIC; 
  signal cd_q_4_CYMUXF2_653 : STD_LOGIC; 
  signal cd_q_4_LOGIC_ZERO_652 : STD_LOGIC; 
  signal cd_q_4_CYSELG_643 : STD_LOGIC; 
  signal cd_q_4_G : STD_LOGIC; 
  signal cd_q_4_SRINV_641 : STD_LOGIC; 
  signal cd_q_4_CLKINV_640 : STD_LOGIC; 
  signal cd_q_6_DXMUX_737 : STD_LOGIC; 
  signal cd_q_6_XORF_735 : STD_LOGIC; 
  signal cd_q_6_CYINIT_734 : STD_LOGIC; 
  signal cd_q_6_F : STD_LOGIC; 
  signal cd_q_6_DYMUX_718 : STD_LOGIC; 
  signal cd_q_6_XORG_716 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_Q : STD_LOGIC; 
  signal cd_q_6_CYSELF_714 : STD_LOGIC; 
  signal cd_q_6_CYMUXFAST_713 : STD_LOGIC; 
  signal cd_q_6_CYAND_712 : STD_LOGIC; 
  signal cd_q_6_FASTCARRY_711 : STD_LOGIC; 
  signal cd_q_6_CYMUXG2_710 : STD_LOGIC; 
  signal cd_q_6_CYMUXF2_709 : STD_LOGIC; 
  signal cd_q_6_LOGIC_ZERO_708 : STD_LOGIC; 
  signal cd_q_6_CYSELG_699 : STD_LOGIC; 
  signal cd_q_6_G : STD_LOGIC; 
  signal cd_q_6_SRINV_697 : STD_LOGIC; 
  signal cd_q_6_CLKINV_696 : STD_LOGIC; 
  signal cd_q_8_DXMUX_793 : STD_LOGIC; 
  signal cd_q_8_XORF_791 : STD_LOGIC; 
  signal cd_q_8_CYINIT_790 : STD_LOGIC; 
  signal cd_q_8_F : STD_LOGIC; 
  signal cd_q_8_DYMUX_774 : STD_LOGIC; 
  signal cd_q_8_XORG_772 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_Q : STD_LOGIC; 
  signal cd_q_8_CYSELF_770 : STD_LOGIC; 
  signal cd_q_8_CYMUXFAST_769 : STD_LOGIC; 
  signal cd_q_8_CYAND_768 : STD_LOGIC; 
  signal cd_q_8_FASTCARRY_767 : STD_LOGIC; 
  signal cd_q_8_CYMUXG2_766 : STD_LOGIC; 
  signal cd_q_8_CYMUXF2_765 : STD_LOGIC; 
  signal cd_q_8_LOGIC_ZERO_764 : STD_LOGIC; 
  signal cd_q_8_CYSELG_755 : STD_LOGIC; 
  signal cd_q_8_G : STD_LOGIC; 
  signal cd_q_8_SRINV_753 : STD_LOGIC; 
  signal cd_q_8_CLKINV_752 : STD_LOGIC; 
  signal cd_q_10_DXMUX_849 : STD_LOGIC; 
  signal cd_q_10_XORF_847 : STD_LOGIC; 
  signal cd_q_10_CYINIT_846 : STD_LOGIC; 
  signal cd_q_10_F : STD_LOGIC; 
  signal cd_q_10_DYMUX_830 : STD_LOGIC; 
  signal cd_q_10_XORG_828 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_Q : STD_LOGIC; 
  signal cd_q_10_CYSELF_826 : STD_LOGIC; 
  signal cd_q_10_CYMUXFAST_825 : STD_LOGIC; 
  signal cd_q_10_CYAND_824 : STD_LOGIC; 
  signal cd_q_10_FASTCARRY_823 : STD_LOGIC; 
  signal cd_q_10_CYMUXG2_822 : STD_LOGIC; 
  signal cd_q_10_CYMUXF2_821 : STD_LOGIC; 
  signal cd_q_10_LOGIC_ZERO_820 : STD_LOGIC; 
  signal cd_q_10_CYSELG_811 : STD_LOGIC; 
  signal cd_q_10_G : STD_LOGIC; 
  signal cd_q_10_SRINV_809 : STD_LOGIC; 
  signal cd_q_10_CLKINV_808 : STD_LOGIC; 
  signal cd_q_12_DXMUX_905 : STD_LOGIC; 
  signal cd_q_12_XORF_903 : STD_LOGIC; 
  signal cd_q_12_CYINIT_902 : STD_LOGIC; 
  signal cd_q_12_F : STD_LOGIC; 
  signal cd_q_12_DYMUX_886 : STD_LOGIC; 
  signal cd_q_12_XORG_884 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_Q : STD_LOGIC; 
  signal cd_q_12_CYSELF_882 : STD_LOGIC; 
  signal cd_q_12_CYMUXFAST_881 : STD_LOGIC; 
  signal cd_q_12_CYAND_880 : STD_LOGIC; 
  signal cd_q_12_FASTCARRY_879 : STD_LOGIC; 
  signal cd_q_12_CYMUXG2_878 : STD_LOGIC; 
  signal cd_q_12_CYMUXF2_877 : STD_LOGIC; 
  signal cd_q_12_LOGIC_ZERO_876 : STD_LOGIC; 
  signal cd_q_12_CYSELG_867 : STD_LOGIC; 
  signal cd_q_12_G : STD_LOGIC; 
  signal cd_q_12_SRINV_865 : STD_LOGIC; 
  signal cd_q_12_CLKINV_864 : STD_LOGIC; 
  signal cd_q_14_DXMUX_961 : STD_LOGIC; 
  signal cd_q_14_XORF_959 : STD_LOGIC; 
  signal cd_q_14_CYINIT_958 : STD_LOGIC; 
  signal cd_q_14_F : STD_LOGIC; 
  signal cd_q_14_DYMUX_942 : STD_LOGIC; 
  signal cd_q_14_XORG_940 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_Q : STD_LOGIC; 
  signal cd_q_14_CYSELF_938 : STD_LOGIC; 
  signal cd_q_14_CYMUXFAST_937 : STD_LOGIC; 
  signal cd_q_14_CYAND_936 : STD_LOGIC; 
  signal cd_q_14_FASTCARRY_935 : STD_LOGIC; 
  signal cd_q_14_CYMUXG2_934 : STD_LOGIC; 
  signal cd_q_14_CYMUXF2_933 : STD_LOGIC; 
  signal cd_q_14_LOGIC_ZERO_932 : STD_LOGIC; 
  signal cd_q_14_CYSELG_923 : STD_LOGIC; 
  signal cd_q_14_G : STD_LOGIC; 
  signal cd_q_14_SRINV_921 : STD_LOGIC; 
  signal cd_q_14_CLKINV_920 : STD_LOGIC; 
  signal cd_q_16_DXMUX_1010 : STD_LOGIC; 
  signal cd_q_16_XORF_1008 : STD_LOGIC; 
  signal cd_q_16_LOGIC_ZERO_1007 : STD_LOGIC; 
  signal cd_q_16_CYINIT_1006 : STD_LOGIC; 
  signal cd_q_16_CYSELF_997 : STD_LOGIC; 
  signal cd_q_16_F : STD_LOGIC; 
  signal cd_q_16_DYMUX_989 : STD_LOGIC; 
  signal cd_q_16_XORG_987 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_Q : STD_LOGIC; 
  signal cd_q_17_rt_984 : STD_LOGIC; 
  signal cd_q_16_SRINV_976 : STD_LOGIC; 
  signal cd_q_16_CLKINV_975 : STD_LOGIC; 
  signal SW_1_INBUF : STD_LOGIC; 
  signal SW_2_INBUF : STD_LOGIC; 
  signal SW_3_INBUF : STD_LOGIC; 
  signal SW_4_INBUF : STD_LOGIC; 
  signal SW_5_INBUF : STD_LOGIC; 
  signal SW_6_INBUF : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal SW_7_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal LD_4_O : STD_LOGIC; 
  signal LD_5_O : STD_LOGIC; 
  signal LD_6_O : STD_LOGIC; 
  signal LD_7_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal SW_0_INBUF : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal gcd_syload : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O_pack_1 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_cmp_gt0000133_pack_1 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000161_1189 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O_pack_1 : STD_LOGIC; 
  signal gcd_sxload : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O_pack_1 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_0_not0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000025_pack_1 : STD_LOGIC; 
  signal gcd_registerX_q_1_DXMUX_1278 : STD_LOGIC; 
  signal gcd_registerX_q_1_DYMUX_1262 : STD_LOGIC; 
  signal gcd_registerX_q_1_SRINV_1253 : STD_LOGIC; 
  signal gcd_registerX_q_1_CLKINV_1252 : STD_LOGIC; 
  signal gcd_registerX_q_1_CEINV_1251 : STD_LOGIC; 
  signal gcd_registerX_q_3_DXMUX_1324 : STD_LOGIC; 
  signal gcd_registerX_q_3_DYMUX_1308 : STD_LOGIC; 
  signal gcd_registerX_q_3_SRINV_1299 : STD_LOGIC; 
  signal gcd_registerX_q_3_CLKINV_1298 : STD_LOGIC; 
  signal gcd_registerX_q_3_CEINV_1297 : STD_LOGIC; 
  signal gcd_submax_z_0_DYMUX_1353 : STD_LOGIC; 
  signal gcd_submax_z_0_CLKINVNOT : STD_LOGIC; 
  signal gcd_registerY_q_1_DXMUX_1410 : STD_LOGIC; 
  signal gcd_registerY_q_1_DYMUX_1394 : STD_LOGIC; 
  signal gcd_registerY_q_1_SRINV_1385 : STD_LOGIC; 
  signal gcd_registerY_q_1_CLKINV_1384 : STD_LOGIC; 
  signal gcd_registerY_q_1_CEINV_1383 : STD_LOGIC; 
  signal gcd_submax_z_1_and0001_pack_1 : STD_LOGIC; 
  signal gcd_submax_z_1_DYMUX_1442 : STD_LOGIC; 
  signal gcd_submax_z_1_GYMUX_1441 : STD_LOGIC; 
  signal gcd_submax_z_mux0001_1_pack_2 : STD_LOGIC; 
  signal gcd_submax_z_1_CLKINVNOT : STD_LOGIC; 
  signal gcd_submax_z_2_and0001_pack_1 : STD_LOGIC; 
  signal gcd_submax_z_2_DYMUX_1483 : STD_LOGIC; 
  signal gcd_submax_z_2_GYMUX_1482 : STD_LOGIC; 
  signal gcd_submax_z_mux0001_2_pack_2 : STD_LOGIC; 
  signal gcd_submax_z_2_CLKINVNOT : STD_LOGIC; 
  signal gcd_registerY_q_3_DXMUX_1538 : STD_LOGIC; 
  signal gcd_registerY_q_3_DYMUX_1522 : STD_LOGIC; 
  signal gcd_registerY_q_3_SRINV_1513 : STD_LOGIC; 
  signal gcd_registerY_q_3_CLKINV_1512 : STD_LOGIC; 
  signal gcd_registerY_q_3_CEINV_1511 : STD_LOGIC; 
  signal gcd_submax_z_3_and0001_pack_1 : STD_LOGIC; 
  signal gcd_submax_z_3_DYMUX_1570 : STD_LOGIC; 
  signal gcd_submax_z_3_GYMUX_1569 : STD_LOGIC; 
  signal gcd_submax_z_mux0001_3_pack_2 : STD_LOGIC; 
  signal gcd_submax_z_3_CLKINVNOT : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000133_1608 : STD_LOGIC; 
  signal gcd_regmuxctrl_yload_and000012_1656 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_cmp_gt0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_not0002 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal gcd_submax_Msub_z_mux0001_cy_1_pack_2 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_DXMUX_1717 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_BXINV_1716 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_CLKINVNOT : STD_LOGIC; 
  signal gcd_submax_z_0_and0001 : STD_LOGIC; 
  signal N8_pack_1 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_not0001 : STD_LOGIC; 
  signal N9_pack_1 : STD_LOGIC; 
  signal sclk : STD_LOGIC; 
  signal gcd_submax_z_1_and0000 : STD_LOGIC; 
  signal gcd_submax_z_0_and0000 : STD_LOGIC; 
  signal cp_delay2_DXMUX_1827 : STD_LOGIC; 
  signal cp_delay2_DYMUX_1819 : STD_LOGIC; 
  signal cp_delay2_SRINV_1817 : STD_LOGIC; 
  signal cp_delay2_CLKINV_1816 : STD_LOGIC; 
  signal cp_delay3_DYMUX_1841 : STD_LOGIC; 
  signal cp_delay3_CLKINV_1838 : STD_LOGIC; 
  signal gcd_submax_z_3_and0000 : STD_LOGIC; 
  signal gcd_submax_z_2_and0000 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_DYMUX_1879 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_BYINV_1878 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_CLKINVNOT : STD_LOGIC; 
  signal gcd_submax_z_0_FFY_SET : STD_LOGIC; 
  signal gcd_submax_z_0_FFY_RSTAND_1360 : STD_LOGIC; 
  signal gcd_submax_z_1_FFY_SET : STD_LOGIC; 
  signal gcd_submax_z_1_FFY_RSTAND_1449 : STD_LOGIC; 
  signal gcd_submax_z_2_FFY_SET : STD_LOGIC; 
  signal gcd_submax_z_2_FFY_RSTAND_1490 : STD_LOGIC; 
  signal gcd_submax_z_3_FFY_SET : STD_LOGIC; 
  signal gcd_submax_z_3_FFY_RSTAND_1577 : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_FFX_SET : STD_LOGIC; 
  signal gcd_regmuxctrl_xmuxsel_FFX_RSTAND_1723 : STD_LOGIC; 
  signal cp_delay3_FFY_RSTAND_1846 : STD_LOGIC; 
  signal gcd_regmuxctrl_ymuxsel_FFY_RSTAND_1884 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_gcd_submax_z_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_gcd_submax_z_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_gcd_submax_z_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_gcd_submax_z_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_gcd_regmuxctrl_xmuxsel_CLK : STD_LOGIC; 
  signal NlwInverterSignal_gcd_regmuxctrl_ymuxsel_CLK : STD_LOGIC; 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gcd_registerX_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_registerY_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_Msub_z_mux0001_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal gcd_mxbus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_Msub_z_mux0001_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal gcd_mybus : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gcd_submax_z_mux0002 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  cd_q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      O => cd_q_0_LOGIC_ZERO_542
    );
  cd_q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      O => cd_q_0_LOGIC_ONE_566
    );
  cd_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORF_567,
      O => cd_q_0_DXMUX_569
    );
  cd_q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      I0 => cd_q_0_CYINIT_565,
      I1 => cd_Mcount_q_lut(0),
      O => cd_q_0_XORF_567
    );
  cd_q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      IA => cd_q_0_LOGIC_ONE_566,
      IB => cd_q_0_CYINIT_565,
      SEL => cd_q_0_CYSELF_556,
      O => cd_Mcount_q_cy_0_Q
    );
  cd_q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_BXINV_554,
      O => cd_q_0_CYINIT_565
    );
  cd_q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_lut(0),
      O => cd_q_0_CYSELF_556
    );
  cd_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => cd_q_0_BXINV_554
    );
  cd_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORG_545,
      O => cd_q_0_DYMUX_547
    );
  cd_q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      I0 => cd_Mcount_q_cy_0_Q,
      I1 => cd_q_0_G,
      O => cd_q_0_XORG_545
    );
  cd_q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_CYMUXG_544,
      O => cd_Mcount_q_cy_1_Q
    );
  cd_q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y54"
    )
    port map (
      IA => cd_q_0_LOGIC_ZERO_542,
      IB => cd_Mcount_q_cy_0_Q,
      SEL => cd_q_0_CYSELG_533,
      O => cd_q_0_CYMUXG_544
    );
  cd_q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_G,
      O => cd_q_0_CYSELG_533
    );
  cd_q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_0_SRINV_531
    );
  cd_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_0_CLKINV_530
    );
  cd_q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      O => cd_q_2_LOGIC_ZERO_596
    );
  cd_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORF_623,
      O => cd_q_2_DXMUX_625
    );
  cd_q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      I0 => cd_q_2_CYINIT_622,
      I1 => cd_q_2_F,
      O => cd_q_2_XORF_623
    );
  cd_q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_596,
      IB => cd_q_2_CYINIT_622,
      SEL => cd_q_2_CYSELF_602,
      O => cd_Mcount_q_cy_2_Q
    );
  cd_q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_596,
      IB => cd_q_2_LOGIC_ZERO_596,
      SEL => cd_q_2_CYSELF_602,
      O => cd_q_2_CYMUXF2_597
    );
  cd_q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_CYINIT_622
    );
  cd_q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_F,
      O => cd_q_2_CYSELF_602
    );
  cd_q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORG_604,
      O => cd_q_2_DYMUX_606
    );
  cd_q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      I0 => cd_Mcount_q_cy_2_Q,
      I1 => cd_q_2_G,
      O => cd_q_2_XORG_604
    );
  cd_q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_CYMUXFAST_601,
      O => cd_Mcount_q_cy_3_Q
    );
  cd_q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_FASTCARRY_599
    );
  cd_q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      I0 => cd_q_2_CYSELG_587,
      I1 => cd_q_2_CYSELF_602,
      O => cd_q_2_CYAND_600
    );
  cd_q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      IA => cd_q_2_CYMUXG2_598,
      IB => cd_q_2_FASTCARRY_599,
      SEL => cd_q_2_CYAND_600,
      O => cd_q_2_CYMUXFAST_601
    );
  cd_q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y55"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_596,
      IB => cd_q_2_CYMUXF2_597,
      SEL => cd_q_2_CYSELG_587,
      O => cd_q_2_CYMUXG2_598
    );
  cd_q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_G,
      O => cd_q_2_CYSELG_587
    );
  cd_q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_2_SRINV_585
    );
  cd_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_2_CLKINV_584
    );
  cd_q_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      O => cd_q_4_LOGIC_ZERO_652
    );
  cd_q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORF_679,
      O => cd_q_4_DXMUX_681
    );
  cd_q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      I0 => cd_q_4_CYINIT_678,
      I1 => cd_q_4_F,
      O => cd_q_4_XORF_679
    );
  cd_q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_652,
      IB => cd_q_4_CYINIT_678,
      SEL => cd_q_4_CYSELF_658,
      O => cd_Mcount_q_cy_4_Q
    );
  cd_q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_652,
      IB => cd_q_4_LOGIC_ZERO_652,
      SEL => cd_q_4_CYSELF_658,
      O => cd_q_4_CYMUXF2_653
    );
  cd_q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_CYINIT_678
    );
  cd_q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_F,
      O => cd_q_4_CYSELF_658
    );
  cd_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORG_660,
      O => cd_q_4_DYMUX_662
    );
  cd_q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      I0 => cd_Mcount_q_cy_4_Q,
      I1 => cd_q_4_G,
      O => cd_q_4_XORG_660
    );
  cd_q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_CYMUXFAST_657,
      O => cd_Mcount_q_cy_5_Q
    );
  cd_q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_FASTCARRY_655
    );
  cd_q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      I0 => cd_q_4_CYSELG_643,
      I1 => cd_q_4_CYSELF_658,
      O => cd_q_4_CYAND_656
    );
  cd_q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      IA => cd_q_4_CYMUXG2_654,
      IB => cd_q_4_FASTCARRY_655,
      SEL => cd_q_4_CYAND_656,
      O => cd_q_4_CYMUXFAST_657
    );
  cd_q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y56"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_652,
      IB => cd_q_4_CYMUXF2_653,
      SEL => cd_q_4_CYSELG_643,
      O => cd_q_4_CYMUXG2_654
    );
  cd_q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_G,
      O => cd_q_4_CYSELG_643
    );
  cd_q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_4_SRINV_641
    );
  cd_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_4_CLKINV_640
    );
  cd_q_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      O => cd_q_6_LOGIC_ZERO_708
    );
  cd_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORF_735,
      O => cd_q_6_DXMUX_737
    );
  cd_q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      I0 => cd_q_6_CYINIT_734,
      I1 => cd_q_6_F,
      O => cd_q_6_XORF_735
    );
  cd_q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_708,
      IB => cd_q_6_CYINIT_734,
      SEL => cd_q_6_CYSELF_714,
      O => cd_Mcount_q_cy_6_Q
    );
  cd_q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_708,
      IB => cd_q_6_LOGIC_ZERO_708,
      SEL => cd_q_6_CYSELF_714,
      O => cd_q_6_CYMUXF2_709
    );
  cd_q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_CYINIT_734
    );
  cd_q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_F,
      O => cd_q_6_CYSELF_714
    );
  cd_q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORG_716,
      O => cd_q_6_DYMUX_718
    );
  cd_q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      I0 => cd_Mcount_q_cy_6_Q,
      I1 => cd_q_6_G,
      O => cd_q_6_XORG_716
    );
  cd_q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_CYMUXFAST_713,
      O => cd_Mcount_q_cy_7_Q
    );
  cd_q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_FASTCARRY_711
    );
  cd_q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      I0 => cd_q_6_CYSELG_699,
      I1 => cd_q_6_CYSELF_714,
      O => cd_q_6_CYAND_712
    );
  cd_q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      IA => cd_q_6_CYMUXG2_710,
      IB => cd_q_6_FASTCARRY_711,
      SEL => cd_q_6_CYAND_712,
      O => cd_q_6_CYMUXFAST_713
    );
  cd_q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y57"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_708,
      IB => cd_q_6_CYMUXF2_709,
      SEL => cd_q_6_CYSELG_699,
      O => cd_q_6_CYMUXG2_710
    );
  cd_q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_G,
      O => cd_q_6_CYSELG_699
    );
  cd_q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_6_SRINV_697
    );
  cd_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_6_CLKINV_696
    );
  cd_q_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      O => cd_q_8_LOGIC_ZERO_764
    );
  cd_q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORF_791,
      O => cd_q_8_DXMUX_793
    );
  cd_q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      I0 => cd_q_8_CYINIT_790,
      I1 => cd_q_8_F,
      O => cd_q_8_XORF_791
    );
  cd_q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_764,
      IB => cd_q_8_CYINIT_790,
      SEL => cd_q_8_CYSELF_770,
      O => cd_Mcount_q_cy_8_Q
    );
  cd_q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_764,
      IB => cd_q_8_LOGIC_ZERO_764,
      SEL => cd_q_8_CYSELF_770,
      O => cd_q_8_CYMUXF2_765
    );
  cd_q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_CYINIT_790
    );
  cd_q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_F,
      O => cd_q_8_CYSELF_770
    );
  cd_q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORG_772,
      O => cd_q_8_DYMUX_774
    );
  cd_q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      I0 => cd_Mcount_q_cy_8_Q,
      I1 => cd_q_8_G,
      O => cd_q_8_XORG_772
    );
  cd_q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_CYMUXFAST_769,
      O => cd_Mcount_q_cy_9_Q
    );
  cd_q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_FASTCARRY_767
    );
  cd_q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      I0 => cd_q_8_CYSELG_755,
      I1 => cd_q_8_CYSELF_770,
      O => cd_q_8_CYAND_768
    );
  cd_q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      IA => cd_q_8_CYMUXG2_766,
      IB => cd_q_8_FASTCARRY_767,
      SEL => cd_q_8_CYAND_768,
      O => cd_q_8_CYMUXFAST_769
    );
  cd_q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y58"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_764,
      IB => cd_q_8_CYMUXF2_765,
      SEL => cd_q_8_CYSELG_755,
      O => cd_q_8_CYMUXG2_766
    );
  cd_q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_G,
      O => cd_q_8_CYSELG_755
    );
  cd_q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_8_SRINV_753
    );
  cd_q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_8_CLKINV_752
    );
  cd_q_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      O => cd_q_10_LOGIC_ZERO_820
    );
  cd_q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORF_847,
      O => cd_q_10_DXMUX_849
    );
  cd_q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      I0 => cd_q_10_CYINIT_846,
      I1 => cd_q_10_F,
      O => cd_q_10_XORF_847
    );
  cd_q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_820,
      IB => cd_q_10_CYINIT_846,
      SEL => cd_q_10_CYSELF_826,
      O => cd_Mcount_q_cy_10_Q
    );
  cd_q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_820,
      IB => cd_q_10_LOGIC_ZERO_820,
      SEL => cd_q_10_CYSELF_826,
      O => cd_q_10_CYMUXF2_821
    );
  cd_q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_CYINIT_846
    );
  cd_q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_F,
      O => cd_q_10_CYSELF_826
    );
  cd_q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORG_828,
      O => cd_q_10_DYMUX_830
    );
  cd_q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      I0 => cd_Mcount_q_cy_10_Q,
      I1 => cd_q_10_G,
      O => cd_q_10_XORG_828
    );
  cd_q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_CYMUXFAST_825,
      O => cd_Mcount_q_cy_11_Q
    );
  cd_q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_FASTCARRY_823
    );
  cd_q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      I0 => cd_q_10_CYSELG_811,
      I1 => cd_q_10_CYSELF_826,
      O => cd_q_10_CYAND_824
    );
  cd_q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => cd_q_10_CYMUXG2_822,
      IB => cd_q_10_FASTCARRY_823,
      SEL => cd_q_10_CYAND_824,
      O => cd_q_10_CYMUXFAST_825
    );
  cd_q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_820,
      IB => cd_q_10_CYMUXF2_821,
      SEL => cd_q_10_CYSELG_811,
      O => cd_q_10_CYMUXG2_822
    );
  cd_q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_G,
      O => cd_q_10_CYSELG_811
    );
  cd_q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_10_SRINV_809
    );
  cd_q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_10_CLKINV_808
    );
  cd_q_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      O => cd_q_12_LOGIC_ZERO_876
    );
  cd_q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORF_903,
      O => cd_q_12_DXMUX_905
    );
  cd_q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => cd_q_12_CYINIT_902,
      I1 => cd_q_12_F,
      O => cd_q_12_XORF_903
    );
  cd_q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_876,
      IB => cd_q_12_CYINIT_902,
      SEL => cd_q_12_CYSELF_882,
      O => cd_Mcount_q_cy_12_Q
    );
  cd_q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_876,
      IB => cd_q_12_LOGIC_ZERO_876,
      SEL => cd_q_12_CYSELF_882,
      O => cd_q_12_CYMUXF2_877
    );
  cd_q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_CYINIT_902
    );
  cd_q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_F,
      O => cd_q_12_CYSELF_882
    );
  cd_q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORG_884,
      O => cd_q_12_DYMUX_886
    );
  cd_q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => cd_Mcount_q_cy_12_Q,
      I1 => cd_q_12_G,
      O => cd_q_12_XORG_884
    );
  cd_q_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_CYMUXFAST_881,
      O => cd_Mcount_q_cy_13_Q
    );
  cd_q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_FASTCARRY_879
    );
  cd_q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => cd_q_12_CYSELG_867,
      I1 => cd_q_12_CYSELF_882,
      O => cd_q_12_CYAND_880
    );
  cd_q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => cd_q_12_CYMUXG2_878,
      IB => cd_q_12_FASTCARRY_879,
      SEL => cd_q_12_CYAND_880,
      O => cd_q_12_CYMUXFAST_881
    );
  cd_q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_876,
      IB => cd_q_12_CYMUXF2_877,
      SEL => cd_q_12_CYSELG_867,
      O => cd_q_12_CYMUXG2_878
    );
  cd_q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_G,
      O => cd_q_12_CYSELG_867
    );
  cd_q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_12_SRINV_865
    );
  cd_q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_12_CLKINV_864
    );
  cd_q_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      O => cd_q_14_LOGIC_ZERO_932
    );
  cd_q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORF_959,
      O => cd_q_14_DXMUX_961
    );
  cd_q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => cd_q_14_CYINIT_958,
      I1 => cd_q_14_F,
      O => cd_q_14_XORF_959
    );
  cd_q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_932,
      IB => cd_q_14_CYINIT_958,
      SEL => cd_q_14_CYSELF_938,
      O => cd_Mcount_q_cy_14_Q
    );
  cd_q_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_932,
      IB => cd_q_14_LOGIC_ZERO_932,
      SEL => cd_q_14_CYSELF_938,
      O => cd_q_14_CYMUXF2_933
    );
  cd_q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_CYINIT_958
    );
  cd_q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_F,
      O => cd_q_14_CYSELF_938
    );
  cd_q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORG_940,
      O => cd_q_14_DYMUX_942
    );
  cd_q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => cd_Mcount_q_cy_14_Q,
      I1 => cd_q_14_G,
      O => cd_q_14_XORG_940
    );
  cd_q_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_FASTCARRY_935
    );
  cd_q_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => cd_q_14_CYSELG_923,
      I1 => cd_q_14_CYSELF_938,
      O => cd_q_14_CYAND_936
    );
  cd_q_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => cd_q_14_CYMUXG2_934,
      IB => cd_q_14_FASTCARRY_935,
      SEL => cd_q_14_CYAND_936,
      O => cd_q_14_CYMUXFAST_937
    );
  cd_q_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_932,
      IB => cd_q_14_CYMUXF2_933,
      SEL => cd_q_14_CYSELG_923,
      O => cd_q_14_CYMUXG2_934
    );
  cd_q_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_G,
      O => cd_q_14_CYSELG_923
    );
  cd_q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_14_SRINV_921
    );
  cd_q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_14_CLKINV_920
    );
  cd_q_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      O => cd_q_16_LOGIC_ZERO_1007
    );
  cd_q_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORF_1008,
      O => cd_q_16_DXMUX_1010
    );
  cd_q_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      I0 => cd_q_16_CYINIT_1006,
      I1 => cd_q_16_F,
      O => cd_q_16_XORF_1008
    );
  cd_q_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      IA => cd_q_16_LOGIC_ZERO_1007,
      IB => cd_q_16_CYINIT_1006,
      SEL => cd_q_16_CYSELF_997,
      O => cd_Mcount_q_cy_16_Q
    );
  cd_q_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_CYMUXFAST_937,
      O => cd_q_16_CYINIT_1006
    );
  cd_q_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_F,
      O => cd_q_16_CYSELF_997
    );
  cd_q_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORG_987,
      O => cd_q_16_DYMUX_989
    );
  cd_q_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      I0 => cd_Mcount_q_cy_16_Q,
      I1 => cd_q_17_rt_984,
      O => cd_q_16_XORG_987
    );
  cd_q_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cd_q_16_SRINV_976
    );
  cd_q_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_16_CLKINV_975
    );
  SW_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(1),
      O => SW_1_INBUF
    );
  SW_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(2),
      O => SW_2_INBUF
    );
  SW_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(3),
      O => SW_3_INBUF
    );
  SW_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(4),
      O => SW_4_INBUF
    );
  SW_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(5),
      O => SW_5_INBUF
    );
  SW_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(6),
      O => SW_6_INBUF
    );
  btn_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(2),
      O => btn_2_INBUF
    );
  SW_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(7),
      O => SW_7_INBUF
    );
  btn_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(3),
      O => btn_3_INBUF
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
  mclk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk,
      O => mclk_INBUF
    );
  SW_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW(0),
      O => SW_0_INBUF
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
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => mclk_BUFGP_BUFG_S_INVNOT
    );
  mclk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_INBUF,
      O => mclk_BUFGP_BUFG_I0_INV
    );
  gcd_syload_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_syload,
      O => gcd_syload_0
    );
  gcd_syload_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O_pack_1,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O
    );
  gcd_regmuxctrl_yload_cmp_gt0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_yload_cmp_gt0000,
      O => gcd_regmuxctrl_yload_cmp_gt0000_0
    );
  gcd_regmuxctrl_yload_cmp_gt0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_yload_cmp_gt0000133_pack_1,
      O => gcd_regmuxctrl_yload_cmp_gt0000133_479
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_1189,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O_pack_1,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O
    );
  gcd_sxload_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_sxload,
      O => gcd_sxload_0
    );
  gcd_sxload_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O_pack_1,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O
    );
  gcd_regmuxctrl_xmuxsel_0_not0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_0_not0000,
      O => gcd_regmuxctrl_xmuxsel_0_not0000_0
    );
  gcd_regmuxctrl_xmuxsel_0_not0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_yload_and000025_pack_1,
      O => gcd_regmuxctrl_yload_and000025_487
    );
  gcd_registerX_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mxbus(1),
      O => gcd_registerX_q_1_DXMUX_1278
    );
  gcd_registerX_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mxbus(0),
      O => gcd_registerX_q_1_DYMUX_1262
    );
  gcd_registerX_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => gcd_registerX_q_1_SRINV_1253
    );
  gcd_registerX_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => sclk_0,
      O => gcd_registerX_q_1_CLKINV_1252
    );
  gcd_registerX_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_sxload_0,
      O => gcd_registerX_q_1_CEINV_1251
    );
  gcd_registerX_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mxbus(3),
      O => gcd_registerX_q_3_DXMUX_1324
    );
  gcd_registerX_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mxbus(2),
      O => gcd_registerX_q_3_DYMUX_1308
    );
  gcd_registerX_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => gcd_registerX_q_3_SRINV_1299
    );
  gcd_registerX_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => sclk_0,
      O => gcd_registerX_q_3_CLKINV_1298
    );
  gcd_registerX_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_sxload_0,
      O => gcd_registerX_q_3_CEINV_1297
    );
  gcd_submax_z_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_Msub_z_mux0001_lut(0),
      O => gcd_submax_Msub_z_mux0001_lut_0_0
    );
  gcd_submax_z_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_mux0001(0),
      O => gcd_submax_z_0_DYMUX_1353
    );
  gcd_submax_z_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0,
      O => gcd_submax_z_0_CLKINVNOT
    );
  gcd_registerY_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mybus(1),
      O => gcd_registerY_q_1_DXMUX_1410
    );
  gcd_registerY_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mybus(0),
      O => gcd_registerY_q_1_DYMUX_1394
    );
  gcd_registerY_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => gcd_registerY_q_1_SRINV_1385
    );
  gcd_registerY_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => sclk_0,
      O => gcd_registerY_q_1_CLKINV_1384
    );
  gcd_registerY_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_syload_0,
      O => gcd_registerY_q_1_CEINV_1383
    );
  gcd_submax_z_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_1_GYMUX_1441,
      O => gcd_submax_z_1_DYMUX_1442
    );
  gcd_submax_z_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_1_GYMUX_1441,
      O => gcd_submax_z_mux0001(1)
    );
  gcd_submax_z_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_mux0001_1_pack_2,
      O => gcd_submax_z_1_GYMUX_1441
    );
  gcd_submax_z_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0,
      O => gcd_submax_z_1_CLKINVNOT
    );
  gcd_submax_z_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_2_GYMUX_1482,
      O => gcd_submax_z_2_DYMUX_1483
    );
  gcd_submax_z_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_2_GYMUX_1482,
      O => gcd_submax_z_mux0001(2)
    );
  gcd_submax_z_2_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_mux0001_2_pack_2,
      O => gcd_submax_z_2_GYMUX_1482
    );
  gcd_submax_z_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0,
      O => gcd_submax_z_2_CLKINVNOT
    );
  gcd_registerY_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mybus(3),
      O => gcd_registerY_q_3_DXMUX_1538
    );
  gcd_registerY_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_mybus(2),
      O => gcd_registerY_q_3_DYMUX_1522
    );
  gcd_registerY_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => gcd_registerY_q_3_SRINV_1513
    );
  gcd_registerY_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => sclk_0,
      O => gcd_registerY_q_3_CLKINV_1512
    );
  gcd_registerY_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_syload_0,
      O => gcd_registerY_q_3_CEINV_1511
    );
  gcd_submax_z_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_3_GYMUX_1569,
      O => gcd_submax_z_3_DYMUX_1570
    );
  gcd_submax_z_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_3_GYMUX_1569,
      O => gcd_submax_z_mux0001(3)
    );
  gcd_submax_z_3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_mux0001_3_pack_2,
      O => gcd_submax_z_3_GYMUX_1569
    );
  gcd_submax_z_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0,
      O => gcd_submax_z_3_CLKINVNOT
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000133_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_1608,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_0
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000133_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_Msub_z_mux0001_cy(0),
      O => gcd_submax_Msub_z_mux0001_cy_0_0
    );
  gcd_submax_z_mux0002_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_mux0002(1),
      O => gcd_submax_z_mux0002_1_0
    );
  gcd_submax_z_mux0002_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_Msub_z_mux0001_lut(1),
      O => gcd_submax_Msub_z_mux0001_lut_1_0
    );
  gcd_regmuxctrl_yload_and000012_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_yload_and000012_1656,
      O => gcd_regmuxctrl_yload_and000012_0
    );
  gcd_regmuxctrl_yload_and000012_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_Msub_z_mux0001_lut(2),
      O => gcd_submax_Msub_z_mux0001_lut_2_0
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_Msub_z_mux0001_cy_1_pack_2,
      O => gcd_submax_Msub_z_mux0001_cy(1)
    );
  gcd_regmuxctrl_xmuxsel_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_BXINV_1716,
      O => gcd_regmuxctrl_xmuxsel_DXMUX_1717
    );
  gcd_regmuxctrl_xmuxsel_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => gcd_regmuxctrl_xmuxsel_BXINV_1716
    );
  gcd_regmuxctrl_xmuxsel_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_not0001,
      O => gcd_regmuxctrl_xmuxsel_CLKINVNOT
    );
  gcd_submax_z_0_and0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8_pack_1,
      O => N8
    );
  gcd_regmuxctrl_xmuxsel_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N9_pack_1,
      O => N9
    );
  sclk_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => sclk,
      O => sclk_0
    );
  cp_delay2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cp_delay1_521,
      O => cp_delay2_DXMUX_1827
    );
  cp_delay2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => cp_delay2_DYMUX_1819
    );
  cp_delay2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cp_delay2_SRINV_1817
    );
  cp_delay2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => cp_delay2_CLKINV_1816
    );
  cp_delay3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => cp_delay2_520,
      O => cp_delay3_DYMUX_1841
    );
  cp_delay3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => cp_delay3_CLKINV_1838
    );
  gcd_regmuxctrl_ymuxsel_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_ymuxsel_BYINV_1878,
      O => gcd_regmuxctrl_ymuxsel_DYMUX_1879
    );
  gcd_regmuxctrl_ymuxsel_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => gcd_regmuxctrl_ymuxsel_BYINV_1878
    );
  gcd_regmuxctrl_ymuxsel_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_ymuxsel_not0002,
      O => gcd_regmuxctrl_ymuxsel_CLKINVNOT
    );
  cd_q_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y54",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DYMUX_547,
      CE => VCC,
      CLK => cd_q_0_CLKINV_530,
      SET => GND,
      RST => cd_q_0_SRINV_531,
      O => cd_q(1)
    );
  cd_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(0),
      O => cd_Mcount_q_lut(0)
    );
  cd_q_0 : X_FF
    generic map(
      LOC => "SLICE_X65Y54",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DXMUX_569,
      CE => VCC,
      CLK => cd_q_0_CLKINV_530,
      SET => GND,
      RST => cd_q_0_SRINV_531,
      O => cd_q(0)
    );
  cd_q_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y55",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DYMUX_606,
      CE => VCC,
      CLK => cd_q_2_CLKINV_584,
      SET => GND,
      RST => cd_q_2_SRINV_585,
      O => cd_q(3)
    );
  cd_q_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y55",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DXMUX_625,
      CE => VCC,
      CLK => cd_q_2_CLKINV_584,
      SET => GND,
      RST => cd_q_2_SRINV_585,
      O => cd_q(2)
    );
  cd_q_5 : X_FF
    generic map(
      LOC => "SLICE_X65Y56",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DYMUX_662,
      CE => VCC,
      CLK => cd_q_4_CLKINV_640,
      SET => GND,
      RST => cd_q_4_SRINV_641,
      O => cd_q(5)
    );
  cd_q_4 : X_FF
    generic map(
      LOC => "SLICE_X65Y56",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DXMUX_681,
      CE => VCC,
      CLK => cd_q_4_CLKINV_640,
      SET => GND,
      RST => cd_q_4_SRINV_641,
      O => cd_q(4)
    );
  cd_q_7 : X_FF
    generic map(
      LOC => "SLICE_X65Y57",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DYMUX_718,
      CE => VCC,
      CLK => cd_q_6_CLKINV_696,
      SET => GND,
      RST => cd_q_6_SRINV_697,
      O => cd_q(7)
    );
  cd_q_6 : X_FF
    generic map(
      LOC => "SLICE_X65Y57",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DXMUX_737,
      CE => VCC,
      CLK => cd_q_6_CLKINV_696,
      SET => GND,
      RST => cd_q_6_SRINV_697,
      O => cd_q(6)
    );
  cd_q_9 : X_FF
    generic map(
      LOC => "SLICE_X65Y58",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DYMUX_774,
      CE => VCC,
      CLK => cd_q_8_CLKINV_752,
      SET => GND,
      RST => cd_q_8_SRINV_753,
      O => cd_q(9)
    );
  cd_q_8 : X_FF
    generic map(
      LOC => "SLICE_X65Y58",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DXMUX_793,
      CE => VCC,
      CLK => cd_q_8_CLKINV_752,
      SET => GND,
      RST => cd_q_8_SRINV_753,
      O => cd_q(8)
    );
  cd_q_11 : X_FF
    generic map(
      LOC => "SLICE_X65Y59",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DYMUX_830,
      CE => VCC,
      CLK => cd_q_10_CLKINV_808,
      SET => GND,
      RST => cd_q_10_SRINV_809,
      O => cd_q(11)
    );
  cd_q_10 : X_FF
    generic map(
      LOC => "SLICE_X65Y59",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DXMUX_849,
      CE => VCC,
      CLK => cd_q_10_CLKINV_808,
      SET => GND,
      RST => cd_q_10_SRINV_809,
      O => cd_q(10)
    );
  cd_q_13 : X_FF
    generic map(
      LOC => "SLICE_X65Y60",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DYMUX_886,
      CE => VCC,
      CLK => cd_q_12_CLKINV_864,
      SET => GND,
      RST => cd_q_12_SRINV_865,
      O => cd_q(13)
    );
  cd_q_12 : X_FF
    generic map(
      LOC => "SLICE_X65Y60",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DXMUX_905,
      CE => VCC,
      CLK => cd_q_12_CLKINV_864,
      SET => GND,
      RST => cd_q_12_SRINV_865,
      O => cd_q(12)
    );
  cd_q_15 : X_FF
    generic map(
      LOC => "SLICE_X65Y61",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DYMUX_942,
      CE => VCC,
      CLK => cd_q_14_CLKINV_920,
      SET => GND,
      RST => cd_q_14_SRINV_921,
      O => cd_q(15)
    );
  cd_q_14 : X_FF
    generic map(
      LOC => "SLICE_X65Y61",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DXMUX_961,
      CE => VCC,
      CLK => cd_q_14_CLKINV_920,
      SET => GND,
      RST => cd_q_14_SRINV_921,
      O => cd_q(14)
    );
  cd_q_17_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(17),
      ADR3 => VCC,
      O => cd_q_17_rt_984
    );
  cd_q_17 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DYMUX_989,
      CE => VCC,
      CLK => cd_q_16_CLKINV_975,
      SET => GND,
      RST => cd_q_16_SRINV_976,
      O => cd_q(17)
    );
  cd_q_16 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DXMUX_1010,
      CE => VCC,
      CLK => cd_q_16_CLKINV_975,
      SET => GND,
      RST => cd_q_16_SRINV_976,
      O => cd_q(16)
    );
  SW_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_1_INBUF,
      O => SW_1_IBUF_458
    );
  SW_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_2_INBUF,
      O => SW_2_IBUF_459
    );
  SW_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_3_INBUF,
      O => SW_3_IBUF_460
    );
  SW_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_4_INBUF,
      O => SW_4_IBUF_461
    );
  SW_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_5_INBUF,
      O => SW_5_IBUF_462
    );
  SW_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_6_INBUF,
      O => SW_6_IBUF_463
    );
  SW_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_7_INBUF,
      O => SW_7_IBUF_465
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_431
    );
  SW_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => SW_0_INBUF,
      O => SW_0_IBUF_471
    );
  gcd_regmuxctrl_yload_cmp_gt0000133 : X_LUT4
    generic map(
      INIT => X"5D04",
      LOC => "SLICE_X64Y41"
    )
    port map (
      ADR0 => gcd_registerX_q(1),
      ADR1 => gcd_registerY_q(0),
      ADR2 => gcd_registerX_q(0),
      ADR3 => gcd_registerY_q(1),
      O => gcd_regmuxctrl_yload_cmp_gt0000133_pack_1
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X65Y41"
    )
    port map (
      ADR0 => gcd_registerX_q(3),
      ADR1 => gcd_registerY_q(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O_pack_1
    );
  gcd_regmuxctrl_yload1 : X_LUT4
    generic map(
      INIT => X"EF20",
      LOC => "SLICE_X65Y41"
    )
    port map (
      ADR0 => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW2_O,
      ADR1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0,
      ADR2 => gcd_regmuxctrl_yload_cmp_gt0000_0,
      ADR3 => gcd_regmuxctrl_xmuxsel_0_not0000_0,
      O => gcd_syload
    );
  gcd_regmuxctrl_yload_cmp_gt0000176 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X64Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N9,
      ADR2 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR3 => N8,
      O => gcd_regmuxctrl_yload_cmp_gt0000
    );
  gcd_regmuxctrl_yload_and000025 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => gcd_registerY_q(3),
      ADR1 => gcd_registerY_q(0),
      ADR2 => gcd_registerY_q(2),
      ADR3 => gcd_registerY_q(1),
      O => gcd_regmuxctrl_yload_and000025_pack_1
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => gcd_registerX_q(3),
      ADR1 => gcd_registerY_q(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O_pack_1
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000161 : X_LUT4
    generic map(
      INIT => X"8E00",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => gcd_registerX_q(2),
      ADR1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_0,
      ADR2 => gcd_registerY_q(2),
      ADR3 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_SW0_O,
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_1189
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => gcd_registerY_q(3),
      ADR3 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O_pack_1
    );
  gcd_regmuxctrl_xload1 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_and000012_0,
      ADR1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000176_SW0_O,
      ADR2 => gcd_regmuxctrl_yload_and000025_487,
      ADR3 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0,
      O => gcd_sxload
    );
  gcd_regmuxctrl_yload_and000026 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_and000025_487,
      ADR1 => VCC,
      ADR2 => gcd_regmuxctrl_yload_and000012_0,
      ADR3 => VCC,
      O => gcd_regmuxctrl_xmuxsel_0_not0000
    );
  gcd_mx_y_0_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => gcd_regmuxctrl_xmuxsel_492,
      ADR1 => VCC,
      ADR2 => gcd_submax_z(0),
      ADR3 => SW_4_IBUF_461,
      O => gcd_mxbus(0)
    );
  gcd_registerX_q_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y36",
      INIT => '0'
    )
    port map (
      I => gcd_registerX_q_1_DYMUX_1262,
      CE => gcd_registerX_q_1_CEINV_1251,
      CLK => gcd_registerX_q_1_CLKINV_1252,
      SET => GND,
      RST => gcd_registerX_q_1_SRINV_1253,
      O => gcd_registerX_q(0)
    );
  gcd_mx_y_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => gcd_regmuxctrl_xmuxsel_492,
      ADR1 => SW_5_IBUF_462,
      ADR2 => gcd_submax_z(1),
      ADR3 => VCC,
      O => gcd_mxbus(1)
    );
  gcd_registerX_q_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y36",
      INIT => '0'
    )
    port map (
      I => gcd_registerX_q_1_DXMUX_1278,
      CE => gcd_registerX_q_1_CEINV_1251,
      CLK => gcd_registerX_q_1_CLKINV_1252,
      SET => GND,
      RST => gcd_registerX_q_1_SRINV_1253,
      O => gcd_registerX_q(1)
    );
  gcd_mx_y_2_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => gcd_submax_z(2),
      ADR1 => VCC,
      ADR2 => SW_6_IBUF_463,
      ADR3 => gcd_regmuxctrl_xmuxsel_492,
      O => gcd_mxbus(2)
    );
  gcd_registerX_q_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => gcd_registerX_q_3_DYMUX_1308,
      CE => gcd_registerX_q_3_CEINV_1297,
      CLK => gcd_registerX_q_3_CLKINV_1298,
      SET => GND,
      RST => gcd_registerX_q_3_SRINV_1299,
      O => gcd_registerX_q(2)
    );
  gcd_mx_y_3_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gcd_regmuxctrl_xmuxsel_492,
      ADR2 => SW_7_IBUF_465,
      ADR3 => gcd_submax_z(3),
      O => gcd_mxbus(3)
    );
  gcd_registerX_q_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => gcd_registerX_q_3_DXMUX_1324,
      CE => gcd_registerX_q_3_CEINV_1297,
      CLK => gcd_registerX_q_3_CLKINV_1298,
      SET => GND,
      RST => gcd_registerX_q_3_SRINV_1299,
      O => gcd_registerX_q(3)
    );
  gcd_submax_Msub_z_mux0001_xor_0_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => gcd_registerX_q(0),
      ADR3 => gcd_registerY_q(0),
      O => gcd_submax_z_mux0001(0)
    );
  gcd_submax_z_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y42",
      INIT => '0'
    )
    port map (
      I => gcd_submax_z_0_DYMUX_1353,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_submax_z_0_CLK,
      SET => gcd_submax_z_0_FFY_SET,
      RST => gcd_submax_z_0_FFY_RSTAND_1360,
      O => gcd_submax_z(0)
    );
  gcd_submax_z_0_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_0_and0001,
      O => gcd_submax_z_0_FFY_SET
    );
  gcd_submax_z_0_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_0_and0000,
      O => gcd_submax_z_0_FFY_RSTAND_1360
    );
  gcd_submax_Msub_z_mux0001_lut_0_1 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => gcd_registerX_q(0),
      ADR3 => gcd_registerY_q(0),
      O => gcd_submax_Msub_z_mux0001_lut(0)
    );
  gcd_my_y_0_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => gcd_regmuxctrl_ymuxsel_501,
      ADR1 => VCC,
      ADR2 => SW_0_IBUF_471,
      ADR3 => gcd_submax_z(0),
      O => gcd_mybus(0)
    );
  gcd_registerY_q_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y42",
      INIT => '0'
    )
    port map (
      I => gcd_registerY_q_1_DYMUX_1394,
      CE => gcd_registerY_q_1_CEINV_1383,
      CLK => gcd_registerY_q_1_CLKINV_1384,
      SET => GND,
      RST => gcd_registerY_q_1_SRINV_1385,
      O => gcd_registerY_q(0)
    );
  gcd_my_y_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => gcd_regmuxctrl_ymuxsel_501,
      ADR1 => SW_1_IBUF_458,
      ADR2 => gcd_submax_z(1),
      ADR3 => VCC,
      O => gcd_mybus(1)
    );
  gcd_registerY_q_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y42",
      INIT => '0'
    )
    port map (
      I => gcd_registerY_q_1_DXMUX_1410,
      CE => gcd_registerY_q_1_CEINV_1383,
      CLK => gcd_registerY_q_1_CLKINV_1384,
      SET => GND,
      RST => gcd_registerY_q_1_SRINV_1385,
      O => gcd_registerY_q(1)
    );
  gcd_submax_Msub_z_mux0001_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => gcd_registerY_q(1),
      ADR1 => gcd_submax_Msub_z_mux0001_cy_0_0,
      ADR2 => gcd_registerX_q(1),
      ADR3 => VCC,
      O => gcd_submax_z_mux0001_1_pack_2
    );
  gcd_submax_z_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y43",
      INIT => '0'
    )
    port map (
      I => gcd_submax_z_1_DYMUX_1442,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_submax_z_1_CLK,
      SET => gcd_submax_z_1_FFY_SET,
      RST => gcd_submax_z_1_FFY_RSTAND_1449,
      O => gcd_submax_z(1)
    );
  gcd_submax_z_1_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_1_and0001_pack_1,
      O => gcd_submax_z_1_FFY_SET
    );
  gcd_submax_z_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_1_and0000,
      O => gcd_submax_z_1_FFY_RSTAND_1449
    );
  gcd_submax_z_1_and00011 : X_LUT4
    generic map(
      INIT => X"CA00",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => N8,
      ADR1 => N9,
      ADR2 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR3 => gcd_submax_z_mux0001(1),
      O => gcd_submax_z_1_and0001_pack_1
    );
  gcd_submax_Msub_z_mux0001_xor_2_11 : X_LUT4
    generic map(
      INIT => X"396C",
      LOC => "SLICE_X66Y36"
    )
    port map (
      ADR0 => gcd_submax_Msub_z_mux0001_lut_1_0,
      ADR1 => gcd_submax_Msub_z_mux0001_lut_2_0,
      ADR2 => gcd_submax_Msub_z_mux0001_cy_0_0,
      ADR3 => gcd_submax_z_mux0002_1_0,
      O => gcd_submax_z_mux0001_2_pack_2
    );
  gcd_submax_z_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X66Y36",
      INIT => '0'
    )
    port map (
      I => gcd_submax_z_2_DYMUX_1483,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_submax_z_2_CLK,
      SET => gcd_submax_z_2_FFY_SET,
      RST => gcd_submax_z_2_FFY_RSTAND_1490,
      O => gcd_submax_z(2)
    );
  gcd_submax_z_2_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_2_and0001_pack_1,
      O => gcd_submax_z_2_FFY_SET
    );
  gcd_submax_z_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_2_and0000,
      O => gcd_submax_z_2_FFY_RSTAND_1490
    );
  gcd_submax_z_2_and00011 : X_LUT4
    generic map(
      INIT => X"A088",
      LOC => "SLICE_X66Y36"
    )
    port map (
      ADR0 => gcd_submax_z_mux0001(2),
      ADR1 => N8,
      ADR2 => N9,
      ADR3 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      O => gcd_submax_z_2_and0001_pack_1
    );
  gcd_my_y_2_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => gcd_submax_z(2),
      ADR1 => VCC,
      ADR2 => gcd_regmuxctrl_ymuxsel_501,
      ADR3 => SW_2_IBUF_459,
      O => gcd_mybus(2)
    );
  gcd_registerY_q_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y36",
      INIT => '0'
    )
    port map (
      I => gcd_registerY_q_3_DYMUX_1522,
      CE => gcd_registerY_q_3_CEINV_1511,
      CLK => gcd_registerY_q_3_CLKINV_1512,
      SET => GND,
      RST => gcd_registerY_q_3_SRINV_1513,
      O => gcd_registerY_q(2)
    );
  gcd_my_y_3_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SW_3_IBUF_460,
      ADR2 => gcd_regmuxctrl_ymuxsel_501,
      ADR3 => gcd_submax_z(3),
      O => gcd_mybus(3)
    );
  gcd_registerY_q_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y36",
      INIT => '0'
    )
    port map (
      I => gcd_registerY_q_3_DXMUX_1538,
      CE => gcd_registerY_q_3_CEINV_1511,
      CLK => gcd_registerY_q_3_CLKINV_1512,
      SET => GND,
      RST => gcd_registerY_q_3_SRINV_1513,
      O => gcd_registerY_q(3)
    );
  gcd_submax_Msub_z_mux0001_xor_3_11 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gcd_registerX_q(3),
      ADR2 => N14_0,
      ADR3 => gcd_registerY_q(3),
      O => gcd_submax_z_mux0001_3_pack_2
    );
  gcd_submax_z_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X67Y36",
      INIT => '0'
    )
    port map (
      I => gcd_submax_z_3_DYMUX_1570,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_submax_z_3_CLK,
      SET => gcd_submax_z_3_FFY_SET,
      RST => gcd_submax_z_3_FFY_RSTAND_1577,
      O => gcd_submax_z(3)
    );
  gcd_submax_z_3_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_3_and0001_pack_1,
      O => gcd_submax_z_3_FFY_SET
    );
  gcd_submax_z_3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_submax_z_3_and0000,
      O => gcd_submax_z_3_FFY_RSTAND_1577
    );
  gcd_submax_z_3_and00011 : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR1 => N9,
      ADR2 => gcd_submax_z_mux0001(3),
      ADR3 => N8,
      O => gcd_submax_z_3_and0001_pack_1
    );
  gcd_submax_Msub_z_mux0001_cy_0_11 : X_LUT4
    generic map(
      INIT => X"DDBB",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_cmp_gt0000_0,
      ADR1 => gcd_registerY_q(0),
      ADR2 => VCC,
      ADR3 => gcd_registerX_q(0),
      O => gcd_submax_Msub_z_mux0001_cy(0)
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000133 : X_LUT4
    generic map(
      INIT => X"7150",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => gcd_registerY_q(1),
      ADR1 => gcd_registerY_q(0),
      ADR2 => gcd_registerX_q(1),
      ADR3 => gcd_registerX_q(0),
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000133_1608
    );
  gcd_submax_Msub_z_mux0001_lut_1_1 : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => gcd_registerY_q(1),
      ADR1 => VCC,
      ADR2 => gcd_registerX_q(1),
      ADR3 => VCC,
      O => gcd_submax_Msub_z_mux0001_lut(1)
    );
  gcd_submax_z_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => gcd_registerY_q(1),
      ADR1 => gcd_regmuxctrl_yload_cmp_gt0000_0,
      ADR2 => gcd_registerX_q(1),
      ADR3 => VCC,
      O => gcd_submax_z_mux0002(1)
    );
  gcd_submax_Msub_z_mux0001_lut_2_1 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => gcd_registerX_q(2),
      ADR1 => gcd_registerY_q(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gcd_submax_Msub_z_mux0001_lut(2)
    );
  gcd_regmuxctrl_yload_and000012 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => gcd_registerX_q(2),
      ADR1 => gcd_registerX_q(0),
      ADR2 => gcd_registerX_q(3),
      ADR3 => gcd_registerX_q(1),
      O => gcd_regmuxctrl_yload_and000012_1656
    );
  gcd_regmuxctrl_ymuxsel_not00021 : X_LUT4
    generic map(
      INIT => X"3033",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0,
      ADR2 => gcd_registerY_q(3),
      ADR3 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_ymuxsel_not0002
    );
  gcd_regmuxctrl_xmuxsel_cmp_gt0000176 : X_LUT4
    generic map(
      INIT => X"CFCC",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gcd_regmuxctrl_xmuxsel_cmp_gt0000161_0,
      ADR2 => gcd_registerY_q(3),
      ADR3 => gcd_registerX_q(3),
      O => gcd_regmuxctrl_xmuxsel_cmp_gt0000
    );
  gcd_submax_Msub_z_mux0001_cy_1_11 : X_LUT4
    generic map(
      INIT => X"E274",
      LOC => "SLICE_X66Y39"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_cmp_gt0000_0,
      ADR1 => gcd_registerX_q(1),
      ADR2 => gcd_submax_Msub_z_mux0001_cy_0_0,
      ADR3 => gcd_registerY_q(1),
      O => gcd_submax_Msub_z_mux0001_cy_1_pack_2
    );
  gcd_submax_Msub_z_mux0001_xor_3_11_SW0 : X_LUT4
    generic map(
      INIT => X"2E47",
      LOC => "SLICE_X66Y39"
    )
    port map (
      ADR0 => gcd_regmuxctrl_yload_cmp_gt0000_0,
      ADR1 => gcd_registerY_q(2),
      ADR2 => gcd_submax_Msub_z_mux0001_cy(1),
      ADR3 => gcd_registerX_q(2),
      O => N14
    );
  gcd_regmuxctrl_xmuxsel : X_LATCHE
    generic map(
      LOC => "SLICE_X67Y38",
      INIT => '0'
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_DXMUX_1717,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_regmuxctrl_xmuxsel_CLK,
      SET => gcd_regmuxctrl_xmuxsel_FFX_SET,
      RST => gcd_regmuxctrl_xmuxsel_FFX_RSTAND_1723,
      O => gcd_regmuxctrl_xmuxsel_492
    );
  gcd_regmuxctrl_xmuxsel_FFX_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_cmp_gt0000_0,
      O => gcd_regmuxctrl_xmuxsel_FFX_SET
    );
  gcd_regmuxctrl_xmuxsel_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_0_not0000_0,
      O => gcd_regmuxctrl_xmuxsel_FFX_RSTAND_1723
    );
  gcd_regmuxctrl_yload_cmp_gt0000161_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"0A8E",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => gcd_registerY_q(3),
      ADR1 => gcd_registerY_q(2),
      ADR2 => gcd_registerX_q(3),
      ADR3 => gcd_registerX_q(2),
      O => N8_pack_1
    );
  gcd_submax_z_0_and00011 : X_LUT4
    generic map(
      INIT => X"4540",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => gcd_submax_Msub_z_mux0001_lut_0_0,
      ADR1 => N9,
      ADR2 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR3 => N8,
      O => gcd_submax_z_0_and0001
    );
  gcd_regmuxctrl_yload_cmp_gt0000161_SW1_SW1 : X_LUT4
    generic map(
      INIT => X"F571",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => gcd_registerX_q(3),
      ADR1 => gcd_registerX_q(2),
      ADR2 => gcd_registerY_q(3),
      ADR3 => gcd_registerY_q(2),
      O => N9_pack_1
    );
  gcd_regmuxctrl_xmuxsel_not00011 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N8,
      ADR2 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR3 => N9,
      O => gcd_regmuxctrl_xmuxsel_not0001
    );
  cp_outp1 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X65Y63"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cp_delay1_521,
      ADR2 => cp_delay2_520,
      ADR3 => cp_delay3_519,
      O => sclk
    );
  gcd_submax_z_0_and00001 : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X64Y43"
    )
    port map (
      ADR0 => N9,
      ADR1 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR2 => gcd_submax_Msub_z_mux0001_lut_0_0,
      ADR3 => N8,
      O => gcd_submax_z_0_and0000
    );
  gcd_submax_z_1_and00001 : X_LUT4
    generic map(
      INIT => X"5140",
      LOC => "SLICE_X64Y43"
    )
    port map (
      ADR0 => gcd_submax_z_mux0001(1),
      ADR1 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      ADR2 => N9,
      ADR3 => N8,
      O => gcd_submax_z_1_and0000
    );
  cp_delay1 : X_FF
    generic map(
      LOC => "SLICE_X64Y62",
      INIT => '0'
    )
    port map (
      I => cp_delay2_DYMUX_1819,
      CE => VCC,
      CLK => cp_delay2_CLKINV_1816,
      SET => GND,
      RST => cp_delay2_SRINV_1817,
      O => cp_delay1_521
    );
  cp_delay2 : X_FF
    generic map(
      LOC => "SLICE_X64Y62",
      INIT => '0'
    )
    port map (
      I => cp_delay2_DXMUX_1827,
      CE => VCC,
      CLK => cp_delay2_CLKINV_1816,
      SET => GND,
      RST => cp_delay2_SRINV_1817,
      O => cp_delay2_520
    );
  cp_delay3 : X_FF
    generic map(
      LOC => "SLICE_X64Y63",
      INIT => '0'
    )
    port map (
      I => cp_delay3_DYMUX_1841,
      CE => VCC,
      CLK => cp_delay3_CLKINV_1838,
      SET => GND,
      RST => cp_delay3_FFY_RSTAND_1846,
      O => cp_delay3_519
    );
  cp_delay3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_431,
      O => cp_delay3_FFY_RSTAND_1846
    );
  gcd_submax_z_2_and00001 : X_LUT4
    generic map(
      INIT => X"5044",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => gcd_submax_z_mux0001(2),
      ADR1 => N8,
      ADR2 => N9,
      ADR3 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      O => gcd_submax_z_2_and0000
    );
  gcd_submax_z_3_and00001 : X_LUT4
    generic map(
      INIT => X"3022",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => N8,
      ADR1 => gcd_submax_z_mux0001(3),
      ADR2 => N9,
      ADR3 => gcd_regmuxctrl_yload_cmp_gt0000133_479,
      O => gcd_submax_z_3_and0000
    );
  gcd_regmuxctrl_ymuxsel : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y40",
      INIT => '0'
    )
    port map (
      I => gcd_regmuxctrl_ymuxsel_DYMUX_1879,
      GE => VCC,
      CLK => NlwInverterSignal_gcd_regmuxctrl_ymuxsel_CLK,
      SET => GND,
      RST => gcd_regmuxctrl_ymuxsel_FFY_RSTAND_1884,
      O => gcd_regmuxctrl_ymuxsel_501
    );
  gcd_regmuxctrl_ymuxsel_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_regmuxctrl_xmuxsel_0_not0000_0,
      O => gcd_regmuxctrl_ymuxsel_FFY_RSTAND_1884
    );
  cd_q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_0_G
    );
  cd_q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(2),
      ADR3 => VCC,
      O => cd_q_2_F
    );
  cd_q_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y55"
    )
    port map (
      ADR0 => cd_q(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_2_G
    );
  cd_q_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y56"
    )
    port map (
      ADR0 => cd_q(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_4_F
    );
  cd_q_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_4_G
    );
  cd_q_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(6),
      O => cd_q_6_F
    );
  cd_q_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(7),
      ADR3 => VCC,
      O => cd_q_6_G
    );
  cd_q_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y58"
    )
    port map (
      ADR0 => cd_q(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_8_F
    );
  cd_q_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_8_G
    );
  cd_q_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(10),
      O => cd_q_10_F
    );
  cd_q_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(11),
      ADR3 => VCC,
      O => cd_q_10_G
    );
  cd_q_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y60"
    )
    port map (
      ADR0 => cd_q(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_12_F
    );
  cd_q_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_12_G
    );
  cd_q_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(14),
      O => cd_q_14_F
    );
  cd_q_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(15),
      ADR3 => VCC,
      O => cd_q_14_G
    );
  cd_q_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_16_F
    );
  LD_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_registerX_q(0),
      O => LD_4_O
    );
  LD_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_registerX_q(1),
      O => LD_5_O
    );
  LD_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_registerX_q(2),
      O => LD_6_O
    );
  LD_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 555 ps
    )
    port map (
      I => gcd_registerX_q(3),
      O => LD_7_O
    );
  NlwBlock_EuclidsGCD_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_EuclidsGCD_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_gcd_submax_z_0_CLK : X_INV
    port map (
      I => gcd_submax_z_0_CLKINVNOT,
      O => NlwInverterSignal_gcd_submax_z_0_CLK
    );
  NlwInverterBlock_gcd_submax_z_1_CLK : X_INV
    port map (
      I => gcd_submax_z_1_CLKINVNOT,
      O => NlwInverterSignal_gcd_submax_z_1_CLK
    );
  NlwInverterBlock_gcd_submax_z_2_CLK : X_INV
    port map (
      I => gcd_submax_z_2_CLKINVNOT,
      O => NlwInverterSignal_gcd_submax_z_2_CLK
    );
  NlwInverterBlock_gcd_submax_z_3_CLK : X_INV
    port map (
      I => gcd_submax_z_3_CLKINVNOT,
      O => NlwInverterSignal_gcd_submax_z_3_CLK
    );
  NlwInverterBlock_gcd_regmuxctrl_xmuxsel_CLK : X_INV
    port map (
      I => gcd_regmuxctrl_xmuxsel_CLKINVNOT,
      O => NlwInverterSignal_gcd_regmuxctrl_xmuxsel_CLK
    );
  NlwInverterBlock_gcd_regmuxctrl_ymuxsel_CLK : X_INV
    port map (
      I => gcd_regmuxctrl_ymuxsel_CLKINVNOT,
      O => NlwInverterSignal_gcd_regmuxctrl_ymuxsel_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

