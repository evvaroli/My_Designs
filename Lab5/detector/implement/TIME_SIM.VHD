--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Mon Mar 10 21:55:19 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf detector_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true detector_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: detector_top.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of detector_top is
  signal mclK_BUFGP : STD_LOGIC; 
  signal btn_0_IBUF_699 : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_1_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_3_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_5_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_7_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_9_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_11_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_13_Q : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_15_Q : STD_LOGIC; 
  signal btn_1_IBUF_761 : STD_LOGIC; 
  signal btn_2_IBUF_763 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_770 : STD_LOGIC; 
  signal det_present_state_FSM_FFd1_779 : STD_LOGIC; 
  signal det_current_state_5_Q : STD_LOGIC; 
  signal det_current_state_0_Q : STD_LOGIC; 
  signal det_current_state_1_Q : STD_LOGIC; 
  signal det_current_state_2_Q : STD_LOGIC; 
  signal deb_to_det_0 : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_789 : STD_LOGIC; 
  signal det_present_state_cmp_eq0000 : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_791 : STD_LOGIC; 
  signal det_next_current_state_1_SW0_O : STD_LOGIC; 
  signal det_present_state_FSM_FFd3_793 : STD_LOGIC; 
  signal det_present_state_FSM_FFd9_794 : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_795 : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_796 : STD_LOGIC; 
  signal det_present_state_FSM_FFd5_797 : STD_LOGIC; 
  signal det_present_state_FSM_FFd7_798 : STD_LOGIC; 
  signal det_next_current_state_2_SW0_O : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_800 : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_801 : STD_LOGIC; 
  signal det_next_current_state_5_1_O : STD_LOGIC; 
  signal det_next_current_state_5_6_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal det_next_current_state_0_18_SW0_O : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_806 : STD_LOGIC; 
  signal det_next_current_state_5_30_O : STD_LOGIC; 
  signal det_next_current_state_5_35_0 : STD_LOGIC; 
  signal det_next_current_state_5_16_O : STD_LOGIC; 
  signal det_next_current_state_5_13_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal cd_q_0_DXMUX_868 : STD_LOGIC; 
  signal cd_q_0_XORF_866 : STD_LOGIC; 
  signal cd_q_0_LOGIC_ONE_865 : STD_LOGIC; 
  signal cd_q_0_CYINIT_864 : STD_LOGIC; 
  signal cd_q_0_CYSELF_855 : STD_LOGIC; 
  signal cd_q_0_BXINV_853 : STD_LOGIC; 
  signal cd_q_0_DYMUX_846 : STD_LOGIC; 
  signal cd_q_0_XORG_844 : STD_LOGIC; 
  signal cd_q_0_CYMUXG_843 : STD_LOGIC; 
  signal cd_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal cd_q_0_LOGIC_ZERO_841 : STD_LOGIC; 
  signal cd_q_0_CYSELG_832 : STD_LOGIC; 
  signal cd_q_0_G : STD_LOGIC; 
  signal cd_q_0_SRINV_830 : STD_LOGIC; 
  signal cd_q_0_CLKINV_829 : STD_LOGIC; 
  signal cd_q_2_FFY_RST : STD_LOGIC; 
  signal cd_q_2_DXMUX_924 : STD_LOGIC; 
  signal cd_q_2_XORF_922 : STD_LOGIC; 
  signal cd_q_2_CYINIT_921 : STD_LOGIC; 
  signal cd_q_2_F : STD_LOGIC; 
  signal cd_q_2_DYMUX_905 : STD_LOGIC; 
  signal cd_q_2_XORG_903 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal cd_q_2_CYSELF_901 : STD_LOGIC; 
  signal cd_q_2_CYMUXFAST_900 : STD_LOGIC; 
  signal cd_q_2_CYAND_899 : STD_LOGIC; 
  signal cd_q_2_FASTCARRY_898 : STD_LOGIC; 
  signal cd_q_2_CYMUXG2_897 : STD_LOGIC; 
  signal cd_q_2_CYMUXF2_896 : STD_LOGIC; 
  signal cd_q_2_LOGIC_ZERO_895 : STD_LOGIC; 
  signal cd_q_2_CYSELG_886 : STD_LOGIC; 
  signal cd_q_2_G : STD_LOGIC; 
  signal cd_q_2_SRINV_884 : STD_LOGIC; 
  signal cd_q_2_CLKINV_883 : STD_LOGIC; 
  signal cd_q_4_DXMUX_980 : STD_LOGIC; 
  signal cd_q_4_XORF_978 : STD_LOGIC; 
  signal cd_q_4_CYINIT_977 : STD_LOGIC; 
  signal cd_q_4_F : STD_LOGIC; 
  signal cd_q_4_DYMUX_961 : STD_LOGIC; 
  signal cd_q_4_XORG_959 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_Q : STD_LOGIC; 
  signal cd_q_4_CYSELF_957 : STD_LOGIC; 
  signal cd_q_4_CYMUXFAST_956 : STD_LOGIC; 
  signal cd_q_4_CYAND_955 : STD_LOGIC; 
  signal cd_q_4_FASTCARRY_954 : STD_LOGIC; 
  signal cd_q_4_CYMUXG2_953 : STD_LOGIC; 
  signal cd_q_4_CYMUXF2_952 : STD_LOGIC; 
  signal cd_q_4_LOGIC_ZERO_951 : STD_LOGIC; 
  signal cd_q_4_CYSELG_942 : STD_LOGIC; 
  signal cd_q_4_G : STD_LOGIC; 
  signal cd_q_4_SRINV_940 : STD_LOGIC; 
  signal cd_q_4_CLKINV_939 : STD_LOGIC; 
  signal cd_q_6_DXMUX_1036 : STD_LOGIC; 
  signal cd_q_6_XORF_1034 : STD_LOGIC; 
  signal cd_q_6_CYINIT_1033 : STD_LOGIC; 
  signal cd_q_6_F : STD_LOGIC; 
  signal cd_q_6_DYMUX_1017 : STD_LOGIC; 
  signal cd_q_6_XORG_1015 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_Q : STD_LOGIC; 
  signal cd_q_6_CYSELF_1013 : STD_LOGIC; 
  signal cd_q_6_CYMUXFAST_1012 : STD_LOGIC; 
  signal cd_q_6_CYAND_1011 : STD_LOGIC; 
  signal cd_q_6_FASTCARRY_1010 : STD_LOGIC; 
  signal cd_q_6_CYMUXG2_1009 : STD_LOGIC; 
  signal cd_q_6_CYMUXF2_1008 : STD_LOGIC; 
  signal cd_q_6_LOGIC_ZERO_1007 : STD_LOGIC; 
  signal cd_q_6_CYSELG_998 : STD_LOGIC; 
  signal cd_q_6_G : STD_LOGIC; 
  signal cd_q_6_SRINV_996 : STD_LOGIC; 
  signal cd_q_6_CLKINV_995 : STD_LOGIC; 
  signal cd_q_8_FFY_RST : STD_LOGIC; 
  signal cd_q_8_FFX_RST : STD_LOGIC; 
  signal cd_q_8_DXMUX_1092 : STD_LOGIC; 
  signal cd_q_8_XORF_1090 : STD_LOGIC; 
  signal cd_q_8_CYINIT_1089 : STD_LOGIC; 
  signal cd_q_8_F : STD_LOGIC; 
  signal cd_q_8_DYMUX_1073 : STD_LOGIC; 
  signal cd_q_8_XORG_1071 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_Q : STD_LOGIC; 
  signal cd_q_8_CYSELF_1069 : STD_LOGIC; 
  signal cd_q_8_CYMUXFAST_1068 : STD_LOGIC; 
  signal cd_q_8_CYAND_1067 : STD_LOGIC; 
  signal cd_q_8_FASTCARRY_1066 : STD_LOGIC; 
  signal cd_q_8_CYMUXG2_1065 : STD_LOGIC; 
  signal cd_q_8_CYMUXF2_1064 : STD_LOGIC; 
  signal cd_q_8_LOGIC_ZERO_1063 : STD_LOGIC; 
  signal cd_q_8_CYSELG_1054 : STD_LOGIC; 
  signal cd_q_8_G : STD_LOGIC; 
  signal cd_q_8_SRINV_1052 : STD_LOGIC; 
  signal cd_q_8_CLKINV_1051 : STD_LOGIC; 
  signal cd_q_10_DXMUX_1148 : STD_LOGIC; 
  signal cd_q_10_XORF_1146 : STD_LOGIC; 
  signal cd_q_10_CYINIT_1145 : STD_LOGIC; 
  signal cd_q_10_F : STD_LOGIC; 
  signal cd_q_10_DYMUX_1129 : STD_LOGIC; 
  signal cd_q_10_XORG_1127 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_Q : STD_LOGIC; 
  signal cd_q_10_CYSELF_1125 : STD_LOGIC; 
  signal cd_q_10_CYMUXFAST_1124 : STD_LOGIC; 
  signal cd_q_10_CYAND_1123 : STD_LOGIC; 
  signal cd_q_10_FASTCARRY_1122 : STD_LOGIC; 
  signal cd_q_10_CYMUXG2_1121 : STD_LOGIC; 
  signal cd_q_10_CYMUXF2_1120 : STD_LOGIC; 
  signal cd_q_10_LOGIC_ZERO_1119 : STD_LOGIC; 
  signal cd_q_10_CYSELG_1110 : STD_LOGIC; 
  signal cd_q_10_G : STD_LOGIC; 
  signal cd_q_10_SRINV_1108 : STD_LOGIC; 
  signal cd_q_10_CLKINV_1107 : STD_LOGIC; 
  signal cd_q_12_DXMUX_1204 : STD_LOGIC; 
  signal cd_q_12_XORF_1202 : STD_LOGIC; 
  signal cd_q_12_CYINIT_1201 : STD_LOGIC; 
  signal cd_q_12_F : STD_LOGIC; 
  signal cd_q_12_DYMUX_1185 : STD_LOGIC; 
  signal cd_q_12_XORG_1183 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_Q : STD_LOGIC; 
  signal cd_q_12_CYSELF_1181 : STD_LOGIC; 
  signal cd_q_12_CYMUXFAST_1180 : STD_LOGIC; 
  signal cd_q_12_CYAND_1179 : STD_LOGIC; 
  signal cd_q_12_FASTCARRY_1178 : STD_LOGIC; 
  signal cd_q_12_CYMUXG2_1177 : STD_LOGIC; 
  signal cd_q_12_CYMUXF2_1176 : STD_LOGIC; 
  signal cd_q_12_LOGIC_ZERO_1175 : STD_LOGIC; 
  signal cd_q_12_CYSELG_1166 : STD_LOGIC; 
  signal cd_q_12_G : STD_LOGIC; 
  signal cd_q_12_SRINV_1164 : STD_LOGIC; 
  signal cd_q_12_CLKINV_1163 : STD_LOGIC; 
  signal cd_q_14_DXMUX_1260 : STD_LOGIC; 
  signal cd_q_14_XORF_1258 : STD_LOGIC; 
  signal cd_q_14_CYINIT_1257 : STD_LOGIC; 
  signal cd_q_14_F : STD_LOGIC; 
  signal cd_q_14_DYMUX_1241 : STD_LOGIC; 
  signal cd_q_14_XORG_1239 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_Q : STD_LOGIC; 
  signal cd_q_14_CYSELF_1237 : STD_LOGIC; 
  signal cd_q_14_CYMUXFAST_1236 : STD_LOGIC; 
  signal cd_q_14_CYAND_1235 : STD_LOGIC; 
  signal cd_q_14_FASTCARRY_1234 : STD_LOGIC; 
  signal cd_q_14_CYMUXG2_1233 : STD_LOGIC; 
  signal cd_q_14_CYMUXF2_1232 : STD_LOGIC; 
  signal cd_q_14_LOGIC_ZERO_1231 : STD_LOGIC; 
  signal cd_q_14_CYSELG_1222 : STD_LOGIC; 
  signal cd_q_14_G : STD_LOGIC; 
  signal cd_q_14_SRINV_1220 : STD_LOGIC; 
  signal cd_q_14_CLKINV_1219 : STD_LOGIC; 
  signal cd_q_16_FFX_RST : STD_LOGIC; 
  signal cd_q_16_DXMUX_1309 : STD_LOGIC; 
  signal cd_q_16_XORF_1307 : STD_LOGIC; 
  signal cd_q_16_LOGIC_ZERO_1306 : STD_LOGIC; 
  signal cd_q_16_CYINIT_1305 : STD_LOGIC; 
  signal cd_q_16_CYSELF_1296 : STD_LOGIC; 
  signal cd_q_16_F : STD_LOGIC; 
  signal cd_q_16_DYMUX_1288 : STD_LOGIC; 
  signal cd_q_16_XORG_1286 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_Q : STD_LOGIC; 
  signal cd_q_17_rt_1283 : STD_LOGIC; 
  signal cd_q_16_SRINV_1275 : STD_LOGIC; 
  signal cd_q_16_CLKINV_1274 : STD_LOGIC; 
  signal x7seg_clkdiv_0_DXMUX_1363 : STD_LOGIC; 
  signal x7seg_clkdiv_0_XORF_1361 : STD_LOGIC; 
  signal x7seg_clkdiv_0_LOGIC_ONE_1360 : STD_LOGIC; 
  signal x7seg_clkdiv_0_CYINIT_1359 : STD_LOGIC; 
  signal x7seg_clkdiv_0_CYSELF_1350 : STD_LOGIC; 
  signal x7seg_clkdiv_0_BXINV_1348 : STD_LOGIC; 
  signal x7seg_clkdiv_0_DYMUX_1341 : STD_LOGIC; 
  signal x7seg_clkdiv_0_XORG_1339 : STD_LOGIC; 
  signal x7seg_clkdiv_0_CYMUXG_1338 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_0_Q : STD_LOGIC; 
  signal x7seg_clkdiv_0_LOGIC_ZERO_1336 : STD_LOGIC; 
  signal x7seg_clkdiv_0_CYSELG_1327 : STD_LOGIC; 
  signal x7seg_clkdiv_0_G : STD_LOGIC; 
  signal x7seg_clkdiv_0_SRINV_1325 : STD_LOGIC; 
  signal x7seg_clkdiv_0_CLKINV_1324 : STD_LOGIC; 
  signal x7seg_clkdiv_2_DXMUX_1419 : STD_LOGIC; 
  signal x7seg_clkdiv_2_XORF_1417 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYINIT_1416 : STD_LOGIC; 
  signal x7seg_clkdiv_2_F : STD_LOGIC; 
  signal x7seg_clkdiv_2_DYMUX_1400 : STD_LOGIC; 
  signal x7seg_clkdiv_2_XORG_1398 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_2_Q : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYSELF_1396 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYMUXFAST_1395 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYAND_1394 : STD_LOGIC; 
  signal x7seg_clkdiv_2_FASTCARRY_1393 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYMUXG2_1392 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYMUXF2_1391 : STD_LOGIC; 
  signal x7seg_clkdiv_2_LOGIC_ZERO_1390 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CYSELG_1381 : STD_LOGIC; 
  signal x7seg_clkdiv_2_G : STD_LOGIC; 
  signal x7seg_clkdiv_2_SRINV_1379 : STD_LOGIC; 
  signal x7seg_clkdiv_2_CLKINV_1378 : STD_LOGIC; 
  signal x7seg_clkdiv_4_DXMUX_1475 : STD_LOGIC; 
  signal x7seg_clkdiv_4_XORF_1473 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYINIT_1472 : STD_LOGIC; 
  signal x7seg_clkdiv_4_F : STD_LOGIC; 
  signal x7seg_clkdiv_4_DYMUX_1456 : STD_LOGIC; 
  signal x7seg_clkdiv_4_XORG_1454 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_4_Q : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYSELF_1452 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYMUXFAST_1451 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYAND_1450 : STD_LOGIC; 
  signal x7seg_clkdiv_4_FASTCARRY_1449 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYMUXG2_1448 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYMUXF2_1447 : STD_LOGIC; 
  signal x7seg_clkdiv_4_LOGIC_ZERO_1446 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CYSELG_1437 : STD_LOGIC; 
  signal x7seg_clkdiv_4_G : STD_LOGIC; 
  signal x7seg_clkdiv_4_SRINV_1435 : STD_LOGIC; 
  signal x7seg_clkdiv_4_CLKINV_1434 : STD_LOGIC; 
  signal x7seg_clkdiv_6_FFY_RST : STD_LOGIC; 
  signal x7seg_clkdiv_6_FFX_RST : STD_LOGIC; 
  signal x7seg_clkdiv_6_DXMUX_1531 : STD_LOGIC; 
  signal x7seg_clkdiv_6_XORF_1529 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYINIT_1528 : STD_LOGIC; 
  signal x7seg_clkdiv_6_F : STD_LOGIC; 
  signal x7seg_clkdiv_6_DYMUX_1512 : STD_LOGIC; 
  signal x7seg_clkdiv_6_XORG_1510 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_6_Q : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYSELF_1508 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYMUXFAST_1507 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYAND_1506 : STD_LOGIC; 
  signal x7seg_clkdiv_6_FASTCARRY_1505 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYMUXG2_1504 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYMUXF2_1503 : STD_LOGIC; 
  signal x7seg_clkdiv_6_LOGIC_ZERO_1502 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CYSELG_1493 : STD_LOGIC; 
  signal x7seg_clkdiv_6_G : STD_LOGIC; 
  signal x7seg_clkdiv_6_SRINV_1491 : STD_LOGIC; 
  signal x7seg_clkdiv_6_CLKINV_1490 : STD_LOGIC; 
  signal x7seg_clkdiv_8_DXMUX_1587 : STD_LOGIC; 
  signal x7seg_clkdiv_8_XORF_1585 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYINIT_1584 : STD_LOGIC; 
  signal x7seg_clkdiv_8_F : STD_LOGIC; 
  signal x7seg_clkdiv_8_DYMUX_1568 : STD_LOGIC; 
  signal x7seg_clkdiv_8_XORG_1566 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_8_Q : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYSELF_1564 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYMUXFAST_1563 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYAND_1562 : STD_LOGIC; 
  signal x7seg_clkdiv_8_FASTCARRY_1561 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYMUXG2_1560 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYMUXF2_1559 : STD_LOGIC; 
  signal x7seg_clkdiv_8_LOGIC_ZERO_1558 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CYSELG_1549 : STD_LOGIC; 
  signal x7seg_clkdiv_8_G : STD_LOGIC; 
  signal x7seg_clkdiv_8_SRINV_1547 : STD_LOGIC; 
  signal x7seg_clkdiv_8_CLKINV_1546 : STD_LOGIC; 
  signal x7seg_clkdiv_10_DXMUX_1643 : STD_LOGIC; 
  signal x7seg_clkdiv_10_XORF_1641 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYINIT_1640 : STD_LOGIC; 
  signal x7seg_clkdiv_10_F : STD_LOGIC; 
  signal x7seg_clkdiv_10_DYMUX_1624 : STD_LOGIC; 
  signal x7seg_clkdiv_10_XORG_1622 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_10_Q : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYSELF_1620 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYMUXFAST_1619 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYAND_1618 : STD_LOGIC; 
  signal x7seg_clkdiv_10_FASTCARRY_1617 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYMUXG2_1616 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYMUXF2_1615 : STD_LOGIC; 
  signal x7seg_clkdiv_10_LOGIC_ZERO_1614 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CYSELG_1605 : STD_LOGIC; 
  signal x7seg_clkdiv_10_G : STD_LOGIC; 
  signal x7seg_clkdiv_10_SRINV_1603 : STD_LOGIC; 
  signal x7seg_clkdiv_10_CLKINV_1602 : STD_LOGIC; 
  signal x7seg_clkdiv_12_FFX_RST : STD_LOGIC; 
  signal x7seg_clkdiv_12_DXMUX_1699 : STD_LOGIC; 
  signal x7seg_clkdiv_12_XORF_1697 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYINIT_1696 : STD_LOGIC; 
  signal x7seg_clkdiv_12_F : STD_LOGIC; 
  signal x7seg_clkdiv_12_DYMUX_1680 : STD_LOGIC; 
  signal x7seg_clkdiv_12_XORG_1678 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_12_Q : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYSELF_1676 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYMUXFAST_1675 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYAND_1674 : STD_LOGIC; 
  signal x7seg_clkdiv_12_FASTCARRY_1673 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYMUXG2_1672 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYMUXF2_1671 : STD_LOGIC; 
  signal x7seg_clkdiv_12_LOGIC_ZERO_1670 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CYSELG_1661 : STD_LOGIC; 
  signal x7seg_clkdiv_12_G : STD_LOGIC; 
  signal x7seg_clkdiv_12_SRINV_1659 : STD_LOGIC; 
  signal x7seg_clkdiv_12_CLKINV_1658 : STD_LOGIC; 
  signal x7seg_clkdiv_14_FFY_RST : STD_LOGIC; 
  signal x7seg_clkdiv_14_DXMUX_1755 : STD_LOGIC; 
  signal x7seg_clkdiv_14_XORF_1753 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYINIT_1752 : STD_LOGIC; 
  signal x7seg_clkdiv_14_F : STD_LOGIC; 
  signal x7seg_clkdiv_14_DYMUX_1736 : STD_LOGIC; 
  signal x7seg_clkdiv_14_XORG_1734 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_14_Q : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYSELF_1732 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYMUXFAST_1731 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYAND_1730 : STD_LOGIC; 
  signal x7seg_clkdiv_14_FASTCARRY_1729 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYMUXG2_1728 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYMUXF2_1727 : STD_LOGIC; 
  signal x7seg_clkdiv_14_LOGIC_ZERO_1726 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CYSELG_1717 : STD_LOGIC; 
  signal x7seg_clkdiv_14_G : STD_LOGIC; 
  signal x7seg_clkdiv_14_SRINV_1715 : STD_LOGIC; 
  signal x7seg_clkdiv_14_CLKINV_1714 : STD_LOGIC; 
  signal x7seg_clkdiv_16_DXMUX_1811 : STD_LOGIC; 
  signal x7seg_clkdiv_16_XORF_1809 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYINIT_1808 : STD_LOGIC; 
  signal x7seg_clkdiv_16_F : STD_LOGIC; 
  signal x7seg_clkdiv_16_DYMUX_1792 : STD_LOGIC; 
  signal x7seg_clkdiv_16_XORG_1790 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_16_Q : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYSELF_1788 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYMUXFAST_1787 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYAND_1786 : STD_LOGIC; 
  signal x7seg_clkdiv_16_FASTCARRY_1785 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYMUXG2_1784 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYMUXF2_1783 : STD_LOGIC; 
  signal x7seg_clkdiv_16_LOGIC_ZERO_1782 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CYSELG_1773 : STD_LOGIC; 
  signal x7seg_clkdiv_16_G : STD_LOGIC; 
  signal x7seg_clkdiv_16_SRINV_1771 : STD_LOGIC; 
  signal x7seg_clkdiv_16_CLKINV_1770 : STD_LOGIC; 
  signal x7seg_clkdiv_18_DXMUX_1860 : STD_LOGIC; 
  signal x7seg_clkdiv_18_XORF_1858 : STD_LOGIC; 
  signal x7seg_clkdiv_18_LOGIC_ZERO_1857 : STD_LOGIC; 
  signal x7seg_clkdiv_18_CYINIT_1856 : STD_LOGIC; 
  signal x7seg_clkdiv_18_CYSELF_1847 : STD_LOGIC; 
  signal x7seg_clkdiv_18_F : STD_LOGIC; 
  signal x7seg_clkdiv_18_DYMUX_1839 : STD_LOGIC; 
  signal x7seg_clkdiv_18_XORG_1837 : STD_LOGIC; 
  signal x7seg_Mcount_clkdiv_cy_18_Q : STD_LOGIC; 
  signal x7seg_clkdiv_19_rt_1834 : STD_LOGIC; 
  signal x7seg_clkdiv_18_SRINV_1826 : STD_LOGIC; 
  signal x7seg_clkdiv_18_CLKINV_1825 : STD_LOGIC; 
  signal an_0_O : STD_LOGIC; 
  signal an_1_O : STD_LOGIC; 
  signal an_2_O : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal an_3_O : STD_LOGIC; 
  signal a_to_g_0_O : STD_LOGIC; 
  signal dp_O : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal a_to_g_1_O : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal a_to_g_2_O : STD_LOGIC; 
  signal a_to_g_3_O : STD_LOGIC; 
  signal a_to_g_4_O : STD_LOGIC; 
  signal a_to_g_5_O : STD_LOGIC; 
  signal a_to_g_6_O : STD_LOGIC; 
  signal mclK_INBUF : STD_LOGIC; 
  signal sw_0_INBUF : STD_LOGIC; 
  signal sw_1_INBUF : STD_LOGIC; 
  signal sw_2_INBUF : STD_LOGIC; 
  signal sw_3_INBUF : STD_LOGIC; 
  signal sw_3_IFF_IFF1_RST : STD_LOGIC; 
  signal sw_3_IFF_ICLK1INV_2084 : STD_LOGIC; 
  signal sw_3_IFF_ICEINV_2082 : STD_LOGIC; 
  signal sw_3_IFF_IDDRIN_MUX_2080 : STD_LOGIC; 
  signal sw_4_INBUF : STD_LOGIC; 
  signal sw_4_IFF_IFF1_RST : STD_LOGIC; 
  signal sw_4_IFF_ICLK1INV_2111 : STD_LOGIC; 
  signal sw_4_IFF_ICEINV_2109 : STD_LOGIC; 
  signal sw_4_IFF_IDDRIN_MUX_2107 : STD_LOGIC; 
  signal sw_5_INBUF : STD_LOGIC; 
  signal sw_6_INBUF : STD_LOGIC; 
  signal sw_7_INBUF : STD_LOGIC; 
  signal ld_0_O : STD_LOGIC; 
  signal ld_1_O : STD_LOGIC; 
  signal mclK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal x7seg_digit_3_F5MUX_2247 : STD_LOGIC; 
  signal x7seg_Mmux_digit_33_2245 : STD_LOGIC; 
  signal x7seg_digit_3_BXINV_2238 : STD_LOGIC; 
  signal x7seg_Mmux_digit_43_2236 : STD_LOGIC; 
  signal x7seg_digit_0_F5MUX_2272 : STD_LOGIC; 
  signal x7seg_Mmux_digit_3_2270 : STD_LOGIC; 
  signal x7seg_digit_0_BXINV_2263 : STD_LOGIC; 
  signal x7seg_Mmux_digit_4_2261 : STD_LOGIC; 
  signal x7seg_digit_1_F5MUX_2297 : STD_LOGIC; 
  signal x7seg_Mmux_digit_31_2295 : STD_LOGIC; 
  signal x7seg_digit_1_BXINV_2289 : STD_LOGIC; 
  signal x7seg_Mmux_digit_41_2287 : STD_LOGIC; 
  signal x7seg_digit_2_F5MUX_2322 : STD_LOGIC; 
  signal x7seg_Mmux_digit_32_2320 : STD_LOGIC; 
  signal x7seg_digit_2_BXINV_2314 : STD_LOGIC; 
  signal x7seg_Mmux_digit_42_2312 : STD_LOGIC; 
  signal det_current_state_1_DXMUX_2352 : STD_LOGIC; 
  signal det_next_current_state_1_Q_2349 : STD_LOGIC; 
  signal det_next_current_state_1_SW0_O_pack_1 : STD_LOGIC; 
  signal det_current_state_1_CLKINV_2336 : STD_LOGIC; 
  signal det_current_state_2_DXMUX_2387 : STD_LOGIC; 
  signal det_next_current_state_2_Q_2384 : STD_LOGIC; 
  signal det_next_current_state_2_SW0_O_pack_1 : STD_LOGIC; 
  signal det_current_state_2_CLKINV_2370 : STD_LOGIC; 
  signal det_next_current_state_5_6_2415 : STD_LOGIC; 
  signal det_next_current_state_5_1_O_pack_1 : STD_LOGIC; 
  signal det_current_state_0_DXMUX_2446 : STD_LOGIC; 
  signal det_next_current_state_0_Q : STD_LOGIC; 
  signal det_next_current_state_0_18_SW0_O_pack_1 : STD_LOGIC; 
  signal det_current_state_0_CLKINV_2430 : STD_LOGIC; 
  signal det_next_current_state_5_35_2474 : STD_LOGIC; 
  signal det_next_current_state_5_30_O_pack_1 : STD_LOGIC; 
  signal det_current_state_5_DXMUX_2505 : STD_LOGIC; 
  signal det_next_current_state_5_Q : STD_LOGIC; 
  signal det_next_current_state_5_16_O_pack_1 : STD_LOGIC; 
  signal det_current_state_5_CLKINV_2489 : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_DYMUX_2528 : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_CLKINV_2519 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_FFX_RST : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_DXMUX_2570 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_DYMUX_2555 : STD_LOGIC; 
  signal det_present_state_FSM_FFd1_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_SRINV_2547 : STD_LOGIC; 
  signal det_present_state_FSM_FFd2_CLKINV_2546 : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_FFY_RST : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_FFX_RST : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_DXMUX_2612 : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_DYMUX_2597 : STD_LOGIC; 
  signal det_present_state_FSM_FFd3_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_SRINV_2589 : STD_LOGIC; 
  signal det_present_state_FSM_FFd4_CLKINV_2588 : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_DXMUX_2654 : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_DYMUX_2639 : STD_LOGIC; 
  signal det_present_state_FSM_FFd5_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_SRINV_2631 : STD_LOGIC; 
  signal det_present_state_FSM_FFd6_CLKINV_2630 : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_DXMUX_2696 : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_DYMUX_2681 : STD_LOGIC; 
  signal det_present_state_FSM_FFd7_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_SRINV_2673 : STD_LOGIC; 
  signal det_present_state_FSM_FFd8_CLKINV_2672 : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_DXMUX_2738 : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_DYMUX_2723 : STD_LOGIC; 
  signal det_present_state_FSM_FFd9_In : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_SRINV_2715 : STD_LOGIC; 
  signal det_present_state_FSM_FFd10_CLKINV_2714 : STD_LOGIC; 
  signal db_delay2_1_DXMUX_2762 : STD_LOGIC; 
  signal db_delay2_1_DYMUX_2754 : STD_LOGIC; 
  signal db_delay2_1_SRINV_2752 : STD_LOGIC; 
  signal db_delay2_1_CLKINV_2751 : STD_LOGIC; 
  signal det_next_current_state_5_13_2790 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal db_delay3_1_DXMUX_2810 : STD_LOGIC; 
  signal db_delay3_1_DYMUX_2802 : STD_LOGIC; 
  signal db_delay3_1_SRINV_2800 : STD_LOGIC; 
  signal db_delay3_1_CLKINV_2799 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal an_1_OBUF_2850 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal a_to_g_6_OBUF_2874 : STD_LOGIC; 
  signal a_to_g_1_OBUF_2867 : STD_LOGIC; 
  signal a_to_g_3_OBUF_2898 : STD_LOGIC; 
  signal a_to_g_0_OBUF_2891 : STD_LOGIC; 
  signal a_to_g_5_OBUF_2922 : STD_LOGIC; 
  signal a_to_g_2_OBUF_2915 : STD_LOGIC; 
  signal a_to_g_4_OBUF_2934 : STD_LOGIC; 
  signal an_3_OBUF_2958 : STD_LOGIC; 
  signal an_0_OBUF_2950 : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_DYMUX_2968 : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_BYINV_2967 : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_CLKINV_2965 : STD_LOGIC; 
  signal an_2_OBUF_2995 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal deb_to_det_3019 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_DXMUX_3050 : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_In : STD_LOGIC; 
  signal det_present_state_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_CLKINV_3032 : STD_LOGIC; 
  signal db_delay1_1_DXMUX_3074 : STD_LOGIC; 
  signal db_delay1_1_DYMUX_3066 : STD_LOGIC; 
  signal db_delay1_1_SRINV_3064 : STD_LOGIC; 
  signal db_delay1_1_CLKINV_3063 : STD_LOGIC; 
  signal sw_0_IFF_ICLK1INV_2003 : STD_LOGIC; 
  signal sw_0_IFF_ICEINV_2001 : STD_LOGIC; 
  signal sw_0_IFF_IDDRIN_MUX_1999 : STD_LOGIC; 
  signal sw_0_IFF_IFF1_RSTAND_2008 : STD_LOGIC; 
  signal sw_1_IFF_ICLK1INV_2030 : STD_LOGIC; 
  signal sw_1_IFF_ICEINV_2028 : STD_LOGIC; 
  signal sw_1_IFF_IDDRIN_MUX_2026 : STD_LOGIC; 
  signal sw_1_IFF_IFF1_RSTAND_2035 : STD_LOGIC; 
  signal sw_2_IFF_ICLK1INV_2057 : STD_LOGIC; 
  signal sw_2_IFF_ICEINV_2055 : STD_LOGIC; 
  signal sw_2_IFF_IDDRIN_MUX_2053 : STD_LOGIC; 
  signal sw_2_IFF_IFF1_RSTAND_2062 : STD_LOGIC; 
  signal sw_5_IFF_ICLK1INV_2138 : STD_LOGIC; 
  signal sw_5_IFF_ICEINV_2136 : STD_LOGIC; 
  signal sw_5_IFF_IDDRIN_MUX_2134 : STD_LOGIC; 
  signal sw_5_IFF_IFF1_RSTAND_2143 : STD_LOGIC; 
  signal sw_6_IFF_ICLK1INV_2165 : STD_LOGIC; 
  signal sw_6_IFF_ICEINV_2163 : STD_LOGIC; 
  signal sw_6_IFF_IDDRIN_MUX_2161 : STD_LOGIC; 
  signal sw_6_IFF_IFF1_RSTAND_2170 : STD_LOGIC; 
  signal sw_7_IFF_ICLK1INV_2192 : STD_LOGIC; 
  signal sw_7_IFF_ICEINV_2190 : STD_LOGIC; 
  signal sw_7_IFF_IDDRIN_MUX_2188 : STD_LOGIC; 
  signal sw_7_IFF_IFF1_RSTAND_2197 : STD_LOGIC; 
  signal det_current_state_1_FFX_RSTAND_2357 : STD_LOGIC; 
  signal det_current_state_2_FFX_RSTAND_2392 : STD_LOGIC; 
  signal det_current_state_0_FFX_RSTAND_2451 : STD_LOGIC; 
  signal det_current_state_5_FFX_RSTAND_2510 : STD_LOGIC; 
  signal det_present_state_FSM_FFd11_FFY_RSTAND_2533 : STD_LOGIC; 
  signal det_present_state_FSM_FFd13_FFY_SET : STD_LOGIC; 
  signal det_present_state_FSM_FFd12_FFX_RSTAND_3055 : STD_LOGIC; 
  signal dp_OUTPUT_OFF_O1INV_1920 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal x7seg_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal r_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal x7seg_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal db_delay1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal db_delay2 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal db_delay3 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7seg_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  cd_q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      O => cd_q_0_LOGIC_ZERO_841
    );
  cd_q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      O => cd_q_0_LOGIC_ONE_865
    );
  cd_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORF_866,
      O => cd_q_0_DXMUX_868
    );
  cd_q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => cd_q_0_CYINIT_864,
      I1 => cd_Mcount_q_lut(0),
      O => cd_q_0_XORF_866
    );
  cd_q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => cd_q_0_LOGIC_ONE_865,
      IB => cd_q_0_CYINIT_864,
      SEL => cd_q_0_CYSELF_855,
      O => cd_Mcount_q_cy_0_Q
    );
  cd_q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_BXINV_853,
      O => cd_q_0_CYINIT_864
    );
  cd_q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_lut(0),
      O => cd_q_0_CYSELF_855
    );
  cd_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => cd_q_0_BXINV_853
    );
  cd_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORG_844,
      O => cd_q_0_DYMUX_846
    );
  cd_q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => cd_Mcount_q_cy_0_Q,
      I1 => cd_q_0_G,
      O => cd_q_0_XORG_844
    );
  cd_q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_CYMUXG_843,
      O => cd_Mcount_q_cy_1_Q
    );
  cd_q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => cd_q_0_LOGIC_ZERO_841,
      IB => cd_Mcount_q_cy_0_Q,
      SEL => cd_q_0_CYSELG_832,
      O => cd_q_0_CYMUXG_843
    );
  cd_q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_G,
      O => cd_q_0_CYSELG_832
    );
  cd_q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_0_SRINV_830
    );
  cd_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_0_CLKINV_829
    );
  cd_q_2_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_SRINV_884,
      O => cd_q_2_FFY_RST
    );
  cd_q_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DYMUX_905,
      CE => VCC,
      CLK => cd_q_2_CLKINV_883,
      SET => GND,
      RST => cd_q_2_FFY_RST,
      O => cd_q(3)
    );
  cd_q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      O => cd_q_2_LOGIC_ZERO_895
    );
  cd_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORF_922,
      O => cd_q_2_DXMUX_924
    );
  cd_q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => cd_q_2_CYINIT_921,
      I1 => cd_q_2_F,
      O => cd_q_2_XORF_922
    );
  cd_q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_895,
      IB => cd_q_2_CYINIT_921,
      SEL => cd_q_2_CYSELF_901,
      O => cd_Mcount_q_cy_2_Q
    );
  cd_q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_895,
      IB => cd_q_2_LOGIC_ZERO_895,
      SEL => cd_q_2_CYSELF_901,
      O => cd_q_2_CYMUXF2_896
    );
  cd_q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_CYINIT_921
    );
  cd_q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_F,
      O => cd_q_2_CYSELF_901
    );
  cd_q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORG_903,
      O => cd_q_2_DYMUX_905
    );
  cd_q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => cd_Mcount_q_cy_2_Q,
      I1 => cd_q_2_G,
      O => cd_q_2_XORG_903
    );
  cd_q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_CYMUXFAST_900,
      O => cd_Mcount_q_cy_3_Q
    );
  cd_q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_FASTCARRY_898
    );
  cd_q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => cd_q_2_CYSELG_886,
      I1 => cd_q_2_CYSELF_901,
      O => cd_q_2_CYAND_899
    );
  cd_q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => cd_q_2_CYMUXG2_897,
      IB => cd_q_2_FASTCARRY_898,
      SEL => cd_q_2_CYAND_899,
      O => cd_q_2_CYMUXFAST_900
    );
  cd_q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_895,
      IB => cd_q_2_CYMUXF2_896,
      SEL => cd_q_2_CYSELG_886,
      O => cd_q_2_CYMUXG2_897
    );
  cd_q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_G,
      O => cd_q_2_CYSELG_886
    );
  cd_q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_2_SRINV_884
    );
  cd_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_2_CLKINV_883
    );
  cd_q_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      O => cd_q_4_LOGIC_ZERO_951
    );
  cd_q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORF_978,
      O => cd_q_4_DXMUX_980
    );
  cd_q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => cd_q_4_CYINIT_977,
      I1 => cd_q_4_F,
      O => cd_q_4_XORF_978
    );
  cd_q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_951,
      IB => cd_q_4_CYINIT_977,
      SEL => cd_q_4_CYSELF_957,
      O => cd_Mcount_q_cy_4_Q
    );
  cd_q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_951,
      IB => cd_q_4_LOGIC_ZERO_951,
      SEL => cd_q_4_CYSELF_957,
      O => cd_q_4_CYMUXF2_952
    );
  cd_q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_CYINIT_977
    );
  cd_q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_F,
      O => cd_q_4_CYSELF_957
    );
  cd_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORG_959,
      O => cd_q_4_DYMUX_961
    );
  cd_q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => cd_Mcount_q_cy_4_Q,
      I1 => cd_q_4_G,
      O => cd_q_4_XORG_959
    );
  cd_q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_CYMUXFAST_956,
      O => cd_Mcount_q_cy_5_Q
    );
  cd_q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_FASTCARRY_954
    );
  cd_q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => cd_q_4_CYSELG_942,
      I1 => cd_q_4_CYSELF_957,
      O => cd_q_4_CYAND_955
    );
  cd_q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => cd_q_4_CYMUXG2_953,
      IB => cd_q_4_FASTCARRY_954,
      SEL => cd_q_4_CYAND_955,
      O => cd_q_4_CYMUXFAST_956
    );
  cd_q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_951,
      IB => cd_q_4_CYMUXF2_952,
      SEL => cd_q_4_CYSELG_942,
      O => cd_q_4_CYMUXG2_953
    );
  cd_q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_G,
      O => cd_q_4_CYSELG_942
    );
  cd_q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_4_SRINV_940
    );
  cd_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_4_CLKINV_939
    );
  cd_q_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      O => cd_q_6_LOGIC_ZERO_1007
    );
  cd_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORF_1034,
      O => cd_q_6_DXMUX_1036
    );
  cd_q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => cd_q_6_CYINIT_1033,
      I1 => cd_q_6_F,
      O => cd_q_6_XORF_1034
    );
  cd_q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_1007,
      IB => cd_q_6_CYINIT_1033,
      SEL => cd_q_6_CYSELF_1013,
      O => cd_Mcount_q_cy_6_Q
    );
  cd_q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_1007,
      IB => cd_q_6_LOGIC_ZERO_1007,
      SEL => cd_q_6_CYSELF_1013,
      O => cd_q_6_CYMUXF2_1008
    );
  cd_q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_CYINIT_1033
    );
  cd_q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_F,
      O => cd_q_6_CYSELF_1013
    );
  cd_q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORG_1015,
      O => cd_q_6_DYMUX_1017
    );
  cd_q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => cd_Mcount_q_cy_6_Q,
      I1 => cd_q_6_G,
      O => cd_q_6_XORG_1015
    );
  cd_q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_CYMUXFAST_1012,
      O => cd_Mcount_q_cy_7_Q
    );
  cd_q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_FASTCARRY_1010
    );
  cd_q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => cd_q_6_CYSELG_998,
      I1 => cd_q_6_CYSELF_1013,
      O => cd_q_6_CYAND_1011
    );
  cd_q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => cd_q_6_CYMUXG2_1009,
      IB => cd_q_6_FASTCARRY_1010,
      SEL => cd_q_6_CYAND_1011,
      O => cd_q_6_CYMUXFAST_1012
    );
  cd_q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_1007,
      IB => cd_q_6_CYMUXF2_1008,
      SEL => cd_q_6_CYSELG_998,
      O => cd_q_6_CYMUXG2_1009
    );
  cd_q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_G,
      O => cd_q_6_CYSELG_998
    );
  cd_q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_6_SRINV_996
    );
  cd_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_6_CLKINV_995
    );
  cd_q_8_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_SRINV_1052,
      O => cd_q_8_FFY_RST
    );
  cd_q_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y81",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DYMUX_1073,
      CE => VCC,
      CLK => cd_q_8_CLKINV_1051,
      SET => GND,
      RST => cd_q_8_FFY_RST,
      O => cd_q(9)
    );
  cd_q_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_SRINV_1052,
      O => cd_q_8_FFX_RST
    );
  cd_q_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y81",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DXMUX_1092,
      CE => VCC,
      CLK => cd_q_8_CLKINV_1051,
      SET => GND,
      RST => cd_q_8_FFX_RST,
      O => cd_q(8)
    );
  cd_q_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      O => cd_q_8_LOGIC_ZERO_1063
    );
  cd_q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORF_1090,
      O => cd_q_8_DXMUX_1092
    );
  cd_q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => cd_q_8_CYINIT_1089,
      I1 => cd_q_8_F,
      O => cd_q_8_XORF_1090
    );
  cd_q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_1063,
      IB => cd_q_8_CYINIT_1089,
      SEL => cd_q_8_CYSELF_1069,
      O => cd_Mcount_q_cy_8_Q
    );
  cd_q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_1063,
      IB => cd_q_8_LOGIC_ZERO_1063,
      SEL => cd_q_8_CYSELF_1069,
      O => cd_q_8_CYMUXF2_1064
    );
  cd_q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_CYINIT_1089
    );
  cd_q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_F,
      O => cd_q_8_CYSELF_1069
    );
  cd_q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORG_1071,
      O => cd_q_8_DYMUX_1073
    );
  cd_q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => cd_Mcount_q_cy_8_Q,
      I1 => cd_q_8_G,
      O => cd_q_8_XORG_1071
    );
  cd_q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_CYMUXFAST_1068,
      O => cd_Mcount_q_cy_9_Q
    );
  cd_q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_FASTCARRY_1066
    );
  cd_q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => cd_q_8_CYSELG_1054,
      I1 => cd_q_8_CYSELF_1069,
      O => cd_q_8_CYAND_1067
    );
  cd_q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => cd_q_8_CYMUXG2_1065,
      IB => cd_q_8_FASTCARRY_1066,
      SEL => cd_q_8_CYAND_1067,
      O => cd_q_8_CYMUXFAST_1068
    );
  cd_q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_1063,
      IB => cd_q_8_CYMUXF2_1064,
      SEL => cd_q_8_CYSELG_1054,
      O => cd_q_8_CYMUXG2_1065
    );
  cd_q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_G,
      O => cd_q_8_CYSELG_1054
    );
  cd_q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_8_SRINV_1052
    );
  cd_q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_8_CLKINV_1051
    );
  cd_q_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      O => cd_q_10_LOGIC_ZERO_1119
    );
  cd_q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORF_1146,
      O => cd_q_10_DXMUX_1148
    );
  cd_q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => cd_q_10_CYINIT_1145,
      I1 => cd_q_10_F,
      O => cd_q_10_XORF_1146
    );
  cd_q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_1119,
      IB => cd_q_10_CYINIT_1145,
      SEL => cd_q_10_CYSELF_1125,
      O => cd_Mcount_q_cy_10_Q
    );
  cd_q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_1119,
      IB => cd_q_10_LOGIC_ZERO_1119,
      SEL => cd_q_10_CYSELF_1125,
      O => cd_q_10_CYMUXF2_1120
    );
  cd_q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_CYINIT_1145
    );
  cd_q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_F,
      O => cd_q_10_CYSELF_1125
    );
  cd_q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORG_1127,
      O => cd_q_10_DYMUX_1129
    );
  cd_q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => cd_Mcount_q_cy_10_Q,
      I1 => cd_q_10_G,
      O => cd_q_10_XORG_1127
    );
  cd_q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_CYMUXFAST_1124,
      O => cd_Mcount_q_cy_11_Q
    );
  cd_q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_FASTCARRY_1122
    );
  cd_q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => cd_q_10_CYSELG_1110,
      I1 => cd_q_10_CYSELF_1125,
      O => cd_q_10_CYAND_1123
    );
  cd_q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => cd_q_10_CYMUXG2_1121,
      IB => cd_q_10_FASTCARRY_1122,
      SEL => cd_q_10_CYAND_1123,
      O => cd_q_10_CYMUXFAST_1124
    );
  cd_q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_1119,
      IB => cd_q_10_CYMUXF2_1120,
      SEL => cd_q_10_CYSELG_1110,
      O => cd_q_10_CYMUXG2_1121
    );
  cd_q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_G,
      O => cd_q_10_CYSELG_1110
    );
  cd_q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_10_SRINV_1108
    );
  cd_q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_10_CLKINV_1107
    );
  cd_q_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      O => cd_q_12_LOGIC_ZERO_1175
    );
  cd_q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORF_1202,
      O => cd_q_12_DXMUX_1204
    );
  cd_q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => cd_q_12_CYINIT_1201,
      I1 => cd_q_12_F,
      O => cd_q_12_XORF_1202
    );
  cd_q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_1175,
      IB => cd_q_12_CYINIT_1201,
      SEL => cd_q_12_CYSELF_1181,
      O => cd_Mcount_q_cy_12_Q
    );
  cd_q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_1175,
      IB => cd_q_12_LOGIC_ZERO_1175,
      SEL => cd_q_12_CYSELF_1181,
      O => cd_q_12_CYMUXF2_1176
    );
  cd_q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_CYINIT_1201
    );
  cd_q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_F,
      O => cd_q_12_CYSELF_1181
    );
  cd_q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORG_1183,
      O => cd_q_12_DYMUX_1185
    );
  cd_q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => cd_Mcount_q_cy_12_Q,
      I1 => cd_q_12_G,
      O => cd_q_12_XORG_1183
    );
  cd_q_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_CYMUXFAST_1180,
      O => cd_Mcount_q_cy_13_Q
    );
  cd_q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_FASTCARRY_1178
    );
  cd_q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => cd_q_12_CYSELG_1166,
      I1 => cd_q_12_CYSELF_1181,
      O => cd_q_12_CYAND_1179
    );
  cd_q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => cd_q_12_CYMUXG2_1177,
      IB => cd_q_12_FASTCARRY_1178,
      SEL => cd_q_12_CYAND_1179,
      O => cd_q_12_CYMUXFAST_1180
    );
  cd_q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_1175,
      IB => cd_q_12_CYMUXF2_1176,
      SEL => cd_q_12_CYSELG_1166,
      O => cd_q_12_CYMUXG2_1177
    );
  cd_q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_G,
      O => cd_q_12_CYSELG_1166
    );
  cd_q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_12_SRINV_1164
    );
  cd_q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_12_CLKINV_1163
    );
  cd_q_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      O => cd_q_14_LOGIC_ZERO_1231
    );
  cd_q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORF_1258,
      O => cd_q_14_DXMUX_1260
    );
  cd_q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => cd_q_14_CYINIT_1257,
      I1 => cd_q_14_F,
      O => cd_q_14_XORF_1258
    );
  cd_q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_1231,
      IB => cd_q_14_CYINIT_1257,
      SEL => cd_q_14_CYSELF_1237,
      O => cd_Mcount_q_cy_14_Q
    );
  cd_q_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_1231,
      IB => cd_q_14_LOGIC_ZERO_1231,
      SEL => cd_q_14_CYSELF_1237,
      O => cd_q_14_CYMUXF2_1232
    );
  cd_q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_CYINIT_1257
    );
  cd_q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_F,
      O => cd_q_14_CYSELF_1237
    );
  cd_q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORG_1239,
      O => cd_q_14_DYMUX_1241
    );
  cd_q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => cd_Mcount_q_cy_14_Q,
      I1 => cd_q_14_G,
      O => cd_q_14_XORG_1239
    );
  cd_q_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_FASTCARRY_1234
    );
  cd_q_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => cd_q_14_CYSELG_1222,
      I1 => cd_q_14_CYSELF_1237,
      O => cd_q_14_CYAND_1235
    );
  cd_q_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => cd_q_14_CYMUXG2_1233,
      IB => cd_q_14_FASTCARRY_1234,
      SEL => cd_q_14_CYAND_1235,
      O => cd_q_14_CYMUXFAST_1236
    );
  cd_q_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_1231,
      IB => cd_q_14_CYMUXF2_1232,
      SEL => cd_q_14_CYSELG_1222,
      O => cd_q_14_CYMUXG2_1233
    );
  cd_q_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_G,
      O => cd_q_14_CYSELG_1222
    );
  cd_q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_14_SRINV_1220
    );
  cd_q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_14_CLKINV_1219
    );
  cd_q_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y84",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DXMUX_1260,
      CE => VCC,
      CLK => cd_q_14_CLKINV_1219,
      SET => GND,
      RST => cd_q_14_SRINV_1220,
      O => cd_q(14)
    );
  cd_q_16_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_SRINV_1275,
      O => cd_q_16_FFX_RST
    );
  cd_q_16 : X_FF
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DXMUX_1309,
      CE => VCC,
      CLK => cd_q_16_CLKINV_1274,
      SET => GND,
      RST => cd_q_16_FFX_RST,
      O => cd_q(16)
    );
  cd_q_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      O => cd_q_16_LOGIC_ZERO_1306
    );
  cd_q_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORF_1307,
      O => cd_q_16_DXMUX_1309
    );
  cd_q_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      I0 => cd_q_16_CYINIT_1305,
      I1 => cd_q_16_F,
      O => cd_q_16_XORF_1307
    );
  cd_q_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => cd_q_16_LOGIC_ZERO_1306,
      IB => cd_q_16_CYINIT_1305,
      SEL => cd_q_16_CYSELF_1296,
      O => cd_Mcount_q_cy_16_Q
    );
  cd_q_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_CYMUXFAST_1236,
      O => cd_q_16_CYINIT_1305
    );
  cd_q_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_F,
      O => cd_q_16_CYSELF_1296
    );
  cd_q_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORG_1286,
      O => cd_q_16_DYMUX_1288
    );
  cd_q_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      I0 => cd_Mcount_q_cy_16_Q,
      I1 => cd_q_17_rt_1283,
      O => cd_q_16_XORG_1286
    );
  cd_q_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => cd_q_16_SRINV_1275
    );
  cd_q_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => cd_q_16_CLKINV_1274
    );
  cd_q_17 : X_FF
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DYMUX_1288,
      CE => VCC,
      CLK => cd_q_16_CLKINV_1274,
      SET => GND,
      RST => cd_q_16_SRINV_1275,
      O => cd_q(17)
    );
  cd_q_17_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(17),
      ADR3 => VCC,
      O => cd_q_17_rt_1283
    );
  x7seg_clkdiv_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      O => x7seg_clkdiv_0_LOGIC_ZERO_1336
    );
  x7seg_clkdiv_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      O => x7seg_clkdiv_0_LOGIC_ONE_1360
    );
  x7seg_clkdiv_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_0_XORF_1361,
      O => x7seg_clkdiv_0_DXMUX_1363
    );
  x7seg_clkdiv_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      I0 => x7seg_clkdiv_0_CYINIT_1359,
      I1 => x7seg_Mcount_clkdiv_lut(0),
      O => x7seg_clkdiv_0_XORF_1361
    );
  x7seg_clkdiv_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => x7seg_clkdiv_0_LOGIC_ONE_1360,
      IB => x7seg_clkdiv_0_CYINIT_1359,
      SEL => x7seg_clkdiv_0_CYSELF_1350,
      O => x7seg_Mcount_clkdiv_cy_0_Q
    );
  x7seg_clkdiv_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_0_BXINV_1348,
      O => x7seg_clkdiv_0_CYINIT_1359
    );
  x7seg_clkdiv_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_lut(0),
      O => x7seg_clkdiv_0_CYSELF_1350
    );
  x7seg_clkdiv_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => x7seg_clkdiv_0_BXINV_1348
    );
  x7seg_clkdiv_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_0_XORG_1339,
      O => x7seg_clkdiv_0_DYMUX_1341
    );
  x7seg_clkdiv_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_0_Q,
      I1 => x7seg_clkdiv_0_G,
      O => x7seg_clkdiv_0_XORG_1339
    );
  x7seg_clkdiv_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_0_CYMUXG_1338,
      O => x7seg_Mcount_clkdiv_cy_1_Q
    );
  x7seg_clkdiv_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => x7seg_clkdiv_0_LOGIC_ZERO_1336,
      IB => x7seg_Mcount_clkdiv_cy_0_Q,
      SEL => x7seg_clkdiv_0_CYSELG_1327,
      O => x7seg_clkdiv_0_CYMUXG_1338
    );
  x7seg_clkdiv_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_0_G,
      O => x7seg_clkdiv_0_CYSELG_1327
    );
  x7seg_clkdiv_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_0_SRINV_1325
    );
  x7seg_clkdiv_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_0_CLKINV_1324
    );
  x7seg_clkdiv_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      O => x7seg_clkdiv_2_LOGIC_ZERO_1390
    );
  x7seg_clkdiv_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_2_XORF_1417,
      O => x7seg_clkdiv_2_DXMUX_1419
    );
  x7seg_clkdiv_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => x7seg_clkdiv_2_CYINIT_1416,
      I1 => x7seg_clkdiv_2_F,
      O => x7seg_clkdiv_2_XORF_1417
    );
  x7seg_clkdiv_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => x7seg_clkdiv_2_LOGIC_ZERO_1390,
      IB => x7seg_clkdiv_2_CYINIT_1416,
      SEL => x7seg_clkdiv_2_CYSELF_1396,
      O => x7seg_Mcount_clkdiv_cy_2_Q
    );
  x7seg_clkdiv_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => x7seg_clkdiv_2_LOGIC_ZERO_1390,
      IB => x7seg_clkdiv_2_LOGIC_ZERO_1390,
      SEL => x7seg_clkdiv_2_CYSELF_1396,
      O => x7seg_clkdiv_2_CYMUXF2_1391
    );
  x7seg_clkdiv_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_1_Q,
      O => x7seg_clkdiv_2_CYINIT_1416
    );
  x7seg_clkdiv_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_2_F,
      O => x7seg_clkdiv_2_CYSELF_1396
    );
  x7seg_clkdiv_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_2_XORG_1398,
      O => x7seg_clkdiv_2_DYMUX_1400
    );
  x7seg_clkdiv_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_2_Q,
      I1 => x7seg_clkdiv_2_G,
      O => x7seg_clkdiv_2_XORG_1398
    );
  x7seg_clkdiv_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_2_CYMUXFAST_1395,
      O => x7seg_Mcount_clkdiv_cy_3_Q
    );
  x7seg_clkdiv_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_1_Q,
      O => x7seg_clkdiv_2_FASTCARRY_1393
    );
  x7seg_clkdiv_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      I0 => x7seg_clkdiv_2_CYSELG_1381,
      I1 => x7seg_clkdiv_2_CYSELF_1396,
      O => x7seg_clkdiv_2_CYAND_1394
    );
  x7seg_clkdiv_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => x7seg_clkdiv_2_CYMUXG2_1392,
      IB => x7seg_clkdiv_2_FASTCARRY_1393,
      SEL => x7seg_clkdiv_2_CYAND_1394,
      O => x7seg_clkdiv_2_CYMUXFAST_1395
    );
  x7seg_clkdiv_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y60"
    )
    port map (
      IA => x7seg_clkdiv_2_LOGIC_ZERO_1390,
      IB => x7seg_clkdiv_2_CYMUXF2_1391,
      SEL => x7seg_clkdiv_2_CYSELG_1381,
      O => x7seg_clkdiv_2_CYMUXG2_1392
    );
  x7seg_clkdiv_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_2_G,
      O => x7seg_clkdiv_2_CYSELG_1381
    );
  x7seg_clkdiv_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_2_SRINV_1379
    );
  x7seg_clkdiv_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_2_CLKINV_1378
    );
  x7seg_clkdiv_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      O => x7seg_clkdiv_4_LOGIC_ZERO_1446
    );
  x7seg_clkdiv_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_4_XORF_1473,
      O => x7seg_clkdiv_4_DXMUX_1475
    );
  x7seg_clkdiv_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => x7seg_clkdiv_4_CYINIT_1472,
      I1 => x7seg_clkdiv_4_F,
      O => x7seg_clkdiv_4_XORF_1473
    );
  x7seg_clkdiv_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => x7seg_clkdiv_4_LOGIC_ZERO_1446,
      IB => x7seg_clkdiv_4_CYINIT_1472,
      SEL => x7seg_clkdiv_4_CYSELF_1452,
      O => x7seg_Mcount_clkdiv_cy_4_Q
    );
  x7seg_clkdiv_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => x7seg_clkdiv_4_LOGIC_ZERO_1446,
      IB => x7seg_clkdiv_4_LOGIC_ZERO_1446,
      SEL => x7seg_clkdiv_4_CYSELF_1452,
      O => x7seg_clkdiv_4_CYMUXF2_1447
    );
  x7seg_clkdiv_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_3_Q,
      O => x7seg_clkdiv_4_CYINIT_1472
    );
  x7seg_clkdiv_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_4_F,
      O => x7seg_clkdiv_4_CYSELF_1452
    );
  x7seg_clkdiv_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_4_XORG_1454,
      O => x7seg_clkdiv_4_DYMUX_1456
    );
  x7seg_clkdiv_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_4_Q,
      I1 => x7seg_clkdiv_4_G,
      O => x7seg_clkdiv_4_XORG_1454
    );
  x7seg_clkdiv_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_4_CYMUXFAST_1451,
      O => x7seg_Mcount_clkdiv_cy_5_Q
    );
  x7seg_clkdiv_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_3_Q,
      O => x7seg_clkdiv_4_FASTCARRY_1449
    );
  x7seg_clkdiv_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      I0 => x7seg_clkdiv_4_CYSELG_1437,
      I1 => x7seg_clkdiv_4_CYSELF_1452,
      O => x7seg_clkdiv_4_CYAND_1450
    );
  x7seg_clkdiv_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => x7seg_clkdiv_4_CYMUXG2_1448,
      IB => x7seg_clkdiv_4_FASTCARRY_1449,
      SEL => x7seg_clkdiv_4_CYAND_1450,
      O => x7seg_clkdiv_4_CYMUXFAST_1451
    );
  x7seg_clkdiv_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y61"
    )
    port map (
      IA => x7seg_clkdiv_4_LOGIC_ZERO_1446,
      IB => x7seg_clkdiv_4_CYMUXF2_1447,
      SEL => x7seg_clkdiv_4_CYSELG_1437,
      O => x7seg_clkdiv_4_CYMUXG2_1448
    );
  x7seg_clkdiv_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_4_G,
      O => x7seg_clkdiv_4_CYSELG_1437
    );
  x7seg_clkdiv_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_4_SRINV_1435
    );
  x7seg_clkdiv_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_4_CLKINV_1434
    );
  x7seg_clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X65Y61",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_4_DXMUX_1475,
      CE => VCC,
      CLK => x7seg_clkdiv_4_CLKINV_1434,
      SET => GND,
      RST => x7seg_clkdiv_4_SRINV_1435,
      O => x7seg_clkdiv(4)
    );
  x7seg_clkdiv_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_SRINV_1491,
      O => x7seg_clkdiv_6_FFY_RST
    );
  x7seg_clkdiv_7 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_6_DYMUX_1512,
      CE => VCC,
      CLK => x7seg_clkdiv_6_CLKINV_1490,
      SET => GND,
      RST => x7seg_clkdiv_6_FFY_RST,
      O => x7seg_clkdiv(7)
    );
  x7seg_clkdiv_6_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_SRINV_1491,
      O => x7seg_clkdiv_6_FFX_RST
    );
  x7seg_clkdiv_6 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_6_DXMUX_1531,
      CE => VCC,
      CLK => x7seg_clkdiv_6_CLKINV_1490,
      SET => GND,
      RST => x7seg_clkdiv_6_FFX_RST,
      O => x7seg_clkdiv(6)
    );
  x7seg_clkdiv_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      O => x7seg_clkdiv_6_LOGIC_ZERO_1502
    );
  x7seg_clkdiv_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_XORF_1529,
      O => x7seg_clkdiv_6_DXMUX_1531
    );
  x7seg_clkdiv_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      I0 => x7seg_clkdiv_6_CYINIT_1528,
      I1 => x7seg_clkdiv_6_F,
      O => x7seg_clkdiv_6_XORF_1529
    );
  x7seg_clkdiv_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      IA => x7seg_clkdiv_6_LOGIC_ZERO_1502,
      IB => x7seg_clkdiv_6_CYINIT_1528,
      SEL => x7seg_clkdiv_6_CYSELF_1508,
      O => x7seg_Mcount_clkdiv_cy_6_Q
    );
  x7seg_clkdiv_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      IA => x7seg_clkdiv_6_LOGIC_ZERO_1502,
      IB => x7seg_clkdiv_6_LOGIC_ZERO_1502,
      SEL => x7seg_clkdiv_6_CYSELF_1508,
      O => x7seg_clkdiv_6_CYMUXF2_1503
    );
  x7seg_clkdiv_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_5_Q,
      O => x7seg_clkdiv_6_CYINIT_1528
    );
  x7seg_clkdiv_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_F,
      O => x7seg_clkdiv_6_CYSELF_1508
    );
  x7seg_clkdiv_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_XORG_1510,
      O => x7seg_clkdiv_6_DYMUX_1512
    );
  x7seg_clkdiv_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_6_Q,
      I1 => x7seg_clkdiv_6_G,
      O => x7seg_clkdiv_6_XORG_1510
    );
  x7seg_clkdiv_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_CYMUXFAST_1507,
      O => x7seg_Mcount_clkdiv_cy_7_Q
    );
  x7seg_clkdiv_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_5_Q,
      O => x7seg_clkdiv_6_FASTCARRY_1505
    );
  x7seg_clkdiv_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      I0 => x7seg_clkdiv_6_CYSELG_1493,
      I1 => x7seg_clkdiv_6_CYSELF_1508,
      O => x7seg_clkdiv_6_CYAND_1506
    );
  x7seg_clkdiv_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      IA => x7seg_clkdiv_6_CYMUXG2_1504,
      IB => x7seg_clkdiv_6_FASTCARRY_1505,
      SEL => x7seg_clkdiv_6_CYAND_1506,
      O => x7seg_clkdiv_6_CYMUXFAST_1507
    );
  x7seg_clkdiv_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y62"
    )
    port map (
      IA => x7seg_clkdiv_6_LOGIC_ZERO_1502,
      IB => x7seg_clkdiv_6_CYMUXF2_1503,
      SEL => x7seg_clkdiv_6_CYSELG_1493,
      O => x7seg_clkdiv_6_CYMUXG2_1504
    );
  x7seg_clkdiv_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_6_G,
      O => x7seg_clkdiv_6_CYSELG_1493
    );
  x7seg_clkdiv_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_6_SRINV_1491
    );
  x7seg_clkdiv_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_6_CLKINV_1490
    );
  x7seg_clkdiv_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      O => x7seg_clkdiv_8_LOGIC_ZERO_1558
    );
  x7seg_clkdiv_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_8_XORF_1585,
      O => x7seg_clkdiv_8_DXMUX_1587
    );
  x7seg_clkdiv_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      I0 => x7seg_clkdiv_8_CYINIT_1584,
      I1 => x7seg_clkdiv_8_F,
      O => x7seg_clkdiv_8_XORF_1585
    );
  x7seg_clkdiv_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      IA => x7seg_clkdiv_8_LOGIC_ZERO_1558,
      IB => x7seg_clkdiv_8_CYINIT_1584,
      SEL => x7seg_clkdiv_8_CYSELF_1564,
      O => x7seg_Mcount_clkdiv_cy_8_Q
    );
  x7seg_clkdiv_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      IA => x7seg_clkdiv_8_LOGIC_ZERO_1558,
      IB => x7seg_clkdiv_8_LOGIC_ZERO_1558,
      SEL => x7seg_clkdiv_8_CYSELF_1564,
      O => x7seg_clkdiv_8_CYMUXF2_1559
    );
  x7seg_clkdiv_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_7_Q,
      O => x7seg_clkdiv_8_CYINIT_1584
    );
  x7seg_clkdiv_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_8_F,
      O => x7seg_clkdiv_8_CYSELF_1564
    );
  x7seg_clkdiv_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_8_XORG_1566,
      O => x7seg_clkdiv_8_DYMUX_1568
    );
  x7seg_clkdiv_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_8_Q,
      I1 => x7seg_clkdiv_8_G,
      O => x7seg_clkdiv_8_XORG_1566
    );
  x7seg_clkdiv_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_8_CYMUXFAST_1563,
      O => x7seg_Mcount_clkdiv_cy_9_Q
    );
  x7seg_clkdiv_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_7_Q,
      O => x7seg_clkdiv_8_FASTCARRY_1561
    );
  x7seg_clkdiv_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      I0 => x7seg_clkdiv_8_CYSELG_1549,
      I1 => x7seg_clkdiv_8_CYSELF_1564,
      O => x7seg_clkdiv_8_CYAND_1562
    );
  x7seg_clkdiv_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      IA => x7seg_clkdiv_8_CYMUXG2_1560,
      IB => x7seg_clkdiv_8_FASTCARRY_1561,
      SEL => x7seg_clkdiv_8_CYAND_1562,
      O => x7seg_clkdiv_8_CYMUXFAST_1563
    );
  x7seg_clkdiv_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y63"
    )
    port map (
      IA => x7seg_clkdiv_8_LOGIC_ZERO_1558,
      IB => x7seg_clkdiv_8_CYMUXF2_1559,
      SEL => x7seg_clkdiv_8_CYSELG_1549,
      O => x7seg_clkdiv_8_CYMUXG2_1560
    );
  x7seg_clkdiv_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_8_G,
      O => x7seg_clkdiv_8_CYSELG_1549
    );
  x7seg_clkdiv_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_8_SRINV_1547
    );
  x7seg_clkdiv_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_8_CLKINV_1546
    );
  x7seg_clkdiv_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      O => x7seg_clkdiv_10_LOGIC_ZERO_1614
    );
  x7seg_clkdiv_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_10_XORF_1641,
      O => x7seg_clkdiv_10_DXMUX_1643
    );
  x7seg_clkdiv_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      I0 => x7seg_clkdiv_10_CYINIT_1640,
      I1 => x7seg_clkdiv_10_F,
      O => x7seg_clkdiv_10_XORF_1641
    );
  x7seg_clkdiv_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      IA => x7seg_clkdiv_10_LOGIC_ZERO_1614,
      IB => x7seg_clkdiv_10_CYINIT_1640,
      SEL => x7seg_clkdiv_10_CYSELF_1620,
      O => x7seg_Mcount_clkdiv_cy_10_Q
    );
  x7seg_clkdiv_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      IA => x7seg_clkdiv_10_LOGIC_ZERO_1614,
      IB => x7seg_clkdiv_10_LOGIC_ZERO_1614,
      SEL => x7seg_clkdiv_10_CYSELF_1620,
      O => x7seg_clkdiv_10_CYMUXF2_1615
    );
  x7seg_clkdiv_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_9_Q,
      O => x7seg_clkdiv_10_CYINIT_1640
    );
  x7seg_clkdiv_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_10_F,
      O => x7seg_clkdiv_10_CYSELF_1620
    );
  x7seg_clkdiv_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_10_XORG_1622,
      O => x7seg_clkdiv_10_DYMUX_1624
    );
  x7seg_clkdiv_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_10_Q,
      I1 => x7seg_clkdiv_10_G,
      O => x7seg_clkdiv_10_XORG_1622
    );
  x7seg_clkdiv_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_10_CYMUXFAST_1619,
      O => x7seg_Mcount_clkdiv_cy_11_Q
    );
  x7seg_clkdiv_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_9_Q,
      O => x7seg_clkdiv_10_FASTCARRY_1617
    );
  x7seg_clkdiv_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      I0 => x7seg_clkdiv_10_CYSELG_1605,
      I1 => x7seg_clkdiv_10_CYSELF_1620,
      O => x7seg_clkdiv_10_CYAND_1618
    );
  x7seg_clkdiv_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      IA => x7seg_clkdiv_10_CYMUXG2_1616,
      IB => x7seg_clkdiv_10_FASTCARRY_1617,
      SEL => x7seg_clkdiv_10_CYAND_1618,
      O => x7seg_clkdiv_10_CYMUXFAST_1619
    );
  x7seg_clkdiv_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y64"
    )
    port map (
      IA => x7seg_clkdiv_10_LOGIC_ZERO_1614,
      IB => x7seg_clkdiv_10_CYMUXF2_1615,
      SEL => x7seg_clkdiv_10_CYSELG_1605,
      O => x7seg_clkdiv_10_CYMUXG2_1616
    );
  x7seg_clkdiv_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_10_G,
      O => x7seg_clkdiv_10_CYSELG_1605
    );
  x7seg_clkdiv_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_10_SRINV_1603
    );
  x7seg_clkdiv_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_10_CLKINV_1602
    );
  x7seg_clkdiv_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_SRINV_1659,
      O => x7seg_clkdiv_12_FFX_RST
    );
  x7seg_clkdiv_12 : X_FF
    generic map(
      LOC => "SLICE_X65Y65",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_12_DXMUX_1699,
      CE => VCC,
      CLK => x7seg_clkdiv_12_CLKINV_1658,
      SET => GND,
      RST => x7seg_clkdiv_12_FFX_RST,
      O => x7seg_clkdiv(12)
    );
  x7seg_clkdiv_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      O => x7seg_clkdiv_12_LOGIC_ZERO_1670
    );
  x7seg_clkdiv_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_XORF_1697,
      O => x7seg_clkdiv_12_DXMUX_1699
    );
  x7seg_clkdiv_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      I0 => x7seg_clkdiv_12_CYINIT_1696,
      I1 => x7seg_clkdiv_12_F,
      O => x7seg_clkdiv_12_XORF_1697
    );
  x7seg_clkdiv_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      IA => x7seg_clkdiv_12_LOGIC_ZERO_1670,
      IB => x7seg_clkdiv_12_CYINIT_1696,
      SEL => x7seg_clkdiv_12_CYSELF_1676,
      O => x7seg_Mcount_clkdiv_cy_12_Q
    );
  x7seg_clkdiv_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      IA => x7seg_clkdiv_12_LOGIC_ZERO_1670,
      IB => x7seg_clkdiv_12_LOGIC_ZERO_1670,
      SEL => x7seg_clkdiv_12_CYSELF_1676,
      O => x7seg_clkdiv_12_CYMUXF2_1671
    );
  x7seg_clkdiv_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_11_Q,
      O => x7seg_clkdiv_12_CYINIT_1696
    );
  x7seg_clkdiv_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_F,
      O => x7seg_clkdiv_12_CYSELF_1676
    );
  x7seg_clkdiv_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_XORG_1678,
      O => x7seg_clkdiv_12_DYMUX_1680
    );
  x7seg_clkdiv_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_12_Q,
      I1 => x7seg_clkdiv_12_G,
      O => x7seg_clkdiv_12_XORG_1678
    );
  x7seg_clkdiv_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_CYMUXFAST_1675,
      O => x7seg_Mcount_clkdiv_cy_13_Q
    );
  x7seg_clkdiv_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_11_Q,
      O => x7seg_clkdiv_12_FASTCARRY_1673
    );
  x7seg_clkdiv_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      I0 => x7seg_clkdiv_12_CYSELG_1661,
      I1 => x7seg_clkdiv_12_CYSELF_1676,
      O => x7seg_clkdiv_12_CYAND_1674
    );
  x7seg_clkdiv_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      IA => x7seg_clkdiv_12_CYMUXG2_1672,
      IB => x7seg_clkdiv_12_FASTCARRY_1673,
      SEL => x7seg_clkdiv_12_CYAND_1674,
      O => x7seg_clkdiv_12_CYMUXFAST_1675
    );
  x7seg_clkdiv_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      IA => x7seg_clkdiv_12_LOGIC_ZERO_1670,
      IB => x7seg_clkdiv_12_CYMUXF2_1671,
      SEL => x7seg_clkdiv_12_CYSELG_1661,
      O => x7seg_clkdiv_12_CYMUXG2_1672
    );
  x7seg_clkdiv_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_12_G,
      O => x7seg_clkdiv_12_CYSELG_1661
    );
  x7seg_clkdiv_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_12_SRINV_1659
    );
  x7seg_clkdiv_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_12_CLKINV_1658
    );
  x7seg_clkdiv_14_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_SRINV_1715,
      O => x7seg_clkdiv_14_FFY_RST
    );
  x7seg_clkdiv_15 : X_FF
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_14_DYMUX_1736,
      CE => VCC,
      CLK => x7seg_clkdiv_14_CLKINV_1714,
      SET => GND,
      RST => x7seg_clkdiv_14_FFY_RST,
      O => x7seg_clkdiv(15)
    );
  x7seg_clkdiv_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      O => x7seg_clkdiv_14_LOGIC_ZERO_1726
    );
  x7seg_clkdiv_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_XORF_1753,
      O => x7seg_clkdiv_14_DXMUX_1755
    );
  x7seg_clkdiv_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      I0 => x7seg_clkdiv_14_CYINIT_1752,
      I1 => x7seg_clkdiv_14_F,
      O => x7seg_clkdiv_14_XORF_1753
    );
  x7seg_clkdiv_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      IA => x7seg_clkdiv_14_LOGIC_ZERO_1726,
      IB => x7seg_clkdiv_14_CYINIT_1752,
      SEL => x7seg_clkdiv_14_CYSELF_1732,
      O => x7seg_Mcount_clkdiv_cy_14_Q
    );
  x7seg_clkdiv_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      IA => x7seg_clkdiv_14_LOGIC_ZERO_1726,
      IB => x7seg_clkdiv_14_LOGIC_ZERO_1726,
      SEL => x7seg_clkdiv_14_CYSELF_1732,
      O => x7seg_clkdiv_14_CYMUXF2_1727
    );
  x7seg_clkdiv_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_13_Q,
      O => x7seg_clkdiv_14_CYINIT_1752
    );
  x7seg_clkdiv_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_F,
      O => x7seg_clkdiv_14_CYSELF_1732
    );
  x7seg_clkdiv_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_XORG_1734,
      O => x7seg_clkdiv_14_DYMUX_1736
    );
  x7seg_clkdiv_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_14_Q,
      I1 => x7seg_clkdiv_14_G,
      O => x7seg_clkdiv_14_XORG_1734
    );
  x7seg_clkdiv_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_CYMUXFAST_1731,
      O => x7seg_Mcount_clkdiv_cy_15_Q
    );
  x7seg_clkdiv_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_13_Q,
      O => x7seg_clkdiv_14_FASTCARRY_1729
    );
  x7seg_clkdiv_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      I0 => x7seg_clkdiv_14_CYSELG_1717,
      I1 => x7seg_clkdiv_14_CYSELF_1732,
      O => x7seg_clkdiv_14_CYAND_1730
    );
  x7seg_clkdiv_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      IA => x7seg_clkdiv_14_CYMUXG2_1728,
      IB => x7seg_clkdiv_14_FASTCARRY_1729,
      SEL => x7seg_clkdiv_14_CYAND_1730,
      O => x7seg_clkdiv_14_CYMUXFAST_1731
    );
  x7seg_clkdiv_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      IA => x7seg_clkdiv_14_LOGIC_ZERO_1726,
      IB => x7seg_clkdiv_14_CYMUXF2_1727,
      SEL => x7seg_clkdiv_14_CYSELG_1717,
      O => x7seg_clkdiv_14_CYMUXG2_1728
    );
  x7seg_clkdiv_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_14_G,
      O => x7seg_clkdiv_14_CYSELG_1717
    );
  x7seg_clkdiv_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_14_SRINV_1715
    );
  x7seg_clkdiv_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_14_CLKINV_1714
    );
  x7seg_clkdiv_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      O => x7seg_clkdiv_16_LOGIC_ZERO_1782
    );
  x7seg_clkdiv_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_16_XORF_1809,
      O => x7seg_clkdiv_16_DXMUX_1811
    );
  x7seg_clkdiv_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      I0 => x7seg_clkdiv_16_CYINIT_1808,
      I1 => x7seg_clkdiv_16_F,
      O => x7seg_clkdiv_16_XORF_1809
    );
  x7seg_clkdiv_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => x7seg_clkdiv_16_LOGIC_ZERO_1782,
      IB => x7seg_clkdiv_16_CYINIT_1808,
      SEL => x7seg_clkdiv_16_CYSELF_1788,
      O => x7seg_Mcount_clkdiv_cy_16_Q
    );
  x7seg_clkdiv_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => x7seg_clkdiv_16_LOGIC_ZERO_1782,
      IB => x7seg_clkdiv_16_LOGIC_ZERO_1782,
      SEL => x7seg_clkdiv_16_CYSELF_1788,
      O => x7seg_clkdiv_16_CYMUXF2_1783
    );
  x7seg_clkdiv_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_15_Q,
      O => x7seg_clkdiv_16_CYINIT_1808
    );
  x7seg_clkdiv_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_16_F,
      O => x7seg_clkdiv_16_CYSELF_1788
    );
  x7seg_clkdiv_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_16_XORG_1790,
      O => x7seg_clkdiv_16_DYMUX_1792
    );
  x7seg_clkdiv_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_16_Q,
      I1 => x7seg_clkdiv_16_G,
      O => x7seg_clkdiv_16_XORG_1790
    );
  x7seg_clkdiv_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_Mcount_clkdiv_cy_15_Q,
      O => x7seg_clkdiv_16_FASTCARRY_1785
    );
  x7seg_clkdiv_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      I0 => x7seg_clkdiv_16_CYSELG_1773,
      I1 => x7seg_clkdiv_16_CYSELF_1788,
      O => x7seg_clkdiv_16_CYAND_1786
    );
  x7seg_clkdiv_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => x7seg_clkdiv_16_CYMUXG2_1784,
      IB => x7seg_clkdiv_16_FASTCARRY_1785,
      SEL => x7seg_clkdiv_16_CYAND_1786,
      O => x7seg_clkdiv_16_CYMUXFAST_1787
    );
  x7seg_clkdiv_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => x7seg_clkdiv_16_LOGIC_ZERO_1782,
      IB => x7seg_clkdiv_16_CYMUXF2_1783,
      SEL => x7seg_clkdiv_16_CYSELG_1773,
      O => x7seg_clkdiv_16_CYMUXG2_1784
    );
  x7seg_clkdiv_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_16_G,
      O => x7seg_clkdiv_16_CYSELG_1773
    );
  x7seg_clkdiv_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_16_SRINV_1771
    );
  x7seg_clkdiv_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_16_CLKINV_1770
    );
  x7seg_clkdiv_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      O => x7seg_clkdiv_18_LOGIC_ZERO_1857
    );
  x7seg_clkdiv_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_18_XORF_1858,
      O => x7seg_clkdiv_18_DXMUX_1860
    );
  x7seg_clkdiv_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      I0 => x7seg_clkdiv_18_CYINIT_1856,
      I1 => x7seg_clkdiv_18_F,
      O => x7seg_clkdiv_18_XORF_1858
    );
  x7seg_clkdiv_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => x7seg_clkdiv_18_LOGIC_ZERO_1857,
      IB => x7seg_clkdiv_18_CYINIT_1856,
      SEL => x7seg_clkdiv_18_CYSELF_1847,
      O => x7seg_Mcount_clkdiv_cy_18_Q
    );
  x7seg_clkdiv_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_16_CYMUXFAST_1787,
      O => x7seg_clkdiv_18_CYINIT_1856
    );
  x7seg_clkdiv_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_18_F,
      O => x7seg_clkdiv_18_CYSELF_1847
    );
  x7seg_clkdiv_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv_18_XORG_1837,
      O => x7seg_clkdiv_18_DYMUX_1839
    );
  x7seg_clkdiv_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      I0 => x7seg_Mcount_clkdiv_cy_18_Q,
      I1 => x7seg_clkdiv_19_rt_1834,
      O => x7seg_clkdiv_18_XORG_1837
    );
  x7seg_clkdiv_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => x7seg_clkdiv_18_SRINV_1826
    );
  x7seg_clkdiv_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => x7seg_clkdiv_18_CLKINV_1825
    );
  an_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => an_0_O,
      O => an(0)
    );
  an_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => an_1_O,
      O => an(1)
    );
  an_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => an_2_O,
      O => an(2)
    );
  btn_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(0),
      O => btn_0_INBUF
    );
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_699
    );
  an_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => an_3_O,
      O => an(3)
    );
  a_to_g_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => a_to_g_0_O,
      O => a_to_g(0)
    );
  dp_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => dp_O,
      O => dp
    );
  btn_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(1),
      O => btn_1_INBUF
    );
  btn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_INBUF,
      O => btn_1_IBUF_761
    );
  a_to_g_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => a_to_g_1_O,
      O => a_to_g(1)
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
  a_to_g_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => a_to_g_2_O,
      O => a_to_g(2)
    );
  a_to_g_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => a_to_g_3_O,
      O => a_to_g(3)
    );
  a_to_g_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => a_to_g_4_O,
      O => a_to_g(4)
    );
  a_to_g_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => a_to_g_5_O,
      O => a_to_g(5)
    );
  a_to_g_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => a_to_g_6_O,
      O => a_to_g(6)
    );
  mclK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK,
      O => mclK_INBUF
    );
  sw_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(0),
      O => sw_0_INBUF
    );
  sw_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(1),
      O => sw_1_INBUF
    );
  sw_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(2),
      O => sw_2_INBUF
    );
  sw_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(3),
      O => sw_3_INBUF
    );
  sw_3_IFF_IFF1_RSTOR : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_3_IFF_IFF1_RST
    );
  r_q_3 : X_FF
    generic map(
      LOC => "IPAD93",
      INIT => '0'
    )
    port map (
      I => sw_3_IFF_IDDRIN_MUX_2080,
      CE => sw_3_IFF_ICEINV_2082,
      CLK => sw_3_IFF_ICLK1INV_2084,
      SET => GND,
      RST => sw_3_IFF_IFF1_RST,
      O => r_q(3)
    );
  sw_3_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IFF_IDDRIN_MUX_2080
    );
  sw_3_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_3_IFF_ICLK1INV_2084
    );
  sw_3_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_3_IFF_ICEINV_2082
    );
  sw_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(4),
      O => sw_4_INBUF
    );
  sw_4_IFF_IFF1_RSTOR : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_4_IFF_IFF1_RST
    );
  r_q_4 : X_FF
    generic map(
      LOC => "IPAD103",
      INIT => '0'
    )
    port map (
      I => sw_4_IFF_IDDRIN_MUX_2107,
      CE => sw_4_IFF_ICEINV_2109,
      CLK => sw_4_IFF_ICLK1INV_2111,
      SET => GND,
      RST => sw_4_IFF_IFF1_RST,
      O => r_q(4)
    );
  sw_4_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_4_INBUF,
      O => sw_4_IFF_IDDRIN_MUX_2107
    );
  sw_4_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_4_IFF_ICLK1INV_2111
    );
  sw_4_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_4_IFF_ICEINV_2109
    );
  sw_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(5),
      O => sw_5_INBUF
    );
  sw_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(6),
      O => sw_6_INBUF
    );
  sw_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(7),
      O => sw_7_INBUF
    );
  ld_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => ld_0_O,
      O => ld(0)
    );
  ld_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => ld_1_O,
      O => ld(1)
    );
  mclK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => mclK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => mclK_BUFGP_BUFG_S_INVNOT,
      O => mclK_BUFGP
    );
  mclK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => mclK_BUFGP_BUFG_S_INVNOT
    );
  mclK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_INBUF,
      O => mclK_BUFGP_BUFG_I0_INV
    );
  x7seg_digit_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_digit_3_F5MUX_2247,
      O => x7seg_digit(3)
    );
  x7seg_digit_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y49"
    )
    port map (
      IA => x7seg_Mmux_digit_43_2236,
      IB => x7seg_Mmux_digit_33_2245,
      SEL => x7seg_digit_3_BXINV_2238,
      O => x7seg_digit_3_F5MUX_2247
    );
  x7seg_digit_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv(19),
      O => x7seg_digit_3_BXINV_2238
    );
  x7seg_Mmux_digit_3 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => det_current_state_0_Q,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit_3_2270
    );
  x7seg_digit_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_digit_0_F5MUX_2272,
      O => x7seg_digit(0)
    );
  x7seg_digit_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => x7seg_Mmux_digit_4_2261,
      IB => x7seg_Mmux_digit_3_2270,
      SEL => x7seg_digit_0_BXINV_2263,
      O => x7seg_digit_0_F5MUX_2272
    );
  x7seg_digit_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv(19),
      O => x7seg_digit_0_BXINV_2263
    );
  x7seg_Mmux_digit_4 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => r_q(4),
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(18),
      ADR3 => r_q(0),
      O => x7seg_Mmux_digit_4_2261
    );
  x7seg_Mmux_digit_31 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => det_current_state_5_Q,
      ADR2 => det_current_state_1_Q,
      ADR3 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit_31_2295
    );
  x7seg_digit_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_digit_1_F5MUX_2297,
      O => x7seg_digit(1)
    );
  x7seg_digit_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => x7seg_Mmux_digit_41_2287,
      IB => x7seg_Mmux_digit_31_2295,
      SEL => x7seg_digit_1_BXINV_2289,
      O => x7seg_digit_1_F5MUX_2297
    );
  x7seg_digit_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv(19),
      O => x7seg_digit_1_BXINV_2289
    );
  x7seg_Mmux_digit_41 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r_q(1),
      ADR2 => r_q(5),
      ADR3 => x7seg_clkdiv(18),
      O => x7seg_Mmux_digit_41_2287
    );
  x7seg_Mmux_digit_32 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X66Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => det_current_state_2_Q,
      ADR2 => x7seg_clkdiv(18),
      ADR3 => det_current_state_5_Q,
      O => x7seg_Mmux_digit_32_2320
    );
  x7seg_digit_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_digit_2_F5MUX_2322,
      O => x7seg_digit(2)
    );
  x7seg_digit_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y49"
    )
    port map (
      IA => x7seg_Mmux_digit_42_2312,
      IB => x7seg_Mmux_digit_32_2320,
      SEL => x7seg_digit_2_BXINV_2314,
      O => x7seg_digit_2_F5MUX_2322
    );
  x7seg_digit_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7seg_clkdiv(19),
      O => x7seg_digit_2_BXINV_2314
    );
  x7seg_Mmux_digit_42 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X66Y49"
    )
    port map (
      ADR0 => r_q(6),
      ADR1 => r_q(2),
      ADR2 => x7seg_clkdiv(18),
      ADR3 => VCC,
      O => x7seg_Mmux_digit_42_2312
    );
  det_next_current_state_1_Q : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X67Y68"
    )
    port map (
      ADR0 => det_present_state_cmp_eq0000,
      ADR1 => det_present_state_FSM_FFd12_789,
      ADR2 => det_next_current_state_1_SW0_O,
      ADR3 => det_present_state_FSM_FFd4_791,
      O => det_next_current_state_1_Q_2349
    );
  det_current_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_1_Q_2349,
      O => det_current_state_1_DXMUX_2352
    );
  det_current_state_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_1_SW0_O_pack_1,
      O => det_next_current_state_1_SW0_O
    );
  det_current_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_current_state_1_CLKINV_2336
    );
  det_next_current_state_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y68"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd3_793,
      ADR1 => det_present_state_FSM_FFd10_796,
      ADR2 => det_present_state_FSM_FFd11_795,
      ADR3 => det_present_state_FSM_FFd9_794,
      O => det_next_current_state_1_SW0_O_pack_1
    );
  det_current_state_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_2_Q_2384,
      O => det_current_state_2_DXMUX_2387
    );
  det_current_state_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_2_SW0_O_pack_1,
      O => det_next_current_state_2_SW0_O
    );
  det_current_state_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_current_state_2_CLKINV_2370
    );
  det_next_current_state_5_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_6_2415,
      O => det_next_current_state_5_6_0
    );
  det_next_current_state_5_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_1_O_pack_1,
      O => det_next_current_state_5_1_O
    );
  det_current_state_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_0_Q,
      O => det_current_state_0_DXMUX_2446
    );
  det_current_state_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_0_18_SW0_O_pack_1,
      O => det_next_current_state_0_18_SW0_O
    );
  det_current_state_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_current_state_0_CLKINV_2430
    );
  det_next_current_state_5_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_35_2474,
      O => det_next_current_state_5_35_0
    );
  det_next_current_state_5_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_30_O_pack_1,
      O => det_next_current_state_5_30_O
    );
  det_current_state_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_Q,
      O => det_current_state_5_DXMUX_2505
    );
  det_current_state_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_16_O_pack_1,
      O => det_next_current_state_5_16_O
    );
  det_current_state_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_current_state_5_CLKINV_2489
    );
  det_present_state_FSM_FFd11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd11_In,
      O => det_present_state_FSM_FFd11_DYMUX_2528
    );
  det_present_state_FSM_FFd11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd11_CLKINV_2519
    );
  det_present_state_FSM_FFd2_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_SRINV_2547,
      O => det_present_state_FSM_FFd2_FFX_RST
    );
  det_present_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd2_DXMUX_2570,
      CE => VCC,
      CLK => det_present_state_FSM_FFd2_CLKINV_2546,
      SET => GND,
      RST => det_present_state_FSM_FFd2_FFX_RST,
      O => det_present_state_FSM_FFd2_770
    );
  det_present_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_In,
      O => det_present_state_FSM_FFd2_DXMUX_2570
    );
  det_present_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd1_In,
      O => det_present_state_FSM_FFd2_DYMUX_2555
    );
  det_present_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd2_SRINV_2547
    );
  det_present_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd2_CLKINV_2546
    );
  det_present_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X66Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => det_present_state_FSM_FFd4_791,
      ADR2 => btn_1_IBUF_761,
      ADR3 => btn_2_IBUF_763,
      O => det_present_state_FSM_FFd2_In
    );
  det_present_state_FSM_FFd4_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd4_SRINV_2589,
      O => det_present_state_FSM_FFd4_FFY_RST
    );
  det_present_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd4_DYMUX_2597,
      CE => VCC,
      CLK => det_present_state_FSM_FFd4_CLKINV_2588,
      SET => GND,
      RST => det_present_state_FSM_FFd4_FFY_RST,
      O => det_present_state_FSM_FFd3_793
    );
  det_present_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"00A0",
      LOC => "SLICE_X66Y69"
    )
    port map (
      ADR0 => btn_1_IBUF_761,
      ADR1 => VCC,
      ADR2 => det_present_state_FSM_FFd6_801,
      ADR3 => btn_2_IBUF_763,
      O => det_present_state_FSM_FFd4_In
    );
  det_present_state_FSM_FFd4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd4_SRINV_2589,
      O => det_present_state_FSM_FFd4_FFX_RST
    );
  det_present_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd4_DXMUX_2612,
      CE => VCC,
      CLK => det_present_state_FSM_FFd4_CLKINV_2588,
      SET => GND,
      RST => det_present_state_FSM_FFd4_FFX_RST,
      O => det_present_state_FSM_FFd4_791
    );
  det_present_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd4_In,
      O => det_present_state_FSM_FFd4_DXMUX_2612
    );
  det_present_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd3_In,
      O => det_present_state_FSM_FFd4_DYMUX_2597
    );
  det_present_state_FSM_FFd4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd4_SRINV_2589
    );
  det_present_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd4_CLKINV_2588
    );
  det_present_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"FABA",
      LOC => "SLICE_X66Y69"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd5_797,
      ADR1 => btn_1_IBUF_761,
      ADR2 => det_present_state_FSM_FFd6_801,
      ADR3 => btn_2_IBUF_763,
      O => det_present_state_FSM_FFd3_In
    );
  det_present_state_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd6_In,
      O => det_present_state_FSM_FFd6_DXMUX_2654
    );
  det_present_state_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd5_In,
      O => det_present_state_FSM_FFd6_DYMUX_2639
    );
  det_present_state_FSM_FFd6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd6_SRINV_2631
    );
  det_present_state_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd6_CLKINV_2630
    );
  det_present_state_FSM_FFd8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd8_In,
      O => det_present_state_FSM_FFd8_DXMUX_2696
    );
  det_present_state_FSM_FFd8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd7_In,
      O => det_present_state_FSM_FFd8_DYMUX_2681
    );
  det_present_state_FSM_FFd8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd8_SRINV_2673
    );
  det_present_state_FSM_FFd8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd8_CLKINV_2672
    );
  det_present_state_FSM_FFd10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd10_In,
      O => det_present_state_FSM_FFd10_DXMUX_2738
    );
  det_present_state_FSM_FFd10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd9_In,
      O => det_present_state_FSM_FFd10_DYMUX_2723
    );
  det_present_state_FSM_FFd10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd10_SRINV_2715
    );
  det_present_state_FSM_FFd10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd10_CLKINV_2714
    );
  db_delay2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => db_delay1(1),
      O => db_delay2_1_DXMUX_2762
    );
  db_delay2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => db_delay1(0),
      O => db_delay2_1_DYMUX_2754
    );
  db_delay2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => db_delay2_1_SRINV_2752
    );
  db_delay2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => db_delay2_1_CLKINV_2751
    );
  det_next_current_state_5_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_next_current_state_5_13_2790,
      O => det_next_current_state_5_13_0
    );
  det_next_current_state_5_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  db_delay3_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => db_delay2(1),
      O => db_delay3_1_DXMUX_2810
    );
  db_delay3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => db_delay2(0),
      O => db_delay3_1_DYMUX_2802
    );
  db_delay3_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => db_delay3_1_SRINV_2800
    );
  db_delay3_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => db_delay3_1_CLKINV_2799
    );
  N12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  an_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  det_present_state_FSM_FFd13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd13_BYINV_2967,
      O => det_present_state_FSM_FFd13_DYMUX_2968
    );
  det_present_state_FSM_FFd13_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => det_present_state_FSM_FFd13_BYINV_2967
    );
  det_present_state_FSM_FFd13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd13_CLKINV_2965
    );
  an_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  deb_to_det_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_3019,
      O => deb_to_det_0
    );
  deb_to_det_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  det_present_state_FSM_FFd12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd12_In,
      O => det_present_state_FSM_FFd12_DXMUX_3050
    );
  det_present_state_FSM_FFd12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_cmp_eq0000_pack_1,
      O => det_present_state_cmp_eq0000
    );
  det_present_state_FSM_FFd12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => deb_to_det_0,
      O => det_present_state_FSM_FFd12_CLKINV_3032
    );
  db_delay1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_IBUF_763,
      O => db_delay1_1_DXMUX_3074
    );
  db_delay1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_IBUF_761,
      O => db_delay1_1_DYMUX_3066
    );
  db_delay1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => db_delay1_1_SRINV_3064
    );
  db_delay1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => db_delay1_1_CLKINV_3063
    );
  cd_q_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DYMUX_846,
      CE => VCC,
      CLK => cd_q_0_CLKINV_829,
      SET => GND,
      RST => cd_q_0_SRINV_830,
      O => cd_q(1)
    );
  cd_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X55Y77"
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
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DXMUX_868,
      CE => VCC,
      CLK => cd_q_0_CLKINV_829,
      SET => GND,
      RST => cd_q_0_SRINV_830,
      O => cd_q(0)
    );
  cd_q_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DXMUX_924,
      CE => VCC,
      CLK => cd_q_2_CLKINV_883,
      SET => GND,
      RST => cd_q_2_SRINV_884,
      O => cd_q(2)
    );
  cd_q_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DYMUX_961,
      CE => VCC,
      CLK => cd_q_4_CLKINV_939,
      SET => GND,
      RST => cd_q_4_SRINV_940,
      O => cd_q(5)
    );
  cd_q_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DXMUX_980,
      CE => VCC,
      CLK => cd_q_4_CLKINV_939,
      SET => GND,
      RST => cd_q_4_SRINV_940,
      O => cd_q(4)
    );
  cd_q_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DYMUX_1017,
      CE => VCC,
      CLK => cd_q_6_CLKINV_995,
      SET => GND,
      RST => cd_q_6_SRINV_996,
      O => cd_q(7)
    );
  cd_q_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DXMUX_1036,
      CE => VCC,
      CLK => cd_q_6_CLKINV_995,
      SET => GND,
      RST => cd_q_6_SRINV_996,
      O => cd_q(6)
    );
  cd_q_11 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DYMUX_1129,
      CE => VCC,
      CLK => cd_q_10_CLKINV_1107,
      SET => GND,
      RST => cd_q_10_SRINV_1108,
      O => cd_q(11)
    );
  cd_q_10 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DXMUX_1148,
      CE => VCC,
      CLK => cd_q_10_CLKINV_1107,
      SET => GND,
      RST => cd_q_10_SRINV_1108,
      O => cd_q(10)
    );
  cd_q_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DYMUX_1185,
      CE => VCC,
      CLK => cd_q_12_CLKINV_1163,
      SET => GND,
      RST => cd_q_12_SRINV_1164,
      O => cd_q(13)
    );
  cd_q_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DXMUX_1204,
      CE => VCC,
      CLK => cd_q_12_CLKINV_1163,
      SET => GND,
      RST => cd_q_12_SRINV_1164,
      O => cd_q(12)
    );
  cd_q_15 : X_FF
    generic map(
      LOC => "SLICE_X55Y84",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DYMUX_1241,
      CE => VCC,
      CLK => cd_q_14_CLKINV_1219,
      SET => GND,
      RST => cd_q_14_SRINV_1220,
      O => cd_q(15)
    );
  x7seg_clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y59",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_0_DYMUX_1341,
      CE => VCC,
      CLK => x7seg_clkdiv_0_CLKINV_1324,
      SET => GND,
      RST => x7seg_clkdiv_0_SRINV_1325,
      O => x7seg_clkdiv(1)
    );
  x7seg_Mcount_clkdiv_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(0),
      O => x7seg_Mcount_clkdiv_lut(0)
    );
  x7seg_clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X65Y59",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_0_DXMUX_1363,
      CE => VCC,
      CLK => x7seg_clkdiv_0_CLKINV_1324,
      SET => GND,
      RST => x7seg_clkdiv_0_SRINV_1325,
      O => x7seg_clkdiv(0)
    );
  x7seg_clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y60",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_2_DYMUX_1400,
      CE => VCC,
      CLK => x7seg_clkdiv_2_CLKINV_1378,
      SET => GND,
      RST => x7seg_clkdiv_2_SRINV_1379,
      O => x7seg_clkdiv(3)
    );
  x7seg_clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y60",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_2_DXMUX_1419,
      CE => VCC,
      CLK => x7seg_clkdiv_2_CLKINV_1378,
      SET => GND,
      RST => x7seg_clkdiv_2_SRINV_1379,
      O => x7seg_clkdiv(2)
    );
  x7seg_clkdiv_5 : X_FF
    generic map(
      LOC => "SLICE_X65Y61",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_4_DYMUX_1456,
      CE => VCC,
      CLK => x7seg_clkdiv_4_CLKINV_1434,
      SET => GND,
      RST => x7seg_clkdiv_4_SRINV_1435,
      O => x7seg_clkdiv(5)
    );
  x7seg_clkdiv_9 : X_FF
    generic map(
      LOC => "SLICE_X65Y63",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_8_DYMUX_1568,
      CE => VCC,
      CLK => x7seg_clkdiv_8_CLKINV_1546,
      SET => GND,
      RST => x7seg_clkdiv_8_SRINV_1547,
      O => x7seg_clkdiv(9)
    );
  x7seg_clkdiv_8 : X_FF
    generic map(
      LOC => "SLICE_X65Y63",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_8_DXMUX_1587,
      CE => VCC,
      CLK => x7seg_clkdiv_8_CLKINV_1546,
      SET => GND,
      RST => x7seg_clkdiv_8_SRINV_1547,
      O => x7seg_clkdiv(8)
    );
  x7seg_clkdiv_11 : X_FF
    generic map(
      LOC => "SLICE_X65Y64",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_10_DYMUX_1624,
      CE => VCC,
      CLK => x7seg_clkdiv_10_CLKINV_1602,
      SET => GND,
      RST => x7seg_clkdiv_10_SRINV_1603,
      O => x7seg_clkdiv(11)
    );
  x7seg_clkdiv_10 : X_FF
    generic map(
      LOC => "SLICE_X65Y64",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_10_DXMUX_1643,
      CE => VCC,
      CLK => x7seg_clkdiv_10_CLKINV_1602,
      SET => GND,
      RST => x7seg_clkdiv_10_SRINV_1603,
      O => x7seg_clkdiv(10)
    );
  x7seg_clkdiv_13 : X_FF
    generic map(
      LOC => "SLICE_X65Y65",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_12_DYMUX_1680,
      CE => VCC,
      CLK => x7seg_clkdiv_12_CLKINV_1658,
      SET => GND,
      RST => x7seg_clkdiv_12_SRINV_1659,
      O => x7seg_clkdiv(13)
    );
  x7seg_clkdiv_14 : X_FF
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_14_DXMUX_1755,
      CE => VCC,
      CLK => x7seg_clkdiv_14_CLKINV_1714,
      SET => GND,
      RST => x7seg_clkdiv_14_SRINV_1715,
      O => x7seg_clkdiv(14)
    );
  x7seg_clkdiv_17 : X_FF
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_16_DYMUX_1792,
      CE => VCC,
      CLK => x7seg_clkdiv_16_CLKINV_1770,
      SET => GND,
      RST => x7seg_clkdiv_16_SRINV_1771,
      O => x7seg_clkdiv(17)
    );
  x7seg_clkdiv_16 : X_FF
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_16_DXMUX_1811,
      CE => VCC,
      CLK => x7seg_clkdiv_16_CLKINV_1770,
      SET => GND,
      RST => x7seg_clkdiv_16_SRINV_1771,
      O => x7seg_clkdiv(16)
    );
  x7seg_clkdiv_19_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => x7seg_clkdiv(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_19_rt_1834
    );
  x7seg_clkdiv_19 : X_FF
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_18_DYMUX_1839,
      CE => VCC,
      CLK => x7seg_clkdiv_18_CLKINV_1825,
      SET => GND,
      RST => x7seg_clkdiv_18_SRINV_1826,
      O => x7seg_clkdiv(19)
    );
  x7seg_clkdiv_18 : X_FF
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => '0'
    )
    port map (
      I => x7seg_clkdiv_18_DXMUX_1860,
      CE => VCC,
      CLK => x7seg_clkdiv_18_CLKINV_1825,
      SET => GND,
      RST => x7seg_clkdiv_18_SRINV_1826,
      O => x7seg_clkdiv(18)
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_763
    );
  sw_0_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IFF_IDDRIN_MUX_1999
    );
  sw_0_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_0_IFF_ICLK1INV_2003
    );
  sw_0_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_0_IFF_ICEINV_2001
    );
  r_q_0 : X_FF
    generic map(
      LOC => "IPAD78",
      INIT => '0'
    )
    port map (
      I => sw_0_IFF_IDDRIN_MUX_1999,
      CE => sw_0_IFF_ICEINV_2001,
      CLK => sw_0_IFF_ICLK1INV_2003,
      SET => GND,
      RST => sw_0_IFF_IFF1_RSTAND_2008,
      O => r_q(0)
    );
  sw_0_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_0_IFF_IFF1_RSTAND_2008
    );
  sw_1_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IFF_IDDRIN_MUX_2026
    );
  sw_1_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_1_IFF_ICLK1INV_2030
    );
  sw_1_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_1_IFF_ICEINV_2028
    );
  r_q_1 : X_FF
    generic map(
      LOC => "IPAD83",
      INIT => '0'
    )
    port map (
      I => sw_1_IFF_IDDRIN_MUX_2026,
      CE => sw_1_IFF_ICEINV_2028,
      CLK => sw_1_IFF_ICLK1INV_2030,
      SET => GND,
      RST => sw_1_IFF_IFF1_RSTAND_2035,
      O => r_q(1)
    );
  sw_1_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_1_IFF_IFF1_RSTAND_2035
    );
  sw_2_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IFF_IDDRIN_MUX_2053
    );
  sw_2_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_2_IFF_ICLK1INV_2057
    );
  sw_2_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_2_IFF_ICEINV_2055
    );
  r_q_2 : X_FF
    generic map(
      LOC => "IPAD88",
      INIT => '0'
    )
    port map (
      I => sw_2_IFF_IDDRIN_MUX_2053,
      CE => sw_2_IFF_ICEINV_2055,
      CLK => sw_2_IFF_ICLK1INV_2057,
      SET => GND,
      RST => sw_2_IFF_IFF1_RSTAND_2062,
      O => r_q(2)
    );
  sw_2_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_2_IFF_IFF1_RSTAND_2062
    );
  sw_5_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_5_INBUF,
      O => sw_5_IFF_IDDRIN_MUX_2134
    );
  sw_5_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_5_IFF_ICLK1INV_2138
    );
  sw_5_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_5_IFF_ICEINV_2136
    );
  r_q_5 : X_FF
    generic map(
      LOC => "IPAD98",
      INIT => '0'
    )
    port map (
      I => sw_5_IFF_IDDRIN_MUX_2134,
      CE => sw_5_IFF_ICEINV_2136,
      CLK => sw_5_IFF_ICLK1INV_2138,
      SET => GND,
      RST => sw_5_IFF_IFF1_RSTAND_2143,
      O => r_q(5)
    );
  sw_5_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_5_IFF_IFF1_RSTAND_2143
    );
  sw_6_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_6_INBUF,
      O => sw_6_IFF_IDDRIN_MUX_2161
    );
  sw_6_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_6_IFF_ICLK1INV_2165
    );
  sw_6_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_6_IFF_ICEINV_2163
    );
  r_q_6 : X_FF
    generic map(
      LOC => "IPAD108",
      INIT => '0'
    )
    port map (
      I => sw_6_IFF_IDDRIN_MUX_2161,
      CE => sw_6_IFF_ICEINV_2163,
      CLK => sw_6_IFF_ICLK1INV_2165,
      SET => GND,
      RST => sw_6_IFF_IFF1_RSTAND_2170,
      O => r_q(6)
    );
  sw_6_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_6_IFF_IFF1_RSTAND_2170
    );
  sw_7_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_7_INBUF,
      O => sw_7_IFF_IDDRIN_MUX_2188
    );
  sw_7_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclK_BUFGP,
      O => sw_7_IFF_ICLK1INV_2192
    );
  sw_7_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => sw_7_IFF_ICEINV_2190
    );
  r_q_7 : X_FF
    generic map(
      LOC => "IPAD112",
      INIT => '0'
    )
    port map (
      I => sw_7_IFF_IDDRIN_MUX_2188,
      CE => sw_7_IFF_ICEINV_2190,
      CLK => sw_7_IFF_ICLK1INV_2192,
      SET => GND,
      RST => sw_7_IFF_IFF1_RSTAND_2197,
      O => r_q(7)
    );
  sw_7_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => sw_7_IFF_IFF1_RSTAND_2197
    );
  x7seg_Mmux_digit_43 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X67Y49"
    )
    port map (
      ADR0 => r_q(3),
      ADR1 => x7seg_clkdiv(18),
      ADR2 => VCC,
      ADR3 => r_q(7),
      O => x7seg_Mmux_digit_43_2236
    );
  x7seg_Mmux_digit_33 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X67Y49"
    )
    port map (
      ADR0 => det_current_state_5_Q,
      ADR1 => x7seg_clkdiv(18),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_Mmux_digit_33_2245
    );
  det_current_state_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y68",
      INIT => '0'
    )
    port map (
      I => det_current_state_1_DXMUX_2352,
      CE => VCC,
      CLK => det_current_state_1_CLKINV_2336,
      SET => GND,
      RST => det_current_state_1_FFX_RSTAND_2357,
      O => det_current_state_1_Q
    );
  det_current_state_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_current_state_1_FFX_RSTAND_2357
    );
  det_next_current_state_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd6_801,
      ADR1 => det_present_state_FSM_FFd8_800,
      ADR2 => VCC,
      ADR3 => det_present_state_FSM_FFd3_793,
      O => det_next_current_state_2_SW0_O_pack_1
    );
  det_next_current_state_2_Q : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd4_791,
      ADR1 => det_present_state_FSM_FFd7_798,
      ADR2 => det_present_state_FSM_FFd5_797,
      ADR3 => det_next_current_state_2_SW0_O,
      O => det_next_current_state_2_Q_2384
    );
  det_current_state_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => '0'
    )
    port map (
      I => det_current_state_2_DXMUX_2387,
      CE => VCC,
      CLK => det_current_state_2_CLKINV_2370,
      SET => GND,
      RST => det_current_state_2_FFX_RSTAND_2392,
      O => det_current_state_2_Q
    );
  det_current_state_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_current_state_2_FFX_RSTAND_2392
    );
  det_next_current_state_5_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X67Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => det_present_state_FSM_FFd5_797,
      ADR2 => VCC,
      ADR3 => det_present_state_FSM_FFd7_798,
      O => det_next_current_state_5_1_O_pack_1
    );
  det_next_current_state_5_6 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y66"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd3_793,
      ADR1 => det_present_state_FSM_FFd9_794,
      ADR2 => det_next_current_state_5_1_O,
      ADR3 => det_present_state_FSM_FFd11_795,
      O => det_next_current_state_5_6_2415
    );
  det_next_current_state_0_18_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X66Y64"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd2_770,
      ADR1 => det_present_state_FSM_FFd13_806,
      ADR2 => det_present_state_FSM_FFd9_794,
      ADR3 => det_present_state_FSM_FFd6_801,
      O => det_next_current_state_0_18_SW0_O_pack_1
    );
  det_next_current_state_0_18 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X66Y64"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd1_779,
      ADR1 => det_present_state_FSM_FFd10_796,
      ADR2 => N14_0,
      ADR3 => det_next_current_state_0_18_SW0_O,
      O => det_next_current_state_0_Q
    );
  det_current_state_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y64",
      INIT => '0'
    )
    port map (
      I => det_current_state_0_DXMUX_2446,
      CE => VCC,
      CLK => det_current_state_0_CLKINV_2430,
      SET => GND,
      RST => det_current_state_0_FFX_RSTAND_2451,
      O => det_current_state_0_Q
    );
  det_current_state_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_current_state_0_FFX_RSTAND_2451
    );
  det_next_current_state_5_30 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X67Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => det_present_state_FSM_FFd13_806,
      ADR3 => det_present_state_FSM_FFd12_789,
      O => det_next_current_state_5_30_O_pack_1
    );
  det_next_current_state_5_35 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y67"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd6_801,
      ADR1 => det_present_state_FSM_FFd2_770,
      ADR2 => det_present_state_FSM_FFd1_779,
      ADR3 => det_next_current_state_5_30_O,
      O => det_next_current_state_5_35_2474
    );
  det_next_current_state_5_16 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X66Y66"
    )
    port map (
      ADR0 => det_next_current_state_5_13_0,
      ADR1 => det_present_state_FSM_FFd4_791,
      ADR2 => det_present_state_FSM_FFd8_800,
      ADR3 => det_present_state_FSM_FFd10_796,
      O => det_next_current_state_5_16_O_pack_1
    );
  det_next_current_state_5_47 : X_LUT4
    generic map(
      INIT => X"FDFC",
      LOC => "SLICE_X66Y66"
    )
    port map (
      ADR0 => det_present_state_cmp_eq0000,
      ADR1 => det_next_current_state_5_16_O,
      ADR2 => det_next_current_state_5_6_0,
      ADR3 => det_next_current_state_5_35_0,
      O => det_next_current_state_5_Q
    );
  det_current_state_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y66",
      INIT => '0'
    )
    port map (
      I => det_current_state_5_DXMUX_2505,
      CE => VCC,
      CLK => det_current_state_5_CLKINV_2489,
      SET => GND,
      RST => det_current_state_5_FFX_RSTAND_2510,
      O => det_current_state_5_Q
    );
  det_current_state_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_current_state_5_FFX_RSTAND_2510
    );
  det_present_state_FSM_FFd11_In1 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X64Y67"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd1_779,
      ADR1 => det_present_state_FSM_FFd13_806,
      ADR2 => det_present_state_FSM_FFd2_770,
      ADR3 => det_present_state_cmp_eq0000,
      O => det_present_state_FSM_FFd11_In
    );
  det_present_state_FSM_FFd11 : X_FF
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd11_DYMUX_2528,
      CE => VCC,
      CLK => det_present_state_FSM_FFd11_CLKINV_2519,
      SET => GND,
      RST => det_present_state_FSM_FFd11_FFY_RSTAND_2533,
      O => det_present_state_FSM_FFd11_795
    );
  det_present_state_FSM_FFd11_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd11_FFY_RSTAND_2533
    );
  det_present_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"EAEE",
      LOC => "SLICE_X66Y68"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd3_793,
      ADR1 => det_present_state_FSM_FFd4_791,
      ADR2 => btn_1_IBUF_761,
      ADR3 => btn_2_IBUF_763,
      O => det_present_state_FSM_FFd1_In
    );
  det_present_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd2_DYMUX_2555,
      CE => VCC,
      CLK => det_present_state_FSM_FFd2_CLKINV_2546,
      SET => GND,
      RST => det_present_state_FSM_FFd2_SRINV_2547,
      O => det_present_state_FSM_FFd1_779
    );
  det_present_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"FFA2",
      LOC => "SLICE_X66Y67"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd8_800,
      ADR1 => btn_2_IBUF_763,
      ADR2 => btn_1_IBUF_761,
      ADR3 => det_present_state_FSM_FFd7_798,
      O => det_present_state_FSM_FFd5_In
    );
  det_present_state_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd6_DYMUX_2639,
      CE => VCC,
      CLK => det_present_state_FSM_FFd6_CLKINV_2630,
      SET => GND,
      RST => det_present_state_FSM_FFd6_SRINV_2631,
      O => det_present_state_FSM_FFd5_797
    );
  det_present_state_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X66Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => btn_2_IBUF_763,
      ADR2 => det_present_state_FSM_FFd8_800,
      ADR3 => btn_1_IBUF_761,
      O => det_present_state_FSM_FFd6_In
    );
  det_present_state_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd6_DXMUX_2654,
      CE => VCC,
      CLK => det_present_state_FSM_FFd6_CLKINV_2630,
      SET => GND,
      RST => det_present_state_FSM_FFd6_SRINV_2631,
      O => det_present_state_FSM_FFd6_801
    );
  det_present_state_FSM_FFd7_In1 : X_LUT4
    generic map(
      INIT => X"EFAA",
      LOC => "SLICE_X67Y64"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd9_794,
      ADR1 => btn_1_IBUF_761,
      ADR2 => btn_2_IBUF_763,
      ADR3 => det_present_state_FSM_FFd10_796,
      O => det_present_state_FSM_FFd7_In
    );
  det_present_state_FSM_FFd7 : X_FF
    generic map(
      LOC => "SLICE_X67Y64",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd8_DYMUX_2681,
      CE => VCC,
      CLK => det_present_state_FSM_FFd8_CLKINV_2672,
      SET => GND,
      RST => det_present_state_FSM_FFd8_SRINV_2673,
      O => det_present_state_FSM_FFd7_798
    );
  det_present_state_FSM_FFd8_In1 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X67Y64"
    )
    port map (
      ADR0 => btn_2_IBUF_763,
      ADR1 => btn_1_IBUF_761,
      ADR2 => VCC,
      ADR3 => det_present_state_FSM_FFd10_796,
      O => det_present_state_FSM_FFd8_In
    );
  det_present_state_FSM_FFd8 : X_FF
    generic map(
      LOC => "SLICE_X67Y64",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd8_DXMUX_2696,
      CE => VCC,
      CLK => det_present_state_FSM_FFd8_CLKINV_2672,
      SET => GND,
      RST => det_present_state_FSM_FFd8_SRINV_2673,
      O => det_present_state_FSM_FFd8_800
    );
  det_present_state_FSM_FFd9_In1 : X_LUT4
    generic map(
      INIT => X"F8FC",
      LOC => "SLICE_X67Y69"
    )
    port map (
      ADR0 => btn_2_IBUF_763,
      ADR1 => det_present_state_FSM_FFd12_789,
      ADR2 => det_present_state_FSM_FFd11_795,
      ADR3 => btn_1_IBUF_761,
      O => det_present_state_FSM_FFd9_In
    );
  det_present_state_FSM_FFd9 : X_FF
    generic map(
      LOC => "SLICE_X67Y69",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd10_DYMUX_2723,
      CE => VCC,
      CLK => det_present_state_FSM_FFd10_CLKINV_2714,
      SET => GND,
      RST => det_present_state_FSM_FFd10_SRINV_2715,
      O => det_present_state_FSM_FFd9_794
    );
  det_present_state_FSM_FFd10_In1 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X67Y69"
    )
    port map (
      ADR0 => btn_2_IBUF_763,
      ADR1 => det_present_state_FSM_FFd12_789,
      ADR2 => VCC,
      ADR3 => btn_1_IBUF_761,
      O => det_present_state_FSM_FFd10_In
    );
  det_present_state_FSM_FFd10 : X_FF
    generic map(
      LOC => "SLICE_X67Y69",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd10_DXMUX_2738,
      CE => VCC,
      CLK => det_present_state_FSM_FFd10_CLKINV_2714,
      SET => GND,
      RST => det_present_state_FSM_FFd10_SRINV_2715,
      O => det_present_state_FSM_FFd10_796
    );
  db_delay2_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => '0'
    )
    port map (
      I => db_delay2_1_DYMUX_2754,
      CE => VCC,
      CLK => db_delay2_1_CLKINV_2751,
      SET => GND,
      RST => db_delay2_1_SRINV_2752,
      O => db_delay2(0)
    );
  db_delay2_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => '0'
    )
    port map (
      I => db_delay2_1_DXMUX_2762,
      CE => VCC,
      CLK => db_delay2_1_CLKINV_2751,
      SET => GND,
      RST => db_delay2_1_SRINV_2752,
      O => db_delay2(1)
    );
  det_next_current_state_0_18_SW1 : X_LUT4
    generic map(
      INIT => X"EAFA",
      LOC => "SLICE_X66Y65"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd5_797,
      ADR1 => btn_2_IBUF_763,
      ADR2 => det_present_state_FSM_FFd12_789,
      ADR3 => btn_1_IBUF_761,
      O => N14
    );
  det_next_current_state_5_13 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X66Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => btn_1_IBUF_761,
      ADR3 => btn_2_IBUF_763,
      O => det_next_current_state_5_13_2790
    );
  db_delay3_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => '0'
    )
    port map (
      I => db_delay3_1_DYMUX_2802,
      CE => VCC,
      CLK => db_delay3_1_CLKINV_2799,
      SET => GND,
      RST => db_delay3_1_SRINV_2800,
      O => db_delay3(0)
    );
  db_delay3_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => '0'
    )
    port map (
      I => db_delay3_1_DXMUX_2810,
      CE => VCC,
      CLK => db_delay3_1_CLKINV_2799,
      SET => GND,
      RST => db_delay3_1_SRINV_2800,
      O => db_delay3(1)
    );
  x7seg_an_1_mux000151_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => r_q(5),
      ADR1 => r_q(4),
      ADR2 => r_q(6),
      ADR3 => r_q(7),
      O => N12
    );
  x7seg_an_1_mux000151_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => N12_0,
      ADR1 => det_current_state_2_Q,
      ADR2 => det_current_state_5_Q,
      ADR3 => det_current_state_0_Q,
      O => N10_pack_1
    );
  x7seg_an_1_mux000151 : X_LUT4
    generic map(
      INIT => X"FF73",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => det_current_state_1_Q,
      ADR1 => x7seg_clkdiv(18),
      ADR2 => N10,
      ADR3 => x7seg_clkdiv(19),
      O => an_1_OBUF_2850
    );
  x7seg_Mrom_a_to_g111 : X_LUT4
    generic map(
      INIT => X"0854",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => x7seg_digit(3),
      ADR1 => x7seg_digit(0),
      ADR2 => x7seg_digit(1),
      ADR3 => x7seg_digit(2),
      O => a_to_g_1_OBUF_2867
    );
  x7seg_Mrom_a_to_g61 : X_LUT4
    generic map(
      INIT => X"0984",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => x7seg_digit(3),
      ADR1 => x7seg_digit(0),
      ADR2 => x7seg_digit(1),
      ADR3 => x7seg_digit(2),
      O => a_to_g_6_OBUF_2874
    );
  x7seg_Mrom_a_to_g11 : X_LUT4
    generic map(
      INIT => X"0921",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => x7seg_digit(2),
      ADR1 => x7seg_digit(1),
      ADR2 => x7seg_digit(3),
      ADR3 => x7seg_digit(0),
      O => a_to_g_0_OBUF_2891
    );
  x7seg_Mrom_a_to_g31 : X_LUT4
    generic map(
      INIT => X"8942",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => x7seg_digit(2),
      ADR1 => x7seg_digit(1),
      ADR2 => x7seg_digit(3),
      ADR3 => x7seg_digit(0),
      O => a_to_g_3_OBUF_2898
    );
  x7seg_Mrom_a_to_g21 : X_LUT4
    generic map(
      INIT => X"1F02",
      LOC => "SLICE_X67Y63"
    )
    port map (
      ADR0 => x7seg_digit(2),
      ADR1 => x7seg_digit(1),
      ADR2 => x7seg_digit(3),
      ADR3 => x7seg_digit(0),
      O => a_to_g_2_OBUF_2915
    );
  x7seg_Mrom_a_to_g51 : X_LUT4
    generic map(
      INIT => X"C2A8",
      LOC => "SLICE_X67Y63"
    )
    port map (
      ADR0 => x7seg_digit(2),
      ADR1 => x7seg_digit(1),
      ADR2 => x7seg_digit(3),
      ADR3 => x7seg_digit(0),
      O => a_to_g_5_OBUF_2922
    );
  x7seg_Mrom_a_to_g41 : X_LUT4
    generic map(
      INIT => X"C410",
      LOC => "SLICE_X66Y62"
    )
    port map (
      ADR0 => x7seg_digit(0),
      ADR1 => x7seg_digit(3),
      ADR2 => x7seg_digit(1),
      ADR3 => x7seg_digit(2),
      O => a_to_g_4_OBUF_2934
    );
  x7seg_an_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X66Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(19),
      ADR2 => x7seg_clkdiv(18),
      ADR3 => VCC,
      O => an_0_OBUF_2950
    );
  x7seg_an_3_mux00011 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X66Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(19),
      ADR2 => x7seg_clkdiv(18),
      ADR3 => det_current_state_5_Q,
      O => an_3_OBUF_2958
    );
  det_present_state_FSM_FFd13 : X_FF
    generic map(
      LOC => "SLICE_X64Y65",
      INIT => '1'
    )
    port map (
      I => det_present_state_FSM_FFd13_DYMUX_2968,
      CE => VCC,
      CLK => det_present_state_FSM_FFd13_CLKINV_2965,
      SET => det_present_state_FSM_FFd13_FFY_SET,
      RST => GND,
      O => det_present_state_FSM_FFd13_806
    );
  det_present_state_FSM_FFd13_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd13_FFY_SET
    );
  x7seg_an_2_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X67Y71"
    )
    port map (
      ADR0 => det_current_state_0_Q,
      ADR1 => det_current_state_1_Q,
      ADR2 => det_current_state_2_Q,
      ADR3 => VCC,
      O => N4_pack_1
    );
  x7seg_an_2_mux0001 : X_LUT4
    generic map(
      INIT => X"CFDF",
      LOC => "SLICE_X67Y71"
    )
    port map (
      ADR0 => det_current_state_5_Q,
      ADR1 => x7seg_clkdiv(18),
      ADR2 => x7seg_clkdiv(19),
      ADR3 => N4,
      O => an_2_OBUF_2995
    );
  deb_to_det_SW0 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X65Y74"
    )
    port map (
      ADR0 => db_delay2(0),
      ADR1 => db_delay3(0),
      ADR2 => db_delay1(0),
      ADR3 => VCC,
      O => N01_pack_1
    );
  deb_to_det : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X65Y74"
    )
    port map (
      ADR0 => db_delay1(1),
      ADR1 => db_delay2(1),
      ADR2 => N01,
      ADR3 => db_delay3(1),
      O => deb_to_det_3019
    );
  det_present_state_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => btn_1_IBUF_761,
      ADR1 => btn_2_IBUF_763,
      ADR2 => VCC,
      ADR3 => VCC,
      O => det_present_state_cmp_eq0000_pack_1
    );
  det_present_state_FSM_FFd12_In1 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => det_present_state_FSM_FFd1_779,
      ADR1 => det_present_state_FSM_FFd13_806,
      ADR2 => det_present_state_FSM_FFd2_770,
      ADR3 => det_present_state_cmp_eq0000,
      O => det_present_state_FSM_FFd12_In
    );
  det_present_state_FSM_FFd12 : X_FF
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => '0'
    )
    port map (
      I => det_present_state_FSM_FFd12_DXMUX_3050,
      CE => VCC,
      CLK => det_present_state_FSM_FFd12_CLKINV_3032,
      SET => GND,
      RST => det_present_state_FSM_FFd12_FFX_RSTAND_3055,
      O => det_present_state_FSM_FFd12_789
    );
  det_present_state_FSM_FFd12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_IBUF_699,
      O => det_present_state_FSM_FFd12_FFX_RSTAND_3055
    );
  db_delay1_0 : X_FF
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => '0'
    )
    port map (
      I => db_delay1_1_DYMUX_3066,
      CE => VCC,
      CLK => db_delay1_1_CLKINV_3063,
      SET => GND,
      RST => db_delay1_1_SRINV_3064,
      O => db_delay1(0)
    );
  db_delay1_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => '0'
    )
    port map (
      I => db_delay1_1_DXMUX_3074,
      CE => VCC,
      CLK => db_delay1_1_CLKINV_3063,
      SET => GND,
      RST => db_delay1_1_SRINV_3064,
      O => db_delay1(1)
    );
  cd_q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y77"
    )
    port map (
      ADR0 => cd_q(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_0_G
    );
  cd_q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => cd_q(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_2_F
    );
  cd_q_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(3),
      O => cd_q_2_G
    );
  cd_q_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(4),
      ADR3 => VCC,
      O => cd_q_4_F
    );
  cd_q_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y79"
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
      INIT => X"F0F0",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(6),
      ADR3 => VCC,
      O => cd_q_6_F
    );
  cd_q_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_6_G
    );
  cd_q_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y81"
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
      INIT => X"FF00",
      LOC => "SLICE_X55Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(9),
      O => cd_q_8_G
    );
  cd_q_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(10),
      ADR3 => VCC,
      O => cd_q_10_F
    );
  cd_q_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_10_G
    );
  cd_q_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y83"
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
      INIT => X"FF00",
      LOC => "SLICE_X55Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(13),
      O => cd_q_12_G
    );
  cd_q_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y84"
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
      INIT => X"AAAA",
      LOC => "SLICE_X55Y84"
    )
    port map (
      ADR0 => cd_q(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_14_G
    );
  cd_q_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_16_F
    );
  x7seg_clkdiv_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => x7seg_clkdiv(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_0_G
    );
  x7seg_clkdiv_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(2),
      O => x7seg_clkdiv_2_F
    );
  x7seg_clkdiv_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(3),
      ADR3 => VCC,
      O => x7seg_clkdiv_2_G
    );
  x7seg_clkdiv_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y61"
    )
    port map (
      ADR0 => x7seg_clkdiv(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_4_F
    );
  x7seg_clkdiv_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_4_G
    );
  x7seg_clkdiv_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(6),
      O => x7seg_clkdiv_6_F
    );
  x7seg_clkdiv_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(7),
      ADR3 => VCC,
      O => x7seg_clkdiv_6_G
    );
  x7seg_clkdiv_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y63"
    )
    port map (
      ADR0 => x7seg_clkdiv(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_8_F
    );
  x7seg_clkdiv_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y63"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_8_G
    );
  x7seg_clkdiv_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(10),
      O => x7seg_clkdiv_10_F
    );
  x7seg_clkdiv_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(11),
      ADR3 => VCC,
      O => x7seg_clkdiv_10_G
    );
  x7seg_clkdiv_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y65"
    )
    port map (
      ADR0 => x7seg_clkdiv(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_12_F
    );
  x7seg_clkdiv_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_12_G
    );
  x7seg_clkdiv_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(14),
      ADR3 => VCC,
      O => x7seg_clkdiv_14_F
    );
  x7seg_clkdiv_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7seg_clkdiv(15),
      ADR3 => VCC,
      O => x7seg_clkdiv_14_G
    );
  x7seg_clkdiv_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y67"
    )
    port map (
      ADR0 => x7seg_clkdiv(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_16_F
    );
  x7seg_clkdiv_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7seg_clkdiv(17),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7seg_clkdiv_16_G
    );
  x7seg_clkdiv_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7seg_clkdiv(18),
      O => x7seg_clkdiv_18_F
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_2950,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_2850,
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OBUF_2995,
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_2958,
      O => an_3_O
    );
  a_to_g_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_0_OBUF_2891,
      O => a_to_g_0_O
    );
  dp_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => dp_OUTPUT_OFF_O1INV_1920,
      O => dp_O
    );
  dp_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => dp_OUTPUT_OFF_O1INV_1920
    );
  a_to_g_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_1_OBUF_2867,
      O => a_to_g_1_O
    );
  a_to_g_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_2_OBUF_2915,
      O => a_to_g_2_O
    );
  a_to_g_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_3_OBUF_2898,
      O => a_to_g_3_O
    );
  a_to_g_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_4_OBUF_2934,
      O => a_to_g_4_O
    );
  a_to_g_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_5_OBUF_2922,
      O => a_to_g_5_O
    );
  a_to_g_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_6_OBUF_2874,
      O => a_to_g_6_O
    );
  ld_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd2_770,
      O => ld_0_O
    );
  ld_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 555 ps
    )
    port map (
      I => det_present_state_FSM_FFd1_779,
      O => ld_1_O
    );
  NlwBlock_detector_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_detector_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

