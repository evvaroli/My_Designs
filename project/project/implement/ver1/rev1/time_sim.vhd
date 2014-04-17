--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Wed Apr 16 20:19:41 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf nes_driver_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true nes_driver_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: nes_driver_top.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of nes_driver_top is
  signal nes_Mcount_counter_reg_cy_1_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_Q : STD_LOGIC; 
  signal nes_start_reg_475 : STD_LOGIC; 
  signal nes_sel_reg_476 : STD_LOGIC; 
  signal nes_right_reg_477 : STD_LOGIC; 
  signal nes_up_reg_478 : STD_LOGIC; 
  signal btn_0_IBUF_479 : STD_LOGIC; 
  signal nes_down_reg_480 : STD_LOGIC; 
  signal btn_1_IBUF_481 : STD_LOGIC; 
  signal nes_left_reg_482 : STD_LOGIC; 
  signal btn_2_IBUF_483 : STD_LOGIC; 
  signal btn_3_IBUF_484 : STD_LOGIC; 
  signal ja1_IBUF_485 : STD_LOGIC; 
  signal nes_a_reg_489 : STD_LOGIC; 
  signal nes_b_reg_490 : STD_LOGIC; 
  signal cd_q_01 : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal nes_N3_0 : STD_LOGIC; 
  signal nes_counter_reg_not0001_0 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000_499 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq000021_SW6_O : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_0 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal cd_Mcount_q_lut_0_0 : STD_LOGIC; 
  signal nes_Result_0_XORF_553 : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ONE_552 : STD_LOGIC; 
  signal nes_Result_0_CYINIT_551 : STD_LOGIC; 
  signal nes_Result_0_CYSELF_542 : STD_LOGIC; 
  signal nes_Result_0_BXINV_540 : STD_LOGIC; 
  signal nes_Result_0_XORG_538 : STD_LOGIC; 
  signal nes_Result_0_CYMUXG_537 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_0_Q : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ZERO_535 : STD_LOGIC; 
  signal nes_Result_0_CYSELG_526 : STD_LOGIC; 
  signal nes_Result_0_G : STD_LOGIC; 
  signal nes_Result_2_XORF_591 : STD_LOGIC; 
  signal nes_Result_2_CYINIT_590 : STD_LOGIC; 
  signal nes_Result_2_F : STD_LOGIC; 
  signal nes_Result_2_XORG_579 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_Q : STD_LOGIC; 
  signal nes_Result_2_CYSELF_577 : STD_LOGIC; 
  signal nes_Result_2_CYMUXFAST_576 : STD_LOGIC; 
  signal nes_Result_2_CYAND_575 : STD_LOGIC; 
  signal nes_Result_2_FASTCARRY_574 : STD_LOGIC; 
  signal nes_Result_2_CYMUXG2_573 : STD_LOGIC; 
  signal nes_Result_2_CYMUXF2_572 : STD_LOGIC; 
  signal nes_Result_2_LOGIC_ZERO_571 : STD_LOGIC; 
  signal nes_Result_2_CYSELG_562 : STD_LOGIC; 
  signal nes_Result_2_G : STD_LOGIC; 
  signal nes_Result_4_XORF_629 : STD_LOGIC; 
  signal nes_Result_4_CYINIT_628 : STD_LOGIC; 
  signal nes_Result_4_F : STD_LOGIC; 
  signal nes_Result_4_XORG_617 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_Q : STD_LOGIC; 
  signal nes_Result_4_CYSELF_615 : STD_LOGIC; 
  signal nes_Result_4_CYMUXFAST_614 : STD_LOGIC; 
  signal nes_Result_4_CYAND_613 : STD_LOGIC; 
  signal nes_Result_4_FASTCARRY_612 : STD_LOGIC; 
  signal nes_Result_4_CYMUXG2_611 : STD_LOGIC; 
  signal nes_Result_4_CYMUXF2_610 : STD_LOGIC; 
  signal nes_Result_4_LOGIC_ZERO_609 : STD_LOGIC; 
  signal nes_Result_4_CYSELG_600 : STD_LOGIC; 
  signal nes_Result_4_G : STD_LOGIC; 
  signal nes_Result_6_XORF_667 : STD_LOGIC; 
  signal nes_Result_6_CYINIT_666 : STD_LOGIC; 
  signal nes_Result_6_F : STD_LOGIC; 
  signal nes_Result_6_XORG_655 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_Q : STD_LOGIC; 
  signal nes_Result_6_CYSELF_653 : STD_LOGIC; 
  signal nes_Result_6_CYMUXFAST_652 : STD_LOGIC; 
  signal nes_Result_6_CYAND_651 : STD_LOGIC; 
  signal nes_Result_6_FASTCARRY_650 : STD_LOGIC; 
  signal nes_Result_6_CYMUXG2_649 : STD_LOGIC; 
  signal nes_Result_6_CYMUXF2_648 : STD_LOGIC; 
  signal nes_Result_6_LOGIC_ZERO_647 : STD_LOGIC; 
  signal nes_Result_6_CYSELG_638 : STD_LOGIC; 
  signal nes_Result_6_G : STD_LOGIC; 
  signal nes_Result_8_XORF_698 : STD_LOGIC; 
  signal nes_Result_8_LOGIC_ZERO_697 : STD_LOGIC; 
  signal nes_Result_8_CYINIT_696 : STD_LOGIC; 
  signal nes_Result_8_CYSELF_687 : STD_LOGIC; 
  signal nes_Result_8_F : STD_LOGIC; 
  signal nes_Result_8_XORG_684 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_Q : STD_LOGIC; 
  signal nes_counter_reg_9_rt_681 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORF_734 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ONE_733 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYINIT_732 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELF_723 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_BXINV_721 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORG_719 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYMUXG_718 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_0_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ZERO_716 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELG_707 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORF_772 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYINIT_771 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORG_760 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELF_758 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXFAST_757 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYAND_756 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_FASTCARRY_755 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXG2_754 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXF2_753 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_LOGIC_ZERO_752 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELG_743 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORF_810 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYINIT_809 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORG_798 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELF_796 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXFAST_795 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYAND_794 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_FASTCARRY_793 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXG2_792 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXF2_791 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_LOGIC_ZERO_790 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELG_781 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORF_848 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYINIT_847 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORG_836 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELF_834 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXFAST_833 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYAND_832 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_FASTCARRY_831 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXG2_830 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXF2_829 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_LOGIC_ZERO_828 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELG_819 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORF_879 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_LOGIC_ZERO_878 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYINIT_877 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYSELF_868 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORG_865 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_Q : STD_LOGIC; 
  signal nes_scalar_reg_9_rt_862 : STD_LOGIC; 
  signal ld_2_O : STD_LOGIC; 
  signal ld_3_O : STD_LOGIC; 
  signal ld_4_O : STD_LOGIC; 
  signal ld_5_O : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal ld_6_O : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal ld_7_O : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal ja1_INBUF : STD_LOGIC; 
  signal ja2_O : STD_LOGIC; 
  signal ja3_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal ld_0_O : STD_LOGIC; 
  signal ld_1_O : STD_LOGIC; 
  signal cd_q_0_BUFG_S_INVNOT : STD_LOGIC; 
  signal cd_q_0_BUFG_I0_INV : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal N9_pack_1 : STD_LOGIC; 
  signal nes_counter_reg_5_DXMUX_1061 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_5 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal nes_counter_reg_5_CLKINV_1043 : STD_LOGIC; 
  signal nes_counter_reg_5_CEINV_1042 : STD_LOGIC; 
  signal nes_b_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq000021_SW6_O_pack_1 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_N01_pack_1 : STD_LOGIC; 
  signal nes_N3 : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal N15_pack_1 : STD_LOGIC; 
  signal nes_start_reg_cmp_eq0000 : STD_LOGIC; 
  signal N11_pack_1 : STD_LOGIC; 
  signal nes_scalar_reg_1_DXMUX_1248 : STD_LOGIC; 
  signal nes_scalar_reg_1_DYMUX_1232 : STD_LOGIC; 
  signal nes_scalar_reg_1_SRINV_1222 : STD_LOGIC; 
  signal nes_scalar_reg_1_CLKINV_1221 : STD_LOGIC; 
  signal nes_scalar_reg_3_DXMUX_1290 : STD_LOGIC; 
  signal nes_scalar_reg_3_DYMUX_1274 : STD_LOGIC; 
  signal nes_scalar_reg_3_SRINV_1264 : STD_LOGIC; 
  signal nes_scalar_reg_3_CLKINV_1263 : STD_LOGIC; 
  signal nes_counter_reg_1_DXMUX_1335 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_1 : STD_LOGIC; 
  signal nes_counter_reg_1_DYMUX_1318 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_0 : STD_LOGIC; 
  signal nes_counter_reg_1_SRINV_1308 : STD_LOGIC; 
  signal nes_counter_reg_1_CLKINV_1307 : STD_LOGIC; 
  signal nes_counter_reg_1_CEINV_1306 : STD_LOGIC; 
  signal nes_scalar_reg_5_DXMUX_1378 : STD_LOGIC; 
  signal nes_scalar_reg_5_DYMUX_1362 : STD_LOGIC; 
  signal nes_scalar_reg_5_SRINV_1352 : STD_LOGIC; 
  signal nes_scalar_reg_5_CLKINV_1351 : STD_LOGIC; 
  signal nes_counter_reg_3_DXMUX_1423 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_3 : STD_LOGIC; 
  signal nes_counter_reg_3_DYMUX_1406 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_2 : STD_LOGIC; 
  signal nes_counter_reg_3_SRINV_1396 : STD_LOGIC; 
  signal nes_counter_reg_3_CLKINV_1395 : STD_LOGIC; 
  signal nes_counter_reg_3_CEINV_1394 : STD_LOGIC; 
  signal nes_scalar_reg_7_DXMUX_1466 : STD_LOGIC; 
  signal nes_scalar_reg_7_DYMUX_1450 : STD_LOGIC; 
  signal nes_scalar_reg_7_SRINV_1440 : STD_LOGIC; 
  signal nes_scalar_reg_7_CLKINV_1439 : STD_LOGIC; 
  signal nes_counter_reg_4_DYMUX_1491 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_4 : STD_LOGIC; 
  signal nes_counter_reg_4_CLKINV_1480 : STD_LOGIC; 
  signal nes_counter_reg_4_CEINV_1479 : STD_LOGIC; 
  signal nes_scalar_reg_9_DXMUX_1534 : STD_LOGIC; 
  signal nes_scalar_reg_9_DYMUX_1518 : STD_LOGIC; 
  signal nes_scalar_reg_9_SRINV_1508 : STD_LOGIC; 
  signal nes_scalar_reg_9_CLKINV_1507 : STD_LOGIC; 
  signal nes_counter_reg_7_DXMUX_1579 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_7 : STD_LOGIC; 
  signal nes_counter_reg_7_DYMUX_1562 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_6 : STD_LOGIC; 
  signal nes_counter_reg_7_SRINV_1552 : STD_LOGIC; 
  signal nes_counter_reg_7_CLKINV_1551 : STD_LOGIC; 
  signal nes_counter_reg_7_CEINV_1550 : STD_LOGIC; 
  signal nes_counter_reg_9_DXMUX_1625 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_9 : STD_LOGIC; 
  signal nes_counter_reg_9_DYMUX_1608 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_8 : STD_LOGIC; 
  signal nes_counter_reg_9_SRINV_1598 : STD_LOGIC; 
  signal nes_counter_reg_9_CLKINV_1597 : STD_LOGIC; 
  signal nes_counter_reg_9_CEINV_1596 : STD_LOGIC; 
  signal cd_q_01_DXMUX_1653 : STD_LOGIC; 
  signal cd_q_01_XORF_1651 : STD_LOGIC; 
  signal cd_q_01_CYINIT_1650 : STD_LOGIC; 
  signal cd_Mcount_q_lut_0_rt_1648 : STD_LOGIC; 
  signal cd_q_01_BXINV_1640 : STD_LOGIC; 
  signal cd_q_01_CLKINV_1638 : STD_LOGIC; 
  signal nes_a_reg_DYMUX_1667 : STD_LOGIC; 
  signal nes_a_reg_CLKINV_1665 : STD_LOGIC; 
  signal nes_a_reg_CEINV_1664 : STD_LOGIC; 
  signal nes_up_reg_DYMUX_1679 : STD_LOGIC; 
  signal nes_up_reg_CLKINV_1677 : STD_LOGIC; 
  signal nes_up_reg_CEINV_1676 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_1693 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_1705 : STD_LOGIC; 
  signal nes_b_reg_DYMUX_1715 : STD_LOGIC; 
  signal nes_b_reg_CLKINV_1713 : STD_LOGIC; 
  signal nes_b_reg_CEINV_1712 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal ja3_OBUF_1765 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal nes_left_reg_DYMUX_1775 : STD_LOGIC; 
  signal nes_left_reg_CLKINV_1773 : STD_LOGIC; 
  signal nes_left_reg_CEINV_1772 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_sel_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_sel_reg_DYMUX_1811 : STD_LOGIC; 
  signal nes_sel_reg_CLKINV_1809 : STD_LOGIC; 
  signal nes_sel_reg_CEINV_1808 : STD_LOGIC; 
  signal ja2_OBUF_1837 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_start_reg_DYMUX_1847 : STD_LOGIC; 
  signal nes_start_reg_CLKINV_1845 : STD_LOGIC; 
  signal nes_start_reg_CEINV_1844 : STD_LOGIC; 
  signal nes_down_reg_DYMUX_1859 : STD_LOGIC; 
  signal nes_down_reg_CLKINV_1857 : STD_LOGIC; 
  signal nes_down_reg_CEINV_1856 : STD_LOGIC; 
  signal nes_right_reg_DYMUX_1871 : STD_LOGIC; 
  signal nes_right_reg_CLKINV_1869 : STD_LOGIC; 
  signal nes_right_reg_CEINV_1868 : STD_LOGIC; 
  signal nes_counter_reg_5_FFX_RSTAND_1067 : STD_LOGIC; 
  signal nes_counter_reg_4_FFY_RSTAND_1497 : STD_LOGIC; 
  signal cd_q_01_FFX_RSTAND_1658 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal nes_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_scalar_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  nes_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      O => nes_Result_0_LOGIC_ZERO_535
    );
  nes_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      O => nes_Result_0_LOGIC_ONE_552
    );
  nes_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORF_553,
      O => nes_Result(0)
    );
  nes_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      I0 => nes_Result_0_CYINIT_551,
      I1 => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_XORF_553
    );
  nes_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      IA => nes_Result_0_LOGIC_ONE_552,
      IB => nes_Result_0_CYINIT_551,
      SEL => nes_Result_0_CYSELF_542,
      O => nes_Mcount_counter_reg_cy_0_Q
    );
  nes_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_BXINV_540,
      O => nes_Result_0_CYINIT_551
    );
  nes_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_CYSELF_542
    );
  nes_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_Result_0_BXINV_540
    );
  nes_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORG_538,
      O => nes_Result(1)
    );
  nes_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_0_Q,
      I1 => nes_Result_0_G,
      O => nes_Result_0_XORG_538
    );
  nes_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_CYMUXG_537,
      O => nes_Mcount_counter_reg_cy_1_Q
    );
  nes_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y52"
    )
    port map (
      IA => nes_Result_0_LOGIC_ZERO_535,
      IB => nes_Mcount_counter_reg_cy_0_Q,
      SEL => nes_Result_0_CYSELG_526,
      O => nes_Result_0_CYMUXG_537
    );
  nes_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_G,
      O => nes_Result_0_CYSELG_526
    );
  nes_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      O => nes_Result_2_LOGIC_ZERO_571
    );
  nes_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORF_591,
      O => nes_Result(2)
    );
  nes_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      I0 => nes_Result_2_CYINIT_590,
      I1 => nes_Result_2_F,
      O => nes_Result_2_XORF_591
    );
  nes_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_571,
      IB => nes_Result_2_CYINIT_590,
      SEL => nes_Result_2_CYSELF_577,
      O => nes_Mcount_counter_reg_cy_2_Q
    );
  nes_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_571,
      IB => nes_Result_2_LOGIC_ZERO_571,
      SEL => nes_Result_2_CYSELF_577,
      O => nes_Result_2_CYMUXF2_572
    );
  nes_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_CYINIT_590
    );
  nes_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_F,
      O => nes_Result_2_CYSELF_577
    );
  nes_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORG_579,
      O => nes_Result(3)
    );
  nes_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_2_Q,
      I1 => nes_Result_2_G,
      O => nes_Result_2_XORG_579
    );
  nes_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_CYMUXFAST_576,
      O => nes_Mcount_counter_reg_cy_3_Q
    );
  nes_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_FASTCARRY_574
    );
  nes_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      I0 => nes_Result_2_CYSELG_562,
      I1 => nes_Result_2_CYSELF_577,
      O => nes_Result_2_CYAND_575
    );
  nes_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      IA => nes_Result_2_CYMUXG2_573,
      IB => nes_Result_2_FASTCARRY_574,
      SEL => nes_Result_2_CYAND_575,
      O => nes_Result_2_CYMUXFAST_576
    );
  nes_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y53"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_571,
      IB => nes_Result_2_CYMUXF2_572,
      SEL => nes_Result_2_CYSELG_562,
      O => nes_Result_2_CYMUXG2_573
    );
  nes_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_G,
      O => nes_Result_2_CYSELG_562
    );
  nes_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      O => nes_Result_4_LOGIC_ZERO_609
    );
  nes_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORF_629,
      O => nes_Result(4)
    );
  nes_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      I0 => nes_Result_4_CYINIT_628,
      I1 => nes_Result_4_F,
      O => nes_Result_4_XORF_629
    );
  nes_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_609,
      IB => nes_Result_4_CYINIT_628,
      SEL => nes_Result_4_CYSELF_615,
      O => nes_Mcount_counter_reg_cy_4_Q
    );
  nes_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_609,
      IB => nes_Result_4_LOGIC_ZERO_609,
      SEL => nes_Result_4_CYSELF_615,
      O => nes_Result_4_CYMUXF2_610
    );
  nes_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_CYINIT_628
    );
  nes_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_F,
      O => nes_Result_4_CYSELF_615
    );
  nes_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORG_617,
      O => nes_Result(5)
    );
  nes_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_4_Q,
      I1 => nes_Result_4_G,
      O => nes_Result_4_XORG_617
    );
  nes_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_CYMUXFAST_614,
      O => nes_Mcount_counter_reg_cy_5_Q
    );
  nes_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_FASTCARRY_612
    );
  nes_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      I0 => nes_Result_4_CYSELG_600,
      I1 => nes_Result_4_CYSELF_615,
      O => nes_Result_4_CYAND_613
    );
  nes_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      IA => nes_Result_4_CYMUXG2_611,
      IB => nes_Result_4_FASTCARRY_612,
      SEL => nes_Result_4_CYAND_613,
      O => nes_Result_4_CYMUXFAST_614
    );
  nes_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y54"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_609,
      IB => nes_Result_4_CYMUXF2_610,
      SEL => nes_Result_4_CYSELG_600,
      O => nes_Result_4_CYMUXG2_611
    );
  nes_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_G,
      O => nes_Result_4_CYSELG_600
    );
  nes_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      O => nes_Result_6_LOGIC_ZERO_647
    );
  nes_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORF_667,
      O => nes_Result(6)
    );
  nes_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      I0 => nes_Result_6_CYINIT_666,
      I1 => nes_Result_6_F,
      O => nes_Result_6_XORF_667
    );
  nes_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_647,
      IB => nes_Result_6_CYINIT_666,
      SEL => nes_Result_6_CYSELF_653,
      O => nes_Mcount_counter_reg_cy_6_Q
    );
  nes_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_647,
      IB => nes_Result_6_LOGIC_ZERO_647,
      SEL => nes_Result_6_CYSELF_653,
      O => nes_Result_6_CYMUXF2_648
    );
  nes_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_CYINIT_666
    );
  nes_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_F,
      O => nes_Result_6_CYSELF_653
    );
  nes_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORG_655,
      O => nes_Result(7)
    );
  nes_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_6_Q,
      I1 => nes_Result_6_G,
      O => nes_Result_6_XORG_655
    );
  nes_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_FASTCARRY_650
    );
  nes_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      I0 => nes_Result_6_CYSELG_638,
      I1 => nes_Result_6_CYSELF_653,
      O => nes_Result_6_CYAND_651
    );
  nes_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      IA => nes_Result_6_CYMUXG2_649,
      IB => nes_Result_6_FASTCARRY_650,
      SEL => nes_Result_6_CYAND_651,
      O => nes_Result_6_CYMUXFAST_652
    );
  nes_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y55"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_647,
      IB => nes_Result_6_CYMUXF2_648,
      SEL => nes_Result_6_CYSELG_638,
      O => nes_Result_6_CYMUXG2_649
    );
  nes_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_G,
      O => nes_Result_6_CYSELG_638
    );
  nes_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y56"
    )
    port map (
      O => nes_Result_8_LOGIC_ZERO_697
    );
  nes_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORF_698,
      O => nes_Result(8)
    );
  nes_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y56"
    )
    port map (
      I0 => nes_Result_8_CYINIT_696,
      I1 => nes_Result_8_F,
      O => nes_Result_8_XORF_698
    );
  nes_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y56"
    )
    port map (
      IA => nes_Result_8_LOGIC_ZERO_697,
      IB => nes_Result_8_CYINIT_696,
      SEL => nes_Result_8_CYSELF_687,
      O => nes_Mcount_counter_reg_cy_8_Q
    );
  nes_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_CYMUXFAST_652,
      O => nes_Result_8_CYINIT_696
    );
  nes_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_F,
      O => nes_Result_8_CYSELF_687
    );
  nes_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORG_684,
      O => nes_Result(9)
    );
  nes_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y56"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_8_Q,
      I1 => nes_counter_reg_9_rt_681,
      O => nes_Result_8_XORG_684
    );
  nes_scalar_next_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ZERO_716
    );
  nes_scalar_next_addsub0000_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ONE_733
    );
  nes_scalar_next_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORF_734,
      O => nes_scalar_next_addsub0000(0)
    );
  nes_scalar_next_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_0_CYINIT_732,
      I1 => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_XORF_734
    );
  nes_scalar_next_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ONE_733,
      IB => nes_scalar_next_addsub0000_0_CYINIT_732,
      SEL => nes_scalar_next_addsub0000_0_CYSELF_723,
      O => nes_Madd_scalar_next_addsub0000_cy_0_Q
    );
  nes_scalar_next_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_BXINV_721,
      O => nes_scalar_next_addsub0000_0_CYINIT_732
    );
  nes_scalar_next_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_CYSELF_723
    );
  nes_scalar_next_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_scalar_next_addsub0000_0_BXINV_721
    );
  nes_scalar_next_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORG_719,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_scalar_next_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      I1 => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_XORG_719
    );
  nes_scalar_next_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_CYMUXG_718,
      O => nes_Madd_scalar_next_addsub0000_cy_1_Q
    );
  nes_scalar_next_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ZERO_716,
      IB => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      SEL => nes_scalar_next_addsub0000_0_CYSELG_707,
      O => nes_scalar_next_addsub0000_0_CYMUXG_718
    );
  nes_scalar_next_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_CYSELG_707
    );
  nes_scalar_next_addsub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      O => nes_scalar_next_addsub0000_2_LOGIC_ZERO_752
    );
  nes_scalar_next_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORF_772,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_scalar_next_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYINIT_771,
      I1 => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_XORF_772
    );
  nes_scalar_next_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_752,
      IB => nes_scalar_next_addsub0000_2_CYINIT_771,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_758,
      O => nes_Madd_scalar_next_addsub0000_cy_2_Q
    );
  nes_scalar_next_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_752,
      IB => nes_scalar_next_addsub0000_2_LOGIC_ZERO_752,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_758,
      O => nes_scalar_next_addsub0000_2_CYMUXF2_753
    );
  nes_scalar_next_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_CYINIT_771
    );
  nes_scalar_next_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_CYSELF_758
    );
  nes_scalar_next_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORG_760,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_scalar_next_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_2_Q,
      I1 => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_XORG_760
    );
  nes_scalar_next_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_CYMUXFAST_757,
      O => nes_Madd_scalar_next_addsub0000_cy_3_Q
    );
  nes_scalar_next_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_FASTCARRY_755
    );
  nes_scalar_next_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYSELG_743,
      I1 => nes_scalar_next_addsub0000_2_CYSELF_758,
      O => nes_scalar_next_addsub0000_2_CYAND_756
    );
  nes_scalar_next_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_CYMUXG2_754,
      IB => nes_scalar_next_addsub0000_2_FASTCARRY_755,
      SEL => nes_scalar_next_addsub0000_2_CYAND_756,
      O => nes_scalar_next_addsub0000_2_CYMUXFAST_757
    );
  nes_scalar_next_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_752,
      IB => nes_scalar_next_addsub0000_2_CYMUXF2_753,
      SEL => nes_scalar_next_addsub0000_2_CYSELG_743,
      O => nes_scalar_next_addsub0000_2_CYMUXG2_754
    );
  nes_scalar_next_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_CYSELG_743
    );
  nes_scalar_next_addsub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      O => nes_scalar_next_addsub0000_4_LOGIC_ZERO_790
    );
  nes_scalar_next_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORF_810,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_scalar_next_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYINIT_809,
      I1 => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_XORF_810
    );
  nes_scalar_next_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_790,
      IB => nes_scalar_next_addsub0000_4_CYINIT_809,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_796,
      O => nes_Madd_scalar_next_addsub0000_cy_4_Q
    );
  nes_scalar_next_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_790,
      IB => nes_scalar_next_addsub0000_4_LOGIC_ZERO_790,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_796,
      O => nes_scalar_next_addsub0000_4_CYMUXF2_791
    );
  nes_scalar_next_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_CYINIT_809
    );
  nes_scalar_next_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_CYSELF_796
    );
  nes_scalar_next_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORG_798,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_scalar_next_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_4_Q,
      I1 => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_XORG_798
    );
  nes_scalar_next_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_CYMUXFAST_795,
      O => nes_Madd_scalar_next_addsub0000_cy_5_Q
    );
  nes_scalar_next_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_FASTCARRY_793
    );
  nes_scalar_next_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYSELG_781,
      I1 => nes_scalar_next_addsub0000_4_CYSELF_796,
      O => nes_scalar_next_addsub0000_4_CYAND_794
    );
  nes_scalar_next_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_CYMUXG2_792,
      IB => nes_scalar_next_addsub0000_4_FASTCARRY_793,
      SEL => nes_scalar_next_addsub0000_4_CYAND_794,
      O => nes_scalar_next_addsub0000_4_CYMUXFAST_795
    );
  nes_scalar_next_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_790,
      IB => nes_scalar_next_addsub0000_4_CYMUXF2_791,
      SEL => nes_scalar_next_addsub0000_4_CYSELG_781,
      O => nes_scalar_next_addsub0000_4_CYMUXG2_792
    );
  nes_scalar_next_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_CYSELG_781
    );
  nes_scalar_next_addsub0000_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      O => nes_scalar_next_addsub0000_6_LOGIC_ZERO_828
    );
  nes_scalar_next_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORF_848,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_scalar_next_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYINIT_847,
      I1 => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_XORF_848
    );
  nes_scalar_next_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_828,
      IB => nes_scalar_next_addsub0000_6_CYINIT_847,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_834,
      O => nes_Madd_scalar_next_addsub0000_cy_6_Q
    );
  nes_scalar_next_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_828,
      IB => nes_scalar_next_addsub0000_6_LOGIC_ZERO_828,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_834,
      O => nes_scalar_next_addsub0000_6_CYMUXF2_829
    );
  nes_scalar_next_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_CYINIT_847
    );
  nes_scalar_next_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_CYSELF_834
    );
  nes_scalar_next_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORG_836,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_scalar_next_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_6_Q,
      I1 => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_XORG_836
    );
  nes_scalar_next_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_FASTCARRY_831
    );
  nes_scalar_next_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYSELG_819,
      I1 => nes_scalar_next_addsub0000_6_CYSELF_834,
      O => nes_scalar_next_addsub0000_6_CYAND_832
    );
  nes_scalar_next_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_CYMUXG2_830,
      IB => nes_scalar_next_addsub0000_6_FASTCARRY_831,
      SEL => nes_scalar_next_addsub0000_6_CYAND_832,
      O => nes_scalar_next_addsub0000_6_CYMUXFAST_833
    );
  nes_scalar_next_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_828,
      IB => nes_scalar_next_addsub0000_6_CYMUXF2_829,
      SEL => nes_scalar_next_addsub0000_6_CYSELG_819,
      O => nes_scalar_next_addsub0000_6_CYMUXG2_830
    );
  nes_scalar_next_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_CYSELG_819
    );
  nes_scalar_next_addsub0000_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      O => nes_scalar_next_addsub0000_8_LOGIC_ZERO_878
    );
  nes_scalar_next_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORF_879,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_scalar_next_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_8_CYINIT_877,
      I1 => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_XORF_879
    );
  nes_scalar_next_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => nes_scalar_next_addsub0000_8_LOGIC_ZERO_878,
      IB => nes_scalar_next_addsub0000_8_CYINIT_877,
      SEL => nes_scalar_next_addsub0000_8_CYSELF_868,
      O => nes_Madd_scalar_next_addsub0000_cy_8_Q
    );
  nes_scalar_next_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_CYMUXFAST_833,
      O => nes_scalar_next_addsub0000_8_CYINIT_877
    );
  nes_scalar_next_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_CYSELF_868
    );
  nes_scalar_next_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORG_865,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_scalar_next_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_8_Q,
      I1 => nes_scalar_reg_9_rt_862,
      O => nes_scalar_next_addsub0000_8_XORG_865
    );
  ld_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => ld_2_O,
      O => ld(2)
    );
  ld_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => ld_3_O,
      O => ld(3)
    );
  ld_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => ld_4_O,
      O => ld(4)
    );
  ld_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => ld_5_O,
      O => ld(5)
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
  ld_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => ld_6_O,
      O => ld(6)
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
  ld_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => ld_7_O,
      O => ld(7)
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
  btn_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(3),
      O => btn_3_INBUF
    );
  ja1_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1,
      O => ja1_INBUF
    );
  ja2_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => ja2_O,
      O => ja2
    );
  ja3_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => ja3_O,
      O => ja3
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
  cd_q_0_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => cd_q_0_BUFG_I0_INV,
      I1 => GND,
      S => cd_q_0_BUFG_S_INVNOT,
      O => cd_q(0)
    );
  cd_q_0_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => cd_q_0_BUFG_S_INVNOT
    );
  cd_q_0_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_01,
      O => cd_q_0_BUFG_I0_INV
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
  nes_down_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N9_pack_1,
      O => N9
    );
  nes_counter_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_5,
      O => nes_counter_reg_5_DXMUX_1061
    );
  nes_counter_reg_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_cmp_eq0000_pack_1,
      O => nes_counter_reg_cmp_eq0000_499
    );
  nes_counter_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_5_CLKINV_1043
    );
  nes_counter_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_5_CEINV_1042
    );
  nes_b_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_cmp_eq000021_SW6_O_pack_1,
      O => nes_a_reg_cmp_eq000021_SW6_O
    );
  nes_counter_reg_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001,
      O => nes_counter_reg_not0001_0
    );
  nes_counter_reg_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq0000_pack_1,
      O => nes_scalar_next_cmp_eq0000
    );
  nes_a_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N01_pack_1,
      O => nes_N01
    );
  nes_N3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N3,
      O => nes_N3_0
    );
  nes_N3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  nes_right_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15_pack_1,
      O => N15
    );
  nes_start_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N11_pack_1,
      O => N11
    );
  nes_scalar_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(1),
      O => nes_scalar_reg_1_DXMUX_1248
    );
  nes_scalar_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(0),
      O => nes_scalar_reg_1_DYMUX_1232
    );
  nes_scalar_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_scalar_reg_1_SRINV_1222
    );
  nes_scalar_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_scalar_reg_1_CLKINV_1221
    );
  nes_scalar_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(3),
      O => nes_scalar_reg_3_DXMUX_1290
    );
  nes_scalar_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(2),
      O => nes_scalar_reg_3_DYMUX_1274
    );
  nes_scalar_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_scalar_reg_3_SRINV_1264
    );
  nes_scalar_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_scalar_reg_3_CLKINV_1263
    );
  nes_counter_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_1,
      O => nes_counter_reg_1_DXMUX_1335
    );
  nes_counter_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_0,
      O => nes_counter_reg_1_DYMUX_1318
    );
  nes_counter_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_1_SRINV_1308
    );
  nes_counter_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_1_CLKINV_1307
    );
  nes_counter_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_1_CEINV_1306
    );
  nes_scalar_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(5),
      O => nes_scalar_reg_5_DXMUX_1378
    );
  nes_scalar_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(4),
      O => nes_scalar_reg_5_DYMUX_1362
    );
  nes_scalar_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_scalar_reg_5_SRINV_1352
    );
  nes_scalar_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_scalar_reg_5_CLKINV_1351
    );
  nes_counter_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_3,
      O => nes_counter_reg_3_DXMUX_1423
    );
  nes_counter_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_2,
      O => nes_counter_reg_3_DYMUX_1406
    );
  nes_counter_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_3_SRINV_1396
    );
  nes_counter_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_3_CLKINV_1395
    );
  nes_counter_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_3_CEINV_1394
    );
  nes_scalar_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(7),
      O => nes_scalar_reg_7_DXMUX_1466
    );
  nes_scalar_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(6),
      O => nes_scalar_reg_7_DYMUX_1450
    );
  nes_scalar_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_scalar_reg_7_SRINV_1440
    );
  nes_scalar_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_scalar_reg_7_CLKINV_1439
    );
  nes_counter_reg_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_4,
      O => nes_counter_reg_4_DYMUX_1491
    );
  nes_counter_reg_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_4_CLKINV_1480
    );
  nes_counter_reg_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_4_CEINV_1479
    );
  nes_scalar_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(9),
      O => nes_scalar_reg_9_DXMUX_1534
    );
  nes_scalar_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(8),
      O => nes_scalar_reg_9_DYMUX_1518
    );
  nes_scalar_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_scalar_reg_9_SRINV_1508
    );
  nes_scalar_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_scalar_reg_9_CLKINV_1507
    );
  nes_counter_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_7,
      O => nes_counter_reg_7_DXMUX_1579
    );
  nes_counter_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_6,
      O => nes_counter_reg_7_DYMUX_1562
    );
  nes_counter_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_7_SRINV_1552
    );
  nes_counter_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_7_CLKINV_1551
    );
  nes_counter_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_7_CEINV_1550
    );
  nes_counter_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_9,
      O => nes_counter_reg_9_DXMUX_1625
    );
  nes_counter_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_8,
      O => nes_counter_reg_9_DYMUX_1608
    );
  nes_counter_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_9_SRINV_1598
    );
  nes_counter_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_counter_reg_9_CLKINV_1597
    );
  nes_counter_reg_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_9_CEINV_1596
    );
  cd_q_01_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_01_XORF_1651,
      O => cd_q_01_DXMUX_1653
    );
  cd_q_01_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y90"
    )
    port map (
      I0 => cd_q_01_CYINIT_1650,
      I1 => cd_Mcount_q_lut_0_rt_1648,
      O => cd_q_01_XORF_1651
    );
  cd_q_01_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_01_BXINV_1640,
      O => cd_q_01_CYINIT_1650
    );
  cd_q_01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => cd_q_01_BXINV_1640
    );
  cd_q_01_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_01_CLKINV_1638
    );
  nes_a_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X64Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_a_reg_DYMUX_1667
    );
  nes_a_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_a_reg_CLKINV_1665
    );
  nes_a_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_cmp_eq0000,
      O => nes_a_reg_CEINV_1664
    );
  nes_up_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X54Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_up_reg_DYMUX_1679
    );
  nes_up_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_up_reg_CLKINV_1677
    );
  nes_up_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_up_reg_cmp_eq0000,
      O => nes_up_reg_CEINV_1676
    );
  nes_scalar_next_cmp_eq000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000010_1693,
      O => nes_scalar_next_cmp_eq000010_0
    );
  nes_scalar_next_cmp_eq000021_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000021_1705,
      O => nes_scalar_next_cmp_eq000021_0
    );
  nes_b_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X64Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_b_reg_DYMUX_1715
    );
  nes_b_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_b_reg_CLKINV_1713
    );
  nes_b_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_b_reg_cmp_eq0000,
      O => nes_b_reg_CEINV_1712
    );
  N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  ja3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  nes_left_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_left_reg_DYMUX_1775
    );
  nes_left_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_left_reg_CLKINV_1773
    );
  nes_left_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_cmp_eq0000,
      O => nes_left_reg_CEINV_1772
    );
  nes_sel_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X55Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_sel_reg_DYMUX_1811
    );
  nes_sel_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_sel_reg_CLKINV_1809
    );
  nes_sel_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_sel_reg_cmp_eq0000,
      O => nes_sel_reg_CEINV_1808
    );
  nes_start_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_start_reg_DYMUX_1847
    );
  nes_start_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_start_reg_CLKINV_1845
    );
  nes_start_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_start_reg_cmp_eq0000,
      O => nes_start_reg_CEINV_1844
    );
  nes_down_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_down_reg_DYMUX_1859
    );
  nes_down_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_down_reg_CLKINV_1857
    );
  nes_down_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_down_reg_cmp_eq0000,
      O => nes_down_reg_CEINV_1856
    );
  nes_right_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X53Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_485,
      O => nes_right_reg_DYMUX_1871
    );
  nes_right_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(0),
      O => nes_right_reg_CLKINV_1869
    );
  nes_right_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_right_reg_cmp_eq0000,
      O => nes_right_reg_CEINV_1868
    );
  cd_Mcount_q_lut_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_lut(0),
      O => cd_Mcount_q_lut_0_0
    );
  nes_Mcount_counter_reg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X55Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(0),
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_lut(0)
    );
  nes_counter_reg_9_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(9),
      O => nes_counter_reg_9_rt_681
    );
  nes_Madd_scalar_next_addsub0000_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X53Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Madd_scalar_next_addsub0000_lut(0)
    );
  nes_scalar_reg_9_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => nes_scalar_reg(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_reg_9_rt_862
    );
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_479
    );
  btn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_INBUF,
      O => btn_1_IBUF_481
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_483
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_484
    );
  ja1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_INBUF,
      O => ja1_IBUF_485
    );
  nes_a_reg_cmp_eq000021_SW0 : X_LUT4
    generic map(
      INIT => X"FCFF",
      LOC => "SLICE_X52Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_counter_reg(3),
      O => N9_pack_1
    );
  nes_down_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X52Y54"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => nes_N3_0,
      ADR2 => nes_counter_reg(1),
      ADR3 => N9,
      O => nes_down_reg_cmp_eq0000
    );
  nes_counter_reg_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y53"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => N23_0,
      ADR2 => N3_0,
      ADR3 => N5,
      O => nes_counter_reg_cmp_eq0000_pack_1
    );
  nes_Mcount_counter_reg_eqn_51 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X54Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => nes_Result(5),
      O => nes_Mcount_counter_reg_eqn_5
    );
  nes_counter_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X54Y53",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_5_DXMUX_1061,
      CE => nes_counter_reg_5_CEINV_1042,
      CLK => nes_counter_reg_5_CLKINV_1043,
      SET => GND,
      RST => nes_counter_reg_5_FFX_RSTAND_1067,
      O => nes_counter_reg(5)
    );
  nes_counter_reg_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_5_FFX_RSTAND_1067
    );
  nes_a_reg_cmp_eq000021_SW6 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X55Y50"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(3),
      ADR2 => VCC,
      ADR3 => nes_counter_reg(2),
      O => nes_a_reg_cmp_eq000021_SW6_O_pack_1
    );
  nes_b_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X55Y50"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_a_reg_cmp_eq000021_SW6_O,
      ADR3 => nes_N3_0,
      O => nes_b_reg_cmp_eq0000
    );
  nes_scalar_next_cmp_eq000030 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X52Y58"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq000010_0,
      ADR1 => nes_scalar_reg(9),
      ADR2 => nes_scalar_reg(8),
      ADR3 => nes_scalar_next_cmp_eq000021_0,
      O => nes_scalar_next_cmp_eq0000_pack_1
    );
  nes_counter_reg_not00011 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X52Y58"
    )
    port map (
      ADR0 => N3_0,
      ADR1 => N7_0,
      ADR2 => nes_N3_0,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_counter_reg_not0001
    );
  nes_nes_clk11 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => nes_counter_reg(1),
      ADR1 => VCC,
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_counter_reg(2),
      O => nes_N01_pack_1
    );
  nes_a_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => nes_N3_0,
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_N01,
      O => nes_a_reg_cmp_eq0000
    );
  nes_counter_reg_cmp_eq00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X54Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(5),
      ADR3 => nes_counter_reg(7),
      O => N5_pack_1
    );
  nes_counter_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y52"
    )
    port map (
      ADR0 => nes_counter_reg(6),
      ADR1 => nes_counter_reg(8),
      ADR2 => nes_counter_reg(9),
      ADR3 => N5,
      O => nes_N3
    );
  nes_a_reg_cmp_eq000021_SW3 : X_LUT4
    generic map(
      INIT => X"DFDF",
      LOC => "SLICE_X53Y54"
    )
    port map (
      ADR0 => nes_counter_reg(3),
      ADR1 => nes_counter_reg(4),
      ADR2 => nes_counter_reg(2),
      ADR3 => VCC,
      O => N15_pack_1
    );
  nes_right_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X53Y54"
    )
    port map (
      ADR0 => nes_N3_0,
      ADR1 => nes_counter_reg(1),
      ADR2 => N15,
      ADR3 => nes_counter_reg(0),
      O => nes_right_reg_cmp_eq0000
    );
  nes_a_reg_cmp_eq000021_SW1 : X_LUT4
    generic map(
      INIT => X"FFF5",
      LOC => "SLICE_X54Y51"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => VCC,
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_counter_reg(4),
      O => N11_pack_1
    );
  nes_start_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y51"
    )
    port map (
      ADR0 => nes_counter_reg(1),
      ADR1 => nes_counter_reg(0),
      ADR2 => N11,
      ADR3 => nes_N3_0,
      O => nes_start_reg_cmp_eq0000
    );
  nes_scalar_next_0_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X52Y65"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(0),
      O => nes_scalar_next(0)
    );
  nes_scalar_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y65",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DYMUX_1232,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_1221,
      SET => GND,
      RST => nes_scalar_reg_1_SRINV_1222,
      O => nes_scalar_reg(0)
    );
  nes_scalar_next_1_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X52Y65"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(1),
      ADR1 => VCC,
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => VCC,
      O => nes_scalar_next(1)
    );
  nes_scalar_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y65",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DXMUX_1248,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_1221,
      SET => GND,
      RST => nes_scalar_reg_1_SRINV_1222,
      O => nes_scalar_reg(1)
    );
  nes_scalar_next_2_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X52Y64"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => nes_scalar_next_addsub0000(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next(2)
    );
  nes_scalar_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y64",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DYMUX_1274,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_1263,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_1264,
      O => nes_scalar_reg(2)
    );
  nes_scalar_next_3_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X52Y64"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(3),
      O => nes_scalar_next(3)
    );
  nes_scalar_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y64",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DXMUX_1290,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_1263,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_1264,
      O => nes_scalar_reg(3)
    );
  nes_Mcount_counter_reg_eqn_01 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_Result(0),
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_eqn_0
    );
  nes_counter_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y52",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DYMUX_1318,
      CE => nes_counter_reg_1_CEINV_1306,
      CLK => nes_counter_reg_1_CLKINV_1307,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_1308,
      O => nes_counter_reg(0)
    );
  nes_Mcount_counter_reg_eqn_11 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => nes_Result(1),
      O => nes_Mcount_counter_reg_eqn_1
    );
  nes_counter_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y52",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DXMUX_1335,
      CE => nes_counter_reg_1_CEINV_1306,
      CLK => nes_counter_reg_1_CLKINV_1307,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_1308,
      O => nes_counter_reg(1)
    );
  nes_scalar_next_4_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X52Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_addsub0000(4),
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(4)
    );
  nes_scalar_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y69",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DYMUX_1362,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_1351,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_1352,
      O => nes_scalar_reg(4)
    );
  nes_scalar_next_5_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X52Y69"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(5)
    );
  nes_scalar_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y69",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DXMUX_1378,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_1351,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_1352,
      O => nes_scalar_reg(5)
    );
  nes_Mcount_counter_reg_eqn_21 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X52Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_Result(2),
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_eqn_2
    );
  nes_counter_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y53",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DYMUX_1406,
      CE => nes_counter_reg_3_CEINV_1394,
      CLK => nes_counter_reg_3_CLKINV_1395,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_1396,
      O => nes_counter_reg(2)
    );
  nes_Mcount_counter_reg_eqn_31 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X52Y53"
    )
    port map (
      ADR0 => nes_Result(3),
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_eqn_3
    );
  nes_counter_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y53",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DXMUX_1423,
      CE => nes_counter_reg_3_CEINV_1394,
      CLK => nes_counter_reg_3_CLKINV_1395,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_1396,
      O => nes_counter_reg(3)
    );
  nes_scalar_next_6_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X52Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(6),
      O => nes_scalar_next(6)
    );
  nes_scalar_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X52Y67",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DYMUX_1450,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_1439,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_1440,
      O => nes_scalar_reg(6)
    );
  nes_scalar_next_7_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X52Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(7),
      ADR2 => VCC,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(7)
    );
  nes_scalar_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y67",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DXMUX_1466,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_1439,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_1440,
      O => nes_scalar_reg(7)
    );
  nes_Mcount_counter_reg_eqn_41 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X54Y56"
    )
    port map (
      ADR0 => nes_Result(4),
      ADR1 => nes_counter_reg_cmp_eq0000_499,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_eqn_4
    );
  nes_counter_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X54Y56",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_4_DYMUX_1491,
      CE => nes_counter_reg_4_CEINV_1479,
      CLK => nes_counter_reg_4_CLKINV_1480,
      SET => GND,
      RST => nes_counter_reg_4_FFY_RSTAND_1497,
      O => nes_counter_reg(4)
    );
  nes_counter_reg_4_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => nes_counter_reg_4_FFY_RSTAND_1497
    );
  nes_scalar_next_8_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X52Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(8),
      O => nes_scalar_next(8)
    );
  nes_scalar_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X52Y68",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DYMUX_1518,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_1507,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_1508,
      O => nes_scalar_reg(8)
    );
  nes_scalar_next_9_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X52Y68"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(9)
    );
  nes_scalar_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X52Y68",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DXMUX_1534,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_1507,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_1508,
      O => nes_scalar_reg(9)
    );
  nes_Mcount_counter_reg_eqn_61 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => nes_Result(6),
      O => nes_Mcount_counter_reg_eqn_6
    );
  nes_counter_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X54Y55",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DYMUX_1562,
      CE => nes_counter_reg_7_CEINV_1550,
      CLK => nes_counter_reg_7_CLKINV_1551,
      SET => GND,
      RST => nes_counter_reg_7_SRINV_1552,
      O => nes_counter_reg(6)
    );
  nes_Mcount_counter_reg_eqn_71 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => nes_Result(7),
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000_499,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_eqn_7
    );
  nes_counter_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X54Y55",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DXMUX_1579,
      CE => nes_counter_reg_7_CEINV_1550,
      CLK => nes_counter_reg_7_CLKINV_1551,
      SET => GND,
      RST => nes_counter_reg_7_SRINV_1552,
      O => nes_counter_reg(7)
    );
  nes_Mcount_counter_reg_eqn_81 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X55Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_Result(8),
      ADR2 => VCC,
      ADR3 => nes_counter_reg_cmp_eq0000_499,
      O => nes_Mcount_counter_reg_eqn_8
    );
  nes_counter_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y57",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DYMUX_1608,
      CE => nes_counter_reg_9_CEINV_1596,
      CLK => nes_counter_reg_9_CLKINV_1597,
      SET => GND,
      RST => nes_counter_reg_9_SRINV_1598,
      O => nes_counter_reg(8)
    );
  nes_Mcount_counter_reg_eqn_91 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X55Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_Result(9),
      ADR3 => nes_counter_reg_cmp_eq0000_499,
      O => nes_Mcount_counter_reg_eqn_9
    );
  nes_counter_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y57",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DXMUX_1625,
      CE => nes_counter_reg_9_CEINV_1596,
      CLK => nes_counter_reg_9_CLKINV_1597,
      SET => GND,
      RST => nes_counter_reg_9_SRINV_1598,
      O => nes_counter_reg(9)
    );
  cd_Mcount_q_lut_0_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y90"
    )
    port map (
      ADR0 => cd_Mcount_q_lut_0_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_Mcount_q_lut_0_rt_1648
    );
  cd_q_0 : X_FF
    generic map(
      LOC => "SLICE_X43Y90",
      INIT => '0'
    )
    port map (
      I => cd_q_01_DXMUX_1653,
      CE => VCC,
      CLK => cd_q_01_CLKINV_1638,
      SET => GND,
      RST => cd_q_01_FFX_RSTAND_1658,
      O => cd_q_01
    );
  cd_q_01_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_484,
      O => cd_q_01_FFX_RSTAND_1658
    );
  nes_a_reg : X_FF
    generic map(
      LOC => "SLICE_X64Y50",
      INIT => '0'
    )
    port map (
      I => nes_a_reg_DYMUX_1667,
      CE => nes_a_reg_CEINV_1664,
      CLK => nes_a_reg_CLKINV_1665,
      SET => GND,
      RST => GND,
      O => nes_a_reg_489
    );
  nes_up_reg : X_FF
    generic map(
      LOC => "SLICE_X54Y42",
      INIT => '0'
    )
    port map (
      I => nes_up_reg_DYMUX_1679,
      CE => nes_up_reg_CEINV_1676,
      CLK => nes_up_reg_CLKINV_1677,
      SET => GND,
      RST => GND,
      O => nes_up_reg_478
    );
  nes_scalar_next_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X52Y66"
    )
    port map (
      ADR0 => nes_scalar_reg(4),
      ADR1 => nes_scalar_reg(7),
      ADR2 => nes_scalar_reg(5),
      ADR3 => nes_scalar_reg(6),
      O => nes_scalar_next_cmp_eq000010_1693
    );
  nes_scalar_next_cmp_eq000021 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X53Y64"
    )
    port map (
      ADR0 => nes_scalar_reg(3),
      ADR1 => nes_scalar_reg(0),
      ADR2 => nes_scalar_reg(1),
      ADR3 => nes_scalar_reg(2),
      O => nes_scalar_next_cmp_eq000021_1705
    );
  nes_b_reg : X_FF
    generic map(
      LOC => "SLICE_X64Y51",
      INIT => '0'
    )
    port map (
      I => nes_b_reg_DYMUX_1715,
      CE => nes_b_reg_CEINV_1712,
      CLK => nes_b_reg_CLKINV_1713,
      SET => GND,
      RST => GND,
      O => nes_b_reg_490
    );
  nes_counter_reg_cmp_eq00001_SW1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X54Y54"
    )
    port map (
      ADR0 => nes_counter_reg(6),
      ADR1 => nes_counter_reg(8),
      ADR2 => nes_counter_reg(9),
      ADR3 => nes_counter_reg(1),
      O => N23
    );
  nes_counter_reg_cmp_eq0000_SW1 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X54Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(0),
      ADR3 => nes_counter_reg(1),
      O => N7
    );
  nes_counter_reg_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FF3F",
      LOC => "SLICE_X53Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_counter_reg(3),
      O => N3
    );
  nes_nes_clk2 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X53Y53"
    )
    port map (
      ADR0 => nes_N01,
      ADR1 => nes_N3_0,
      ADR2 => nes_counter_reg(0),
      ADR3 => nes_counter_reg(4),
      O => ja3_OBUF_1765
    );
  nes_left_reg : X_FF
    generic map(
      LOC => "SLICE_X50Y51",
      INIT => '0'
    )
    port map (
      I => nes_left_reg_DYMUX_1775,
      CE => nes_left_reg_CEINV_1772,
      CLK => nes_left_reg_CLKINV_1773,
      SET => GND,
      RST => GND,
      O => nes_left_reg_482
    );
  nes_sel_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X55Y51"
    )
    port map (
      ADR0 => nes_counter_reg(1),
      ADR1 => N11,
      ADR2 => nes_counter_reg(0),
      ADR3 => nes_N3_0,
      O => nes_sel_reg_cmp_eq0000
    );
  nes_left_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X55Y51"
    )
    port map (
      ADR0 => N15,
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_counter_reg(0),
      ADR3 => nes_N3_0,
      O => nes_left_reg_cmp_eq0000
    );
  nes_sel_reg : X_FF
    generic map(
      LOC => "SLICE_X55Y45",
      INIT => '0'
    )
    port map (
      I => nes_sel_reg_DYMUX_1811,
      CE => nes_sel_reg_CEINV_1808,
      CLK => nes_sel_reg_CLKINV_1809,
      SET => GND,
      RST => GND,
      O => nes_sel_reg_476
    );
  nes_up_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X53Y50"
    )
    port map (
      ADR0 => N9,
      ADR1 => nes_counter_reg(0),
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_N3_0,
      O => nes_up_reg_cmp_eq0000
    );
  nes_state_next_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X53Y50"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => nes_N3_0,
      ADR2 => nes_N01,
      ADR3 => nes_counter_reg(4),
      O => ja2_OBUF_1837
    );
  nes_start_reg : X_FF
    generic map(
      LOC => "SLICE_X64Y46",
      INIT => '0'
    )
    port map (
      I => nes_start_reg_DYMUX_1847,
      CE => nes_start_reg_CEINV_1844,
      CLK => nes_start_reg_CLKINV_1845,
      SET => GND,
      RST => GND,
      O => nes_start_reg_475
    );
  nes_down_reg : X_FF
    generic map(
      LOC => "SLICE_X50Y56",
      INIT => '0'
    )
    port map (
      I => nes_down_reg_DYMUX_1859,
      CE => nes_down_reg_CEINV_1856,
      CLK => nes_down_reg_CLKINV_1857,
      SET => GND,
      RST => GND,
      O => nes_down_reg_480
    );
  nes_right_reg : X_FF
    generic map(
      LOC => "SLICE_X53Y57",
      INIT => '0'
    )
    port map (
      I => nes_right_reg_DYMUX_1871,
      CE => nes_right_reg_CEINV_1868,
      CLK => nes_right_reg_CLKINV_1869,
      SET => GND,
      RST => GND,
      O => nes_right_reg_477
    );
  cd_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X42Y90"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q_01,
      ADR3 => VCC,
      O => cd_Mcount_q_lut(0)
    );
  nes_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_0_G
    );
  nes_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y53"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_2_F
    );
  nes_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y53"
    )
    port map (
      ADR0 => nes_counter_reg(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_2_G
    );
  nes_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y54"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_4_F
    );
  nes_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(5),
      O => nes_Result_4_G
    );
  nes_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y55"
    )
    port map (
      ADR0 => nes_counter_reg(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_6_F
    );
  nes_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_6_G
    );
  nes_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y56"
    )
    port map (
      ADR0 => nes_counter_reg(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_8_F
    );
  nes_scalar_next_addsub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_reg(1),
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_0_G
    );
  nes_scalar_next_addsub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_2_F
    );
  nes_scalar_next_addsub0000_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(3),
      O => nes_scalar_next_addsub0000_2_G
    );
  nes_scalar_next_addsub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(4),
      O => nes_scalar_next_addsub0000_4_F
    );
  nes_scalar_next_addsub0000_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_4_G
    );
  nes_scalar_next_addsub0000_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_reg(6),
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_6_F
    );
  nes_scalar_next_addsub0000_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => nes_scalar_reg(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_6_G
    );
  nes_scalar_next_addsub0000_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(8),
      O => nes_scalar_next_addsub0000_8_F
    );
  ld_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_start_reg_475,
      O => ld_2_O
    );
  ld_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_sel_reg_476,
      O => ld_3_O
    );
  ld_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_right_reg_477,
      O => ld_4_O
    );
  ld_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_up_reg_478,
      O => ld_5_O
    );
  ld_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_down_reg_480,
      O => ld_6_O
    );
  ld_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_482,
      O => ld_7_O
    );
  ja2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja2_OBUF_1837,
      O => ja2_O
    );
  ja3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja3_OBUF_1765,
      O => ja3_O
    );
  ld_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_489,
      O => ld_0_O
    );
  ld_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_b_reg_490,
      O => ld_1_O
    );
  NlwBlock_nes_driver_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_nes_driver_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

