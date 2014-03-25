--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Mon Mar 24 21:14:34 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf group_photos_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true group_photos_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: group_photos_top.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: group_photos_top
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

entity group_photos_top is
  port (
    vsync : out STD_LOGIC; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end group_photos_top;

architecture Structure of group_photos_top is
  signal U2_Result_0_1 : STD_LOGIC; 
  signal U2_Result_1_1 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_1_Q : STD_LOGIC; 
  signal U2_Result_2_1 : STD_LOGIC; 
  signal U2_Result_3_1 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_3_Q : STD_LOGIC; 
  signal U2_Result_4_1 : STD_LOGIC; 
  signal U2_Result_5_1 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_5_Q : STD_LOGIC; 
  signal U2_Result_6_1 : STD_LOGIC; 
  signal U2_Result_7_1 : STD_LOGIC; 
  signal U2_Result_8_1 : STD_LOGIC; 
  signal U2_Result_9_1 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_3_Q : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_7_Q : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_9_Q : STD_LOGIC; 
  signal U3_Msub_xpix_cy_1_Q : STD_LOGIC; 
  signal U3_Msub_xpix_cy_3_Q : STD_LOGIC; 
  signal U3_Msub_xpix_cy_5_Q : STD_LOGIC; 
  signal U3_xpix_addsub0000_7_bdd0_0 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_1_Q : STD_LOGIC; 
  signal U3_Msub_ypix_cy_3_Q : STD_LOGIC; 
  signal sw_4_IBUF_1203 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_5_Q : STD_LOGIC; 
  signal sw_5_IBUF_1208 : STD_LOGIC; 
  signal sw_6_IBUF_1210 : STD_LOGIC; 
  signal sw_7_IBUF_1215 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_4_Q : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_6_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_6_Q : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_1_Q : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_3_Q : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_5_Q : STD_LOGIC; 
  signal btn_0_IBUF_1269 : STD_LOGIC; 
  signal btn_1_IBUF_1270 : STD_LOGIC; 
  signal btn_2_IBUF_1271 : STD_LOGIC; 
  signal btn_3_IBUF_1272 : STD_LOGIC; 
  signal sw_0_IBUF_1277 : STD_LOGIC; 
  signal sw_1_IBUF_1278 : STD_LOGIC; 
  signal sw_2_IBUF_1279 : STD_LOGIC; 
  signal sw_3_IBUF_1280 : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q : STD_LOGIC; 
  signal U3_blue_and000042 : STD_LOGIC; 
  signal U3_blue_and000034 : STD_LOGIC; 
  signal U2_VSENABLE_1307 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_1308 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal U3_blue_and0000257 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_0 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_1313 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_0 : STD_LOGIC; 
  signal U3_blue_and0000248_1315 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal U3_blue_and0000169_1317 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal U3_blue_and0000 : STD_LOGIC; 
  signal M_7_0 : STD_LOGIC; 
  signal U3_blue_and000087_0 : STD_LOGIC; 
  signal U3_blue_and0000325_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal U3_blue_and0000300_0 : STD_LOGIC; 
  signal U3_blue_and0000197_1325 : STD_LOGIC; 
  signal U3_blue_and00000_0 : STD_LOGIC; 
  signal M_0_0 : STD_LOGIC; 
  signal M_5_0 : STD_LOGIC; 
  signal M_1_0 : STD_LOGIC; 
  signal M_6_0 : STD_LOGIC; 
  signal M_3_0 : STD_LOGIC; 
  signal M_2_0 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal U3_blue_and000085_0 : STD_LOGIC; 
  signal M_4_0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11 : STD_LOGIC; 
  signal U3_blue_and000016_1337 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal U2_Result_0_1_XORF_1374 : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ONE_1373 : STD_LOGIC; 
  signal U2_Result_0_1_CYINIT_1372 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELF_1363 : STD_LOGIC; 
  signal U2_Result_0_1_BXINV_1361 : STD_LOGIC; 
  signal U2_Result_0_1_XORG_1359 : STD_LOGIC; 
  signal U2_Result_0_1_CYMUXG_1358 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ZERO_1356 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELG_1347 : STD_LOGIC; 
  signal U2_Result_0_1_G : STD_LOGIC; 
  signal U2_Result_2_1_XORF_1412 : STD_LOGIC; 
  signal U2_Result_2_1_CYINIT_1411 : STD_LOGIC; 
  signal U2_Result_2_1_F : STD_LOGIC; 
  signal U2_Result_2_1_XORG_1400 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_1_CYSELF_1398 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXFAST_1397 : STD_LOGIC; 
  signal U2_Result_2_1_CYAND_1396 : STD_LOGIC; 
  signal U2_Result_2_1_FASTCARRY_1395 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXG2_1394 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXF2_1393 : STD_LOGIC; 
  signal U2_Result_2_1_LOGIC_ZERO_1392 : STD_LOGIC; 
  signal U2_Result_2_1_CYSELG_1383 : STD_LOGIC; 
  signal U2_Result_2_1_G : STD_LOGIC; 
  signal U2_Result_4_1_XORF_1450 : STD_LOGIC; 
  signal U2_Result_4_1_CYINIT_1449 : STD_LOGIC; 
  signal U2_Result_4_1_F : STD_LOGIC; 
  signal U2_Result_4_1_XORG_1438 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_1_CYSELF_1436 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXFAST_1435 : STD_LOGIC; 
  signal U2_Result_4_1_CYAND_1434 : STD_LOGIC; 
  signal U2_Result_4_1_FASTCARRY_1433 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXG2_1432 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXF2_1431 : STD_LOGIC; 
  signal U2_Result_4_1_LOGIC_ZERO_1430 : STD_LOGIC; 
  signal U2_Result_4_1_CYSELG_1421 : STD_LOGIC; 
  signal U2_Result_4_1_G : STD_LOGIC; 
  signal U2_Result_6_1_XORF_1488 : STD_LOGIC; 
  signal U2_Result_6_1_CYINIT_1487 : STD_LOGIC; 
  signal U2_Result_6_1_F : STD_LOGIC; 
  signal U2_Result_6_1_XORG_1476 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_1_CYSELF_1474 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXFAST_1473 : STD_LOGIC; 
  signal U2_Result_6_1_CYAND_1472 : STD_LOGIC; 
  signal U2_Result_6_1_FASTCARRY_1471 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXG2_1470 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXF2_1469 : STD_LOGIC; 
  signal U2_Result_6_1_LOGIC_ZERO_1468 : STD_LOGIC; 
  signal U2_Result_6_1_CYSELG_1459 : STD_LOGIC; 
  signal U2_Result_6_1_G : STD_LOGIC; 
  signal U2_Result_8_1_XORF_1519 : STD_LOGIC; 
  signal U2_Result_8_1_LOGIC_ZERO_1518 : STD_LOGIC; 
  signal U2_Result_8_1_CYINIT_1517 : STD_LOGIC; 
  signal U2_Result_8_1_CYSELF_1508 : STD_LOGIC; 
  signal U2_Result_8_1_F : STD_LOGIC; 
  signal U2_Result_8_1_XORG_1505 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_Q : STD_LOGIC; 
  signal U2_HCS_9_rt_1502 : STD_LOGIC; 
  signal rom_addr16_2_XORF_1555 : STD_LOGIC; 
  signal rom_addr16_2_CYINIT_1554 : STD_LOGIC; 
  signal rom_addr16_2_CY0F_1553 : STD_LOGIC; 
  signal rom_addr16_2_CYSELF_1545 : STD_LOGIC; 
  signal rom_addr16_2_BXINV_1543 : STD_LOGIC; 
  signal rom_addr16_2_XORG_1541 : STD_LOGIC; 
  signal rom_addr16_2_CYMUXG_1540 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_2_Q : STD_LOGIC; 
  signal rom_addr16_2_CY0G_1538 : STD_LOGIC; 
  signal rom_addr16_2_CYSELG_1530 : STD_LOGIC; 
  signal rom_addr16_4_XORF_1594 : STD_LOGIC; 
  signal rom_addr16_4_CYINIT_1593 : STD_LOGIC; 
  signal rom_addr16_4_CY0F_1592 : STD_LOGIC; 
  signal rom_addr16_4_XORG_1582 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_4_Q : STD_LOGIC; 
  signal rom_addr16_4_CYSELF_1580 : STD_LOGIC; 
  signal rom_addr16_4_CYMUXFAST_1579 : STD_LOGIC; 
  signal rom_addr16_4_CYAND_1578 : STD_LOGIC; 
  signal rom_addr16_4_FASTCARRY_1577 : STD_LOGIC; 
  signal rom_addr16_4_CYMUXG2_1576 : STD_LOGIC; 
  signal rom_addr16_4_CYMUXF2_1575 : STD_LOGIC; 
  signal rom_addr16_4_CY0G_1574 : STD_LOGIC; 
  signal rom_addr16_4_CYSELG_1566 : STD_LOGIC; 
  signal rom_addr16_6_XORF_1633 : STD_LOGIC; 
  signal rom_addr16_6_CYINIT_1632 : STD_LOGIC; 
  signal rom_addr16_6_CY0F_1631 : STD_LOGIC; 
  signal rom_addr16_6_XORG_1621 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_6_Q : STD_LOGIC; 
  signal rom_addr16_6_CYSELF_1619 : STD_LOGIC; 
  signal rom_addr16_6_CYMUXFAST_1618 : STD_LOGIC; 
  signal rom_addr16_6_CYAND_1617 : STD_LOGIC; 
  signal rom_addr16_6_FASTCARRY_1616 : STD_LOGIC; 
  signal rom_addr16_6_CYMUXG2_1615 : STD_LOGIC; 
  signal rom_addr16_6_CYMUXF2_1614 : STD_LOGIC; 
  signal rom_addr16_6_CY0G_1613 : STD_LOGIC; 
  signal rom_addr16_6_CYSELG_1605 : STD_LOGIC; 
  signal rom_addr16_8_XORF_1672 : STD_LOGIC; 
  signal rom_addr16_8_CYINIT_1671 : STD_LOGIC; 
  signal rom_addr16_8_CY0F_1670 : STD_LOGIC; 
  signal rom_addr16_8_XORG_1660 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_8_Q : STD_LOGIC; 
  signal rom_addr16_8_CYSELF_1658 : STD_LOGIC; 
  signal rom_addr16_8_CYMUXFAST_1657 : STD_LOGIC; 
  signal rom_addr16_8_CYAND_1656 : STD_LOGIC; 
  signal rom_addr16_8_FASTCARRY_1655 : STD_LOGIC; 
  signal rom_addr16_8_CYMUXG2_1654 : STD_LOGIC; 
  signal rom_addr16_8_CYMUXF2_1653 : STD_LOGIC; 
  signal rom_addr16_8_CY0G_1652 : STD_LOGIC; 
  signal rom_addr16_8_CYSELG_1644 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_1717 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_1716 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_1703 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_1702 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_1701 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_10_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_1699 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_1698 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_1697 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_1696 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_1695 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_1694 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_1684 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_1682 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_1758 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_1757 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_1756 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_1755 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_1754 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_1745 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_1740 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_1739 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_1738 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_add0000_Madd_cy_12_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_13_rt_1735 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_1727 : STD_LOGIC; 
  signal rom_addr16_0_XORF_1796 : STD_LOGIC; 
  signal rom_addr16_0_LOGIC_ZERO_1795 : STD_LOGIC; 
  signal rom_addr16_0_CYINIT_1794 : STD_LOGIC; 
  signal rom_addr16_0_CYSELF_1785 : STD_LOGIC; 
  signal rom_addr16_0_F : STD_LOGIC; 
  signal rom_addr16_0_BXINV_1783 : STD_LOGIC; 
  signal rom_addr16_0_XORG_1781 : STD_LOGIC; 
  signal rom_addr16_0_CYMUXG_1780 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_0_Q : STD_LOGIC; 
  signal rom_addr16_0_LOGIC_ONE_1778 : STD_LOGIC; 
  signal rom_addr16_0_CYSELG_1769 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_1_Q : STD_LOGIC; 
  signal U3_xpix_2_XORF_1834 : STD_LOGIC; 
  signal U3_xpix_2_CYINIT_1833 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_2_Q : STD_LOGIC; 
  signal U3_xpix_2_XORG_1822 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_2_Q : STD_LOGIC; 
  signal U3_xpix_2_CYSELF_1820 : STD_LOGIC; 
  signal U3_xpix_2_CYMUXFAST_1819 : STD_LOGIC; 
  signal U3_xpix_2_CYAND_1818 : STD_LOGIC; 
  signal U3_xpix_2_FASTCARRY_1817 : STD_LOGIC; 
  signal U3_xpix_2_CYMUXG2_1816 : STD_LOGIC; 
  signal U3_xpix_2_CYMUXF2_1815 : STD_LOGIC; 
  signal U3_xpix_2_LOGIC_ONE_1814 : STD_LOGIC; 
  signal U3_xpix_2_CYSELG_1805 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_3_Q : STD_LOGIC; 
  signal U3_xpix_4_XORF_1873 : STD_LOGIC; 
  signal U3_xpix_4_LOGIC_ONE_1872 : STD_LOGIC; 
  signal U3_xpix_4_CYINIT_1871 : STD_LOGIC; 
  signal U3_xpix_4_F : STD_LOGIC; 
  signal U3_xpix_4_XORG_1860 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_4_Q : STD_LOGIC; 
  signal U3_xpix_4_CYSELF_1858 : STD_LOGIC; 
  signal U3_xpix_4_CYMUXFAST_1857 : STD_LOGIC; 
  signal U3_xpix_4_CYAND_1856 : STD_LOGIC; 
  signal U3_xpix_4_FASTCARRY_1855 : STD_LOGIC; 
  signal U3_xpix_4_CYMUXG2_1854 : STD_LOGIC; 
  signal U3_xpix_4_CYMUXF2_1853 : STD_LOGIC; 
  signal U3_xpix_4_LOGIC_ZERO_1852 : STD_LOGIC; 
  signal U3_xpix_4_CYSELG_1844 : STD_LOGIC; 
  signal U3_xpix_6_XORF_1911 : STD_LOGIC; 
  signal U3_xpix_6_CYINIT_1910 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_6_Q_1903 : STD_LOGIC; 
  signal U3_xpix_6_XORG_1901 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_6_Q : STD_LOGIC; 
  signal U3_xpix_6_CYSELF_1899 : STD_LOGIC; 
  signal U3_xpix_6_CYMUXFAST_1898 : STD_LOGIC; 
  signal U3_xpix_6_CYAND_1897 : STD_LOGIC; 
  signal U3_xpix_6_FASTCARRY_1896 : STD_LOGIC; 
  signal U3_xpix_6_CYMUXG2_1895 : STD_LOGIC; 
  signal U3_xpix_6_CYMUXF2_1894 : STD_LOGIC; 
  signal U3_xpix_6_LOGIC_ONE_1893 : STD_LOGIC; 
  signal U3_xpix_6_CYSELG_1887 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_7_Q_1886 : STD_LOGIC; 
  signal U3_xpix_8_XORF_1942 : STD_LOGIC; 
  signal U3_xpix_8_LOGIC_ONE_1941 : STD_LOGIC; 
  signal U3_xpix_8_CYINIT_1940 : STD_LOGIC; 
  signal U3_xpix_8_CYSELF_1933 : STD_LOGIC; 
  signal U3_Msub_xpix_lut_8_Q_1932 : STD_LOGIC; 
  signal U3_xpix_8_XORG_1930 : STD_LOGIC; 
  signal U3_Msub_xpix_cy_8_Q : STD_LOGIC; 
  signal U3_Msub_xpix_lut_9_Q_1927 : STD_LOGIC; 
  signal U3_ypix_0_XORF_1978 : STD_LOGIC; 
  signal U3_ypix_0_LOGIC_ZERO_1977 : STD_LOGIC; 
  signal U3_ypix_0_CYINIT_1976 : STD_LOGIC; 
  signal U3_ypix_0_CYSELF_1967 : STD_LOGIC; 
  signal U3_ypix_0_F : STD_LOGIC; 
  signal U3_ypix_0_BXINV_1965 : STD_LOGIC; 
  signal U3_ypix_0_XORG_1963 : STD_LOGIC; 
  signal U3_ypix_0_CYMUXG_1962 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_0_Q : STD_LOGIC; 
  signal U3_ypix_0_LOGIC_ONE_1960 : STD_LOGIC; 
  signal U3_ypix_0_CYSELG_1951 : STD_LOGIC; 
  signal U3_ypix_2_XORF_2016 : STD_LOGIC; 
  signal U3_ypix_2_CYINIT_2015 : STD_LOGIC; 
  signal U3_ypix_2_XORG_2004 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_2_Q : STD_LOGIC; 
  signal U3_ypix_2_CYSELF_2002 : STD_LOGIC; 
  signal U3_ypix_2_CYMUXFAST_2001 : STD_LOGIC; 
  signal U3_ypix_2_CYAND_2000 : STD_LOGIC; 
  signal U3_ypix_2_FASTCARRY_1999 : STD_LOGIC; 
  signal U3_ypix_2_CYMUXG2_1998 : STD_LOGIC; 
  signal U3_ypix_2_CYMUXF2_1997 : STD_LOGIC; 
  signal U3_ypix_2_LOGIC_ONE_1996 : STD_LOGIC; 
  signal U3_ypix_2_CYSELG_1987 : STD_LOGIC; 
  signal U3_ypix_4_XORF_2055 : STD_LOGIC; 
  signal U3_ypix_4_LOGIC_ONE_2054 : STD_LOGIC; 
  signal U3_ypix_4_CYINIT_2053 : STD_LOGIC; 
  signal U3_ypix_4_XORG_2042 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_4_Q : STD_LOGIC; 
  signal U3_ypix_4_CYSELF_2040 : STD_LOGIC; 
  signal U3_ypix_4_CYMUXFAST_2039 : STD_LOGIC; 
  signal U3_ypix_4_CYAND_2038 : STD_LOGIC; 
  signal U3_ypix_4_FASTCARRY_2037 : STD_LOGIC; 
  signal U3_ypix_4_CYMUXG2_2036 : STD_LOGIC; 
  signal U3_ypix_4_CYMUXF2_2035 : STD_LOGIC; 
  signal U3_ypix_4_CY0G_2034 : STD_LOGIC; 
  signal U3_ypix_4_CYSELG_2026 : STD_LOGIC; 
  signal U3_ypix_6_XORF_2094 : STD_LOGIC; 
  signal U3_ypix_6_CYINIT_2093 : STD_LOGIC; 
  signal U3_ypix_6_CY0F_2092 : STD_LOGIC; 
  signal U3_ypix_6_XORG_2082 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_6_Q : STD_LOGIC; 
  signal U3_ypix_6_CYSELF_2080 : STD_LOGIC; 
  signal U3_ypix_6_CYMUXFAST_2079 : STD_LOGIC; 
  signal U3_ypix_6_CYAND_2078 : STD_LOGIC; 
  signal U3_ypix_6_FASTCARRY_2077 : STD_LOGIC; 
  signal U3_ypix_6_CYMUXG2_2076 : STD_LOGIC; 
  signal U3_ypix_6_CYMUXF2_2075 : STD_LOGIC; 
  signal U3_ypix_6_CY0G_2074 : STD_LOGIC; 
  signal U3_ypix_6_CYSELG_2066 : STD_LOGIC; 
  signal U3_ypix_8_XORF_2125 : STD_LOGIC; 
  signal U3_ypix_8_CYINIT_2124 : STD_LOGIC; 
  signal U3_ypix_8_CY0F_2123 : STD_LOGIC; 
  signal U3_ypix_8_CYSELF_2115 : STD_LOGIC; 
  signal U3_ypix_8_XORG_2112 : STD_LOGIC; 
  signal U3_Msub_ypix_cy_8_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_XORF_2161 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CYINIT_2160 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CY0F_2159 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CYSELF_2151 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_BXINV_2149 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_XORG_2147 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CYMUXG_2146 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_3_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CY0G_2144 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_6_CYSELG_2136 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_XORF_2200 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYINIT_2199 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CY0F_2198 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_XORG_2188 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_5_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYSELF_2186 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYMUXFAST_2185 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYAND_2184 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_FASTCARRY_2183 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYMUXG2_2182 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYMUXF2_2181 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CY0G_2180 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_8_CYSELG_2172 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_XORF_2239 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYINIT_2238 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CY0F_2237 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_XORG_2227 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_7_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYSELF_2225 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYMUXFAST_2224 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYAND_2223 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_FASTCARRY_2222 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYMUXG2_2221 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYMUXF2_2220 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CY0G_2219 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_10_CYSELG_2211 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_12_XORF_2270 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_12_CYINIT_2269 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_12_CY0F_2268 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_12_CYSELF_2260 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_12_XORG_2257 : STD_LOGIC; 
  signal U3_Madd_rom_addr2_addsub0000_Madd_cy_9_Q : STD_LOGIC; 
  signal U2_Result_0_XORF_2306 : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ONE_2305 : STD_LOGIC; 
  signal U2_Result_0_CYINIT_2304 : STD_LOGIC; 
  signal U2_Result_0_CYSELF_2295 : STD_LOGIC; 
  signal U2_Result_0_BXINV_2293 : STD_LOGIC; 
  signal U2_Result_0_XORG_2291 : STD_LOGIC; 
  signal U2_Result_0_CYMUXG_2290 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ZERO_2288 : STD_LOGIC; 
  signal U2_Result_0_CYSELG_2279 : STD_LOGIC; 
  signal U2_Result_0_G : STD_LOGIC; 
  signal U2_Result_2_XORF_2344 : STD_LOGIC; 
  signal U2_Result_2_CYINIT_2343 : STD_LOGIC; 
  signal U2_Result_2_F : STD_LOGIC; 
  signal U2_Result_2_XORG_2332 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_CYSELF_2330 : STD_LOGIC; 
  signal U2_Result_2_CYMUXFAST_2329 : STD_LOGIC; 
  signal U2_Result_2_CYAND_2328 : STD_LOGIC; 
  signal U2_Result_2_FASTCARRY_2327 : STD_LOGIC; 
  signal U2_Result_2_CYMUXG2_2326 : STD_LOGIC; 
  signal U2_Result_2_CYMUXF2_2325 : STD_LOGIC; 
  signal U2_Result_2_LOGIC_ZERO_2324 : STD_LOGIC; 
  signal U2_Result_2_CYSELG_2315 : STD_LOGIC; 
  signal U2_Result_2_G : STD_LOGIC; 
  signal U2_Result_4_XORF_2382 : STD_LOGIC; 
  signal U2_Result_4_CYINIT_2381 : STD_LOGIC; 
  signal U2_Result_4_F : STD_LOGIC; 
  signal U2_Result_4_XORG_2370 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_CYSELF_2368 : STD_LOGIC; 
  signal U2_Result_4_CYMUXFAST_2367 : STD_LOGIC; 
  signal U2_Result_4_CYAND_2366 : STD_LOGIC; 
  signal U2_Result_4_FASTCARRY_2365 : STD_LOGIC; 
  signal U2_Result_4_CYMUXG2_2364 : STD_LOGIC; 
  signal U2_Result_4_CYMUXF2_2363 : STD_LOGIC; 
  signal U2_Result_4_LOGIC_ZERO_2362 : STD_LOGIC; 
  signal U2_Result_4_CYSELG_2353 : STD_LOGIC; 
  signal U2_Result_4_G : STD_LOGIC; 
  signal U2_Result_6_XORF_2420 : STD_LOGIC; 
  signal U2_Result_6_CYINIT_2419 : STD_LOGIC; 
  signal U2_Result_6_F : STD_LOGIC; 
  signal U2_Result_6_XORG_2408 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_CYSELF_2406 : STD_LOGIC; 
  signal U2_Result_6_CYMUXFAST_2405 : STD_LOGIC; 
  signal U2_Result_6_CYAND_2404 : STD_LOGIC; 
  signal U2_Result_6_FASTCARRY_2403 : STD_LOGIC; 
  signal U2_Result_6_CYMUXG2_2402 : STD_LOGIC; 
  signal U2_Result_6_CYMUXF2_2401 : STD_LOGIC; 
  signal U2_Result_6_LOGIC_ZERO_2400 : STD_LOGIC; 
  signal U2_Result_6_CYSELG_2391 : STD_LOGIC; 
  signal U2_Result_6_G : STD_LOGIC; 
  signal U2_Result_8_XORF_2451 : STD_LOGIC; 
  signal U2_Result_8_LOGIC_ZERO_2450 : STD_LOGIC; 
  signal U2_Result_8_CYINIT_2449 : STD_LOGIC; 
  signal U2_Result_8_CYSELF_2440 : STD_LOGIC; 
  signal U2_Result_8_F : STD_LOGIC; 
  signal U2_Result_8_XORG_2437 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_Q : STD_LOGIC; 
  signal U2_vcs_9_rt_2434 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ZERO_2482 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYINIT_2481 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELF_2472 : STD_LOGIC; 
  signal U2_vcs_2_rt : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_BXINV_2470 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYMUXG_2469 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ONE_2467 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELG_2459 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0F_2513 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELF_2504 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXFAST_2503 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYAND_2502 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_FASTCARRY_2501 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXG2_2500 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXF2_2499 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0G_2498 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELG_2490 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0F_2544 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELF_2535 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXFAST_2534 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYAND_2533 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_FASTCARRY_2532 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXG2_2531 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXF2_2530 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0G_2529 : STD_LOGIC; 
  signal U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELG_2522 : STD_LOGIC; 
  signal N3_CYINIT_2571 : STD_LOGIC; 
  signal N3_CY0F_2570 : STD_LOGIC; 
  signal N3_CYSELF_2563 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_XORF_2605 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_CYINIT_2604 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_CYSELF_2595 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_F : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_BXINV_2593 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_XORG_2591 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_CYMUXG_2590 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_0_Q : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_LOGIC_ZERO_2588 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_CYSELG_2579 : STD_LOGIC; 
  signal U3_ypix_addsub0000_0_G : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_XORF_2643 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYINIT_2642 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_F : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_XORG_2631 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_2_Q : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYSELF_2629 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYMUXFAST_2628 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYAND_2627 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_FASTCARRY_2626 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYMUXG2_2625 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYMUXF2_2624 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_LOGIC_ZERO_2623 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_CYSELG_2614 : STD_LOGIC; 
  signal U3_ypix_addsub0000_2_G : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_XORF_2682 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_LOGIC_ZERO_2681 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYINIT_2680 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_F : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_XORG_2669 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_4_Q : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYSELF_2667 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYMUXFAST_2666 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYAND_2665 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_FASTCARRY_2664 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYMUXG2_2663 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYMUXF2_2662 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_LOGIC_ONE_2661 : STD_LOGIC; 
  signal U3_ypix_addsub0000_4_CYSELG_2652 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_XORF_2720 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYINIT_2719 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_XORG_2708 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_6_Q : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYSELF_2706 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYMUXFAST_2705 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYAND_2704 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_FASTCARRY_2703 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYMUXG2_2702 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYMUXF2_2701 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_LOGIC_ONE_2700 : STD_LOGIC; 
  signal U3_ypix_addsub0000_6_CYSELG_2691 : STD_LOGIC; 
  signal U3_ypix_addsub0000_8_XORF_2751 : STD_LOGIC; 
  signal U3_ypix_addsub0000_8_LOGIC_ONE_2750 : STD_LOGIC; 
  signal U3_ypix_addsub0000_8_CYINIT_2749 : STD_LOGIC; 
  signal U3_ypix_addsub0000_8_CYSELF_2740 : STD_LOGIC; 
  signal U3_ypix_addsub0000_8_XORG_2737 : STD_LOGIC; 
  signal U3_Msub_ypix_addsub0000_cy_8_Q : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_XORF_2787 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CYINIT_2786 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CY0F_2785 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CYSELF_2777 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_BXINV_2775 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_XORG_2773 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CYMUXG_2772 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CY0G_2770 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_5_CYSELG_2762 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_XORF_2826 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYINIT_2825 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CY0F_2824 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_XORG_2814 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYSELF_2812 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYMUXFAST_2811 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYAND_2810 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_FASTCARRY_2809 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYMUXG2_2808 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYMUXF2_2807 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CY0G_2806 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_7_CYSELG_2798 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_XORF_2865 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYINIT_2864 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CY0F_2863 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_XORG_2853 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYSELF_2851 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYMUXFAST_2850 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYAND_2849 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_FASTCARRY_2848 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYMUXG2_2847 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYMUXF2_2846 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CY0G_2845 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_9_CYSELG_2837 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_XORF_2904 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYINIT_2903 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CY0F_2902 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_XORG_2892 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYSELF_2890 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYMUXFAST_2889 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYAND_2888 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_FASTCARRY_2887 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYMUXG2_2886 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYMUXF2_2885 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_LOGIC_ZERO_2884 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_CYSELG_2875 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_11_G : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_13_XORF_2919 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0001_13_CYINIT_2918 : STD_LOGIC; 
  signal U3_rom_addr2_addsub0000_13_rt_2916 : STD_LOGIC; 
  signal red_1_O : STD_LOGIC; 
  signal red_2_O : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal green_0_O : STD_LOGIC; 
  signal green_1_O : STD_LOGIC; 
  signal green_2_O : STD_LOGIC; 
  signal hsync_O : STD_LOGIC; 
  signal sw_0_INBUF : STD_LOGIC; 
  signal sw_1_INBUF : STD_LOGIC; 
  signal sw_2_INBUF : STD_LOGIC; 
  signal sw_3_INBUF : STD_LOGIC; 
  signal sw_4_INBUF : STD_LOGIC; 
  signal sw_5_INBUF : STD_LOGIC; 
  signal sw_6_INBUF : STD_LOGIC; 
  signal sw_7_INBUF : STD_LOGIC; 
  signal vsync_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal blue_0_O : STD_LOGIC; 
  signal blue_1_O : STD_LOGIC; 
  signal red_0_O : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_q_0_BUFG_S_INVNOT : STD_LOGIC; 
  signal U1_q_0_BUFG_I0_INV : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOPB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB7 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB6 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB5 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB4 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB3 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB2 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOPA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIPA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA7 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA6 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA5 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA4 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA3 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA2 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal U3_blue_and000042_F5MUX_3350 : STD_LOGIC; 
  signal U3_blue_and0000421_3348 : STD_LOGIC; 
  signal U3_blue_and000042_BXINV_3343 : STD_LOGIC; 
  signal U3_blue_and000042_G : STD_LOGIC; 
  signal U3_blue_and000034_F5MUX_3375 : STD_LOGIC; 
  signal U3_blue_and000034_F : STD_LOGIC; 
  signal U3_blue_and000034_BXINV_3364 : STD_LOGIC; 
  signal U3_blue_and0000341_3362 : STD_LOGIC; 
  signal U2_vcs_9_DXMUX_3407 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal U2_vcs_9_CLKINV_3389 : STD_LOGIC; 
  signal U2_vcs_9_CEINV_3388 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_3436 : STD_LOGIC; 
  signal U3_blue_and0000257_pack_1 : STD_LOGIC; 
  signal U2_VSENABLE_DXMUX_3467 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_pack_1 : STD_LOGIC; 
  signal U2_VSENABLE_CLKINV_3450 : STD_LOGIC; 
  signal U2_VSENABLE_CEINVNOT : STD_LOGIC; 
  signal U1_q_01_DXMUX_3492 : STD_LOGIC; 
  signal U1_q_01_XORF_3490 : STD_LOGIC; 
  signal U1_q_01_CYINIT_3489 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_rt_3487 : STD_LOGIC; 
  signal U1_q_01_BXINV_3479 : STD_LOGIC; 
  signal U1_q_01_CLKINV_3477 : STD_LOGIC; 
  signal U2_HCS_1_DXMUX_3534 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_1 : STD_LOGIC; 
  signal U2_HCS_1_DYMUX_3519 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_0 : STD_LOGIC; 
  signal U2_HCS_1_SRINV_3510 : STD_LOGIC; 
  signal U2_HCS_1_CLKINV_3509 : STD_LOGIC; 
  signal U2_HCS_3_DXMUX_3576 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_3 : STD_LOGIC; 
  signal U2_HCS_3_DYMUX_3561 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_2 : STD_LOGIC; 
  signal U2_HCS_3_SRINV_3552 : STD_LOGIC; 
  signal U2_HCS_3_CLKINV_3551 : STD_LOGIC; 
  signal U2_HCS_5_DXMUX_3618 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_5 : STD_LOGIC; 
  signal U2_HCS_5_DYMUX_3603 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_4 : STD_LOGIC; 
  signal U2_HCS_5_SRINV_3594 : STD_LOGIC; 
  signal U2_HCS_5_CLKINV_3593 : STD_LOGIC; 
  signal U2_HCS_7_DXMUX_3660 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_7 : STD_LOGIC; 
  signal U2_HCS_7_DYMUX_3645 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_6 : STD_LOGIC; 
  signal U2_HCS_7_SRINV_3636 : STD_LOGIC; 
  signal U2_HCS_7_CLKINV_3635 : STD_LOGIC; 
  signal U2_HCS_9_DXMUX_3702 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_9 : STD_LOGIC; 
  signal U2_HCS_9_DYMUX_3687 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_8 : STD_LOGIC; 
  signal U2_HCS_9_SRINV_3678 : STD_LOGIC; 
  signal U2_HCS_9_CLKINV_3677 : STD_LOGIC; 
  signal U2_vcs_1_DXMUX_3747 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal U2_vcs_1_DYMUX_3730 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal U2_vcs_1_SRINV_3720 : STD_LOGIC; 
  signal U2_vcs_1_CLKINV_3719 : STD_LOGIC; 
  signal U2_vcs_1_CEINV_3718 : STD_LOGIC; 
  signal U2_vcs_3_DXMUX_3793 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal U2_vcs_3_DYMUX_3776 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal U2_vcs_3_SRINV_3766 : STD_LOGIC; 
  signal U2_vcs_3_CLKINV_3765 : STD_LOGIC; 
  signal U2_vcs_3_CEINV_3764 : STD_LOGIC; 
  signal U2_vcs_5_DXMUX_3839 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal U2_vcs_5_DYMUX_3822 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal U2_vcs_5_SRINV_3812 : STD_LOGIC; 
  signal U2_vcs_5_CLKINV_3811 : STD_LOGIC; 
  signal U2_vcs_5_CEINV_3810 : STD_LOGIC; 
  signal U2_vcs_7_DXMUX_3885 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal U2_vcs_7_DYMUX_3868 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal U2_vcs_7_SRINV_3858 : STD_LOGIC; 
  signal U2_vcs_7_CLKINV_3857 : STD_LOGIC; 
  signal U2_vcs_7_CEINV_3856 : STD_LOGIC; 
  signal U2_vcs_8_DYMUX_3911 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal U2_vcs_8_CLKINV_3900 : STD_LOGIC; 
  signal U2_vcs_8_CEINV_3899 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal U3_blue_and0000248_pack_2 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U3_blue_and0000169_pack_1 : STD_LOGIC; 
  signal red_2_OBUF_3988 : STD_LOGIC; 
  signal U3_blue_and0000_pack_1 : STD_LOGIC; 
  signal U3_blue_and0000325_4012 : STD_LOGIC; 
  signal U3_blue_and0000197_pack_1 : STD_LOGIC; 
  signal U3_blue_and00000_4036 : STD_LOGIC; 
  signal hsync_OBUF_4027 : STD_LOGIC; 
  signal blue_0_OBUF_4060 : STD_LOGIC; 
  signal red_0_OBUF_4051 : STD_LOGIC; 
  signal vsync_OBUF_4084 : STD_LOGIC; 
  signal U2_N2_pack_1 : STD_LOGIC; 
  signal blue_1_OBUF_4108 : STD_LOGIC; 
  signal red_1_OBUF_4099 : STD_LOGIC; 
  signal green_1_OBUF_4132 : STD_LOGIC; 
  signal green_0_OBUF_4123 : STD_LOGIC; 
  signal U3_blue_and000087_4156 : STD_LOGIC; 
  signal N19_pack_1 : STD_LOGIC; 
  signal green_2_OBUF_4168 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal U3_blue_and000016_pack_1 : STD_LOGIC; 
  signal U3_blue_and0000300_4312 : STD_LOGIC; 
  signal N15_pack_1 : STD_LOGIC; 
  signal U3_blue_and000085_4336 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal U3_xpix_addsub0000_7_bdd0 : STD_LOGIC; 
  signal U2_vcs_9_FFX_RSTAND_3413 : STD_LOGIC; 
  signal U1_q_01_FFX_RSTAND_3497 : STD_LOGIC; 
  signal U2_vcs_8_FFY_RSTAND_3917 : STD_LOGIC; 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal U2_HCS : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_ypix : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_xpix : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal rom_addr16 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U3_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U3_ypix_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal U2_Mcount_HCS_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U3_xpix_addsub0000 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_Msub_ypix_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U3_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcompar_spriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal U3_Msub_ypix_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal M : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array : STD_LOGIC_VECTOR ( 4 downto 4 ); 
begin
  U2_Result_0_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ZERO_1356
    );
  U2_Result_0_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ONE_1373
    );
  U2_Result_0_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORF_1374,
      O => U2_Result_0_1
    );
  U2_Result_0_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      I0 => U2_Result_0_1_CYINIT_1372,
      I1 => U2_Mcount_HCS_lut(0),
      O => U2_Result_0_1_XORF_1374
    );
  U2_Result_0_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ONE_1373,
      IB => U2_Result_0_1_CYINIT_1372,
      SEL => U2_Result_0_1_CYSELF_1363,
      O => U2_Mcount_HCS_cy_0_Q
    );
  U2_Result_0_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_BXINV_1361,
      O => U2_Result_0_1_CYINIT_1372
    );
  U2_Result_0_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_lut(0),
      O => U2_Result_0_1_CYSELF_1363
    );
  U2_Result_0_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_1_BXINV_1361
    );
  U2_Result_0_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORG_1359,
      O => U2_Result_1_1
    );
  U2_Result_0_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_0_Q,
      I1 => U2_Result_0_1_G,
      O => U2_Result_0_1_XORG_1359
    );
  U2_Result_0_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_CYMUXG_1358,
      O => U2_Mcount_HCS_cy_1_Q
    );
  U2_Result_0_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ZERO_1356,
      IB => U2_Mcount_HCS_cy_0_Q,
      SEL => U2_Result_0_1_CYSELG_1347,
      O => U2_Result_0_1_CYMUXG_1358
    );
  U2_Result_0_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_G,
      O => U2_Result_0_1_CYSELG_1347
    );
  U2_Result_2_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      O => U2_Result_2_1_LOGIC_ZERO_1392
    );
  U2_Result_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORF_1412,
      O => U2_Result_2_1
    );
  U2_Result_2_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      I0 => U2_Result_2_1_CYINIT_1411,
      I1 => U2_Result_2_1_F,
      O => U2_Result_2_1_XORF_1412
    );
  U2_Result_2_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_1392,
      IB => U2_Result_2_1_CYINIT_1411,
      SEL => U2_Result_2_1_CYSELF_1398,
      O => U2_Mcount_HCS_cy_2_Q
    );
  U2_Result_2_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_1392,
      IB => U2_Result_2_1_LOGIC_ZERO_1392,
      SEL => U2_Result_2_1_CYSELF_1398,
      O => U2_Result_2_1_CYMUXF2_1393
    );
  U2_Result_2_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_1_Q,
      O => U2_Result_2_1_CYINIT_1411
    );
  U2_Result_2_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_F,
      O => U2_Result_2_1_CYSELF_1398
    );
  U2_Result_2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORG_1400,
      O => U2_Result_3_1
    );
  U2_Result_2_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_2_Q,
      I1 => U2_Result_2_1_G,
      O => U2_Result_2_1_XORG_1400
    );
  U2_Result_2_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_CYMUXFAST_1397,
      O => U2_Mcount_HCS_cy_3_Q
    );
  U2_Result_2_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_1_Q,
      O => U2_Result_2_1_FASTCARRY_1395
    );
  U2_Result_2_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      I0 => U2_Result_2_1_CYSELG_1383,
      I1 => U2_Result_2_1_CYSELF_1398,
      O => U2_Result_2_1_CYAND_1396
    );
  U2_Result_2_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      IA => U2_Result_2_1_CYMUXG2_1394,
      IB => U2_Result_2_1_FASTCARRY_1395,
      SEL => U2_Result_2_1_CYAND_1396,
      O => U2_Result_2_1_CYMUXFAST_1397
    );
  U2_Result_2_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y45"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_1392,
      IB => U2_Result_2_1_CYMUXF2_1393,
      SEL => U2_Result_2_1_CYSELG_1383,
      O => U2_Result_2_1_CYMUXG2_1394
    );
  U2_Result_2_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_G,
      O => U2_Result_2_1_CYSELG_1383
    );
  U2_Result_4_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      O => U2_Result_4_1_LOGIC_ZERO_1430
    );
  U2_Result_4_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORF_1450,
      O => U2_Result_4_1
    );
  U2_Result_4_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      I0 => U2_Result_4_1_CYINIT_1449,
      I1 => U2_Result_4_1_F,
      O => U2_Result_4_1_XORF_1450
    );
  U2_Result_4_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_1430,
      IB => U2_Result_4_1_CYINIT_1449,
      SEL => U2_Result_4_1_CYSELF_1436,
      O => U2_Mcount_HCS_cy_4_Q
    );
  U2_Result_4_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_1430,
      IB => U2_Result_4_1_LOGIC_ZERO_1430,
      SEL => U2_Result_4_1_CYSELF_1436,
      O => U2_Result_4_1_CYMUXF2_1431
    );
  U2_Result_4_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_3_Q,
      O => U2_Result_4_1_CYINIT_1449
    );
  U2_Result_4_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_F,
      O => U2_Result_4_1_CYSELF_1436
    );
  U2_Result_4_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORG_1438,
      O => U2_Result_5_1
    );
  U2_Result_4_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_4_Q,
      I1 => U2_Result_4_1_G,
      O => U2_Result_4_1_XORG_1438
    );
  U2_Result_4_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_CYMUXFAST_1435,
      O => U2_Mcount_HCS_cy_5_Q
    );
  U2_Result_4_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_3_Q,
      O => U2_Result_4_1_FASTCARRY_1433
    );
  U2_Result_4_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      I0 => U2_Result_4_1_CYSELG_1421,
      I1 => U2_Result_4_1_CYSELF_1436,
      O => U2_Result_4_1_CYAND_1434
    );
  U2_Result_4_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      IA => U2_Result_4_1_CYMUXG2_1432,
      IB => U2_Result_4_1_FASTCARRY_1433,
      SEL => U2_Result_4_1_CYAND_1434,
      O => U2_Result_4_1_CYMUXFAST_1435
    );
  U2_Result_4_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y46"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_1430,
      IB => U2_Result_4_1_CYMUXF2_1431,
      SEL => U2_Result_4_1_CYSELG_1421,
      O => U2_Result_4_1_CYMUXG2_1432
    );
  U2_Result_4_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_G,
      O => U2_Result_4_1_CYSELG_1421
    );
  U2_Result_6_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      O => U2_Result_6_1_LOGIC_ZERO_1468
    );
  U2_Result_6_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORF_1488,
      O => U2_Result_6_1
    );
  U2_Result_6_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      I0 => U2_Result_6_1_CYINIT_1487,
      I1 => U2_Result_6_1_F,
      O => U2_Result_6_1_XORF_1488
    );
  U2_Result_6_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_1468,
      IB => U2_Result_6_1_CYINIT_1487,
      SEL => U2_Result_6_1_CYSELF_1474,
      O => U2_Mcount_HCS_cy_6_Q
    );
  U2_Result_6_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_1468,
      IB => U2_Result_6_1_LOGIC_ZERO_1468,
      SEL => U2_Result_6_1_CYSELF_1474,
      O => U2_Result_6_1_CYMUXF2_1469
    );
  U2_Result_6_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_5_Q,
      O => U2_Result_6_1_CYINIT_1487
    );
  U2_Result_6_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_F,
      O => U2_Result_6_1_CYSELF_1474
    );
  U2_Result_6_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORG_1476,
      O => U2_Result_7_1
    );
  U2_Result_6_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_6_Q,
      I1 => U2_Result_6_1_G,
      O => U2_Result_6_1_XORG_1476
    );
  U2_Result_6_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_5_Q,
      O => U2_Result_6_1_FASTCARRY_1471
    );
  U2_Result_6_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      I0 => U2_Result_6_1_CYSELG_1459,
      I1 => U2_Result_6_1_CYSELF_1474,
      O => U2_Result_6_1_CYAND_1472
    );
  U2_Result_6_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      IA => U2_Result_6_1_CYMUXG2_1470,
      IB => U2_Result_6_1_FASTCARRY_1471,
      SEL => U2_Result_6_1_CYAND_1472,
      O => U2_Result_6_1_CYMUXFAST_1473
    );
  U2_Result_6_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y47"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_1468,
      IB => U2_Result_6_1_CYMUXF2_1469,
      SEL => U2_Result_6_1_CYSELG_1459,
      O => U2_Result_6_1_CYMUXG2_1470
    );
  U2_Result_6_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_G,
      O => U2_Result_6_1_CYSELG_1459
    );
  U2_Result_8_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y48"
    )
    port map (
      O => U2_Result_8_1_LOGIC_ZERO_1518
    );
  U2_Result_8_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORF_1519,
      O => U2_Result_8_1
    );
  U2_Result_8_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y48"
    )
    port map (
      I0 => U2_Result_8_1_CYINIT_1517,
      I1 => U2_Result_8_1_F,
      O => U2_Result_8_1_XORF_1519
    );
  U2_Result_8_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y48"
    )
    port map (
      IA => U2_Result_8_1_LOGIC_ZERO_1518,
      IB => U2_Result_8_1_CYINIT_1517,
      SEL => U2_Result_8_1_CYSELF_1508,
      O => U2_Mcount_HCS_cy_8_Q
    );
  U2_Result_8_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_CYMUXFAST_1473,
      O => U2_Result_8_1_CYINIT_1517
    );
  U2_Result_8_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_F,
      O => U2_Result_8_1_CYSELF_1508
    );
  U2_Result_8_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORG_1505,
      O => U2_Result_9_1
    );
  U2_Result_8_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y48"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_8_Q,
      I1 => U2_HCS_9_rt_1502,
      O => U2_Result_8_1_XORG_1505
    );
  rom_addr16_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_2_XORF_1555,
      O => rom_addr16(2)
    );
  rom_addr16_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      I0 => rom_addr16_2_CYINIT_1554,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(2),
      O => rom_addr16_2_XORF_1555
    );
  rom_addr16_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => rom_addr16_2_CY0F_1553,
      IB => rom_addr16_2_CYINIT_1554,
      SEL => rom_addr16_2_CYSELF_1545,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_2_Q
    );
  rom_addr16_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_2_BXINV_1543,
      O => rom_addr16_2_CYINIT_1554
    );
  rom_addr16_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(0),
      O => rom_addr16_2_CY0F_1553
    );
  rom_addr16_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(2),
      O => rom_addr16_2_CYSELF_1545
    );
  rom_addr16_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => rom_addr16_2_BXINV_1543
    );
  rom_addr16_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_2_XORG_1541,
      O => rom_addr16(3)
    );
  rom_addr16_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_2_Q,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(3),
      O => rom_addr16_2_XORG_1541
    );
  rom_addr16_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_2_CYMUXG_1540,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_3_Q
    );
  rom_addr16_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => rom_addr16_2_CY0G_1538,
      IB => U3_Madd_rom_addr2_add0000_Madd_cy_2_Q,
      SEL => rom_addr16_2_CYSELG_1530,
      O => rom_addr16_2_CYMUXG_1540
    );
  rom_addr16_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(1),
      O => rom_addr16_2_CY0G_1538
    );
  rom_addr16_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(3),
      O => rom_addr16_2_CYSELG_1530
    );
  rom_addr16_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_4_XORF_1594,
      O => rom_addr16(4)
    );
  rom_addr16_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => rom_addr16_4_CYINIT_1593,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(4),
      O => rom_addr16_4_XORF_1594
    );
  rom_addr16_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => rom_addr16_4_CY0F_1592,
      IB => rom_addr16_4_CYINIT_1593,
      SEL => rom_addr16_4_CYSELF_1580,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_4_Q
    );
  rom_addr16_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => rom_addr16_4_CY0F_1592,
      IB => rom_addr16_4_CY0F_1592,
      SEL => rom_addr16_4_CYSELF_1580,
      O => rom_addr16_4_CYMUXF2_1575
    );
  rom_addr16_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_3_Q,
      O => rom_addr16_4_CYINIT_1593
    );
  rom_addr16_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(2),
      O => rom_addr16_4_CY0F_1592
    );
  rom_addr16_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(4),
      O => rom_addr16_4_CYSELF_1580
    );
  rom_addr16_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_4_XORG_1582,
      O => rom_addr16(5)
    );
  rom_addr16_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_4_Q,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(5),
      O => rom_addr16_4_XORG_1582
    );
  rom_addr16_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_4_CYMUXFAST_1579,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_5_Q
    );
  rom_addr16_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_3_Q,
      O => rom_addr16_4_FASTCARRY_1577
    );
  rom_addr16_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => rom_addr16_4_CYSELG_1566,
      I1 => rom_addr16_4_CYSELF_1580,
      O => rom_addr16_4_CYAND_1578
    );
  rom_addr16_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => rom_addr16_4_CYMUXG2_1576,
      IB => rom_addr16_4_FASTCARRY_1577,
      SEL => rom_addr16_4_CYAND_1578,
      O => rom_addr16_4_CYMUXFAST_1579
    );
  rom_addr16_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => rom_addr16_4_CY0G_1574,
      IB => rom_addr16_4_CYMUXF2_1575,
      SEL => rom_addr16_4_CYSELG_1566,
      O => rom_addr16_4_CYMUXG2_1576
    );
  rom_addr16_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001(5),
      O => rom_addr16_4_CY0G_1574
    );
  rom_addr16_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(5),
      O => rom_addr16_4_CYSELG_1566
    );
  rom_addr16_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_6_XORF_1633,
      O => rom_addr16(6)
    );
  rom_addr16_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      I0 => rom_addr16_6_CYINIT_1632,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(6),
      O => rom_addr16_6_XORF_1633
    );
  rom_addr16_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => rom_addr16_6_CY0F_1631,
      IB => rom_addr16_6_CYINIT_1632,
      SEL => rom_addr16_6_CYSELF_1619,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_6_Q
    );
  rom_addr16_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => rom_addr16_6_CY0F_1631,
      IB => rom_addr16_6_CY0F_1631,
      SEL => rom_addr16_6_CYSELF_1619,
      O => rom_addr16_6_CYMUXF2_1614
    );
  rom_addr16_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_5_Q,
      O => rom_addr16_6_CYINIT_1632
    );
  rom_addr16_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001(6),
      O => rom_addr16_6_CY0F_1631
    );
  rom_addr16_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(6),
      O => rom_addr16_6_CYSELF_1619
    );
  rom_addr16_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_6_XORG_1621,
      O => rom_addr16(7)
    );
  rom_addr16_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_6_Q,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(7),
      O => rom_addr16_6_XORG_1621
    );
  rom_addr16_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_6_CYMUXFAST_1618,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_7_Q
    );
  rom_addr16_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_5_Q,
      O => rom_addr16_6_FASTCARRY_1616
    );
  rom_addr16_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      I0 => rom_addr16_6_CYSELG_1605,
      I1 => rom_addr16_6_CYSELF_1619,
      O => rom_addr16_6_CYAND_1617
    );
  rom_addr16_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => rom_addr16_6_CYMUXG2_1615,
      IB => rom_addr16_6_FASTCARRY_1616,
      SEL => rom_addr16_6_CYAND_1617,
      O => rom_addr16_6_CYMUXFAST_1618
    );
  rom_addr16_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => rom_addr16_6_CY0G_1613,
      IB => rom_addr16_6_CYMUXF2_1614,
      SEL => rom_addr16_6_CYSELG_1605,
      O => rom_addr16_6_CYMUXG2_1615
    );
  rom_addr16_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001(7),
      O => rom_addr16_6_CY0G_1613
    );
  rom_addr16_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(7),
      O => rom_addr16_6_CYSELG_1605
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y38"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0001(8),
      ADR1 => U3_xpix(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(8)
    );
  rom_addr16_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_8_XORF_1672,
      O => rom_addr16(8)
    );
  rom_addr16_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      I0 => rom_addr16_8_CYINIT_1671,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(8),
      O => rom_addr16_8_XORF_1672
    );
  rom_addr16_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      IA => rom_addr16_8_CY0F_1670,
      IB => rom_addr16_8_CYINIT_1671,
      SEL => rom_addr16_8_CYSELF_1658,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_8_Q
    );
  rom_addr16_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      IA => rom_addr16_8_CY0F_1670,
      IB => rom_addr16_8_CY0F_1670,
      SEL => rom_addr16_8_CYSELF_1658,
      O => rom_addr16_8_CYMUXF2_1653
    );
  rom_addr16_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_7_Q,
      O => rom_addr16_8_CYINIT_1671
    );
  rom_addr16_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001(8),
      O => rom_addr16_8_CY0F_1670
    );
  rom_addr16_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(8),
      O => rom_addr16_8_CYSELF_1658
    );
  rom_addr16_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_8_XORG_1660,
      O => rom_addr16(9)
    );
  rom_addr16_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_8_Q,
      I1 => U3_Madd_rom_addr2_add0000_Madd_lut(9),
      O => rom_addr16_8_XORG_1660
    );
  rom_addr16_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_8_CYMUXFAST_1657,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_9_Q
    );
  rom_addr16_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_7_Q,
      O => rom_addr16_8_FASTCARRY_1655
    );
  rom_addr16_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      I0 => rom_addr16_8_CYSELG_1644,
      I1 => rom_addr16_8_CYSELF_1658,
      O => rom_addr16_8_CYAND_1656
    );
  rom_addr16_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      IA => rom_addr16_8_CYMUXG2_1654,
      IB => rom_addr16_8_FASTCARRY_1655,
      SEL => rom_addr16_8_CYAND_1656,
      O => rom_addr16_8_CYMUXFAST_1657
    );
  rom_addr16_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y38"
    )
    port map (
      IA => rom_addr16_8_CY0G_1652,
      IB => rom_addr16_8_CYMUXF2_1653,
      SEL => rom_addr16_8_CYSELG_1644,
      O => rom_addr16_8_CYMUXG2_1654
    );
  rom_addr16_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001(9),
      O => rom_addr16_8_CY0G_1652
    );
  rom_addr16_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_lut(9),
      O => rom_addr16_8_CYSELG_1644
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_rom_addr2_addsub0001(9),
      ADR2 => VCC,
      ADR3 => U3_xpix(9),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(9)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0 : X_FF
    generic map(
      LOC => "SLICE_X43Y39",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_1703,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_1682,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_1717,
      O => rom_addr16(10)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_1716,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_1717
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_1716,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_1699,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_10_Q
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_1699,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_1694
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_9_Q,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_1716
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_1699
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_1702,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_1703
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_1702,
      O => rom_addr16(11)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_1701,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_1702
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_10_Q,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_1701
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_add0000_Madd_cy_9_Q,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_1696
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_1684,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_1699,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_1697
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_1695,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_1696,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_1697,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_1698
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y39"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_1693,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_1694,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_1684,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_1695
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_1684
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_1682
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_1755
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_1757,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_1758
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_1757,
      O => rom_addr16(12)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_1756,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_1757
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_1754,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_1756
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_1755,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_1754,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_1745,
      O => U3_Madd_rom_addr2_add0000_Madd_cy_12_Q
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_1698,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_1754
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_1745
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_1739,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_1740
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_1739,
      O => rom_addr16(13)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_1738,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_1739
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      I0 => U3_Madd_rom_addr2_add0000_Madd_cy_12_Q,
      I1 => U3_rom_addr2_addsub0001_13_rt_1735,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_1738
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_1727
    );
  rom_addr16_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      O => rom_addr16_0_LOGIC_ONE_1778
    );
  rom_addr16_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      O => rom_addr16_0_LOGIC_ZERO_1795
    );
  rom_addr16_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_0_XORF_1796,
      O => rom_addr16(0)
    );
  rom_addr16_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      I0 => rom_addr16_0_CYINIT_1794,
      I1 => rom_addr16_0_F,
      O => rom_addr16_0_XORF_1796
    );
  rom_addr16_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => rom_addr16_0_LOGIC_ZERO_1795,
      IB => rom_addr16_0_CYINIT_1794,
      SEL => rom_addr16_0_CYSELF_1785,
      O => U3_Msub_xpix_cy_0_Q
    );
  rom_addr16_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_0_BXINV_1783,
      O => rom_addr16_0_CYINIT_1794
    );
  rom_addr16_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_0_F,
      O => rom_addr16_0_CYSELF_1785
    );
  rom_addr16_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => rom_addr16_0_BXINV_1783
    );
  rom_addr16_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_0_XORG_1781,
      O => rom_addr16(1)
    );
  rom_addr16_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      I0 => U3_Msub_xpix_cy_0_Q,
      I1 => U3_Msub_xpix_lut_1_Q,
      O => rom_addr16_0_XORG_1781
    );
  rom_addr16_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16_0_CYMUXG_1780,
      O => U3_Msub_xpix_cy_1_Q
    );
  rom_addr16_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => rom_addr16_0_LOGIC_ONE_1778,
      IB => U3_Msub_xpix_cy_0_Q,
      SEL => rom_addr16_0_CYSELG_1769,
      O => rom_addr16_0_CYMUXG_1780
    );
  rom_addr16_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_1_Q,
      O => rom_addr16_0_CYSELG_1769
    );
  U3_xpix_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      O => U3_xpix_2_LOGIC_ONE_1814
    );
  U3_xpix_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_2_XORF_1834,
      O => U3_xpix(2)
    );
  U3_xpix_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => U3_xpix_2_CYINIT_1833,
      I1 => U3_Msub_xpix_lut_2_Q,
      O => U3_xpix_2_XORF_1834
    );
  U3_xpix_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => U3_xpix_2_LOGIC_ONE_1814,
      IB => U3_xpix_2_CYINIT_1833,
      SEL => U3_xpix_2_CYSELF_1820,
      O => U3_Msub_xpix_cy_2_Q
    );
  U3_xpix_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => U3_xpix_2_LOGIC_ONE_1814,
      IB => U3_xpix_2_LOGIC_ONE_1814,
      SEL => U3_xpix_2_CYSELF_1820,
      O => U3_xpix_2_CYMUXF2_1815
    );
  U3_xpix_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_1_Q,
      O => U3_xpix_2_CYINIT_1833
    );
  U3_xpix_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_2_Q,
      O => U3_xpix_2_CYSELF_1820
    );
  U3_xpix_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_2_XORG_1822,
      O => U3_xpix(3)
    );
  U3_xpix_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => U3_Msub_xpix_cy_2_Q,
      I1 => U3_Msub_xpix_lut_3_Q,
      O => U3_xpix_2_XORG_1822
    );
  U3_xpix_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_2_CYMUXFAST_1819,
      O => U3_Msub_xpix_cy_3_Q
    );
  U3_xpix_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_1_Q,
      O => U3_xpix_2_FASTCARRY_1817
    );
  U3_xpix_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => U3_xpix_2_CYSELG_1805,
      I1 => U3_xpix_2_CYSELF_1820,
      O => U3_xpix_2_CYAND_1818
    );
  U3_xpix_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => U3_xpix_2_CYMUXG2_1816,
      IB => U3_xpix_2_FASTCARRY_1817,
      SEL => U3_xpix_2_CYAND_1818,
      O => U3_xpix_2_CYMUXFAST_1819
    );
  U3_xpix_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => U3_xpix_2_LOGIC_ONE_1814,
      IB => U3_xpix_2_CYMUXF2_1815,
      SEL => U3_xpix_2_CYSELG_1805,
      O => U3_xpix_2_CYMUXG2_1816
    );
  U3_xpix_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_3_Q,
      O => U3_xpix_2_CYSELG_1805
    );
  U3_xpix_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      O => U3_xpix_4_LOGIC_ZERO_1852
    );
  U3_xpix_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      O => U3_xpix_4_LOGIC_ONE_1872
    );
  U3_xpix_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_4_XORF_1873,
      O => U3_xpix(4)
    );
  U3_xpix_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      I0 => U3_xpix_4_CYINIT_1871,
      I1 => U3_xpix_4_F,
      O => U3_xpix_4_XORF_1873
    );
  U3_xpix_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      IA => U3_xpix_4_LOGIC_ONE_1872,
      IB => U3_xpix_4_CYINIT_1871,
      SEL => U3_xpix_4_CYSELF_1858,
      O => U3_Msub_xpix_cy_4_Q
    );
  U3_xpix_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      IA => U3_xpix_4_LOGIC_ONE_1872,
      IB => U3_xpix_4_LOGIC_ONE_1872,
      SEL => U3_xpix_4_CYSELF_1858,
      O => U3_xpix_4_CYMUXF2_1853
    );
  U3_xpix_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_3_Q,
      O => U3_xpix_4_CYINIT_1871
    );
  U3_xpix_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_4_F,
      O => U3_xpix_4_CYSELF_1858
    );
  U3_xpix_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_4_XORG_1860,
      O => U3_xpix(5)
    );
  U3_xpix_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      I0 => U3_Msub_xpix_cy_4_Q,
      I1 => U3_xpix_addsub0000(5),
      O => U3_xpix_4_XORG_1860
    );
  U3_xpix_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_4_CYMUXFAST_1857,
      O => U3_Msub_xpix_cy_5_Q
    );
  U3_xpix_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_3_Q,
      O => U3_xpix_4_FASTCARRY_1855
    );
  U3_xpix_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      I0 => U3_xpix_4_CYSELG_1844,
      I1 => U3_xpix_4_CYSELF_1858,
      O => U3_xpix_4_CYAND_1856
    );
  U3_xpix_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      IA => U3_xpix_4_CYMUXG2_1854,
      IB => U3_xpix_4_FASTCARRY_1855,
      SEL => U3_xpix_4_CYAND_1856,
      O => U3_xpix_4_CYMUXFAST_1857
    );
  U3_xpix_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      IA => U3_xpix_4_LOGIC_ZERO_1852,
      IB => U3_xpix_4_CYMUXF2_1853,
      SEL => U3_xpix_4_CYSELG_1844,
      O => U3_xpix_4_CYMUXG2_1854
    );
  U3_xpix_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_addsub0000(5),
      O => U3_xpix_4_CYSELG_1844
    );
  U3_Msub_xpix_lut_6_Q : X_LUT4
    generic map(
      INIT => X"03FC",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(5),
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => U3_Msub_xpix_lut_6_Q_1903
    );
  U3_xpix_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      O => U3_xpix_6_LOGIC_ONE_1893
    );
  U3_xpix_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_6_XORF_1911,
      O => U3_xpix(6)
    );
  U3_xpix_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      I0 => U3_xpix_6_CYINIT_1910,
      I1 => U3_Msub_xpix_lut_6_Q_1903,
      O => U3_xpix_6_XORF_1911
    );
  U3_xpix_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => U3_xpix_6_LOGIC_ONE_1893,
      IB => U3_xpix_6_CYINIT_1910,
      SEL => U3_xpix_6_CYSELF_1899,
      O => U3_Msub_xpix_cy_6_Q
    );
  U3_xpix_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => U3_xpix_6_LOGIC_ONE_1893,
      IB => U3_xpix_6_LOGIC_ONE_1893,
      SEL => U3_xpix_6_CYSELF_1899,
      O => U3_xpix_6_CYMUXF2_1894
    );
  U3_xpix_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_5_Q,
      O => U3_xpix_6_CYINIT_1910
    );
  U3_xpix_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_6_Q_1903,
      O => U3_xpix_6_CYSELF_1899
    );
  U3_xpix_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_6_XORG_1901,
      O => U3_xpix(7)
    );
  U3_xpix_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      I0 => U3_Msub_xpix_cy_6_Q,
      I1 => U3_Msub_xpix_lut_7_Q_1886,
      O => U3_xpix_6_XORG_1901
    );
  U3_xpix_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_cy_5_Q,
      O => U3_xpix_6_FASTCARRY_1896
    );
  U3_xpix_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      I0 => U3_xpix_6_CYSELG_1887,
      I1 => U3_xpix_6_CYSELF_1899,
      O => U3_xpix_6_CYAND_1897
    );
  U3_xpix_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => U3_xpix_6_CYMUXG2_1895,
      IB => U3_xpix_6_FASTCARRY_1896,
      SEL => U3_xpix_6_CYAND_1897,
      O => U3_xpix_6_CYMUXFAST_1898
    );
  U3_xpix_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => U3_xpix_6_LOGIC_ONE_1893,
      IB => U3_xpix_6_CYMUXF2_1894,
      SEL => U3_xpix_6_CYSELG_1887,
      O => U3_xpix_6_CYMUXG2_1895
    );
  U3_xpix_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_7_Q_1886,
      O => U3_xpix_6_CYSELG_1887
    );
  U3_Msub_xpix_lut_7_Q : X_LUT4
    generic map(
      INIT => X"AAA9",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => U2_HCS(5),
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => U3_Msub_xpix_lut_7_Q_1886
    );
  U3_Msub_xpix_lut_8_Q : X_LUT4
    generic map(
      INIT => X"F05A",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => VCC,
      ADR2 => U2_HCS(8),
      ADR3 => U3_xpix_addsub0000_7_bdd0_0,
      O => U3_Msub_xpix_lut_8_Q_1932
    );
  U3_xpix_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      O => U3_xpix_8_LOGIC_ONE_1941
    );
  U3_xpix_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_8_XORF_1942,
      O => U3_xpix(8)
    );
  U3_xpix_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      I0 => U3_xpix_8_CYINIT_1940,
      I1 => U3_Msub_xpix_lut_8_Q_1932,
      O => U3_xpix_8_XORF_1942
    );
  U3_xpix_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      IA => U3_xpix_8_LOGIC_ONE_1941,
      IB => U3_xpix_8_CYINIT_1940,
      SEL => U3_xpix_8_CYSELF_1933,
      O => U3_Msub_xpix_cy_8_Q
    );
  U3_xpix_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_6_CYMUXFAST_1898,
      O => U3_xpix_8_CYINIT_1940
    );
  U3_xpix_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix_lut_8_Q_1932,
      O => U3_xpix_8_CYSELF_1933
    );
  U3_xpix_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_8_XORG_1930,
      O => U3_xpix(9)
    );
  U3_xpix_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      I0 => U3_Msub_xpix_cy_8_Q,
      I1 => U3_Msub_xpix_lut_9_Q_1927,
      O => U3_xpix_8_XORG_1930
    );
  U3_Msub_xpix_lut_9_Q : X_LUT4
    generic map(
      INIT => X"3C36",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => U2_HCS(9),
      ADR2 => U2_HCS(8),
      ADR3 => U3_xpix_addsub0000_7_bdd0_0,
      O => U3_Msub_xpix_lut_9_Q_1927
    );
  U3_ypix_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      O => U3_ypix_0_LOGIC_ONE_1960
    );
  U3_ypix_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      O => U3_ypix_0_LOGIC_ZERO_1977
    );
  U3_ypix_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_0_XORF_1978,
      O => U3_ypix(0)
    );
  U3_ypix_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      I0 => U3_ypix_0_CYINIT_1976,
      I1 => U3_ypix_0_F,
      O => U3_ypix_0_XORF_1978
    );
  U3_ypix_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      IA => U3_ypix_0_LOGIC_ZERO_1977,
      IB => U3_ypix_0_CYINIT_1976,
      SEL => U3_ypix_0_CYSELF_1967,
      O => U3_Msub_ypix_cy_0_Q
    );
  U3_ypix_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_0_BXINV_1965,
      O => U3_ypix_0_CYINIT_1976
    );
  U3_ypix_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_0_F,
      O => U3_ypix_0_CYSELF_1967
    );
  U3_ypix_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_ypix_0_BXINV_1965
    );
  U3_ypix_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_0_XORG_1963,
      O => U3_ypix(1)
    );
  U3_ypix_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      I0 => U3_Msub_ypix_cy_0_Q,
      I1 => U3_Msub_ypix_lut(1),
      O => U3_ypix_0_XORG_1963
    );
  U3_ypix_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_0_CYMUXG_1962,
      O => U3_Msub_ypix_cy_1_Q
    );
  U3_ypix_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X46Y34"
    )
    port map (
      IA => U3_ypix_0_LOGIC_ONE_1960,
      IB => U3_Msub_ypix_cy_0_Q,
      SEL => U3_ypix_0_CYSELG_1951,
      O => U3_ypix_0_CYMUXG_1962
    );
  U3_ypix_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(1),
      O => U3_ypix_0_CYSELG_1951
    );
  U3_ypix_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      O => U3_ypix_2_LOGIC_ONE_1996
    );
  U3_ypix_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_2_XORF_2016,
      O => U3_ypix(2)
    );
  U3_ypix_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      I0 => U3_ypix_2_CYINIT_2015,
      I1 => U3_Msub_ypix_lut(2),
      O => U3_ypix_2_XORF_2016
    );
  U3_ypix_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      IA => U3_ypix_2_LOGIC_ONE_1996,
      IB => U3_ypix_2_CYINIT_2015,
      SEL => U3_ypix_2_CYSELF_2002,
      O => U3_Msub_ypix_cy_2_Q
    );
  U3_ypix_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      IA => U3_ypix_2_LOGIC_ONE_1996,
      IB => U3_ypix_2_LOGIC_ONE_1996,
      SEL => U3_ypix_2_CYSELF_2002,
      O => U3_ypix_2_CYMUXF2_1997
    );
  U3_ypix_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_1_Q,
      O => U3_ypix_2_CYINIT_2015
    );
  U3_ypix_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(2),
      O => U3_ypix_2_CYSELF_2002
    );
  U3_ypix_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_2_XORG_2004,
      O => U3_ypix(3)
    );
  U3_ypix_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      I0 => U3_Msub_ypix_cy_2_Q,
      I1 => U3_Msub_ypix_lut(3),
      O => U3_ypix_2_XORG_2004
    );
  U3_ypix_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_2_CYMUXFAST_2001,
      O => U3_Msub_ypix_cy_3_Q
    );
  U3_ypix_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_1_Q,
      O => U3_ypix_2_FASTCARRY_1999
    );
  U3_ypix_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      I0 => U3_ypix_2_CYSELG_1987,
      I1 => U3_ypix_2_CYSELF_2002,
      O => U3_ypix_2_CYAND_2000
    );
  U3_ypix_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      IA => U3_ypix_2_CYMUXG2_1998,
      IB => U3_ypix_2_FASTCARRY_1999,
      SEL => U3_ypix_2_CYAND_2000,
      O => U3_ypix_2_CYMUXFAST_2001
    );
  U3_ypix_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      IA => U3_ypix_2_LOGIC_ONE_1996,
      IB => U3_ypix_2_CYMUXF2_1997,
      SEL => U3_ypix_2_CYSELG_1987,
      O => U3_ypix_2_CYMUXG2_1998
    );
  U3_ypix_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(3),
      O => U3_ypix_2_CYSELG_1987
    );
  U3_ypix_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      O => U3_ypix_4_LOGIC_ONE_2054
    );
  U3_ypix_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_4_XORF_2055,
      O => U3_ypix(4)
    );
  U3_ypix_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      I0 => U3_ypix_4_CYINIT_2053,
      I1 => U3_Msub_ypix_lut(4),
      O => U3_ypix_4_XORF_2055
    );
  U3_ypix_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      IA => U3_ypix_4_LOGIC_ONE_2054,
      IB => U3_ypix_4_CYINIT_2053,
      SEL => U3_ypix_4_CYSELF_2040,
      O => U3_Msub_ypix_cy_4_Q
    );
  U3_ypix_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      IA => U3_ypix_4_LOGIC_ONE_2054,
      IB => U3_ypix_4_LOGIC_ONE_2054,
      SEL => U3_ypix_4_CYSELF_2040,
      O => U3_ypix_4_CYMUXF2_2035
    );
  U3_ypix_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_3_Q,
      O => U3_ypix_4_CYINIT_2053
    );
  U3_ypix_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(4),
      O => U3_ypix_4_CYSELF_2040
    );
  U3_ypix_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_4_XORG_2042,
      O => U3_ypix(5)
    );
  U3_ypix_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      I0 => U3_Msub_ypix_cy_4_Q,
      I1 => U3_Msub_ypix_lut(5),
      O => U3_ypix_4_XORG_2042
    );
  U3_ypix_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_4_CYMUXFAST_2039,
      O => U3_Msub_ypix_cy_5_Q
    );
  U3_ypix_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_3_Q,
      O => U3_ypix_4_FASTCARRY_2037
    );
  U3_ypix_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      I0 => U3_ypix_4_CYSELG_2026,
      I1 => U3_ypix_4_CYSELF_2040,
      O => U3_ypix_4_CYAND_2038
    );
  U3_ypix_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      IA => U3_ypix_4_CYMUXG2_2036,
      IB => U3_ypix_4_FASTCARRY_2037,
      SEL => U3_ypix_4_CYAND_2038,
      O => U3_ypix_4_CYMUXFAST_2039
    );
  U3_ypix_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y36"
    )
    port map (
      IA => U3_ypix_4_CY0G_2034,
      IB => U3_ypix_4_CYMUXF2_2035,
      SEL => U3_ypix_4_CYSELG_2026,
      O => U3_ypix_4_CYMUXG2_2036
    );
  U3_ypix_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000(5),
      O => U3_ypix_4_CY0G_2034
    );
  U3_ypix_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(5),
      O => U3_ypix_4_CYSELG_2026
    );
  U3_ypix_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_6_XORF_2094,
      O => U3_ypix(6)
    );
  U3_ypix_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      I0 => U3_ypix_6_CYINIT_2093,
      I1 => U3_Msub_ypix_lut(6),
      O => U3_ypix_6_XORF_2094
    );
  U3_ypix_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      IA => U3_ypix_6_CY0F_2092,
      IB => U3_ypix_6_CYINIT_2093,
      SEL => U3_ypix_6_CYSELF_2080,
      O => U3_Msub_ypix_cy_6_Q
    );
  U3_ypix_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      IA => U3_ypix_6_CY0F_2092,
      IB => U3_ypix_6_CY0F_2092,
      SEL => U3_ypix_6_CYSELF_2080,
      O => U3_ypix_6_CYMUXF2_2075
    );
  U3_ypix_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_5_Q,
      O => U3_ypix_6_CYINIT_2093
    );
  U3_ypix_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000(6),
      O => U3_ypix_6_CY0F_2092
    );
  U3_ypix_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(6),
      O => U3_ypix_6_CYSELF_2080
    );
  U3_ypix_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_6_XORG_2082,
      O => U3_ypix(7)
    );
  U3_ypix_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      I0 => U3_Msub_ypix_cy_6_Q,
      I1 => U3_Msub_ypix_lut(7),
      O => U3_ypix_6_XORG_2082
    );
  U3_ypix_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_cy_5_Q,
      O => U3_ypix_6_FASTCARRY_2077
    );
  U3_ypix_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      I0 => U3_ypix_6_CYSELG_2066,
      I1 => U3_ypix_6_CYSELF_2080,
      O => U3_ypix_6_CYAND_2078
    );
  U3_ypix_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      IA => U3_ypix_6_CYMUXG2_2076,
      IB => U3_ypix_6_FASTCARRY_2077,
      SEL => U3_ypix_6_CYAND_2078,
      O => U3_ypix_6_CYMUXFAST_2079
    );
  U3_ypix_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y37"
    )
    port map (
      IA => U3_ypix_6_CY0G_2074,
      IB => U3_ypix_6_CYMUXF2_2075,
      SEL => U3_ypix_6_CYSELG_2066,
      O => U3_ypix_6_CYMUXG2_2076
    );
  U3_ypix_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000(7),
      O => U3_ypix_6_CY0G_2074
    );
  U3_ypix_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(7),
      O => U3_ypix_6_CYSELG_2066
    );
  U3_Msub_ypix_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X46Y38"
    )
    port map (
      ADR0 => sw_7_IBUF_1215,
      ADR1 => U3_ypix_addsub0000(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_lut(8)
    );
  U3_ypix_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_8_XORF_2125,
      O => U3_ypix(8)
    );
  U3_ypix_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X46Y38"
    )
    port map (
      I0 => U3_ypix_8_CYINIT_2124,
      I1 => U3_Msub_ypix_lut(8),
      O => U3_ypix_8_XORF_2125
    );
  U3_ypix_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X46Y38"
    )
    port map (
      IA => U3_ypix_8_CY0F_2123,
      IB => U3_ypix_8_CYINIT_2124,
      SEL => U3_ypix_8_CYSELF_2115,
      O => U3_Msub_ypix_cy_8_Q
    );
  U3_ypix_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_6_CYMUXFAST_2079,
      O => U3_ypix_8_CYINIT_2124
    );
  U3_ypix_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000(8),
      O => U3_ypix_8_CY0F_2123
    );
  U3_ypix_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_lut(8),
      O => U3_ypix_8_CYSELF_2115
    );
  U3_ypix_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_8_XORG_2112,
      O => U3_ypix(9)
    );
  U3_ypix_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X46Y38"
    )
    port map (
      I0 => U3_Msub_ypix_cy_8_Q,
      I1 => U3_Msub_ypix_lut(9),
      O => U3_ypix_8_XORG_2112
    );
  U3_Msub_ypix_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X46Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_ypix_addsub0000(9),
      O => U3_Msub_ypix_lut(9)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix(0),
      ADR2 => VCC,
      ADR3 => U3_ypix(1),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(3)
    );
  U3_rom_addr2_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_6_XORF_2161,
      O => U3_rom_addr2_addsub0000(6)
    );
  U3_rom_addr2_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_6_CYINIT_2160,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => U3_rom_addr2_addsub0000_6_XORF_2161
    );
  U3_rom_addr2_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_6_CY0F_2159,
      IB => U3_rom_addr2_addsub0000_6_CYINIT_2160,
      SEL => U3_rom_addr2_addsub0000_6_CYSELF_2151,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_3_Q
    );
  U3_rom_addr2_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_6_BXINV_2149,
      O => U3_rom_addr2_addsub0000_6_CYINIT_2160
    );
  U3_rom_addr2_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(0),
      O => U3_rom_addr2_addsub0000_6_CY0F_2159
    );
  U3_rom_addr2_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => U3_rom_addr2_addsub0000_6_CYSELF_2151
    );
  U3_rom_addr2_addsub0000_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U3_rom_addr2_addsub0000_6_BXINV_2149
    );
  U3_rom_addr2_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_6_XORG_2147,
      O => U3_rom_addr2_addsub0000(7)
    );
  U3_rom_addr2_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0000_Madd_cy_3_Q,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => U3_rom_addr2_addsub0000_6_XORG_2147
    );
  U3_rom_addr2_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_6_CYMUXG_2146,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_4_Q
    );
  U3_rom_addr2_addsub0000_6_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_6_CY0G_2144,
      IB => U3_Madd_rom_addr2_addsub0000_Madd_cy_3_Q,
      SEL => U3_rom_addr2_addsub0000_6_CYSELG_2136,
      O => U3_rom_addr2_addsub0000_6_CYMUXG_2146
    );
  U3_rom_addr2_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(1),
      O => U3_rom_addr2_addsub0000_6_CY0G_2144
    );
  U3_rom_addr2_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => U3_rom_addr2_addsub0000_6_CYSELG_2136
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => U3_ypix(1),
      ADR1 => VCC,
      ADR2 => U3_ypix(2),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(4)
    );
  U3_rom_addr2_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_8_XORF_2200,
      O => U3_rom_addr2_addsub0000(8)
    );
  U3_rom_addr2_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_8_CYINIT_2199,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => U3_rom_addr2_addsub0000_8_XORF_2200
    );
  U3_rom_addr2_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_8_CY0F_2198,
      IB => U3_rom_addr2_addsub0000_8_CYINIT_2199,
      SEL => U3_rom_addr2_addsub0000_8_CYSELF_2186,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_5_Q
    );
  U3_rom_addr2_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_8_CY0F_2198,
      IB => U3_rom_addr2_addsub0000_8_CY0F_2198,
      SEL => U3_rom_addr2_addsub0000_8_CYSELF_2186,
      O => U3_rom_addr2_addsub0000_8_CYMUXF2_2181
    );
  U3_rom_addr2_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_cy_4_Q,
      O => U3_rom_addr2_addsub0000_8_CYINIT_2199
    );
  U3_rom_addr2_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(2),
      O => U3_rom_addr2_addsub0000_8_CY0F_2198
    );
  U3_rom_addr2_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => U3_rom_addr2_addsub0000_8_CYSELF_2186
    );
  U3_rom_addr2_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_8_XORG_2188,
      O => U3_rom_addr2_addsub0000(9)
    );
  U3_rom_addr2_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0000_Madd_cy_5_Q,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => U3_rom_addr2_addsub0000_8_XORG_2188
    );
  U3_rom_addr2_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_8_CYMUXFAST_2185,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_6_Q
    );
  U3_rom_addr2_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_cy_4_Q,
      O => U3_rom_addr2_addsub0000_8_FASTCARRY_2183
    );
  U3_rom_addr2_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_8_CYSELG_2172,
      I1 => U3_rom_addr2_addsub0000_8_CYSELF_2186,
      O => U3_rom_addr2_addsub0000_8_CYAND_2184
    );
  U3_rom_addr2_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_8_CYMUXG2_2182,
      IB => U3_rom_addr2_addsub0000_8_FASTCARRY_2183,
      SEL => U3_rom_addr2_addsub0000_8_CYAND_2184,
      O => U3_rom_addr2_addsub0000_8_CYMUXFAST_2185
    );
  U3_rom_addr2_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_8_CY0G_2180,
      IB => U3_rom_addr2_addsub0000_8_CYMUXF2_2181,
      SEL => U3_rom_addr2_addsub0000_8_CYSELG_2172,
      O => U3_rom_addr2_addsub0000_8_CYMUXG2_2182
    );
  U3_rom_addr2_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(3),
      O => U3_rom_addr2_addsub0000_8_CY0G_2180
    );
  U3_rom_addr2_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => U3_rom_addr2_addsub0000_8_CYSELG_2172
    );
  U3_rom_addr2_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_10_XORF_2239,
      O => U3_rom_addr2_addsub0000(10)
    );
  U3_rom_addr2_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_10_CYINIT_2238,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => U3_rom_addr2_addsub0000_10_XORF_2239
    );
  U3_rom_addr2_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_10_CY0F_2237,
      IB => U3_rom_addr2_addsub0000_10_CYINIT_2238,
      SEL => U3_rom_addr2_addsub0000_10_CYSELF_2225,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_7_Q
    );
  U3_rom_addr2_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_10_CY0F_2237,
      IB => U3_rom_addr2_addsub0000_10_CY0F_2237,
      SEL => U3_rom_addr2_addsub0000_10_CYSELF_2225,
      O => U3_rom_addr2_addsub0000_10_CYMUXF2_2220
    );
  U3_rom_addr2_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_cy_6_Q,
      O => U3_rom_addr2_addsub0000_10_CYINIT_2238
    );
  U3_rom_addr2_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(4),
      O => U3_rom_addr2_addsub0000_10_CY0F_2237
    );
  U3_rom_addr2_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => U3_rom_addr2_addsub0000_10_CYSELF_2225
    );
  U3_rom_addr2_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_10_XORG_2227,
      O => U3_rom_addr2_addsub0000(11)
    );
  U3_rom_addr2_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0000_Madd_cy_7_Q,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => U3_rom_addr2_addsub0000_10_XORG_2227
    );
  U3_rom_addr2_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_cy_6_Q,
      O => U3_rom_addr2_addsub0000_10_FASTCARRY_2222
    );
  U3_rom_addr2_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_10_CYSELG_2211,
      I1 => U3_rom_addr2_addsub0000_10_CYSELF_2225,
      O => U3_rom_addr2_addsub0000_10_CYAND_2223
    );
  U3_rom_addr2_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_10_CYMUXG2_2221,
      IB => U3_rom_addr2_addsub0000_10_FASTCARRY_2222,
      SEL => U3_rom_addr2_addsub0000_10_CYAND_2223,
      O => U3_rom_addr2_addsub0000_10_CYMUXFAST_2224
    );
  U3_rom_addr2_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_10_CY0G_2219,
      IB => U3_rom_addr2_addsub0000_10_CYMUXF2_2220,
      SEL => U3_rom_addr2_addsub0000_10_CYSELG_2211,
      O => U3_rom_addr2_addsub0000_10_CYMUXG2_2221
    );
  U3_rom_addr2_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(5),
      O => U3_rom_addr2_addsub0000_10_CY0G_2219
    );
  U3_rom_addr2_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => U3_rom_addr2_addsub0000_10_CYSELG_2211
    );
  U3_rom_addr2_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_12_XORF_2270,
      O => U3_rom_addr2_addsub0000(12)
    );
  U3_rom_addr2_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y39"
    )
    port map (
      I0 => U3_rom_addr2_addsub0000_12_CYINIT_2269,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => U3_rom_addr2_addsub0000_12_XORF_2270
    );
  U3_rom_addr2_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y39"
    )
    port map (
      IA => U3_rom_addr2_addsub0000_12_CY0F_2268,
      IB => U3_rom_addr2_addsub0000_12_CYINIT_2269,
      SEL => U3_rom_addr2_addsub0000_12_CYSELF_2260,
      O => U3_Madd_rom_addr2_addsub0000_Madd_cy_9_Q
    );
  U3_rom_addr2_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_10_CYMUXFAST_2224,
      O => U3_rom_addr2_addsub0000_12_CYINIT_2269
    );
  U3_rom_addr2_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(6),
      O => U3_rom_addr2_addsub0000_12_CY0F_2268
    );
  U3_rom_addr2_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => U3_rom_addr2_addsub0000_12_CYSELF_2260
    );
  U3_rom_addr2_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000_12_XORG_2257,
      O => U3_rom_addr2_addsub0000(13)
    );
  U3_rom_addr2_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y39"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0000_Madd_cy_9_Q,
      I1 => U3_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => U3_rom_addr2_addsub0000_12_XORG_2257
    );
  U2_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      O => U2_Result_0_LOGIC_ZERO_2288
    );
  U2_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      O => U2_Result_0_LOGIC_ONE_2305
    );
  U2_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORF_2306,
      O => U2_Result(0)
    );
  U2_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      I0 => U2_Result_0_CYINIT_2304,
      I1 => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_XORF_2306
    );
  U2_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => U2_Result_0_LOGIC_ONE_2305,
      IB => U2_Result_0_CYINIT_2304,
      SEL => U2_Result_0_CYSELF_2295,
      O => U2_Mcount_vcs_cy_0_Q
    );
  U2_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_BXINV_2293,
      O => U2_Result_0_CYINIT_2304
    );
  U2_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_CYSELF_2295
    );
  U2_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_BXINV_2293
    );
  U2_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORG_2291,
      O => U2_Result(1)
    );
  U2_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_0_Q,
      I1 => U2_Result_0_G,
      O => U2_Result_0_XORG_2291
    );
  U2_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_CYMUXG_2290,
      O => U2_Mcount_vcs_cy_1_Q
    );
  U2_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => U2_Result_0_LOGIC_ZERO_2288,
      IB => U2_Mcount_vcs_cy_0_Q,
      SEL => U2_Result_0_CYSELG_2279,
      O => U2_Result_0_CYMUXG_2290
    );
  U2_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_G,
      O => U2_Result_0_CYSELG_2279
    );
  U2_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      O => U2_Result_2_LOGIC_ZERO_2324
    );
  U2_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORF_2344,
      O => U2_Result(2)
    );
  U2_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => U2_Result_2_CYINIT_2343,
      I1 => U2_Result_2_F,
      O => U2_Result_2_XORF_2344
    );
  U2_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_2324,
      IB => U2_Result_2_CYINIT_2343,
      SEL => U2_Result_2_CYSELF_2330,
      O => U2_Mcount_vcs_cy_2_Q
    );
  U2_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_2324,
      IB => U2_Result_2_LOGIC_ZERO_2324,
      SEL => U2_Result_2_CYSELF_2330,
      O => U2_Result_2_CYMUXF2_2325
    );
  U2_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_CYINIT_2343
    );
  U2_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_F,
      O => U2_Result_2_CYSELF_2330
    );
  U2_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORG_2332,
      O => U2_Result(3)
    );
  U2_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_2_Q,
      I1 => U2_Result_2_G,
      O => U2_Result_2_XORG_2332
    );
  U2_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_CYMUXFAST_2329,
      O => U2_Mcount_vcs_cy_3_Q
    );
  U2_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_FASTCARRY_2327
    );
  U2_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => U2_Result_2_CYSELG_2315,
      I1 => U2_Result_2_CYSELF_2330,
      O => U2_Result_2_CYAND_2328
    );
  U2_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => U2_Result_2_CYMUXG2_2326,
      IB => U2_Result_2_FASTCARRY_2327,
      SEL => U2_Result_2_CYAND_2328,
      O => U2_Result_2_CYMUXFAST_2329
    );
  U2_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_2324,
      IB => U2_Result_2_CYMUXF2_2325,
      SEL => U2_Result_2_CYSELG_2315,
      O => U2_Result_2_CYMUXG2_2326
    );
  U2_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_G,
      O => U2_Result_2_CYSELG_2315
    );
  U2_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      O => U2_Result_4_LOGIC_ZERO_2362
    );
  U2_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORF_2382,
      O => U2_Result(4)
    );
  U2_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => U2_Result_4_CYINIT_2381,
      I1 => U2_Result_4_F,
      O => U2_Result_4_XORF_2382
    );
  U2_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_2362,
      IB => U2_Result_4_CYINIT_2381,
      SEL => U2_Result_4_CYSELF_2368,
      O => U2_Mcount_vcs_cy_4_Q
    );
  U2_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_2362,
      IB => U2_Result_4_LOGIC_ZERO_2362,
      SEL => U2_Result_4_CYSELF_2368,
      O => U2_Result_4_CYMUXF2_2363
    );
  U2_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_CYINIT_2381
    );
  U2_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_F,
      O => U2_Result_4_CYSELF_2368
    );
  U2_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORG_2370,
      O => U2_Result(5)
    );
  U2_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_4_Q,
      I1 => U2_Result_4_G,
      O => U2_Result_4_XORG_2370
    );
  U2_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_CYMUXFAST_2367,
      O => U2_Mcount_vcs_cy_5_Q
    );
  U2_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_FASTCARRY_2365
    );
  U2_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => U2_Result_4_CYSELG_2353,
      I1 => U2_Result_4_CYSELF_2368,
      O => U2_Result_4_CYAND_2366
    );
  U2_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => U2_Result_4_CYMUXG2_2364,
      IB => U2_Result_4_FASTCARRY_2365,
      SEL => U2_Result_4_CYAND_2366,
      O => U2_Result_4_CYMUXFAST_2367
    );
  U2_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_2362,
      IB => U2_Result_4_CYMUXF2_2363,
      SEL => U2_Result_4_CYSELG_2353,
      O => U2_Result_4_CYMUXG2_2364
    );
  U2_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_G,
      O => U2_Result_4_CYSELG_2353
    );
  U2_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      O => U2_Result_6_LOGIC_ZERO_2400
    );
  U2_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORF_2420,
      O => U2_Result(6)
    );
  U2_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => U2_Result_6_CYINIT_2419,
      I1 => U2_Result_6_F,
      O => U2_Result_6_XORF_2420
    );
  U2_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_2400,
      IB => U2_Result_6_CYINIT_2419,
      SEL => U2_Result_6_CYSELF_2406,
      O => U2_Mcount_vcs_cy_6_Q
    );
  U2_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_2400,
      IB => U2_Result_6_LOGIC_ZERO_2400,
      SEL => U2_Result_6_CYSELF_2406,
      O => U2_Result_6_CYMUXF2_2401
    );
  U2_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_CYINIT_2419
    );
  U2_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_F,
      O => U2_Result_6_CYSELF_2406
    );
  U2_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORG_2408,
      O => U2_Result(7)
    );
  U2_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_6_Q,
      I1 => U2_Result_6_G,
      O => U2_Result_6_XORG_2408
    );
  U2_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_FASTCARRY_2403
    );
  U2_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => U2_Result_6_CYSELG_2391,
      I1 => U2_Result_6_CYSELF_2406,
      O => U2_Result_6_CYAND_2404
    );
  U2_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => U2_Result_6_CYMUXG2_2402,
      IB => U2_Result_6_FASTCARRY_2403,
      SEL => U2_Result_6_CYAND_2404,
      O => U2_Result_6_CYMUXFAST_2405
    );
  U2_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_2400,
      IB => U2_Result_6_CYMUXF2_2401,
      SEL => U2_Result_6_CYSELG_2391,
      O => U2_Result_6_CYMUXG2_2402
    );
  U2_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_G,
      O => U2_Result_6_CYSELG_2391
    );
  U2_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      O => U2_Result_8_LOGIC_ZERO_2450
    );
  U2_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORF_2451,
      O => U2_Result(8)
    );
  U2_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      I0 => U2_Result_8_CYINIT_2449,
      I1 => U2_Result_8_F,
      O => U2_Result_8_XORF_2451
    );
  U2_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      IA => U2_Result_8_LOGIC_ZERO_2450,
      IB => U2_Result_8_CYINIT_2449,
      SEL => U2_Result_8_CYSELF_2440,
      O => U2_Mcount_vcs_cy_8_Q
    );
  U2_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_CYMUXFAST_2405,
      O => U2_Result_8_CYINIT_2449
    );
  U2_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_F,
      O => U2_Result_8_CYSELF_2440
    );
  U2_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORG_2437,
      O => U2_Result(9)
    );
  U2_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_8_Q,
      I1 => U2_vcs_9_rt_2434,
      O => U2_Result_8_XORG_2437
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y30"
    )
    port map (
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ONE_2467
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y30"
    )
    port map (
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ZERO_2482
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y30"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ZERO_2482,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYINIT_2481,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELF_2472,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_0_Q
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_cy_1_BXINV_2470,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYINIT_2481
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_2_rt,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELF_2472
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_BXINV_2470
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y30"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_1_LOGIC_ONE_2467,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELG_2459,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYMUXG_2469
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYSELG_2459
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y31"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0F_2513,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0F_2513,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELF_2504,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXF2_2499
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(5),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0F_2513
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELF_2504
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_cy_1_CYMUXG_2469,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_FASTCARRY_2501
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y31"
    )
    port map (
      I0 => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELG_2490,
      I1 => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELF_2504,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYAND_2502
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y31"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXG2_2500,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_3_FASTCARRY_2501,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYAND_2502,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXFAST_2503
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y31"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0G_2498,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXF2_2499,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELG_2490,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXG2_2500
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(6),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CY0G_2498
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYSELG_2490
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0F_2544,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0F_2544,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELF_2535,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXF2_2530
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(7),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0F_2544
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELF_2535
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_cy_3_CYMUXFAST_2503,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_FASTCARRY_2532
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y32"
    )
    port map (
      I0 => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELG_2522,
      I1 => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELF_2535,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYAND_2533
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXG2_2531,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_5_FASTCARRY_2532,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYAND_2533,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXFAST_2534
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0G_2529,
      IB => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXF2_2530,
      SEL => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELG_2522,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXG2_2531
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CY0G_2529
    );
  U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYSELG_2522
    );
  N3_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y33"
    )
    port map (
      IA => N3_CY0F_2570,
      IB => N3_CYINIT_2571,
      SEL => N3_CYSELF_2563,
      O => U3_Mcompar_spriteon_cmp_lt0000_cy_6_Q
    );
  N3_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_cy_5_CYMUXFAST_2534,
      O => N3_CYINIT_2571
    );
  N3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => N3_CY0F_2570
    );
  N3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon_cmp_lt0000_lut(6),
      O => N3_CYSELF_2563
    );
  N3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"9393",
      LOC => "SLICE_X55Y33"
    )
    port map (
      ADR0 => sw_7_IBUF_1215,
      ADR1 => U2_vcs(9),
      ADR2 => sw_6_IBUF_1210,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(6)
    );
  U3_ypix_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y32"
    )
    port map (
      O => U3_ypix_addsub0000_0_LOGIC_ZERO_2588
    );
  U3_ypix_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_XORF_2605,
      O => U3_ypix_addsub0000(0)
    );
  U3_ypix_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y32"
    )
    port map (
      I0 => U3_ypix_addsub0000_0_CYINIT_2604,
      I1 => U3_ypix_addsub0000_0_F,
      O => U3_ypix_addsub0000_0_XORF_2605
    );
  U3_ypix_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y32"
    )
    port map (
      IA => U3_ypix_addsub0000_0_LOGIC_ZERO_2588,
      IB => U3_ypix_addsub0000_0_CYINIT_2604,
      SEL => U3_ypix_addsub0000_0_CYSELF_2595,
      O => U3_Msub_ypix_addsub0000_cy_0_Q
    );
  U3_ypix_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_BXINV_2593,
      O => U3_ypix_addsub0000_0_CYINIT_2604
    );
  U3_ypix_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_F,
      O => U3_ypix_addsub0000_0_CYSELF_2595
    );
  U3_ypix_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_ypix_addsub0000_0_BXINV_2593
    );
  U3_ypix_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_XORG_2591,
      O => U3_ypix_addsub0000(1)
    );
  U3_ypix_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y32"
    )
    port map (
      I0 => U3_Msub_ypix_addsub0000_cy_0_Q,
      I1 => U3_ypix_addsub0000_0_G,
      O => U3_ypix_addsub0000_0_XORG_2591
    );
  U3_ypix_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_CYMUXG_2590,
      O => U3_Msub_ypix_addsub0000_cy_1_Q
    );
  U3_ypix_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X49Y32"
    )
    port map (
      IA => U3_ypix_addsub0000_0_LOGIC_ZERO_2588,
      IB => U3_Msub_ypix_addsub0000_cy_0_Q,
      SEL => U3_ypix_addsub0000_0_CYSELG_2579,
      O => U3_ypix_addsub0000_0_CYMUXG_2590
    );
  U3_ypix_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_0_G,
      O => U3_ypix_addsub0000_0_CYSELG_2579
    );
  U3_ypix_addsub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      O => U3_ypix_addsub0000_2_LOGIC_ZERO_2623
    );
  U3_ypix_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_2_XORF_2643,
      O => U3_ypix_addsub0000(2)
    );
  U3_ypix_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      I0 => U3_ypix_addsub0000_2_CYINIT_2642,
      I1 => U3_ypix_addsub0000_2_F,
      O => U3_ypix_addsub0000_2_XORF_2643
    );
  U3_ypix_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      IA => U3_ypix_addsub0000_2_LOGIC_ZERO_2623,
      IB => U3_ypix_addsub0000_2_CYINIT_2642,
      SEL => U3_ypix_addsub0000_2_CYSELF_2629,
      O => U3_Msub_ypix_addsub0000_cy_2_Q
    );
  U3_ypix_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      IA => U3_ypix_addsub0000_2_LOGIC_ZERO_2623,
      IB => U3_ypix_addsub0000_2_LOGIC_ZERO_2623,
      SEL => U3_ypix_addsub0000_2_CYSELF_2629,
      O => U3_ypix_addsub0000_2_CYMUXF2_2624
    );
  U3_ypix_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_1_Q,
      O => U3_ypix_addsub0000_2_CYINIT_2642
    );
  U3_ypix_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_2_F,
      O => U3_ypix_addsub0000_2_CYSELF_2629
    );
  U3_ypix_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_2_XORG_2631,
      O => U3_ypix_addsub0000(3)
    );
  U3_ypix_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      I0 => U3_Msub_ypix_addsub0000_cy_2_Q,
      I1 => U3_ypix_addsub0000_2_G,
      O => U3_ypix_addsub0000_2_XORG_2631
    );
  U3_ypix_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_2_CYMUXFAST_2628,
      O => U3_Msub_ypix_addsub0000_cy_3_Q
    );
  U3_ypix_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_1_Q,
      O => U3_ypix_addsub0000_2_FASTCARRY_2626
    );
  U3_ypix_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      I0 => U3_ypix_addsub0000_2_CYSELG_2614,
      I1 => U3_ypix_addsub0000_2_CYSELF_2629,
      O => U3_ypix_addsub0000_2_CYAND_2627
    );
  U3_ypix_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      IA => U3_ypix_addsub0000_2_CYMUXG2_2625,
      IB => U3_ypix_addsub0000_2_FASTCARRY_2626,
      SEL => U3_ypix_addsub0000_2_CYAND_2627,
      O => U3_ypix_addsub0000_2_CYMUXFAST_2628
    );
  U3_ypix_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y33"
    )
    port map (
      IA => U3_ypix_addsub0000_2_LOGIC_ZERO_2623,
      IB => U3_ypix_addsub0000_2_CYMUXF2_2624,
      SEL => U3_ypix_addsub0000_2_CYSELG_2614,
      O => U3_ypix_addsub0000_2_CYMUXG2_2625
    );
  U3_ypix_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_2_G,
      O => U3_ypix_addsub0000_2_CYSELG_2614
    );
  U3_ypix_addsub0000_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      O => U3_ypix_addsub0000_4_LOGIC_ONE_2661
    );
  U3_ypix_addsub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      O => U3_ypix_addsub0000_4_LOGIC_ZERO_2681
    );
  U3_ypix_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_4_XORF_2682,
      O => U3_ypix_addsub0000(4)
    );
  U3_ypix_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      I0 => U3_ypix_addsub0000_4_CYINIT_2680,
      I1 => U3_ypix_addsub0000_4_F,
      O => U3_ypix_addsub0000_4_XORF_2682
    );
  U3_ypix_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      IA => U3_ypix_addsub0000_4_LOGIC_ZERO_2681,
      IB => U3_ypix_addsub0000_4_CYINIT_2680,
      SEL => U3_ypix_addsub0000_4_CYSELF_2667,
      O => U3_Msub_ypix_addsub0000_cy_4_Q
    );
  U3_ypix_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      IA => U3_ypix_addsub0000_4_LOGIC_ZERO_2681,
      IB => U3_ypix_addsub0000_4_LOGIC_ZERO_2681,
      SEL => U3_ypix_addsub0000_4_CYSELF_2667,
      O => U3_ypix_addsub0000_4_CYMUXF2_2662
    );
  U3_ypix_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_3_Q,
      O => U3_ypix_addsub0000_4_CYINIT_2680
    );
  U3_ypix_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_4_F,
      O => U3_ypix_addsub0000_4_CYSELF_2667
    );
  U3_ypix_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_4_XORG_2669,
      O => U3_ypix_addsub0000(5)
    );
  U3_ypix_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      I0 => U3_Msub_ypix_addsub0000_cy_4_Q,
      I1 => U3_Msub_ypix_addsub0000_lut(5),
      O => U3_ypix_addsub0000_4_XORG_2669
    );
  U3_ypix_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_4_CYMUXFAST_2666,
      O => U3_Msub_ypix_addsub0000_cy_5_Q
    );
  U3_ypix_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_3_Q,
      O => U3_ypix_addsub0000_4_FASTCARRY_2664
    );
  U3_ypix_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      I0 => U3_ypix_addsub0000_4_CYSELG_2652,
      I1 => U3_ypix_addsub0000_4_CYSELF_2667,
      O => U3_ypix_addsub0000_4_CYAND_2665
    );
  U3_ypix_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      IA => U3_ypix_addsub0000_4_CYMUXG2_2663,
      IB => U3_ypix_addsub0000_4_FASTCARRY_2664,
      SEL => U3_ypix_addsub0000_4_CYAND_2665,
      O => U3_ypix_addsub0000_4_CYMUXFAST_2666
    );
  U3_ypix_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y34"
    )
    port map (
      IA => U3_ypix_addsub0000_4_LOGIC_ONE_2661,
      IB => U3_ypix_addsub0000_4_CYMUXF2_2662,
      SEL => U3_ypix_addsub0000_4_CYSELG_2652,
      O => U3_ypix_addsub0000_4_CYMUXG2_2663
    );
  U3_ypix_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_lut(5),
      O => U3_ypix_addsub0000_4_CYSELG_2652
    );
  U3_Msub_ypix_addsub0000_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X49Y34"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_addsub0000_lut(5)
    );
  U3_ypix_addsub0000_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      O => U3_ypix_addsub0000_6_LOGIC_ONE_2700
    );
  U3_ypix_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_6_XORF_2720,
      O => U3_ypix_addsub0000(6)
    );
  U3_ypix_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      I0 => U3_ypix_addsub0000_6_CYINIT_2719,
      I1 => U3_Msub_ypix_addsub0000_lut(6),
      O => U3_ypix_addsub0000_6_XORF_2720
    );
  U3_ypix_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      IA => U3_ypix_addsub0000_6_LOGIC_ONE_2700,
      IB => U3_ypix_addsub0000_6_CYINIT_2719,
      SEL => U3_ypix_addsub0000_6_CYSELF_2706,
      O => U3_Msub_ypix_addsub0000_cy_6_Q
    );
  U3_ypix_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      IA => U3_ypix_addsub0000_6_LOGIC_ONE_2700,
      IB => U3_ypix_addsub0000_6_LOGIC_ONE_2700,
      SEL => U3_ypix_addsub0000_6_CYSELF_2706,
      O => U3_ypix_addsub0000_6_CYMUXF2_2701
    );
  U3_ypix_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_5_Q,
      O => U3_ypix_addsub0000_6_CYINIT_2719
    );
  U3_ypix_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_lut(6),
      O => U3_ypix_addsub0000_6_CYSELF_2706
    );
  U3_ypix_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_6_XORG_2708,
      O => U3_ypix_addsub0000(7)
    );
  U3_ypix_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      I0 => U3_Msub_ypix_addsub0000_cy_6_Q,
      I1 => U3_Msub_ypix_addsub0000_lut(7),
      O => U3_ypix_addsub0000_6_XORG_2708
    );
  U3_ypix_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_cy_5_Q,
      O => U3_ypix_addsub0000_6_FASTCARRY_2703
    );
  U3_ypix_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      I0 => U3_ypix_addsub0000_6_CYSELG_2691,
      I1 => U3_ypix_addsub0000_6_CYSELF_2706,
      O => U3_ypix_addsub0000_6_CYAND_2704
    );
  U3_ypix_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      IA => U3_ypix_addsub0000_6_CYMUXG2_2702,
      IB => U3_ypix_addsub0000_6_FASTCARRY_2703,
      SEL => U3_ypix_addsub0000_6_CYAND_2704,
      O => U3_ypix_addsub0000_6_CYMUXFAST_2705
    );
  U3_ypix_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y35"
    )
    port map (
      IA => U3_ypix_addsub0000_6_LOGIC_ONE_2700,
      IB => U3_ypix_addsub0000_6_CYMUXF2_2701,
      SEL => U3_ypix_addsub0000_6_CYSELG_2691,
      O => U3_ypix_addsub0000_6_CYMUXG2_2702
    );
  U3_ypix_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_lut(7),
      O => U3_ypix_addsub0000_6_CYSELG_2691
    );
  U3_ypix_addsub0000_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y36"
    )
    port map (
      O => U3_ypix_addsub0000_8_LOGIC_ONE_2750
    );
  U3_ypix_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_8_XORF_2751,
      O => U3_ypix_addsub0000(8)
    );
  U3_ypix_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y36"
    )
    port map (
      I0 => U3_ypix_addsub0000_8_CYINIT_2749,
      I1 => U3_Msub_ypix_addsub0000_lut(8),
      O => U3_ypix_addsub0000_8_XORF_2751
    );
  U3_ypix_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y36"
    )
    port map (
      IA => U3_ypix_addsub0000_8_LOGIC_ONE_2750,
      IB => U3_ypix_addsub0000_8_CYINIT_2749,
      SEL => U3_ypix_addsub0000_8_CYSELF_2740,
      O => U3_Msub_ypix_addsub0000_cy_8_Q
    );
  U3_ypix_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_6_CYMUXFAST_2705,
      O => U3_ypix_addsub0000_8_CYINIT_2749
    );
  U3_ypix_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_ypix_addsub0000_lut(8),
      O => U3_ypix_addsub0000_8_CYSELF_2740
    );
  U3_ypix_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix_addsub0000_8_XORG_2737,
      O => U3_ypix_addsub0000(9)
    );
  U3_ypix_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y36"
    )
    port map (
      I0 => U3_Msub_ypix_addsub0000_cy_8_Q,
      I1 => U3_Msub_ypix_addsub0000_lut(9),
      O => U3_ypix_addsub0000_8_XORG_2737
    );
  U3_rom_addr2_addsub0001_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_5_XORF_2787,
      O => U3_rom_addr2_addsub0001(5)
    );
  U3_rom_addr2_addsub0001_5_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_5_CYINIT_2786,
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => U3_rom_addr2_addsub0001_5_XORF_2787
    );
  U3_rom_addr2_addsub0001_5_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_5_CY0F_2785,
      IB => U3_rom_addr2_addsub0001_5_CYINIT_2786,
      SEL => U3_rom_addr2_addsub0001_5_CYSELF_2777,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(5)
    );
  U3_rom_addr2_addsub0001_5_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_5_BXINV_2775,
      O => U3_rom_addr2_addsub0001_5_CYINIT_2786
    );
  U3_rom_addr2_addsub0001_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_ypix(0),
      O => U3_rom_addr2_addsub0001_5_CY0F_2785
    );
  U3_rom_addr2_addsub0001_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => U3_rom_addr2_addsub0001_5_CYSELF_2777
    );
  U3_rom_addr2_addsub0001_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U3_rom_addr2_addsub0001_5_BXINV_2775
    );
  U3_rom_addr2_addsub0001_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_5_XORG_2773,
      O => U3_rom_addr2_addsub0001(6)
    );
  U3_rom_addr2_addsub0001_5_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0001_Madd_cy(5),
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => U3_rom_addr2_addsub0001_5_XORG_2773
    );
  U3_rom_addr2_addsub0001_5_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_5_CYMUXG_2772,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(6)
    );
  U3_rom_addr2_addsub0001_5_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_5_CY0G_2770,
      IB => U3_Madd_rom_addr2_addsub0001_Madd_cy(5),
      SEL => U3_rom_addr2_addsub0001_5_CYSELG_2762,
      O => U3_rom_addr2_addsub0001_5_CYMUXG_2772
    );
  U3_rom_addr2_addsub0001_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(6),
      O => U3_rom_addr2_addsub0001_5_CY0G_2770
    );
  U3_rom_addr2_addsub0001_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => U3_rom_addr2_addsub0001_5_CYSELG_2762
    );
  U3_rom_addr2_addsub0001_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_7_XORF_2826,
      O => U3_rom_addr2_addsub0001(7)
    );
  U3_rom_addr2_addsub0001_7_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_7_CYINIT_2825,
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => U3_rom_addr2_addsub0001_7_XORF_2826
    );
  U3_rom_addr2_addsub0001_7_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_7_CY0F_2824,
      IB => U3_rom_addr2_addsub0001_7_CYINIT_2825,
      SEL => U3_rom_addr2_addsub0001_7_CYSELF_2812,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(7)
    );
  U3_rom_addr2_addsub0001_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_7_CY0F_2824,
      IB => U3_rom_addr2_addsub0001_7_CY0F_2824,
      SEL => U3_rom_addr2_addsub0001_7_CYSELF_2812,
      O => U3_rom_addr2_addsub0001_7_CYMUXF2_2807
    );
  U3_rom_addr2_addsub0001_7_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(6),
      O => U3_rom_addr2_addsub0001_7_CYINIT_2825
    );
  U3_rom_addr2_addsub0001_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(7),
      O => U3_rom_addr2_addsub0001_7_CY0F_2824
    );
  U3_rom_addr2_addsub0001_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => U3_rom_addr2_addsub0001_7_CYSELF_2812
    );
  U3_rom_addr2_addsub0001_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_7_XORG_2814,
      O => U3_rom_addr2_addsub0001(8)
    );
  U3_rom_addr2_addsub0001_7_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0001_Madd_cy(7),
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => U3_rom_addr2_addsub0001_7_XORG_2814
    );
  U3_rom_addr2_addsub0001_7_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_7_CYMUXFAST_2811,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(8)
    );
  U3_rom_addr2_addsub0001_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(6),
      O => U3_rom_addr2_addsub0001_7_FASTCARRY_2809
    );
  U3_rom_addr2_addsub0001_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_7_CYSELG_2798,
      I1 => U3_rom_addr2_addsub0001_7_CYSELF_2812,
      O => U3_rom_addr2_addsub0001_7_CYAND_2810
    );
  U3_rom_addr2_addsub0001_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_7_CYMUXG2_2808,
      IB => U3_rom_addr2_addsub0001_7_FASTCARRY_2809,
      SEL => U3_rom_addr2_addsub0001_7_CYAND_2810,
      O => U3_rom_addr2_addsub0001_7_CYMUXFAST_2811
    );
  U3_rom_addr2_addsub0001_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_7_CY0G_2806,
      IB => U3_rom_addr2_addsub0001_7_CYMUXF2_2807,
      SEL => U3_rom_addr2_addsub0001_7_CYSELG_2798,
      O => U3_rom_addr2_addsub0001_7_CYMUXG2_2808
    );
  U3_rom_addr2_addsub0001_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(8),
      O => U3_rom_addr2_addsub0001_7_CY0G_2806
    );
  U3_rom_addr2_addsub0001_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => U3_rom_addr2_addsub0001_7_CYSELG_2798
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X45Y38"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(9),
      ADR1 => U3_ypix(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(9)
    );
  U3_rom_addr2_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_9_XORF_2865,
      O => U3_rom_addr2_addsub0001(9)
    );
  U3_rom_addr2_addsub0001_9_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_9_CYINIT_2864,
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => U3_rom_addr2_addsub0001_9_XORF_2865
    );
  U3_rom_addr2_addsub0001_9_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_9_CY0F_2863,
      IB => U3_rom_addr2_addsub0001_9_CYINIT_2864,
      SEL => U3_rom_addr2_addsub0001_9_CYSELF_2851,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(9)
    );
  U3_rom_addr2_addsub0001_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_9_CY0F_2863,
      IB => U3_rom_addr2_addsub0001_9_CY0F_2863,
      SEL => U3_rom_addr2_addsub0001_9_CYSELF_2851,
      O => U3_rom_addr2_addsub0001_9_CYMUXF2_2846
    );
  U3_rom_addr2_addsub0001_9_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(8),
      O => U3_rom_addr2_addsub0001_9_CYINIT_2864
    );
  U3_rom_addr2_addsub0001_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(9),
      O => U3_rom_addr2_addsub0001_9_CY0F_2863
    );
  U3_rom_addr2_addsub0001_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => U3_rom_addr2_addsub0001_9_CYSELF_2851
    );
  U3_rom_addr2_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_9_XORG_2853,
      O => U3_rom_addr2_addsub0001(10)
    );
  U3_rom_addr2_addsub0001_9_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0001_Madd_cy(9),
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => U3_rom_addr2_addsub0001_9_XORG_2853
    );
  U3_rom_addr2_addsub0001_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_9_CYMUXFAST_2850,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(10)
    );
  U3_rom_addr2_addsub0001_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(8),
      O => U3_rom_addr2_addsub0001_9_FASTCARRY_2848
    );
  U3_rom_addr2_addsub0001_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_9_CYSELG_2837,
      I1 => U3_rom_addr2_addsub0001_9_CYSELF_2851,
      O => U3_rom_addr2_addsub0001_9_CYAND_2849
    );
  U3_rom_addr2_addsub0001_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_9_CYMUXG2_2847,
      IB => U3_rom_addr2_addsub0001_9_FASTCARRY_2848,
      SEL => U3_rom_addr2_addsub0001_9_CYAND_2849,
      O => U3_rom_addr2_addsub0001_9_CYMUXFAST_2850
    );
  U3_rom_addr2_addsub0001_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y38"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_9_CY0G_2845,
      IB => U3_rom_addr2_addsub0001_9_CYMUXF2_2846,
      SEL => U3_rom_addr2_addsub0001_9_CYSELG_2837,
      O => U3_rom_addr2_addsub0001_9_CYMUXG2_2847
    );
  U3_rom_addr2_addsub0001_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(10),
      O => U3_rom_addr2_addsub0001_9_CY0G_2845
    );
  U3_rom_addr2_addsub0001_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => U3_rom_addr2_addsub0001_9_CYSELG_2837
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X45Y38"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_ypix(8),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(10)
    );
  U3_rom_addr2_addsub0001_11_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      O => U3_rom_addr2_addsub0001_11_LOGIC_ZERO_2884
    );
  U3_rom_addr2_addsub0001_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_11_XORF_2904,
      O => U3_rom_addr2_addsub0001(11)
    );
  U3_rom_addr2_addsub0001_11_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_11_CYINIT_2903,
      I1 => U3_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => U3_rom_addr2_addsub0001_11_XORF_2904
    );
  U3_rom_addr2_addsub0001_11_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_11_CY0F_2902,
      IB => U3_rom_addr2_addsub0001_11_CYINIT_2903,
      SEL => U3_rom_addr2_addsub0001_11_CYSELF_2890,
      O => U3_Madd_rom_addr2_addsub0001_Madd_cy(11)
    );
  U3_rom_addr2_addsub0001_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_11_CY0F_2902,
      IB => U3_rom_addr2_addsub0001_11_CY0F_2902,
      SEL => U3_rom_addr2_addsub0001_11_CYSELF_2890,
      O => U3_rom_addr2_addsub0001_11_CYMUXF2_2885
    );
  U3_rom_addr2_addsub0001_11_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(10),
      O => U3_rom_addr2_addsub0001_11_CYINIT_2903
    );
  U3_rom_addr2_addsub0001_11_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0000(11),
      O => U3_rom_addr2_addsub0001_11_CY0F_2902
    );
  U3_rom_addr2_addsub0001_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => U3_rom_addr2_addsub0001_11_CYSELF_2890
    );
  U3_rom_addr2_addsub0001_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_11_XORG_2892,
      O => U3_rom_addr2_addsub0001(12)
    );
  U3_rom_addr2_addsub0001_11_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      I0 => U3_Madd_rom_addr2_addsub0001_Madd_cy(11),
      I1 => U3_rom_addr2_addsub0001_11_G,
      O => U3_rom_addr2_addsub0001_11_XORG_2892
    );
  U3_rom_addr2_addsub0001_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_rom_addr2_addsub0001_Madd_cy(10),
      O => U3_rom_addr2_addsub0001_11_FASTCARRY_2887
    );
  U3_rom_addr2_addsub0001_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_11_CYSELG_2875,
      I1 => U3_rom_addr2_addsub0001_11_CYSELF_2890,
      O => U3_rom_addr2_addsub0001_11_CYAND_2888
    );
  U3_rom_addr2_addsub0001_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_11_CYMUXG2_2886,
      IB => U3_rom_addr2_addsub0001_11_FASTCARRY_2887,
      SEL => U3_rom_addr2_addsub0001_11_CYAND_2888,
      O => U3_rom_addr2_addsub0001_11_CYMUXFAST_2889
    );
  U3_rom_addr2_addsub0001_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y39"
    )
    port map (
      IA => U3_rom_addr2_addsub0001_11_LOGIC_ZERO_2884,
      IB => U3_rom_addr2_addsub0001_11_CYMUXF2_2885,
      SEL => U3_rom_addr2_addsub0001_11_CYSELG_2875,
      O => U3_rom_addr2_addsub0001_11_CYMUXG2_2886
    );
  U3_rom_addr2_addsub0001_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_11_G,
      O => U3_rom_addr2_addsub0001_11_CYSELG_2875
    );
  U3_rom_addr2_addsub0001_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_13_XORF_2919,
      O => U3_rom_addr2_addsub0001(13)
    );
  U3_rom_addr2_addsub0001_13_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      I0 => U3_rom_addr2_addsub0001_13_CYINIT_2918,
      I1 => U3_rom_addr2_addsub0000_13_rt_2916,
      O => U3_rom_addr2_addsub0001_13_XORF_2919
    );
  U3_rom_addr2_addsub0001_13_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_rom_addr2_addsub0001_11_CYMUXFAST_2889,
      O => U3_rom_addr2_addsub0001_13_CYINIT_2918
    );
  red_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => red_1_O,
      O => red(1)
    );
  red_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => red_2_O,
      O => red(2)
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
  btn_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(1),
      O => btn_1_INBUF
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
  green_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => green_0_O,
      O => green(0)
    );
  green_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => green_1_O,
      O => green(1)
    );
  green_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => green_2_O,
      O => green(2)
    );
  hsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => hsync_O,
      O => hsync
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
  sw_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(4),
      O => sw_4_INBUF
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
  vsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => vsync_O,
      O => vsync
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
  blue_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => blue_0_O,
      O => blue(0)
    );
  blue_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => blue_1_O,
      O => blue(1)
    );
  red_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => red_0_O,
      O => red(0)
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
  U1_q_0_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => U1_q_0_BUFG_I0_INV,
      I1 => GND,
      S => U1_q_0_BUFG_S_INVNOT,
      O => U1_q(0)
    );
  U1_q_0_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U1_q_0_BUFG_S_INVNOT
    );
  U1_q_0_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01,
      O => U1_q_0_BUFG_I0_INV
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram : X_RAMB16_S9_S9
    generic map(
      INIT_A => X"000",
      INIT_B => X"000",
      SRVAL_A => X"000",
      SRVAL_B => X"000",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X1Y4",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_0_Q,
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(7) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA7,
      DIA(6) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA6,
      DIA(5) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA5,
      DIA(4) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA4,
      DIA(3) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA3,
      DIA(2) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA2,
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIA0,
      DIPA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DIPA0,
      DIB(7) => '0',
      DIB(6) => '0',
      DIB(5) => '0',
      DIB(4) => '0',
      DIB(3) => '0',
      DIB(2) => '0',
      DIB(1) => '0',
      DIB(0) => '0',
      DIPB(0) => '0',
      DOA(7) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      DOA(6) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      DOA(5) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      DOA(4) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      DOA(3) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      DOA(2) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      DOPA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOPA0,
      DOB(7) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB7,
      DOB(6) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB6,
      DOB(5) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB5,
      DOB(4) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB4,
      DOB(3) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB3,
      DOB(2) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB2,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOB0,
      DOPB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_DOPB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X1Y7",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q,
      ADDRB(12) => '0',
      ADDRB(11) => '0',
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X1Y6",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q,
      ADDRB(12) => '0',
      ADDRB(11) => '0',
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X1Y3",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q,
      ADDRB(12) => '0',
      ADDRB(11) => '0',
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X1Y5",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q,
      ADDRB(12) => '0',
      ADDRB(11) => '0',
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_DOB0
    );
  U3_blue_and000042_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and000042_F5MUX_3350,
      O => U3_blue_and000042
    );
  U3_blue_and000042_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y35"
    )
    port map (
      IA => U3_blue_and000042_G,
      IB => U3_blue_and0000421_3348,
      SEL => U3_blue_and000042_BXINV_3343,
      O => U3_blue_and000042_F5MUX_3350
    );
  U3_blue_and000042_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => U3_blue_and000042_BXINV_3343
    );
  U3_blue_and000034_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and000034_F5MUX_3375,
      O => U3_blue_and000034
    );
  U3_blue_and000034_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X49Y37"
    )
    port map (
      IA => U3_blue_and0000341_3362,
      IB => U3_blue_and000034_F,
      SEL => U3_blue_and000034_BXINV_3364,
      O => U3_blue_and000034_F5MUX_3375
    );
  U3_blue_and000034_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => U3_blue_and000034_BXINV_3364
    );
  U2_vcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_9,
      O => U2_vcs_9_DXMUX_3407
    );
  U2_vcs_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_cmp_eq0000_pack_1,
      O => U2_vcs_cmp_eq0000_1308
    );
  U2_vcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_9_CLKINV_3389
    );
  U2_vcs_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_9_CEINV_3388
    );
  U2_HCS_cmp_eq00005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq00005_3436,
      O => U2_HCS_cmp_eq00005_0
    );
  U2_HCS_cmp_eq00005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000257_pack_1,
      O => U3_blue_and0000257
    );
  U2_VSENABLE_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq0000,
      O => U2_VSENABLE_DXMUX_3467
    );
  U2_VSENABLE_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq000010_pack_1,
      O => U2_HCS_cmp_eq000010_1313
    );
  U2_VSENABLE_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_VSENABLE_CLKINV_3450
    );
  U2_VSENABLE_CEINV : X_INV
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_VSENABLE_CEINVNOT
    );
  U1_q_01_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_XORF_3490,
      O => U1_q_01_DXMUX_3492
    );
  U1_q_01_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y83"
    )
    port map (
      I0 => U1_q_01_CYINIT_3489,
      I1 => U1_Mcount_q_lut_0_rt_3487,
      O => U1_q_01_XORF_3490
    );
  U1_q_01_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_BXINV_3479,
      O => U1_q_01_CYINIT_3489
    );
  U1_q_01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U1_q_01_BXINV_3479
    );
  U1_q_01_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U1_q_01_CLKINV_3477
    );
  U2_HCS_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_1,
      O => U2_HCS_1_DXMUX_3534
    );
  U2_HCS_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_0,
      O => U2_HCS_1_DYMUX_3519
    );
  U2_HCS_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_HCS_1_SRINV_3510
    );
  U2_HCS_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_1_CLKINV_3509
    );
  U2_HCS_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_3,
      O => U2_HCS_3_DXMUX_3576
    );
  U2_HCS_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_2,
      O => U2_HCS_3_DYMUX_3561
    );
  U2_HCS_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_HCS_3_SRINV_3552
    );
  U2_HCS_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_3_CLKINV_3551
    );
  U2_HCS_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_5,
      O => U2_HCS_5_DXMUX_3618
    );
  U2_HCS_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_4,
      O => U2_HCS_5_DYMUX_3603
    );
  U2_HCS_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_HCS_5_SRINV_3594
    );
  U2_HCS_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_5_CLKINV_3593
    );
  U2_HCS_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_7,
      O => U2_HCS_7_DXMUX_3660
    );
  U2_HCS_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_6,
      O => U2_HCS_7_DYMUX_3645
    );
  U2_HCS_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_HCS_7_SRINV_3636
    );
  U2_HCS_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_7_CLKINV_3635
    );
  U2_HCS_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_9,
      O => U2_HCS_9_DXMUX_3702
    );
  U2_HCS_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_8,
      O => U2_HCS_9_DYMUX_3687
    );
  U2_HCS_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_HCS_9_SRINV_3678
    );
  U2_HCS_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_9_CLKINV_3677
    );
  U2_vcs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_1,
      O => U2_vcs_1_DXMUX_3747
    );
  U2_vcs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_0,
      O => U2_vcs_1_DYMUX_3730
    );
  U2_vcs_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_1_SRINV_3720
    );
  U2_vcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_1_CLKINV_3719
    );
  U2_vcs_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_1_CEINV_3718
    );
  U2_vcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_3,
      O => U2_vcs_3_DXMUX_3793
    );
  U2_vcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_2,
      O => U2_vcs_3_DYMUX_3776
    );
  U2_vcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_3_SRINV_3766
    );
  U2_vcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_3_CLKINV_3765
    );
  U2_vcs_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_3_CEINV_3764
    );
  U2_vcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_5,
      O => U2_vcs_5_DXMUX_3839
    );
  U2_vcs_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_4,
      O => U2_vcs_5_DYMUX_3822
    );
  U2_vcs_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_5_SRINV_3812
    );
  U2_vcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_5_CLKINV_3811
    );
  U2_vcs_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_5_CEINV_3810
    );
  U2_vcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_7,
      O => U2_vcs_7_DXMUX_3885
    );
  U2_vcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_6,
      O => U2_vcs_7_DYMUX_3868
    );
  U2_vcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_7_SRINV_3858
    );
  U2_vcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_7_CLKINV_3857
    );
  U2_vcs_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_7_CEINV_3856
    );
  U2_vcs_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_8,
      O => U2_vcs_8_DYMUX_3911
    );
  U2_vcs_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_8_CLKINV_3900
    );
  U2_vcs_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_1307,
      O => U2_vcs_8_CEINV_3899
    );
  N13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  N13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000248_pack_2,
      O => U3_blue_and0000248_1315
    );
  N9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  N9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000169_pack_1,
      O => U3_blue_and0000169_1317
    );
  red_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000_pack_1,
      O => U3_blue_and0000
    );
  U3_blue_and0000325_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000325_4012,
      O => U3_blue_and0000325_0
    );
  U3_blue_and0000325_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000197_pack_1,
      O => U3_blue_and0000197_1325
    );
  U3_blue_and00000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and00000_4036,
      O => U3_blue_and00000_0
    );
  vsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_N2_pack_1,
      O => U2_N2
    );
  U3_blue_and000087_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and000087_4156,
      O => U3_blue_and000087_0
    );
  U3_blue_and000087_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19_pack_1,
      O => N19
    );
  M_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(7),
      O => M_7_0
    );
  M_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(1),
      O => M_1_0
    );
  M_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(6),
      O => M_6_0
    );
  M_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(2),
      O => M_2_0
    );
  M_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(5),
      O => M_5_0
    );
  M_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(3),
      O => M_3_0
    );
  M_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(4),
      O => M_4_0
    );
  U1_Mcount_q_lut_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_Mcount_q_lut(0),
      O => U1_Mcount_q_lut_0_0
    );
  N11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  N11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and000016_pack_1,
      O => U3_blue_and000016_1337
    );
  U3_blue_and0000300_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0000300_4312,
      O => U3_blue_and0000300_0
    );
  U3_blue_and0000300_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15_pack_1,
      O => N15
    );
  U3_blue_and000085_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and000085_4336,
      O => U3_blue_and000085_0
    );
  U3_blue_and000085_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  M_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M(0),
      O => M_0_0
    );
  M_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11
    );
  N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix_addsub0000_7_bdd0,
      O => U3_xpix_addsub0000_7_bdd0_0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0
    );
  U2_Mcount_HCS_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => U2_HCS(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_HCS_lut(0)
    );
  U2_HCS_9_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y48"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_HCS_9_rt_1502
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => U3_ypix(1),
      ADR1 => VCC,
      ADR2 => U3_xpix(3),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(3)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => U3_ypix(0),
      ADR1 => U3_xpix(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(2)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X43Y36"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0001(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_xpix(5),
      O => U3_Madd_rom_addr2_add0000_Madd_lut(5)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X43Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix(2),
      ADR2 => U3_xpix(4),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(4)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0001(7),
      ADR1 => VCC,
      ADR2 => U3_xpix(7),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(7)
    );
  U3_Madd_rom_addr2_add0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => U3_xpix(6),
      ADR1 => U3_rom_addr2_addsub0001(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_add0000_Madd_lut(6)
    );
  U3_rom_addr2_addsub0001_13_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X43Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_rom_addr2_addsub0001(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_rom_addr2_addsub0001_13_rt_1735
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_2 : X_FF
    generic map(
      LOC => "SLICE_X43Y40",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_1740,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_1727,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1 : X_FF
    generic map(
      LOC => "SLICE_X43Y40",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_1758,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_1727,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1)
    );
  U3_Msub_xpix_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X43Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(1),
      ADR3 => VCC,
      O => U3_Msub_xpix_lut_1_Q
    );
  U3_Msub_xpix_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix_lut_3_Q
    );
  U3_Msub_xpix_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(2),
      O => U3_Msub_xpix_lut_2_Q
    );
  U3_Msub_xpix_addsub0000_xor_5_11 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X43Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(5),
      O => U3_xpix_addsub0000(5)
    );
  U3_Msub_ypix_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_ypix_addsub0000(1),
      O => U3_Msub_ypix_lut(1)
    );
  U3_Msub_ypix_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_ypix_addsub0000(3),
      ADR3 => VCC,
      O => U3_Msub_ypix_lut(3)
    );
  U3_Msub_ypix_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix_addsub0000(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_lut(2)
    );
  U3_Msub_ypix_lut_5_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix_addsub0000(5),
      ADR2 => sw_4_IBUF_1203,
      ADR3 => VCC,
      O => U3_Msub_ypix_lut(5)
    );
  U3_Msub_ypix_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_ypix_addsub0000(4),
      O => U3_Msub_ypix_lut(4)
    );
  U3_Msub_ypix_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => sw_6_IBUF_1210,
      ADR1 => U3_ypix_addsub0000(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_lut(7)
    );
  U3_Msub_ypix_lut_6_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => U3_ypix_addsub0000(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => sw_5_IBUF_1208,
      O => U3_Msub_ypix_lut(6)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix(3),
      ADR2 => VCC,
      ADR3 => U3_ypix(4),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(6)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => U3_ypix(2),
      ADR1 => U3_ypix(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(5)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X47Y38"
    )
    port map (
      ADR0 => U3_ypix(6),
      ADR1 => U3_ypix(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(8)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X47Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix(4),
      ADR2 => VCC,
      ADR3 => U3_ypix(5),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(7)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X47Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_ypix(7),
      ADR3 => U3_ypix(8),
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(10)
    );
  U3_Madd_rom_addr2_addsub0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X47Y39"
    )
    port map (
      ADR0 => U3_ypix(6),
      ADR1 => VCC,
      ADR2 => U3_ypix(7),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0000_Madd_lut(9)
    );
  U2_Mcount_vcs_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X53Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_lut(0)
    );
  U2_vcs_9_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vcs_9_rt_2434
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X55Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(4),
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(1)
    );
  U2_vcs_2_rt_1 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => U2_vcs_2_rt
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X55Y31"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => sw_5_IBUF_1208,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X55Y31"
    )
    port map (
      ADR0 => sw_4_IBUF_1203,
      ADR1 => U2_vcs(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => sw_6_IBUF_1210,
      ADR1 => U2_vcs(8),
      ADR2 => sw_7_IBUF_1215,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => sw_6_IBUF_1210,
      ADR1 => U2_vcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon_cmp_lt0000_lut(4)
    );
  U2_vsync_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X55Y33"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(3),
      ADR2 => VCC,
      ADR3 => U2_vcs(9),
      O => N3
    );
  U3_Msub_ypix_addsub0000_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X49Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_addsub0000_lut(7)
    );
  U3_Msub_ypix_addsub0000_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X49Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(6),
      O => U3_Msub_ypix_addsub0000_lut(6)
    );
  U3_Msub_ypix_addsub0000_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X49Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_ypix_addsub0000_lut(9)
    );
  U3_Msub_ypix_addsub0000_lut_8_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X49Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(8),
      O => U3_Msub_ypix_addsub0000_lut(8)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_rom_addr2_addsub0000(6),
      ADR2 => VCC,
      ADR3 => U3_ypix(4),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(6)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => U3_ypix(0),
      ADR1 => U3_ypix(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(5)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(8),
      ADR1 => VCC,
      ADR2 => U3_ypix(6),
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(8)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_ypix(5),
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(7)
    );
  U3_Madd_rom_addr2_addsub0001_Madd_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X45Y39"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(11),
      ADR1 => U3_ypix(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_rom_addr2_addsub0001_Madd_lut(11)
    );
  U3_rom_addr2_addsub0000_13_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y40"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0000(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_rom_addr2_addsub0000_13_rt_2916
    );
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_1269
    );
  btn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_INBUF,
      O => btn_1_IBUF_1270
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_1271
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_1272
    );
  sw_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IBUF_1277
    );
  sw_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IBUF_1278
    );
  sw_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IBUF_1279
    );
  sw_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IBUF_1280
    );
  sw_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_4_INBUF,
      O => sw_4_IBUF_1203
    );
  sw_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_5_INBUF,
      O => sw_5_IBUF_1208
    );
  sw_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_6_INBUF,
      O => sw_6_IBUF_1210
    );
  sw_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_7_INBUF,
      O => sw_7_IBUF_1215
    );
  U3_blue_and0000421 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X50Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => U3_blue_and0000421_3348
    );
  U3_blue_and0000341 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X49Y37"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(7),
      ADR2 => U2_vcs(5),
      ADR3 => U2_vcs(8),
      O => U3_blue_and0000341_3362
    );
  U2_vcs_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => U2_N2,
      ADR1 => N7_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => U2_vcs_cmp_eq0000_pack_1
    );
  U2_Mcount_vcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs_cmp_eq0000_1308,
      ADR3 => U2_Result(9),
      O => U2_Mcount_vcs_eqn_9
    );
  U2_vcs_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DXMUX_3407,
      CE => U2_vcs_9_CEINV_3388,
      CLK => U2_vcs_9_CLKINV_3389,
      SET => GND,
      RST => U2_vcs_9_FFX_RSTAND_3413,
      O => U2_vcs(9)
    );
  U2_vcs_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_9_FFX_RSTAND_3413
    );
  U2_HCS_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => VCC,
      ADR2 => U2_HCS(5),
      ADR3 => U2_HCS(7),
      O => U3_blue_and0000257_pack_1
    );
  U2_HCS_cmp_eq00005 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => U2_HCS(1),
      ADR1 => U2_HCS(0),
      ADR2 => U2_HCS(9),
      ADR3 => U3_blue_and0000257,
      O => U2_HCS_cmp_eq00005_3436
    );
  U2_HCS_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X46Y45"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_HCS(2),
      ADR2 => U2_HCS(3),
      ADR3 => U2_HCS(8),
      O => U2_HCS_cmp_eq000010_pack_1
    );
  U2_HCS_cmp_eq0000111 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X46Y45"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => VCC,
      ADR2 => U2_HCS_cmp_eq000010_1313,
      ADR3 => VCC,
      O => U2_HCS_cmp_eq0000
    );
  U2_VSENABLE : X_FF
    generic map(
      LOC => "SLICE_X46Y45",
      INIT => '0'
    )
    port map (
      I => U2_VSENABLE_DXMUX_3467,
      CE => U2_VSENABLE_CEINVNOT,
      CLK => U2_VSENABLE_CLKINV_3450,
      SET => GND,
      RST => GND,
      O => U2_VSENABLE_1307
    );
  U1_Mcount_q_lut_0_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y83"
    )
    port map (
      ADR0 => U1_Mcount_q_lut_0_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_Mcount_q_lut_0_rt_3487
    );
  U1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y83",
      INIT => '0'
    )
    port map (
      I => U1_q_01_DXMUX_3492,
      CE => VCC,
      CLK => U1_q_01_CLKINV_3477,
      SET => GND,
      RST => U1_q_01_FFX_RSTAND_3497,
      O => U1_q_01
    );
  U1_q_01_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U1_q_01_FFX_RSTAND_3497
    );
  U2_Mcount_HCS_eqn_01 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X44Y45"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => VCC,
      ADR2 => U2_Result_0_1,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_0
    );
  U2_HCS_0 : X_FF
    generic map(
      LOC => "SLICE_X44Y45",
      INIT => '0'
    )
    port map (
      I => U2_HCS_1_DYMUX_3519,
      CE => VCC,
      CLK => U2_HCS_1_CLKINV_3509,
      SET => GND,
      RST => U2_HCS_1_SRINV_3510,
      O => U2_HCS(0)
    );
  U2_Mcount_HCS_eqn_11 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X44Y45"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_Result_1_1,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_HCS_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y45",
      INIT => '0'
    )
    port map (
      I => U2_HCS_1_DXMUX_3534,
      CE => VCC,
      CLK => U2_HCS_1_CLKINV_3509,
      SET => GND,
      RST => U2_HCS_1_SRINV_3510,
      O => U2_HCS(1)
    );
  U2_Mcount_HCS_eqn_21 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_HCS_cmp_eq000010_1313,
      ADR2 => VCC,
      ADR3 => U2_Result_2_1,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_HCS_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y44",
      INIT => '0'
    )
    port map (
      I => U2_HCS_3_DYMUX_3561,
      CE => VCC,
      CLK => U2_HCS_3_CLKINV_3551,
      SET => GND,
      RST => U2_HCS_3_SRINV_3552,
      O => U2_HCS(2)
    );
  U2_Mcount_HCS_eqn_31 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => U2_Result_3_1,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_HCS_3 : X_FF
    generic map(
      LOC => "SLICE_X44Y44",
      INIT => '0'
    )
    port map (
      I => U2_HCS_3_DXMUX_3576,
      CE => VCC,
      CLK => U2_HCS_3_CLKINV_3551,
      SET => GND,
      RST => U2_HCS_3_SRINV_3552,
      O => U2_HCS(3)
    );
  U2_Mcount_HCS_eqn_41 : X_LUT4
    generic map(
      INIT => X"30F0",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => U2_Result_4_1,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_HCS_4 : X_FF
    generic map(
      LOC => "SLICE_X44Y46",
      INIT => '0'
    )
    port map (
      I => U2_HCS_5_DYMUX_3603,
      CE => VCC,
      CLK => U2_HCS_5_CLKINV_3593,
      SET => GND,
      RST => U2_HCS_5_SRINV_3594,
      O => U2_HCS(4)
    );
  U2_Mcount_HCS_eqn_51 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_Result_5_1,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_HCS_5 : X_FF
    generic map(
      LOC => "SLICE_X44Y46",
      INIT => '0'
    )
    port map (
      I => U2_HCS_5_DXMUX_3618,
      CE => VCC,
      CLK => U2_HCS_5_CLKINV_3593,
      SET => GND,
      RST => U2_HCS_5_SRINV_3594,
      O => U2_HCS(5)
    );
  U2_Mcount_HCS_eqn_61 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_HCS_cmp_eq000010_1313,
      ADR2 => VCC,
      ADR3 => U2_Result_6_1,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_HCS_6 : X_FF
    generic map(
      LOC => "SLICE_X44Y47",
      INIT => '0'
    )
    port map (
      I => U2_HCS_7_DYMUX_3645,
      CE => VCC,
      CLK => U2_HCS_7_CLKINV_3635,
      SET => GND,
      RST => U2_HCS_7_SRINV_3636,
      O => U2_HCS(6)
    );
  U2_Mcount_HCS_eqn_71 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => U2_Result_7_1,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_HCS_7 : X_FF
    generic map(
      LOC => "SLICE_X44Y47",
      INIT => '0'
    )
    port map (
      I => U2_HCS_7_DXMUX_3660,
      CE => VCC,
      CLK => U2_HCS_7_CLKINV_3635,
      SET => GND,
      RST => U2_HCS_7_SRINV_3636,
      O => U2_HCS(7)
    );
  U2_Mcount_HCS_eqn_81 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => VCC,
      ADR2 => U2_Result_8_1,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_HCS_8 : X_FF
    generic map(
      LOC => "SLICE_X44Y48",
      INIT => '0'
    )
    port map (
      I => U2_HCS_9_DYMUX_3687,
      CE => VCC,
      CLK => U2_HCS_9_CLKINV_3677,
      SET => GND,
      RST => U2_HCS_9_SRINV_3678,
      O => U2_HCS(8)
    );
  U2_Mcount_HCS_eqn_91 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result_9_1,
      ADR2 => U2_HCS_cmp_eq00005_0,
      ADR3 => U2_HCS_cmp_eq000010_1313,
      O => U2_Mcount_HCS_eqn_9
    );
  U2_HCS_9 : X_FF
    generic map(
      LOC => "SLICE_X44Y48",
      INIT => '0'
    )
    port map (
      I => U2_HCS_9_DXMUX_3702,
      CE => VCC,
      CLK => U2_HCS_9_CLKINV_3677,
      SET => GND,
      RST => U2_HCS_9_SRINV_3678,
      O => U2_HCS(9)
    );
  U2_Mcount_vcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_1308,
      ADR1 => U2_Result(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_0 : X_FF
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DYMUX_3730,
      CE => U2_vcs_1_CEINV_3718,
      CLK => U2_vcs_1_CLKINV_3719,
      SET => GND,
      RST => U2_vcs_1_SRINV_3720,
      O => U2_vcs(0)
    );
  U2_Mcount_vcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_1308,
      ADR2 => U2_Result(1),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_vcs_1 : X_FF
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DXMUX_3747,
      CE => U2_vcs_1_CEINV_3718,
      CLK => U2_vcs_1_CLKINV_3719,
      SET => GND,
      RST => U2_vcs_1_SRINV_3720,
      O => U2_vcs(1)
    );
  U2_Mcount_vcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X50Y34"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_1308,
      ADR1 => U2_Result(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_vcs_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DYMUX_3776,
      CE => U2_vcs_3_CEINV_3764,
      CLK => U2_vcs_3_CLKINV_3765,
      SET => GND,
      RST => U2_vcs_3_SRINV_3766,
      O => U2_vcs(2)
    );
  U2_Mcount_vcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X50Y34"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_1308,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_Result(3),
      O => U2_Mcount_vcs_eqn_3
    );
  U2_vcs_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DXMUX_3793,
      CE => U2_vcs_3_CEINV_3764,
      CLK => U2_vcs_3_CLKINV_3765,
      SET => GND,
      RST => U2_vcs_3_SRINV_3766,
      O => U2_vcs(3)
    );
  U2_Mcount_vcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X52Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_1308,
      ADR2 => VCC,
      ADR3 => U2_Result(4),
      O => U2_Mcount_vcs_eqn_4
    );
  U2_vcs_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DYMUX_3822,
      CE => U2_vcs_5_CEINV_3810,
      CLK => U2_vcs_5_CLKINV_3811,
      SET => GND,
      RST => U2_vcs_5_SRINV_3812,
      O => U2_vcs(4)
    );
  U2_Mcount_vcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X52Y34"
    )
    port map (
      ADR0 => U2_Result(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs_cmp_eq0000_1308,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_vcs_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DXMUX_3839,
      CE => U2_vcs_5_CEINV_3810,
      CLK => U2_vcs_5_CLKINV_3811,
      SET => GND,
      RST => U2_vcs_5_SRINV_3812,
      O => U2_vcs(5)
    );
  U2_Mcount_vcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X52Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_Result(6),
      ADR3 => U2_vcs_cmp_eq0000_1308,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_vcs_6 : X_FF
    generic map(
      LOC => "SLICE_X52Y36",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DYMUX_3868,
      CE => U2_vcs_7_CEINV_3856,
      CLK => U2_vcs_7_CLKINV_3857,
      SET => GND,
      RST => U2_vcs_7_SRINV_3858,
      O => U2_vcs(6)
    );
  U2_Mcount_vcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X52Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(7),
      ADR2 => VCC,
      ADR3 => U2_vcs_cmp_eq0000_1308,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_vcs_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y36",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DXMUX_3885,
      CE => U2_vcs_7_CEINV_3856,
      CLK => U2_vcs_7_CLKINV_3857,
      SET => GND,
      RST => U2_vcs_7_SRINV_3858,
      O => U2_vcs(7)
    );
  U2_Mcount_vcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X52Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_1308,
      ADR2 => VCC,
      ADR3 => U2_Result(8),
      O => U2_Mcount_vcs_eqn_8
    );
  U2_vcs_8 : X_FF
    generic map(
      LOC => "SLICE_X52Y37",
      INIT => '0'
    )
    port map (
      I => U2_vcs_8_DYMUX_3911,
      CE => U2_vcs_8_CEINV_3899,
      CLK => U2_vcs_8_CLKINV_3900,
      SET => GND,
      RST => U2_vcs_8_FFY_RSTAND_3917,
      O => U2_vcs(8)
    );
  U2_vcs_8_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1272,
      O => U2_vcs_8_FFY_RSTAND_3917
    );
  U3_blue_and0000248 : X_LUT4
    generic map(
      INIT => X"3777",
      LOC => "SLICE_X47Y45"
    )
    port map (
      ADR0 => U2_HCS(3),
      ADR1 => U2_HCS(4),
      ADR2 => U2_HCS(2),
      ADR3 => U2_HCS(1),
      O => U3_blue_and0000248_pack_2
    );
  U3_blue_and0000325_SW0 : X_LUT4
    generic map(
      INIT => X"8FFF",
      LOC => "SLICE_X47Y45"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_HCS(4),
      ADR2 => U3_blue_and0000257,
      ADR3 => U3_blue_and0000248_1315,
      O => N13
    );
  U3_blue_and0000169 : X_LUT4
    generic map(
      INIT => X"7130",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => sw_4_IBUF_1203,
      ADR1 => sw_5_IBUF_1208,
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(5),
      O => U3_blue_and0000169_pack_1
    );
  U3_blue_and0000197_SW0 : X_LUT4
    generic map(
      INIT => X"C0FC",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(7),
      ADR2 => U3_blue_and0000169_1317,
      ADR3 => sw_6_IBUF_1210,
      O => N9
    );
  U3_blue_and0000349 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => U3_Mcompar_spriteon_cmp_lt0000_cy_6_Q,
      ADR2 => U3_blue_and000087_0,
      ADR3 => U3_blue_and0000325_0,
      O => U3_blue_and0000_pack_1
    );
  U3_red_2_1 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => M_7_0,
      ADR1 => VCC,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => red_2_OBUF_3988
    );
  U3_blue_and0000197 : X_LUT4
    generic map(
      INIT => X"EFAE",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U2_vcs(8),
      ADR2 => sw_7_IBUF_1215,
      ADR3 => N9_0,
      O => U3_blue_and0000197_pack_1
    );
  U3_blue_and0000325 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U3_blue_and0000300_0,
      ADR2 => U3_blue_and0000197_1325,
      ADR3 => N13_0,
      O => U3_blue_and0000325_4012
    );
  U2_hsync1 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X42Y37"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => U2_HCS(8),
      ADR2 => VCC,
      ADR3 => U2_HCS(9),
      O => hsync_OBUF_4027
    );
  U3_blue_and00000 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X42Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(8),
      ADR2 => VCC,
      ADR3 => U2_HCS(9),
      O => U3_blue_and00000_4036
    );
  U3_red_0_1 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X31Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_blue_and0000,
      ADR2 => VCC,
      ADR3 => M_5_0,
      O => red_0_OBUF_4051
    );
  U3_blue_0_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X31Y18"
    )
    port map (
      ADR0 => M_0_0,
      ADR1 => U3_blue_and0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => blue_0_OBUF_4060
    );
  U2_vcs_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(6),
      O => U2_N2_pack_1
    );
  U2_vsync : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => N3_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_N2,
      ADR3 => U2_vcs(1),
      O => vsync_OBUF_4084
    );
  U3_red_1_1 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => M_6_0,
      ADR1 => VCC,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => red_1_OBUF_4099
    );
  U3_blue_1_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M_1_0,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => blue_1_OBUF_4108
    );
  U3_green_0_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M_2_0,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => green_0_OBUF_4123
    );
  U3_green_1_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => M_3_0,
      ADR1 => VCC,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => green_1_OBUF_4132
    );
  U3_blue_and000087_SW0 : X_LUT4
    generic map(
      INIT => X"CFFF",
      LOC => "SLICE_X48Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_blue_and000085_0,
      ADR2 => U2_vcs(7),
      ADR3 => U2_vcs(6),
      O => N19_pack_1
    );
  U3_blue_and000087 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X48Y34"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(5),
      ADR3 => N19,
      O => U3_blue_and000087_4156
    );
  U3_green_2_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => M_4_0,
      ADR1 => VCC,
      ADR2 => U3_blue_and0000,
      ADR3 => VCC,
      O => green_2_OBUF_4168
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux21 : X_LUT4
    generic map(
      INIT => X"F222",
      LOC => "SLICE_X54Y38"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      O => M(1)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux81 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X54Y38"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => M(7)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux31 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      O => M(2)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux71 : X_LUT4
    generic map(
      INIT => X"C0EA",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      O => M(6)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux41 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      O => M(3)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux61 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      O => M(5)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux51 : X_LUT4
    generic map(
      INIT => X"A0EC",
      LOC => "SLICE_X46Y39"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      O => M(4)
    );
  U1_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X36Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_q_01,
      O => U1_Mcount_q_lut(0)
    );
  U3_blue_and000016 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X42Y36"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(7),
      ADR2 => N17_0,
      ADR3 => U2_HCS(4),
      O => U3_blue_and000016_pack_1
    );
  U3_blue_and0000349_SW0 : X_LUT4
    generic map(
      INIT => X"FAC8",
      LOC => "SLICE_X42Y36"
    )
    port map (
      ADR0 => U3_blue_and000042,
      ADR1 => U3_blue_and00000_0,
      ADR2 => U3_blue_and000034,
      ADR3 => U3_blue_and000016_1337,
      O => N11
    );
  U3_blue_and0000300_SW0 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X47Y42"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => U2_HCS(5),
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => N15_pack_1
    );
  U3_blue_and0000300 : X_LUT4
    generic map(
      INIT => X"0054",
      LOC => "SLICE_X47Y42"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_HCS(8),
      ADR2 => N15,
      ADR3 => U2_vcs(9),
      O => U3_blue_and0000300_4312
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFBF",
      LOC => "SLICE_X48Y35"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(9),
      ADR3 => U2_vcs(2),
      O => N7
    );
  U3_blue_and000085 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X48Y35"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(2),
      O => U3_blue_and000085_4336
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux111 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X42Y39"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1),
      ADR2 => VCC,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux12 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X42Y39"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      O => M(0)
    );
  U3_xpix_addsub0000_7_11 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X42Y42"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(5),
      ADR2 => VCC,
      ADR3 => U2_HCS(4),
      O => U3_xpix_addsub0000_7_bdd0
    );
  U3_blue_and000016_SW0 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X42Y42"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(1),
      ADR2 => U2_HCS(3),
      ADR3 => U2_HCS(2),
      O => N17
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_bindec_a_bindec_inst_a_ADDR_2_PWR_16_o_equal_5_o_2_1 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "SLICE_X42Y38"
    )
    port map (
      ADR0 => rom_addr16(11),
      ADR1 => VCC,
      ADR2 => rom_addr16(12),
      ADR3 => rom_addr16(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4)
    );
  U2_Result_0_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(1),
      ADR3 => VCC,
      O => U2_Result_0_1_G
    );
  U2_Result_2_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(2),
      O => U2_Result_2_1_F
    );
  U2_Result_2_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X45Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_1_G
    );
  U2_Result_4_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => VCC,
      O => U2_Result_4_1_F
    );
  U2_Result_4_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_4_1_G
    );
  U2_Result_6_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(6),
      O => U2_Result_6_1_F
    );
  U2_Result_6_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => U2_HCS(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_1_G
    );
  U2_Result_8_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(8),
      O => U2_Result_8_1_F
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_rom_addr2_addsub0001(10),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_rom_addr2_addsub0001(11),
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y40"
    )
    port map (
      ADR0 => U3_rom_addr2_addsub0001(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F
    );
  rom_addr16_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(0),
      O => rom_addr16_0_F
    );
  U3_xpix_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => VCC,
      O => U3_xpix_4_F
    );
  U3_ypix_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_ypix_addsub0000(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_ypix_0_F
    );
  U2_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y33"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_0_G
    );
  U2_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_F
    );
  U2_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(3),
      ADR3 => VCC,
      O => U2_Result_2_G
    );
  U2_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(4),
      O => U2_Result_4_F
    );
  U2_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y35"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_4_G
    );
  U2_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y36"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_F
    );
  U2_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(7),
      ADR3 => VCC,
      O => U2_Result_6_G
    );
  U2_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(8),
      O => U2_Result_8_F
    );
  U3_ypix_addsub0000_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => U3_ypix_addsub0000_0_F
    );
  U3_ypix_addsub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y32"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_ypix_addsub0000_0_G
    );
  U3_ypix_addsub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => U3_ypix_addsub0000_2_F
    );
  U3_ypix_addsub0000_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_ypix_addsub0000_2_G
    );
  U3_ypix_addsub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(4),
      O => U3_ypix_addsub0000_4_F
    );
  U3_rom_addr2_addsub0001_11_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_rom_addr2_addsub0000(12),
      O => U3_rom_addr2_addsub0001_11_G
    );
  red_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_4099,
      O => red_1_O
    );
  red_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_2_OBUF_3988,
      O => red_2_O
    );
  green_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_0_OBUF_4123,
      O => green_0_O
    );
  green_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_1_OBUF_4132,
      O => green_1_O
    );
  green_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_2_OBUF_4168,
      O => green_2_O
    );
  hsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 555 ps
    )
    port map (
      I => hsync_OBUF_4027,
      O => hsync_O
    );
  vsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 555 ps
    )
    port map (
      I => vsync_OBUF_4084,
      O => vsync_O
    );
  blue_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_0_OBUF_4060,
      O => blue_0_O
    );
  blue_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_1_OBUF_4108,
      O => blue_1_O
    );
  red_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_0_OBUF_4051,
      O => red_0_O
    );
  U3_blue_and000042_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X50Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_blue_and000042_G
    );
  U3_blue_and000034_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X49Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_blue_and000034_F
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(9),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(8),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(7),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(6),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(5),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(4),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(3),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(2),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(1),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(0),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_noinit_ram_dpram_dp9x9_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(9),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(8),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(7),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(6),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(5),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(4),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(3),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(2),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(1),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(0),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(9),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(8),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(7),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(6),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(5),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(4),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(3),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(2),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(1),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(0),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(9),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(8),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(7),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(6),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(5),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(4),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(3),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(2),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(1),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(0),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(9),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(8),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(7),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(6),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(5),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(4),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(3),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(2),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(1),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rom_addr16(0),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_noinit_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBlock_group_photos_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_group_photos_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

