--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Thu Apr 17 15:49:58 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf vga_bsprite2a_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true vga_bsprite2a_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: vga_bsprite2a_top.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: vga_bsprite2a_top
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

entity vga_bsprite2a_top is
  port (
    vsync : out STD_LOGIC; 
    dp : out STD_LOGIC; 
    upBTN : in STD_LOGIC := 'X'; 
    aBTN : in STD_LOGIC := 'X'; 
    rightBTN : in STD_LOGIC := 'X'; 
    leftBTN : in STD_LOGIC := 'X'; 
    ja1 : in STD_LOGIC := 'X'; 
    ja2 : out STD_LOGIC; 
    ja3 : out STD_LOGIC; 
    downBTN : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end vga_bsprite2a_top;

architecture Structure of vga_bsprite2a_top is
  signal U3_Madd_spriteon1_addsub0001_lut_7_0 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_add0002_4_0 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_5_0 : STD_LOGIC; 
  signal U3_N16 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_8_0 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_9_0 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal nes_left_reg_4597 : STD_LOGIC; 
  signal U3_C1_not0001_0 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_1_Q : STD_LOGIC; 
  signal U3_Mcount_C1_cy_3_Q : STD_LOGIC; 
  signal U3_Mcount_C1_cy_5_Q : STD_LOGIC; 
  signal U3_C2_not0001_0 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_1_Q : STD_LOGIC; 
  signal U3_Mcount_C2_cy_3_Q : STD_LOGIC; 
  signal U3_Mcount_C2_cy_5_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_7_0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_Q : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal btn_3_IBUF_4652 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_5_0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_0 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_spriteon1_addsub0001_8_0 : STD_LOGIC; 
  signal U3_spriteon1_addsub0001_9_0 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U2_Result_0_1 : STD_LOGIC; 
  signal U2_Result_1_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_Q : STD_LOGIC; 
  signal U2_Result_2_1 : STD_LOGIC; 
  signal U2_Result_3_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_Q : STD_LOGIC; 
  signal U2_Result_4_1 : STD_LOGIC; 
  signal U2_Result_5_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_Q : STD_LOGIC; 
  signal U2_Result_6_1 : STD_LOGIC; 
  signal U2_Result_7_1 : STD_LOGIC; 
  signal U2_Result_8_1 : STD_LOGIC; 
  signal U2_Result_9_1 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_Q : STD_LOGIC; 
  signal U3_Q_0_4773 : STD_LOGIC; 
  signal U3_Q_1_4774 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_Q : STD_LOGIC; 
  signal U3_Q_2_4776 : STD_LOGIC; 
  signal U3_Q_3_4777 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_Q : STD_LOGIC; 
  signal U3_Q_4_4779 : STD_LOGIC; 
  signal U3_Q_5_4780 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_Q : STD_LOGIC; 
  signal U3_Q_6_4782 : STD_LOGIC; 
  signal U3_Q_7_4783 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_Q : STD_LOGIC; 
  signal U3_Q_8_4785 : STD_LOGIC; 
  signal U3_Q_9_4786 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_Q : STD_LOGIC; 
  signal U3_Q_10_4788 : STD_LOGIC; 
  signal U3_Q_11_4789 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_Q : STD_LOGIC; 
  signal U3_Q_12_4791 : STD_LOGIC; 
  signal U3_Q_13_4792 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_Q : STD_LOGIC; 
  signal U3_Q_14_4794 : STD_LOGIC; 
  signal U3_Q_15_4795 : STD_LOGIC; 
  signal U3_Q_16_4797 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal M1a_1_8_0 : STD_LOGIC; 
  signal M1a_1_20_0 : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6 : STD_LOGIC; 
  signal M1a_4_bdd0_0 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7 : STD_LOGIC; 
  signal M1a_14_bdd0_0 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M2a_11_Q : STD_LOGIC; 
  signal M2a_8_0 : STD_LOGIC; 
  signal M2a_9_0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7 : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M2a_23_Q : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M2a_21_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5 : STD_LOGIC; 
  signal M1a_12_bdd1_0 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_7_0 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal M2a_5_0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5 : STD_LOGIC; 
  signal M2a_2_0 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_1_0 : STD_LOGIC; 
  signal M2_30_Q : STD_LOGIC; 
  signal M1_0_0 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M2_29_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6 : STD_LOGIC; 
  signal M1_4_bdd0_0 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7 : STD_LOGIC; 
  signal M1_14_bdd1_0 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M2_13_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal M2_10_0 : STD_LOGIC; 
  signal M2_11_Q : STD_LOGIC; 
  signal M2_8_0 : STD_LOGIC; 
  signal M2_9_0 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7 : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M2_23_Q : STD_LOGIC; 
  signal M2_20_Q : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5 : STD_LOGIC; 
  signal M2_18_bdd0_0 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal M2_6_0 : STD_LOGIC; 
  signal M2_7_0 : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5 : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_0_0 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_24_0 : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N325_0 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal M1_10_Q : STD_LOGIC; 
  signal M1_11_Q : STD_LOGIC; 
  signal M1_8_Q : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7 : STD_LOGIC; 
  signal M1_22_0_4914 : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_20_Q : STD_LOGIC; 
  signal M1_21_0 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5 : STD_LOGIC; 
  signal M1_18_Q : STD_LOGIC; 
  signal M1_19_Q : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1a_29_51_0 : STD_LOGIC; 
  signal M1a_30_36_0 : STD_LOGIC; 
  signal M1a_28_0 : STD_LOGIC; 
  signal M1a_29_0 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6 : STD_LOGIC; 
  signal M1a_26_0 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal M1a_24_0 : STD_LOGIC; 
  signal M1a_25_0 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7 : STD_LOGIC; 
  signal M1a_22_0 : STD_LOGIC; 
  signal M1a_23_0 : STD_LOGIC; 
  signal M1a_20_Q : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5 : STD_LOGIC; 
  signal M1a_2_Q : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M2a_3_f6_F5_I1 : STD_LOGIC; 
  signal M2a_3_f5 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal M2_3_bdd7_0 : STD_LOGIC; 
  signal M2_4_bdd10_0 : STD_LOGIC; 
  signal ja1_IBUF_4977 : STD_LOGIC; 
  signal sw_0_IBUF_4991 : STD_LOGIC; 
  signal sw_1_IBUF_4992 : STD_LOGIC; 
  signal sw_2_IBUF_4993 : STD_LOGIC; 
  signal sw_3_IBUF_4994 : STD_LOGIC; 
  signal sw_4_IBUF_4995 : STD_LOGIC; 
  signal sw_5_IBUF_4996 : STD_LOGIC; 
  signal sw_6_IBUF_4997 : STD_LOGIC; 
  signal sw_7_IBUF_4998 : STD_LOGIC; 
  signal btn_0_IBUF_5001 : STD_LOGIC; 
  signal btn_1_IBUF_5002 : STD_LOGIC; 
  signal btn_2_IBUF_5003 : STD_LOGIC; 
  signal red_1_OBUF_5005 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_5011 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_5012 : STD_LOGIC; 
  signal M1_12_bdd0 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal M1a_27_83 : STD_LOGIC; 
  signal M1_27_bdd0_0 : STD_LOGIC; 
  signal M1a_27_123_0 : STD_LOGIC; 
  signal M1_10_bdd5_0 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal U3_N30 : STD_LOGIC; 
  signal U3_N36 : STD_LOGIC; 
  signal U3_blue_and0003_0 : STD_LOGIC; 
  signal U3_N12 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal M1_21_26 : STD_LOGIC; 
  signal M1_24_bdd4 : STD_LOGIC; 
  signal M1a_22_bdd0_0 : STD_LOGIC; 
  signal M1a_24_bdd1_0 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_31_25 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal N315_0 : STD_LOGIC; 
  signal N331_0 : STD_LOGIC; 
  signal M1_25_77_0 : STD_LOGIC; 
  signal M1_25_bdd1_0 : STD_LOGIC; 
  signal M1_26_58_0 : STD_LOGIC; 
  signal M1_26_30_0 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal M1_27_127_0 : STD_LOGIC; 
  signal M1_22_bdd4 : STD_LOGIC; 
  signal M1_28_74_0 : STD_LOGIC; 
  signal M1_28_2_0 : STD_LOGIC; 
  signal M2_1_bdd1_0 : STD_LOGIC; 
  signal M2_1_67 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal M2_5_bdd2_0 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal M2_5_107 : STD_LOGIC; 
  signal M1_10_bdd8_0 : STD_LOGIC; 
  signal M2_6_bdd1_0 : STD_LOGIC; 
  signal M2a_6_bdd1_0 : STD_LOGIC; 
  signal M2a_6_10 : STD_LOGIC; 
  signal M2_4_bdd0_0 : STD_LOGIC; 
  signal M2_6_169 : STD_LOGIC; 
  signal U3_spriteonB5_and00009 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and000018 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal U3_spriteonB5_and000083 : STD_LOGIC; 
  signal M1a_12_bdd0_0 : STD_LOGIC; 
  signal N307_0 : STD_LOGIC; 
  signal M1a_27_50_0 : STD_LOGIC; 
  signal N309_0 : STD_LOGIC; 
  signal M2a_4_116_0 : STD_LOGIC; 
  signal M2a_4_14_0 : STD_LOGIC; 
  signal M1_29_80 : STD_LOGIC; 
  signal M2a_6_49_0 : STD_LOGIC; 
  signal M1_22_11_0 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_22_36 : STD_LOGIC; 
  signal M1_23_14_0 : STD_LOGIC; 
  signal M1_23_35 : STD_LOGIC; 
  signal M1_23_bdd1_0 : STD_LOGIC; 
  signal M1_29_bdd5_0 : STD_LOGIC; 
  signal M2_2_31_0 : STD_LOGIC; 
  signal M2_2_50_0 : STD_LOGIC; 
  signal M2_2_10_0 : STD_LOGIC; 
  signal M2_4_117_0 : STD_LOGIC; 
  signal M2_4_127_0 : STD_LOGIC; 
  signal M1_0_bdd2_0 : STD_LOGIC; 
  signal M2_4_49_0 : STD_LOGIC; 
  signal M2_4_38_0 : STD_LOGIC; 
  signal N265_0 : STD_LOGIC; 
  signal M2_0_bdd4 : STD_LOGIC; 
  signal M2_0_28 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N215_0 : STD_LOGIC; 
  signal M2_3_2_0 : STD_LOGIC; 
  signal M2_3_72_0 : STD_LOGIC; 
  signal M2_0_bdd10 : STD_LOGIC; 
  signal M2_0_bdd20 : STD_LOGIC; 
  signal M2_8_13 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal M2_0_bdd9_0 : STD_LOGIC; 
  signal M2_8_52 : STD_LOGIC; 
  signal U3_spriteonB4_and000069_5106 : STD_LOGIC; 
  signal U3_spriteonB2_0 : STD_LOGIC; 
  signal U3_spriteonB1_0 : STD_LOGIC; 
  signal U3_spriteonB4_and000038_0 : STD_LOGIC; 
  signal U3_spriteonB3_0 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal U3_C1_not00015_0 : STD_LOGIC; 
  signal U3_C1_not000110_0 : STD_LOGIC; 
  signal U3_C1_not00014_O : STD_LOGIC; 
  signal U3_C1_not000127_0 : STD_LOGIC; 
  signal U3_C1_not0001105_0 : STD_LOGIC; 
  signal U3_C1_not000183_O : STD_LOGIC; 
  signal U3_C1_not000147_0 : STD_LOGIC; 
  signal N108_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_N11_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_0 : STD_LOGIC; 
  signal nes_counter_reg_not0001_0 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_5127 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_5128 : STD_LOGIC; 
  signal nes_right_reg_5129 : STD_LOGIC; 
  signal U3_C2_not000150_O : STD_LOGIC; 
  signal U3_C2_not000164_0 : STD_LOGIC; 
  signal U3_C2_not000123_O : STD_LOGIC; 
  signal U3_C2_not000113_0 : STD_LOGIC; 
  signal U3_C2_not00016_0 : STD_LOGIC; 
  signal U3_N80 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_0 : STD_LOGIC; 
  signal U2_vsenable_5137 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_5138 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal U3_C2_not00011_O : STD_LOGIC; 
  signal U2_hcs_cmp_eq000010_5142 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000_0 : STD_LOGIC; 
  signal U3_blue_0_27_0 : STD_LOGIC; 
  signal U3_N85_0 : STD_LOGIC; 
  signal U3_N81 : STD_LOGIC; 
  signal U3_N35_0 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_0 : STD_LOGIC; 
  signal U3_N84_0 : STD_LOGIC; 
  signal M1_25_34_0 : STD_LOGIC; 
  signal M1_24_bdd2_0 : STD_LOGIC; 
  signal M1_24_25_0 : STD_LOGIC; 
  signal N183_0 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal U3_spriteonB5_and000026_0 : STD_LOGIC; 
  signal U3_spriteonB5_0 : STD_LOGIC; 
  signal N255_0 : STD_LOGIC; 
  signal U3_blue_0_9_5162 : STD_LOGIC; 
  signal M1a_23_10_0 : STD_LOGIC; 
  signal M1a_28_66_0 : STD_LOGIC; 
  signal vidon_0 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000_0 : STD_LOGIC; 
  signal U3_red_0_17_5168 : STD_LOGIC; 
  signal N203_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000040_5170 : STD_LOGIC; 
  signal N245_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000066_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000071_5173 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000084_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000058_5175 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000012_0 : STD_LOGIC; 
  signal N199_0 : STD_LOGIC; 
  signal N195_0 : STD_LOGIC; 
  signal M1a_26_106_0 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal nes_nes_clk31_0 : STD_LOGIC; 
  signal U3_N78_0 : STD_LOGIC; 
  signal U2_vidon_and00006_0 : STD_LOGIC; 
  signal U2_vidon_and00000_5184 : STD_LOGIC; 
  signal U2_vidon_and000039_0 : STD_LOGIC; 
  signal U3_spriteonB4_and000052_0 : STD_LOGIC; 
  signal M2_0_bdd2 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal M2_0_bdd18 : STD_LOGIC; 
  signal M1a_24_38_0 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal nes_a_reg_5193 : STD_LOGIC; 
  signal M1a_26_8_0 : STD_LOGIC; 
  signal M1_22_bdd0_0 : STD_LOGIC; 
  signal N333_0 : STD_LOGIC; 
  signal M1_27_102_0 : STD_LOGIC; 
  signal M1_27_40_0 : STD_LOGIC; 
  signal M1_21_5_0 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_0 : STD_LOGIC; 
  signal U2_vidon_and000080_0 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal M2_9_25_0 : STD_LOGIC; 
  signal M2_4_24_0 : STD_LOGIC; 
  signal N217_0 : STD_LOGIC; 
  signal U3_spriteonB4_and00005_0 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_0 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal U3_spriteonB1_and000022_0 : STD_LOGIC; 
  signal M1a_10_bdd0 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal M1a_26_47_0 : STD_LOGIC; 
  signal N104_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00002_5215 : STD_LOGIC; 
  signal M2a_9_33_0 : STD_LOGIC; 
  signal M2a_9_13_0 : STD_LOGIC; 
  signal M1a_22_18_5218 : STD_LOGIC; 
  signal M1a_23_43_0 : STD_LOGIC; 
  signal M1a_23_14_5220 : STD_LOGIC; 
  signal M1a_24_14_5221 : STD_LOGIC; 
  signal M2_4_93_0 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal M2a_5_110_0 : STD_LOGIC; 
  signal M1a_28_17_0 : STD_LOGIC; 
  signal M1a_28_32_5226 : STD_LOGIC; 
  signal M1a_29_30_5227 : STD_LOGIC; 
  signal N01_0 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal M2a_5_9_0 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N321_0 : STD_LOGIC; 
  signal M2_6_51_0 : STD_LOGIC; 
  signal M1_10_bdd7 : STD_LOGIC; 
  signal M2_6_87_0 : STD_LOGIC; 
  signal M2_7_92_0 : STD_LOGIC; 
  signal M2_7_55_0 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_24_70_0 : STD_LOGIC; 
  signal M2_10_25_0 : STD_LOGIC; 
  signal M2_10_7 : STD_LOGIC; 
  signal M2_10_bdd2 : STD_LOGIC; 
  signal M2_12_bdd5 : STD_LOGIC; 
  signal M1_28_23_5244 : STD_LOGIC; 
  signal M1_10_bdd0_0 : STD_LOGIC; 
  signal M2_2_bdd5_0 : STD_LOGIC; 
  signal M2_6_120_5247 : STD_LOGIC; 
  signal M2_8_129_5248 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_5249 : STD_LOGIC; 
  signal U3_spriteonB3_and000050_0 : STD_LOGIC; 
  signal N261_0 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal U3_N60 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_0 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal U3_spriteonB2_and000012_5256 : STD_LOGIC; 
  signal N221_0 : STD_LOGIC; 
  signal M2a_2_18_5258 : STD_LOGIC; 
  signal M2_4_bdd2 : STD_LOGIC; 
  signal M2a_4_35_0 : STD_LOGIC; 
  signal M2a_4_54_0 : STD_LOGIC; 
  signal M2a_4_77_5262 : STD_LOGIC; 
  signal N253_0 : STD_LOGIC; 
  signal M2a_8_11_5264 : STD_LOGIC; 
  signal M2a_8_29_0 : STD_LOGIC; 
  signal M2a_6_bdd0_0 : STD_LOGIC; 
  signal U2_vidon_and0000105_0 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal U3_spriteonB3_and000043_0 : STD_LOGIC; 
  signal U3_spriteonB3_and000073_0 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal M1_22_0_5273 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal M2_7_25_0 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal M2_9_63_5278 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal M2a_7_58_0 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal U2_vidon_and0000117_5283 : STD_LOGIC; 
  signal U3_spriteonB4_and000055_0 : STD_LOGIC; 
  signal U3_spriteonB4_and000017_5285 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5315 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5314 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5306 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5304 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5303 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5301 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5293 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5346 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5337 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5336 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5335 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5334 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5333 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5332 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5331 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5323 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5377 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5368 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5367 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5366 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5365 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5364 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5363 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5362 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5355 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5408 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5401 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5400 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5399 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5398 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5397 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5396 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5395 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5387 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CY0F_5439 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYSELF_5431 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXFAST_5430 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYAND_5429 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_FASTCARRY_5428 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXG2_5427 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXF2_5426 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CY0G_5425 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYSELG_5419 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_5469 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_5468 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5460 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5458 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5457 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5455 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5447 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_5500 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_5491 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_5490 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_5489 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_5488 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_5487 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_5486 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_5485 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_5477 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_5531 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_5523 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_5522 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_5521 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_5520 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_5519 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_5518 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_5517 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_5511 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_5566 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_5558 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_5557 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_5556 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_5555 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_5554 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_5553 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_5552 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_5546 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CY0F_5597 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYSELF_5588 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXFAST_5587 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYAND_5586 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_FASTCARRY_5585 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXG2_5584 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXF2_5583 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CY0G_5582 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYSELG_5574 : STD_LOGIC; 
  signal U3_C1_0_DXMUX_5643 : STD_LOGIC; 
  signal U3_C1_0_XORF_5641 : STD_LOGIC; 
  signal U3_C1_0_CYINIT_5640 : STD_LOGIC; 
  signal U3_C1_0_CY0F_5639 : STD_LOGIC; 
  signal U3_C1_0_CYSELF_5631 : STD_LOGIC; 
  signal U3_C1_0_DYMUX_5624 : STD_LOGIC; 
  signal U3_C1_0_XORG_5622 : STD_LOGIC; 
  signal U3_C1_0_CYMUXG_5621 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_0_Q : STD_LOGIC; 
  signal U3_C1_0_CY0G_5619 : STD_LOGIC; 
  signal U3_C1_0_CYSELG_5611 : STD_LOGIC; 
  signal U3_C1_0_CLKINV_5609 : STD_LOGIC; 
  signal U3_C1_0_CEINV_5608 : STD_LOGIC; 
  signal U3_C1_2_DXMUX_5696 : STD_LOGIC; 
  signal U3_C1_2_XORF_5694 : STD_LOGIC; 
  signal U3_C1_2_CYINIT_5693 : STD_LOGIC; 
  signal U3_C1_2_CY0F_5692 : STD_LOGIC; 
  signal U3_C1_2_DYMUX_5679 : STD_LOGIC; 
  signal U3_C1_2_XORG_5677 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_2_Q : STD_LOGIC; 
  signal U3_C1_2_CYSELF_5675 : STD_LOGIC; 
  signal U3_C1_2_CYMUXFAST_5674 : STD_LOGIC; 
  signal U3_C1_2_CYAND_5673 : STD_LOGIC; 
  signal U3_C1_2_FASTCARRY_5672 : STD_LOGIC; 
  signal U3_C1_2_CYMUXG2_5671 : STD_LOGIC; 
  signal U3_C1_2_CYMUXF2_5670 : STD_LOGIC; 
  signal U3_C1_2_CY0G_5669 : STD_LOGIC; 
  signal U3_C1_2_CYSELG_5661 : STD_LOGIC; 
  signal U3_C1_2_CLKINV_5659 : STD_LOGIC; 
  signal U3_C1_2_CEINV_5658 : STD_LOGIC; 
  signal U3_C1_4_DXMUX_5749 : STD_LOGIC; 
  signal U3_C1_4_XORF_5747 : STD_LOGIC; 
  signal U3_C1_4_CYINIT_5746 : STD_LOGIC; 
  signal U3_C1_4_CY0F_5745 : STD_LOGIC; 
  signal U3_C1_4_DYMUX_5732 : STD_LOGIC; 
  signal U3_C1_4_XORG_5730 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_4_Q : STD_LOGIC; 
  signal U3_C1_4_CYSELF_5728 : STD_LOGIC; 
  signal U3_C1_4_CYMUXFAST_5727 : STD_LOGIC; 
  signal U3_C1_4_CYAND_5726 : STD_LOGIC; 
  signal U3_C1_4_FASTCARRY_5725 : STD_LOGIC; 
  signal U3_C1_4_CYMUXG2_5724 : STD_LOGIC; 
  signal U3_C1_4_CYMUXF2_5723 : STD_LOGIC; 
  signal U3_C1_4_CY0G_5722 : STD_LOGIC; 
  signal U3_C1_4_CYSELG_5714 : STD_LOGIC; 
  signal U3_C1_4_CLKINV_5712 : STD_LOGIC; 
  signal U3_C1_4_CEINV_5711 : STD_LOGIC; 
  signal U3_C1_6_DXMUX_5802 : STD_LOGIC; 
  signal U3_C1_6_XORF_5800 : STD_LOGIC; 
  signal U3_C1_6_CYINIT_5799 : STD_LOGIC; 
  signal U3_C1_6_CY0F_5798 : STD_LOGIC; 
  signal U3_C1_6_DYMUX_5785 : STD_LOGIC; 
  signal U3_C1_6_XORG_5783 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_6_Q : STD_LOGIC; 
  signal U3_C1_6_CYSELF_5781 : STD_LOGIC; 
  signal U3_C1_6_CYMUXFAST_5780 : STD_LOGIC; 
  signal U3_C1_6_CYAND_5779 : STD_LOGIC; 
  signal U3_C1_6_FASTCARRY_5778 : STD_LOGIC; 
  signal U3_C1_6_CYMUXG2_5777 : STD_LOGIC; 
  signal U3_C1_6_CYMUXF2_5776 : STD_LOGIC; 
  signal U3_C1_6_CY0G_5775 : STD_LOGIC; 
  signal U3_C1_6_CYSELG_5767 : STD_LOGIC; 
  signal U3_C1_6_CLKINV_5765 : STD_LOGIC; 
  signal U3_C1_6_CEINV_5764 : STD_LOGIC; 
  signal U3_C1_8_DXMUX_5847 : STD_LOGIC; 
  signal U3_C1_8_XORF_5845 : STD_LOGIC; 
  signal U3_C1_8_CYINIT_5844 : STD_LOGIC; 
  signal U3_C1_8_CY0F_5843 : STD_LOGIC; 
  signal U3_C1_8_CYSELF_5835 : STD_LOGIC; 
  signal U3_C1_8_DYMUX_5829 : STD_LOGIC; 
  signal U3_C1_8_XORG_5827 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_8_Q : STD_LOGIC; 
  signal U3_C1_8_CLKINV_5817 : STD_LOGIC; 
  signal U3_C1_8_CEINV_5816 : STD_LOGIC; 
  signal U3_C2_0_DXMUX_5897 : STD_LOGIC; 
  signal U3_C2_0_XORF_5895 : STD_LOGIC; 
  signal U3_C2_0_CYINIT_5894 : STD_LOGIC; 
  signal U3_C2_0_CY0F_5893 : STD_LOGIC; 
  signal U3_C2_0_CYSELF_5885 : STD_LOGIC; 
  signal U3_C2_0_DYMUX_5878 : STD_LOGIC; 
  signal U3_C2_0_XORG_5876 : STD_LOGIC; 
  signal U3_C2_0_CYMUXG_5875 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_0_Q : STD_LOGIC; 
  signal U3_C2_0_CY0G_5873 : STD_LOGIC; 
  signal U3_C2_0_CYSELG_5865 : STD_LOGIC; 
  signal U3_C2_0_CLKINV_5863 : STD_LOGIC; 
  signal U3_C2_0_CEINV_5862 : STD_LOGIC; 
  signal U3_C2_2_DXMUX_5950 : STD_LOGIC; 
  signal U3_C2_2_XORF_5948 : STD_LOGIC; 
  signal U3_C2_2_CYINIT_5947 : STD_LOGIC; 
  signal U3_C2_2_CY0F_5946 : STD_LOGIC; 
  signal U3_C2_2_DYMUX_5933 : STD_LOGIC; 
  signal U3_C2_2_XORG_5931 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_2_Q : STD_LOGIC; 
  signal U3_C2_2_CYSELF_5929 : STD_LOGIC; 
  signal U3_C2_2_CYMUXFAST_5928 : STD_LOGIC; 
  signal U3_C2_2_CYAND_5927 : STD_LOGIC; 
  signal U3_C2_2_FASTCARRY_5926 : STD_LOGIC; 
  signal U3_C2_2_CYMUXG2_5925 : STD_LOGIC; 
  signal U3_C2_2_CYMUXF2_5924 : STD_LOGIC; 
  signal U3_C2_2_CY0G_5923 : STD_LOGIC; 
  signal U3_C2_2_CYSELG_5915 : STD_LOGIC; 
  signal U3_C2_2_CLKINV_5913 : STD_LOGIC; 
  signal U3_C2_2_CEINV_5912 : STD_LOGIC; 
  signal U3_C2_4_DXMUX_6003 : STD_LOGIC; 
  signal U3_C2_4_XORF_6001 : STD_LOGIC; 
  signal U3_C2_4_CYINIT_6000 : STD_LOGIC; 
  signal U3_C2_4_CY0F_5999 : STD_LOGIC; 
  signal U3_C2_4_DYMUX_5986 : STD_LOGIC; 
  signal U3_C2_4_XORG_5984 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_4_Q : STD_LOGIC; 
  signal U3_C2_4_CYSELF_5982 : STD_LOGIC; 
  signal U3_C2_4_CYMUXFAST_5981 : STD_LOGIC; 
  signal U3_C2_4_CYAND_5980 : STD_LOGIC; 
  signal U3_C2_4_FASTCARRY_5979 : STD_LOGIC; 
  signal U3_C2_4_CYMUXG2_5978 : STD_LOGIC; 
  signal U3_C2_4_CYMUXF2_5977 : STD_LOGIC; 
  signal U3_C2_4_CY0G_5976 : STD_LOGIC; 
  signal U3_C2_4_CYSELG_5968 : STD_LOGIC; 
  signal U3_C2_4_CLKINV_5966 : STD_LOGIC; 
  signal U3_C2_4_CEINV_5965 : STD_LOGIC; 
  signal U3_C2_6_DXMUX_6056 : STD_LOGIC; 
  signal U3_C2_6_XORF_6054 : STD_LOGIC; 
  signal U3_C2_6_CYINIT_6053 : STD_LOGIC; 
  signal U3_C2_6_CY0F_6052 : STD_LOGIC; 
  signal U3_C2_6_DYMUX_6039 : STD_LOGIC; 
  signal U3_C2_6_XORG_6037 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_6_Q : STD_LOGIC; 
  signal U3_C2_6_CYSELF_6035 : STD_LOGIC; 
  signal U3_C2_6_CYMUXFAST_6034 : STD_LOGIC; 
  signal U3_C2_6_CYAND_6033 : STD_LOGIC; 
  signal U3_C2_6_FASTCARRY_6032 : STD_LOGIC; 
  signal U3_C2_6_CYMUXG2_6031 : STD_LOGIC; 
  signal U3_C2_6_CYMUXF2_6030 : STD_LOGIC; 
  signal U3_C2_6_CY0G_6029 : STD_LOGIC; 
  signal U3_C2_6_CYSELG_6021 : STD_LOGIC; 
  signal U3_C2_6_CLKINV_6019 : STD_LOGIC; 
  signal U3_C2_6_CEINV_6018 : STD_LOGIC; 
  signal U3_C2_8_DXMUX_6101 : STD_LOGIC; 
  signal U3_C2_8_XORF_6099 : STD_LOGIC; 
  signal U3_C2_8_CYINIT_6098 : STD_LOGIC; 
  signal U3_C2_8_CY0F_6097 : STD_LOGIC; 
  signal U3_C2_8_CYSELF_6089 : STD_LOGIC; 
  signal U3_C2_8_DYMUX_6083 : STD_LOGIC; 
  signal U3_C2_8_XORG_6081 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_8_Q : STD_LOGIC; 
  signal U3_C2_8_CLKINV_6071 : STD_LOGIC; 
  signal U3_C2_8_CEINV_6070 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6135 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6134 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6126 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6124 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6123 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6121 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6113 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6166 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6157 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6156 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6155 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6154 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6153 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6152 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6151 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6143 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6197 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6188 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6187 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6186 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6185 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6184 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6183 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6182 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6175 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6228 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6221 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6220 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6219 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6218 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6217 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6216 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6215 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6207 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CY0F_6259 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYSELF_6251 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXFAST_6250 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYAND_6249 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_FASTCARRY_6248 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXG2_6247 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXF2_6246 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CY0G_6245 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYSELG_6239 : STD_LOGIC; 
  signal U2_Result_0_XORF_6294 : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ONE_6293 : STD_LOGIC; 
  signal U2_Result_0_CYINIT_6292 : STD_LOGIC; 
  signal U2_Result_0_CYSELF_6283 : STD_LOGIC; 
  signal U2_Result_0_BXINV_6281 : STD_LOGIC; 
  signal U2_Result_0_XORG_6279 : STD_LOGIC; 
  signal U2_Result_0_CYMUXG_6278 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ZERO_6276 : STD_LOGIC; 
  signal U2_Result_0_CYSELG_6267 : STD_LOGIC; 
  signal U2_Result_0_G : STD_LOGIC; 
  signal U2_Result_2_XORF_6332 : STD_LOGIC; 
  signal U2_Result_2_CYINIT_6331 : STD_LOGIC; 
  signal U2_Result_2_F : STD_LOGIC; 
  signal U2_Result_2_XORG_6320 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_CYSELF_6318 : STD_LOGIC; 
  signal U2_Result_2_CYMUXFAST_6317 : STD_LOGIC; 
  signal U2_Result_2_CYAND_6316 : STD_LOGIC; 
  signal U2_Result_2_FASTCARRY_6315 : STD_LOGIC; 
  signal U2_Result_2_CYMUXG2_6314 : STD_LOGIC; 
  signal U2_Result_2_CYMUXF2_6313 : STD_LOGIC; 
  signal U2_Result_2_LOGIC_ZERO_6312 : STD_LOGIC; 
  signal U2_Result_2_CYSELG_6303 : STD_LOGIC; 
  signal U2_Result_2_G : STD_LOGIC; 
  signal U2_Result_4_XORF_6370 : STD_LOGIC; 
  signal U2_Result_4_CYINIT_6369 : STD_LOGIC; 
  signal U2_Result_4_F : STD_LOGIC; 
  signal U2_Result_4_XORG_6358 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_CYSELF_6356 : STD_LOGIC; 
  signal U2_Result_4_CYMUXFAST_6355 : STD_LOGIC; 
  signal U2_Result_4_CYAND_6354 : STD_LOGIC; 
  signal U2_Result_4_FASTCARRY_6353 : STD_LOGIC; 
  signal U2_Result_4_CYMUXG2_6352 : STD_LOGIC; 
  signal U2_Result_4_CYMUXF2_6351 : STD_LOGIC; 
  signal U2_Result_4_LOGIC_ZERO_6350 : STD_LOGIC; 
  signal U2_Result_4_CYSELG_6341 : STD_LOGIC; 
  signal U2_Result_4_G : STD_LOGIC; 
  signal U2_Result_6_XORF_6408 : STD_LOGIC; 
  signal U2_Result_6_CYINIT_6407 : STD_LOGIC; 
  signal U2_Result_6_F : STD_LOGIC; 
  signal U2_Result_6_XORG_6396 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_CYSELF_6394 : STD_LOGIC; 
  signal U2_Result_6_CYMUXFAST_6393 : STD_LOGIC; 
  signal U2_Result_6_CYAND_6392 : STD_LOGIC; 
  signal U2_Result_6_FASTCARRY_6391 : STD_LOGIC; 
  signal U2_Result_6_CYMUXG2_6390 : STD_LOGIC; 
  signal U2_Result_6_CYMUXF2_6389 : STD_LOGIC; 
  signal U2_Result_6_LOGIC_ZERO_6388 : STD_LOGIC; 
  signal U2_Result_6_CYSELG_6379 : STD_LOGIC; 
  signal U2_Result_6_G : STD_LOGIC; 
  signal U2_Result_8_XORF_6439 : STD_LOGIC; 
  signal U2_Result_8_LOGIC_ZERO_6438 : STD_LOGIC; 
  signal U2_Result_8_CYINIT_6437 : STD_LOGIC; 
  signal U2_Result_8_CYSELF_6428 : STD_LOGIC; 
  signal U2_Result_8_F : STD_LOGIC; 
  signal U2_Result_8_XORG_6425 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_Q : STD_LOGIC; 
  signal U2_vcs_9_rt_6422 : STD_LOGIC; 
  signal U3_xpix1_0_XORF_6475 : STD_LOGIC; 
  signal U3_xpix1_0_CYINIT_6474 : STD_LOGIC; 
  signal U3_xpix1_0_CY0F_6473 : STD_LOGIC; 
  signal U3_xpix1_0_CYSELF_6465 : STD_LOGIC; 
  signal U3_xpix1_0_BXINV_6463 : STD_LOGIC; 
  signal U3_xpix1_0_XORG_6461 : STD_LOGIC; 
  signal U3_xpix1_0_CYMUXG_6460 : STD_LOGIC; 
  signal U3_xpix1_0_CY0G_6458 : STD_LOGIC; 
  signal U3_xpix1_0_CYSELG_6450 : STD_LOGIC; 
  signal U3_xpix1_2_XORF_6514 : STD_LOGIC; 
  signal U3_xpix1_2_CYINIT_6513 : STD_LOGIC; 
  signal U3_xpix1_2_CY0F_6512 : STD_LOGIC; 
  signal U3_xpix1_2_XORG_6502 : STD_LOGIC; 
  signal U3_xpix1_2_CYSELF_6500 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXFAST_6499 : STD_LOGIC; 
  signal U3_xpix1_2_CYAND_6498 : STD_LOGIC; 
  signal U3_xpix1_2_FASTCARRY_6497 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXG2_6496 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXF2_6495 : STD_LOGIC; 
  signal U3_xpix1_2_CY0G_6494 : STD_LOGIC; 
  signal U3_xpix1_2_CYSELG_6486 : STD_LOGIC; 
  signal U3_xpix1_4_XORF_6541 : STD_LOGIC; 
  signal U3_xpix1_4_CYINIT_6540 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0 : STD_LOGIC; 
  signal x7_clkdiv_0_DXMUX_6590 : STD_LOGIC; 
  signal x7_clkdiv_0_XORF_6588 : STD_LOGIC; 
  signal x7_clkdiv_0_LOGIC_ONE_6587 : STD_LOGIC; 
  signal x7_clkdiv_0_CYINIT_6586 : STD_LOGIC; 
  signal x7_clkdiv_0_CYSELF_6577 : STD_LOGIC; 
  signal x7_clkdiv_0_BXINV_6575 : STD_LOGIC; 
  signal x7_clkdiv_0_DYMUX_6568 : STD_LOGIC; 
  signal x7_clkdiv_0_XORG_6566 : STD_LOGIC; 
  signal x7_clkdiv_0_CYMUXG_6565 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_0_Q : STD_LOGIC; 
  signal x7_clkdiv_0_LOGIC_ZERO_6563 : STD_LOGIC; 
  signal x7_clkdiv_0_CYSELG_6554 : STD_LOGIC; 
  signal x7_clkdiv_0_G : STD_LOGIC; 
  signal x7_clkdiv_0_SRINV_6552 : STD_LOGIC; 
  signal x7_clkdiv_0_CLKINV_6551 : STD_LOGIC; 
  signal x7_clkdiv_2_DXMUX_6646 : STD_LOGIC; 
  signal x7_clkdiv_2_XORF_6644 : STD_LOGIC; 
  signal x7_clkdiv_2_CYINIT_6643 : STD_LOGIC; 
  signal x7_clkdiv_2_F : STD_LOGIC; 
  signal x7_clkdiv_2_DYMUX_6627 : STD_LOGIC; 
  signal x7_clkdiv_2_XORG_6625 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_Q : STD_LOGIC; 
  signal x7_clkdiv_2_CYSELF_6623 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXFAST_6622 : STD_LOGIC; 
  signal x7_clkdiv_2_CYAND_6621 : STD_LOGIC; 
  signal x7_clkdiv_2_FASTCARRY_6620 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXG2_6619 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXF2_6618 : STD_LOGIC; 
  signal x7_clkdiv_2_LOGIC_ZERO_6617 : STD_LOGIC; 
  signal x7_clkdiv_2_CYSELG_6608 : STD_LOGIC; 
  signal x7_clkdiv_2_G : STD_LOGIC; 
  signal x7_clkdiv_2_SRINV_6606 : STD_LOGIC; 
  signal x7_clkdiv_2_CLKINV_6605 : STD_LOGIC; 
  signal x7_clkdiv_4_DXMUX_6702 : STD_LOGIC; 
  signal x7_clkdiv_4_XORF_6700 : STD_LOGIC; 
  signal x7_clkdiv_4_CYINIT_6699 : STD_LOGIC; 
  signal x7_clkdiv_4_F : STD_LOGIC; 
  signal x7_clkdiv_4_DYMUX_6683 : STD_LOGIC; 
  signal x7_clkdiv_4_XORG_6681 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_Q : STD_LOGIC; 
  signal x7_clkdiv_4_CYSELF_6679 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXFAST_6678 : STD_LOGIC; 
  signal x7_clkdiv_4_CYAND_6677 : STD_LOGIC; 
  signal x7_clkdiv_4_FASTCARRY_6676 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXG2_6675 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXF2_6674 : STD_LOGIC; 
  signal x7_clkdiv_4_LOGIC_ZERO_6673 : STD_LOGIC; 
  signal x7_clkdiv_4_CYSELG_6664 : STD_LOGIC; 
  signal x7_clkdiv_4_G : STD_LOGIC; 
  signal x7_clkdiv_4_SRINV_6662 : STD_LOGIC; 
  signal x7_clkdiv_4_CLKINV_6661 : STD_LOGIC; 
  signal x7_clkdiv_6_DXMUX_6758 : STD_LOGIC; 
  signal x7_clkdiv_6_XORF_6756 : STD_LOGIC; 
  signal x7_clkdiv_6_CYINIT_6755 : STD_LOGIC; 
  signal x7_clkdiv_6_F : STD_LOGIC; 
  signal x7_clkdiv_6_DYMUX_6739 : STD_LOGIC; 
  signal x7_clkdiv_6_XORG_6737 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_Q : STD_LOGIC; 
  signal x7_clkdiv_6_CYSELF_6735 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXFAST_6734 : STD_LOGIC; 
  signal x7_clkdiv_6_CYAND_6733 : STD_LOGIC; 
  signal x7_clkdiv_6_FASTCARRY_6732 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXG2_6731 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXF2_6730 : STD_LOGIC; 
  signal x7_clkdiv_6_LOGIC_ZERO_6729 : STD_LOGIC; 
  signal x7_clkdiv_6_CYSELG_6720 : STD_LOGIC; 
  signal x7_clkdiv_6_G : STD_LOGIC; 
  signal x7_clkdiv_6_SRINV_6718 : STD_LOGIC; 
  signal x7_clkdiv_6_CLKINV_6717 : STD_LOGIC; 
  signal x7_clkdiv_8_DXMUX_6814 : STD_LOGIC; 
  signal x7_clkdiv_8_XORF_6812 : STD_LOGIC; 
  signal x7_clkdiv_8_CYINIT_6811 : STD_LOGIC; 
  signal x7_clkdiv_8_F : STD_LOGIC; 
  signal x7_clkdiv_8_DYMUX_6795 : STD_LOGIC; 
  signal x7_clkdiv_8_XORG_6793 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_Q : STD_LOGIC; 
  signal x7_clkdiv_8_CYSELF_6791 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXFAST_6790 : STD_LOGIC; 
  signal x7_clkdiv_8_CYAND_6789 : STD_LOGIC; 
  signal x7_clkdiv_8_FASTCARRY_6788 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXG2_6787 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXF2_6786 : STD_LOGIC; 
  signal x7_clkdiv_8_LOGIC_ZERO_6785 : STD_LOGIC; 
  signal x7_clkdiv_8_CYSELG_6776 : STD_LOGIC; 
  signal x7_clkdiv_8_G : STD_LOGIC; 
  signal x7_clkdiv_8_SRINV_6774 : STD_LOGIC; 
  signal x7_clkdiv_8_CLKINV_6773 : STD_LOGIC; 
  signal x7_clkdiv_10_DXMUX_6870 : STD_LOGIC; 
  signal x7_clkdiv_10_XORF_6868 : STD_LOGIC; 
  signal x7_clkdiv_10_CYINIT_6867 : STD_LOGIC; 
  signal x7_clkdiv_10_F : STD_LOGIC; 
  signal x7_clkdiv_10_DYMUX_6851 : STD_LOGIC; 
  signal x7_clkdiv_10_XORG_6849 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_Q : STD_LOGIC; 
  signal x7_clkdiv_10_CYSELF_6847 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXFAST_6846 : STD_LOGIC; 
  signal x7_clkdiv_10_CYAND_6845 : STD_LOGIC; 
  signal x7_clkdiv_10_FASTCARRY_6844 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXG2_6843 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXF2_6842 : STD_LOGIC; 
  signal x7_clkdiv_10_LOGIC_ZERO_6841 : STD_LOGIC; 
  signal x7_clkdiv_10_CYSELG_6832 : STD_LOGIC; 
  signal x7_clkdiv_10_G : STD_LOGIC; 
  signal x7_clkdiv_10_SRINV_6830 : STD_LOGIC; 
  signal x7_clkdiv_10_CLKINV_6829 : STD_LOGIC; 
  signal x7_clkdiv_12_DXMUX_6926 : STD_LOGIC; 
  signal x7_clkdiv_12_XORF_6924 : STD_LOGIC; 
  signal x7_clkdiv_12_CYINIT_6923 : STD_LOGIC; 
  signal x7_clkdiv_12_F : STD_LOGIC; 
  signal x7_clkdiv_12_DYMUX_6907 : STD_LOGIC; 
  signal x7_clkdiv_12_XORG_6905 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_Q : STD_LOGIC; 
  signal x7_clkdiv_12_CYSELF_6903 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXFAST_6902 : STD_LOGIC; 
  signal x7_clkdiv_12_CYAND_6901 : STD_LOGIC; 
  signal x7_clkdiv_12_FASTCARRY_6900 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXG2_6899 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXF2_6898 : STD_LOGIC; 
  signal x7_clkdiv_12_LOGIC_ZERO_6897 : STD_LOGIC; 
  signal x7_clkdiv_12_CYSELG_6888 : STD_LOGIC; 
  signal x7_clkdiv_12_G : STD_LOGIC; 
  signal x7_clkdiv_12_SRINV_6886 : STD_LOGIC; 
  signal x7_clkdiv_12_CLKINV_6885 : STD_LOGIC; 
  signal x7_clkdiv_14_DXMUX_6982 : STD_LOGIC; 
  signal x7_clkdiv_14_XORF_6980 : STD_LOGIC; 
  signal x7_clkdiv_14_CYINIT_6979 : STD_LOGIC; 
  signal x7_clkdiv_14_F : STD_LOGIC; 
  signal x7_clkdiv_14_DYMUX_6963 : STD_LOGIC; 
  signal x7_clkdiv_14_XORG_6961 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_Q : STD_LOGIC; 
  signal x7_clkdiv_14_CYSELF_6959 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXFAST_6958 : STD_LOGIC; 
  signal x7_clkdiv_14_CYAND_6957 : STD_LOGIC; 
  signal x7_clkdiv_14_FASTCARRY_6956 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXG2_6955 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXF2_6954 : STD_LOGIC; 
  signal x7_clkdiv_14_LOGIC_ZERO_6953 : STD_LOGIC; 
  signal x7_clkdiv_14_CYSELG_6944 : STD_LOGIC; 
  signal x7_clkdiv_14_G : STD_LOGIC; 
  signal x7_clkdiv_14_SRINV_6942 : STD_LOGIC; 
  signal x7_clkdiv_14_CLKINV_6941 : STD_LOGIC; 
  signal x7_clkdiv_16_DXMUX_7038 : STD_LOGIC; 
  signal x7_clkdiv_16_XORF_7036 : STD_LOGIC; 
  signal x7_clkdiv_16_CYINIT_7035 : STD_LOGIC; 
  signal x7_clkdiv_16_F : STD_LOGIC; 
  signal x7_clkdiv_16_DYMUX_7019 : STD_LOGIC; 
  signal x7_clkdiv_16_XORG_7017 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_Q : STD_LOGIC; 
  signal x7_clkdiv_16_CYSELF_7015 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXFAST_7014 : STD_LOGIC; 
  signal x7_clkdiv_16_CYAND_7013 : STD_LOGIC; 
  signal x7_clkdiv_16_FASTCARRY_7012 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXG2_7011 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXF2_7010 : STD_LOGIC; 
  signal x7_clkdiv_16_LOGIC_ZERO_7009 : STD_LOGIC; 
  signal x7_clkdiv_16_CYSELG_7000 : STD_LOGIC; 
  signal x7_clkdiv_16_G : STD_LOGIC; 
  signal x7_clkdiv_16_SRINV_6998 : STD_LOGIC; 
  signal x7_clkdiv_16_CLKINV_6997 : STD_LOGIC; 
  signal x7_clkdiv_18_DXMUX_7087 : STD_LOGIC; 
  signal x7_clkdiv_18_XORF_7085 : STD_LOGIC; 
  signal x7_clkdiv_18_LOGIC_ZERO_7084 : STD_LOGIC; 
  signal x7_clkdiv_18_CYINIT_7083 : STD_LOGIC; 
  signal x7_clkdiv_18_CYSELF_7074 : STD_LOGIC; 
  signal x7_clkdiv_18_F : STD_LOGIC; 
  signal x7_clkdiv_18_DYMUX_7066 : STD_LOGIC; 
  signal x7_clkdiv_18_XORG_7064 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_Q : STD_LOGIC; 
  signal x7_clkdiv_19_rt_7061 : STD_LOGIC; 
  signal x7_clkdiv_18_SRINV_7053 : STD_LOGIC; 
  signal x7_clkdiv_18_CLKINV_7052 : STD_LOGIC; 
  signal U3_xpix2_0_XORF_7128 : STD_LOGIC; 
  signal U3_xpix2_0_CYINIT_7127 : STD_LOGIC; 
  signal U3_xpix2_0_CY0F_7126 : STD_LOGIC; 
  signal U3_xpix2_0_CYSELF_7118 : STD_LOGIC; 
  signal U3_xpix2_0_BXINV_7116 : STD_LOGIC; 
  signal U3_xpix2_0_XORG_7114 : STD_LOGIC; 
  signal U3_xpix2_0_CYMUXG_7113 : STD_LOGIC; 
  signal U3_xpix2_0_CY0G_7111 : STD_LOGIC; 
  signal U3_xpix2_0_CYSELG_7103 : STD_LOGIC; 
  signal U3_xpix2_2_XORF_7167 : STD_LOGIC; 
  signal U3_xpix2_2_CYINIT_7166 : STD_LOGIC; 
  signal U3_xpix2_2_CY0F_7165 : STD_LOGIC; 
  signal U3_xpix2_2_XORG_7155 : STD_LOGIC; 
  signal U3_xpix2_2_CYSELF_7153 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXFAST_7152 : STD_LOGIC; 
  signal U3_xpix2_2_CYAND_7151 : STD_LOGIC; 
  signal U3_xpix2_2_FASTCARRY_7150 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXG2_7149 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXF2_7148 : STD_LOGIC; 
  signal U3_xpix2_2_CY0G_7147 : STD_LOGIC; 
  signal U3_xpix2_2_CYSELG_7139 : STD_LOGIC; 
  signal U3_xpix2_4_XORF_7194 : STD_LOGIC; 
  signal U3_xpix2_4_CYINIT_7193 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7225 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7224 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7216 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7214 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7213 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7211 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7203 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_7256 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7247 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7246 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7245 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7244 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7243 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7242 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7241 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7233 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_7287 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_7279 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_7278 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_7277 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_7276 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_7275 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_7274 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_7273 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_7267 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_7320 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_7312 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_7311 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_7310 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_7309 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_7308 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_7307 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_7306 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_7298 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_7353 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_7346 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_7345 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_7344 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_7343 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_7342 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_7341 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_7340 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_7334 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_7383 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_7382 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_7374 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_7372 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_7371 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_7369 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_7361 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_7414 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_7405 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_7404 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_7403 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_7402 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_7401 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_7400 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_7399 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_7391 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_7445 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_7436 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_7435 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_7434 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_7433 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_7432 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_7431 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_7430 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_7423 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_7476 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_7469 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_7468 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_7467 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_7466 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_7465 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_7464 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_7463 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_7457 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_7507 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_7498 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_7497 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_7496 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_7495 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_7494 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_7493 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_7492 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_7484 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_7537 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_7536 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_7528 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_7526 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_7525 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_7523 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_7515 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_7568 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_7559 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_7558 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_7557 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_7556 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_7555 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_7554 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_7553 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_7545 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_7599 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_7590 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_7589 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_7588 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_7587 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_7586 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_7585 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_7584 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_7577 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_7630 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_7623 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_7622 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_7621 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_7620 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_7619 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_7618 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_7617 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_7611 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_7661 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_7652 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_7651 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_7650 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_7649 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_7648 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_7647 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_7646 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_7638 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORF_7696 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ONE_7695 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYINIT_7694 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELF_7685 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_BXINV_7683 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORG_7681 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYMUXG_7680 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_0_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ZERO_7678 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELG_7669 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORF_7734 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYINIT_7733 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORG_7722 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELF_7720 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXFAST_7719 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYAND_7718 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_FASTCARRY_7717 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXG2_7716 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXF2_7715 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELG_7705 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORF_7772 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYINIT_7771 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORG_7760 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELF_7758 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXFAST_7757 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYAND_7756 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_FASTCARRY_7755 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXG2_7754 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXF2_7753 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELG_7743 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORF_7810 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYINIT_7809 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORG_7798 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELF_7796 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXFAST_7795 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYAND_7794 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_FASTCARRY_7793 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXG2_7792 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXF2_7791 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELG_7781 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORF_7841 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_LOGIC_ZERO_7840 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYINIT_7839 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYSELF_7830 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORG_7827 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_Q : STD_LOGIC; 
  signal nes_scalar_reg_9_rt_7824 : STD_LOGIC; 
  signal U2_Result_0_1_XORF_7877 : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ONE_7876 : STD_LOGIC; 
  signal U2_Result_0_1_CYINIT_7875 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELF_7866 : STD_LOGIC; 
  signal U2_Result_0_1_BXINV_7864 : STD_LOGIC; 
  signal U2_Result_0_1_XORG_7862 : STD_LOGIC; 
  signal U2_Result_0_1_CYMUXG_7861 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ZERO_7859 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELG_7850 : STD_LOGIC; 
  signal U2_Result_0_1_G : STD_LOGIC; 
  signal U2_Result_2_1_XORF_7915 : STD_LOGIC; 
  signal U2_Result_2_1_CYINIT_7914 : STD_LOGIC; 
  signal U2_Result_2_1_F : STD_LOGIC; 
  signal U2_Result_2_1_XORG_7903 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_1_CYSELF_7901 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXFAST_7900 : STD_LOGIC; 
  signal U2_Result_2_1_CYAND_7899 : STD_LOGIC; 
  signal U2_Result_2_1_FASTCARRY_7898 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXG2_7897 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXF2_7896 : STD_LOGIC; 
  signal U2_Result_2_1_LOGIC_ZERO_7895 : STD_LOGIC; 
  signal U2_Result_2_1_CYSELG_7886 : STD_LOGIC; 
  signal U2_Result_2_1_G : STD_LOGIC; 
  signal U2_Result_4_1_XORF_7953 : STD_LOGIC; 
  signal U2_Result_4_1_CYINIT_7952 : STD_LOGIC; 
  signal U2_Result_4_1_F : STD_LOGIC; 
  signal U2_Result_4_1_XORG_7941 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_1_CYSELF_7939 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXFAST_7938 : STD_LOGIC; 
  signal U2_Result_4_1_CYAND_7937 : STD_LOGIC; 
  signal U2_Result_4_1_FASTCARRY_7936 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXG2_7935 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXF2_7934 : STD_LOGIC; 
  signal U2_Result_4_1_LOGIC_ZERO_7933 : STD_LOGIC; 
  signal U2_Result_4_1_CYSELG_7924 : STD_LOGIC; 
  signal U2_Result_4_1_G : STD_LOGIC; 
  signal U2_Result_6_1_XORF_7991 : STD_LOGIC; 
  signal U2_Result_6_1_CYINIT_7990 : STD_LOGIC; 
  signal U2_Result_6_1_F : STD_LOGIC; 
  signal U2_Result_6_1_XORG_7979 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_1_CYSELF_7977 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXFAST_7976 : STD_LOGIC; 
  signal U2_Result_6_1_CYAND_7975 : STD_LOGIC; 
  signal U2_Result_6_1_FASTCARRY_7974 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXG2_7973 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXF2_7972 : STD_LOGIC; 
  signal U2_Result_6_1_LOGIC_ZERO_7971 : STD_LOGIC; 
  signal U2_Result_6_1_CYSELG_7962 : STD_LOGIC; 
  signal U2_Result_6_1_G : STD_LOGIC; 
  signal U2_Result_8_1_XORF_8022 : STD_LOGIC; 
  signal U2_Result_8_1_LOGIC_ZERO_8021 : STD_LOGIC; 
  signal U2_Result_8_1_CYINIT_8020 : STD_LOGIC; 
  signal U2_Result_8_1_CYSELF_8011 : STD_LOGIC; 
  signal U2_Result_8_1_F : STD_LOGIC; 
  signal U2_Result_8_1_XORG_8008 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_Q : STD_LOGIC; 
  signal U2_hcs_9_rt_8005 : STD_LOGIC; 
  signal nes_Result_0_XORF_8058 : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ONE_8057 : STD_LOGIC; 
  signal nes_Result_0_CYINIT_8056 : STD_LOGIC; 
  signal nes_Result_0_CYSELF_8047 : STD_LOGIC; 
  signal nes_Result_0_BXINV_8045 : STD_LOGIC; 
  signal nes_Result_0_XORG_8043 : STD_LOGIC; 
  signal nes_Result_0_CYMUXG_8042 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_0_Q : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ZERO_8040 : STD_LOGIC; 
  signal nes_Result_0_CYSELG_8031 : STD_LOGIC; 
  signal nes_Result_0_G : STD_LOGIC; 
  signal nes_Result_2_XORF_8096 : STD_LOGIC; 
  signal nes_Result_2_CYINIT_8095 : STD_LOGIC; 
  signal nes_Result_2_F : STD_LOGIC; 
  signal nes_Result_2_XORG_8084 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_Q : STD_LOGIC; 
  signal nes_Result_2_CYSELF_8082 : STD_LOGIC; 
  signal nes_Result_2_CYMUXFAST_8081 : STD_LOGIC; 
  signal nes_Result_2_CYAND_8080 : STD_LOGIC; 
  signal nes_Result_2_FASTCARRY_8079 : STD_LOGIC; 
  signal nes_Result_2_CYMUXG2_8078 : STD_LOGIC; 
  signal nes_Result_2_CYMUXF2_8077 : STD_LOGIC; 
  signal nes_Result_2_LOGIC_ZERO_8076 : STD_LOGIC; 
  signal nes_Result_2_CYSELG_8067 : STD_LOGIC; 
  signal nes_Result_2_G : STD_LOGIC; 
  signal nes_Result_4_XORF_8134 : STD_LOGIC; 
  signal nes_Result_4_CYINIT_8133 : STD_LOGIC; 
  signal nes_Result_4_F : STD_LOGIC; 
  signal nes_Result_4_XORG_8122 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_Q : STD_LOGIC; 
  signal nes_Result_4_CYSELF_8120 : STD_LOGIC; 
  signal nes_Result_4_CYMUXFAST_8119 : STD_LOGIC; 
  signal nes_Result_4_CYAND_8118 : STD_LOGIC; 
  signal nes_Result_4_FASTCARRY_8117 : STD_LOGIC; 
  signal nes_Result_4_CYMUXG2_8116 : STD_LOGIC; 
  signal nes_Result_4_CYMUXF2_8115 : STD_LOGIC; 
  signal nes_Result_4_LOGIC_ZERO_8114 : STD_LOGIC; 
  signal nes_Result_4_CYSELG_8105 : STD_LOGIC; 
  signal nes_Result_4_G : STD_LOGIC; 
  signal nes_Result_6_XORF_8172 : STD_LOGIC; 
  signal nes_Result_6_CYINIT_8171 : STD_LOGIC; 
  signal nes_Result_6_F : STD_LOGIC; 
  signal nes_Result_6_XORG_8160 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_Q : STD_LOGIC; 
  signal nes_Result_6_CYSELF_8158 : STD_LOGIC; 
  signal nes_Result_6_CYMUXFAST_8157 : STD_LOGIC; 
  signal nes_Result_6_CYAND_8156 : STD_LOGIC; 
  signal nes_Result_6_FASTCARRY_8155 : STD_LOGIC; 
  signal nes_Result_6_CYMUXG2_8154 : STD_LOGIC; 
  signal nes_Result_6_CYMUXF2_8153 : STD_LOGIC; 
  signal nes_Result_6_LOGIC_ZERO_8152 : STD_LOGIC; 
  signal nes_Result_6_CYSELG_8143 : STD_LOGIC; 
  signal nes_Result_6_G : STD_LOGIC; 
  signal nes_Result_8_XORF_8203 : STD_LOGIC; 
  signal nes_Result_8_LOGIC_ZERO_8202 : STD_LOGIC; 
  signal nes_Result_8_CYINIT_8201 : STD_LOGIC; 
  signal nes_Result_8_CYSELF_8192 : STD_LOGIC; 
  signal nes_Result_8_F : STD_LOGIC; 
  signal nes_Result_8_XORG_8189 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_Q : STD_LOGIC; 
  signal nes_counter_reg_9_rt_8186 : STD_LOGIC; 
  signal U3_Q_0_DXMUX_8252 : STD_LOGIC; 
  signal U3_Q_0_XORF_8250 : STD_LOGIC; 
  signal U3_Q_0_LOGIC_ONE_8249 : STD_LOGIC; 
  signal U3_Q_0_CYINIT_8248 : STD_LOGIC; 
  signal U3_Q_0_CYSELF_8239 : STD_LOGIC; 
  signal U3_Q_0_BXINV_8237 : STD_LOGIC; 
  signal U3_Q_0_DYMUX_8230 : STD_LOGIC; 
  signal U3_Q_0_XORG_8228 : STD_LOGIC; 
  signal U3_Q_0_CYMUXG_8227 : STD_LOGIC; 
  signal U3_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal U3_Q_0_LOGIC_ZERO_8225 : STD_LOGIC; 
  signal U3_Q_0_CYSELG_8216 : STD_LOGIC; 
  signal U3_Q_0_G : STD_LOGIC; 
  signal U3_Q_0_SRINV_8214 : STD_LOGIC; 
  signal U3_Q_0_CLKINV_8213 : STD_LOGIC; 
  signal U3_Q_2_DXMUX_8308 : STD_LOGIC; 
  signal U3_Q_2_XORF_8306 : STD_LOGIC; 
  signal U3_Q_2_CYINIT_8305 : STD_LOGIC; 
  signal U3_Q_2_F : STD_LOGIC; 
  signal U3_Q_2_DYMUX_8289 : STD_LOGIC; 
  signal U3_Q_2_XORG_8287 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal U3_Q_2_CYSELF_8285 : STD_LOGIC; 
  signal U3_Q_2_CYMUXFAST_8284 : STD_LOGIC; 
  signal U3_Q_2_CYAND_8283 : STD_LOGIC; 
  signal U3_Q_2_FASTCARRY_8282 : STD_LOGIC; 
  signal U3_Q_2_CYMUXG2_8281 : STD_LOGIC; 
  signal U3_Q_2_CYMUXF2_8280 : STD_LOGIC; 
  signal U3_Q_2_LOGIC_ZERO_8279 : STD_LOGIC; 
  signal U3_Q_2_CYSELG_8270 : STD_LOGIC; 
  signal U3_Q_2_G : STD_LOGIC; 
  signal U3_Q_2_SRINV_8268 : STD_LOGIC; 
  signal U3_Q_2_CLKINV_8267 : STD_LOGIC; 
  signal U3_Q_4_DXMUX_8364 : STD_LOGIC; 
  signal U3_Q_4_XORF_8362 : STD_LOGIC; 
  signal U3_Q_4_CYINIT_8361 : STD_LOGIC; 
  signal U3_Q_4_F : STD_LOGIC; 
  signal U3_Q_4_DYMUX_8345 : STD_LOGIC; 
  signal U3_Q_4_XORG_8343 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_Q : STD_LOGIC; 
  signal U3_Q_4_CYSELF_8341 : STD_LOGIC; 
  signal U3_Q_4_CYMUXFAST_8340 : STD_LOGIC; 
  signal U3_Q_4_CYAND_8339 : STD_LOGIC; 
  signal U3_Q_4_FASTCARRY_8338 : STD_LOGIC; 
  signal U3_Q_4_CYMUXG2_8337 : STD_LOGIC; 
  signal U3_Q_4_CYMUXF2_8336 : STD_LOGIC; 
  signal U3_Q_4_LOGIC_ZERO_8335 : STD_LOGIC; 
  signal U3_Q_4_CYSELG_8326 : STD_LOGIC; 
  signal U3_Q_4_G : STD_LOGIC; 
  signal U3_Q_4_SRINV_8324 : STD_LOGIC; 
  signal U3_Q_4_CLKINV_8323 : STD_LOGIC; 
  signal U3_Q_6_FFX_RST : STD_LOGIC; 
  signal U3_Q_6_DXMUX_8420 : STD_LOGIC; 
  signal U3_Q_6_XORF_8418 : STD_LOGIC; 
  signal U3_Q_6_CYINIT_8417 : STD_LOGIC; 
  signal U3_Q_6_F : STD_LOGIC; 
  signal U3_Q_6_DYMUX_8401 : STD_LOGIC; 
  signal U3_Q_6_XORG_8399 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_Q : STD_LOGIC; 
  signal U3_Q_6_CYSELF_8397 : STD_LOGIC; 
  signal U3_Q_6_CYMUXFAST_8396 : STD_LOGIC; 
  signal U3_Q_6_CYAND_8395 : STD_LOGIC; 
  signal U3_Q_6_FASTCARRY_8394 : STD_LOGIC; 
  signal U3_Q_6_CYMUXG2_8393 : STD_LOGIC; 
  signal U3_Q_6_CYMUXF2_8392 : STD_LOGIC; 
  signal U3_Q_6_LOGIC_ZERO_8391 : STD_LOGIC; 
  signal U3_Q_6_CYSELG_8382 : STD_LOGIC; 
  signal U3_Q_6_G : STD_LOGIC; 
  signal U3_Q_6_SRINV_8380 : STD_LOGIC; 
  signal U3_Q_6_CLKINV_8379 : STD_LOGIC; 
  signal U3_Q_8_FFY_RST : STD_LOGIC; 
  signal U3_Q_8_FFX_RST : STD_LOGIC; 
  signal U3_Q_8_DXMUX_8476 : STD_LOGIC; 
  signal U3_Q_8_XORF_8474 : STD_LOGIC; 
  signal U3_Q_8_CYINIT_8473 : STD_LOGIC; 
  signal U3_Q_8_F : STD_LOGIC; 
  signal U3_Q_8_DYMUX_8457 : STD_LOGIC; 
  signal U3_Q_8_XORG_8455 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_Q : STD_LOGIC; 
  signal U3_Q_8_CYSELF_8453 : STD_LOGIC; 
  signal U3_Q_8_CYMUXFAST_8452 : STD_LOGIC; 
  signal U3_Q_8_CYAND_8451 : STD_LOGIC; 
  signal U3_Q_8_FASTCARRY_8450 : STD_LOGIC; 
  signal U3_Q_8_CYMUXG2_8449 : STD_LOGIC; 
  signal U3_Q_8_CYMUXF2_8448 : STD_LOGIC; 
  signal U3_Q_8_LOGIC_ZERO_8447 : STD_LOGIC; 
  signal U3_Q_8_CYSELG_8438 : STD_LOGIC; 
  signal U3_Q_8_G : STD_LOGIC; 
  signal U3_Q_8_SRINV_8436 : STD_LOGIC; 
  signal U3_Q_8_CLKINV_8435 : STD_LOGIC; 
  signal U3_Q_10_FFY_RST : STD_LOGIC; 
  signal U3_Q_10_FFX_RST : STD_LOGIC; 
  signal U3_Q_10_DXMUX_8532 : STD_LOGIC; 
  signal U3_Q_10_XORF_8530 : STD_LOGIC; 
  signal U3_Q_10_CYINIT_8529 : STD_LOGIC; 
  signal U3_Q_10_F : STD_LOGIC; 
  signal U3_Q_10_DYMUX_8513 : STD_LOGIC; 
  signal U3_Q_10_XORG_8511 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_Q : STD_LOGIC; 
  signal U3_Q_10_CYSELF_8509 : STD_LOGIC; 
  signal U3_Q_10_CYMUXFAST_8508 : STD_LOGIC; 
  signal U3_Q_10_CYAND_8507 : STD_LOGIC; 
  signal U3_Q_10_FASTCARRY_8506 : STD_LOGIC; 
  signal U3_Q_10_CYMUXG2_8505 : STD_LOGIC; 
  signal U3_Q_10_CYMUXF2_8504 : STD_LOGIC; 
  signal U3_Q_10_LOGIC_ZERO_8503 : STD_LOGIC; 
  signal U3_Q_10_CYSELG_8494 : STD_LOGIC; 
  signal U3_Q_10_G : STD_LOGIC; 
  signal U3_Q_10_SRINV_8492 : STD_LOGIC; 
  signal U3_Q_10_CLKINV_8491 : STD_LOGIC; 
  signal U3_Q_12_FFY_RST : STD_LOGIC; 
  signal U3_Q_12_FFX_RST : STD_LOGIC; 
  signal U3_Q_12_DXMUX_8588 : STD_LOGIC; 
  signal U3_Q_12_XORF_8586 : STD_LOGIC; 
  signal U3_Q_12_CYINIT_8585 : STD_LOGIC; 
  signal U3_Q_12_F : STD_LOGIC; 
  signal U3_Q_12_DYMUX_8569 : STD_LOGIC; 
  signal U3_Q_12_XORG_8567 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_Q : STD_LOGIC; 
  signal U3_Q_12_CYSELF_8565 : STD_LOGIC; 
  signal U3_Q_12_CYMUXFAST_8564 : STD_LOGIC; 
  signal U3_Q_12_CYAND_8563 : STD_LOGIC; 
  signal U3_Q_12_FASTCARRY_8562 : STD_LOGIC; 
  signal U3_Q_12_CYMUXG2_8561 : STD_LOGIC; 
  signal U3_Q_12_CYMUXF2_8560 : STD_LOGIC; 
  signal U3_Q_12_LOGIC_ZERO_8559 : STD_LOGIC; 
  signal U3_Q_12_CYSELG_8550 : STD_LOGIC; 
  signal U3_Q_12_G : STD_LOGIC; 
  signal U3_Q_12_SRINV_8548 : STD_LOGIC; 
  signal U3_Q_12_CLKINV_8547 : STD_LOGIC; 
  signal U3_Q_14_FFY_RST : STD_LOGIC; 
  signal U3_Q_14_FFX_RST : STD_LOGIC; 
  signal U3_Q_14_DXMUX_8644 : STD_LOGIC; 
  signal U3_Q_14_XORF_8642 : STD_LOGIC; 
  signal U3_Q_14_CYINIT_8641 : STD_LOGIC; 
  signal U3_Q_14_F : STD_LOGIC; 
  signal U3_Q_14_DYMUX_8625 : STD_LOGIC; 
  signal U3_Q_14_XORG_8623 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_Q : STD_LOGIC; 
  signal U3_Q_14_CYSELF_8621 : STD_LOGIC; 
  signal U3_Q_14_CYMUXFAST_8620 : STD_LOGIC; 
  signal U3_Q_14_CYAND_8619 : STD_LOGIC; 
  signal U3_Q_14_FASTCARRY_8618 : STD_LOGIC; 
  signal U3_Q_14_CYMUXG2_8617 : STD_LOGIC; 
  signal U3_Q_14_CYMUXF2_8616 : STD_LOGIC; 
  signal U3_Q_14_LOGIC_ZERO_8615 : STD_LOGIC; 
  signal U3_Q_14_CYSELG_8606 : STD_LOGIC; 
  signal U3_Q_14_G : STD_LOGIC; 
  signal U3_Q_14_SRINV_8604 : STD_LOGIC; 
  signal U3_Q_14_CLKINV_8603 : STD_LOGIC; 
  signal U3_Q_16_FFX_RST : STD_LOGIC; 
  signal U3_Q_16_DXMUX_8693 : STD_LOGIC; 
  signal U3_Q_16_XORF_8691 : STD_LOGIC; 
  signal U3_Q_16_LOGIC_ZERO_8690 : STD_LOGIC; 
  signal U3_Q_16_CYINIT_8689 : STD_LOGIC; 
  signal U3_Q_16_CYSELF_8680 : STD_LOGIC; 
  signal U3_Q_16_F : STD_LOGIC; 
  signal U3_Q_16_DYMUX_8672 : STD_LOGIC; 
  signal U3_Q_16_XORG_8670 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_Q : STD_LOGIC; 
  signal U3_q_171_rt_8667 : STD_LOGIC; 
  signal U3_Q_16_SRINV_8659 : STD_LOGIC; 
  signal U3_Q_16_CLKINV_8658 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_F5MUX_8729 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_8727 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_BXINV_8722 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_F6MUX_8721 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_8719 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_BYINV_8713 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_F5MUX_8759 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_8757 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_BXINV_8751 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_F6MUX_8750 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_8748 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_BYINV_8742 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_F5MUX_8789 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_8787 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_BXINV_8781 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_F6MUX_8780 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_8778 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_BYINV_8772 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_F5MUX_8819 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_8817 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_BXINV_8811 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_F6MUX_8810 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_8808 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_BYINV_8802 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_F5MUX_8849 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_8847 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_BXINV_8841 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_F6MUX_8840 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_8838 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_BYINV_8832 : STD_LOGIC; 
  signal U3_M2a_mux0000_F5MUX_8880 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_8878 : STD_LOGIC; 
  signal U3_M2a_mux0000_BXINV_8872 : STD_LOGIC; 
  signal U3_M2a_mux0000_F6MUX_8870 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_8868 : STD_LOGIC; 
  signal U3_M2a_mux0000_BYINV_8862 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_F5MUX_8910 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_8908 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_BXINV_8902 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_F6MUX_8901 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_8899 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_BYINV_8893 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_F5MUX_8934 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_8932 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_BXINV_8926 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_8924 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_F5MUX_8964 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_8962 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_BXINV_8956 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_F6MUX_8955 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_8953 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_BYINV_8947 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_F5MUX_8994 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_8992 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_BXINV_8986 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_F6MUX_8985 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_8983 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_BYINV_8977 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_F5MUX_9024 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_9022 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_BXINV_9016 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_F6MUX_9015 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_9013 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_BYINV_9007 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_F5MUX_9054 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_9052 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_BXINV_9046 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_F6MUX_9045 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_9043 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_BYINV_9037 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_F5MUX_9084 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_9082 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_BXINV_9076 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_F6MUX_9075 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_9073 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_BYINV_9067 : STD_LOGIC; 
  signal U3_M2_mux0000_F5MUX_9115 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_9113 : STD_LOGIC; 
  signal U3_M2_mux0000_BXINV_9107 : STD_LOGIC; 
  signal U3_M2_mux0000_F6MUX_9105 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_9103 : STD_LOGIC; 
  signal U3_M2_mux0000_BYINV_9097 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_F5MUX_9145 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_9143 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_BXINV_9137 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_F6MUX_9136 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_9134 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_BYINV_9128 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_F5MUX_9169 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_9167 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_BXINV_9161 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_9159 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_F5MUX_9199 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_9197 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_BXINV_9191 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_F6MUX_9190 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_9188 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_BYINV_9182 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_F5MUX_9229 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_9227 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_BXINV_9221 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_F6MUX_9220 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_9218 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_BYINV_9212 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_F5MUX_9259 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_9257 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_BXINV_9251 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_F6MUX_9250 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_9248 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_BYINV_9243 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_F5MUX_9289 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_9287 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_BXINV_9281 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_F6MUX_9280 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_9278 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_BYINV_9272 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_F5MUX_9319 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_9317 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_BXINV_9311 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_F6MUX_9310 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_9308 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_BYINV_9302 : STD_LOGIC; 
  signal U3_M1_mux0000_F5MUX_9350 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_9348 : STD_LOGIC; 
  signal U3_M1_mux0000_BXINV_9342 : STD_LOGIC; 
  signal U3_M1_mux0000_F6MUX_9340 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_9338 : STD_LOGIC; 
  signal U3_M1_mux0000_BYINV_9332 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_F5MUX_9380 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_9378 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_BXINV_9372 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_F6MUX_9371 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_9369 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_BYINV_9363 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_F5MUX_9404 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_9402 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_BXINV_9396 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_9394 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_F5MUX_9434 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_9432 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_BXINV_9427 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_F6MUX_9426 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_9424 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_BYINV_9418 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_F5MUX_9464 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_9462 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_BXINV_9456 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_F6MUX_9455 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_9453 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_BYINV_9447 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_F5MUX_9494 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_9492 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_BXINV_9486 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_F6MUX_9485 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_9483 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_BYINV_9477 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_F5MUX_9524 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_9522 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_BXINV_9516 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_F6MUX_9515 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_9513 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_BYINV_9507 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_F5MUX_9554 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_9552 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_BXINV_9546 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_F6MUX_9545 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_9543 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_BYINV_9537 : STD_LOGIC; 
  signal U3_M1a_mux0000_F5MUX_9585 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_9583 : STD_LOGIC; 
  signal U3_M1a_mux0000_BXINV_9577 : STD_LOGIC; 
  signal U3_M1a_mux0000_F6MUX_9575 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_9573 : STD_LOGIC; 
  signal U3_M1a_mux0000_BYINV_9567 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_F5MUX_9615 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_9613 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_BXINV_9607 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_F6MUX_9606 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_9604 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_BYINV_9598 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_F5MUX_9639 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_9637 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_BXINV_9631 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_9629 : STD_LOGIC; 
  signal M2a_3_F5MUX_9660 : STD_LOGIC; 
  signal M2a_3_BXINV_9659 : STD_LOGIC; 
  signal M2a_3_F6MUX_9657 : STD_LOGIC; 
  signal M2a_3_1_9655 : STD_LOGIC; 
  signal M2a_3_BYINV_9650 : STD_LOGIC; 
  signal M2a_3_f5_F5MUX_9684 : STD_LOGIC; 
  signal M2a_3_2_9682 : STD_LOGIC; 
  signal M2a_3_f5_BXINV_9677 : STD_LOGIC; 
  signal M2a_3_3_9675 : STD_LOGIC; 
  signal dp_O : STD_LOGIC; 
  signal ja1_INBUF : STD_LOGIC; 
  signal ja2_O : STD_LOGIC; 
  signal ja3_O : STD_LOGIC; 
  signal a_to_g_0_O : STD_LOGIC; 
  signal a_to_g_1_O : STD_LOGIC; 
  signal a_to_g_2_O : STD_LOGIC; 
  signal a_to_g_3_O : STD_LOGIC; 
  signal a_to_g_4_O : STD_LOGIC; 
  signal a_to_g_5_O : STD_LOGIC; 
  signal a_to_g_6_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal blue_0_O : STD_LOGIC; 
  signal blue_1_O : STD_LOGIC; 
  signal an_0_O : STD_LOGIC; 
  signal an_1_O : STD_LOGIC; 
  signal an_2_O : STD_LOGIC; 
  signal an_3_O : STD_LOGIC; 
  signal sw_0_INBUF : STD_LOGIC; 
  signal sw_1_INBUF : STD_LOGIC; 
  signal sw_2_INBUF : STD_LOGIC; 
  signal sw_3_INBUF : STD_LOGIC; 
  signal sw_4_INBUF : STD_LOGIC; 
  signal sw_5_INBUF : STD_LOGIC; 
  signal sw_6_INBUF : STD_LOGIC; 
  signal sw_7_INBUF : STD_LOGIC; 
  signal hsync_O : STD_LOGIC; 
  signal vsync_O : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal red_0_O : STD_LOGIC; 
  signal red_1_O : STD_LOGIC; 
  signal red_2_O : STD_LOGIC; 
  signal green_0_O : STD_LOGIC; 
  signal green_1_O : STD_LOGIC; 
  signal green_2_O : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_q_0_BUFG_S_INVNOT : STD_LOGIC; 
  signal U1_q_0_BUFG_I0_INV : STD_LOGIC; 
  signal U3_q_17_BUFG_S_INVNOT : STD_LOGIC; 
  signal U3_q_17_BUFG_I0_INV : STD_LOGIC; 
  signal x7_digit_1_F5MUX_9999 : STD_LOGIC; 
  signal x7_digit_1_F : STD_LOGIC; 
  signal x7_digit_1_BXINV_9988 : STD_LOGIC; 
  signal x7_Mmux_digit_41_9986 : STD_LOGIC; 
  signal x7_digit_2_F5MUX_10024 : STD_LOGIC; 
  signal x7_digit_2_F : STD_LOGIC; 
  signal x7_digit_2_BXINV_10013 : STD_LOGIC; 
  signal x7_Mmux_digit_42_10011 : STD_LOGIC; 
  signal N157_F5MUX_10049 : STD_LOGIC; 
  signal M1_12_bdd0_rt_10047 : STD_LOGIC; 
  signal N157_BXINV_10039 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_SW0 : STD_LOGIC; 
  signal N205_F5MUX_10074 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW0 : STD_LOGIC; 
  signal N205_BXINV_10067 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_SW01_10065 : STD_LOGIC; 
  signal N301_F5MUX_10099 : STD_LOGIC; 
  signal M1_29_36_SW0 : STD_LOGIC; 
  signal N301_BXINV_10089 : STD_LOGIC; 
  signal M1_29_36_SW01 : STD_LOGIC; 
  signal N209_F5MUX_10124 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N209_BXINV_10117 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal N211_F5MUX_10149 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal N211_BXINV_10142 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N139_F5MUX_10174 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal N139_BXINV_10167 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N281_F5MUX_10199 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N281_BXINV_10192 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N279_F5MUX_10224 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N279_BXINV_10216 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal M1a_27_F5MUX_10249 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal M1a_27_BXINV_10242 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N285_F5MUX_10274 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N285_BXINV_10267 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N155_F5MUX_10299 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N155_BXINV_10292 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N289_F5MUX_10324 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N289_BXINV_10317 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N287_F5MUX_10349 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N287_BXINV_10341 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal M1a_11_F5MUX_10374 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal M1a_11_BXINV_10367 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal M2a_22_F5MUX_10399 : STD_LOGIC; 
  signal M2a_22_1_10397 : STD_LOGIC; 
  signal M2a_22_BXINV_10392 : STD_LOGIC; 
  signal M2a_22_2_10390 : STD_LOGIC; 
  signal M1_8_F5MUX_10424 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal M1_8_BXINV_10417 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N229_F5MUX_10449 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N229_BXINV_10442 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N283_F5MUX_10474 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N283_BXINV_10467 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal red_1_OBUF_F5MUX_10499 : STD_LOGIC; 
  signal red_1_OBUF_BXINV_10491 : STD_LOGIC; 
  signal U3_red_2_1_10489 : STD_LOGIC; 
  signal M1_21_26_F5MUX_10524 : STD_LOGIC; 
  signal M1_21_26_F : STD_LOGIC; 
  signal M1_21_26_BXINV_10513 : STD_LOGIC; 
  signal M1_21_261_10511 : STD_LOGIC; 
  signal N167_F5MUX_10549 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N167_BXINV_10542 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal M1_31_F5MUX_10574 : STD_LOGIC; 
  signal M1_31_78 : STD_LOGIC; 
  signal M1_31_BXINV_10567 : STD_LOGIC; 
  signal M1_31_781_10565 : STD_LOGIC; 
  signal M1_30_F5MUX_10599 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal M1_30_BXINV_10592 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal M1_25_F5MUX_10624 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal M1_25_BXINV_10617 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal M1_26_F5MUX_10649 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal M1_26_BXINV_10642 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal M1_27_F5MUX_10674 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal M1_27_BXINV_10667 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal M1_28_F5MUX_10699 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal M1_28_BXINV_10692 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal M2_1_F5MUX_10724 : STD_LOGIC; 
  signal M2_1_117 : STD_LOGIC; 
  signal M2_1_BXINV_10717 : STD_LOGIC; 
  signal M2_1_1171_10715 : STD_LOGIC; 
  signal M2_21_F5MUX_10749 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal M2_21_BXINV_10742 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal M2_22_F5MUX_10774 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal M2_22_BXINV_10767 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal M2_28_F5MUX_10799 : STD_LOGIC; 
  signal M2_28_1_10797 : STD_LOGIC; 
  signal M2_28_BXINV_10792 : STD_LOGIC; 
  signal M2_28_2_10790 : STD_LOGIC; 
  signal M2_3_F5MUX_10824 : STD_LOGIC; 
  signal M2_3_200 : STD_LOGIC; 
  signal M2_3_BXINV_10817 : STD_LOGIC; 
  signal N113_rt_10815 : STD_LOGIC; 
  signal M2_5_107_F5MUX_10849 : STD_LOGIC; 
  signal M2_5_1071_10847 : STD_LOGIC; 
  signal M2_5_107_BXINV_10840 : STD_LOGIC; 
  signal M2_5_1072_10838 : STD_LOGIC; 
  signal N291_F5MUX_10874 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal N291_BXINV_10867 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N297_F5MUX_10899 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N297_BXINV_10892 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal M1_10_F5MUX_10924 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal M1_10_BXINV_10917 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal M1_11_F5MUX_10949 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal M1_11_BXINV_10942 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal M1_20_F5MUX_10974 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal M1_20_BXINV_10967 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal M1_18_F5MUX_10999 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal M1_18_BXINV_10992 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal M2_11_F5MUX_11024 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal M2_11_BXINV_11017 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal M1_2_F5MUX_11049 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal M1_2_BXINV_11042 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal M2a_6_10_F5MUX_11074 : STD_LOGIC; 
  signal M2a_6_101_11072 : STD_LOGIC; 
  signal M2a_6_10_BXINV_11067 : STD_LOGIC; 
  signal M2a_6_102_11065 : STD_LOGIC; 
  signal M2_23_F5MUX_11099 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal M2_23_BXINV_11092 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal M2_6_169_F5MUX_11124 : STD_LOGIC; 
  signal M2_6_1691_11122 : STD_LOGIC; 
  signal M2_6_169_BXINV_11117 : STD_LOGIC; 
  signal M2_6_1692_11115 : STD_LOGIC; 
  signal U3_spriteonB5_and00009_F5MUX_11149 : STD_LOGIC; 
  signal U3_spriteonB5_and000091_11147 : STD_LOGIC; 
  signal U3_spriteonB5_and00009_BXINV_11142 : STD_LOGIC; 
  signal U3_spriteonB5_and00009_G : STD_LOGIC; 
  signal M1a_2_F5MUX_11174 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal M1a_2_BXINV_11167 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N109_F5MUX_11199 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N109_BXINV_11190 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N207_F5MUX_11224 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N207_BXINV_11217 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal U2_vidon_and000026_F5MUX_11249 : STD_LOGIC; 
  signal U2_vidon_and0000261_11247 : STD_LOGIC; 
  signal U2_vidon_and000026_BXINV_11242 : STD_LOGIC; 
  signal U2_vidon_and000026_G : STD_LOGIC; 
  signal U2_vidon_and000018_F5MUX_11274 : STD_LOGIC; 
  signal U2_vidon_and000018_F : STD_LOGIC; 
  signal U2_vidon_and000018_BXINV_11263 : STD_LOGIC; 
  signal U2_vidon_and0000181_11261 : STD_LOGIC; 
  signal U3_spriteonB5_and000049_F5MUX_11299 : STD_LOGIC; 
  signal U3_spriteonB5_and000049_F : STD_LOGIC; 
  signal U3_spriteonB5_and000049_BXINV_11288 : STD_LOGIC; 
  signal U3_spriteonB5_and0000491_11286 : STD_LOGIC; 
  signal U2_vidon_and000065_F5MUX_11324 : STD_LOGIC; 
  signal U2_vidon_and0000651_11322 : STD_LOGIC; 
  signal U2_vidon_and000065_BXINV_11317 : STD_LOGIC; 
  signal U2_vidon_and000065_G : STD_LOGIC; 
  signal U3_spriteonB5_and000083_F5MUX_11349 : STD_LOGIC; 
  signal U3_spriteonB5_and0000831_11347 : STD_LOGIC; 
  signal U3_spriteonB5_and000083_BXINV_11341 : STD_LOGIC; 
  signal U3_spriteonB5_and0000832_11339 : STD_LOGIC; 
  signal M1a_10_F5MUX_11374 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal M1a_10_BXINV_11367 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal M1a_21_F5MUX_11399 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal M1a_21_BXINV_11392 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal M1a_18_F5MUX_11424 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal M1a_18_BXINV_11417 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal M1a_19_F5MUX_11449 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal M1a_19_BXINV_11442 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal M1a_27_83_F5MUX_11474 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal M1a_27_83_BXINV_11467 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal M2a_10_F5MUX_11499 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal M2a_10_BXINV_11492 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal M2a_11_F5MUX_11524 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal M2a_11_BXINV_11517 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal M2a_12_F5MUX_11549 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal M2a_12_BXINV_11542 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal M2a_20_F5MUX_11574 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal M2a_20_BXINV_11567 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal M2a_21_F5MUX_11599 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal M2a_21_BXINV_11592 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal M2a_28_F5MUX_11624 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal M2a_28_BXINV_11617 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal M2a_29_F5MUX_11649 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal M2a_29_BXINV_11642 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal M2a_4_F5MUX_11674 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal M2a_4_BXINV_11667 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal M1_29_F5MUX_11699 : STD_LOGIC; 
  signal M1_29_133 : STD_LOGIC; 
  signal M1_29_BXINV_11692 : STD_LOGIC; 
  signal M1_29_1331_11690 : STD_LOGIC; 
  signal M2a_6_F5MUX_11724 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal M2a_6_BXINV_11717 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal M1a_3_F5MUX_11749 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal M1a_3_BXINV_11742 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal M1_22_36_F5MUX_11774 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal M1_22_36_BXINV_11766 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal M1_31_25_F5MUX_11799 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal M1_31_25_BXINV_11792 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal M1_23_35_F5MUX_11824 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal M1_23_35_BXINV_11817 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal M1_23_F5MUX_11849 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal M1_23_BXINV_11842 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal M1_19_F5MUX_11874 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal M1_19_BXINV_11867 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal M1_26_bdd0_F5MUX_11899 : STD_LOGIC; 
  signal M1_26_1 : STD_LOGIC; 
  signal M1_26_bdd0_BXINV_11892 : STD_LOGIC; 
  signal M1_26_11_11890 : STD_LOGIC; 
  signal M2_12_F5MUX_11924 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal M2_12_BXINV_11917 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal M2_20_F5MUX_11949 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal M2_20_BXINV_11942 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal M2_13_F5MUX_11974 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal M2_13_BXINV_11967 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal M1_29_80_F5MUX_11999 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal M1_29_80_BXINV_11992 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal M2_30_F5MUX_12024 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal M2_30_BXINV_12017 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal M2_2_F5MUX_12049 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal M2_2_BXINV_12042 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal M2_4_F5MUX_12074 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal M2_4_BXINV_12067 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal M2_5_F5MUX_12099 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal M2_5_BXINV_12092 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal M2_0_28_F5MUX_12124 : STD_LOGIC; 
  signal M2_0_281_12122 : STD_LOGIC; 
  signal M2_0_28_BXINV_12115 : STD_LOGIC; 
  signal M2_0_282_12113 : STD_LOGIC; 
  signal M1_3_F5MUX_12149 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal M1_3_BXINV_12142 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal M2_1_67_F5MUX_12174 : STD_LOGIC; 
  signal M2_1_671_12172 : STD_LOGIC; 
  signal M2_1_67_BXINV_12165 : STD_LOGIC; 
  signal M2_1_672_12163 : STD_LOGIC; 
  signal M1_9_F5MUX_12199 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal M1_9_BXINV_12192 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N257_F5MUX_12224 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N257_BXINV_12217 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N259_F5MUX_12249 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N259_BXINV_12242 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N153_F5MUX_12274 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N153_BXINV_12267 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N113_F5MUX_12299 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N113_BXINV_12292 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal N293_F5MUX_12324 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal N293_BXINV_12316 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal M2_8_13_F5MUX_12349 : STD_LOGIC; 
  signal M2_8_131_12347 : STD_LOGIC; 
  signal M2_8_13_BXINV_12340 : STD_LOGIC; 
  signal M2_8_132_12338 : STD_LOGIC; 
  signal N295_F5MUX_12374 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N295_BXINV_12367 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal x7_digit_0_F5MUX_12399 : STD_LOGIC; 
  signal x7_digit_0_F : STD_LOGIC; 
  signal x7_digit_0_BXINV_12388 : STD_LOGIC; 
  signal x7_Mmux_digit_4_12386 : STD_LOGIC; 
  signal N197_F5MUX_12424 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW0 : STD_LOGIC; 
  signal N197_BXINV_12415 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW01_12413 : STD_LOGIC; 
  signal M1a_9_F5MUX_12449 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal M1a_9_BXINV_12442 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal M1_1_F5MUX_12474 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal M1_1_BXINV_12467 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal M2_29_F5MUX_12499 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal M2_29_BXINV_12492 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal M2_8_52_F5MUX_12524 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal M2_8_52_BXINV_12517 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal M1a_20_F5MUX_12549 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal M1a_20_BXINV_12542 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal M2a_13_F5MUX_12574 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal M2a_13_BXINV_12567 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal M2a_23_F5MUX_12599 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal M2a_23_BXINV_12591 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal M1a_8_F5MUX_12624 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal M1a_8_BXINV_12616 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal U3_N12_F5MUX_12649 : STD_LOGIC; 
  signal U3_red_2_11 : STD_LOGIC; 
  signal U3_N12_BXINV_12642 : STD_LOGIC; 
  signal U3_red_2_111_12640 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_N01_pack_1 : STD_LOGIC; 
  signal U3_C1_not000127_12696 : STD_LOGIC; 
  signal U3_C1_not00014_O_pack_1 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000183_O_pack_1 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_pack_1 : STD_LOGIC; 
  signal U3_C2_not000164_12792 : STD_LOGIC; 
  signal U3_C2_not000150_O_pack_1 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not000123_O_pack_1 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_12840 : STD_LOGIC; 
  signal U3_N80_pack_1 : STD_LOGIC; 
  signal U2_vcs_5_FFX_RST : STD_LOGIC; 
  signal U2_vcs_5_DXMUX_12873 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal U2_vcs_5_CLKINV_12855 : STD_LOGIC; 
  signal U2_vcs_5_CEINV_12854 : STD_LOGIC; 
  signal U3_C2_not00016_12902 : STD_LOGIC; 
  signal U3_C2_not00011_O_pack_1 : STD_LOGIC; 
  signal U2_vsenable_DXMUX_12933 : STD_LOGIC; 
  signal U2_hcs_cmp_eq0000 : STD_LOGIC; 
  signal U2_hcs_cmp_eq000010_pack_1 : STD_LOGIC; 
  signal U2_vsenable_CLKINV_12916 : STD_LOGIC; 
  signal U2_vsenable_CEINVNOT : STD_LOGIC; 
  signal nes_counter_reg_1_DXMUX_12976 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_1 : STD_LOGIC; 
  signal nes_counter_reg_1_DYMUX_12961 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_0 : STD_LOGIC; 
  signal nes_counter_reg_1_SRINV_12953 : STD_LOGIC; 
  signal nes_counter_reg_1_CLKINV_12952 : STD_LOGIC; 
  signal nes_counter_reg_1_CEINV_12951 : STD_LOGIC; 
  signal nes_counter_reg_3_DXMUX_13022 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_3 : STD_LOGIC; 
  signal nes_counter_reg_3_DYMUX_13007 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_2 : STD_LOGIC; 
  signal nes_counter_reg_3_SRINV_12999 : STD_LOGIC; 
  signal nes_counter_reg_3_CLKINV_12998 : STD_LOGIC; 
  signal nes_counter_reg_3_CEINV_12997 : STD_LOGIC; 
  signal nes_counter_reg_5_DXMUX_13068 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_5 : STD_LOGIC; 
  signal nes_counter_reg_5_DYMUX_13053 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_4 : STD_LOGIC; 
  signal nes_counter_reg_5_SRINV_13045 : STD_LOGIC; 
  signal nes_counter_reg_5_CLKINV_13044 : STD_LOGIC; 
  signal nes_counter_reg_5_CEINV_13043 : STD_LOGIC; 
  signal nes_counter_reg_7_FFX_RST : STD_LOGIC; 
  signal nes_counter_reg_7_DXMUX_13114 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_7 : STD_LOGIC; 
  signal nes_counter_reg_7_DYMUX_13099 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_6 : STD_LOGIC; 
  signal nes_counter_reg_7_SRINV_13091 : STD_LOGIC; 
  signal nes_counter_reg_7_CLKINV_13090 : STD_LOGIC; 
  signal nes_counter_reg_7_CEINV_13089 : STD_LOGIC; 
  signal nes_counter_reg_9_FFY_RST : STD_LOGIC; 
  signal nes_counter_reg_9_DXMUX_13160 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_9 : STD_LOGIC; 
  signal nes_counter_reg_9_DYMUX_13145 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_8 : STD_LOGIC; 
  signal nes_counter_reg_9_SRINV_13137 : STD_LOGIC; 
  signal nes_counter_reg_9_CLKINV_13136 : STD_LOGIC; 
  signal nes_counter_reg_9_CEINV_13135 : STD_LOGIC; 
  signal U1_q_01_DXMUX_13188 : STD_LOGIC; 
  signal U1_q_01_XORF_13186 : STD_LOGIC; 
  signal U1_q_01_CYINIT_13185 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_rt_13183 : STD_LOGIC; 
  signal U1_q_01_BXINV_13175 : STD_LOGIC; 
  signal U1_q_01_CLKINV_13173 : STD_LOGIC; 
  signal U2_hcs_1_DXMUX_13230 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_1 : STD_LOGIC; 
  signal U2_hcs_1_DYMUX_13215 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_0 : STD_LOGIC; 
  signal U2_hcs_1_SRINV_13206 : STD_LOGIC; 
  signal U2_hcs_1_CLKINV_13205 : STD_LOGIC; 
  signal U2_hcs_3_DXMUX_13272 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_3 : STD_LOGIC; 
  signal U2_hcs_3_DYMUX_13257 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_2 : STD_LOGIC; 
  signal U2_hcs_3_SRINV_13248 : STD_LOGIC; 
  signal U2_hcs_3_CLKINV_13247 : STD_LOGIC; 
  signal U2_hcs_5_DXMUX_13314 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_5 : STD_LOGIC; 
  signal U2_hcs_5_DYMUX_13299 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_4 : STD_LOGIC; 
  signal U2_hcs_5_SRINV_13290 : STD_LOGIC; 
  signal U2_hcs_5_CLKINV_13289 : STD_LOGIC; 
  signal U2_hcs_7_FFX_RST : STD_LOGIC; 
  signal U2_hcs_7_DXMUX_13356 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_7 : STD_LOGIC; 
  signal U2_hcs_7_DYMUX_13341 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_6 : STD_LOGIC; 
  signal U2_hcs_7_SRINV_13332 : STD_LOGIC; 
  signal U2_hcs_7_CLKINV_13331 : STD_LOGIC; 
  signal U2_hcs_9_FFY_RST : STD_LOGIC; 
  signal U2_hcs_9_DXMUX_13398 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_9 : STD_LOGIC; 
  signal U2_hcs_9_DYMUX_13383 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_8 : STD_LOGIC; 
  signal U2_hcs_9_SRINV_13374 : STD_LOGIC; 
  signal U2_hcs_9_CLKINV_13373 : STD_LOGIC; 
  signal U2_vcs_1_DXMUX_13443 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal U2_vcs_1_DYMUX_13426 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal U2_vcs_1_SRINV_13416 : STD_LOGIC; 
  signal U2_vcs_1_CLKINV_13415 : STD_LOGIC; 
  signal U2_vcs_1_CEINV_13414 : STD_LOGIC; 
  signal U2_vcs_3_DXMUX_13489 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal U2_vcs_3_DYMUX_13472 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal U2_vcs_3_SRINV_13462 : STD_LOGIC; 
  signal U2_vcs_3_CLKINV_13461 : STD_LOGIC; 
  signal U2_vcs_3_CEINV_13460 : STD_LOGIC; 
  signal U2_vcs_4_DYMUX_13515 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal U2_vcs_4_CLKINV_13504 : STD_LOGIC; 
  signal U2_vcs_4_CEINV_13503 : STD_LOGIC; 
  signal U2_vcs_7_DXMUX_13561 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal U2_vcs_7_DYMUX_13544 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal U2_vcs_7_SRINV_13534 : STD_LOGIC; 
  signal U2_vcs_7_CLKINV_13533 : STD_LOGIC; 
  signal U2_vcs_7_CEINV_13532 : STD_LOGIC; 
  signal U2_vcs_9_FFX_RST : STD_LOGIC; 
  signal U2_vcs_9_DXMUX_13607 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal U2_vcs_9_DYMUX_13590 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal U2_vcs_9_SRINV_13580 : STD_LOGIC; 
  signal U2_vcs_9_CLKINV_13579 : STD_LOGIC; 
  signal U2_vcs_9_CEINV_13578 : STD_LOGIC; 
  signal nes_scalar_reg_1_FFY_RST : STD_LOGIC; 
  signal nes_scalar_reg_1_DXMUX_13650 : STD_LOGIC; 
  signal nes_scalar_reg_1_DYMUX_13634 : STD_LOGIC; 
  signal nes_scalar_reg_1_SRINV_13624 : STD_LOGIC; 
  signal nes_scalar_reg_1_CLKINV_13623 : STD_LOGIC; 
  signal nes_scalar_reg_3_DXMUX_13692 : STD_LOGIC; 
  signal nes_scalar_reg_3_DYMUX_13676 : STD_LOGIC; 
  signal nes_scalar_reg_3_SRINV_13666 : STD_LOGIC; 
  signal nes_scalar_reg_3_CLKINV_13665 : STD_LOGIC; 
  signal nes_scalar_reg_5_DXMUX_13734 : STD_LOGIC; 
  signal nes_scalar_reg_5_DYMUX_13718 : STD_LOGIC; 
  signal nes_scalar_reg_5_SRINV_13708 : STD_LOGIC; 
  signal nes_scalar_reg_5_CLKINV_13707 : STD_LOGIC; 
  signal nes_scalar_reg_7_DXMUX_13776 : STD_LOGIC; 
  signal nes_scalar_reg_7_DYMUX_13760 : STD_LOGIC; 
  signal nes_scalar_reg_7_SRINV_13750 : STD_LOGIC; 
  signal nes_scalar_reg_7_CLKINV_13749 : STD_LOGIC; 
  signal nes_scalar_reg_9_DXMUX_13818 : STD_LOGIC; 
  signal nes_scalar_reg_9_DYMUX_13802 : STD_LOGIC; 
  signal nes_scalar_reg_9_SRINV_13792 : STD_LOGIC; 
  signal nes_scalar_reg_9_CLKINV_13791 : STD_LOGIC; 
  signal U3_spriteonB4_cmp_le0000 : STD_LOGIC; 
  signal N6_pack_1 : STD_LOGIC; 
  signal U3_C1_not000147_13870 : STD_LOGIC; 
  signal U3_C1_not000110_13861 : STD_LOGIC; 
  signal blue_0_OBUF_13894 : STD_LOGIC; 
  signal U3_N81_pack_1 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal U3_C1_not00015_13942 : STD_LOGIC; 
  signal U3_C1_not0001105_13933 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_13966 : STD_LOGIC; 
  signal U3_N84 : STD_LOGIC; 
  signal M1_25_77_13990 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal U3_spriteonB5_and000026_14014 : STD_LOGIC; 
  signal N247_pack_1 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal blue_1_OBUF_14030 : STD_LOGIC; 
  signal U3_blue_0_27_14062 : STD_LOGIC; 
  signal U3_blue_0_9_pack_1 : STD_LOGIC; 
  signal U3_N16_pack_1 : STD_LOGIC; 
  signal M1_24_25_14134 : STD_LOGIC; 
  signal rom1_addr_2_pack_1 : STD_LOGIC; 
  signal M1a_23_10_14158 : STD_LOGIC; 
  signal rom1_addr_3_pack_2 : STD_LOGIC; 
  signal M1a_28_66_14182 : STD_LOGIC; 
  signal rom1_addr_4_pack_2 : STD_LOGIC; 
  signal ja2_OBUF_14206 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_pack_1 : STD_LOGIC; 
  signal green_1_OBUF_14230 : STD_LOGIC; 
  signal U3_N30_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal N201_pack_1 : STD_LOGIC; 
  signal red_0_OBUF_14278 : STD_LOGIC; 
  signal U3_red_0_17_pack_1 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000040_pack_1 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000084_14326 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000071_pack_1 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000058_pack_1 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000066_14367 : STD_LOGIC; 
  signal U3_C2_not000113_14389 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal M1a_26_106_14422 : STD_LOGIC; 
  signal M1a_27_123_14434 : STD_LOGIC; 
  signal U3_N15_pack_1 : STD_LOGIC; 
  signal ja3_OBUF_14482 : STD_LOGIC; 
  signal N189_pack_1 : STD_LOGIC; 
  signal U3_N78 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1 : STD_LOGIC; 
  signal a_to_g_3_OBUF_14554 : STD_LOGIC; 
  signal a_to_g_0_OBUF_14546 : STD_LOGIC; 
  signal a_to_g_5_OBUF_14578 : STD_LOGIC; 
  signal a_to_g_2_OBUF_14570 : STD_LOGIC; 
  signal a_to_g_6_OBUF_14602 : STD_LOGIC; 
  signal a_to_g_4_OBUF_14594 : STD_LOGIC; 
  signal U2_vidon_and000039_14626 : STD_LOGIC; 
  signal U2_vidon_and00000_pack_1 : STD_LOGIC; 
  signal U3_spriteonB4_and000052_14650 : STD_LOGIC; 
  signal U2_vidon_and00006_14643 : STD_LOGIC; 
  signal M2a_1_Q_14674 : STD_LOGIC; 
  signal N69_pack_1 : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal N171_pack_1 : STD_LOGIC; 
  signal nes_a_reg_DYMUX_14708 : STD_LOGIC; 
  signal nes_a_reg_CLKINV_14706 : STD_LOGIC; 
  signal nes_a_reg_CEINV_14705 : STD_LOGIC; 
  signal M1a_26_8_14734 : STD_LOGIC; 
  signal M1_22_11_14727 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd4_pack_3 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal M1_23_14_14806 : STD_LOGIC; 
  signal M1_27_102_14799 : STD_LOGIC; 
  signal M1_0_Q : STD_LOGIC; 
  signal M1_27_127_14823 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal nes_nes_clk31_14847 : STD_LOGIC; 
  signal M1_21_5 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_14871 : STD_LOGIC; 
  signal M2_4_bdd10 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal M2_2_10_14926 : STD_LOGIC; 
  signal M2_3_2_14919 : STD_LOGIC; 
  signal a_to_g_1_OBUF_14938 : STD_LOGIC; 
  signal M2_5_bdd2 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal M1a_1_8_14998 : STD_LOGIC; 
  signal U2_vidon_and000080_14991 : STD_LOGIC; 
  signal M2a_6_49_15022 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal nes_right_reg_DYMUX_15032 : STD_LOGIC; 
  signal nes_right_reg_CLKINV_15030 : STD_LOGIC; 
  signal nes_right_reg_CEINV_15029 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal M2_9_25_15082 : STD_LOGIC; 
  signal N273_pack_1 : STD_LOGIC; 
  signal M2_4_38_15106 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal U3_spriteonB4_and00005_15118 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_15142 : STD_LOGIC; 
  signal N191_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1_and000022_15166 : STD_LOGIC; 
  signal N193_pack_1 : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal N231_pack_1 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_N85 : STD_LOGIC; 
  signal U3_N36_pack_1 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000012_15310 : STD_LOGIC; 
  signal U3_spriteonGrnd_and00002_pack_1 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M1a_10_bdd0_pack_1 : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_22_18_pack_1 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_14_pack_1 : STD_LOGIC; 
  signal M1_27_40_15406 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal M1a_24_38_15430 : STD_LOGIC; 
  signal M1a_24_14_pack_1 : STD_LOGIC; 
  signal M2_4_117_15454 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal M1a_27_50_15478 : STD_LOGIC; 
  signal M1a_26_47_15471 : STD_LOGIC; 
  signal M2a_5_110_15502 : STD_LOGIC; 
  signal N337_pack_1 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_28_32_pack_1 : STD_LOGIC; 
  signal M1_25_34_15550 : STD_LOGIC; 
  signal N267_pack_1 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal M1a_29_30_pack_1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1a_1_20 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal N239_pack_1 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N147_pack_2 : STD_LOGIC; 
  signal nes_left_reg_DYMUX_15704 : STD_LOGIC; 
  signal nes_left_reg_CLKINV_15702 : STD_LOGIC; 
  signal nes_left_reg_CEINV_15701 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_15718 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_15730 : STD_LOGIC; 
  signal M2_6_87_15754 : STD_LOGIC; 
  signal M1_10_bdd7_pack_2 : STD_LOGIC; 
  signal M1_10_bdd8 : STD_LOGIC; 
  signal M1_10_bdd5 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal M1_26_58_15826 : STD_LOGIC; 
  signal M1_21_bdd5_pack_1 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal M1_21_bdd8_pack_2 : STD_LOGIC; 
  signal M1a_30_36_15874 : STD_LOGIC; 
  signal M1_22_bdd7_pack_2 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1_22_bdd9_pack_1 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd6_pack_3 : STD_LOGIC; 
  signal M1_24_bdd2 : STD_LOGIC; 
  signal M1_22_bdd12_pack_1 : STD_LOGIC; 
  signal M1_24_70_15970 : STD_LOGIC; 
  signal M1_24_bdd0_pack_3 : STD_LOGIC; 
  signal M1a_28_17_15994 : STD_LOGIC; 
  signal M1_24_bdd4_pack_2 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_12_bdd0_pack_1 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M1_26_30_16047 : STD_LOGIC; 
  signal M1a_29_51_16078 : STD_LOGIC; 
  signal M1_27_bdd4_pack_2 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_10_7_pack_1 : STD_LOGIC; 
  signal M2a_9_33_16126 : STD_LOGIC; 
  signal M2_10_bdd2_pack_3 : STD_LOGIC; 
  signal M2_7_92_16150 : STD_LOGIC; 
  signal M2_12_bdd5_pack_2 : STD_LOGIC; 
  signal M1_28_74_16174 : STD_LOGIC; 
  signal M1_28_23_pack_1 : STD_LOGIC; 
  signal M1_10_bdd0 : STD_LOGIC; 
  signal M1_14_bdd1 : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M2_2_50_16246 : STD_LOGIC; 
  signal M2_0_bdd18_pack_1 : STD_LOGIC; 
  signal M2_3_72 : STD_LOGIC; 
  signal M2_0_bdd20_pack_1 : STD_LOGIC; 
  signal M1_4_bdd0 : STD_LOGIC; 
  signal M2_3_bdd7 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_18_bdd0 : STD_LOGIC; 
  signal M2_1_bdd1 : STD_LOGIC; 
  signal M2_2_31_16335 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_120_pack_1 : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_8_129_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_and000050_16438 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N57_pack_1 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_DXMUX_16490 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_DYMUX_16483 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_SRINV_16474 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_CLKINV_16473 : STD_LOGIC; 
  signal vsync_OBUF_16518 : STD_LOGIC; 
  signal U2_N2_pack_1 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_16542 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB2_and000012_pack_1 : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal M2a_2_18_pack_1 : STD_LOGIC; 
  signal M2a_4_14_16614 : STD_LOGIC; 
  signal M2a_4_35_16626 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal M2a_4_54_16643 : STD_LOGIC; 
  signal M2a_4_116_16674 : STD_LOGIC; 
  signal M2a_4_77_pack_2 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_11_pack_1 : STD_LOGIC; 
  signal M1a_23_43 : STD_LOGIC; 
  signal U2_vidon_and0000105_16734 : STD_LOGIC; 
  signal hsync_OBUF_16727 : STD_LOGIC; 
  signal U3_spriteonB3_and000073_16758 : STD_LOGIC; 
  signal N249_pack_1 : STD_LOGIC; 
  signal N39_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal N323_pack_1 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_22_0_pack_1 : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_28_2_16854 : STD_LOGIC; 
  signal green_0_OBUF_16878 : STD_LOGIC; 
  signal N100_pack_1 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal M2_0_bdd4_pack_1 : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal M2_0_bdd6_pack_1 : STD_LOGIC; 
  signal M2_10_25_16950 : STD_LOGIC; 
  signal M2_0_bdd10_pack_2 : STD_LOGIC; 
  signal M2a_8_29_16974 : STD_LOGIC; 
  signal M2_0_bdd13_pack_1 : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_0_bdd2_pack_1 : STD_LOGIC; 
  signal M2_4_93_17022 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal M2_4_24_17058 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal M2_4_127_17082 : STD_LOGIC; 
  signal M2_4_bdd2_pack_3 : STD_LOGIC; 
  signal M2_4_49 : STD_LOGIC; 
  signal M2a_5_9_17118 : STD_LOGIC; 
  signal M2_6_bdd1 : STD_LOGIC; 
  signal M2_7_55_17142 : STD_LOGIC; 
  signal M2_7_bdd0_pack_1 : STD_LOGIC; 
  signal M2_7_25_17166 : STD_LOGIC; 
  signal M2_6_51_17159 : STD_LOGIC; 
  signal M2a_9_13_17190 : STD_LOGIC; 
  signal M2_9_bdd0_pack_1 : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal M2_9_63_pack_1 : STD_LOGIC; 
  signal M2a_7_58_17238 : STD_LOGIC; 
  signal N149_pack_1 : STD_LOGIC; 
  signal U3_N35 : STD_LOGIC; 
  signal N161_pack_1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal N179_pack_1 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal U2_vidon_and0000117_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_and000043_17322 : STD_LOGIC; 
  signal green_2_OBUF_17346 : STD_LOGIC; 
  signal U3_spriteonGrnd_pack_1 : STD_LOGIC; 
  signal an_0_OBUF_17358 : STD_LOGIC; 
  signal U3_spriteonB4_and000055_17382 : STD_LOGIC; 
  signal U3_N60_pack_1 : STD_LOGIC; 
  signal U3_spriteonB4_and000038_17406 : STD_LOGIC; 
  signal U3_spriteonB4_and000017_pack_1 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal U3_spriteonB4_and000069_pack_1 : STD_LOGIC; 
  signal U1_q_01_FFX_RSTAND_13193 : STD_LOGIC; 
  signal U2_vcs_4_FFY_RSTAND_13521 : STD_LOGIC; 
  signal dp_OUTPUT_OFF_O1INV_9692 : STD_LOGIC; 
  signal an_1_OUTPUT_OFF_O1INV_9808 : STD_LOGIC; 
  signal an_2_OUTPUT_OFF_O1INV_9816 : STD_LOGIC; 
  signal an_3_OUTPUT_OFF_O1INV_9824 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_M2a_3_F5MUX_IB_UNCONNECTED : STD_LOGIC; 
  signal U2_hcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_q : STD_LOGIC_VECTOR ( 17 downto 17 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_xpix1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix1_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal x7_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U3_xpix2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix2_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal nes_scalar_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal rom1_addr : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7_digit : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcount_C1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C2_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_xpix1_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal x7_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_xpix2_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_spriteon2f_add0002 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_hcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_red : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal nes_scalar_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Madd_spriteon2_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Madd_spriteon2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 8 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Madd_spriteon1_addsub0001_lut : STD_LOGIC_VECTOR ( 7 downto 7 ); 
begin
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5314,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5315,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5306,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5304,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5315
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5314
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5306
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5304
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X33Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5301,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy(0),
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5293,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5303
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5301
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5293
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5346,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5346,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5337,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5332
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5346
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5337
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5303,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5334
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y33"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5323,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5337,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5335
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5333,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5334,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5335,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5336
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5331,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5332,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5323,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5333
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5331
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5323
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5377,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5377,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5368,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5363
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5377
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5368
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5336,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5365
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y34"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5355,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5368,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5366
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5364,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5365,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5366,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5367
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5362,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5363,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5355,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5364
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5362
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5355
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5408,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5408,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5401,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5396
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5408
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5401
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5367,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5398
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y35"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5387,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5401,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5399
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5397,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5398,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5399,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5400
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5395,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5396,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5387,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5397
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5395
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5387
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"69C3",
      LOC => "SLICE_X33Y35"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => U2_hcs(6),
      ADR2 => U3_C1(6),
      ADR3 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X33Y36"
    )
    port map (
      ADR0 => U3_C1(8),
      ADR1 => U2_hcs(8),
      ADR2 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(8)
    );
  U3_spriteon1_cmp_ge0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y36"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CY0F_5439,
      IB => U3_spriteon1_cmp_ge0000_CY0F_5439,
      SEL => U3_spriteon1_cmp_ge0000_CYSELF_5431,
      O => U3_spriteon1_cmp_ge0000_CYMUXF2_5426
    );
  U3_spriteon1_cmp_ge0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_spriteon1_cmp_ge0000_CY0F_5439
    );
  U3_spriteon1_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(8),
      O => U3_spriteon1_cmp_ge0000_CYSELF_5431
    );
  U3_spriteon1_cmp_ge0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_cmp_ge0000_CYMUXFAST_5430,
      O => U3_spriteon1_cmp_ge0000
    );
  U3_spriteon1_cmp_ge0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5400,
      O => U3_spriteon1_cmp_ge0000_FASTCARRY_5428
    );
  U3_spriteon1_cmp_ge0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y36"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000_CYSELG_5419,
      I1 => U3_spriteon1_cmp_ge0000_CYSELF_5431,
      O => U3_spriteon1_cmp_ge0000_CYAND_5429
    );
  U3_spriteon1_cmp_ge0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y36"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CYMUXG2_5427,
      IB => U3_spriteon1_cmp_ge0000_FASTCARRY_5428,
      SEL => U3_spriteon1_cmp_ge0000_CYAND_5429,
      O => U3_spriteon1_cmp_ge0000_CYMUXFAST_5430
    );
  U3_spriteon1_cmp_ge0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y36"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CY0G_5425,
      IB => U3_spriteon1_cmp_ge0000_CYMUXF2_5426,
      SEL => U3_spriteon1_cmp_ge0000_CYSELG_5419,
      O => U3_spriteon1_cmp_ge0000_CYMUXG2_5427
    );
  U3_spriteon1_cmp_ge0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_spriteon1_cmp_ge0000_CY0G_5425
    );
  U3_spriteon1_cmp_ge0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(9),
      O => U3_spriteon1_cmp_ge0000_CYSELG_5419
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9699",
      LOC => "SLICE_X33Y36"
    )
    port map (
      ADR0 => U3_C1(9),
      ADR1 => U2_hcs(9),
      ADR2 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0,
      ADR3 => U3_C1(8),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X25Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_5468,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_5469,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5460,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5458,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_5469
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_5468
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5460
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5458
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X25Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5455,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy(0),
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5447,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5457
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5455
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5447
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X25Y37"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => U2_hcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_5500,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_5500,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_5491,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_5486
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_5500
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_5491
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5457,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_5488
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y38"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_5477,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_5491,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_5489
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_5487,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_5488,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_5489,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_5490
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_5485,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_5486,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_5477,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_5487
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_5485
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_5477
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_5531,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_5531,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_5523,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_5518
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002_4_0,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_5531
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_5523
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_5490,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_5520
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y39"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_5511,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_5523,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_5521
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_5519,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_5520,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_5521,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_5522
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_5517,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_5518,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_5511,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_5519
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_5_0,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_5517
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_5511
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_5566,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_5566,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_5558,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_5553
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_5566
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_5558
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_5522,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_5555
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y40"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_5546,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_5558,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_5556
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_5554,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_5555,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_5556,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_5557
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_5552,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_5553,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_5546,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_5554
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_5552
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_5546
    );
  U3_spriteon2f_cmp_le0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y41"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CY0F_5597,
      IB => U3_spriteon2f_cmp_le0000_CY0F_5597,
      SEL => U3_spriteon2f_cmp_le0000_CYSELF_5588,
      O => U3_spriteon2f_cmp_le0000_CYMUXF2_5583
    );
  U3_spriteon2f_cmp_le0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_8_0,
      O => U3_spriteon2f_cmp_le0000_CY0F_5597
    );
  U3_spriteon2f_cmp_le0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(8),
      O => U3_spriteon2f_cmp_le0000_CYSELF_5588
    );
  U3_spriteon2f_cmp_le0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_cmp_le0000_CYMUXFAST_5587,
      O => U3_spriteon2f_cmp_le0000
    );
  U3_spriteon2f_cmp_le0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_5557,
      O => U3_spriteon2f_cmp_le0000_FASTCARRY_5585
    );
  U3_spriteon2f_cmp_le0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y41"
    )
    port map (
      I0 => U3_spriteon2f_cmp_le0000_CYSELG_5574,
      I1 => U3_spriteon2f_cmp_le0000_CYSELF_5588,
      O => U3_spriteon2f_cmp_le0000_CYAND_5586
    );
  U3_spriteon2f_cmp_le0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y41"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CYMUXG2_5584,
      IB => U3_spriteon2f_cmp_le0000_FASTCARRY_5585,
      SEL => U3_spriteon2f_cmp_le0000_CYAND_5586,
      O => U3_spriteon2f_cmp_le0000_CYMUXFAST_5587
    );
  U3_spriteon2f_cmp_le0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y41"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CY0G_5582,
      IB => U3_spriteon2f_cmp_le0000_CYMUXF2_5583,
      SEL => U3_spriteon2f_cmp_le0000_CYSELG_5574,
      O => U3_spriteon2f_cmp_le0000_CYMUXG2_5584
    );
  U3_spriteon2f_cmp_le0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_9_0,
      O => U3_spriteon2f_cmp_le0000_CY0G_5582
    );
  U3_spriteon2f_cmp_le0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(9),
      O => U3_spriteon2f_cmp_le0000_CYSELG_5574
    );
  U3_C1_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_XORF_5641,
      O => U3_C1_0_DXMUX_5643
    );
  U3_C1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y40"
    )
    port map (
      I0 => U3_C1_0_CYINIT_5640,
      I1 => U3_Mcount_C1_lut(0),
      O => U3_C1_0_XORF_5641
    );
  U3_C1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y40"
    )
    port map (
      IA => U3_C1_0_CY0F_5639,
      IB => U3_C1_0_CYINIT_5640,
      SEL => U3_C1_0_CYSELF_5631,
      O => U3_Mcount_C1_cy_0_Q
    );
  U3_C1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_4597,
      O => U3_C1_0_CYINIT_5640
    );
  U3_C1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(0),
      O => U3_C1_0_CY0F_5639
    );
  U3_C1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(0),
      O => U3_C1_0_CYSELF_5631
    );
  U3_C1_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_XORG_5622,
      O => U3_C1_0_DYMUX_5624
    );
  U3_C1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y40"
    )
    port map (
      I0 => U3_Mcount_C1_cy_0_Q,
      I1 => U3_Mcount_C1_lut(1),
      O => U3_C1_0_XORG_5622
    );
  U3_C1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_CYMUXG_5621,
      O => U3_Mcount_C1_cy_1_Q
    );
  U3_C1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X33Y40"
    )
    port map (
      IA => U3_C1_0_CY0G_5619,
      IB => U3_Mcount_C1_cy_0_Q,
      SEL => U3_C1_0_CYSELG_5611,
      O => U3_C1_0_CYMUXG_5621
    );
  U3_C1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(1),
      O => U3_C1_0_CY0G_5619
    );
  U3_C1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(1),
      O => U3_C1_0_CYSELG_5611
    );
  U3_C1_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_0_CLKINV_5609
    );
  U3_C1_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_0_CEINV_5608
    );
  U3_C1_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y40",
      INIT => '0'
    )
    port map (
      I => U3_C1_0_DXMUX_5643,
      CE => U3_C1_0_CEINV_5608,
      CLK => U3_C1_0_CLKINV_5609,
      SET => GND,
      RST => GND,
      O => U3_C1(0)
    );
  U3_C1_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y41",
      INIT => '0'
    )
    port map (
      I => U3_C1_2_DYMUX_5679,
      CE => U3_C1_2_CEINV_5658,
      CLK => U3_C1_2_CLKINV_5659,
      SET => GND,
      RST => GND,
      O => U3_C1(3)
    );
  U3_Mcount_C1_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y41"
    )
    port map (
      ADR0 => U3_C1(2),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(2)
    );
  U3_C1_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_XORF_5694,
      O => U3_C1_2_DXMUX_5696
    );
  U3_C1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      I0 => U3_C1_2_CYINIT_5693,
      I1 => U3_Mcount_C1_lut(2),
      O => U3_C1_2_XORF_5694
    );
  U3_C1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      IA => U3_C1_2_CY0F_5692,
      IB => U3_C1_2_CYINIT_5693,
      SEL => U3_C1_2_CYSELF_5675,
      O => U3_Mcount_C1_cy_2_Q
    );
  U3_C1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      IA => U3_C1_2_CY0F_5692,
      IB => U3_C1_2_CY0F_5692,
      SEL => U3_C1_2_CYSELF_5675,
      O => U3_C1_2_CYMUXF2_5670
    );
  U3_C1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_1_Q,
      O => U3_C1_2_CYINIT_5693
    );
  U3_C1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(2),
      O => U3_C1_2_CY0F_5692
    );
  U3_C1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(2),
      O => U3_C1_2_CYSELF_5675
    );
  U3_C1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_XORG_5677,
      O => U3_C1_2_DYMUX_5679
    );
  U3_C1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      I0 => U3_Mcount_C1_cy_2_Q,
      I1 => U3_Mcount_C1_lut(3),
      O => U3_C1_2_XORG_5677
    );
  U3_C1_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_CYMUXFAST_5674,
      O => U3_Mcount_C1_cy_3_Q
    );
  U3_C1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_1_Q,
      O => U3_C1_2_FASTCARRY_5672
    );
  U3_C1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      I0 => U3_C1_2_CYSELG_5661,
      I1 => U3_C1_2_CYSELF_5675,
      O => U3_C1_2_CYAND_5673
    );
  U3_C1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      IA => U3_C1_2_CYMUXG2_5671,
      IB => U3_C1_2_FASTCARRY_5672,
      SEL => U3_C1_2_CYAND_5673,
      O => U3_C1_2_CYMUXFAST_5674
    );
  U3_C1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y41"
    )
    port map (
      IA => U3_C1_2_CY0G_5669,
      IB => U3_C1_2_CYMUXF2_5670,
      SEL => U3_C1_2_CYSELG_5661,
      O => U3_C1_2_CYMUXG2_5671
    );
  U3_C1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(3),
      O => U3_C1_2_CY0G_5669
    );
  U3_C1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(3),
      O => U3_C1_2_CYSELG_5661
    );
  U3_C1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_2_CLKINV_5659
    );
  U3_C1_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_2_CEINV_5658
    );
  U3_Mcount_C1_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y41"
    )
    port map (
      ADR0 => nes_left_reg_4597,
      ADR1 => U3_C1(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(3)
    );
  U3_C1_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_XORF_5747,
      O => U3_C1_4_DXMUX_5749
    );
  U3_C1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      I0 => U3_C1_4_CYINIT_5746,
      I1 => U3_Mcount_C1_lut(4),
      O => U3_C1_4_XORF_5747
    );
  U3_C1_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      IA => U3_C1_4_CY0F_5745,
      IB => U3_C1_4_CYINIT_5746,
      SEL => U3_C1_4_CYSELF_5728,
      O => U3_Mcount_C1_cy_4_Q
    );
  U3_C1_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      IA => U3_C1_4_CY0F_5745,
      IB => U3_C1_4_CY0F_5745,
      SEL => U3_C1_4_CYSELF_5728,
      O => U3_C1_4_CYMUXF2_5723
    );
  U3_C1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_3_Q,
      O => U3_C1_4_CYINIT_5746
    );
  U3_C1_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(4),
      O => U3_C1_4_CY0F_5745
    );
  U3_C1_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(4),
      O => U3_C1_4_CYSELF_5728
    );
  U3_C1_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_XORG_5730,
      O => U3_C1_4_DYMUX_5732
    );
  U3_C1_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      I0 => U3_Mcount_C1_cy_4_Q,
      I1 => U3_Mcount_C1_lut(5),
      O => U3_C1_4_XORG_5730
    );
  U3_C1_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_CYMUXFAST_5727,
      O => U3_Mcount_C1_cy_5_Q
    );
  U3_C1_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_3_Q,
      O => U3_C1_4_FASTCARRY_5725
    );
  U3_C1_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      I0 => U3_C1_4_CYSELG_5714,
      I1 => U3_C1_4_CYSELF_5728,
      O => U3_C1_4_CYAND_5726
    );
  U3_C1_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      IA => U3_C1_4_CYMUXG2_5724,
      IB => U3_C1_4_FASTCARRY_5725,
      SEL => U3_C1_4_CYAND_5726,
      O => U3_C1_4_CYMUXFAST_5727
    );
  U3_C1_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y42"
    )
    port map (
      IA => U3_C1_4_CY0G_5722,
      IB => U3_C1_4_CYMUXF2_5723,
      SEL => U3_C1_4_CYSELG_5714,
      O => U3_C1_4_CYMUXG2_5724
    );
  U3_C1_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(5),
      O => U3_C1_4_CY0G_5722
    );
  U3_C1_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(5),
      O => U3_C1_4_CYSELG_5714
    );
  U3_C1_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_4_CLKINV_5712
    );
  U3_C1_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_4_CEINV_5711
    );
  U3_C1_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_XORF_5800,
      O => U3_C1_6_DXMUX_5802
    );
  U3_C1_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      I0 => U3_C1_6_CYINIT_5799,
      I1 => U3_Mcount_C1_lut(6),
      O => U3_C1_6_XORF_5800
    );
  U3_C1_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      IA => U3_C1_6_CY0F_5798,
      IB => U3_C1_6_CYINIT_5799,
      SEL => U3_C1_6_CYSELF_5781,
      O => U3_Mcount_C1_cy_6_Q
    );
  U3_C1_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      IA => U3_C1_6_CY0F_5798,
      IB => U3_C1_6_CY0F_5798,
      SEL => U3_C1_6_CYSELF_5781,
      O => U3_C1_6_CYMUXF2_5776
    );
  U3_C1_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_5_Q,
      O => U3_C1_6_CYINIT_5799
    );
  U3_C1_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(6),
      O => U3_C1_6_CY0F_5798
    );
  U3_C1_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(6),
      O => U3_C1_6_CYSELF_5781
    );
  U3_C1_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_XORG_5783,
      O => U3_C1_6_DYMUX_5785
    );
  U3_C1_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      I0 => U3_Mcount_C1_cy_6_Q,
      I1 => U3_Mcount_C1_lut(7),
      O => U3_C1_6_XORG_5783
    );
  U3_C1_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_5_Q,
      O => U3_C1_6_FASTCARRY_5778
    );
  U3_C1_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      I0 => U3_C1_6_CYSELG_5767,
      I1 => U3_C1_6_CYSELF_5781,
      O => U3_C1_6_CYAND_5779
    );
  U3_C1_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      IA => U3_C1_6_CYMUXG2_5777,
      IB => U3_C1_6_FASTCARRY_5778,
      SEL => U3_C1_6_CYAND_5779,
      O => U3_C1_6_CYMUXFAST_5780
    );
  U3_C1_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y43"
    )
    port map (
      IA => U3_C1_6_CY0G_5775,
      IB => U3_C1_6_CYMUXF2_5776,
      SEL => U3_C1_6_CYSELG_5767,
      O => U3_C1_6_CYMUXG2_5777
    );
  U3_C1_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(7),
      O => U3_C1_6_CY0G_5775
    );
  U3_C1_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(7),
      O => U3_C1_6_CYSELG_5767
    );
  U3_C1_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_6_CLKINV_5765
    );
  U3_C1_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_6_CEINV_5764
    );
  U3_C1_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_8_XORF_5845,
      O => U3_C1_8_DXMUX_5847
    );
  U3_C1_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y44"
    )
    port map (
      I0 => U3_C1_8_CYINIT_5844,
      I1 => U3_Mcount_C1_lut(8),
      O => U3_C1_8_XORF_5845
    );
  U3_C1_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y44"
    )
    port map (
      IA => U3_C1_8_CY0F_5843,
      IB => U3_C1_8_CYINIT_5844,
      SEL => U3_C1_8_CYSELF_5835,
      O => U3_Mcount_C1_cy_8_Q
    );
  U3_C1_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_CYMUXFAST_5780,
      O => U3_C1_8_CYINIT_5844
    );
  U3_C1_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(8),
      O => U3_C1_8_CY0F_5843
    );
  U3_C1_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(8),
      O => U3_C1_8_CYSELF_5835
    );
  U3_C1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_8_XORG_5827,
      O => U3_C1_8_DYMUX_5829
    );
  U3_C1_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y44"
    )
    port map (
      I0 => U3_Mcount_C1_cy_8_Q,
      I1 => U3_Mcount_C1_lut(9),
      O => U3_C1_8_XORG_5827
    );
  U3_C1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_8_CLKINV_5817
    );
  U3_C1_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_8_CEINV_5816
    );
  U3_C1_8 : X_FF
    generic map(
      LOC => "SLICE_X33Y44",
      INIT => '0'
    )
    port map (
      I => U3_C1_8_DXMUX_5847,
      CE => U3_C1_8_CEINV_5816,
      CLK => U3_C1_8_CLKINV_5817,
      SET => GND,
      RST => GND,
      O => U3_C1(8)
    );
  U3_C2_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y42",
      INIT => '0'
    )
    port map (
      I => U3_C2_0_DYMUX_5878,
      CE => U3_C2_0_CEINV_5862,
      CLK => U3_C2_0_CLKINV_5863,
      SET => GND,
      RST => GND,
      O => U3_C2(1)
    );
  U3_Mcount_C2_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X29Y42"
    )
    port map (
      ADR0 => U3_C2(0),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(0)
    );
  U3_C2_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y42",
      INIT => '0'
    )
    port map (
      I => U3_C2_0_DXMUX_5897,
      CE => U3_C2_0_CEINV_5862,
      CLK => U3_C2_0_CLKINV_5863,
      SET => GND,
      RST => GND,
      O => U3_C2(0)
    );
  U3_C2_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_XORF_5895,
      O => U3_C2_0_DXMUX_5897
    );
  U3_C2_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y42"
    )
    port map (
      I0 => U3_C2_0_CYINIT_5894,
      I1 => U3_Mcount_C2_lut(0),
      O => U3_C2_0_XORF_5895
    );
  U3_C2_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y42"
    )
    port map (
      IA => U3_C2_0_CY0F_5893,
      IB => U3_C2_0_CYINIT_5894,
      SEL => U3_C2_0_CYSELF_5885,
      O => U3_Mcount_C2_cy_0_Q
    );
  U3_C2_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_4597,
      O => U3_C2_0_CYINIT_5894
    );
  U3_C2_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_C2_0_CY0F_5893
    );
  U3_C2_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(0),
      O => U3_C2_0_CYSELF_5885
    );
  U3_C2_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_XORG_5876,
      O => U3_C2_0_DYMUX_5878
    );
  U3_C2_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y42"
    )
    port map (
      I0 => U3_Mcount_C2_cy_0_Q,
      I1 => U3_Mcount_C2_lut(1),
      O => U3_C2_0_XORG_5876
    );
  U3_C2_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_CYMUXG_5875,
      O => U3_Mcount_C2_cy_1_Q
    );
  U3_C2_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X29Y42"
    )
    port map (
      IA => U3_C2_0_CY0G_5873,
      IB => U3_Mcount_C2_cy_0_Q,
      SEL => U3_C2_0_CYSELG_5865,
      O => U3_C2_0_CYMUXG_5875
    );
  U3_C2_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_C2_0_CY0G_5873
    );
  U3_C2_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(1),
      O => U3_C2_0_CYSELG_5865
    );
  U3_C2_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_0_CLKINV_5863
    );
  U3_C2_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_0_CEINV_5862
    );
  U3_Mcount_C2_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y42"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(1)
    );
  U3_C2_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_XORF_5948,
      O => U3_C2_2_DXMUX_5950
    );
  U3_C2_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      I0 => U3_C2_2_CYINIT_5947,
      I1 => U3_Mcount_C2_lut(2),
      O => U3_C2_2_XORF_5948
    );
  U3_C2_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      IA => U3_C2_2_CY0F_5946,
      IB => U3_C2_2_CYINIT_5947,
      SEL => U3_C2_2_CYSELF_5929,
      O => U3_Mcount_C2_cy_2_Q
    );
  U3_C2_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      IA => U3_C2_2_CY0F_5946,
      IB => U3_C2_2_CY0F_5946,
      SEL => U3_C2_2_CYSELF_5929,
      O => U3_C2_2_CYMUXF2_5924
    );
  U3_C2_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_1_Q,
      O => U3_C2_2_CYINIT_5947
    );
  U3_C2_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_C2_2_CY0F_5946
    );
  U3_C2_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(2),
      O => U3_C2_2_CYSELF_5929
    );
  U3_C2_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_XORG_5931,
      O => U3_C2_2_DYMUX_5933
    );
  U3_C2_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      I0 => U3_Mcount_C2_cy_2_Q,
      I1 => U3_Mcount_C2_lut(3),
      O => U3_C2_2_XORG_5931
    );
  U3_C2_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_CYMUXFAST_5928,
      O => U3_Mcount_C2_cy_3_Q
    );
  U3_C2_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_1_Q,
      O => U3_C2_2_FASTCARRY_5926
    );
  U3_C2_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      I0 => U3_C2_2_CYSELG_5915,
      I1 => U3_C2_2_CYSELF_5929,
      O => U3_C2_2_CYAND_5927
    );
  U3_C2_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      IA => U3_C2_2_CYMUXG2_5925,
      IB => U3_C2_2_FASTCARRY_5926,
      SEL => U3_C2_2_CYAND_5927,
      O => U3_C2_2_CYMUXFAST_5928
    );
  U3_C2_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y43"
    )
    port map (
      IA => U3_C2_2_CY0G_5923,
      IB => U3_C2_2_CYMUXF2_5924,
      SEL => U3_C2_2_CYSELG_5915,
      O => U3_C2_2_CYMUXG2_5925
    );
  U3_C2_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_C2_2_CY0G_5923
    );
  U3_C2_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(3),
      O => U3_C2_2_CYSELG_5915
    );
  U3_C2_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_2_CLKINV_5913
    );
  U3_C2_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_2_CEINV_5912
    );
  U3_Mcount_C2_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y43"
    )
    port map (
      ADR0 => U3_C2(3),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(3)
    );
  U3_C2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_XORF_6001,
      O => U3_C2_4_DXMUX_6003
    );
  U3_C2_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      I0 => U3_C2_4_CYINIT_6000,
      I1 => U3_Mcount_C2_lut(4),
      O => U3_C2_4_XORF_6001
    );
  U3_C2_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      IA => U3_C2_4_CY0F_5999,
      IB => U3_C2_4_CYINIT_6000,
      SEL => U3_C2_4_CYSELF_5982,
      O => U3_Mcount_C2_cy_4_Q
    );
  U3_C2_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      IA => U3_C2_4_CY0F_5999,
      IB => U3_C2_4_CY0F_5999,
      SEL => U3_C2_4_CYSELF_5982,
      O => U3_C2_4_CYMUXF2_5977
    );
  U3_C2_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_3_Q,
      O => U3_C2_4_CYINIT_6000
    );
  U3_C2_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(4),
      O => U3_C2_4_CY0F_5999
    );
  U3_C2_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(4),
      O => U3_C2_4_CYSELF_5982
    );
  U3_C2_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_XORG_5984,
      O => U3_C2_4_DYMUX_5986
    );
  U3_C2_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      I0 => U3_Mcount_C2_cy_4_Q,
      I1 => U3_Mcount_C2_lut(5),
      O => U3_C2_4_XORG_5984
    );
  U3_C2_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_CYMUXFAST_5981,
      O => U3_Mcount_C2_cy_5_Q
    );
  U3_C2_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_3_Q,
      O => U3_C2_4_FASTCARRY_5979
    );
  U3_C2_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      I0 => U3_C2_4_CYSELG_5968,
      I1 => U3_C2_4_CYSELF_5982,
      O => U3_C2_4_CYAND_5980
    );
  U3_C2_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      IA => U3_C2_4_CYMUXG2_5978,
      IB => U3_C2_4_FASTCARRY_5979,
      SEL => U3_C2_4_CYAND_5980,
      O => U3_C2_4_CYMUXFAST_5981
    );
  U3_C2_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y44"
    )
    port map (
      IA => U3_C2_4_CY0G_5976,
      IB => U3_C2_4_CYMUXF2_5977,
      SEL => U3_C2_4_CYSELG_5968,
      O => U3_C2_4_CYMUXG2_5978
    );
  U3_C2_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(5),
      O => U3_C2_4_CY0G_5976
    );
  U3_C2_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(5),
      O => U3_C2_4_CYSELG_5968
    );
  U3_C2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_4_CLKINV_5966
    );
  U3_C2_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_4_CEINV_5965
    );
  U3_C2_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_XORF_6054,
      O => U3_C2_6_DXMUX_6056
    );
  U3_C2_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      I0 => U3_C2_6_CYINIT_6053,
      I1 => U3_Mcount_C2_lut(6),
      O => U3_C2_6_XORF_6054
    );
  U3_C2_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      IA => U3_C2_6_CY0F_6052,
      IB => U3_C2_6_CYINIT_6053,
      SEL => U3_C2_6_CYSELF_6035,
      O => U3_Mcount_C2_cy_6_Q
    );
  U3_C2_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      IA => U3_C2_6_CY0F_6052,
      IB => U3_C2_6_CY0F_6052,
      SEL => U3_C2_6_CYSELF_6035,
      O => U3_C2_6_CYMUXF2_6030
    );
  U3_C2_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_5_Q,
      O => U3_C2_6_CYINIT_6053
    );
  U3_C2_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(6),
      O => U3_C2_6_CY0F_6052
    );
  U3_C2_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(6),
      O => U3_C2_6_CYSELF_6035
    );
  U3_C2_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_XORG_6037,
      O => U3_C2_6_DYMUX_6039
    );
  U3_C2_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      I0 => U3_Mcount_C2_cy_6_Q,
      I1 => U3_Mcount_C2_lut(7),
      O => U3_C2_6_XORG_6037
    );
  U3_C2_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_5_Q,
      O => U3_C2_6_FASTCARRY_6032
    );
  U3_C2_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      I0 => U3_C2_6_CYSELG_6021,
      I1 => U3_C2_6_CYSELF_6035,
      O => U3_C2_6_CYAND_6033
    );
  U3_C2_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      IA => U3_C2_6_CYMUXG2_6031,
      IB => U3_C2_6_FASTCARRY_6032,
      SEL => U3_C2_6_CYAND_6033,
      O => U3_C2_6_CYMUXFAST_6034
    );
  U3_C2_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y45"
    )
    port map (
      IA => U3_C2_6_CY0G_6029,
      IB => U3_C2_6_CYMUXF2_6030,
      SEL => U3_C2_6_CYSELG_6021,
      O => U3_C2_6_CYMUXG2_6031
    );
  U3_C2_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(7),
      O => U3_C2_6_CY0G_6029
    );
  U3_C2_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(7),
      O => U3_C2_6_CYSELG_6021
    );
  U3_C2_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_6_CLKINV_6019
    );
  U3_C2_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_6_CEINV_6018
    );
  U3_C2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_8_XORF_6099,
      O => U3_C2_8_DXMUX_6101
    );
  U3_C2_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y46"
    )
    port map (
      I0 => U3_C2_8_CYINIT_6098,
      I1 => U3_Mcount_C2_lut(8),
      O => U3_C2_8_XORF_6099
    );
  U3_C2_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y46"
    )
    port map (
      IA => U3_C2_8_CY0F_6097,
      IB => U3_C2_8_CYINIT_6098,
      SEL => U3_C2_8_CYSELF_6089,
      O => U3_Mcount_C2_cy_8_Q
    );
  U3_C2_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_CYMUXFAST_6034,
      O => U3_C2_8_CYINIT_6098
    );
  U3_C2_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(8),
      O => U3_C2_8_CY0F_6097
    );
  U3_C2_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(8),
      O => U3_C2_8_CYSELF_6089
    );
  U3_C2_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_8_XORG_6081,
      O => U3_C2_8_DYMUX_6083
    );
  U3_C2_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y46"
    )
    port map (
      I0 => U3_Mcount_C2_cy_8_Q,
      I1 => U3_Mcount_C2_lut(9),
      O => U3_C2_8_XORG_6081
    );
  U3_C2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_8_CLKINV_6071
    );
  U3_C2_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_8_CEINV_6070
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X23Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6134,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6135,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6126,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6124,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6135
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6134
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6126
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6124
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X23Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6121,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy(0),
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6113,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6123
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6121
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X23Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6113
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6166,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6166,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6157,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6152
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6166
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6157
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6123,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6154
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X23Y40"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6143,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6157,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6155
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X23Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6153,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6154,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6155,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6156
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6151,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6152,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6143,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6153
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6151
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6143
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6197,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6197,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6188,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6183
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6197
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6188
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6156,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6185
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X23Y41"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6175,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6188,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6186
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X23Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6184,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6185,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6186,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6187
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6182,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6183,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6175,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6184
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6182
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6175
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y42"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6228,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6228,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6221,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6216
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6228
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6221
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6187,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6218
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X23Y42"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6207,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6221,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6219
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X23Y42"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6217,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6218,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6219,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6220
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y42"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6215,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6216,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6207,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6217
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6215
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6207
    );
  U3_spriteon2_cmp_ge0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y43"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CY0F_6259,
      IB => U3_spriteon2_cmp_ge0000_CY0F_6259,
      SEL => U3_spriteon2_cmp_ge0000_CYSELF_6251,
      O => U3_spriteon2_cmp_ge0000_CYMUXF2_6246
    );
  U3_spriteon2_cmp_ge0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_spriteon2_cmp_ge0000_CY0F_6259
    );
  U3_spriteon2_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(8),
      O => U3_spriteon2_cmp_ge0000_CYSELF_6251
    );
  U3_spriteon2_cmp_ge0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_cmp_ge0000_CYMUXFAST_6250,
      O => U3_spriteon2_cmp_ge0000
    );
  U3_spriteon2_cmp_ge0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6220,
      O => U3_spriteon2_cmp_ge0000_FASTCARRY_6248
    );
  U3_spriteon2_cmp_ge0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X23Y43"
    )
    port map (
      I0 => U3_spriteon2_cmp_ge0000_CYSELG_6239,
      I1 => U3_spriteon2_cmp_ge0000_CYSELF_6251,
      O => U3_spriteon2_cmp_ge0000_CYAND_6249
    );
  U3_spriteon2_cmp_ge0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X23Y43"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CYMUXG2_6247,
      IB => U3_spriteon2_cmp_ge0000_FASTCARRY_6248,
      SEL => U3_spriteon2_cmp_ge0000_CYAND_6249,
      O => U3_spriteon2_cmp_ge0000_CYMUXFAST_6250
    );
  U3_spriteon2_cmp_ge0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y43"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CY0G_6245,
      IB => U3_spriteon2_cmp_ge0000_CYMUXF2_6246,
      SEL => U3_spriteon2_cmp_ge0000_CYSELG_6239,
      O => U3_spriteon2_cmp_ge0000_CYMUXG2_6247
    );
  U3_spriteon2_cmp_ge0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_spriteon2_cmp_ge0000_CY0G_6245
    );
  U3_spriteon2_cmp_ge0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(9),
      O => U3_spriteon2_cmp_ge0000_CYSELG_6239
    );
  U2_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      O => U2_Result_0_LOGIC_ZERO_6276
    );
  U2_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      O => U2_Result_0_LOGIC_ONE_6293
    );
  U2_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORF_6294,
      O => U2_Result(0)
    );
  U2_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      I0 => U2_Result_0_CYINIT_6292,
      I1 => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_XORF_6294
    );
  U2_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => U2_Result_0_LOGIC_ONE_6293,
      IB => U2_Result_0_CYINIT_6292,
      SEL => U2_Result_0_CYSELF_6283,
      O => U2_Mcount_vcs_cy_0_Q
    );
  U2_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_BXINV_6281,
      O => U2_Result_0_CYINIT_6292
    );
  U2_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_CYSELF_6283
    );
  U2_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_BXINV_6281
    );
  U2_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORG_6279,
      O => U2_Result(1)
    );
  U2_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_0_Q,
      I1 => U2_Result_0_G,
      O => U2_Result_0_XORG_6279
    );
  U2_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_CYMUXG_6278,
      O => U2_Mcount_vcs_cy_1_Q
    );
  U2_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => U2_Result_0_LOGIC_ZERO_6276,
      IB => U2_Mcount_vcs_cy_0_Q,
      SEL => U2_Result_0_CYSELG_6267,
      O => U2_Result_0_CYMUXG_6278
    );
  U2_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_G,
      O => U2_Result_0_CYSELG_6267
    );
  U2_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      O => U2_Result_2_LOGIC_ZERO_6312
    );
  U2_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORF_6332,
      O => U2_Result(2)
    );
  U2_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      I0 => U2_Result_2_CYINIT_6331,
      I1 => U2_Result_2_F,
      O => U2_Result_2_XORF_6332
    );
  U2_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_6312,
      IB => U2_Result_2_CYINIT_6331,
      SEL => U2_Result_2_CYSELF_6318,
      O => U2_Mcount_vcs_cy_2_Q
    );
  U2_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_6312,
      IB => U2_Result_2_LOGIC_ZERO_6312,
      SEL => U2_Result_2_CYSELF_6318,
      O => U2_Result_2_CYMUXF2_6313
    );
  U2_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_CYINIT_6331
    );
  U2_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_F,
      O => U2_Result_2_CYSELF_6318
    );
  U2_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORG_6320,
      O => U2_Result(3)
    );
  U2_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_2_Q,
      I1 => U2_Result_2_G,
      O => U2_Result_2_XORG_6320
    );
  U2_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_CYMUXFAST_6317,
      O => U2_Mcount_vcs_cy_3_Q
    );
  U2_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_FASTCARRY_6315
    );
  U2_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      I0 => U2_Result_2_CYSELG_6303,
      I1 => U2_Result_2_CYSELF_6318,
      O => U2_Result_2_CYAND_6316
    );
  U2_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      IA => U2_Result_2_CYMUXG2_6314,
      IB => U2_Result_2_FASTCARRY_6315,
      SEL => U2_Result_2_CYAND_6316,
      O => U2_Result_2_CYMUXFAST_6317
    );
  U2_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_6312,
      IB => U2_Result_2_CYMUXF2_6313,
      SEL => U2_Result_2_CYSELG_6303,
      O => U2_Result_2_CYMUXG2_6314
    );
  U2_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_G,
      O => U2_Result_2_CYSELG_6303
    );
  U2_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      O => U2_Result_4_LOGIC_ZERO_6350
    );
  U2_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORF_6370,
      O => U2_Result(4)
    );
  U2_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      I0 => U2_Result_4_CYINIT_6369,
      I1 => U2_Result_4_F,
      O => U2_Result_4_XORF_6370
    );
  U2_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_6350,
      IB => U2_Result_4_CYINIT_6369,
      SEL => U2_Result_4_CYSELF_6356,
      O => U2_Mcount_vcs_cy_4_Q
    );
  U2_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_6350,
      IB => U2_Result_4_LOGIC_ZERO_6350,
      SEL => U2_Result_4_CYSELF_6356,
      O => U2_Result_4_CYMUXF2_6351
    );
  U2_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_CYINIT_6369
    );
  U2_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_F,
      O => U2_Result_4_CYSELF_6356
    );
  U2_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORG_6358,
      O => U2_Result(5)
    );
  U2_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_4_Q,
      I1 => U2_Result_4_G,
      O => U2_Result_4_XORG_6358
    );
  U2_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_CYMUXFAST_6355,
      O => U2_Mcount_vcs_cy_5_Q
    );
  U2_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_FASTCARRY_6353
    );
  U2_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      I0 => U2_Result_4_CYSELG_6341,
      I1 => U2_Result_4_CYSELF_6356,
      O => U2_Result_4_CYAND_6354
    );
  U2_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      IA => U2_Result_4_CYMUXG2_6352,
      IB => U2_Result_4_FASTCARRY_6353,
      SEL => U2_Result_4_CYAND_6354,
      O => U2_Result_4_CYMUXFAST_6355
    );
  U2_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_6350,
      IB => U2_Result_4_CYMUXF2_6351,
      SEL => U2_Result_4_CYSELG_6341,
      O => U2_Result_4_CYMUXG2_6352
    );
  U2_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_G,
      O => U2_Result_4_CYSELG_6341
    );
  U2_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      O => U2_Result_6_LOGIC_ZERO_6388
    );
  U2_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORF_6408,
      O => U2_Result(6)
    );
  U2_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      I0 => U2_Result_6_CYINIT_6407,
      I1 => U2_Result_6_F,
      O => U2_Result_6_XORF_6408
    );
  U2_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_6388,
      IB => U2_Result_6_CYINIT_6407,
      SEL => U2_Result_6_CYSELF_6394,
      O => U2_Mcount_vcs_cy_6_Q
    );
  U2_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_6388,
      IB => U2_Result_6_LOGIC_ZERO_6388,
      SEL => U2_Result_6_CYSELF_6394,
      O => U2_Result_6_CYMUXF2_6389
    );
  U2_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_CYINIT_6407
    );
  U2_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_F,
      O => U2_Result_6_CYSELF_6394
    );
  U2_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORG_6396,
      O => U2_Result(7)
    );
  U2_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_6_Q,
      I1 => U2_Result_6_G,
      O => U2_Result_6_XORG_6396
    );
  U2_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_FASTCARRY_6391
    );
  U2_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      I0 => U2_Result_6_CYSELG_6379,
      I1 => U2_Result_6_CYSELF_6394,
      O => U2_Result_6_CYAND_6392
    );
  U2_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      IA => U2_Result_6_CYMUXG2_6390,
      IB => U2_Result_6_FASTCARRY_6391,
      SEL => U2_Result_6_CYAND_6392,
      O => U2_Result_6_CYMUXFAST_6393
    );
  U2_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y24"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_6388,
      IB => U2_Result_6_CYMUXF2_6389,
      SEL => U2_Result_6_CYSELG_6379,
      O => U2_Result_6_CYMUXG2_6390
    );
  U2_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_G,
      O => U2_Result_6_CYSELG_6379
    );
  U2_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y25"
    )
    port map (
      O => U2_Result_8_LOGIC_ZERO_6438
    );
  U2_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORF_6439,
      O => U2_Result(8)
    );
  U2_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y25"
    )
    port map (
      I0 => U2_Result_8_CYINIT_6437,
      I1 => U2_Result_8_F,
      O => U2_Result_8_XORF_6439
    );
  U2_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y25"
    )
    port map (
      IA => U2_Result_8_LOGIC_ZERO_6438,
      IB => U2_Result_8_CYINIT_6437,
      SEL => U2_Result_8_CYSELF_6428,
      O => U2_Mcount_vcs_cy_8_Q
    );
  U2_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_CYMUXFAST_6393,
      O => U2_Result_8_CYINIT_6437
    );
  U2_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_F,
      O => U2_Result_8_CYSELF_6428
    );
  U2_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORG_6425,
      O => U2_Result(9)
    );
  U2_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y25"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_8_Q,
      I1 => U2_vcs_9_rt_6422,
      O => U2_Result_8_XORG_6425
    );
  U3_xpix1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_XORF_6475,
      O => U3_xpix1(0)
    );
  U3_xpix1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y32"
    )
    port map (
      I0 => U3_xpix1_0_CYINIT_6474,
      I1 => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1_0_XORF_6475
    );
  U3_xpix1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y32"
    )
    port map (
      IA => U3_xpix1_0_CY0F_6473,
      IB => U3_xpix1_0_CYINIT_6474,
      SEL => U3_xpix1_0_CYSELF_6465,
      O => U3_Msub_xpix1_Madd_cy(0)
    );
  U3_xpix1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_BXINV_6463,
      O => U3_xpix1_0_CYINIT_6474
    );
  U3_xpix1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_xpix1_0_CY0F_6473
    );
  U3_xpix1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1_0_CYSELF_6465
    );
  U3_xpix1_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_xpix1_0_BXINV_6463
    );
  U3_xpix1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_XORG_6461,
      O => U3_xpix1(1)
    );
  U3_xpix1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y32"
    )
    port map (
      I0 => U3_Msub_xpix1_Madd_cy(0),
      I1 => U3_Msub_xpix1_Madd_lut(1),
      O => U3_xpix1_0_XORG_6461
    );
  U3_xpix1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_CYMUXG_6460,
      O => U3_Msub_xpix1_Madd_cy(1)
    );
  U3_xpix1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X35Y32"
    )
    port map (
      IA => U3_xpix1_0_CY0G_6458,
      IB => U3_Msub_xpix1_Madd_cy(0),
      SEL => U3_xpix1_0_CYSELG_6450,
      O => U3_xpix1_0_CYMUXG_6460
    );
  U3_xpix1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_xpix1_0_CY0G_6458
    );
  U3_xpix1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(1),
      O => U3_xpix1_0_CYSELG_6450
    );
  U3_xpix1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_XORF_6514,
      O => U3_xpix1(2)
    );
  U3_xpix1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      I0 => U3_xpix1_2_CYINIT_6513,
      I1 => U3_Msub_xpix1_Madd_lut(2),
      O => U3_xpix1_2_XORF_6514
    );
  U3_xpix1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      IA => U3_xpix1_2_CY0F_6512,
      IB => U3_xpix1_2_CYINIT_6513,
      SEL => U3_xpix1_2_CYSELF_6500,
      O => U3_Msub_xpix1_Madd_cy(2)
    );
  U3_xpix1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      IA => U3_xpix1_2_CY0F_6512,
      IB => U3_xpix1_2_CY0F_6512,
      SEL => U3_xpix1_2_CYSELF_6500,
      O => U3_xpix1_2_CYMUXF2_6495
    );
  U3_xpix1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_cy(1),
      O => U3_xpix1_2_CYINIT_6513
    );
  U3_xpix1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_xpix1_2_CY0F_6512
    );
  U3_xpix1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(2),
      O => U3_xpix1_2_CYSELF_6500
    );
  U3_xpix1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_XORG_6502,
      O => U3_xpix1(3)
    );
  U3_xpix1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      I0 => U3_Msub_xpix1_Madd_cy(2),
      I1 => U3_Msub_xpix1_Madd_lut(3),
      O => U3_xpix1_2_XORG_6502
    );
  U3_xpix1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_cy(1),
      O => U3_xpix1_2_FASTCARRY_6497
    );
  U3_xpix1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      I0 => U3_xpix1_2_CYSELG_6486,
      I1 => U3_xpix1_2_CYSELF_6500,
      O => U3_xpix1_2_CYAND_6498
    );
  U3_xpix1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      IA => U3_xpix1_2_CYMUXG2_6496,
      IB => U3_xpix1_2_FASTCARRY_6497,
      SEL => U3_xpix1_2_CYAND_6498,
      O => U3_xpix1_2_CYMUXFAST_6499
    );
  U3_xpix1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y33"
    )
    port map (
      IA => U3_xpix1_2_CY0G_6494,
      IB => U3_xpix1_2_CYMUXF2_6495,
      SEL => U3_xpix1_2_CYSELG_6486,
      O => U3_xpix1_2_CYMUXG2_6496
    );
  U3_xpix1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_xpix1_2_CY0G_6494
    );
  U3_xpix1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(3),
      O => U3_xpix1_2_CYSELG_6486
    );
  U3_xpix1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_4_XORF_6541,
      O => U3_xpix1(4)
    );
  U3_xpix1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y34"
    )
    port map (
      I0 => U3_xpix1_4_CYINIT_6540,
      I1 => U3_Msub_xpix1_Madd_lut(4),
      O => U3_xpix1_4_XORF_6541
    );
  U3_xpix1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_CYMUXFAST_6499,
      O => U3_xpix1_4_CYINIT_6540
    );
  U3_xpix1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon1_addsub0001_lut_8_bdd0,
      O => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0
    );
  x7_clkdiv_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      O => x7_clkdiv_0_LOGIC_ZERO_6563
    );
  x7_clkdiv_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      O => x7_clkdiv_0_LOGIC_ONE_6587
    );
  x7_clkdiv_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_XORF_6588,
      O => x7_clkdiv_0_DXMUX_6590
    );
  x7_clkdiv_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      I0 => x7_clkdiv_0_CYINIT_6586,
      I1 => x7_Mcount_clkdiv_lut(0),
      O => x7_clkdiv_0_XORF_6588
    );
  x7_clkdiv_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      IA => x7_clkdiv_0_LOGIC_ONE_6587,
      IB => x7_clkdiv_0_CYINIT_6586,
      SEL => x7_clkdiv_0_CYSELF_6577,
      O => x7_Mcount_clkdiv_cy_0_Q
    );
  x7_clkdiv_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_BXINV_6575,
      O => x7_clkdiv_0_CYINIT_6586
    );
  x7_clkdiv_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_lut(0),
      O => x7_clkdiv_0_CYSELF_6577
    );
  x7_clkdiv_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => x7_clkdiv_0_BXINV_6575
    );
  x7_clkdiv_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_XORG_6566,
      O => x7_clkdiv_0_DYMUX_6568
    );
  x7_clkdiv_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_0_Q,
      I1 => x7_clkdiv_0_G,
      O => x7_clkdiv_0_XORG_6566
    );
  x7_clkdiv_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_CYMUXG_6565,
      O => x7_Mcount_clkdiv_cy_1_Q
    );
  x7_clkdiv_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      IA => x7_clkdiv_0_LOGIC_ZERO_6563,
      IB => x7_Mcount_clkdiv_cy_0_Q,
      SEL => x7_clkdiv_0_CYSELG_6554,
      O => x7_clkdiv_0_CYMUXG_6565
    );
  x7_clkdiv_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_G,
      O => x7_clkdiv_0_CYSELG_6554
    );
  x7_clkdiv_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_0_SRINV_6552
    );
  x7_clkdiv_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_0_CLKINV_6551
    );
  x7_clkdiv_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      O => x7_clkdiv_2_LOGIC_ZERO_6617
    );
  x7_clkdiv_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_XORF_6644,
      O => x7_clkdiv_2_DXMUX_6646
    );
  x7_clkdiv_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      I0 => x7_clkdiv_2_CYINIT_6643,
      I1 => x7_clkdiv_2_F,
      O => x7_clkdiv_2_XORF_6644
    );
  x7_clkdiv_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_6617,
      IB => x7_clkdiv_2_CYINIT_6643,
      SEL => x7_clkdiv_2_CYSELF_6623,
      O => x7_Mcount_clkdiv_cy_2_Q
    );
  x7_clkdiv_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_6617,
      IB => x7_clkdiv_2_LOGIC_ZERO_6617,
      SEL => x7_clkdiv_2_CYSELF_6623,
      O => x7_clkdiv_2_CYMUXF2_6618
    );
  x7_clkdiv_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_1_Q,
      O => x7_clkdiv_2_CYINIT_6643
    );
  x7_clkdiv_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_F,
      O => x7_clkdiv_2_CYSELF_6623
    );
  x7_clkdiv_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_XORG_6625,
      O => x7_clkdiv_2_DYMUX_6627
    );
  x7_clkdiv_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_2_Q,
      I1 => x7_clkdiv_2_G,
      O => x7_clkdiv_2_XORG_6625
    );
  x7_clkdiv_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_CYMUXFAST_6622,
      O => x7_Mcount_clkdiv_cy_3_Q
    );
  x7_clkdiv_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_1_Q,
      O => x7_clkdiv_2_FASTCARRY_6620
    );
  x7_clkdiv_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      I0 => x7_clkdiv_2_CYSELG_6608,
      I1 => x7_clkdiv_2_CYSELF_6623,
      O => x7_clkdiv_2_CYAND_6621
    );
  x7_clkdiv_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      IA => x7_clkdiv_2_CYMUXG2_6619,
      IB => x7_clkdiv_2_FASTCARRY_6620,
      SEL => x7_clkdiv_2_CYAND_6621,
      O => x7_clkdiv_2_CYMUXFAST_6622
    );
  x7_clkdiv_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y72"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_6617,
      IB => x7_clkdiv_2_CYMUXF2_6618,
      SEL => x7_clkdiv_2_CYSELG_6608,
      O => x7_clkdiv_2_CYMUXG2_6619
    );
  x7_clkdiv_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_G,
      O => x7_clkdiv_2_CYSELG_6608
    );
  x7_clkdiv_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_2_SRINV_6606
    );
  x7_clkdiv_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_2_CLKINV_6605
    );
  x7_clkdiv_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      O => x7_clkdiv_4_LOGIC_ZERO_6673
    );
  x7_clkdiv_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_XORF_6700,
      O => x7_clkdiv_4_DXMUX_6702
    );
  x7_clkdiv_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      I0 => x7_clkdiv_4_CYINIT_6699,
      I1 => x7_clkdiv_4_F,
      O => x7_clkdiv_4_XORF_6700
    );
  x7_clkdiv_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_6673,
      IB => x7_clkdiv_4_CYINIT_6699,
      SEL => x7_clkdiv_4_CYSELF_6679,
      O => x7_Mcount_clkdiv_cy_4_Q
    );
  x7_clkdiv_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_6673,
      IB => x7_clkdiv_4_LOGIC_ZERO_6673,
      SEL => x7_clkdiv_4_CYSELF_6679,
      O => x7_clkdiv_4_CYMUXF2_6674
    );
  x7_clkdiv_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_3_Q,
      O => x7_clkdiv_4_CYINIT_6699
    );
  x7_clkdiv_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_F,
      O => x7_clkdiv_4_CYSELF_6679
    );
  x7_clkdiv_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_XORG_6681,
      O => x7_clkdiv_4_DYMUX_6683
    );
  x7_clkdiv_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_4_Q,
      I1 => x7_clkdiv_4_G,
      O => x7_clkdiv_4_XORG_6681
    );
  x7_clkdiv_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_CYMUXFAST_6678,
      O => x7_Mcount_clkdiv_cy_5_Q
    );
  x7_clkdiv_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_3_Q,
      O => x7_clkdiv_4_FASTCARRY_6676
    );
  x7_clkdiv_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      I0 => x7_clkdiv_4_CYSELG_6664,
      I1 => x7_clkdiv_4_CYSELF_6679,
      O => x7_clkdiv_4_CYAND_6677
    );
  x7_clkdiv_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      IA => x7_clkdiv_4_CYMUXG2_6675,
      IB => x7_clkdiv_4_FASTCARRY_6676,
      SEL => x7_clkdiv_4_CYAND_6677,
      O => x7_clkdiv_4_CYMUXFAST_6678
    );
  x7_clkdiv_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y73"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_6673,
      IB => x7_clkdiv_4_CYMUXF2_6674,
      SEL => x7_clkdiv_4_CYSELG_6664,
      O => x7_clkdiv_4_CYMUXG2_6675
    );
  x7_clkdiv_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_G,
      O => x7_clkdiv_4_CYSELG_6664
    );
  x7_clkdiv_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_4_SRINV_6662
    );
  x7_clkdiv_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_4_CLKINV_6661
    );
  x7_clkdiv_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      O => x7_clkdiv_6_LOGIC_ZERO_6729
    );
  x7_clkdiv_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_XORF_6756,
      O => x7_clkdiv_6_DXMUX_6758
    );
  x7_clkdiv_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      I0 => x7_clkdiv_6_CYINIT_6755,
      I1 => x7_clkdiv_6_F,
      O => x7_clkdiv_6_XORF_6756
    );
  x7_clkdiv_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_6729,
      IB => x7_clkdiv_6_CYINIT_6755,
      SEL => x7_clkdiv_6_CYSELF_6735,
      O => x7_Mcount_clkdiv_cy_6_Q
    );
  x7_clkdiv_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_6729,
      IB => x7_clkdiv_6_LOGIC_ZERO_6729,
      SEL => x7_clkdiv_6_CYSELF_6735,
      O => x7_clkdiv_6_CYMUXF2_6730
    );
  x7_clkdiv_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_5_Q,
      O => x7_clkdiv_6_CYINIT_6755
    );
  x7_clkdiv_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_F,
      O => x7_clkdiv_6_CYSELF_6735
    );
  x7_clkdiv_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_XORG_6737,
      O => x7_clkdiv_6_DYMUX_6739
    );
  x7_clkdiv_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_6_Q,
      I1 => x7_clkdiv_6_G,
      O => x7_clkdiv_6_XORG_6737
    );
  x7_clkdiv_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_CYMUXFAST_6734,
      O => x7_Mcount_clkdiv_cy_7_Q
    );
  x7_clkdiv_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_5_Q,
      O => x7_clkdiv_6_FASTCARRY_6732
    );
  x7_clkdiv_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      I0 => x7_clkdiv_6_CYSELG_6720,
      I1 => x7_clkdiv_6_CYSELF_6735,
      O => x7_clkdiv_6_CYAND_6733
    );
  x7_clkdiv_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_6_CYMUXG2_6731,
      IB => x7_clkdiv_6_FASTCARRY_6732,
      SEL => x7_clkdiv_6_CYAND_6733,
      O => x7_clkdiv_6_CYMUXFAST_6734
    );
  x7_clkdiv_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_6729,
      IB => x7_clkdiv_6_CYMUXF2_6730,
      SEL => x7_clkdiv_6_CYSELG_6720,
      O => x7_clkdiv_6_CYMUXG2_6731
    );
  x7_clkdiv_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_G,
      O => x7_clkdiv_6_CYSELG_6720
    );
  x7_clkdiv_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_6_SRINV_6718
    );
  x7_clkdiv_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_6_CLKINV_6717
    );
  x7_clkdiv_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      O => x7_clkdiv_8_LOGIC_ZERO_6785
    );
  x7_clkdiv_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_XORF_6812,
      O => x7_clkdiv_8_DXMUX_6814
    );
  x7_clkdiv_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_clkdiv_8_CYINIT_6811,
      I1 => x7_clkdiv_8_F,
      O => x7_clkdiv_8_XORF_6812
    );
  x7_clkdiv_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_6785,
      IB => x7_clkdiv_8_CYINIT_6811,
      SEL => x7_clkdiv_8_CYSELF_6791,
      O => x7_Mcount_clkdiv_cy_8_Q
    );
  x7_clkdiv_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_6785,
      IB => x7_clkdiv_8_LOGIC_ZERO_6785,
      SEL => x7_clkdiv_8_CYSELF_6791,
      O => x7_clkdiv_8_CYMUXF2_6786
    );
  x7_clkdiv_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_7_Q,
      O => x7_clkdiv_8_CYINIT_6811
    );
  x7_clkdiv_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_F,
      O => x7_clkdiv_8_CYSELF_6791
    );
  x7_clkdiv_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_XORG_6793,
      O => x7_clkdiv_8_DYMUX_6795
    );
  x7_clkdiv_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_8_Q,
      I1 => x7_clkdiv_8_G,
      O => x7_clkdiv_8_XORG_6793
    );
  x7_clkdiv_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_CYMUXFAST_6790,
      O => x7_Mcount_clkdiv_cy_9_Q
    );
  x7_clkdiv_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_7_Q,
      O => x7_clkdiv_8_FASTCARRY_6788
    );
  x7_clkdiv_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_clkdiv_8_CYSELG_6776,
      I1 => x7_clkdiv_8_CYSELF_6791,
      O => x7_clkdiv_8_CYAND_6789
    );
  x7_clkdiv_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_8_CYMUXG2_6787,
      IB => x7_clkdiv_8_FASTCARRY_6788,
      SEL => x7_clkdiv_8_CYAND_6789,
      O => x7_clkdiv_8_CYMUXFAST_6790
    );
  x7_clkdiv_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_6785,
      IB => x7_clkdiv_8_CYMUXF2_6786,
      SEL => x7_clkdiv_8_CYSELG_6776,
      O => x7_clkdiv_8_CYMUXG2_6787
    );
  x7_clkdiv_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_G,
      O => x7_clkdiv_8_CYSELG_6776
    );
  x7_clkdiv_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_8_SRINV_6774
    );
  x7_clkdiv_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_8_CLKINV_6773
    );
  x7_clkdiv_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      O => x7_clkdiv_10_LOGIC_ZERO_6841
    );
  x7_clkdiv_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_XORF_6868,
      O => x7_clkdiv_10_DXMUX_6870
    );
  x7_clkdiv_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_clkdiv_10_CYINIT_6867,
      I1 => x7_clkdiv_10_F,
      O => x7_clkdiv_10_XORF_6868
    );
  x7_clkdiv_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_6841,
      IB => x7_clkdiv_10_CYINIT_6867,
      SEL => x7_clkdiv_10_CYSELF_6847,
      O => x7_Mcount_clkdiv_cy_10_Q
    );
  x7_clkdiv_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_6841,
      IB => x7_clkdiv_10_LOGIC_ZERO_6841,
      SEL => x7_clkdiv_10_CYSELF_6847,
      O => x7_clkdiv_10_CYMUXF2_6842
    );
  x7_clkdiv_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_9_Q,
      O => x7_clkdiv_10_CYINIT_6867
    );
  x7_clkdiv_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_F,
      O => x7_clkdiv_10_CYSELF_6847
    );
  x7_clkdiv_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_XORG_6849,
      O => x7_clkdiv_10_DYMUX_6851
    );
  x7_clkdiv_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_10_Q,
      I1 => x7_clkdiv_10_G,
      O => x7_clkdiv_10_XORG_6849
    );
  x7_clkdiv_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_CYMUXFAST_6846,
      O => x7_Mcount_clkdiv_cy_11_Q
    );
  x7_clkdiv_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_9_Q,
      O => x7_clkdiv_10_FASTCARRY_6844
    );
  x7_clkdiv_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_clkdiv_10_CYSELG_6832,
      I1 => x7_clkdiv_10_CYSELF_6847,
      O => x7_clkdiv_10_CYAND_6845
    );
  x7_clkdiv_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_10_CYMUXG2_6843,
      IB => x7_clkdiv_10_FASTCARRY_6844,
      SEL => x7_clkdiv_10_CYAND_6845,
      O => x7_clkdiv_10_CYMUXFAST_6846
    );
  x7_clkdiv_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_6841,
      IB => x7_clkdiv_10_CYMUXF2_6842,
      SEL => x7_clkdiv_10_CYSELG_6832,
      O => x7_clkdiv_10_CYMUXG2_6843
    );
  x7_clkdiv_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_G,
      O => x7_clkdiv_10_CYSELG_6832
    );
  x7_clkdiv_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_10_SRINV_6830
    );
  x7_clkdiv_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_10_CLKINV_6829
    );
  x7_clkdiv_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      O => x7_clkdiv_12_LOGIC_ZERO_6897
    );
  x7_clkdiv_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_XORF_6924,
      O => x7_clkdiv_12_DXMUX_6926
    );
  x7_clkdiv_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_clkdiv_12_CYINIT_6923,
      I1 => x7_clkdiv_12_F,
      O => x7_clkdiv_12_XORF_6924
    );
  x7_clkdiv_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_6897,
      IB => x7_clkdiv_12_CYINIT_6923,
      SEL => x7_clkdiv_12_CYSELF_6903,
      O => x7_Mcount_clkdiv_cy_12_Q
    );
  x7_clkdiv_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_6897,
      IB => x7_clkdiv_12_LOGIC_ZERO_6897,
      SEL => x7_clkdiv_12_CYSELF_6903,
      O => x7_clkdiv_12_CYMUXF2_6898
    );
  x7_clkdiv_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_11_Q,
      O => x7_clkdiv_12_CYINIT_6923
    );
  x7_clkdiv_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_F,
      O => x7_clkdiv_12_CYSELF_6903
    );
  x7_clkdiv_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_XORG_6905,
      O => x7_clkdiv_12_DYMUX_6907
    );
  x7_clkdiv_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_12_Q,
      I1 => x7_clkdiv_12_G,
      O => x7_clkdiv_12_XORG_6905
    );
  x7_clkdiv_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_CYMUXFAST_6902,
      O => x7_Mcount_clkdiv_cy_13_Q
    );
  x7_clkdiv_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_11_Q,
      O => x7_clkdiv_12_FASTCARRY_6900
    );
  x7_clkdiv_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_clkdiv_12_CYSELG_6888,
      I1 => x7_clkdiv_12_CYSELF_6903,
      O => x7_clkdiv_12_CYAND_6901
    );
  x7_clkdiv_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_12_CYMUXG2_6899,
      IB => x7_clkdiv_12_FASTCARRY_6900,
      SEL => x7_clkdiv_12_CYAND_6901,
      O => x7_clkdiv_12_CYMUXFAST_6902
    );
  x7_clkdiv_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_6897,
      IB => x7_clkdiv_12_CYMUXF2_6898,
      SEL => x7_clkdiv_12_CYSELG_6888,
      O => x7_clkdiv_12_CYMUXG2_6899
    );
  x7_clkdiv_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_G,
      O => x7_clkdiv_12_CYSELG_6888
    );
  x7_clkdiv_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_12_SRINV_6886
    );
  x7_clkdiv_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_12_CLKINV_6885
    );
  x7_clkdiv_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      O => x7_clkdiv_14_LOGIC_ZERO_6953
    );
  x7_clkdiv_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_XORF_6980,
      O => x7_clkdiv_14_DXMUX_6982
    );
  x7_clkdiv_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_clkdiv_14_CYINIT_6979,
      I1 => x7_clkdiv_14_F,
      O => x7_clkdiv_14_XORF_6980
    );
  x7_clkdiv_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_6953,
      IB => x7_clkdiv_14_CYINIT_6979,
      SEL => x7_clkdiv_14_CYSELF_6959,
      O => x7_Mcount_clkdiv_cy_14_Q
    );
  x7_clkdiv_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_6953,
      IB => x7_clkdiv_14_LOGIC_ZERO_6953,
      SEL => x7_clkdiv_14_CYSELF_6959,
      O => x7_clkdiv_14_CYMUXF2_6954
    );
  x7_clkdiv_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_13_Q,
      O => x7_clkdiv_14_CYINIT_6979
    );
  x7_clkdiv_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_F,
      O => x7_clkdiv_14_CYSELF_6959
    );
  x7_clkdiv_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_XORG_6961,
      O => x7_clkdiv_14_DYMUX_6963
    );
  x7_clkdiv_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_14_Q,
      I1 => x7_clkdiv_14_G,
      O => x7_clkdiv_14_XORG_6961
    );
  x7_clkdiv_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_CYMUXFAST_6958,
      O => x7_Mcount_clkdiv_cy_15_Q
    );
  x7_clkdiv_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_13_Q,
      O => x7_clkdiv_14_FASTCARRY_6956
    );
  x7_clkdiv_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_clkdiv_14_CYSELG_6944,
      I1 => x7_clkdiv_14_CYSELF_6959,
      O => x7_clkdiv_14_CYAND_6957
    );
  x7_clkdiv_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_14_CYMUXG2_6955,
      IB => x7_clkdiv_14_FASTCARRY_6956,
      SEL => x7_clkdiv_14_CYAND_6957,
      O => x7_clkdiv_14_CYMUXFAST_6958
    );
  x7_clkdiv_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_6953,
      IB => x7_clkdiv_14_CYMUXF2_6954,
      SEL => x7_clkdiv_14_CYSELG_6944,
      O => x7_clkdiv_14_CYMUXG2_6955
    );
  x7_clkdiv_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_G,
      O => x7_clkdiv_14_CYSELG_6944
    );
  x7_clkdiv_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_14_SRINV_6942
    );
  x7_clkdiv_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_14_CLKINV_6941
    );
  x7_clkdiv_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      O => x7_clkdiv_16_LOGIC_ZERO_7009
    );
  x7_clkdiv_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_XORF_7036,
      O => x7_clkdiv_16_DXMUX_7038
    );
  x7_clkdiv_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_clkdiv_16_CYINIT_7035,
      I1 => x7_clkdiv_16_F,
      O => x7_clkdiv_16_XORF_7036
    );
  x7_clkdiv_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7009,
      IB => x7_clkdiv_16_CYINIT_7035,
      SEL => x7_clkdiv_16_CYSELF_7015,
      O => x7_Mcount_clkdiv_cy_16_Q
    );
  x7_clkdiv_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7009,
      IB => x7_clkdiv_16_LOGIC_ZERO_7009,
      SEL => x7_clkdiv_16_CYSELF_7015,
      O => x7_clkdiv_16_CYMUXF2_7010
    );
  x7_clkdiv_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_15_Q,
      O => x7_clkdiv_16_CYINIT_7035
    );
  x7_clkdiv_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_F,
      O => x7_clkdiv_16_CYSELF_7015
    );
  x7_clkdiv_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_XORG_7017,
      O => x7_clkdiv_16_DYMUX_7019
    );
  x7_clkdiv_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_16_Q,
      I1 => x7_clkdiv_16_G,
      O => x7_clkdiv_16_XORG_7017
    );
  x7_clkdiv_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_15_Q,
      O => x7_clkdiv_16_FASTCARRY_7012
    );
  x7_clkdiv_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_clkdiv_16_CYSELG_7000,
      I1 => x7_clkdiv_16_CYSELF_7015,
      O => x7_clkdiv_16_CYAND_7013
    );
  x7_clkdiv_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_16_CYMUXG2_7011,
      IB => x7_clkdiv_16_FASTCARRY_7012,
      SEL => x7_clkdiv_16_CYAND_7013,
      O => x7_clkdiv_16_CYMUXFAST_7014
    );
  x7_clkdiv_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7009,
      IB => x7_clkdiv_16_CYMUXF2_7010,
      SEL => x7_clkdiv_16_CYSELG_7000,
      O => x7_clkdiv_16_CYMUXG2_7011
    );
  x7_clkdiv_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_G,
      O => x7_clkdiv_16_CYSELG_7000
    );
  x7_clkdiv_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_16_SRINV_6998
    );
  x7_clkdiv_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_16_CLKINV_6997
    );
  x7_clkdiv_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      O => x7_clkdiv_18_LOGIC_ZERO_7084
    );
  x7_clkdiv_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_XORF_7085,
      O => x7_clkdiv_18_DXMUX_7087
    );
  x7_clkdiv_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => x7_clkdiv_18_CYINIT_7083,
      I1 => x7_clkdiv_18_F,
      O => x7_clkdiv_18_XORF_7085
    );
  x7_clkdiv_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => x7_clkdiv_18_LOGIC_ZERO_7084,
      IB => x7_clkdiv_18_CYINIT_7083,
      SEL => x7_clkdiv_18_CYSELF_7074,
      O => x7_Mcount_clkdiv_cy_18_Q
    );
  x7_clkdiv_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_CYMUXFAST_7014,
      O => x7_clkdiv_18_CYINIT_7083
    );
  x7_clkdiv_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_F,
      O => x7_clkdiv_18_CYSELF_7074
    );
  x7_clkdiv_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_XORG_7064,
      O => x7_clkdiv_18_DYMUX_7066
    );
  x7_clkdiv_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_18_Q,
      I1 => x7_clkdiv_19_rt_7061,
      O => x7_clkdiv_18_XORG_7064
    );
  x7_clkdiv_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => x7_clkdiv_18_SRINV_7053
    );
  x7_clkdiv_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_18_CLKINV_7052
    );
  U3_xpix2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_XORF_7128,
      O => U3_xpix2(0)
    );
  U3_xpix2_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y42"
    )
    port map (
      I0 => U3_xpix2_0_CYINIT_7127,
      I1 => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2_0_XORF_7128
    );
  U3_xpix2_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y42"
    )
    port map (
      IA => U3_xpix2_0_CY0F_7126,
      IB => U3_xpix2_0_CYINIT_7127,
      SEL => U3_xpix2_0_CYSELF_7118,
      O => U3_Msub_xpix2_Madd_cy(0)
    );
  U3_xpix2_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_BXINV_7116,
      O => U3_xpix2_0_CYINIT_7127
    );
  U3_xpix2_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_xpix2_0_CY0F_7126
    );
  U3_xpix2_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2_0_CYSELF_7118
    );
  U3_xpix2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_xpix2_0_BXINV_7116
    );
  U3_xpix2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_XORG_7114,
      O => U3_xpix2(1)
    );
  U3_xpix2_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y42"
    )
    port map (
      I0 => U3_Msub_xpix2_Madd_cy(0),
      I1 => U3_Msub_xpix2_Madd_lut(1),
      O => U3_xpix2_0_XORG_7114
    );
  U3_xpix2_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_CYMUXG_7113,
      O => U3_Msub_xpix2_Madd_cy(1)
    );
  U3_xpix2_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X37Y42"
    )
    port map (
      IA => U3_xpix2_0_CY0G_7111,
      IB => U3_Msub_xpix2_Madd_cy(0),
      SEL => U3_xpix2_0_CYSELG_7103,
      O => U3_xpix2_0_CYMUXG_7113
    );
  U3_xpix2_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_xpix2_0_CY0G_7111
    );
  U3_xpix2_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(1),
      O => U3_xpix2_0_CYSELG_7103
    );
  U3_xpix2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_XORF_7167,
      O => U3_xpix2(2)
    );
  U3_xpix2_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      I0 => U3_xpix2_2_CYINIT_7166,
      I1 => U3_Msub_xpix2_Madd_lut(2),
      O => U3_xpix2_2_XORF_7167
    );
  U3_xpix2_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      IA => U3_xpix2_2_CY0F_7165,
      IB => U3_xpix2_2_CYINIT_7166,
      SEL => U3_xpix2_2_CYSELF_7153,
      O => U3_Msub_xpix2_Madd_cy(2)
    );
  U3_xpix2_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      IA => U3_xpix2_2_CY0F_7165,
      IB => U3_xpix2_2_CY0F_7165,
      SEL => U3_xpix2_2_CYSELF_7153,
      O => U3_xpix2_2_CYMUXF2_7148
    );
  U3_xpix2_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_cy(1),
      O => U3_xpix2_2_CYINIT_7166
    );
  U3_xpix2_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_xpix2_2_CY0F_7165
    );
  U3_xpix2_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(2),
      O => U3_xpix2_2_CYSELF_7153
    );
  U3_xpix2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_XORG_7155,
      O => U3_xpix2(3)
    );
  U3_xpix2_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      I0 => U3_Msub_xpix2_Madd_cy(2),
      I1 => U3_Msub_xpix2_Madd_lut(3),
      O => U3_xpix2_2_XORG_7155
    );
  U3_xpix2_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_cy(1),
      O => U3_xpix2_2_FASTCARRY_7150
    );
  U3_xpix2_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      I0 => U3_xpix2_2_CYSELG_7139,
      I1 => U3_xpix2_2_CYSELF_7153,
      O => U3_xpix2_2_CYAND_7151
    );
  U3_xpix2_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      IA => U3_xpix2_2_CYMUXG2_7149,
      IB => U3_xpix2_2_FASTCARRY_7150,
      SEL => U3_xpix2_2_CYAND_7151,
      O => U3_xpix2_2_CYMUXFAST_7152
    );
  U3_xpix2_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      IA => U3_xpix2_2_CY0G_7147,
      IB => U3_xpix2_2_CYMUXF2_7148,
      SEL => U3_xpix2_2_CYSELG_7139,
      O => U3_xpix2_2_CYMUXG2_7149
    );
  U3_xpix2_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_xpix2_2_CY0G_7147
    );
  U3_xpix2_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(3),
      O => U3_xpix2_2_CYSELG_7139
    );
  U3_xpix2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_4_XORF_7194,
      O => U3_xpix2(4)
    );
  U3_xpix2_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y44"
    )
    port map (
      I0 => U3_xpix2_4_CYINIT_7193,
      I1 => U3_Msub_xpix2_Madd_lut(4),
      O => U3_xpix2_4_XORF_7194
    );
  U3_xpix2_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_CYMUXFAST_7152,
      O => U3_xpix2_4_CYINIT_7193
    );
  U3_xpix2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002(4),
      O => U3_spriteon2f_add0002_4_0
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y42"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7224,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7225,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7216,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7214,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7225
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7224
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7216
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7214
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y42"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7211,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7203,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7213
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7211
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7203
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y43"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_7256,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_7256,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7247,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7242
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_7256
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7247
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7213,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7244
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y43"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7233,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7247,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7245
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y43"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7243,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7244,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7245,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7246
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y43"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7241,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7242,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7233,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7243
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7241
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7233
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y44"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_7287,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_7287,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_7279,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_7274
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002_4_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_7287
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_7279
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7246,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_7276
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y44"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_7267,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_7279,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_7277
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y44"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_7275,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_7276,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_7277,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_7278
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y44"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_7273,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_7274,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_7267,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_7275
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_cy_5_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_7273
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_7267
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y45"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_7320,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_7320,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_7312,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_7307
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_7320
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_7312
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_7278,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_7309
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y45"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_7298,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_7312,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_7310
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y45"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_7308,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_7309,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_7310,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_7311
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y45"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_7306,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_7307,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_7298,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_7308
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_7_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_7306
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_7298
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y46"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_7353,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_7353,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_7346,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_7341
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_8_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_7353
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_7346
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_7345,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_7311,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_7343
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y46"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_7334,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_7346,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_7344
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y46"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_7342,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_7343,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_7344,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_7345
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y46"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_7340,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_7341,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_7334,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_7342
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(9),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_7340
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_7334
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_7382,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_7383,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_7374,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_7372,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_7383
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_7382
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_7374
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_7372
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_7369,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_7361,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_7371
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_7369
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_7361
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_7414,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_7414,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_7405,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_7400
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_7414
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_7405
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_7371,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_7402
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_7391,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_7405,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_7403
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_7401,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_7402,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_7403,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_7404
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_7399,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_7400,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_7391,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_7401
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_7399
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_7391
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_7445,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_7445,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_7436,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_7431
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_7445
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_7436
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_7404,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_7433
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_7423,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_7436,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_7434
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_7432,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_7433,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_7434,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_7435
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_7430,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_7431,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_7423,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_7432
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_7430
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_7423
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_7476,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_7476,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_7469,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_7464
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_7476
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_7469
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_7435,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_7466
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y35"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_7457,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_7469,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_7467
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_7465,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_7466,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_7467,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_7468
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_7463,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_7464,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_7457,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_7465
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_7463
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_7457
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_7507,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_7507,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_7498,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_7493
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_7507
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_7498
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_7497,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_7468,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_7495
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y36"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_7484,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_7498,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_7496
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_7494,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_7495,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_7496,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_7497
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_7492,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_7493,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_7484,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_7494
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_7492
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_7484
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_7536,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_7537,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_7528,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_7526,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_7537
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_7536
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_7528
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_7526
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_7523,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_7515,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_7525
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_7523
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_7515
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_7568,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_7568,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_7559,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_7554
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_7568
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_7559
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_7525,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_7556
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y38"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_7545,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_7559,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_7557
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_7555,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_7556,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_7557,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_7558
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_7553,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_7554,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_7545,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_7555
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_7553
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_7545
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_7599,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_7599,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_7590,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_7585
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_7599
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_7590
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_7558,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_7587
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y39"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_7577,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_7590,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_7588
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_7586,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_7587,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_7588,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_7589
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y39"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_7584,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_7585,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_7577,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_7586
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_7584
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_7577
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_7630,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_7630,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_7623,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_7618
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_7630
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_7623
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_7589,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_7620
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_7611,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_7623,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_7621
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_7619,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_7620,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_7621,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_7622
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_7617,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_7618,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_7611,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_7619
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_7617
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_7611
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_7661,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_7661,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_7652,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_7647
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_7661
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_7652
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_7651,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_7622,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_7649
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_7638,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_7652,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_7650
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_7648,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_7649,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_7650,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_7651
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_7646,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_7647,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_7638,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_7648
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_7646
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_7638
    );
  nes_scalar_next_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ZERO_7678
    );
  nes_scalar_next_addsub0000_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ONE_7695
    );
  nes_scalar_next_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORF_7696,
      O => nes_scalar_next_addsub0000(0)
    );
  nes_scalar_next_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_0_CYINIT_7694,
      I1 => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_XORF_7696
    );
  nes_scalar_next_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ONE_7695,
      IB => nes_scalar_next_addsub0000_0_CYINIT_7694,
      SEL => nes_scalar_next_addsub0000_0_CYSELF_7685,
      O => nes_Madd_scalar_next_addsub0000_cy_0_Q
    );
  nes_scalar_next_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_BXINV_7683,
      O => nes_scalar_next_addsub0000_0_CYINIT_7694
    );
  nes_scalar_next_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_CYSELF_7685
    );
  nes_scalar_next_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_scalar_next_addsub0000_0_BXINV_7683
    );
  nes_scalar_next_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORG_7681,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_scalar_next_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      I1 => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_XORG_7681
    );
  nes_scalar_next_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_CYMUXG_7680,
      O => nes_Madd_scalar_next_addsub0000_cy_1_Q
    );
  nes_scalar_next_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y18"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ZERO_7678,
      IB => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      SEL => nes_scalar_next_addsub0000_0_CYSELG_7669,
      O => nes_scalar_next_addsub0000_0_CYMUXG_7680
    );
  nes_scalar_next_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_CYSELG_7669
    );
  nes_scalar_next_addsub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      O => nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714
    );
  nes_scalar_next_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORF_7734,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_scalar_next_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYINIT_7733,
      I1 => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_XORF_7734
    );
  nes_scalar_next_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714,
      IB => nes_scalar_next_addsub0000_2_CYINIT_7733,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_7720,
      O => nes_Madd_scalar_next_addsub0000_cy_2_Q
    );
  nes_scalar_next_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714,
      IB => nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_7720,
      O => nes_scalar_next_addsub0000_2_CYMUXF2_7715
    );
  nes_scalar_next_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_CYINIT_7733
    );
  nes_scalar_next_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_CYSELF_7720
    );
  nes_scalar_next_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORG_7722,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_scalar_next_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_2_Q,
      I1 => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_XORG_7722
    );
  nes_scalar_next_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_CYMUXFAST_7719,
      O => nes_Madd_scalar_next_addsub0000_cy_3_Q
    );
  nes_scalar_next_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_FASTCARRY_7717
    );
  nes_scalar_next_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYSELG_7705,
      I1 => nes_scalar_next_addsub0000_2_CYSELF_7720,
      O => nes_scalar_next_addsub0000_2_CYAND_7718
    );
  nes_scalar_next_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_CYMUXG2_7716,
      IB => nes_scalar_next_addsub0000_2_FASTCARRY_7717,
      SEL => nes_scalar_next_addsub0000_2_CYAND_7718,
      O => nes_scalar_next_addsub0000_2_CYMUXFAST_7719
    );
  nes_scalar_next_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y19"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_7714,
      IB => nes_scalar_next_addsub0000_2_CYMUXF2_7715,
      SEL => nes_scalar_next_addsub0000_2_CYSELG_7705,
      O => nes_scalar_next_addsub0000_2_CYMUXG2_7716
    );
  nes_scalar_next_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_CYSELG_7705
    );
  nes_scalar_next_addsub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      O => nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752
    );
  nes_scalar_next_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORF_7772,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_scalar_next_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYINIT_7771,
      I1 => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_XORF_7772
    );
  nes_scalar_next_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752,
      IB => nes_scalar_next_addsub0000_4_CYINIT_7771,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_7758,
      O => nes_Madd_scalar_next_addsub0000_cy_4_Q
    );
  nes_scalar_next_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752,
      IB => nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_7758,
      O => nes_scalar_next_addsub0000_4_CYMUXF2_7753
    );
  nes_scalar_next_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_CYINIT_7771
    );
  nes_scalar_next_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_CYSELF_7758
    );
  nes_scalar_next_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORG_7760,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_scalar_next_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_4_Q,
      I1 => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_XORG_7760
    );
  nes_scalar_next_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_CYMUXFAST_7757,
      O => nes_Madd_scalar_next_addsub0000_cy_5_Q
    );
  nes_scalar_next_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_FASTCARRY_7755
    );
  nes_scalar_next_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYSELG_7743,
      I1 => nes_scalar_next_addsub0000_4_CYSELF_7758,
      O => nes_scalar_next_addsub0000_4_CYAND_7756
    );
  nes_scalar_next_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_CYMUXG2_7754,
      IB => nes_scalar_next_addsub0000_4_FASTCARRY_7755,
      SEL => nes_scalar_next_addsub0000_4_CYAND_7756,
      O => nes_scalar_next_addsub0000_4_CYMUXFAST_7757
    );
  nes_scalar_next_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_7752,
      IB => nes_scalar_next_addsub0000_4_CYMUXF2_7753,
      SEL => nes_scalar_next_addsub0000_4_CYSELG_7743,
      O => nes_scalar_next_addsub0000_4_CYMUXG2_7754
    );
  nes_scalar_next_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_CYSELG_7743
    );
  nes_scalar_next_addsub0000_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      O => nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790
    );
  nes_scalar_next_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORF_7810,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_scalar_next_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYINIT_7809,
      I1 => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_XORF_7810
    );
  nes_scalar_next_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790,
      IB => nes_scalar_next_addsub0000_6_CYINIT_7809,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_7796,
      O => nes_Madd_scalar_next_addsub0000_cy_6_Q
    );
  nes_scalar_next_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790,
      IB => nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_7796,
      O => nes_scalar_next_addsub0000_6_CYMUXF2_7791
    );
  nes_scalar_next_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_CYINIT_7809
    );
  nes_scalar_next_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_CYSELF_7796
    );
  nes_scalar_next_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORG_7798,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_scalar_next_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_6_Q,
      I1 => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_XORG_7798
    );
  nes_scalar_next_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_FASTCARRY_7793
    );
  nes_scalar_next_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYSELG_7781,
      I1 => nes_scalar_next_addsub0000_6_CYSELF_7796,
      O => nes_scalar_next_addsub0000_6_CYAND_7794
    );
  nes_scalar_next_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_CYMUXG2_7792,
      IB => nes_scalar_next_addsub0000_6_FASTCARRY_7793,
      SEL => nes_scalar_next_addsub0000_6_CYAND_7794,
      O => nes_scalar_next_addsub0000_6_CYMUXFAST_7795
    );
  nes_scalar_next_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y21"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_7790,
      IB => nes_scalar_next_addsub0000_6_CYMUXF2_7791,
      SEL => nes_scalar_next_addsub0000_6_CYSELG_7781,
      O => nes_scalar_next_addsub0000_6_CYMUXG2_7792
    );
  nes_scalar_next_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_CYSELG_7781
    );
  nes_scalar_next_addsub0000_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y22"
    )
    port map (
      O => nes_scalar_next_addsub0000_8_LOGIC_ZERO_7840
    );
  nes_scalar_next_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORF_7841,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_scalar_next_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y22"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_8_CYINIT_7839,
      I1 => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_XORF_7841
    );
  nes_scalar_next_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y22"
    )
    port map (
      IA => nes_scalar_next_addsub0000_8_LOGIC_ZERO_7840,
      IB => nes_scalar_next_addsub0000_8_CYINIT_7839,
      SEL => nes_scalar_next_addsub0000_8_CYSELF_7830,
      O => nes_Madd_scalar_next_addsub0000_cy_8_Q
    );
  nes_scalar_next_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_CYMUXFAST_7795,
      O => nes_scalar_next_addsub0000_8_CYINIT_7839
    );
  nes_scalar_next_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_CYSELF_7830
    );
  nes_scalar_next_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORG_7827,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_scalar_next_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y22"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_8_Q,
      I1 => nes_scalar_reg_9_rt_7824,
      O => nes_scalar_next_addsub0000_8_XORG_7827
    );
  U2_Result_0_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ZERO_7859
    );
  U2_Result_0_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ONE_7876
    );
  U2_Result_0_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORF_7877,
      O => U2_Result_0_1
    );
  U2_Result_0_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      I0 => U2_Result_0_1_CYINIT_7875,
      I1 => U2_Mcount_hcs_lut(0),
      O => U2_Result_0_1_XORF_7877
    );
  U2_Result_0_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ONE_7876,
      IB => U2_Result_0_1_CYINIT_7875,
      SEL => U2_Result_0_1_CYSELF_7866,
      O => U2_Mcount_hcs_cy_0_Q
    );
  U2_Result_0_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_BXINV_7864,
      O => U2_Result_0_1_CYINIT_7875
    );
  U2_Result_0_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_lut(0),
      O => U2_Result_0_1_CYSELF_7866
    );
  U2_Result_0_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_1_BXINV_7864
    );
  U2_Result_0_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORG_7862,
      O => U2_Result_1_1
    );
  U2_Result_0_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_0_Q,
      I1 => U2_Result_0_1_G,
      O => U2_Result_0_1_XORG_7862
    );
  U2_Result_0_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_CYMUXG_7861,
      O => U2_Mcount_hcs_cy_1_Q
    );
  U2_Result_0_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ZERO_7859,
      IB => U2_Mcount_hcs_cy_0_Q,
      SEL => U2_Result_0_1_CYSELG_7850,
      O => U2_Result_0_1_CYMUXG_7861
    );
  U2_Result_0_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_G,
      O => U2_Result_0_1_CYSELG_7850
    );
  U2_Result_2_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      O => U2_Result_2_1_LOGIC_ZERO_7895
    );
  U2_Result_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORF_7915,
      O => U2_Result_2_1
    );
  U2_Result_2_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      I0 => U2_Result_2_1_CYINIT_7914,
      I1 => U2_Result_2_1_F,
      O => U2_Result_2_1_XORF_7915
    );
  U2_Result_2_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_7895,
      IB => U2_Result_2_1_CYINIT_7914,
      SEL => U2_Result_2_1_CYSELF_7901,
      O => U2_Mcount_hcs_cy_2_Q
    );
  U2_Result_2_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_7895,
      IB => U2_Result_2_1_LOGIC_ZERO_7895,
      SEL => U2_Result_2_1_CYSELF_7901,
      O => U2_Result_2_1_CYMUXF2_7896
    );
  U2_Result_2_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_1_Q,
      O => U2_Result_2_1_CYINIT_7914
    );
  U2_Result_2_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_F,
      O => U2_Result_2_1_CYSELF_7901
    );
  U2_Result_2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORG_7903,
      O => U2_Result_3_1
    );
  U2_Result_2_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_2_Q,
      I1 => U2_Result_2_1_G,
      O => U2_Result_2_1_XORG_7903
    );
  U2_Result_2_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_CYMUXFAST_7900,
      O => U2_Mcount_hcs_cy_3_Q
    );
  U2_Result_2_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_1_Q,
      O => U2_Result_2_1_FASTCARRY_7898
    );
  U2_Result_2_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      I0 => U2_Result_2_1_CYSELG_7886,
      I1 => U2_Result_2_1_CYSELF_7901,
      O => U2_Result_2_1_CYAND_7899
    );
  U2_Result_2_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => U2_Result_2_1_CYMUXG2_7897,
      IB => U2_Result_2_1_FASTCARRY_7898,
      SEL => U2_Result_2_1_CYAND_7899,
      O => U2_Result_2_1_CYMUXFAST_7900
    );
  U2_Result_2_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_7895,
      IB => U2_Result_2_1_CYMUXF2_7896,
      SEL => U2_Result_2_1_CYSELG_7886,
      O => U2_Result_2_1_CYMUXG2_7897
    );
  U2_Result_2_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_G,
      O => U2_Result_2_1_CYSELG_7886
    );
  U2_Result_4_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      O => U2_Result_4_1_LOGIC_ZERO_7933
    );
  U2_Result_4_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORF_7953,
      O => U2_Result_4_1
    );
  U2_Result_4_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      I0 => U2_Result_4_1_CYINIT_7952,
      I1 => U2_Result_4_1_F,
      O => U2_Result_4_1_XORF_7953
    );
  U2_Result_4_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_7933,
      IB => U2_Result_4_1_CYINIT_7952,
      SEL => U2_Result_4_1_CYSELF_7939,
      O => U2_Mcount_hcs_cy_4_Q
    );
  U2_Result_4_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_7933,
      IB => U2_Result_4_1_LOGIC_ZERO_7933,
      SEL => U2_Result_4_1_CYSELF_7939,
      O => U2_Result_4_1_CYMUXF2_7934
    );
  U2_Result_4_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_3_Q,
      O => U2_Result_4_1_CYINIT_7952
    );
  U2_Result_4_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_F,
      O => U2_Result_4_1_CYSELF_7939
    );
  U2_Result_4_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORG_7941,
      O => U2_Result_5_1
    );
  U2_Result_4_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_4_Q,
      I1 => U2_Result_4_1_G,
      O => U2_Result_4_1_XORG_7941
    );
  U2_Result_4_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_CYMUXFAST_7938,
      O => U2_Mcount_hcs_cy_5_Q
    );
  U2_Result_4_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_3_Q,
      O => U2_Result_4_1_FASTCARRY_7936
    );
  U2_Result_4_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      I0 => U2_Result_4_1_CYSELG_7924,
      I1 => U2_Result_4_1_CYSELF_7939,
      O => U2_Result_4_1_CYAND_7937
    );
  U2_Result_4_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => U2_Result_4_1_CYMUXG2_7935,
      IB => U2_Result_4_1_FASTCARRY_7936,
      SEL => U2_Result_4_1_CYAND_7937,
      O => U2_Result_4_1_CYMUXFAST_7938
    );
  U2_Result_4_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_7933,
      IB => U2_Result_4_1_CYMUXF2_7934,
      SEL => U2_Result_4_1_CYSELG_7924,
      O => U2_Result_4_1_CYMUXG2_7935
    );
  U2_Result_4_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_G,
      O => U2_Result_4_1_CYSELG_7924
    );
  U2_Result_6_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      O => U2_Result_6_1_LOGIC_ZERO_7971
    );
  U2_Result_6_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORF_7991,
      O => U2_Result_6_1
    );
  U2_Result_6_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      I0 => U2_Result_6_1_CYINIT_7990,
      I1 => U2_Result_6_1_F,
      O => U2_Result_6_1_XORF_7991
    );
  U2_Result_6_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_7971,
      IB => U2_Result_6_1_CYINIT_7990,
      SEL => U2_Result_6_1_CYSELF_7977,
      O => U2_Mcount_hcs_cy_6_Q
    );
  U2_Result_6_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_7971,
      IB => U2_Result_6_1_LOGIC_ZERO_7971,
      SEL => U2_Result_6_1_CYSELF_7977,
      O => U2_Result_6_1_CYMUXF2_7972
    );
  U2_Result_6_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_5_Q,
      O => U2_Result_6_1_CYINIT_7990
    );
  U2_Result_6_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_F,
      O => U2_Result_6_1_CYSELF_7977
    );
  U2_Result_6_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORG_7979,
      O => U2_Result_7_1
    );
  U2_Result_6_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_6_Q,
      I1 => U2_Result_6_1_G,
      O => U2_Result_6_1_XORG_7979
    );
  U2_Result_6_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_5_Q,
      O => U2_Result_6_1_FASTCARRY_7974
    );
  U2_Result_6_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      I0 => U2_Result_6_1_CYSELG_7962,
      I1 => U2_Result_6_1_CYSELF_7977,
      O => U2_Result_6_1_CYAND_7975
    );
  U2_Result_6_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => U2_Result_6_1_CYMUXG2_7973,
      IB => U2_Result_6_1_FASTCARRY_7974,
      SEL => U2_Result_6_1_CYAND_7975,
      O => U2_Result_6_1_CYMUXFAST_7976
    );
  U2_Result_6_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_7971,
      IB => U2_Result_6_1_CYMUXF2_7972,
      SEL => U2_Result_6_1_CYSELG_7962,
      O => U2_Result_6_1_CYMUXG2_7973
    );
  U2_Result_6_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_G,
      O => U2_Result_6_1_CYSELG_7962
    );
  U2_Result_8_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y31"
    )
    port map (
      O => U2_Result_8_1_LOGIC_ZERO_8021
    );
  U2_Result_8_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORF_8022,
      O => U2_Result_8_1
    );
  U2_Result_8_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y31"
    )
    port map (
      I0 => U2_Result_8_1_CYINIT_8020,
      I1 => U2_Result_8_1_F,
      O => U2_Result_8_1_XORF_8022
    );
  U2_Result_8_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y31"
    )
    port map (
      IA => U2_Result_8_1_LOGIC_ZERO_8021,
      IB => U2_Result_8_1_CYINIT_8020,
      SEL => U2_Result_8_1_CYSELF_8011,
      O => U2_Mcount_hcs_cy_8_Q
    );
  U2_Result_8_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_CYMUXFAST_7976,
      O => U2_Result_8_1_CYINIT_8020
    );
  U2_Result_8_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_F,
      O => U2_Result_8_1_CYSELF_8011
    );
  U2_Result_8_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORG_8008,
      O => U2_Result_9_1
    );
  U2_Result_8_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y31"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_8_Q,
      I1 => U2_hcs_9_rt_8005,
      O => U2_Result_8_1_XORG_8008
    );
  nes_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      O => nes_Result_0_LOGIC_ZERO_8040
    );
  nes_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      O => nes_Result_0_LOGIC_ONE_8057
    );
  nes_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORF_8058,
      O => nes_Result(0)
    );
  nes_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      I0 => nes_Result_0_CYINIT_8056,
      I1 => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_XORF_8058
    );
  nes_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      IA => nes_Result_0_LOGIC_ONE_8057,
      IB => nes_Result_0_CYINIT_8056,
      SEL => nes_Result_0_CYSELF_8047,
      O => nes_Mcount_counter_reg_cy_0_Q
    );
  nes_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_BXINV_8045,
      O => nes_Result_0_CYINIT_8056
    );
  nes_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_CYSELF_8047
    );
  nes_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_Result_0_BXINV_8045
    );
  nes_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORG_8043,
      O => nes_Result(1)
    );
  nes_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_0_Q,
      I1 => nes_Result_0_G,
      O => nes_Result_0_XORG_8043
    );
  nes_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_CYMUXG_8042,
      O => nes_Mcount_counter_reg_cy_1_Q
    );
  nes_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      IA => nes_Result_0_LOGIC_ZERO_8040,
      IB => nes_Mcount_counter_reg_cy_0_Q,
      SEL => nes_Result_0_CYSELG_8031,
      O => nes_Result_0_CYMUXG_8042
    );
  nes_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_G,
      O => nes_Result_0_CYSELG_8031
    );
  nes_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      O => nes_Result_2_LOGIC_ZERO_8076
    );
  nes_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORF_8096,
      O => nes_Result(2)
    );
  nes_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => nes_Result_2_CYINIT_8095,
      I1 => nes_Result_2_F,
      O => nes_Result_2_XORF_8096
    );
  nes_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8076,
      IB => nes_Result_2_CYINIT_8095,
      SEL => nes_Result_2_CYSELF_8082,
      O => nes_Mcount_counter_reg_cy_2_Q
    );
  nes_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8076,
      IB => nes_Result_2_LOGIC_ZERO_8076,
      SEL => nes_Result_2_CYSELF_8082,
      O => nes_Result_2_CYMUXF2_8077
    );
  nes_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_CYINIT_8095
    );
  nes_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_F,
      O => nes_Result_2_CYSELF_8082
    );
  nes_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORG_8084,
      O => nes_Result(3)
    );
  nes_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_2_Q,
      I1 => nes_Result_2_G,
      O => nes_Result_2_XORG_8084
    );
  nes_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_CYMUXFAST_8081,
      O => nes_Mcount_counter_reg_cy_3_Q
    );
  nes_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_FASTCARRY_8079
    );
  nes_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => nes_Result_2_CYSELG_8067,
      I1 => nes_Result_2_CYSELF_8082,
      O => nes_Result_2_CYAND_8080
    );
  nes_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => nes_Result_2_CYMUXG2_8078,
      IB => nes_Result_2_FASTCARRY_8079,
      SEL => nes_Result_2_CYAND_8080,
      O => nes_Result_2_CYMUXFAST_8081
    );
  nes_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8076,
      IB => nes_Result_2_CYMUXF2_8077,
      SEL => nes_Result_2_CYSELG_8067,
      O => nes_Result_2_CYMUXG2_8078
    );
  nes_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_G,
      O => nes_Result_2_CYSELG_8067
    );
  nes_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      O => nes_Result_4_LOGIC_ZERO_8114
    );
  nes_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORF_8134,
      O => nes_Result(4)
    );
  nes_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => nes_Result_4_CYINIT_8133,
      I1 => nes_Result_4_F,
      O => nes_Result_4_XORF_8134
    );
  nes_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8114,
      IB => nes_Result_4_CYINIT_8133,
      SEL => nes_Result_4_CYSELF_8120,
      O => nes_Mcount_counter_reg_cy_4_Q
    );
  nes_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8114,
      IB => nes_Result_4_LOGIC_ZERO_8114,
      SEL => nes_Result_4_CYSELF_8120,
      O => nes_Result_4_CYMUXF2_8115
    );
  nes_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_CYINIT_8133
    );
  nes_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_F,
      O => nes_Result_4_CYSELF_8120
    );
  nes_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORG_8122,
      O => nes_Result(5)
    );
  nes_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_4_Q,
      I1 => nes_Result_4_G,
      O => nes_Result_4_XORG_8122
    );
  nes_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_CYMUXFAST_8119,
      O => nes_Mcount_counter_reg_cy_5_Q
    );
  nes_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_FASTCARRY_8117
    );
  nes_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => nes_Result_4_CYSELG_8105,
      I1 => nes_Result_4_CYSELF_8120,
      O => nes_Result_4_CYAND_8118
    );
  nes_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => nes_Result_4_CYMUXG2_8116,
      IB => nes_Result_4_FASTCARRY_8117,
      SEL => nes_Result_4_CYAND_8118,
      O => nes_Result_4_CYMUXFAST_8119
    );
  nes_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8114,
      IB => nes_Result_4_CYMUXF2_8115,
      SEL => nes_Result_4_CYSELG_8105,
      O => nes_Result_4_CYMUXG2_8116
    );
  nes_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_G,
      O => nes_Result_4_CYSELG_8105
    );
  nes_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      O => nes_Result_6_LOGIC_ZERO_8152
    );
  nes_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORF_8172,
      O => nes_Result(6)
    );
  nes_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => nes_Result_6_CYINIT_8171,
      I1 => nes_Result_6_F,
      O => nes_Result_6_XORF_8172
    );
  nes_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8152,
      IB => nes_Result_6_CYINIT_8171,
      SEL => nes_Result_6_CYSELF_8158,
      O => nes_Mcount_counter_reg_cy_6_Q
    );
  nes_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8152,
      IB => nes_Result_6_LOGIC_ZERO_8152,
      SEL => nes_Result_6_CYSELF_8158,
      O => nes_Result_6_CYMUXF2_8153
    );
  nes_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_CYINIT_8171
    );
  nes_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_F,
      O => nes_Result_6_CYSELF_8158
    );
  nes_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORG_8160,
      O => nes_Result(7)
    );
  nes_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_6_Q,
      I1 => nes_Result_6_G,
      O => nes_Result_6_XORG_8160
    );
  nes_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_FASTCARRY_8155
    );
  nes_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => nes_Result_6_CYSELG_8143,
      I1 => nes_Result_6_CYSELF_8158,
      O => nes_Result_6_CYAND_8156
    );
  nes_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => nes_Result_6_CYMUXG2_8154,
      IB => nes_Result_6_FASTCARRY_8155,
      SEL => nes_Result_6_CYAND_8156,
      O => nes_Result_6_CYMUXFAST_8157
    );
  nes_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8152,
      IB => nes_Result_6_CYMUXF2_8153,
      SEL => nes_Result_6_CYSELG_8143,
      O => nes_Result_6_CYMUXG2_8154
    );
  nes_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_G,
      O => nes_Result_6_CYSELG_8143
    );
  nes_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      O => nes_Result_8_LOGIC_ZERO_8202
    );
  nes_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORF_8203,
      O => nes_Result(8)
    );
  nes_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      I0 => nes_Result_8_CYINIT_8201,
      I1 => nes_Result_8_F,
      O => nes_Result_8_XORF_8203
    );
  nes_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      IA => nes_Result_8_LOGIC_ZERO_8202,
      IB => nes_Result_8_CYINIT_8201,
      SEL => nes_Result_8_CYSELF_8192,
      O => nes_Mcount_counter_reg_cy_8_Q
    );
  nes_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_CYMUXFAST_8157,
      O => nes_Result_8_CYINIT_8201
    );
  nes_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_F,
      O => nes_Result_8_CYSELF_8192
    );
  nes_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORG_8189,
      O => nes_Result(9)
    );
  nes_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_8_Q,
      I1 => nes_counter_reg_9_rt_8186,
      O => nes_Result_8_XORG_8189
    );
  U3_Q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      O => U3_Q_0_LOGIC_ZERO_8225
    );
  U3_Q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      O => U3_Q_0_LOGIC_ONE_8249
    );
  U3_Q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_XORF_8250,
      O => U3_Q_0_DXMUX_8252
    );
  U3_Q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      I0 => U3_Q_0_CYINIT_8248,
      I1 => U3_Mcount_q_lut(0),
      O => U3_Q_0_XORF_8250
    );
  U3_Q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      IA => U3_Q_0_LOGIC_ONE_8249,
      IB => U3_Q_0_CYINIT_8248,
      SEL => U3_Q_0_CYSELF_8239,
      O => U3_Mcount_q_cy_0_Q
    );
  U3_Q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_BXINV_8237,
      O => U3_Q_0_CYINIT_8248
    );
  U3_Q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_lut(0),
      O => U3_Q_0_CYSELF_8239
    );
  U3_Q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U3_Q_0_BXINV_8237
    );
  U3_Q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_XORG_8228,
      O => U3_Q_0_DYMUX_8230
    );
  U3_Q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      I0 => U3_Mcount_q_cy_0_Q,
      I1 => U3_Q_0_G,
      O => U3_Q_0_XORG_8228
    );
  U3_Q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_CYMUXG_8227,
      O => U3_Mcount_q_cy_1_Q
    );
  U3_Q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y81"
    )
    port map (
      IA => U3_Q_0_LOGIC_ZERO_8225,
      IB => U3_Mcount_q_cy_0_Q,
      SEL => U3_Q_0_CYSELG_8216,
      O => U3_Q_0_CYMUXG_8227
    );
  U3_Q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_G,
      O => U3_Q_0_CYSELG_8216
    );
  U3_Q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_0_SRINV_8214
    );
  U3_Q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_0_CLKINV_8213
    );
  U3_Q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      O => U3_Q_2_LOGIC_ZERO_8279
    );
  U3_Q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_XORF_8306,
      O => U3_Q_2_DXMUX_8308
    );
  U3_Q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      I0 => U3_Q_2_CYINIT_8305,
      I1 => U3_Q_2_F,
      O => U3_Q_2_XORF_8306
    );
  U3_Q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_8279,
      IB => U3_Q_2_CYINIT_8305,
      SEL => U3_Q_2_CYSELF_8285,
      O => U3_Mcount_q_cy_2_Q
    );
  U3_Q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_8279,
      IB => U3_Q_2_LOGIC_ZERO_8279,
      SEL => U3_Q_2_CYSELF_8285,
      O => U3_Q_2_CYMUXF2_8280
    );
  U3_Q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_1_Q,
      O => U3_Q_2_CYINIT_8305
    );
  U3_Q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_F,
      O => U3_Q_2_CYSELF_8285
    );
  U3_Q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_XORG_8287,
      O => U3_Q_2_DYMUX_8289
    );
  U3_Q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      I0 => U3_Mcount_q_cy_2_Q,
      I1 => U3_Q_2_G,
      O => U3_Q_2_XORG_8287
    );
  U3_Q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_CYMUXFAST_8284,
      O => U3_Mcount_q_cy_3_Q
    );
  U3_Q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_1_Q,
      O => U3_Q_2_FASTCARRY_8282
    );
  U3_Q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      I0 => U3_Q_2_CYSELG_8270,
      I1 => U3_Q_2_CYSELF_8285,
      O => U3_Q_2_CYAND_8283
    );
  U3_Q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      IA => U3_Q_2_CYMUXG2_8281,
      IB => U3_Q_2_FASTCARRY_8282,
      SEL => U3_Q_2_CYAND_8283,
      O => U3_Q_2_CYMUXFAST_8284
    );
  U3_Q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y82"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_8279,
      IB => U3_Q_2_CYMUXF2_8280,
      SEL => U3_Q_2_CYSELG_8270,
      O => U3_Q_2_CYMUXG2_8281
    );
  U3_Q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_G,
      O => U3_Q_2_CYSELG_8270
    );
  U3_Q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_2_SRINV_8268
    );
  U3_Q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_2_CLKINV_8267
    );
  U3_Q_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      O => U3_Q_4_LOGIC_ZERO_8335
    );
  U3_Q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_XORF_8362,
      O => U3_Q_4_DXMUX_8364
    );
  U3_Q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      I0 => U3_Q_4_CYINIT_8361,
      I1 => U3_Q_4_F,
      O => U3_Q_4_XORF_8362
    );
  U3_Q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_8335,
      IB => U3_Q_4_CYINIT_8361,
      SEL => U3_Q_4_CYSELF_8341,
      O => U3_Mcount_q_cy_4_Q
    );
  U3_Q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_8335,
      IB => U3_Q_4_LOGIC_ZERO_8335,
      SEL => U3_Q_4_CYSELF_8341,
      O => U3_Q_4_CYMUXF2_8336
    );
  U3_Q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_3_Q,
      O => U3_Q_4_CYINIT_8361
    );
  U3_Q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_F,
      O => U3_Q_4_CYSELF_8341
    );
  U3_Q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_XORG_8343,
      O => U3_Q_4_DYMUX_8345
    );
  U3_Q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      I0 => U3_Mcount_q_cy_4_Q,
      I1 => U3_Q_4_G,
      O => U3_Q_4_XORG_8343
    );
  U3_Q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_CYMUXFAST_8340,
      O => U3_Mcount_q_cy_5_Q
    );
  U3_Q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_3_Q,
      O => U3_Q_4_FASTCARRY_8338
    );
  U3_Q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      I0 => U3_Q_4_CYSELG_8326,
      I1 => U3_Q_4_CYSELF_8341,
      O => U3_Q_4_CYAND_8339
    );
  U3_Q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      IA => U3_Q_4_CYMUXG2_8337,
      IB => U3_Q_4_FASTCARRY_8338,
      SEL => U3_Q_4_CYAND_8339,
      O => U3_Q_4_CYMUXFAST_8340
    );
  U3_Q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_8335,
      IB => U3_Q_4_CYMUXF2_8336,
      SEL => U3_Q_4_CYSELG_8326,
      O => U3_Q_4_CYMUXG2_8337
    );
  U3_Q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_G,
      O => U3_Q_4_CYSELG_8326
    );
  U3_Q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_4_SRINV_8324
    );
  U3_Q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_4_CLKINV_8323
    );
  U3_Q_6_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_SRINV_8380,
      O => U3_Q_6_FFX_RST
    );
  U3_q_6 : X_FF
    generic map(
      LOC => "SLICE_X43Y84",
      INIT => '0'
    )
    port map (
      I => U3_Q_6_DXMUX_8420,
      CE => VCC,
      CLK => U3_Q_6_CLKINV_8379,
      SET => GND,
      RST => U3_Q_6_FFX_RST,
      O => U3_Q_6_4782
    );
  U3_Q_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      O => U3_Q_6_LOGIC_ZERO_8391
    );
  U3_Q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_XORF_8418,
      O => U3_Q_6_DXMUX_8420
    );
  U3_Q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      I0 => U3_Q_6_CYINIT_8417,
      I1 => U3_Q_6_F,
      O => U3_Q_6_XORF_8418
    );
  U3_Q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_8391,
      IB => U3_Q_6_CYINIT_8417,
      SEL => U3_Q_6_CYSELF_8397,
      O => U3_Mcount_q_cy_6_Q
    );
  U3_Q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_8391,
      IB => U3_Q_6_LOGIC_ZERO_8391,
      SEL => U3_Q_6_CYSELF_8397,
      O => U3_Q_6_CYMUXF2_8392
    );
  U3_Q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_5_Q,
      O => U3_Q_6_CYINIT_8417
    );
  U3_Q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_F,
      O => U3_Q_6_CYSELF_8397
    );
  U3_Q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_XORG_8399,
      O => U3_Q_6_DYMUX_8401
    );
  U3_Q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      I0 => U3_Mcount_q_cy_6_Q,
      I1 => U3_Q_6_G,
      O => U3_Q_6_XORG_8399
    );
  U3_Q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_CYMUXFAST_8396,
      O => U3_Mcount_q_cy_7_Q
    );
  U3_Q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_5_Q,
      O => U3_Q_6_FASTCARRY_8394
    );
  U3_Q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      I0 => U3_Q_6_CYSELG_8382,
      I1 => U3_Q_6_CYSELF_8397,
      O => U3_Q_6_CYAND_8395
    );
  U3_Q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      IA => U3_Q_6_CYMUXG2_8393,
      IB => U3_Q_6_FASTCARRY_8394,
      SEL => U3_Q_6_CYAND_8395,
      O => U3_Q_6_CYMUXFAST_8396
    );
  U3_Q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y84"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_8391,
      IB => U3_Q_6_CYMUXF2_8392,
      SEL => U3_Q_6_CYSELG_8382,
      O => U3_Q_6_CYMUXG2_8393
    );
  U3_Q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_G,
      O => U3_Q_6_CYSELG_8382
    );
  U3_Q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_6_SRINV_8380
    );
  U3_Q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_6_CLKINV_8379
    );
  U3_q_7 : X_FF
    generic map(
      LOC => "SLICE_X43Y84",
      INIT => '0'
    )
    port map (
      I => U3_Q_6_DYMUX_8401,
      CE => VCC,
      CLK => U3_Q_6_CLKINV_8379,
      SET => GND,
      RST => U3_Q_6_SRINV_8380,
      O => U3_Q_7_4783
    );
  U3_Q_8_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_SRINV_8436,
      O => U3_Q_8_FFY_RST
    );
  U3_q_9 : X_FF
    generic map(
      LOC => "SLICE_X43Y85",
      INIT => '0'
    )
    port map (
      I => U3_Q_8_DYMUX_8457,
      CE => VCC,
      CLK => U3_Q_8_CLKINV_8435,
      SET => GND,
      RST => U3_Q_8_FFY_RST,
      O => U3_Q_9_4786
    );
  U3_Q_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_SRINV_8436,
      O => U3_Q_8_FFX_RST
    );
  U3_q_8 : X_FF
    generic map(
      LOC => "SLICE_X43Y85",
      INIT => '0'
    )
    port map (
      I => U3_Q_8_DXMUX_8476,
      CE => VCC,
      CLK => U3_Q_8_CLKINV_8435,
      SET => GND,
      RST => U3_Q_8_FFX_RST,
      O => U3_Q_8_4785
    );
  U3_Q_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      O => U3_Q_8_LOGIC_ZERO_8447
    );
  U3_Q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_XORF_8474,
      O => U3_Q_8_DXMUX_8476
    );
  U3_Q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      I0 => U3_Q_8_CYINIT_8473,
      I1 => U3_Q_8_F,
      O => U3_Q_8_XORF_8474
    );
  U3_Q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_8447,
      IB => U3_Q_8_CYINIT_8473,
      SEL => U3_Q_8_CYSELF_8453,
      O => U3_Mcount_q_cy_8_Q
    );
  U3_Q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_8447,
      IB => U3_Q_8_LOGIC_ZERO_8447,
      SEL => U3_Q_8_CYSELF_8453,
      O => U3_Q_8_CYMUXF2_8448
    );
  U3_Q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_7_Q,
      O => U3_Q_8_CYINIT_8473
    );
  U3_Q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_F,
      O => U3_Q_8_CYSELF_8453
    );
  U3_Q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_XORG_8455,
      O => U3_Q_8_DYMUX_8457
    );
  U3_Q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      I0 => U3_Mcount_q_cy_8_Q,
      I1 => U3_Q_8_G,
      O => U3_Q_8_XORG_8455
    );
  U3_Q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_CYMUXFAST_8452,
      O => U3_Mcount_q_cy_9_Q
    );
  U3_Q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_7_Q,
      O => U3_Q_8_FASTCARRY_8450
    );
  U3_Q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      I0 => U3_Q_8_CYSELG_8438,
      I1 => U3_Q_8_CYSELF_8453,
      O => U3_Q_8_CYAND_8451
    );
  U3_Q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      IA => U3_Q_8_CYMUXG2_8449,
      IB => U3_Q_8_FASTCARRY_8450,
      SEL => U3_Q_8_CYAND_8451,
      O => U3_Q_8_CYMUXFAST_8452
    );
  U3_Q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y85"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_8447,
      IB => U3_Q_8_CYMUXF2_8448,
      SEL => U3_Q_8_CYSELG_8438,
      O => U3_Q_8_CYMUXG2_8449
    );
  U3_Q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_G,
      O => U3_Q_8_CYSELG_8438
    );
  U3_Q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_8_SRINV_8436
    );
  U3_Q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_8_CLKINV_8435
    );
  U3_Q_10_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_SRINV_8492,
      O => U3_Q_10_FFY_RST
    );
  U3_q_11 : X_FF
    generic map(
      LOC => "SLICE_X43Y86",
      INIT => '0'
    )
    port map (
      I => U3_Q_10_DYMUX_8513,
      CE => VCC,
      CLK => U3_Q_10_CLKINV_8491,
      SET => GND,
      RST => U3_Q_10_FFY_RST,
      O => U3_Q_11_4789
    );
  U3_Q_10_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_SRINV_8492,
      O => U3_Q_10_FFX_RST
    );
  U3_q_10 : X_FF
    generic map(
      LOC => "SLICE_X43Y86",
      INIT => '0'
    )
    port map (
      I => U3_Q_10_DXMUX_8532,
      CE => VCC,
      CLK => U3_Q_10_CLKINV_8491,
      SET => GND,
      RST => U3_Q_10_FFX_RST,
      O => U3_Q_10_4788
    );
  U3_Q_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      O => U3_Q_10_LOGIC_ZERO_8503
    );
  U3_Q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_XORF_8530,
      O => U3_Q_10_DXMUX_8532
    );
  U3_Q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      I0 => U3_Q_10_CYINIT_8529,
      I1 => U3_Q_10_F,
      O => U3_Q_10_XORF_8530
    );
  U3_Q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_8503,
      IB => U3_Q_10_CYINIT_8529,
      SEL => U3_Q_10_CYSELF_8509,
      O => U3_Mcount_q_cy_10_Q
    );
  U3_Q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_8503,
      IB => U3_Q_10_LOGIC_ZERO_8503,
      SEL => U3_Q_10_CYSELF_8509,
      O => U3_Q_10_CYMUXF2_8504
    );
  U3_Q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_9_Q,
      O => U3_Q_10_CYINIT_8529
    );
  U3_Q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_F,
      O => U3_Q_10_CYSELF_8509
    );
  U3_Q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_XORG_8511,
      O => U3_Q_10_DYMUX_8513
    );
  U3_Q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      I0 => U3_Mcount_q_cy_10_Q,
      I1 => U3_Q_10_G,
      O => U3_Q_10_XORG_8511
    );
  U3_Q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_CYMUXFAST_8508,
      O => U3_Mcount_q_cy_11_Q
    );
  U3_Q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_9_Q,
      O => U3_Q_10_FASTCARRY_8506
    );
  U3_Q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      I0 => U3_Q_10_CYSELG_8494,
      I1 => U3_Q_10_CYSELF_8509,
      O => U3_Q_10_CYAND_8507
    );
  U3_Q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      IA => U3_Q_10_CYMUXG2_8505,
      IB => U3_Q_10_FASTCARRY_8506,
      SEL => U3_Q_10_CYAND_8507,
      O => U3_Q_10_CYMUXFAST_8508
    );
  U3_Q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y86"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_8503,
      IB => U3_Q_10_CYMUXF2_8504,
      SEL => U3_Q_10_CYSELG_8494,
      O => U3_Q_10_CYMUXG2_8505
    );
  U3_Q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_G,
      O => U3_Q_10_CYSELG_8494
    );
  U3_Q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_10_SRINV_8492
    );
  U3_Q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_10_CLKINV_8491
    );
  U3_Q_12_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_SRINV_8548,
      O => U3_Q_12_FFY_RST
    );
  U3_q_13 : X_FF
    generic map(
      LOC => "SLICE_X43Y87",
      INIT => '0'
    )
    port map (
      I => U3_Q_12_DYMUX_8569,
      CE => VCC,
      CLK => U3_Q_12_CLKINV_8547,
      SET => GND,
      RST => U3_Q_12_FFY_RST,
      O => U3_Q_13_4792
    );
  U3_Q_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_SRINV_8548,
      O => U3_Q_12_FFX_RST
    );
  U3_q_12 : X_FF
    generic map(
      LOC => "SLICE_X43Y87",
      INIT => '0'
    )
    port map (
      I => U3_Q_12_DXMUX_8588,
      CE => VCC,
      CLK => U3_Q_12_CLKINV_8547,
      SET => GND,
      RST => U3_Q_12_FFX_RST,
      O => U3_Q_12_4791
    );
  U3_Q_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      O => U3_Q_12_LOGIC_ZERO_8559
    );
  U3_Q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_XORF_8586,
      O => U3_Q_12_DXMUX_8588
    );
  U3_Q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      I0 => U3_Q_12_CYINIT_8585,
      I1 => U3_Q_12_F,
      O => U3_Q_12_XORF_8586
    );
  U3_Q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_8559,
      IB => U3_Q_12_CYINIT_8585,
      SEL => U3_Q_12_CYSELF_8565,
      O => U3_Mcount_q_cy_12_Q
    );
  U3_Q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_8559,
      IB => U3_Q_12_LOGIC_ZERO_8559,
      SEL => U3_Q_12_CYSELF_8565,
      O => U3_Q_12_CYMUXF2_8560
    );
  U3_Q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_11_Q,
      O => U3_Q_12_CYINIT_8585
    );
  U3_Q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_F,
      O => U3_Q_12_CYSELF_8565
    );
  U3_Q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_XORG_8567,
      O => U3_Q_12_DYMUX_8569
    );
  U3_Q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      I0 => U3_Mcount_q_cy_12_Q,
      I1 => U3_Q_12_G,
      O => U3_Q_12_XORG_8567
    );
  U3_Q_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_CYMUXFAST_8564,
      O => U3_Mcount_q_cy_13_Q
    );
  U3_Q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_11_Q,
      O => U3_Q_12_FASTCARRY_8562
    );
  U3_Q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      I0 => U3_Q_12_CYSELG_8550,
      I1 => U3_Q_12_CYSELF_8565,
      O => U3_Q_12_CYAND_8563
    );
  U3_Q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      IA => U3_Q_12_CYMUXG2_8561,
      IB => U3_Q_12_FASTCARRY_8562,
      SEL => U3_Q_12_CYAND_8563,
      O => U3_Q_12_CYMUXFAST_8564
    );
  U3_Q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y87"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_8559,
      IB => U3_Q_12_CYMUXF2_8560,
      SEL => U3_Q_12_CYSELG_8550,
      O => U3_Q_12_CYMUXG2_8561
    );
  U3_Q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_G,
      O => U3_Q_12_CYSELG_8550
    );
  U3_Q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_12_SRINV_8548
    );
  U3_Q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_12_CLKINV_8547
    );
  U3_Q_14_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_SRINV_8604,
      O => U3_Q_14_FFY_RST
    );
  U3_q_15 : X_FF
    generic map(
      LOC => "SLICE_X43Y88",
      INIT => '0'
    )
    port map (
      I => U3_Q_14_DYMUX_8625,
      CE => VCC,
      CLK => U3_Q_14_CLKINV_8603,
      SET => GND,
      RST => U3_Q_14_FFY_RST,
      O => U3_Q_15_4795
    );
  U3_Q_14_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_SRINV_8604,
      O => U3_Q_14_FFX_RST
    );
  U3_q_14 : X_FF
    generic map(
      LOC => "SLICE_X43Y88",
      INIT => '0'
    )
    port map (
      I => U3_Q_14_DXMUX_8644,
      CE => VCC,
      CLK => U3_Q_14_CLKINV_8603,
      SET => GND,
      RST => U3_Q_14_FFX_RST,
      O => U3_Q_14_4794
    );
  U3_Q_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      O => U3_Q_14_LOGIC_ZERO_8615
    );
  U3_Q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_XORF_8642,
      O => U3_Q_14_DXMUX_8644
    );
  U3_Q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      I0 => U3_Q_14_CYINIT_8641,
      I1 => U3_Q_14_F,
      O => U3_Q_14_XORF_8642
    );
  U3_Q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_8615,
      IB => U3_Q_14_CYINIT_8641,
      SEL => U3_Q_14_CYSELF_8621,
      O => U3_Mcount_q_cy_14_Q
    );
  U3_Q_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_8615,
      IB => U3_Q_14_LOGIC_ZERO_8615,
      SEL => U3_Q_14_CYSELF_8621,
      O => U3_Q_14_CYMUXF2_8616
    );
  U3_Q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_13_Q,
      O => U3_Q_14_CYINIT_8641
    );
  U3_Q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_F,
      O => U3_Q_14_CYSELF_8621
    );
  U3_Q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_XORG_8623,
      O => U3_Q_14_DYMUX_8625
    );
  U3_Q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      I0 => U3_Mcount_q_cy_14_Q,
      I1 => U3_Q_14_G,
      O => U3_Q_14_XORG_8623
    );
  U3_Q_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_13_Q,
      O => U3_Q_14_FASTCARRY_8618
    );
  U3_Q_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      I0 => U3_Q_14_CYSELG_8606,
      I1 => U3_Q_14_CYSELF_8621,
      O => U3_Q_14_CYAND_8619
    );
  U3_Q_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      IA => U3_Q_14_CYMUXG2_8617,
      IB => U3_Q_14_FASTCARRY_8618,
      SEL => U3_Q_14_CYAND_8619,
      O => U3_Q_14_CYMUXFAST_8620
    );
  U3_Q_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y88"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_8615,
      IB => U3_Q_14_CYMUXF2_8616,
      SEL => U3_Q_14_CYSELG_8606,
      O => U3_Q_14_CYMUXG2_8617
    );
  U3_Q_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_G,
      O => U3_Q_14_CYSELG_8606
    );
  U3_Q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_14_SRINV_8604
    );
  U3_Q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_14_CLKINV_8603
    );
  U3_Q_16_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_SRINV_8659,
      O => U3_Q_16_FFX_RST
    );
  U3_q_16 : X_FF
    generic map(
      LOC => "SLICE_X43Y89",
      INIT => '0'
    )
    port map (
      I => U3_Q_16_DXMUX_8693,
      CE => VCC,
      CLK => U3_Q_16_CLKINV_8658,
      SET => GND,
      RST => U3_Q_16_FFX_RST,
      O => U3_Q_16_4797
    );
  U3_Q_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y89"
    )
    port map (
      O => U3_Q_16_LOGIC_ZERO_8690
    );
  U3_Q_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_XORF_8691,
      O => U3_Q_16_DXMUX_8693
    );
  U3_Q_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y89"
    )
    port map (
      I0 => U3_Q_16_CYINIT_8689,
      I1 => U3_Q_16_F,
      O => U3_Q_16_XORF_8691
    );
  U3_Q_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y89"
    )
    port map (
      IA => U3_Q_16_LOGIC_ZERO_8690,
      IB => U3_Q_16_CYINIT_8689,
      SEL => U3_Q_16_CYSELF_8680,
      O => U3_Mcount_q_cy_16_Q
    );
  U3_Q_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_CYMUXFAST_8620,
      O => U3_Q_16_CYINIT_8689
    );
  U3_Q_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_F,
      O => U3_Q_16_CYSELF_8680
    );
  U3_Q_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_XORG_8670,
      O => U3_Q_16_DYMUX_8672
    );
  U3_Q_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y89"
    )
    port map (
      I0 => U3_Mcount_q_cy_16_Q,
      I1 => U3_q_171_rt_8667,
      O => U3_Q_16_XORG_8670
    );
  U3_Q_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U3_Q_16_SRINV_8659
    );
  U3_Q_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_16_CLKINV_8658
    );
  U3_q_17 : X_FF
    generic map(
      LOC => "SLICE_X43Y89",
      INIT => '0'
    )
    port map (
      I => U3_Q_16_DYMUX_8672,
      CE => VCC,
      CLK => U3_Q_16_CLKINV_8658,
      SET => GND,
      RST => U3_Q_16_SRINV_8659,
      O => U3_q_171
    );
  U3_q_171_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_q_171,
      ADR3 => VCC,
      O => U3_q_171_rt_8667
    );
  U3_Mmux_M2a_mux0000_6 : X_LUT4
    generic map(
      INIT => X"0A02",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => M1a_1_8_0,
      ADR1 => rom1_addr(4),
      ADR2 => U3_xpix2(0),
      ADR3 => M1a_1_20_0,
      O => U3_Mmux_M2a_mux0000_6_8727
    );
  U3_Mmux_M2a_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_5_f5_F5MUX_8729,
      O => U3_Mmux_M2a_mux0000_5_f5
    );
  U3_Mmux_M2a_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y48"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_8719,
      IB => U3_Mmux_M2a_mux0000_6_8727,
      SEL => U3_Mmux_M2a_mux0000_5_f5_BXINV_8722,
      O => U3_Mmux_M2a_mux0000_5_f5_F5MUX_8729
    );
  U3_Mmux_M2a_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_BXINV_8722
    );
  U3_Mmux_M2a_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_5_f5_F6MUX_8721,
      O => U3_Mmux_M2a_mux0000_4_f6
    );
  U3_Mmux_M2a_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y48"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_6_f5,
      IB => U3_Mmux_M2a_mux0000_5_f5,
      SEL => U3_Mmux_M2a_mux0000_5_f5_BYINV_8713,
      O => U3_Mmux_M2a_mux0000_5_f5_F6MUX_8721
    );
  U3_Mmux_M2a_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f5_BYINV_8713
    );
  U3_Mmux_M2a_mux0000_7 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_29_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => M2a_28_Q,
      O => U3_Mmux_M2a_mux0000_7_8719
    );
  U3_Mmux_M2a_mux0000_71 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X46Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(4),
      ADR2 => N257,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M2a_mux0000_71_8757
    );
  U3_Mmux_M2a_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f5_F5MUX_8759,
      O => U3_Mmux_M2a_mux0000_6_f5
    );
  U3_Mmux_M2a_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y49"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_8_8748,
      IB => U3_Mmux_M2a_mux0000_71_8757,
      SEL => U3_Mmux_M2a_mux0000_6_f5_BXINV_8751,
      O => U3_Mmux_M2a_mux0000_6_f5_F5MUX_8759
    );
  U3_Mmux_M2a_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_BXINV_8751
    );
  U3_Mmux_M2a_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f5_F6MUX_8750,
      O => U3_Mmux_M2a_mux0000_3_f7
    );
  U3_Mmux_M2a_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y49"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_5_f6,
      IB => U3_Mmux_M2a_mux0000_4_f6,
      SEL => U3_Mmux_M2a_mux0000_6_f5_BYINV_8742,
      O => U3_Mmux_M2a_mux0000_6_f5_F6MUX_8750
    );
  U3_Mmux_M2a_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_6_f5_BYINV_8742
    );
  U3_Mmux_M2a_mux0000_8 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X46Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(4),
      ADR2 => N205,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M2a_mux0000_8_8748
    );
  U3_Mmux_M2a_mux0000_73 : X_LUT4
    generic map(
      INIT => X"CF03",
      LOC => "SLICE_X46Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(4),
      ADR2 => M1a_14_bdd0_0,
      ADR3 => N259,
      O => U3_Mmux_M2a_mux0000_73_8787
    );
  U3_Mmux_M2a_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f52_F5MUX_8789,
      O => U3_Mmux_M2a_mux0000_6_f52
    );
  U3_Mmux_M2a_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y50"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_83_8778,
      IB => U3_Mmux_M2a_mux0000_73_8787,
      SEL => U3_Mmux_M2a_mux0000_6_f52_BXINV_8781,
      O => U3_Mmux_M2a_mux0000_6_f52_F5MUX_8789
    );
  U3_Mmux_M2a_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f52_BXINV_8781
    );
  U3_Mmux_M2a_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f52_F6MUX_8780,
      O => U3_Mmux_M2a_mux0000_5_f61
    );
  U3_Mmux_M2a_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y50"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_f51,
      IB => U3_Mmux_M2a_mux0000_6_f52,
      SEL => U3_Mmux_M2a_mux0000_6_f52_BYINV_8772,
      O => U3_Mmux_M2a_mux0000_6_f52_F6MUX_8780
    );
  U3_Mmux_M2a_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f52_BYINV_8772
    );
  U3_Mmux_M2a_mux0000_83 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X46Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_13_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => M2a_12_Q,
      O => U3_Mmux_M2a_mux0000_83_8778
    );
  U3_Mmux_M2a_mux0000_84 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X46Y51"
    )
    port map (
      ADR0 => M2a_11_Q,
      ADR1 => M2a_10_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_84_8817
    );
  U3_Mmux_M2a_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X46Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f51_F5MUX_8819,
      O => U3_Mmux_M2a_mux0000_7_f51
    );
  U3_Mmux_M2a_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y51"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_91_8808,
      IB => U3_Mmux_M2a_mux0000_84_8817,
      SEL => U3_Mmux_M2a_mux0000_7_f51_BXINV_8811,
      O => U3_Mmux_M2a_mux0000_7_f51_F5MUX_8819
    );
  U3_Mmux_M2a_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f51_BXINV_8811
    );
  U3_Mmux_M2a_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f51_F6MUX_8810,
      O => U3_Mmux_M2a_mux0000_4_f7
    );
  U3_Mmux_M2a_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y51"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_6_f6,
      IB => U3_Mmux_M2a_mux0000_5_f61,
      SEL => U3_Mmux_M2a_mux0000_7_f51_BYINV_8802,
      O => U3_Mmux_M2a_mux0000_7_f51_F6MUX_8810
    );
  U3_Mmux_M2a_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_7_f51_BYINV_8802
    );
  U3_Mmux_M2a_mux0000_91 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X46Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_9_0,
      ADR2 => U3_xpix2(0),
      ADR3 => M2a_8_0,
      O => U3_Mmux_M2a_mux0000_91_8808
    );
  U3_Mmux_M2a_mux0000_72 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X47Y48"
    )
    port map (
      ADR0 => M2a_23_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2a_22_Q,
      O => U3_Mmux_M2a_mux0000_72_8847
    );
  U3_Mmux_M2a_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f51_F5MUX_8849,
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y48"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_81_8838,
      IB => U3_Mmux_M2a_mux0000_72_8847,
      SEL => U3_Mmux_M2a_mux0000_6_f51_BXINV_8841,
      O => U3_Mmux_M2a_mux0000_6_f51_F5MUX_8849
    );
  U3_Mmux_M2a_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51_BXINV_8841
    );
  U3_Mmux_M2a_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f51_F6MUX_8840,
      O => U3_Mmux_M2a_mux0000_5_f6
    );
  U3_Mmux_M2a_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y48"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_f5,
      IB => U3_Mmux_M2a_mux0000_6_f51,
      SEL => U3_Mmux_M2a_mux0000_6_f51_BYINV_8832,
      O => U3_Mmux_M2a_mux0000_6_f51_F6MUX_8840
    );
  U3_Mmux_M2a_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f51_BYINV_8832
    );
  U3_Mmux_M2a_mux0000_81 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X47Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2a_20_Q,
      ADR3 => M2a_21_Q,
      O => U3_Mmux_M2a_mux0000_81_8838
    );
  U3_Mmux_M2a_mux0000_82 : X_LUT4
    generic map(
      INIT => X"03CF",
      LOC => "SLICE_X47Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(4),
      ADR2 => M1a_12_bdd1_0,
      ADR3 => N153,
      O => U3_Mmux_M2a_mux0000_82_8878
    );
  U3_M2a_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2a_mux0000_F5MUX_8880,
      O => U3_Mmux_M2a_mux0000_7_f5
    );
  U3_M2a_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y49"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_9_8868,
      IB => U3_Mmux_M2a_mux0000_82_8878,
      SEL => U3_M2a_mux0000_BXINV_8872,
      O => U3_M2a_mux0000_F5MUX_8880
    );
  U3_M2a_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_M2a_mux0000_BXINV_8872
    );
  U3_M2a_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2a_mux0000_F6MUX_8870,
      O => U3_M2a_mux0000
    );
  U3_M2a_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y49"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_4_f7,
      IB => U3_Mmux_M2a_mux0000_3_f7,
      SEL => U3_M2a_mux0000_BYINV_8862,
      O => U3_M2a_mux0000_F6MUX_8870
    );
  U3_M2a_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(4),
      O => U3_M2a_mux0000_BYINV_8862
    );
  U3_Mmux_M2a_mux0000_9 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X47Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_14_bdd0_0,
      ADR2 => rom1_addr(4),
      ADR3 => N207,
      O => U3_Mmux_M2a_mux0000_9_8868
    );
  U3_Mmux_M2a_mux0000_85 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X47Y50"
    )
    port map (
      ADR0 => M2a_6_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2a_7_0,
      O => U3_Mmux_M2a_mux0000_85_8908
    );
  U3_Mmux_M2a_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f52_F5MUX_8910,
      O => U3_Mmux_M2a_mux0000_7_f52
    );
  U3_Mmux_M2a_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y50"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_92_8899,
      IB => U3_Mmux_M2a_mux0000_85_8908,
      SEL => U3_Mmux_M2a_mux0000_7_f52_BXINV_8902,
      O => U3_Mmux_M2a_mux0000_7_f52_F5MUX_8910
    );
  U3_Mmux_M2a_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f52_BXINV_8902
    );
  U3_Mmux_M2a_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f52_F6MUX_8901,
      O => U3_Mmux_M2a_mux0000_6_f6
    );
  U3_Mmux_M2a_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y50"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_8_f5,
      IB => U3_Mmux_M2a_mux0000_7_f52,
      SEL => U3_Mmux_M2a_mux0000_7_f52_BYINV_8893,
      O => U3_Mmux_M2a_mux0000_7_f52_F6MUX_8901
    );
  U3_Mmux_M2a_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_7_f52_BYINV_8893
    );
  U3_Mmux_M2a_mux0000_92 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X47Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_5_0,
      ADR2 => M2a_4_Q,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2a_mux0000_92_8899
    );
  U3_Mmux_M2a_mux0000_93 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X47Y51"
    )
    port map (
      ADR0 => M2a_3_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => M2a_2_0,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_93_8932
    );
  U3_Mmux_M2a_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X47Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_8_f5_F5MUX_8934,
      O => U3_Mmux_M2a_mux0000_8_f5
    );
  U3_Mmux_M2a_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y51"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_10_8924,
      IB => U3_Mmux_M2a_mux0000_93_8932,
      SEL => U3_Mmux_M2a_mux0000_8_f5_BXINV_8926,
      O => U3_Mmux_M2a_mux0000_8_f5_F5MUX_8934
    );
  U3_Mmux_M2a_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_BXINV_8926
    );
  U3_Mmux_M2a_mux0000_10 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X47Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2a_1_0,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_10_8924
    );
  U3_Mmux_M2_mux0000_6 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X42Y48"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => VCC,
      ADR2 => M2_30_Q,
      ADR3 => M1_0_0,
      O => U3_Mmux_M2_mux0000_6_8962
    );
  U3_Mmux_M2_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_5_f5_F5MUX_8964,
      O => U3_Mmux_M2_mux0000_5_f5
    );
  U3_Mmux_M2_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y48"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_8953,
      IB => U3_Mmux_M2_mux0000_6_8962,
      SEL => U3_Mmux_M2_mux0000_5_f5_BXINV_8956,
      O => U3_Mmux_M2_mux0000_5_f5_F5MUX_8964
    );
  U3_Mmux_M2_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_BXINV_8956
    );
  U3_Mmux_M2_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_5_f5_F6MUX_8955,
      O => U3_Mmux_M2_mux0000_4_f6
    );
  U3_Mmux_M2_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y48"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_6_f5,
      IB => U3_Mmux_M2_mux0000_5_f5,
      SEL => U3_Mmux_M2_mux0000_5_f5_BYINV_8947,
      O => U3_Mmux_M2_mux0000_5_f5_F6MUX_8955
    );
  U3_Mmux_M2_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f5_BYINV_8947
    );
  U3_Mmux_M2_mux0000_7 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X42Y48"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M2_29_Q,
      ADR2 => M2_28_Q,
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_7_8953
    );
  U3_Mmux_M2_mux0000_71 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X42Y49"
    )
    port map (
      ADR0 => N291,
      ADR1 => rom1_addr(4),
      ADR2 => VCC,
      ADR3 => M1_4_bdd0_0,
      O => U3_Mmux_M2_mux0000_71_8992
    );
  U3_Mmux_M2_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X42Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f5_F5MUX_8994,
      O => U3_Mmux_M2_mux0000_6_f5
    );
  U3_Mmux_M2_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y49"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_8_8983,
      IB => U3_Mmux_M2_mux0000_71_8992,
      SEL => U3_Mmux_M2_mux0000_6_f5_BXINV_8986,
      O => U3_Mmux_M2_mux0000_6_f5_F5MUX_8994
    );
  U3_Mmux_M2_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_BXINV_8986
    );
  U3_Mmux_M2_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f5_F6MUX_8985,
      O => U3_Mmux_M2_mux0000_3_f7
    );
  U3_Mmux_M2_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y49"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_5_f6,
      IB => U3_Mmux_M2_mux0000_4_f6,
      SEL => U3_Mmux_M2_mux0000_6_f5_BYINV_8977,
      O => U3_Mmux_M2_mux0000_6_f5_F6MUX_8985
    );
  U3_Mmux_M2_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_6_f5_BYINV_8977
    );
  U3_Mmux_M2_mux0000_8 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X42Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(4),
      ADR2 => N293,
      ADR3 => M1_4_bdd0_0,
      O => U3_Mmux_M2_mux0000_8_8983
    );
  U3_Mmux_M2_mux0000_73 : X_LUT4
    generic map(
      INIT => X"3535",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => M1_14_bdd1_0,
      ADR1 => N297,
      ADR2 => rom1_addr(4),
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_73_9022
    );
  U3_Mmux_M2_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f52_F5MUX_9024,
      O => U3_Mmux_M2_mux0000_6_f52
    );
  U3_Mmux_M2_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y50"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_83_9013,
      IB => U3_Mmux_M2_mux0000_73_9022,
      SEL => U3_Mmux_M2_mux0000_6_f52_BXINV_9016,
      O => U3_Mmux_M2_mux0000_6_f52_F5MUX_9024
    );
  U3_Mmux_M2_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f52_BXINV_9016
    );
  U3_Mmux_M2_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f52_F6MUX_9015,
      O => U3_Mmux_M2_mux0000_5_f61
    );
  U3_Mmux_M2_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y50"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_f51,
      IB => U3_Mmux_M2_mux0000_6_f52,
      SEL => U3_Mmux_M2_mux0000_6_f52_BYINV_9007,
      O => U3_Mmux_M2_mux0000_6_f52_F6MUX_9015
    );
  U3_Mmux_M2_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f52_BYINV_9007
    );
  U3_Mmux_M2_mux0000_83 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => VCC,
      ADR2 => M2_12_Q,
      ADR3 => M2_13_Q,
      O => U3_Mmux_M2_mux0000_83_9013
    );
  U3_Mmux_M2_mux0000_84 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X42Y51"
    )
    port map (
      ADR0 => M2_10_0,
      ADR1 => M2_11_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_84_9052
    );
  U3_Mmux_M2_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X42Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f51_F5MUX_9054,
      O => U3_Mmux_M2_mux0000_7_f51
    );
  U3_Mmux_M2_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y51"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_91_9043,
      IB => U3_Mmux_M2_mux0000_84_9052,
      SEL => U3_Mmux_M2_mux0000_7_f51_BXINV_9046,
      O => U3_Mmux_M2_mux0000_7_f51_F5MUX_9054
    );
  U3_Mmux_M2_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f51_BXINV_9046
    );
  U3_Mmux_M2_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f51_F6MUX_9045,
      O => U3_Mmux_M2_mux0000_4_f7
    );
  U3_Mmux_M2_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y51"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_6_f6,
      IB => U3_Mmux_M2_mux0000_5_f61,
      SEL => U3_Mmux_M2_mux0000_7_f51_BYINV_9037,
      O => U3_Mmux_M2_mux0000_7_f51_F6MUX_9045
    );
  U3_Mmux_M2_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_7_f51_BYINV_9037
    );
  U3_Mmux_M2_mux0000_91 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X42Y51"
    )
    port map (
      ADR0 => M2_9_0,
      ADR1 => M2_8_0,
      ADR2 => U3_xpix2(0),
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_91_9043
    );
  U3_Mmux_M2_mux0000_72 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X43Y48"
    )
    port map (
      ADR0 => M2_23_Q,
      ADR1 => M2_22_Q,
      ADR2 => VCC,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2_mux0000_72_9082
    );
  U3_Mmux_M2_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f51_F5MUX_9084,
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y48"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_81_9073,
      IB => U3_Mmux_M2_mux0000_72_9082,
      SEL => U3_Mmux_M2_mux0000_6_f51_BXINV_9076,
      O => U3_Mmux_M2_mux0000_6_f51_F5MUX_9084
    );
  U3_Mmux_M2_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51_BXINV_9076
    );
  U3_Mmux_M2_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f51_F6MUX_9075,
      O => U3_Mmux_M2_mux0000_5_f6
    );
  U3_Mmux_M2_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y48"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_f5,
      IB => U3_Mmux_M2_mux0000_6_f51,
      SEL => U3_Mmux_M2_mux0000_6_f51_BYINV_9067,
      O => U3_Mmux_M2_mux0000_6_f51_F6MUX_9075
    );
  U3_Mmux_M2_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f51_BYINV_9067
    );
  U3_Mmux_M2_mux0000_81 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X43Y48"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M2_20_Q,
      ADR2 => VCC,
      ADR3 => M2_21_Q,
      O => U3_Mmux_M2_mux0000_81_9073
    );
  U3_Mmux_M2_mux0000_82 : X_LUT4
    generic map(
      INIT => X"303F",
      LOC => "SLICE_X43Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N157,
      ADR2 => rom1_addr(4),
      ADR3 => M2_18_bdd0_0,
      O => U3_Mmux_M2_mux0000_82_9113
    );
  U3_M2_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2_mux0000_F5MUX_9115,
      O => U3_Mmux_M2_mux0000_7_f5
    );
  U3_M2_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y49"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_9_9103,
      IB => U3_Mmux_M2_mux0000_82_9113,
      SEL => U3_M2_mux0000_BXINV_9107,
      O => U3_M2_mux0000_F5MUX_9115
    );
  U3_M2_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_M2_mux0000_BXINV_9107
    );
  U3_M2_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2_mux0000_F6MUX_9105,
      O => U3_M2_mux0000
    );
  U3_M2_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y49"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_4_f7,
      IB => U3_Mmux_M2_mux0000_3_f7,
      SEL => U3_M2_mux0000_BYINV_9097,
      O => U3_M2_mux0000_F6MUX_9105
    );
  U3_M2_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(4),
      O => U3_M2_mux0000_BYINV_9097
    );
  U3_Mmux_M2_mux0000_9 : X_LUT4
    generic map(
      INIT => X"505F",
      LOC => "SLICE_X43Y49"
    )
    port map (
      ADR0 => N295,
      ADR1 => VCC,
      ADR2 => rom1_addr(4),
      ADR3 => M1_14_bdd1_0,
      O => U3_Mmux_M2_mux0000_9_9103
    );
  U3_Mmux_M2_mux0000_85 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_6_0,
      ADR3 => M2_7_0,
      O => U3_Mmux_M2_mux0000_85_9143
    );
  U3_Mmux_M2_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f52_F5MUX_9145,
      O => U3_Mmux_M2_mux0000_7_f52
    );
  U3_Mmux_M2_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y50"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_92_9134,
      IB => U3_Mmux_M2_mux0000_85_9143,
      SEL => U3_Mmux_M2_mux0000_7_f52_BXINV_9137,
      O => U3_Mmux_M2_mux0000_7_f52_F5MUX_9145
    );
  U3_Mmux_M2_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f52_BXINV_9137
    );
  U3_Mmux_M2_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f52_F6MUX_9136,
      O => U3_Mmux_M2_mux0000_6_f6
    );
  U3_Mmux_M2_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y50"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_8_f5,
      IB => U3_Mmux_M2_mux0000_7_f52,
      SEL => U3_Mmux_M2_mux0000_7_f52_BYINV_9128,
      O => U3_Mmux_M2_mux0000_7_f52_F6MUX_9136
    );
  U3_Mmux_M2_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_7_f52_BYINV_9128
    );
  U3_Mmux_M2_mux0000_92 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => M2_4_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_9134
    );
  U3_Mmux_M2_mux0000_93 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X43Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_3_Q,
      ADR3 => M2_2_Q,
      O => U3_Mmux_M2_mux0000_93_9167
    );
  U3_Mmux_M2_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X43Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_8_f5_F5MUX_9169,
      O => U3_Mmux_M2_mux0000_8_f5
    );
  U3_Mmux_M2_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y51"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_10_9159,
      IB => U3_Mmux_M2_mux0000_93_9167,
      SEL => U3_Mmux_M2_mux0000_8_f5_BXINV_9161,
      O => U3_Mmux_M2_mux0000_8_f5_F5MUX_9169
    );
  U3_Mmux_M2_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_BXINV_9161
    );
  U3_Mmux_M2_mux0000_10 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X43Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_1_Q,
      ADR3 => M2_0_0,
      O => U3_Mmux_M2_mux0000_10_9159
    );
  U3_Mmux_M1_mux0000_6 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X40Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_31_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_30_Q,
      O => U3_Mmux_M1_mux0000_6_9197
    );
  U3_Mmux_M1_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_5_f5_F5MUX_9199,
      O => U3_Mmux_M1_mux0000_5_f5
    );
  U3_Mmux_M1_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y28"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_9188,
      IB => U3_Mmux_M1_mux0000_6_9197,
      SEL => U3_Mmux_M1_mux0000_5_f5_BXINV_9191,
      O => U3_Mmux_M1_mux0000_5_f5_F5MUX_9199
    );
  U3_Mmux_M1_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_BXINV_9191
    );
  U3_Mmux_M1_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_5_f5_F6MUX_9190,
      O => U3_Mmux_M1_mux0000_4_f6
    );
  U3_Mmux_M1_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y28"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_6_f5,
      IB => U3_Mmux_M1_mux0000_5_f5,
      SEL => U3_Mmux_M1_mux0000_5_f5_BYINV_9182,
      O => U3_Mmux_M1_mux0000_5_f5_F6MUX_9190
    );
  U3_Mmux_M1_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f5_BYINV_9182
    );
  U3_Mmux_M1_mux0000_7 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X40Y28"
    )
    port map (
      ADR0 => M1_28_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_29_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_7_9188
    );
  U3_Mmux_M1_mux0000_71 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X40Y29"
    )
    port map (
      ADR0 => M1_26_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_27_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_71_9227
    );
  U3_Mmux_M1_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f5_F5MUX_9229,
      O => U3_Mmux_M1_mux0000_6_f5
    );
  U3_Mmux_M1_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y29"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_8_9218,
      IB => U3_Mmux_M1_mux0000_71_9227,
      SEL => U3_Mmux_M1_mux0000_6_f5_BXINV_9221,
      O => U3_Mmux_M1_mux0000_6_f5_F5MUX_9229
    );
  U3_Mmux_M1_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_BXINV_9221
    );
  U3_Mmux_M1_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f5_F6MUX_9220,
      O => U3_Mmux_M1_mux0000_3_f7
    );
  U3_Mmux_M1_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y29"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_5_f6,
      IB => U3_Mmux_M1_mux0000_4_f6,
      SEL => U3_Mmux_M1_mux0000_6_f5_BYINV_9212,
      O => U3_Mmux_M1_mux0000_6_f5_F6MUX_9220
    );
  U3_Mmux_M1_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_6_f5_BYINV_9212
    );
  U3_Mmux_M1_mux0000_8 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X40Y29"
    )
    port map (
      ADR0 => M1_25_Q,
      ADR1 => M1_24_0,
      ADR2 => U3_xpix1(0),
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_8_9218
    );
  U3_Mmux_M1_mux0000_73 : X_LUT4
    generic map(
      INIT => X"1D1D",
      LOC => "SLICE_X40Y30"
    )
    port map (
      ADR0 => M1_14_bdd1_0,
      ADR1 => rom1_addr(4),
      ADR2 => N211,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_73_9257
    );
  U3_Mmux_M1_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f52_F5MUX_9259,
      O => U3_Mmux_M1_mux0000_6_f52
    );
  U3_Mmux_M1_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y30"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_83_9248,
      IB => U3_Mmux_M1_mux0000_73_9257,
      SEL => U3_Mmux_M1_mux0000_6_f52_BXINV_9251,
      O => U3_Mmux_M1_mux0000_6_f52_F5MUX_9259
    );
  U3_Mmux_M1_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f52_BXINV_9251
    );
  U3_Mmux_M1_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f52_F6MUX_9250,
      O => U3_Mmux_M1_mux0000_5_f61
    );
  U3_Mmux_M1_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y30"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_f51,
      IB => U3_Mmux_M1_mux0000_6_f52,
      SEL => U3_Mmux_M1_mux0000_6_f52_BYINV_9243,
      O => U3_Mmux_M1_mux0000_6_f52_F6MUX_9250
    );
  U3_Mmux_M1_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f52_BYINV_9243
    );
  U3_Mmux_M1_mux0000_83 : X_LUT4
    generic map(
      INIT => X"01F1",
      LOC => "SLICE_X40Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => N325_0,
      ADR2 => rom1_addr(4),
      ADR3 => N139,
      O => U3_Mmux_M1_mux0000_83_9248
    );
  U3_Mmux_M1_mux0000_84 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X40Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_10_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_11_Q,
      O => U3_Mmux_M1_mux0000_84_9287
    );
  U3_Mmux_M1_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f51_F5MUX_9289,
      O => U3_Mmux_M1_mux0000_7_f51
    );
  U3_Mmux_M1_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y31"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_91_9278,
      IB => U3_Mmux_M1_mux0000_84_9287,
      SEL => U3_Mmux_M1_mux0000_7_f51_BXINV_9281,
      O => U3_Mmux_M1_mux0000_7_f51_F5MUX_9289
    );
  U3_Mmux_M1_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f51_BXINV_9281
    );
  U3_Mmux_M1_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f51_F6MUX_9280,
      O => U3_Mmux_M1_mux0000_4_f7
    );
  U3_Mmux_M1_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y31"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_6_f6,
      IB => U3_Mmux_M1_mux0000_5_f61,
      SEL => U3_Mmux_M1_mux0000_7_f51_BYINV_9272,
      O => U3_Mmux_M1_mux0000_7_f51_F6MUX_9280
    );
  U3_Mmux_M1_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_7_f51_BYINV_9272
    );
  U3_Mmux_M1_mux0000_91 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X40Y31"
    )
    port map (
      ADR0 => M1_9_Q,
      ADR1 => VCC,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_8_Q,
      O => U3_Mmux_M1_mux0000_91_9278
    );
  U3_Mmux_M1_mux0000_72 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X41Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_22_0_4914,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_9317
    );
  U3_Mmux_M1_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f51_F5MUX_9319,
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y28"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_81_9308,
      IB => U3_Mmux_M1_mux0000_72_9317,
      SEL => U3_Mmux_M1_mux0000_6_f51_BXINV_9311,
      O => U3_Mmux_M1_mux0000_6_f51_F5MUX_9319
    );
  U3_Mmux_M1_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f51_BXINV_9311
    );
  U3_Mmux_M1_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f51_F6MUX_9310,
      O => U3_Mmux_M1_mux0000_5_f6
    );
  U3_Mmux_M1_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y28"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_f5,
      IB => U3_Mmux_M1_mux0000_6_f51,
      SEL => U3_Mmux_M1_mux0000_6_f51_BYINV_9302,
      O => U3_Mmux_M1_mux0000_6_f51_F6MUX_9310
    );
  U3_Mmux_M1_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f51_BYINV_9302
    );
  U3_Mmux_M1_mux0000_81 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X41Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_20_Q,
      ADR3 => M1_21_0,
      O => U3_Mmux_M1_mux0000_81_9308
    );
  U3_Mmux_M1_mux0000_82 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X41Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_19_Q,
      ADR3 => M1_18_Q,
      O => U3_Mmux_M1_mux0000_82_9348
    );
  U3_M1_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1_mux0000_F5MUX_9350,
      O => U3_Mmux_M1_mux0000_7_f5
    );
  U3_M1_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y29"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_9_9338,
      IB => U3_Mmux_M1_mux0000_82_9348,
      SEL => U3_M1_mux0000_BXINV_9342,
      O => U3_M1_mux0000_F5MUX_9350
    );
  U3_M1_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_M1_mux0000_BXINV_9342
    );
  U3_M1_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1_mux0000_F6MUX_9340,
      O => U3_M1_mux0000
    );
  U3_M1_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y29"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_4_f7,
      IB => U3_Mmux_M1_mux0000_3_f7,
      SEL => U3_M1_mux0000_BYINV_9332,
      O => U3_M1_mux0000_F6MUX_9340
    );
  U3_M1_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(4),
      O => U3_M1_mux0000_BYINV_9332
    );
  U3_Mmux_M1_mux0000_9 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X41Y29"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => N209,
      ADR2 => VCC,
      ADR3 => M1_14_bdd1_0,
      O => U3_Mmux_M1_mux0000_9_9338
    );
  U3_Mmux_M1_mux0000_85 : X_LUT4
    generic map(
      INIT => X"3535",
      LOC => "SLICE_X41Y30"
    )
    port map (
      ADR0 => M1_4_bdd0_0,
      ADR1 => N279,
      ADR2 => rom1_addr(4),
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_85_9378
    );
  U3_Mmux_M1_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f52_F5MUX_9380,
      O => U3_Mmux_M1_mux0000_7_f52
    );
  U3_Mmux_M1_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y30"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_92_9369,
      IB => U3_Mmux_M1_mux0000_85_9378,
      SEL => U3_Mmux_M1_mux0000_7_f52_BXINV_9372,
      O => U3_Mmux_M1_mux0000_7_f52_F5MUX_9380
    );
  U3_Mmux_M1_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f52_BXINV_9372
    );
  U3_Mmux_M1_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f52_F6MUX_9371,
      O => U3_Mmux_M1_mux0000_6_f6
    );
  U3_Mmux_M1_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y30"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_8_f5,
      IB => U3_Mmux_M1_mux0000_7_f52,
      SEL => U3_Mmux_M1_mux0000_7_f52_BYINV_9363,
      O => U3_Mmux_M1_mux0000_7_f52_F6MUX_9371
    );
  U3_Mmux_M1_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_7_f52_BYINV_9363
    );
  U3_Mmux_M1_mux0000_92 : X_LUT4
    generic map(
      INIT => X"1D1D",
      LOC => "SLICE_X41Y30"
    )
    port map (
      ADR0 => M1_4_bdd0_0,
      ADR1 => rom1_addr(4),
      ADR2 => N281,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_92_9369
    );
  U3_Mmux_M1_mux0000_93 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X41Y31"
    )
    port map (
      ADR0 => M1_2_Q,
      ADR1 => M1_3_Q,
      ADR2 => VCC,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1_mux0000_93_9402
    );
  U3_Mmux_M1_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_8_f5_F5MUX_9404,
      O => U3_Mmux_M1_mux0000_8_f5
    );
  U3_Mmux_M1_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_10_9394,
      IB => U3_Mmux_M1_mux0000_93_9402,
      SEL => U3_Mmux_M1_mux0000_8_f5_BXINV_9396,
      O => U3_Mmux_M1_mux0000_8_f5_F5MUX_9404
    );
  U3_Mmux_M1_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_BXINV_9396
    );
  U3_Mmux_M1_mux0000_10 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X41Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_1_Q,
      ADR2 => M1_0_0,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1_mux0000_10_9394
    );
  U3_Mmux_M1a_mux0000_6 : X_LUT4
    generic map(
      INIT => X"0C08",
      LOC => "SLICE_X40Y32"
    )
    port map (
      ADR0 => M1a_30_36_0,
      ADR1 => M1a_29_51_0,
      ADR2 => U3_xpix1(0),
      ADR3 => rom1_addr(3),
      O => U3_Mmux_M1a_mux0000_6_9432
    );
  U3_Mmux_M1a_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_5_f5_F5MUX_9434,
      O => U3_Mmux_M1a_mux0000_5_f5
    );
  U3_Mmux_M1a_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y32"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_9424,
      IB => U3_Mmux_M1a_mux0000_6_9432,
      SEL => U3_Mmux_M1a_mux0000_5_f5_BXINV_9427,
      O => U3_Mmux_M1a_mux0000_5_f5_F5MUX_9434
    );
  U3_Mmux_M1a_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_BXINV_9427
    );
  U3_Mmux_M1a_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_5_f5_F6MUX_9426,
      O => U3_Mmux_M1a_mux0000_4_f6
    );
  U3_Mmux_M1a_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y32"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_6_f5,
      IB => U3_Mmux_M1a_mux0000_5_f5,
      SEL => U3_Mmux_M1a_mux0000_5_f5_BYINV_9418,
      O => U3_Mmux_M1a_mux0000_5_f5_F6MUX_9426
    );
  U3_Mmux_M1a_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f5_BYINV_9418
    );
  U3_Mmux_M1a_mux0000_7 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X40Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_29_0,
      ADR2 => M1a_28_0,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1a_mux0000_7_9424
    );
  U3_Mmux_M1a_mux0000_71 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X40Y33"
    )
    port map (
      ADR0 => M1a_27_Q,
      ADR1 => M1a_26_0,
      ADR2 => VCC,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1a_mux0000_71_9462
    );
  U3_Mmux_M1a_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f5_F5MUX_9464,
      O => U3_Mmux_M1a_mux0000_6_f5
    );
  U3_Mmux_M1a_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y33"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_8_9453,
      IB => U3_Mmux_M1a_mux0000_71_9462,
      SEL => U3_Mmux_M1a_mux0000_6_f5_BXINV_9456,
      O => U3_Mmux_M1a_mux0000_6_f5_F5MUX_9464
    );
  U3_Mmux_M1a_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_BXINV_9456
    );
  U3_Mmux_M1a_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f5_F6MUX_9455,
      O => U3_Mmux_M1a_mux0000_3_f7
    );
  U3_Mmux_M1a_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y33"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_5_f6,
      IB => U3_Mmux_M1a_mux0000_4_f6,
      SEL => U3_Mmux_M1a_mux0000_6_f5_BYINV_9447,
      O => U3_Mmux_M1a_mux0000_6_f5_F6MUX_9455
    );
  U3_Mmux_M1a_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_6_f5_BYINV_9447
    );
  U3_Mmux_M1a_mux0000_8 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X40Y33"
    )
    port map (
      ADR0 => M1a_24_0,
      ADR1 => M1a_25_0,
      ADR2 => VCC,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1a_mux0000_8_9453
    );
  U3_Mmux_M1a_mux0000_73 : X_LUT4
    generic map(
      INIT => X"CC0F",
      LOC => "SLICE_X40Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N285,
      ADR2 => M1a_14_bdd0_0,
      ADR3 => rom1_addr(4),
      O => U3_Mmux_M1a_mux0000_73_9492
    );
  U3_Mmux_M1a_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f52_F5MUX_9494,
      O => U3_Mmux_M1a_mux0000_6_f52
    );
  U3_Mmux_M1a_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_83_9483,
      IB => U3_Mmux_M1a_mux0000_73_9492,
      SEL => U3_Mmux_M1a_mux0000_6_f52_BXINV_9486,
      O => U3_Mmux_M1a_mux0000_6_f52_F5MUX_9494
    );
  U3_Mmux_M1a_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f52_BXINV_9486
    );
  U3_Mmux_M1a_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f52_F6MUX_9485,
      O => U3_Mmux_M1a_mux0000_5_f61
    );
  U3_Mmux_M1a_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_f51,
      IB => U3_Mmux_M1a_mux0000_6_f52,
      SEL => U3_Mmux_M1a_mux0000_6_f52_BYINV_9477,
      O => U3_Mmux_M1a_mux0000_6_f52_F6MUX_9485
    );
  U3_Mmux_M1a_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f52_BYINV_9477
    );
  U3_Mmux_M1a_mux0000_83 : X_LUT4
    generic map(
      INIT => X"0F55",
      LOC => "SLICE_X40Y34"
    )
    port map (
      ADR0 => M1a_12_bdd1_0,
      ADR1 => VCC,
      ADR2 => N155,
      ADR3 => rom1_addr(4),
      O => U3_Mmux_M1a_mux0000_83_9483
    );
  U3_Mmux_M1a_mux0000_84 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X40Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_10_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_11_Q,
      O => U3_Mmux_M1a_mux0000_84_9522
    );
  U3_Mmux_M1a_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f51_F5MUX_9524,
      O => U3_Mmux_M1a_mux0000_7_f51
    );
  U3_Mmux_M1a_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_91_9513,
      IB => U3_Mmux_M1a_mux0000_84_9522,
      SEL => U3_Mmux_M1a_mux0000_7_f51_BXINV_9516,
      O => U3_Mmux_M1a_mux0000_7_f51_F5MUX_9524
    );
  U3_Mmux_M1a_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f51_BXINV_9516
    );
  U3_Mmux_M1a_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f51_F6MUX_9515,
      O => U3_Mmux_M1a_mux0000_4_f7
    );
  U3_Mmux_M1a_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_6_f6,
      IB => U3_Mmux_M1a_mux0000_5_f61,
      SEL => U3_Mmux_M1a_mux0000_7_f51_BYINV_9507,
      O => U3_Mmux_M1a_mux0000_7_f51_F6MUX_9515
    );
  U3_Mmux_M1a_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_7_f51_BYINV_9507
    );
  U3_Mmux_M1a_mux0000_91 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X40Y35"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => M1a_9_Q,
      ADR2 => M1a_8_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1a_mux0000_91_9513
    );
  U3_Mmux_M1a_mux0000_72 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X41Y32"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => VCC,
      ADR2 => M1a_23_0,
      ADR3 => M1a_22_0,
      O => U3_Mmux_M1a_mux0000_72_9552
    );
  U3_Mmux_M1a_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f51_F5MUX_9554,
      O => U3_Mmux_M1a_mux0000_6_f51
    );
  U3_Mmux_M1a_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_81_9543,
      IB => U3_Mmux_M1a_mux0000_72_9552,
      SEL => U3_Mmux_M1a_mux0000_6_f51_BXINV_9546,
      O => U3_Mmux_M1a_mux0000_6_f51_F5MUX_9554
    );
  U3_Mmux_M1a_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f51_BXINV_9546
    );
  U3_Mmux_M1a_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f51_F6MUX_9545,
      O => U3_Mmux_M1a_mux0000_5_f6
    );
  U3_Mmux_M1a_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_f5,
      IB => U3_Mmux_M1a_mux0000_6_f51,
      SEL => U3_Mmux_M1a_mux0000_6_f51_BYINV_9537,
      O => U3_Mmux_M1a_mux0000_6_f51_F6MUX_9545
    );
  U3_Mmux_M1a_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f51_BYINV_9537
    );
  U3_Mmux_M1a_mux0000_81 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X41Y32"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => VCC,
      ADR2 => M1a_20_Q,
      ADR3 => M1a_21_Q,
      O => U3_Mmux_M1a_mux0000_81_9543
    );
  U3_Mmux_M1a_mux0000_82 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X41Y33"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => M1a_19_Q,
      ADR2 => VCC,
      ADR3 => M1a_18_Q,
      O => U3_Mmux_M1a_mux0000_82_9583
    );
  U3_M1a_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1a_mux0000_F5MUX_9585,
      O => U3_Mmux_M1a_mux0000_7_f5
    );
  U3_M1a_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_9_9573,
      IB => U3_Mmux_M1a_mux0000_82_9583,
      SEL => U3_M1a_mux0000_BXINV_9577,
      O => U3_M1a_mux0000_F5MUX_9585
    );
  U3_M1a_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_M1a_mux0000_BXINV_9577
    );
  U3_M1a_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1a_mux0000_F6MUX_9575,
      O => U3_M1a_mux0000
    );
  U3_M1a_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_4_f7,
      IB => U3_Mmux_M1a_mux0000_3_f7,
      SEL => U3_M1a_mux0000_BYINV_9567,
      O => U3_M1a_mux0000_F6MUX_9575
    );
  U3_M1a_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(4),
      O => U3_M1a_mux0000_BYINV_9567
    );
  U3_Mmux_M1a_mux0000_9 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X41Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_14_bdd0_0,
      ADR2 => rom1_addr(4),
      ADR3 => N283,
      O => U3_Mmux_M1a_mux0000_9_9573
    );
  U3_Mmux_M1a_mux0000_85 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X41Y34"
    )
    port map (
      ADR0 => N287,
      ADR1 => rom1_addr(4),
      ADR2 => VCC,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M1a_mux0000_85_9613
    );
  U3_Mmux_M1a_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f52_F5MUX_9615,
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_92_9604,
      IB => U3_Mmux_M1a_mux0000_85_9613,
      SEL => U3_Mmux_M1a_mux0000_7_f52_BXINV_9607,
      O => U3_Mmux_M1a_mux0000_7_f52_F5MUX_9615
    );
  U3_Mmux_M1a_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52_BXINV_9607
    );
  U3_Mmux_M1a_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f52_F6MUX_9606,
      O => U3_Mmux_M1a_mux0000_6_f6
    );
  U3_Mmux_M1a_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_8_f5,
      IB => U3_Mmux_M1a_mux0000_7_f52,
      SEL => U3_Mmux_M1a_mux0000_7_f52_BYINV_9598,
      O => U3_Mmux_M1a_mux0000_7_f52_F6MUX_9606
    );
  U3_Mmux_M1a_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_7_f52_BYINV_9598
    );
  U3_Mmux_M1a_mux0000_92 : X_LUT4
    generic map(
      INIT => X"0A5F",
      LOC => "SLICE_X41Y34"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => VCC,
      ADR2 => N289,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M1a_mux0000_92_9604
    );
  U3_Mmux_M1a_mux0000_93 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X41Y35"
    )
    port map (
      ADR0 => M1a_3_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => M1a_2_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1a_mux0000_93_9637
    );
  U3_Mmux_M1a_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_8_f5_F5MUX_9639,
      O => U3_Mmux_M1a_mux0000_8_f5
    );
  U3_Mmux_M1a_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_10_9629,
      IB => U3_Mmux_M1a_mux0000_93_9637,
      SEL => U3_Mmux_M1a_mux0000_8_f5_BXINV_9631,
      O => U3_Mmux_M1a_mux0000_8_f5_F5MUX_9639
    );
  U3_Mmux_M1a_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_BXINV_9631
    );
  U3_Mmux_M1a_mux0000_10 : X_LUT4
    generic map(
      INIT => X"C040",
      LOC => "SLICE_X41Y35"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1a_1_8_0,
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_1_20_0,
      O => U3_Mmux_M1a_mux0000_10_9629
    );
  M2a_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_3_F5MUX_9660,
      O => M2a_3_f6_F5_I1
    );
  M2a_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y48"
    )
    port map (
      IA => M2a_3_1_9655,
      IB => NLW_M2a_3_F5MUX_IB_UNCONNECTED,
      SEL => M2a_3_BXINV_9659,
      O => M2a_3_F5MUX_9660
    );
  M2a_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => M2a_3_BXINV_9659
    );
  M2a_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_3_F6MUX_9657,
      O => M2a_3_Q
    );
  M2a_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y48"
    )
    port map (
      IA => M2a_3_f5,
      IB => M2a_3_f6_F5_I1,
      SEL => M2a_3_BYINV_9650,
      O => M2a_3_F6MUX_9657
    );
  M2a_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2a_3_BYINV_9650
    );
  M2a_3_1 : X_LUT4
    generic map(
      INIT => X"001D",
      LOC => "SLICE_X51Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2a_3_1_9655
    );
  M2a_3_2 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X51Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2a_3_2_9682
    );
  M2a_3_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X51Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_3_f5_F5MUX_9684,
      O => M2a_3_f5
    );
  M2a_3_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y49"
    )
    port map (
      IA => M2a_3_3_9675,
      IB => M2a_3_2_9682,
      SEL => M2a_3_f5_BXINV_9677,
      O => M2a_3_f5_F5MUX_9684
    );
  M2a_3_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M2a_3_f5_BXINV_9677
    );
  M2a_3_3 : X_LUT4
    generic map(
      INIT => X"080D",
      LOC => "SLICE_X51Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_4_bdd10_0,
      ADR2 => rom1_addr(3),
      ADR3 => M2_3_bdd7_0,
      O => M2a_3_3_9675
    );
  dp_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => dp_O,
      O => dp
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
  ja1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_INBUF,
      O => ja1_IBUF_4977
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
  a_to_g_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => a_to_g_0_O,
      O => a_to_g(0)
    );
  a_to_g_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => a_to_g_1_O,
      O => a_to_g(1)
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
  an_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => an_3_O,
      O => an(3)
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
  sw_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IBUF_4991
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
  sw_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IBUF_4992
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
  sw_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IBUF_4993
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
  sw_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IBUF_4994
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
  sw_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_4_INBUF,
      O => sw_4_IBUF_4995
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
  sw_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_5_INBUF,
      O => sw_5_IBUF_4996
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
  sw_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_6_INBUF,
      O => sw_6_IBUF_4997
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
  sw_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_7_INBUF,
      O => sw_7_IBUF_4998
    );
  hsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => hsync_O,
      O => hsync
    );
  vsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => vsync_O,
      O => vsync
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
      O => btn_0_IBUF_5001
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
      O => btn_1_IBUF_5002
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
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_5003
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
  red_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => red_0_O,
      O => red(0)
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
      LOC => "BUFGMUX_X1Y0"
    )
    port map (
      I0 => U1_q_0_BUFG_I0_INV,
      I1 => GND,
      S => U1_q_0_BUFG_S_INVNOT,
      O => U1_q(0)
    );
  U1_q_0_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U1_q_0_BUFG_S_INVNOT
    );
  U1_q_0_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01,
      O => U1_q_0_BUFG_I0_INV
    );
  U3_q_17_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => U3_q_17_BUFG_I0_INV,
      I1 => GND,
      S => U3_q_17_BUFG_S_INVNOT,
      O => U3_q(17)
    );
  U3_q_17_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_q_17_BUFG_S_INVNOT
    );
  U3_q_17_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q_171,
      O => U3_q_17_BUFG_I0_INV
    );
  x7_digit_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_1_F5MUX_9999,
      O => x7_digit(1)
    );
  x7_digit_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y66"
    )
    port map (
      IA => x7_Mmux_digit_41_9986,
      IB => x7_digit_1_F,
      SEL => x7_digit_1_BXINV_9988,
      O => x7_digit_1_F5MUX_9999
    );
  x7_digit_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_1_BXINV_9988
    );
  x7_digit_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_2_F5MUX_10024,
      O => x7_digit(2)
    );
  x7_digit_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y66"
    )
    port map (
      IA => x7_Mmux_digit_42_10011,
      IB => x7_digit_2_F,
      SEL => x7_digit_2_BXINV_10013,
      O => x7_digit_2_F5MUX_10024
    );
  x7_digit_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_2_BXINV_10013
    );
  N157_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N157_F5MUX_10049,
      O => N157
    );
  N157_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y45"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_82_SW0,
      IB => M1_12_bdd0_rt_10047,
      SEL => N157_BXINV_10039,
      O => N157_F5MUX_10049
    );
  N157_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(0),
      O => N157_BXINV_10039
    );
  U3_Mmux_M2a_mux0000_8_SW01 : X_LUT4
    generic map(
      INIT => X"66CB",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => U3_Mmux_M2a_mux0000_8_SW0
    );
  N205_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N205_F5MUX_10074,
      O => N205
    );
  N205_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y48"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_8_SW01_10065,
      IB => U3_Mmux_M2a_mux0000_8_SW0,
      SEL => N205_BXINV_10067,
      O => N205_F5MUX_10074
    );
  N205_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(0),
      O => N205_BXINV_10067
    );
  U3_Mmux_M2a_mux0000_8_SW02 : X_LUT4
    generic map(
      INIT => X"66E9",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => U3_Mmux_M2a_mux0000_8_SW01_10065
    );
  M1_29_36_SW01_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X45Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1_29_36_SW0
    );
  N301_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N301_F5MUX_10099,
      O => N301
    );
  N301_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y31"
    )
    port map (
      IA => M1_29_36_SW01,
      IB => M1_29_36_SW0,
      SEL => N301_BXINV_10089,
      O => N301_F5MUX_10099
    );
  N301_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N301_BXINV_10089
    );
  M1_29_36_SW02 : X_LUT4
    generic map(
      INIT => X"FEFB",
      LOC => "SLICE_X45Y31"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => U2_vcs(1),
      ADR3 => sw_3_IBUF_4994,
      O => M1_29_36_SW01
    );
  U3_Mmux_M1_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"8EA5",
      LOC => "SLICE_X42Y29"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => rom1_addr(2),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N426
    );
  N209_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N209_F5MUX_10124,
      O => N209
    );
  N209_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y29"
    )
    port map (
      IA => N425,
      IB => N426,
      SEL => N209_BXINV_10117,
      O => N209_F5MUX_10124
    );
  N209_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N209_BXINV_10117
    );
  U3_Mmux_M1_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"AF8F",
      LOC => "SLICE_X42Y29"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U3_xpix1(0),
      O => N425
    );
  U3_Mmux_M1_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"8FC3",
      LOC => "SLICE_X37Y30"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N478
    );
  N211_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N211_F5MUX_10149,
      O => N211
    );
  N211_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y30"
    )
    port map (
      IA => N477,
      IB => N478,
      SEL => N211_BXINV_10142,
      O => N211_F5MUX_10149
    );
  N211_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N211_BXINV_10142
    );
  U3_Mmux_M1_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"CCF5",
      LOC => "SLICE_X37Y30"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N477
    );
  U3_Mmux_M1_mux0000_83_SW0_G : X_LUT4
    generic map(
      INIT => X"23A3",
      LOC => "SLICE_X36Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U3_xpix1(0),
      O => N474
    );
  N139_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N139_F5MUX_10174,
      O => N139
    );
  N139_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y30"
    )
    port map (
      IA => N473,
      IB => N474,
      SEL => N139_BXINV_10167,
      O => N139_F5MUX_10174
    );
  N139_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N139_BXINV_10167
    );
  U3_Mmux_M1_mux0000_83_SW0_F : X_LUT4
    generic map(
      INIT => X"D4E5",
      LOC => "SLICE_X36Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U3_xpix1(0),
      O => N473
    );
  N281_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N281_F5MUX_10199,
      O => N281
    );
  N281_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y27"
    )
    port map (
      IA => N451,
      IB => N452,
      SEL => N281_BXINV_10192,
      O => N281_F5MUX_10199
    );
  N281_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N281_BXINV_10192
    );
  N279_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N279_F5MUX_10224,
      O => N279
    );
  N279_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y27"
    )
    port map (
      IA => N455,
      IB => N456,
      SEL => N279_BXINV_10216,
      O => N279_F5MUX_10224
    );
  N279_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N279_BXINV_10216
    );
  M1a_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_F5MUX_10249,
      O => M1a_27_Q
    );
  M1a_27_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      IA => N361,
      IB => N362,
      SEL => M1a_27_BXINV_10242,
      O => M1a_27_F5MUX_10249
    );
  M1a_27_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M1a_27_BXINV_10242
    );
  N285_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N285_F5MUX_10274,
      O => N285
    );
  N285_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      IA => N429,
      IB => N430,
      SEL => N285_BXINV_10267,
      O => N285_F5MUX_10274
    );
  N285_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(0),
      O => N285_BXINV_10267
    );
  N155_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N155_F5MUX_10299,
      O => N155
    );
  N155_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y37"
    )
    port map (
      IA => N453,
      IB => N454,
      SEL => N155_BXINV_10292,
      O => N155_F5MUX_10299
    );
  N155_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => N155_BXINV_10292
    );
  N289_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N289_F5MUX_10324,
      O => N289
    );
  N289_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y33"
    )
    port map (
      IA => N483,
      IB => N484,
      SEL => N289_BXINV_10317,
      O => N289_F5MUX_10324
    );
  N289_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N289_BXINV_10317
    );
  N287_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N287_F5MUX_10349,
      O => N287
    );
  N287_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      IA => N471,
      IB => N472,
      SEL => N287_BXINV_10341,
      O => N287_F5MUX_10349
    );
  N287_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N287_BXINV_10341
    );
  M1a_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_11_F5MUX_10374,
      O => M1a_11_Q
    );
  M1a_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      IA => N489,
      IB => N490,
      SEL => M1a_11_BXINV_10367,
      O => M1a_11_F5MUX_10374
    );
  M1a_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_11_BXINV_10367
    );
  M2a_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_22_F5MUX_10399,
      O => M2a_22_Q
    );
  M2a_22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y48"
    )
    port map (
      IA => M2a_22_2_10390,
      IB => M2a_22_1_10397,
      SEL => M2a_22_BXINV_10392,
      O => M2a_22_F5MUX_10399
    );
  M2a_22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_22_BXINV_10392
    );
  M1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_8_F5MUX_10424,
      O => M1_8_Q
    );
  M1_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y28"
    )
    port map (
      IA => N373,
      IB => N374,
      SEL => M1_8_BXINV_10417,
      O => M1_8_F5MUX_10424
    );
  M1_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_8_BXINV_10417
    );
  M1a_22_44_SW0_G : X_LUT4
    generic map(
      INIT => X"DEFA",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_21_bdd8,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N368
    );
  N229_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N229_F5MUX_10449,
      O => N229
    );
  N229_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y37"
    )
    port map (
      IA => N367,
      IB => N368,
      SEL => N229_BXINV_10442,
      O => N229_F5MUX_10449
    );
  N229_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => N229_BXINV_10442
    );
  M1a_22_44_SW0_F : X_LUT4
    generic map(
      INIT => X"76AA",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_22_bdd9,
      ADR3 => U2_vcs(2),
      O => N367
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"ED68",
      LOC => "SLICE_X38Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => N438
    );
  N283_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N283_F5MUX_10474,
      O => N283
    );
  N283_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y32"
    )
    port map (
      IA => N437,
      IB => N438,
      SEL => N283_BXINV_10467,
      O => N283_F5MUX_10474
    );
  N283_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(0),
      O => N283_BXINV_10467
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"EF68",
      LOC => "SLICE_X38Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => N437
    );
  U3_red_2_1 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X26Y17"
    )
    port map (
      ADR0 => U3_N30,
      ADR1 => U3_N36,
      ADR2 => VCC,
      ADR3 => U3_blue_and0003_0,
      O => U3_red(2)
    );
  red_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_F5MUX_10499,
      O => red_1_OBUF_5005
    );
  red_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y17"
    )
    port map (
      IA => U3_red_2_1_10489,
      IB => U3_red(2),
      SEL => red_1_OBUF_BXINV_10491,
      O => red_1_OBUF_F5MUX_10499
    );
  red_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd,
      O => red_1_OBUF_BXINV_10491
    );
  U3_red_2_2 : X_LUT4
    generic map(
      INIT => X"FCF8",
      LOC => "SLICE_X26Y17"
    )
    port map (
      ADR0 => U3_N12,
      ADR1 => U3_N36,
      ADR2 => U3_N30,
      ADR3 => U3_blue_and0003_0,
      O => U3_red_2_1_10489
    );
  M1_21_26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_26_F5MUX_10524,
      O => M1_21_26
    );
  M1_21_26_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => M1_21_261_10511,
      IB => M1_21_26_F,
      SEL => M1_21_26_BXINV_10513,
      O => M1_21_26_F5MUX_10524
    );
  M1_21_26_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1_21_26_BXINV_10513
    );
  M1_21_261 : X_LUT4
    generic map(
      INIT => X"2004",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => M1_21_bdd5,
      ADR3 => U2_vcs(1),
      O => M1_21_261_10511
    );
  M1a_25_36_SW0_G : X_LUT4
    generic map(
      INIT => X"F971",
      LOC => "SLICE_X47Y39"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => M1_24_bdd4,
      O => N366
    );
  N167_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N167_F5MUX_10549,
      O => N167
    );
  N167_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y39"
    )
    port map (
      IA => N365,
      IB => N366,
      SEL => N167_BXINV_10542,
      O => N167_F5MUX_10549
    );
  N167_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => N167_BXINV_10542
    );
  M1a_25_36_SW0_F : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X47Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1a_24_bdd1_0,
      ADR2 => VCC,
      ADR3 => M1a_22_bdd0_0,
      O => N365
    );
  M1_31_781 : X_LUT4
    generic map(
      INIT => X"080C",
      LOC => "SLICE_X44Y31"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_27_bdd4,
      ADR2 => rom1_addr(4),
      ADR3 => U2_vcs(0),
      O => M1_31_78
    );
  M1_31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_31_F5MUX_10574,
      O => M1_31_Q
    );
  M1_31_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y31"
    )
    port map (
      IA => M1_31_781_10565,
      IB => M1_31_78,
      SEL => M1_31_BXINV_10567,
      O => M1_31_F5MUX_10574
    );
  M1_31_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M1_31_BXINV_10567
    );
  M1_31_782 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X44Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_31_25,
      ADR2 => VCC,
      ADR3 => rom1_addr(4),
      O => M1_31_781_10565
    );
  M1_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_30_F5MUX_10599,
      O => M1_30_Q
    );
  M1_30_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      IA => N439,
      IB => N440,
      SEL => M1_30_BXINV_10592,
      O => M1_30_F5MUX_10599
    );
  M1_30_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_30_BXINV_10592
    );
  M1_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_F5MUX_10624,
      O => M1_25_Q
    );
  M1_25_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y33"
    )
    port map (
      IA => N459,
      IB => N460,
      SEL => M1_25_BXINV_10617,
      O => M1_25_F5MUX_10624
    );
  M1_25_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_25_BXINV_10617
    );
  M1_26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_F5MUX_10649,
      O => M1_26_Q
    );
  M1_26_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y30"
    )
    port map (
      IA => N435,
      IB => N436,
      SEL => M1_26_BXINV_10642,
      O => M1_26_F5MUX_10649
    );
  M1_26_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_26_BXINV_10642
    );
  M1_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_F5MUX_10674,
      O => M1_27_Q
    );
  M1_27_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      IA => N433,
      IB => N434,
      SEL => M1_27_BXINV_10667,
      O => M1_27_F5MUX_10674
    );
  M1_27_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_27_BXINV_10667
    );
  M1_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_F5MUX_10699,
      O => M1_28_Q
    );
  M1_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      IA => N401,
      IB => N402,
      SEL => M1_28_BXINV_10692,
      O => M1_28_F5MUX_10699
    );
  M1_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_28_BXINV_10692
    );
  M2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_F5MUX_10724,
      O => M2_1_Q
    );
  M2_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y51"
    )
    port map (
      IA => M2_1_1171_10715,
      IB => M2_1_117,
      SEL => M2_1_BXINV_10717,
      O => M2_1_F5MUX_10724
    );
  M2_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_1_BXINV_10717
    );
  M2_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_21_F5MUX_10749,
      O => M2_21_Q
    );
  M2_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y51"
    )
    port map (
      IA => N421,
      IB => N422,
      SEL => M2_21_BXINV_10742,
      O => M2_21_F5MUX_10749
    );
  M2_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_21_BXINV_10742
    );
  M2_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_22_F5MUX_10774,
      O => M2_22_Q
    );
  M2_22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y51"
    )
    port map (
      IA => N501,
      IB => N502,
      SEL => M2_22_BXINV_10767,
      O => M2_22_F5MUX_10774
    );
  M2_22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_22_BXINV_10767
    );
  M2_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_28_F5MUX_10799,
      O => M2_28_Q
    );
  M2_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y47"
    )
    port map (
      IA => M2_28_2_10790,
      IB => M2_28_1_10797,
      SEL => M2_28_BXINV_10792,
      O => M2_28_F5MUX_10799
    );
  M2_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_28_BXINV_10792
    );
  M2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_F5MUX_10824,
      O => M2_3_Q
    );
  M2_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y49"
    )
    port map (
      IA => N113_rt_10815,
      IB => M2_3_200,
      SEL => M2_3_BXINV_10817,
      O => M2_3_F5MUX_10824
    );
  M2_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2_3_BXINV_10817
    );
  M2_5_1071 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "SLICE_X50Y51"
    )
    port map (
      ADR0 => M2_5_bdd2_0,
      ADR1 => VCC,
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => M2_5_1071_10847
    );
  M2_5_107_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_107_F5MUX_10849,
      O => M2_5_107
    );
  M2_5_107_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y51"
    )
    port map (
      IA => M2_5_1072_10838,
      IB => M2_5_1071_10847,
      SEL => M2_5_107_BXINV_10840,
      O => M2_5_107_F5MUX_10849
    );
  M2_5_107_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M2_5_107_BXINV_10840
    );
  M2_5_1072 : X_LUT4
    generic map(
      INIT => X"D575",
      LOC => "SLICE_X50Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd13,
      ADR3 => U2_vcs(0),
      O => M2_5_1072_10838
    );
  U3_Mmux_M2_mux0000_71_SW0_G : X_LUT4
    generic map(
      INIT => X"FAAC",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => M1_10_bdd8_0,
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N468
    );
  N291_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N291_F5MUX_10874,
      O => N291
    );
  N291_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y44"
    )
    port map (
      IA => N467,
      IB => N468,
      SEL => N291_BXINV_10867,
      O => N291_F5MUX_10874
    );
  N291_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N291_BXINV_10867
    );
  U3_Mmux_M2_mux0000_71_SW0_F : X_LUT4
    generic map(
      INIT => X"AE6B",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N467
    );
  U3_Mmux_M2_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"797B",
      LOC => "SLICE_X40Y50"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U3_xpix2(0),
      O => N404
    );
  N297_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N297_F5MUX_10899,
      O => N297
    );
  N297_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y50"
    )
    port map (
      IA => N403,
      IB => N404,
      SEL => N297_BXINV_10892,
      O => N297_F5MUX_10899
    );
  N297_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => N297_BXINV_10892
    );
  U3_Mmux_M2_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"0F55",
      LOC => "SLICE_X40Y50"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N403
    );
  M1_10_G : X_LUT4
    generic map(
      INIT => X"0A68",
      LOC => "SLICE_X38Y30"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N448
    );
  M1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_F5MUX_10924,
      O => M1_10_Q
    );
  M1_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y30"
    )
    port map (
      IA => N447,
      IB => N448,
      SEL => M1_10_BXINV_10917,
      O => M1_10_F5MUX_10924
    );
  M1_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_10_BXINV_10917
    );
  M1_10_F : X_LUT4
    generic map(
      INIT => X"6D20",
      LOC => "SLICE_X38Y30"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N447
    );
  M1_11_G : X_LUT4
    generic map(
      INIT => X"0A68",
      LOC => "SLICE_X38Y31"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N446
    );
  M1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_11_F5MUX_10949,
      O => M1_11_Q
    );
  M1_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y31"
    )
    port map (
      IA => N445,
      IB => N446,
      SEL => M1_11_BXINV_10942,
      O => M1_11_F5MUX_10949
    );
  M1_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_11_BXINV_10942
    );
  M1_11_F : X_LUT4
    generic map(
      INIT => X"2D00",
      LOC => "SLICE_X38Y31"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N445
    );
  M1_20_G : X_LUT4
    generic map(
      INIT => X"02BE",
      LOC => "SLICE_X39Y28"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N488
    );
  M1_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_20_F5MUX_10974,
      O => M1_20_Q
    );
  M1_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y28"
    )
    port map (
      IA => N487,
      IB => N488,
      SEL => M1_20_BXINV_10967,
      O => M1_20_F5MUX_10974
    );
  M1_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M1_20_BXINV_10967
    );
  M1_20_F : X_LUT4
    generic map(
      INIT => X"4A8E",
      LOC => "SLICE_X39Y28"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N487
    );
  M1_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_18_F5MUX_10999,
      O => M1_18_Q
    );
  M1_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y26"
    )
    port map (
      IA => N407,
      IB => N408,
      SEL => M1_18_BXINV_10992,
      O => M1_18_F5MUX_10999
    );
  M1_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_18_BXINV_10992
    );
  M2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_11_F5MUX_11024,
      O => M2_11_Q
    );
  M2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y53"
    )
    port map (
      IA => N381,
      IB => N382,
      SEL => M2_11_BXINV_11017,
      O => M2_11_F5MUX_11024
    );
  M2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_11_BXINV_11017
    );
  M1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_2_F5MUX_11049,
      O => M1_2_Q
    );
  M1_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      IA => N449,
      IB => N450,
      SEL => M1_2_BXINV_11042,
      O => M1_2_F5MUX_11049
    );
  M1_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_2_BXINV_11042
    );
  M2a_6_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_10_F5MUX_11074,
      O => M2a_6_10
    );
  M2a_6_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y50"
    )
    port map (
      IA => M2a_6_102_11065,
      IB => M2a_6_101_11072,
      SEL => M2a_6_10_BXINV_11067,
      O => M2a_6_10_F5MUX_11074
    );
  M2a_6_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2a_6_10_BXINV_11067
    );
  M2_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_23_F5MUX_11099,
      O => M2_23_Q
    );
  M2_23_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y46"
    )
    port map (
      IA => N363,
      IB => N364,
      SEL => M2_23_BXINV_11092,
      O => M2_23_F5MUX_11099
    );
  M2_23_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2_23_BXINV_11092
    );
  M2_6_169_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_169_F5MUX_11124,
      O => M2_6_169
    );
  M2_6_169_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y44"
    )
    port map (
      IA => M2_6_1692_11115,
      IB => M2_6_1691_11122,
      SEL => M2_6_169_BXINV_11117,
      O => M2_6_169_F5MUX_11124
    );
  M2_6_169_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2_6_169_BXINV_11117
    );
  U3_spriteonB5_and00009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and00009_F5MUX_11149,
      O => U3_spriteonB5_and00009
    );
  U3_spriteonB5_and00009_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y21"
    )
    port map (
      IA => U3_spriteonB5_and00009_G,
      IB => U3_spriteonB5_and000091_11147,
      SEL => U3_spriteonB5_and00009_BXINV_11142,
      O => U3_spriteonB5_and00009_F5MUX_11149
    );
  U3_spriteonB5_and00009_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => U3_spriteonB5_and00009_BXINV_11142
    );
  M1a_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_2_F5MUX_11174,
      O => M1a_2_Q
    );
  M1a_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y36"
    )
    port map (
      IA => N457,
      IB => N458,
      SEL => M1a_2_BXINV_11167,
      O => M1a_2_F5MUX_11174
    );
  M1a_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1a_2_BXINV_11167
    );
  N109_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N109_F5MUX_11199,
      O => N109
    );
  N109_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y40"
    )
    port map (
      IA => N111,
      IB => N112,
      SEL => N109_BXINV_11190,
      O => N109_F5MUX_11199
    );
  N109_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(4),
      O => N109_BXINV_11190
    );
  N207_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N207_F5MUX_11224,
      O => N207
    );
  N207_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => N389,
      IB => N390,
      SEL => N207_BXINV_11217,
      O => N207_F5MUX_11224
    );
  N207_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N207_BXINV_11217
    );
  U2_vidon_and0000261 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X23Y23"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => U2_vidon_and0000261_11247
    );
  U2_vidon_and000026_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000026_F5MUX_11249,
      O => U2_vidon_and000026
    );
  U2_vidon_and000026_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y23"
    )
    port map (
      IA => U2_vidon_and000026_G,
      IB => U2_vidon_and0000261_11247,
      SEL => U2_vidon_and000026_BXINV_11242,
      O => U2_vidon_and000026_F5MUX_11249
    );
  U2_vidon_and000026_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => U2_vidon_and000026_BXINV_11242
    );
  U2_vidon_and000018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000018_F5MUX_11274,
      O => U2_vidon_and000018
    );
  U2_vidon_and000018_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y22"
    )
    port map (
      IA => U2_vidon_and0000181_11261,
      IB => U2_vidon_and000018_F,
      SEL => U2_vidon_and000018_BXINV_11263,
      O => U2_vidon_and000018_F5MUX_11274
    );
  U2_vidon_and000018_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => U2_vidon_and000018_BXINV_11263
    );
  U2_vidon_and0000181 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X22Y22"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(6),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(5),
      O => U2_vidon_and0000181_11261
    );
  U3_spriteonB5_and000049_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y27"
    )
    port map (
      IA => U3_spriteonB5_and0000491_11286,
      IB => U3_spriteonB5_and000049_F,
      SEL => U3_spriteonB5_and000049_BXINV_11288,
      O => U3_spriteonB5_and000049_F5MUX_11299
    );
  U3_spriteonB5_and000049_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_spriteonB5_and000049_BXINV_11288
    );
  U3_spriteonB5_and0000491 : X_LUT4
    generic map(
      INIT => X"070F",
      LOC => "SLICE_X22Y27"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(4),
      ADR3 => U2_hcs(3),
      O => U3_spriteonB5_and0000491_11286
    );
  U2_vidon_and0000651 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X23Y20"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => U2_vidon_and0000651_11322
    );
  U2_vidon_and000065_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000065_F5MUX_11324,
      O => U2_vidon_and000065
    );
  U2_vidon_and000065_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y20"
    )
    port map (
      IA => U2_vidon_and000065_G,
      IB => U2_vidon_and0000651_11322,
      SEL => U2_vidon_and000065_BXINV_11317,
      O => U2_vidon_and000065_F5MUX_11324
    );
  U2_vidon_and000065_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => U2_vidon_and000065_BXINV_11317
    );
  U3_spriteonB5_and0000831 : X_LUT4
    generic map(
      INIT => X"03FF",
      LOC => "SLICE_X22Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(8),
      ADR3 => U2_hcs(9),
      O => U3_spriteonB5_and0000831_11347
    );
  U3_spriteonB5_and000083_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000083_F5MUX_11349,
      O => U3_spriteonB5_and000083
    );
  U3_spriteonB5_and000083_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y26"
    )
    port map (
      IA => U3_spriteonB5_and0000832_11339,
      IB => U3_spriteonB5_and0000831_11347,
      SEL => U3_spriteonB5_and000083_BXINV_11341,
      O => U3_spriteonB5_and000083_F5MUX_11349
    );
  U3_spriteonB5_and000083_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000049_F5MUX_11299,
      O => U3_spriteonB5_and000083_BXINV_11341
    );
  U3_spriteonB5_and0000832 : X_LUT4
    generic map(
      INIT => X"01FF",
      LOC => "SLICE_X22Y26"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(8),
      ADR3 => U2_hcs(9),
      O => U3_spriteonB5_and0000832_11339
    );
  M1a_10_47_F : X_LUT4
    generic map(
      INIT => X"135C",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N461
    );
  M1a_10_47_G : X_LUT4
    generic map(
      INIT => X"093F",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N462
    );
  M1a_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_10_F5MUX_11374,
      O => M1a_10_Q
    );
  M1a_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      IA => N461,
      IB => N462,
      SEL => M1a_10_BXINV_11367,
      O => M1a_10_F5MUX_11374
    );
  M1a_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_10_BXINV_11367
    );
  M1a_21_54_G : X_LUT4
    generic map(
      INIT => X"127E",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => M1a_12_bdd0_0,
      O => N386
    );
  M1a_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_21_F5MUX_11399,
      O => M1a_21_Q
    );
  M1a_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => N385,
      IB => N386,
      SEL => M1a_21_BXINV_11392,
      O => M1a_21_F5MUX_11399
    );
  M1a_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_21_BXINV_11392
    );
  M1a_21_54_F : X_LUT4
    generic map(
      INIT => X"01CD",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => N307_0,
      ADR3 => M1a_12_bdd0_0,
      O => N385
    );
  M1a_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_18_F5MUX_11424,
      O => M1a_18_Q
    );
  M1a_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y32"
    )
    port map (
      IA => N469,
      IB => N470,
      SEL => M1a_18_BXINV_11417,
      O => M1a_18_F5MUX_11424
    );
  M1a_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_18_BXINV_11417
    );
  M1a_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_19_F5MUX_11449,
      O => M1a_19_Q
    );
  M1a_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y32"
    )
    port map (
      IA => N443,
      IB => N444,
      SEL => M1a_19_BXINV_11442,
      O => M1a_19_F5MUX_11449
    );
  M1a_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_19_BXINV_11442
    );
  M1a_27_83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_83_F5MUX_11474,
      O => M1a_27_83
    );
  M1a_27_83_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y34"
    )
    port map (
      IA => N371,
      IB => N372,
      SEL => M1a_27_83_BXINV_11467,
      O => M1a_27_83_F5MUX_11474
    );
  M1a_27_83_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_27_83_BXINV_11467
    );
  M2a_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_10_F5MUX_11499,
      O => M2a_10_Q
    );
  M2a_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      IA => N387,
      IB => N388,
      SEL => M2a_10_BXINV_11492,
      O => M2a_10_F5MUX_11499
    );
  M2a_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_10_BXINV_11492
    );
  M2a_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_11_F5MUX_11524,
      O => M2a_11_Q
    );
  M2a_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y53"
    )
    port map (
      IA => N409,
      IB => N410,
      SEL => M2a_11_BXINV_11517,
      O => M2a_11_F5MUX_11524
    );
  M2a_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2a_11_BXINV_11517
    );
  M2a_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_12_F5MUX_11549,
      O => M2a_12_Q
    );
  M2a_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y53"
    )
    port map (
      IA => N379,
      IB => N380,
      SEL => M2a_12_BXINV_11542,
      O => M2a_12_F5MUX_11549
    );
  M2a_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M2a_12_BXINV_11542
    );
  M2a_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_20_F5MUX_11574,
      O => M2a_20_Q
    );
  M2a_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y47"
    )
    port map (
      IA => N493,
      IB => N494,
      SEL => M2a_20_BXINV_11567,
      O => M2a_20_F5MUX_11574
    );
  M2a_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_20_BXINV_11567
    );
  M2a_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_21_F5MUX_11599,
      O => M2a_21_Q
    );
  M2a_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y44"
    )
    port map (
      IA => N463,
      IB => N464,
      SEL => M2a_21_BXINV_11592,
      O => M2a_21_F5MUX_11599
    );
  M2a_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_21_BXINV_11592
    );
  M2a_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_28_F5MUX_11624,
      O => M2a_28_Q
    );
  M2a_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      IA => N377,
      IB => N378,
      SEL => M2a_28_BXINV_11617,
      O => M2a_28_F5MUX_11624
    );
  M2a_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_28_BXINV_11617
    );
  M2a_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_29_F5MUX_11649,
      O => M2a_29_Q
    );
  M2a_29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y49"
    )
    port map (
      IA => N419,
      IB => N420,
      SEL => M2a_29_BXINV_11642,
      O => M2a_29_F5MUX_11649
    );
  M2a_29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M2a_29_BXINV_11642
    );
  M2a_4_209_G : X_LUT4
    generic map(
      INIT => X"809B",
      LOC => "SLICE_X48Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N358
    );
  M2a_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_F5MUX_11674,
      O => M2a_4_Q
    );
  M2a_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y51"
    )
    port map (
      IA => N357,
      IB => N358,
      SEL => M2a_4_BXINV_11667,
      O => M2a_4_F5MUX_11674
    );
  M2a_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2a_4_BXINV_11667
    );
  M2a_4_209_F : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X48Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => VCC,
      ADR2 => M2a_4_14_0,
      ADR3 => M2a_4_116_0,
      O => N357
    );
  M1_29_1331 : X_LUT4
    generic map(
      INIT => X"1555",
      LOC => "SLICE_X44Y30"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1_29_133
    );
  M1_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_F5MUX_11699,
      O => M1_29_Q
    );
  M1_29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y30"
    )
    port map (
      IA => M1_29_1331_11690,
      IB => M1_29_133,
      SEL => M1_29_BXINV_11692,
      O => M1_29_F5MUX_11699
    );
  M1_29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_29_BXINV_11692
    );
  M1_29_1332 : X_LUT4
    generic map(
      INIT => X"EECC",
      LOC => "SLICE_X44Y30"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_29_80,
      ADR2 => VCC,
      ADR3 => N301,
      O => M1_29_1331_11690
    );
  M2a_6_106_G : X_LUT4
    generic map(
      INIT => X"9105",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N360
    );
  M2a_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_F5MUX_11724,
      O => M2a_6_Q
    );
  M2a_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y52"
    )
    port map (
      IA => N359,
      IB => N360,
      SEL => M2a_6_BXINV_11717,
      O => M2a_6_F5MUX_11724
    );
  M2a_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2a_6_BXINV_11717
    );
  M2a_6_106_F : X_LUT4
    generic map(
      INIT => X"DDCC",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2a_6_10,
      ADR2 => VCC,
      ADR3 => M2a_6_49_0,
      O => N359
    );
  M1a_3_f5_G : X_LUT4
    generic map(
      INIT => X"310C",
      LOC => "SLICE_X41Y36"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N414
    );
  M1a_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_3_F5MUX_11749,
      O => M1a_3_Q
    );
  M1a_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y36"
    )
    port map (
      IA => N413,
      IB => N414,
      SEL => M1a_3_BXINV_11742,
      O => M1a_3_F5MUX_11749
    );
  M1a_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_3_BXINV_11742
    );
  M1a_3_f5_F : X_LUT4
    generic map(
      INIT => X"0688",
      LOC => "SLICE_X41Y36"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N413
    );
  M1_22_36_G : X_LUT4
    generic map(
      INIT => X"8844",
      LOC => "SLICE_X48Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1_22_11_0,
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => N352
    );
  M1_22_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_36_F5MUX_11774,
      O => M1_22_36
    );
  M1_22_36_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y35"
    )
    port map (
      IA => N351,
      IB => N352,
      SEL => M1_22_36_BXINV_11766,
      O => M1_22_36_F5MUX_11774
    );
  M1_22_36_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_22_36_BXINV_11766
    );
  M1_22_36_F : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X48Y35"
    )
    port map (
      ADR0 => M1_22_bdd7,
      ADR1 => U2_vcs(0),
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => N351
    );
  M1_31_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_31_25_F5MUX_11799,
      O => M1_31_25
    );
  M1_31_25_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y31"
    )
    port map (
      IA => N383,
      IB => N384,
      SEL => M1_31_25_BXINV_11792,
      O => M1_31_25_F5MUX_11799
    );
  M1_31_25_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_31_25_BXINV_11792
    );
  M1_23_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_35_F5MUX_11824,
      O => M1_23_35
    );
  M1_23_35_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y38"
    )
    port map (
      IA => N369,
      IB => N370,
      SEL => M1_23_35_BXINV_11817,
      O => M1_23_35_F5MUX_11824
    );
  M1_23_35_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_23_35_BXINV_11817
    );
  M1_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_F5MUX_11849,
      O => M1_23_Q
    );
  M1_23_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y32"
    )
    port map (
      IA => N399,
      IB => N400,
      SEL => M1_23_BXINV_11842,
      O => M1_23_F5MUX_11849
    );
  M1_23_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M1_23_BXINV_11842
    );
  M1_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_19_F5MUX_11874,
      O => M1_19_Q
    );
  M1_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y28"
    )
    port map (
      IA => N397,
      IB => N398,
      SEL => M1_19_BXINV_11867,
      O => M1_19_F5MUX_11874
    );
  M1_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_19_BXINV_11867
    );
  M1_26_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_bdd0_F5MUX_11899,
      O => M1_26_bdd0
    );
  M1_26_bdd0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y33"
    )
    port map (
      IA => M1_26_11_11890,
      IB => M1_26_1,
      SEL => M1_26_bdd0_BXINV_11892,
      O => M1_26_bdd0_F5MUX_11899
    );
  M1_26_bdd0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M1_26_bdd0_BXINV_11892
    );
  M2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_12_F5MUX_11924,
      O => M2_12_Q
    );
  M2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y52"
    )
    port map (
      IA => N499,
      IB => N500,
      SEL => M2_12_BXINV_11917,
      O => M2_12_F5MUX_11924
    );
  M2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_12_BXINV_11917
    );
  M2_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_20_F5MUX_11949,
      O => M2_20_Q
    );
  M2_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y48"
    )
    port map (
      IA => N495,
      IB => N496,
      SEL => M2_20_BXINV_11942,
      O => M2_20_F5MUX_11949
    );
  M2_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_20_BXINV_11942
    );
  M2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_13_F5MUX_11974,
      O => M2_13_Q
    );
  M2_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y50"
    )
    port map (
      IA => N423,
      IB => N424,
      SEL => M2_13_BXINV_11967,
      O => M2_13_F5MUX_11974
    );
  M2_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_13_BXINV_11967
    );
  M1_29_80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_80_F5MUX_11999,
      O => M1_29_80
    );
  M1_29_80_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      IA => N411,
      IB => N412,
      SEL => M1_29_80_BXINV_11992,
      O => M1_29_80_F5MUX_11999
    );
  M1_29_80_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_29_80_BXINV_11992
    );
  M2_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_30_F5MUX_12024,
      O => M2_30_Q
    );
  M2_30_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => N481,
      IB => N482,
      SEL => M2_30_BXINV_12017,
      O => M2_30_F5MUX_12024
    );
  M2_30_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2_30_BXINV_12017
    );
  M2_2_145_G : X_LUT4
    generic map(
      INIT => X"1333",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N356
    );
  M2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_F5MUX_12049,
      O => M2_2_Q
    );
  M2_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      IA => N355,
      IB => N356,
      SEL => M2_2_BXINV_12042,
      O => M2_2_F5MUX_12049
    );
  M2_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2_2_BXINV_12042
    );
  M2_2_145_F : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => M2_2_50_0,
      ADR1 => M2_2_10_0,
      ADR2 => U2_vcs(1),
      ADR3 => M2_2_31_0,
      O => N355
    );
  M2_4_206_G : X_LUT4
    generic map(
      INIT => X"2E0C",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => M2_4_127_0,
      ADR1 => rom1_addr(4),
      ADR2 => M1_0_bdd2_0,
      ADR3 => M2_4_117_0,
      O => N350
    );
  M2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_F5MUX_12074,
      O => M2_4_Q
    );
  M2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      IA => N349,
      IB => N350,
      SEL => M2_4_BXINV_12067,
      O => M2_4_F5MUX_12074
    );
  M2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_4_BXINV_12067
    );
  M2_4_206_F : X_LUT4
    generic map(
      INIT => X"40EA",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M2_4_38_0,
      ADR2 => M2_4_49_0,
      ADR3 => M2_4_bdd0_0,
      O => N349
    );
  M2_5_165_G : X_LUT4
    generic map(
      INIT => X"24E4",
      LOC => "SLICE_X51Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N396
    );
  M2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_F5MUX_12099,
      O => M2_5_Q
    );
  M2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y53"
    )
    port map (
      IA => N395,
      IB => N396,
      SEL => M2_5_BXINV_12092,
      O => M2_5_F5MUX_12099
    );
  M2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => M2_5_BXINV_12092
    );
  M2_5_165_F : X_LUT4
    generic map(
      INIT => X"CCC0",
      LOC => "SLICE_X51Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2_5_107,
      ADR2 => N265_0,
      ADR3 => U2_vcs(1),
      O => N395
    );
  M2_0_281 : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X53Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd4,
      ADR2 => VCC,
      ADR3 => VCC,
      O => M2_0_281_12122
    );
  M2_0_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_28_F5MUX_12124,
      O => M2_0_28
    );
  M2_0_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y53"
    )
    port map (
      IA => M2_0_282_12113,
      IB => M2_0_281_12122,
      SEL => M2_0_28_BXINV_12115,
      O => M2_0_28_F5MUX_12124
    );
  M2_0_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M2_0_28_BXINV_12115
    );
  M2_0_282 : X_LUT4
    generic map(
      INIT => X"022A",
      LOC => "SLICE_X53Y53"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_0_282_12113
    );
  M1_3_f5_G : X_LUT4
    generic map(
      INIT => X"324C",
      LOC => "SLICE_X39Y31"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N418
    );
  M1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_3_F5MUX_12149,
      O => M1_3_Q
    );
  M1_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      IA => N417,
      IB => N418,
      SEL => M1_3_BXINV_12142,
      O => M1_3_F5MUX_12149
    );
  M1_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_3_BXINV_12142
    );
  M1_3_f5_F : X_LUT4
    generic map(
      INIT => X"2D5C",
      LOC => "SLICE_X39Y31"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N417
    );
  M2_1_671 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X53Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2_0_bdd4,
      ADR2 => U2_vcs(0),
      ADR3 => VCC,
      O => M2_1_671_12172
    );
  M2_1_67_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_67_F5MUX_12174,
      O => M2_1_67
    );
  M2_1_67_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y50"
    )
    port map (
      IA => M2_1_672_12163,
      IB => M2_1_671_12172,
      SEL => M2_1_67_BXINV_12165,
      O => M2_1_67_F5MUX_12174
    );
  M2_1_67_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M2_1_67_BXINV_12165
    );
  M2_1_672 : X_LUT4
    generic map(
      INIT => X"E061",
      LOC => "SLICE_X53Y50"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => N267,
      O => M2_1_672_12163
    );
  M1_9_f5_F : X_LUT4
    generic map(
      INIT => X"2C54",
      LOC => "SLICE_X39Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N415
    );
  M1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_9_F5MUX_12199,
      O => M1_9_Q
    );
  M1_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y30"
    )
    port map (
      IA => N415,
      IB => N416,
      SEL => M1_9_BXINV_12192,
      O => M1_9_F5MUX_12199
    );
  M1_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_9_BXINV_12192
    );
  M1_9_f5_G : X_LUT4
    generic map(
      INIT => X"3C41",
      LOC => "SLICE_X39Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N416
    );
  N257_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N257_F5MUX_12224,
      O => N257
    );
  N257_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      IA => N391,
      IB => N392,
      SEL => N257_BXINV_12217,
      O => N257_F5MUX_12224
    );
  N257_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => N257_BXINV_12217
    );
  N259_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N259_F5MUX_12249,
      O => N259
    );
  N259_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y53"
    )
    port map (
      IA => N497,
      IB => N498,
      SEL => N259_BXINV_12242,
      O => N259_F5MUX_12249
    );
  N259_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => N259_BXINV_12242
    );
  N153_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N153_F5MUX_12274,
      O => N153
    );
  N153_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y47"
    )
    port map (
      IA => N427,
      IB => N428,
      SEL => N153_BXINV_12267,
      O => N153_F5MUX_12274
    );
  N153_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N153_BXINV_12267
    );
  N113_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N113_F5MUX_12299,
      O => N113
    );
  N113_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y49"
    )
    port map (
      IA => N353,
      IB => N354,
      SEL => N113_BXINV_12292,
      O => N113_F5MUX_12299
    );
  N113_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N113_BXINV_12292
    );
  N293_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N293_F5MUX_12324,
      O => N293
    );
  N293_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y48"
    )
    port map (
      IA => N475,
      IB => N476,
      SEL => N293_BXINV_12316,
      O => N293_F5MUX_12324
    );
  N293_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N293_BXINV_12316
    );
  M2_8_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_13_F5MUX_12349,
      O => M2_8_13
    );
  M2_8_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y52"
    )
    port map (
      IA => M2_8_132_12338,
      IB => M2_8_131_12347,
      SEL => M2_8_13_BXINV_12340,
      O => M2_8_13_F5MUX_12349
    );
  M2_8_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2_8_13_BXINV_12340
    );
  N295_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N295_F5MUX_12374,
      O => N295
    );
  N295_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y49"
    )
    port map (
      IA => N479,
      IB => N480,
      SEL => N295_BXINV_12367,
      O => N295_F5MUX_12374
    );
  N295_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N295_BXINV_12367
    );
  x7_digit_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_0_F5MUX_12399,
      O => x7_digit(0)
    );
  x7_digit_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y67"
    )
    port map (
      IA => x7_Mmux_digit_4_12386,
      IB => x7_digit_0_F,
      SEL => x7_digit_0_BXINV_12388,
      O => x7_digit_0_F5MUX_12399
    );
  x7_digit_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_0_BXINV_12388
    );
  N197_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N197_F5MUX_12424,
      O => N197
    );
  N197_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y27"
    )
    port map (
      IA => U3_spriteonB2_and000056_SW01_12413,
      IB => U3_spriteonB2_and000056_SW0,
      SEL => N197_BXINV_12415,
      O => N197_F5MUX_12424
    );
  N197_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => N197_BXINV_12415
    );
  M1a_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_9_F5MUX_12449,
      O => M1a_9_Q
    );
  M1a_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y35"
    )
    port map (
      IA => N441,
      IB => N442,
      SEL => M1a_9_BXINV_12442,
      O => M1a_9_F5MUX_12449
    );
  M1a_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_9_BXINV_12442
    );
  M1_1_74_G : X_LUT4
    generic map(
      INIT => X"1337",
      LOC => "SLICE_X42Y31"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N406
    );
  M1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_1_F5MUX_12474,
      O => M1_1_Q
    );
  M1_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y31"
    )
    port map (
      IA => N405,
      IB => N406,
      SEL => M1_1_BXINV_12467,
      O => M1_1_F5MUX_12474
    );
  M1_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1_1_BXINV_12467
    );
  M1_1_74_F : X_LUT4
    generic map(
      INIT => X"D400",
      LOC => "SLICE_X42Y31"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N405
    );
  M2_29_2_G : X_LUT4
    generic map(
      INIT => X"15AC",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N486
    );
  M2_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_29_F5MUX_12499,
      O => M2_29_Q
    );
  M2_29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      IA => N485,
      IB => N486,
      SEL => M2_29_BXINV_12492,
      O => M2_29_F5MUX_12499
    );
  M2_29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M2_29_BXINV_12492
    );
  M2_29_2_F : X_LUT4
    generic map(
      INIT => X"7D08",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N485
    );
  M2_8_52_G : X_LUT4
    generic map(
      INIT => X"00FB",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd20,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N394
    );
  M2_8_52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_52_F5MUX_12524,
      O => M2_8_52
    );
  M2_8_52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y52"
    )
    port map (
      IA => N393,
      IB => N394,
      SEL => M2_8_52_BXINV_12517,
      O => M2_8_52_F5MUX_12524
    );
  M2_8_52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2_8_52_BXINV_12517
    );
  M2_8_52_F : X_LUT4
    generic map(
      INIT => X"0047",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => M2_3_bdd7_0,
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd9_0,
      ADR3 => U2_vcs(1),
      O => N393
    );
  M1a_20_G : X_LUT4
    generic map(
      INIT => X"2606",
      LOC => "SLICE_X42Y30"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N466
    );
  M1a_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_20_F5MUX_12549,
      O => M1a_20_Q
    );
  M1a_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y30"
    )
    port map (
      IA => N465,
      IB => N466,
      SEL => M1a_20_BXINV_12542,
      O => M1a_20_F5MUX_12549
    );
  M1a_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_20_BXINV_12542
    );
  M1a_20_F : X_LUT4
    generic map(
      INIT => X"0A4E",
      LOC => "SLICE_X42Y30"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N465
    );
  M2a_13_G : X_LUT4
    generic map(
      INIT => X"132F",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N376
    );
  M2a_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_13_F5MUX_12574,
      O => M2a_13_Q
    );
  M2a_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y52"
    )
    port map (
      IA => N375,
      IB => N376,
      SEL => M2a_13_BXINV_12567,
      O => M2a_13_F5MUX_12574
    );
  M2a_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_13_BXINV_12567
    );
  M2a_13_F : X_LUT4
    generic map(
      INIT => X"1B76",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N375
    );
  M2a_23_F : X_LUT4
    generic map(
      INIT => X"1E00",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N431
    );
  M2a_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_23_F5MUX_12599,
      O => M2a_23_Q
    );
  M2a_23_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y46"
    )
    port map (
      IA => N431,
      IB => N432,
      SEL => M2a_23_BXINV_12591,
      O => M2a_23_F5MUX_12599
    );
  M2a_23_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_23_BXINV_12591
    );
  M2a_23_G : X_LUT4
    generic map(
      INIT => X"03C0",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N432
    );
  M1a_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_8_F5MUX_12624,
      O => M1a_8_Q
    );
  M1a_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y34"
    )
    port map (
      IA => N491,
      IB => N492,
      SEL => M1a_8_BXINV_12616,
      O => M1a_8_F5MUX_12624
    );
  M1a_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1a_8_BXINV_12616
    );
  U3_N12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N12_F5MUX_12649,
      O => U3_N12
    );
  U3_N12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y21"
    )
    port map (
      IA => U3_red_2_111_12640,
      IB => U3_red_2_11,
      SEL => U3_N12_BXINV_12642,
      O => U3_N12_F5MUX_12649
    );
  U3_N12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000069_5106,
      O => U3_N12_BXINV_12642
    );
  nes_left_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N01_pack_1,
      O => nes_N01
    );
  U3_C1_not000127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000127_12696,
      O => U3_C1_not000127_0
    );
  U3_C1_not000127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not00014_O_pack_1,
      O => U3_C1_not00014_O
    );
  U3_C1_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001,
      O => U3_C1_not0001_0
    );
  U3_C1_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000183_O_pack_1,
      O => U3_C1_not000183_O
    );
  nes_counter_reg_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001,
      O => nes_counter_reg_not0001_0
    );
  nes_counter_reg_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq0000_pack_1,
      O => nes_scalar_next_cmp_eq0000
    );
  nes_N11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N11,
      O => nes_N11_0
    );
  nes_N11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_cmp_eq0000112_pack_1,
      O => nes_counter_reg_cmp_eq0000112_5127
    );
  U3_C2_not000164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000164_12792,
      O => U3_C2_not000164_0
    );
  U3_C2_not000164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000150_O_pack_1,
      O => U3_C2_not000150_O
    );
  U3_C2_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001,
      O => U3_C2_not0001_0
    );
  U3_C2_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000123_O_pack_1,
      O => U3_C2_not000123_O
    );
  U2_hcs_cmp_eq00005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq00005_12840,
      O => U2_hcs_cmp_eq00005_0
    );
  U2_hcs_cmp_eq00005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N80_pack_1,
      O => U3_N80
    );
  U2_vcs_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X27Y18"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => N106_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_N2,
      O => U2_vcs_cmp_eq0000_pack_1
    );
  U2_Mcount_vcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X27Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(5),
      ADR2 => U2_vcs_cmp_eq0000_5138,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_vcs_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X27Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_5_FFX_RST
    );
  U2_vcs_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y18",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DXMUX_12873,
      CE => U2_vcs_5_CEINV_12854,
      CLK => U2_vcs_5_CLKINV_12855,
      SET => GND,
      RST => U2_vcs_5_FFX_RST,
      O => U2_vcs(5)
    );
  U2_vcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_5,
      O => U2_vcs_5_DXMUX_12873
    );
  U2_vcs_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_cmp_eq0000_pack_1,
      O => U2_vcs_cmp_eq0000_5138
    );
  U2_vcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_5_CLKINV_12855
    );
  U2_vcs_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_5_CEINV_12854
    );
  U3_C2_not00016 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X28Y43"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(3),
      ADR2 => U3_C2_not00011_O,
      ADR3 => U3_C2(5),
      O => U3_C2_not00016_12902
    );
  U3_C2_not00016_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not00016_12902,
      O => U3_C2_not00016_0
    );
  U3_C2_not00016_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not00011_O_pack_1,
      O => U3_C2_not00011_O
    );
  U3_C2_not00011 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X28Y43"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(2),
      O => U3_C2_not00011_O_pack_1
    );
  U2_vsenable_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq0000,
      O => U2_vsenable_DXMUX_12933
    );
  U2_vsenable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq000010_pack_1,
      O => U2_hcs_cmp_eq000010_5142
    );
  U2_vsenable_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vsenable_CLKINV_12916
    );
  U2_vsenable_CEINV : X_INV
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vsenable_CEINVNOT
    );
  nes_counter_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_1,
      O => nes_counter_reg_1_DXMUX_12976
    );
  nes_counter_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_0,
      O => nes_counter_reg_1_DYMUX_12961
    );
  nes_counter_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_counter_reg_1_SRINV_12953
    );
  nes_counter_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_1_CLKINV_12952
    );
  nes_counter_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_1_CEINV_12951
    );
  nes_counter_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_3,
      O => nes_counter_reg_3_DXMUX_13022
    );
  nes_counter_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_2,
      O => nes_counter_reg_3_DYMUX_13007
    );
  nes_counter_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_counter_reg_3_SRINV_12999
    );
  nes_counter_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_3_CLKINV_12998
    );
  nes_counter_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_3_CEINV_12997
    );
  nes_counter_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_5,
      O => nes_counter_reg_5_DXMUX_13068
    );
  nes_counter_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_4,
      O => nes_counter_reg_5_DYMUX_13053
    );
  nes_counter_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_counter_reg_5_SRINV_13045
    );
  nes_counter_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_5_CLKINV_13044
    );
  nes_counter_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_5_CEINV_13043
    );
  nes_counter_reg_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_7_SRINV_13091,
      O => nes_counter_reg_7_FFX_RST
    );
  nes_counter_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y31",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DXMUX_13114,
      CE => nes_counter_reg_7_CEINV_13089,
      CLK => nes_counter_reg_7_CLKINV_13090,
      SET => GND,
      RST => nes_counter_reg_7_FFX_RST,
      O => nes_counter_reg(7)
    );
  nes_counter_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_7,
      O => nes_counter_reg_7_DXMUX_13114
    );
  nes_counter_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_6,
      O => nes_counter_reg_7_DYMUX_13099
    );
  nes_counter_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_counter_reg_7_SRINV_13091
    );
  nes_counter_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_7_CLKINV_13090
    );
  nes_counter_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_7_CEINV_13089
    );
  nes_Mcount_counter_reg_eqn_71 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => nes_Result(7),
      ADR1 => nes_N11_0,
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_7
    );
  nes_counter_reg_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_9_SRINV_13137,
      O => nes_counter_reg_9_FFY_RST
    );
  nes_counter_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X66Y32",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DYMUX_13145,
      CE => nes_counter_reg_9_CEINV_13135,
      CLK => nes_counter_reg_9_CLKINV_13136,
      SET => GND,
      RST => nes_counter_reg_9_FFY_RST,
      O => nes_counter_reg(8)
    );
  nes_Mcount_counter_reg_eqn_91 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_Result(9),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_9
    );
  nes_counter_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_9,
      O => nes_counter_reg_9_DXMUX_13160
    );
  nes_counter_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_8,
      O => nes_counter_reg_9_DYMUX_13145
    );
  nes_counter_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_counter_reg_9_SRINV_13137
    );
  nes_counter_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_9_CLKINV_13136
    );
  nes_counter_reg_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_9_CEINV_13135
    );
  nes_Mcount_counter_reg_eqn_81 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_Result(8),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_8
    );
  U1_q_01_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_XORF_13186,
      O => U1_q_01_DXMUX_13188
    );
  U1_q_01_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y13"
    )
    port map (
      I0 => U1_q_01_CYINIT_13185,
      I1 => U1_Mcount_q_lut_0_rt_13183,
      O => U1_q_01_XORF_13186
    );
  U1_q_01_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_BXINV_13175,
      O => U1_q_01_CYINIT_13185
    );
  U1_q_01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U1_q_01_BXINV_13175
    );
  U1_q_01_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U1_q_01_CLKINV_13173
    );
  U2_hcs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_1,
      O => U2_hcs_1_DXMUX_13230
    );
  U2_hcs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_0,
      O => U2_hcs_1_DYMUX_13215
    );
  U2_hcs_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_hcs_1_SRINV_13206
    );
  U2_hcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_1_CLKINV_13205
    );
  U2_hcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_3,
      O => U2_hcs_3_DXMUX_13272
    );
  U2_hcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_2,
      O => U2_hcs_3_DYMUX_13257
    );
  U2_hcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_hcs_3_SRINV_13248
    );
  U2_hcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_3_CLKINV_13247
    );
  U2_hcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_5,
      O => U2_hcs_5_DXMUX_13314
    );
  U2_hcs_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_4,
      O => U2_hcs_5_DYMUX_13299
    );
  U2_hcs_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_hcs_5_SRINV_13290
    );
  U2_hcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_5_CLKINV_13289
    );
  U2_hcs_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_7_SRINV_13332,
      O => U2_hcs_7_FFX_RST
    );
  U2_hcs_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      I => U2_hcs_7_DXMUX_13356,
      CE => VCC,
      CLK => U2_hcs_7_CLKINV_13331,
      SET => GND,
      RST => U2_hcs_7_FFX_RST,
      O => U2_hcs(7)
    );
  U2_hcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_7,
      O => U2_hcs_7_DXMUX_13356
    );
  U2_hcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_6,
      O => U2_hcs_7_DYMUX_13341
    );
  U2_hcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_hcs_7_SRINV_13332
    );
  U2_hcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_7_CLKINV_13331
    );
  U2_Mcount_hcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result_7_1,
      ADR2 => U2_hcs_cmp_eq000010_5142,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_7
    );
  U2_hcs_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_9_SRINV_13374,
      O => U2_hcs_9_FFY_RST
    );
  U2_hcs_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => U2_hcs_9_DYMUX_13383,
      CE => VCC,
      CLK => U2_hcs_9_CLKINV_13373,
      SET => GND,
      RST => U2_hcs_9_FFY_RST,
      O => U2_hcs(8)
    );
  U2_Mcount_hcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X26Y31"
    )
    port map (
      ADR0 => U2_Result_9_1,
      ADR1 => U2_hcs_cmp_eq000010_5142,
      ADR2 => VCC,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_9
    );
  U2_hcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_9,
      O => U2_hcs_9_DXMUX_13398
    );
  U2_hcs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_8,
      O => U2_hcs_9_DYMUX_13383
    );
  U2_hcs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_hcs_9_SRINV_13374
    );
  U2_hcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_9_CLKINV_13373
    );
  U2_Mcount_hcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X26Y31"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5142,
      ADR1 => U2_hcs_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_Result_8_1,
      O => U2_Mcount_hcs_eqn_8
    );
  U2_vcs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_1,
      O => U2_vcs_1_DXMUX_13443
    );
  U2_vcs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_0,
      O => U2_vcs_1_DYMUX_13426
    );
  U2_vcs_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_1_SRINV_13416
    );
  U2_vcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_1_CLKINV_13415
    );
  U2_vcs_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_1_CEINV_13414
    );
  U2_vcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_3,
      O => U2_vcs_3_DXMUX_13489
    );
  U2_vcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_2,
      O => U2_vcs_3_DYMUX_13472
    );
  U2_vcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_3_SRINV_13462
    );
  U2_vcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_3_CLKINV_13461
    );
  U2_vcs_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_3_CEINV_13460
    );
  U2_vcs_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_4,
      O => U2_vcs_4_DYMUX_13515
    );
  U2_vcs_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_4_CLKINV_13504
    );
  U2_vcs_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_4_CEINV_13503
    );
  U2_vcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_7,
      O => U2_vcs_7_DXMUX_13561
    );
  U2_vcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_6,
      O => U2_vcs_7_DYMUX_13544
    );
  U2_vcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_7_SRINV_13534
    );
  U2_vcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_7_CLKINV_13533
    );
  U2_vcs_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_7_CEINV_13532
    );
  U2_Mcount_vcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X26Y24"
    )
    port map (
      ADR0 => U2_Result(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs_cmp_eq0000_5138,
      O => U2_Mcount_vcs_eqn_9
    );
  U2_vcs_9_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_9_SRINV_13580,
      O => U2_vcs_9_FFX_RST
    );
  U2_vcs_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DXMUX_13607,
      CE => U2_vcs_9_CEINV_13578,
      CLK => U2_vcs_9_CLKINV_13579,
      SET => GND,
      RST => U2_vcs_9_FFX_RST,
      O => U2_vcs(9)
    );
  U2_vcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_9,
      O => U2_vcs_9_DXMUX_13607
    );
  U2_vcs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_8,
      O => U2_vcs_9_DYMUX_13590
    );
  U2_vcs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_9_SRINV_13580
    );
  U2_vcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_9_CLKINV_13579
    );
  U2_vcs_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5137,
      O => U2_vcs_9_CEINV_13578
    );
  U2_vcs_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DYMUX_13590,
      CE => U2_vcs_9_CEINV_13578,
      CLK => U2_vcs_9_CLKINV_13579,
      SET => GND,
      RST => U2_vcs_9_SRINV_13580,
      O => U2_vcs(8)
    );
  nes_scalar_reg_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_reg_1_SRINV_13624,
      O => nes_scalar_reg_1_FFY_RST
    );
  nes_scalar_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y19",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DYMUX_13634,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_13623,
      SET => GND,
      RST => nes_scalar_reg_1_FFY_RST,
      O => nes_scalar_reg(0)
    );
  nes_scalar_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(1),
      O => nes_scalar_reg_1_DXMUX_13650
    );
  nes_scalar_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(0),
      O => nes_scalar_reg_1_DYMUX_13634
    );
  nes_scalar_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_scalar_reg_1_SRINV_13624
    );
  nes_scalar_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_1_CLKINV_13623
    );
  nes_scalar_next_0_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X66Y19"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_addsub0000(0),
      ADR3 => VCC,
      O => nes_scalar_next(0)
    );
  nes_scalar_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(3),
      O => nes_scalar_reg_3_DXMUX_13692
    );
  nes_scalar_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(2),
      O => nes_scalar_reg_3_DYMUX_13676
    );
  nes_scalar_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_scalar_reg_3_SRINV_13666
    );
  nes_scalar_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_3_CLKINV_13665
    );
  nes_scalar_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(5),
      O => nes_scalar_reg_5_DXMUX_13734
    );
  nes_scalar_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(4),
      O => nes_scalar_reg_5_DYMUX_13718
    );
  nes_scalar_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_scalar_reg_5_SRINV_13708
    );
  nes_scalar_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_5_CLKINV_13707
    );
  nes_scalar_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(7),
      O => nes_scalar_reg_7_DXMUX_13776
    );
  nes_scalar_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(6),
      O => nes_scalar_reg_7_DYMUX_13760
    );
  nes_scalar_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_scalar_reg_7_SRINV_13750
    );
  nes_scalar_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_7_CLKINV_13749
    );
  nes_scalar_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(9),
      O => nes_scalar_reg_9_DXMUX_13818
    );
  nes_scalar_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(8),
      O => nes_scalar_reg_9_DYMUX_13802
    );
  nes_scalar_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => nes_scalar_reg_9_SRINV_13792
    );
  nes_scalar_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_9_CLKINV_13791
    );
  U3_spriteonB4_cmp_le00001 : X_LUT4
    generic map(
      INIT => X"555D",
      LOC => "SLICE_X24Y26"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_N80,
      ADR2 => U2_hcs(8),
      ADR3 => N6,
      O => U3_spriteonB4_cmp_le0000
    );
  U3_spriteonB4_cmp_le0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_cmp_le0000,
      O => U3_spriteonB4_cmp_le0000_0
    );
  U3_spriteonB4_cmp_le0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6_pack_1,
      O => N6
    );
  U3_spriteonB4_cmp_le00001_SW0 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X24Y26"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => VCC,
      ADR2 => U2_hcs(2),
      ADR3 => U2_hcs(3),
      O => N6_pack_1
    );
  U3_C1_not000147 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X32Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C1(3),
      ADR3 => U3_C1(2),
      O => U3_C1_not000147_13870
    );
  U3_C1_not000147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000147_13870,
      O => U3_C1_not000147_0
    );
  U3_C1_not000147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000110_13861,
      O => U3_C1_not000110_0
    );
  U3_C1_not000110 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X32Y41"
    )
    port map (
      ADR0 => U3_C1(1),
      ADR1 => U3_C1(0),
      ADR2 => U3_C1(3),
      ADR3 => U3_C1(2),
      O => U3_C1_not000110_13861
    );
  blue_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N81_pack_1,
      O => U3_N81
    );
  U3_C1_not00015_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not00015_13942,
      O => U3_C1_not00015_0
    );
  U3_C1_not00015_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001105_13933,
      O => U3_C1_not0001105_0
    );
  U3_spriteonB1_cmp_lt0000232_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_cmp_lt0000232_13966,
      O => U3_spriteonB1_cmp_lt0000232_0
    );
  U3_spriteonB1_cmp_lt0000232_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N84,
      O => U3_N84_0
    );
  M1_25_77_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_77_13990,
      O => M1_25_77_0
    );
  M1_25_77_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N183,
      O => N183_0
    );
  U3_spriteonB5_and000026_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000026_14014,
      O => U3_spriteonB5_and000026_0
    );
  U3_spriteonB5_and000026_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N247_pack_1,
      O => N247
    );
  N255_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N255,
      O => N255_0
    );
  U3_blue_0_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_0_27_14062,
      O => U3_blue_0_27_0
    );
  U3_blue_0_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_0_9_pack_1,
      O => U3_blue_0_9_5162
    );
  U3_Madd_spriteon2_addsub0000_cy_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_cy(5),
      O => U3_Madd_spriteon2_addsub0000_cy_5_0
    );
  U3_Madd_spriteon2_addsub0000_cy_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(5),
      O => U3_spriteon2_addsub0000_5_0
    );
  U3_spriteon2_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(8),
      O => U3_spriteon2_addsub0000_8_0
    );
  U3_spriteon2_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N16_pack_1,
      O => U3_N16
    );
  M1_24_25 : X_LUT4
    generic map(
      INIT => X"0120",
      LOC => "SLICE_X48Y40"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => U2_vcs(0),
      ADR2 => sw_3_IBUF_4994,
      ADR3 => rom1_addr(2),
      O => M1_24_25_14134
    );
  M1_24_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_25_14134,
      O => M1_24_25_0
    );
  M1_24_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_2_pack_1,
      O => rom1_addr(2)
    );
  U3_Msub_ypix1_Madd_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X48Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => rom1_addr_2_pack_1
    );
  M1a_23_10 : X_LUT4
    generic map(
      INIT => X"FFB8",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => M1_21_bdd8,
      ADR1 => U2_vcs(1),
      ADR2 => M1a_22_bdd0_0,
      ADR3 => rom1_addr(3),
      O => M1a_23_10_14158
    );
  M1a_23_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_10_14158,
      O => M1a_23_10_0
    );
  M1a_23_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_3_pack_2,
      O => rom1_addr(3)
    );
  U3_Msub_ypix1_Madd_xor_3_11 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => rom1_addr_3_pack_2
    );
  M1a_28_66 : X_LUT4
    generic map(
      INIT => X"21FF",
      LOC => "SLICE_X44Y40"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr(3),
      ADR2 => M1_10_bdd8_0,
      ADR3 => rom1_addr(4),
      O => M1a_28_66_14182
    );
  M1a_28_66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_28_66_14182,
      O => M1a_28_66_0
    );
  M1a_28_66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_pack_2,
      O => rom1_addr(4)
    );
  U3_Msub_ypix1_Madd_xor_4_11 : X_LUT4
    generic map(
      INIT => X"78F0",
      LOC => "SLICE_X44Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(1),
      O => rom1_addr_4_pack_2
    );
  ja2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_cmp_eq0000125_pack_1,
      O => nes_counter_reg_cmp_eq0000125_5128
    );
  green_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N30_pack_1,
      O => U3_N30
    );
  U3_spriteonB1_cmp_lt0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_cmp_lt0000,
      O => U3_spriteonB1_cmp_lt0000_0
    );
  U3_spriteonB1_cmp_lt0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N201_pack_1,
      O => N201
    );
  red_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_red_0_17_pack_1,
      O => U3_red_0_17_5168
    );
  N245_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N245,
      O => N245_0
    );
  N245_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000040_pack_1,
      O => U3_spriteonGrnd_and000040_5170
    );
  U3_spriteonGrnd_and000084_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000084_14326,
      O => U3_spriteonGrnd_and000084_0
    );
  U3_spriteonGrnd_and000084_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000071_pack_1,
      O => U3_spriteonGrnd_and000071_5173
    );
  N199_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N199,
      O => N199_0
    );
  N199_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000058_pack_1,
      O => U3_spriteonGrnd_and000058_5175
    );
  N195_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N195,
      O => N195_0
    );
  N195_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000066_14367,
      O => U3_spriteonGrnd_and000066_0
    );
  U3_Madd_spriteon2_addsub0000_lut_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(8),
      O => U3_Madd_spriteon2_addsub0000_lut_8_0
    );
  U3_Madd_spriteon2_addsub0000_lut_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000113_14389,
      O => U3_C2_not000113_0
    );
  N325_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N325,
      O => N325_0
    );
  M1a_26_106_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_26_106_14422,
      O => M1a_26_106_0
    );
  M1a_27_123_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_123_14434,
      O => M1a_27_123_0
    );
  M1a_27_123 : X_LUT4
    generic map(
      INIT => X"D595",
      LOC => "SLICE_X45Y35"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => M1a_27_123_14434
    );
  U3_Madd_spriteon1_addsub0001_xor_8_11 : X_LUT4
    generic map(
      INIT => X"1E5A",
      LOC => "SLICE_X29Y37"
    )
    port map (
      ADR0 => U3_C1(7),
      ADR1 => U3_C1(6),
      ADR2 => U3_C1(8),
      ADR3 => U3_N15,
      O => U3_spriteon1_addsub0001(8)
    );
  U3_spriteon1_addsub0001_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_addsub0001(8),
      O => U3_spriteon1_addsub0001_8_0
    );
  U3_spriteon1_addsub0001_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N15_pack_1,
      O => U3_N15
    );
  U3_Madd_spriteon1_addsub0001_xor_9_111 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X29Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(4),
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => U3_N15_pack_1
    );
  nes_nes_clk33 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => nes_counter_reg(9),
      ADR1 => nes_counter_reg(4),
      ADR2 => N189,
      ADR3 => nes_counter_reg(0),
      O => ja3_OBUF_14482
    );
  ja3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N189_pack_1,
      O => N189
    );
  nes_nes_clk33_SW0 : X_LUT4
    generic map(
      INIT => X"0F1F",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_nes_clk31_0,
      ADR3 => nes_counter_reg(3),
      O => N189_pack_1
    );
  U3_spriteonB2_and000022 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X24Y20"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => U3_spriteonB1_cmp_lt0000_0,
      O => U3_N78
    );
  U3_N78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N78,
      O => U3_N78_0
    );
  U3_N78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5,
      O => U3_spriteonB5_0
    );
  U3_spriteonB5_and0000110 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X24Y20"
    )
    port map (
      ADR0 => U3_spriteonB5_and000083,
      ADR1 => U3_spriteonB5_and000026_0,
      ADR2 => U3_spriteonB4_cmp_le0000_0,
      ADR3 => U3_spriteonB1_cmp_lt0000_0,
      O => U3_spriteonB5
    );
  U3_Madd_spriteon2_addsub0000_lut_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1,
      O => U3_Madd_spriteon2_addsub0000_lut_8_bdd0
    );
  U2_vidon_and000039_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000039_14626,
      O => U2_vidon_and000039_0
    );
  U2_vidon_and000039_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and00000_pack_1,
      O => U2_vidon_and00000_5184
    );
  U3_spriteonB4_and000052_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000052_14650,
      O => U3_spriteonB4_and000052_0
    );
  U3_spriteonB4_and000052_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and00006_14643,
      O => U2_vidon_and00006_0
    );
  M2a_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_1_Q_14674,
      O => M2a_1_0
    );
  M2a_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N69_pack_1,
      O => N69
    );
  M1a_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_Q,
      O => M1a_24_0
    );
  M1a_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N171_pack_1,
      O => N171
    );
  nes_a_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_4977,
      O => nes_a_reg_DYMUX_14708
    );
  nes_a_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_a_reg_CLKINV_14706
    );
  nes_a_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_cmp_eq0000,
      O => nes_a_reg_CEINV_14705
    );
  M1a_26_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_26_8_14734,
      O => M1a_26_8_0
    );
  M1a_26_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_11_14727,
      O => M1_22_11_0
    );
  M1_22_11 : X_LUT4
    generic map(
      INIT => X"33E4",
      LOC => "SLICE_X43Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => M1_22_bdd4,
      ADR3 => U2_vcs(1),
      O => M1_22_bdd0
    );
  M1_22_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd0,
      O => M1_22_bdd0_0
    );
  M1_22_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd4_pack_3,
      O => M1_22_bdd4
    );
  M1_22_210 : X_LUT4
    generic map(
      INIT => X"7DFF",
      LOC => "SLICE_X43Y34"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => sw_2_IBUF_4993,
      O => M1_22_bdd4_pack_3
    );
  M1_30_49_SW0 : X_LUT4
    generic map(
      INIT => X"6E10",
      LOC => "SLICE_X45Y32"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => sw_2_IBUF_4993,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N331
    );
  N331_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N331,
      O => N331_0
    );
  N331_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N333,
      O => N333_0
    );
  M1a_28_32_SW0 : X_LUT4
    generic map(
      INIT => X"FF11",
      LOC => "SLICE_X45Y32"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => sw_2_IBUF_4993,
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => N333
    );
  M1_23_14 : X_LUT4
    generic map(
      INIT => X"0810",
      LOC => "SLICE_X46Y39"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => sw_3_IBUF_4994,
      ADR2 => rom1_addr(2),
      ADR3 => U2_vcs(0),
      O => M1_23_14_14806
    );
  M1_23_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_14_14806,
      O => M1_23_14_0
    );
  M1_23_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_102_14799,
      O => M1_27_102_0
    );
  M1_27_102 : X_LUT4
    generic map(
      INIT => X"8610",
      LOC => "SLICE_X46Y39"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => sw_3_IBUF_4994,
      ADR2 => rom1_addr(2),
      ADR3 => U2_vcs(0),
      O => M1_27_102_14799
    );
  M1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_0_Q,
      O => M1_0_0
    );
  M1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_127_14823,
      O => M1_27_127_0
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_nes_clk31_14847,
      O => nes_nes_clk31_0
    );
  M1_21_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_5,
      O => M1_21_5_0
    );
  M1_21_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_and00005_14871,
      O => U3_spriteonB2_and00005_0
    );
  M2_4_bdd10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_bdd10,
      O => M2_4_bdd10_0
    );
  M2_4_bdd10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N215,
      O => N215_0
    );
  M2_2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_10_14926,
      O => M2_2_10_0
    );
  M2_2_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_2_14919,
      O => M2_3_2_0
    );
  U1_Mcount_q_lut_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_Mcount_q_lut(0),
      O => U1_Mcount_q_lut_0_0
    );
  M2_5_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_bdd2,
      O => M2_5_bdd2_0
    );
  M2_5_bdd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N309,
      O => N309_0
    );
  M1a_1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_1_8_14998,
      O => M1a_1_8_0
    );
  M1a_1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000080_14991,
      O => U2_vidon_and000080_0
    );
  M2a_6_49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_49_15022,
      O => M2a_6_49_0
    );
  M2a_6_49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N265,
      O => N265_0
    );
  nes_right_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_4977,
      O => nes_right_reg_DYMUX_15032
    );
  nes_right_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_right_reg_CLKINV_15030
    );
  nes_right_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_right_reg_cmp_eq0000,
      O => nes_right_reg_CEINV_15029
    );
  U3_Madd_spriteon1_addsub0000_xor_7_11 : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X32Y39"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U3_C1(6),
      ADR2 => U3_C1(7),
      ADR3 => U3_C1(5),
      O => U3_Madd_spriteon1_addsub0001_lut(7)
    );
  U3_Madd_spriteon1_addsub0001_lut_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon1_addsub0001_lut(7),
      O => U3_Madd_spriteon1_addsub0001_lut_7_0
    );
  U3_Madd_spriteon1_addsub0001_lut_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N108,
      O => N108_0
    );
  U3_C1_not000152_SW0 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X32Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(6),
      ADR2 => VCC,
      ADR3 => U3_C1(5),
      O => N108
    );
  M2_9_25 : X_LUT4
    generic map(
      INIT => X"B020",
      LOC => "SLICE_X49Y51"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => N273,
      O => M2_9_25_15082
    );
  M2_9_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_25_15082,
      O => M2_9_25_0
    );
  M2_9_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N273_pack_1,
      O => N273
    );
  M2_9_25_SW1 : X_LUT4
    generic map(
      INIT => X"2880",
      LOC => "SLICE_X49Y51"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => N273_pack_1
    );
  M2_4_38 : X_LUT4
    generic map(
      INIT => X"F8FD",
      LOC => "SLICE_X51Y51"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_4_24_0,
      ADR2 => rom1_addr(3),
      ADR3 => M2_0_bdd9_0,
      O => M2_4_38_15106
    );
  M2_4_38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_38_15106,
      O => M2_4_38_0
    );
  M2_4_38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N217,
      O => N217_0
    );
  M2_9_63_SW0 : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X51Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(3),
      ADR3 => M2_0_bdd9_0,
      O => N217
    );
  U3_spriteonB4_and00005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and00005_15118,
      O => U3_spriteonB4_and00005_0
    );
  U3_spriteonB1_and000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000010_15142,
      O => U3_spriteonB1_and000010_0
    );
  U3_spriteonB1_and000010_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N191_pack_1,
      O => N191
    );
  U3_spriteonB1_and000010_SW0 : X_LUT4
    generic map(
      INIT => X"A800",
      LOC => "SLICE_X25Y22"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(7),
      O => N191_pack_1
    );
  U3_spriteonB1_and000022_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000022_15166,
      O => U3_spriteonB1_and000022_0
    );
  U3_spriteonB1_and000022_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N193_pack_1,
      O => N193
    );
  M1a_26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_26_Q,
      O => M1a_26_0
    );
  M1a_26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => N231_pack_1,
      O => N231
    );
  N104_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N104,
      O => N104_0
    );
  N104_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0003,
      O => U3_blue_and0003_0
    );
  U3_spriteon2_addsub0000_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(7),
      O => U3_Madd_spriteon2_addsub0000_lut_7_0
    );
  U3_N85_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N85,
      O => U3_N85_0
    );
  U3_N85_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N36_pack_1,
      O => U3_N36
    );
  U3_spriteonGrnd_and000012_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000012_15310,
      O => U3_spriteonGrnd_and000012_0
    );
  U3_spriteonGrnd_and000012_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and00002_pack_1,
      O => U3_spriteonGrnd_and00002_5215
    );
  M2a_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_9_Q,
      O => M2a_9_0
    );
  M2a_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_10_bdd0_pack_1,
      O => M1a_10_bdd0
    );
  M1a_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_Q,
      O => M1a_22_0
    );
  M1a_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_18_pack_1,
      O => M1a_22_18_5218
    );
  M1a_23_61 : X_LUT4
    generic map(
      INIT => X"E4A0",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1a_23_10_0,
      ADR2 => M1a_23_43_0,
      ADR3 => M1a_23_14_5220,
      O => M1a_23_Q
    );
  M1a_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_Q,
      O => M1a_23_0
    );
  M1a_23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_14_pack_1,
      O => M1a_23_14_5220
    );
  M1a_23_14 : X_LUT4
    generic map(
      INIT => X"D57F",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => M1_23_bdd1_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => M1a_23_14_pack_1
    );
  M1_27_40 : X_LUT4
    generic map(
      INIT => X"F2A0",
      LOC => "SLICE_X49Y38"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(2),
      ADR3 => sw_2_IBUF_4993,
      O => M1_27_40_15406
    );
  M1_27_40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_40_15406,
      O => M1_27_40_0
    );
  M1_27_40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_bdd1,
      O => M1a_24_bdd1_0
    );
  M1a_24_21 : X_LUT4
    generic map(
      INIT => X"E080",
      LOC => "SLICE_X49Y38"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(2),
      ADR3 => sw_2_IBUF_4993,
      O => M1a_24_bdd1
    );
  M1a_24_38 : X_LUT4
    generic map(
      INIT => X"4450",
      LOC => "SLICE_X47Y38"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1a_24_bdd1_0,
      ADR2 => M1a_24_14_5221,
      ADR3 => U2_vcs(1),
      O => M1a_24_38_15430
    );
  M1a_24_38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_38_15430,
      O => M1a_24_38_0
    );
  M1a_24_38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_14_pack_1,
      O => M1a_24_14_5221
    );
  M1a_24_14 : X_LUT4
    generic map(
      INIT => X"ECC8",
      LOC => "SLICE_X47Y38"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => sw_3_IBUF_4994,
      ADR3 => sw_2_IBUF_4993,
      O => M1a_24_14_pack_1
    );
  M2_4_117_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_117_15454,
      O => M2_4_117_0
    );
  M2_4_117_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_25_Q,
      O => M1a_25_0
    );
  M1a_27_50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_50_15478,
      O => M1a_27_50_0
    );
  M1a_27_50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_26_47_15471,
      O => M1a_26_47_0
    );
  M2a_5_110_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_5_110_15502,
      O => M2a_5_110_0
    );
  M2a_5_110_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N337_pack_1,
      O => N337
    );
  M1a_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_28_Q,
      O => M1a_28_0
    );
  M1a_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_28_32_pack_1,
      O => M1a_28_32_5226
    );
  M1_25_34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_34_15550,
      O => M1_25_34_0
    );
  M1_25_34_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N267_pack_1,
      O => N267
    );
  M1a_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_29_Q,
      O => M1a_29_0
    );
  M1a_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_29_30_pack_1,
      O => M1a_29_30_5227
    );
  M1a_14_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_14_bdd0,
      O => M1a_14_bdd0_0
    );
  M1a_1_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_1_20,
      O => M1a_1_20_0
    );
  N01_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01,
      O => N01_0
    );
  N01_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  M1a_4_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_4_bdd0,
      O => M1a_4_bdd0_0
    );
  M1a_12_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_12_bdd1,
      O => M1a_12_bdd1_0
    );
  M2a_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_5_Q,
      O => M2a_5_0
    );
  M2a_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N239_pack_1,
      O => N239
    );
  M1_28_74_SW0 : X_LUT4
    generic map(
      INIT => X"8008",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => N147,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N321
    );
  N321_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N321,
      O => N321_0
    );
  N321_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N147_pack_2,
      O => N147
    );
  M1_28_54_SW0 : X_LUT4
    generic map(
      INIT => X"D4E8",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => sw_3_IBUF_4994,
      ADR3 => U2_vcs(1),
      O => N147_pack_2
    );
  nes_left_reg : X_FF
    generic map(
      LOC => "SLICE_X55Y30",
      INIT => '0'
    )
    port map (
      I => nes_left_reg_DYMUX_15704,
      CE => nes_left_reg_CEINV_15701,
      CLK => nes_left_reg_CLKINV_15702,
      SET => GND,
      RST => GND,
      O => nes_left_reg_4597
    );
  nes_left_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_4977,
      O => nes_left_reg_DYMUX_15704
    );
  nes_left_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_left_reg_CLKINV_15702
    );
  nes_left_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_cmp_eq0000,
      O => nes_left_reg_CEINV_15701
    );
  nes_scalar_next_cmp_eq000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000010_15718,
      O => nes_scalar_next_cmp_eq000010_0
    );
  nes_scalar_next_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X66Y23"
    )
    port map (
      ADR0 => nes_scalar_reg(5),
      ADR1 => nes_scalar_reg(6),
      ADR2 => nes_scalar_reg(7),
      ADR3 => nes_scalar_reg(4),
      O => nes_scalar_next_cmp_eq000010_15718
    );
  nes_scalar_next_cmp_eq000021_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000021_15730,
      O => nes_scalar_next_cmp_eq000021_0
    );
  nes_scalar_next_cmp_eq000021 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => nes_scalar_reg(0),
      ADR1 => nes_scalar_reg(2),
      ADR2 => nes_scalar_reg(1),
      ADR3 => nes_scalar_reg(3),
      O => nes_scalar_next_cmp_eq000021_15730
    );
  M2_6_87_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_87_15754,
      O => M2_6_87_0
    );
  M2_6_87_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd7_pack_2,
      O => M1_10_bdd7
    );
  M1_10_bdd8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd8,
      O => M1_10_bdd8_0
    );
  M1_10_bdd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd5,
      O => M1_10_bdd5_0
    );
  M2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_Q,
      O => M2_7_0
    );
  M2_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_Q,
      O => M1_21_0
    );
  M1_26_58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_58_15826,
      O => M1_26_58_0
    );
  M1_26_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_bdd5_pack_1,
      O => M1_21_bdd5
    );
  N307_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N307,
      O => N307_0
    );
  N307_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_bdd8_pack_2,
      O => M1_21_bdd8
    );
  M1a_30_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_30_36_15874,
      O => M1a_30_36_0
    );
  M1a_30_36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd7_pack_2,
      O => M1_22_bdd7
    );
  M1a_22_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_bdd0,
      O => M1a_22_bdd0_0
    );
  M1a_22_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd9_pack_1,
      O => M1_22_bdd9
    );
  M1_23_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_bdd1,
      O => M1_23_bdd1_0
    );
  M1_23_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_bdd6_pack_3,
      O => M1_23_bdd6
    );
  M1_24_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_bdd2,
      O => M1_24_bdd2_0
    );
  M1_24_bdd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd12_pack_1,
      O => M1_22_bdd12
    );
  M1_24_70_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_70_15970,
      O => M1_24_70_0
    );
  M1_24_70_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_bdd0_pack_3,
      O => M1_24_bdd0
    );
  M1a_28_17 : X_LUT4
    generic map(
      INIT => X"FF53",
      LOC => "SLICE_X47Y35"
    )
    port map (
      ADR0 => M1_24_bdd4,
      ADR1 => M1_22_bdd4,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M1a_28_17_15994
    );
  M1a_28_17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_28_17_15994,
      O => M1a_28_17_0
    );
  M1a_28_17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_bdd4_pack_2,
      O => M1_24_bdd4
    );
  M1_24_21 : X_LUT4
    generic map(
      INIT => X"3C7D",
      LOC => "SLICE_X47Y35"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => sw_2_IBUF_4993,
      O => M1_24_bdd4_pack_2
    );
  M1_25_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_bdd1,
      O => M1_25_bdd1_0
    );
  M1_25_21 : X_LUT4
    generic map(
      INIT => X"F971",
      LOC => "SLICE_X42Y35"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M1_24_bdd4,
      O => M1_25_bdd1
    );
  M1_24_108 : X_LUT4
    generic map(
      INIT => X"40EA",
      LOC => "SLICE_X42Y36"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1_24_70_0,
      ADR2 => N183_0,
      ADR3 => M1_12_bdd0,
      O => M1_24_Q
    );
  M1_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_Q,
      O => M1_24_0
    );
  M1_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_12_bdd0_pack_1,
      O => M1_12_bdd0
    );
  M2_10_11 : X_LUT4
    generic map(
      INIT => X"DC1B",
      LOC => "SLICE_X42Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1_12_bdd0_pack_1
    );
  M1_27_11 : X_LUT4
    generic map(
      INIT => X"7C4F",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => M1_22_bdd9,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1_27_bdd0
    );
  M1_27_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_bdd0,
      O => M1_27_bdd0_0
    );
  M1_27_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_30_16047,
      O => M1_26_30_0
    );
  M1_26_30 : X_LUT4
    generic map(
      INIT => X"F2F4",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => M1_22_bdd9,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1_26_30_16047
    );
  M1a_29_51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_29_51_16078,
      O => M1a_29_51_0
    );
  M1a_29_51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_bdd4_pack_2,
      O => M1_27_bdd4
    );
  M2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_Q,
      O => M2_10_0
    );
  M2_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_7_pack_1,
      O => M2_10_7
    );
  M2a_9_33_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_9_33_16126,
      O => M2a_9_33_0
    );
  M2a_9_33_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_bdd2_pack_3,
      O => M2_10_bdd2
    );
  M2_7_92_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_92_16150,
      O => M2_7_92_0
    );
  M2_7_92_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_12_bdd5_pack_2,
      O => M2_12_bdd5
    );
  M1_28_74_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_74_16174,
      O => M1_28_74_0
    );
  M1_28_74_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_23_pack_1,
      O => M1_28_23_5244
    );
  M1_10_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd0,
      O => M1_10_bdd0_0
    );
  M1_14_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_14_bdd1,
      O => M1_14_bdd1_0
    );
  N315_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N315,
      O => N315_0
    );
  N315_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_bdd5,
      O => M1_29_bdd5_0
    );
  M2_2_50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_50_16246,
      O => M2_2_50_0
    );
  M2_2_50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd18_pack_1,
      O => M2_0_bdd18
    );
  M2_3_72_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_72,
      O => M2_3_72_0
    );
  M2_3_72_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd20_pack_1,
      O => M2_0_bdd20
    );
  M1_4_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_4_bdd0,
      O => M1_4_bdd0_0
    );
  M2_3_bdd7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_bdd7,
      O => M2_3_bdd7_0
    );
  M2_3_bdd7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd9,
      O => M2_0_bdd9_0
    );
  M2_3_41 : X_LUT4
    generic map(
      INIT => X"6FFF",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_3_bdd7
    );
  M2_18_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_18_bdd0,
      O => M2_18_bdd0_0
    );
  M2_18_11 : X_LUT4
    generic map(
      INIT => X"FBFE",
      LOC => "SLICE_X43Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M2_18_bdd0
    );
  M2_1_29 : X_LUT4
    generic map(
      INIT => X"FEEF",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd20,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_1_bdd1
    );
  M2_1_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_bdd1,
      O => M2_1_bdd1_0
    );
  M2_1_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_31_16335,
      O => M2_2_31_0
    );
  M2_2_311 : X_LUT4
    generic map(
      INIT => X"F0E0",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd20,
      ADR2 => rom1_addr(3),
      ADR3 => rom1_addr(2),
      O => M2_2_31_16335
    );
  M2_6_172 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X46Y46"
    )
    port map (
      ADR0 => M2_6_169,
      ADR1 => rom1_addr(4),
      ADR2 => M2_6_87_0,
      ADR3 => M2_6_120_5247,
      O => M2_6_Q
    );
  M2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_Q,
      O => M2_6_0
    );
  M2_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_120_pack_1,
      O => M2_6_120_5247
    );
  M2_6_120 : X_LUT4
    generic map(
      INIT => X"5D7F",
      LOC => "SLICE_X46Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr(3),
      ADR2 => M2_6_bdd1_0,
      ADR3 => M2_1_bdd1_0,
      O => M2_6_120_pack_1
    );
  M2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_Q,
      O => M2_8_0
    );
  M2_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_129_pack_1,
      O => M2_8_129_5248
    );
  U3_spriteonB1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1,
      O => U3_spriteonB1_0
    );
  U3_spriteonB1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000049_pack_1,
      O => U3_spriteonB1_and000049_5249
    );
  U3_spriteonB3_and000050_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000050_16438,
      O => U3_spriteonB3_and000050_0
    );
  U3_spriteonB3_and000050_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N261,
      O => N261_0
    );
  U3_spriteon1_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_addsub0001(9),
      O => U3_spriteon1_addsub0001_9_0
    );
  U3_spriteon1_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N57_pack_1,
      O => N57
    );
  who_present_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_5193,
      O => who_present_state_FSM_FFd1_DXMUX_16490
    );
  who_present_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => who_present_state_FSM_FFd2_In,
      O => who_present_state_FSM_FFd1_DYMUX_16483
    );
  who_present_state_FSM_FFd1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => who_present_state_FSM_FFd1_SRINV_16474
    );
  who_present_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => who_present_state_FSM_FFd1_CLKINV_16473
    );
  vsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_N2_pack_1,
      O => U2_N2
    );
  U3_spriteonB2_and000056_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_and000056_16542,
      O => U3_spriteonB2_and000056_0
    );
  U3_spriteonB2_and000056_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  M1a_12_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_12_bdd0,
      O => M1a_12_bdd0_0
    );
  U3_spriteonB2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2,
      O => U3_spriteonB2_0
    );
  U3_spriteonB2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_and000012_pack_1,
      O => U3_spriteonB2_and000012_5256
    );
  M2a_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_2_Q,
      O => M2a_2_0
    );
  M2a_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_2_18_pack_1,
      O => M2a_2_18_5258
    );
  M2a_2_59 : X_LUT4
    generic map(
      INIT => X"0072",
      LOC => "SLICE_X49Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => N221_0,
      ADR2 => M2a_2_18_5258,
      ADR3 => rom1_addr(4),
      O => M2a_2_Q
    );
  M2a_4_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_14_16614,
      O => M2a_4_14_0
    );
  M2a_4_14 : X_LUT4
    generic map(
      INIT => X"A0E4",
      LOC => "SLICE_X49Y49"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(0),
      ADR2 => M2_4_bdd2,
      ADR3 => M2_3_bdd7_0,
      O => M2a_4_14_16614
    );
  M2a_4_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_35_16626,
      O => M2a_4_35_0
    );
  M2a_4_35 : X_LUT4
    generic map(
      INIT => X"3D40",
      LOC => "SLICE_X55Y50"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2a_4_35_16626
    );
  M2a_6_21 : X_LUT4
    generic map(
      INIT => X"A880",
      LOC => "SLICE_X53Y51"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => sw_1_IBUF_4992,
      O => M2a_6_bdd1
    );
  M2a_6_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_bdd1,
      O => M2a_6_bdd1_0
    );
  M2a_6_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_54_16643,
      O => M2a_4_54_0
    );
  M2a_4_54 : X_LUT4
    generic map(
      INIT => X"FEF8",
      LOC => "SLICE_X53Y51"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => sw_1_IBUF_4992,
      O => M2a_4_54_16643
    );
  M2a_4_116 : X_LUT4
    generic map(
      INIT => X"5444",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2a_4_35_0,
      ADR2 => M2a_4_54_0,
      ADR3 => M2a_4_77_5262,
      O => M2a_4_116_16674
    );
  M2a_4_116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_116_16674,
      O => M2a_4_116_0
    );
  M2a_4_116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_77_pack_2,
      O => M2a_4_77_5262
    );
  M2a_4_77 : X_LUT4
    generic map(
      INIT => X"00B7",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => N253_0,
      ADR3 => rom1_addr(3),
      O => M2a_4_77_pack_2
    );
  M2a_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_Q,
      O => M2a_8_0
    );
  M2a_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_11_pack_1,
      O => M2a_8_11_5264
    );
  M1a_23_43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_43,
      O => M1a_23_43_0
    );
  U2_vidon_and0000105_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and0000105_16734,
      O => U2_vidon_and0000105_0
    );
  U3_spriteonB3_and000073_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000073_16758,
      O => U3_spriteonB3_and000073_0
    );
  U3_spriteonB3_and000073_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N249_pack_1,
      O => N249
    );
  U3_spriteon2_addsub0000_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(9),
      O => U3_spriteon2_addsub0000_9_0
    );
  U3_spriteon2_addsub0000_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N39_pack_1,
      O => N39
    );
  U3_spriteonB3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3,
      O => U3_spriteonB3_0
    );
  U3_spriteonB3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N323_pack_1,
      O => N323
    );
  M1_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_Q,
      O => M1_22_0_4914
    );
  M1_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_0_pack_1,
      O => M1_22_0_5273
    );
  M1_0_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_0_bdd2,
      O => M1_0_bdd2_0
    );
  M1_28_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_2_16854,
      O => M1_28_2_0
    );
  green_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N100_pack_1,
      O => N100
    );
  N221_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N221,
      O => N221_0
    );
  N221_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd4_pack_1,
      O => M2_0_bdd4
    );
  M2a_6_11 : X_LUT4
    generic map(
      INIT => X"5A48",
      LOC => "SLICE_X53Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M2_0_bdd6,
      O => M2a_6_bdd0
    );
  M2a_6_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_bdd0,
      O => M2a_6_bdd0_0
    );
  M2a_6_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd6_pack_1,
      O => M2_0_bdd6
    );
  M2_0_31 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X53Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => VCC,
      ADR3 => sw_1_IBUF_4992,
      O => M2_0_bdd6_pack_1
    );
  M2_10_25 : X_LUT4
    generic map(
      INIT => X"0A0B",
      LOC => "SLICE_X50Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd10,
      O => M2_10_25_16950
    );
  M2_10_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_25_16950,
      O => M2_10_25_0
    );
  M2_10_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd10_pack_2,
      O => M2_0_bdd10
    );
  M2_0_61 : X_LUT4
    generic map(
      INIT => X"F88F",
      LOC => "SLICE_X50Y46"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => M2_0_bdd10_pack_2
    );
  M2a_8_29 : X_LUT4
    generic map(
      INIT => X"54FF",
      LOC => "SLICE_X45Y50"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd13,
      ADR3 => U2_vcs(1),
      O => M2a_8_29_16974
    );
  M2a_8_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_29_16974,
      O => M2a_8_29_0
    );
  M2a_8_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd13_pack_1,
      O => M2_0_bdd13
    );
  M2_0_71 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X45Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => VCC,
      ADR3 => sw_1_IBUF_4992,
      O => M2_0_bdd13_pack_1
    );
  M2_0_64 : X_LUT4
    generic map(
      INIT => X"0232",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => M2_0_28,
      ADR1 => rom1_addr(4),
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd2,
      O => M2_0_Q
    );
  M2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_Q,
      O => M2_0_0
    );
  M2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd2_pack_1,
      O => M2_0_bdd2
    );
  M2_4_93_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_93_17022,
      O => M2_4_93_0
    );
  M2_4_93_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_bdd5,
      O => M2_2_bdd5_0
    );
  M2_4_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_bdd0,
      O => M2_4_bdd0_0
    );
  M2_4_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_24_17058,
      O => M2_4_24_0
    );
  M2_4_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N253,
      O => N253_0
    );
  M2_4_127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_127_17082,
      O => M2_4_127_0
    );
  M2_4_127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_bdd2_pack_3,
      O => M2_4_bdd2
    );
  M2_4_49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_49,
      O => M2_4_49_0
    );
  M2a_5_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_5_9_17118,
      O => M2a_5_9_0
    );
  M2a_5_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_bdd1,
      O => M2_6_bdd1_0
    );
  M2_7_55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_55_17142,
      O => M2_7_55_0
    );
  M2_7_55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_bdd0_pack_1,
      O => M2_7_bdd0
    );
  M2_7_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_25_17166,
      O => M2_7_25_0
    );
  M2_7_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_51_17159,
      O => M2_6_51_0
    );
  M2a_9_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_9_13_17190,
      O => M2a_9_13_0
    );
  M2a_9_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_bdd0_pack_1,
      O => M2_9_bdd0
    );
  M2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_Q,
      O => M2_9_0
    );
  M2_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_63_pack_1,
      O => M2_9_63_5278
    );
  M2a_7_58 : X_LUT4
    generic map(
      INIT => X"00D8",
      LOC => "SLICE_X49Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M2_7_bdd0,
      ADR2 => N149,
      ADR3 => U2_vcs(1),
      O => M2a_7_58_17238
    );
  M2a_7_58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_7_58_17238,
      O => M2a_7_58_0
    );
  M2a_7_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N149_pack_1,
      O => N149
    );
  U3_blue_and0000258 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U2_vcs(6),
      ADR2 => N161,
      ADR3 => U3_N84_0,
      O => U3_N35
    );
  U3_N35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N35,
      O => U3_N35_0
    );
  U3_N35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N161_pack_1,
      O => N161
    );
  U3_blue_and0000258_SW0 : X_LUT4
    generic map(
      INIT => X"74F0",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => N261_0,
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(5),
      ADR3 => U2_vcs(4),
      O => N161_pack_1
    );
  M2a_7_86 : X_LUT4
    generic map(
      INIT => X"54FE",
      LOC => "SLICE_X47Y46"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M2a_7_58_0,
      ADR2 => N179,
      ADR3 => M1a_12_bdd0_0,
      O => M2a_7_Q
    );
  M2a_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_7_Q,
      O => M2a_7_0
    );
  M2a_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N179_pack_1,
      O => N179
    );
  M2a_7_86_SW0 : X_LUT4
    generic map(
      INIT => X"0C88",
      LOC => "SLICE_X47Y46"
    )
    port map (
      ADR0 => M2a_6_bdd1_0,
      ADR1 => U2_vcs(1),
      ADR2 => M2_12_bdd5,
      ADR3 => rom1_addr(3),
      O => N179_pack_1
    );
  U2_vidon_and0000131 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X26Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vidon_and000039_0,
      ADR2 => U2_vidon_and0000117_5283,
      ADR3 => VCC,
      O => vidon
    );
  vidon_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vidon,
      O => vidon_0
    );
  vidon_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and0000117_pack_1,
      O => U2_vidon_and0000117_5283
    );
  U2_vidon_and0000117 : X_LUT4
    generic map(
      INIT => X"5400",
      LOC => "SLICE_X26Y21"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U2_vidon_and000080_0,
      ADR2 => U2_vidon_and000065,
      ADR3 => U2_vidon_and0000105_0,
      O => U2_vidon_and0000117_pack_1
    );
  U3_spriteonB3_and000043_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000043_17322,
      O => U3_spriteonB3_and000043_0
    );
  green_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_pack_1,
      O => U3_spriteonGrnd
    );
  U3_spriteonB4_and000055_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000055_17382,
      O => U3_spriteonB4_and000055_0
    );
  U3_spriteonB4_and000055_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N60_pack_1,
      O => U3_N60
    );
  U3_spriteonB4_and000038_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000038_17406,
      O => U3_spriteonB4_and000038_0
    );
  U3_spriteonB4_and000038_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000017_pack_1,
      O => U3_spriteonB4_and000017_5285
    );
  N203_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N203,
      O => N203_0
    );
  N203_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000069_pack_1,
      O => U3_spriteonB4_and000069_5106
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X33Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(1),
      ADR2 => VCC,
      ADR3 => U3_C1(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X33Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(0),
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X33Y33"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => U3_C1(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X33Y33"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U3_C1(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X33Y34"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U3_C1(4),
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y34"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_C1(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X33Y35"
    )
    port map (
      ADR0 => U3_Madd_spriteon1_addsub0001_lut_7_0,
      ADR1 => U2_hcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X25Y37"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => U3_C2(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X25Y38"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U3_C2(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X25Y38"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U3_C2(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X25Y39"
    )
    port map (
      ADR0 => U3_spriteon2_addsub0000_5_0,
      ADR1 => U3_C2(4),
      ADR2 => U2_hcs(5),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X25Y39"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_spriteon2f_add0002_4_0,
      ADR2 => U2_hcs(4),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X25Y40"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U3_N16,
      ADR2 => U3_C2(6),
      ADR3 => U2_hcs(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"5A69",
      LOC => "SLICE_X25Y40"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(4),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X25Y41"
    )
    port map (
      ADR0 => U3_spriteon2_addsub0000_9_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(9),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X25Y41"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U3_spriteon2_addsub0000_8_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(8)
    );
  U3_Mcount_C1_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y40"
    )
    port map (
      ADR0 => U3_C1(1),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(1)
    );
  U3_C1_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y40",
      INIT => '0'
    )
    port map (
      I => U3_C1_0_DYMUX_5624,
      CE => U3_C1_0_CEINV_5608,
      CLK => U3_C1_0_CLKINV_5609,
      SET => GND,
      RST => GND,
      O => U3_C1(1)
    );
  U3_Mcount_C1_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X33Y40"
    )
    port map (
      ADR0 => U3_C1(0),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(0)
    );
  U3_C1_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y41",
      INIT => '1'
    )
    port map (
      I => U3_C1_2_DXMUX_5696,
      CE => U3_C1_2_CEINV_5658,
      CLK => U3_C1_2_CLKINV_5659,
      SET => GND,
      RST => GND,
      O => U3_C1(2)
    );
  U3_Mcount_C1_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y42"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(5)
    );
  U3_C1_5 : X_FF
    generic map(
      LOC => "SLICE_X33Y42",
      INIT => '0'
    )
    port map (
      I => U3_C1_4_DYMUX_5732,
      CE => U3_C1_4_CEINV_5711,
      CLK => U3_C1_4_CLKINV_5712,
      SET => GND,
      RST => GND,
      O => U3_C1(5)
    );
  U3_Mcount_C1_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y42"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(4)
    );
  U3_C1_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y42",
      INIT => '1'
    )
    port map (
      I => U3_C1_4_DXMUX_5749,
      CE => U3_C1_4_CEINV_5711,
      CLK => U3_C1_4_CLKINV_5712,
      SET => GND,
      RST => GND,
      O => U3_C1(4)
    );
  U3_Mcount_C1_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X33Y43"
    )
    port map (
      ADR0 => U3_C1(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4597,
      O => U3_Mcount_C1_lut(7)
    );
  U3_C1_7 : X_FF
    generic map(
      LOC => "SLICE_X33Y43",
      INIT => '0'
    )
    port map (
      I => U3_C1_6_DYMUX_5785,
      CE => U3_C1_6_CEINV_5764,
      CLK => U3_C1_6_CLKINV_5765,
      SET => GND,
      RST => GND,
      O => U3_C1(7)
    );
  U3_Mcount_C1_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X33Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(6),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4597,
      O => U3_Mcount_C1_lut(6)
    );
  U3_C1_6 : X_FF
    generic map(
      LOC => "SLICE_X33Y43",
      INIT => '1'
    )
    port map (
      I => U3_C1_6_DXMUX_5802,
      CE => U3_C1_6_CEINV_5764,
      CLK => U3_C1_6_CLKINV_5765,
      SET => GND,
      RST => GND,
      O => U3_C1(6)
    );
  U3_Mcount_C1_lut_9_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X33Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  U3_C1_9 : X_FF
    generic map(
      LOC => "SLICE_X33Y44",
      INIT => '0'
    )
    port map (
      I => U3_C1_8_DYMUX_5829,
      CE => U3_C1_8_CEINV_5816,
      CLK => U3_C1_8_CLKINV_5817,
      SET => GND,
      RST => GND,
      O => U3_C1(9)
    );
  U3_Mcount_C1_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X33Y44"
    )
    port map (
      ADR0 => U3_C1(8),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(8)
    );
  U3_C2_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y43",
      INIT => '0'
    )
    port map (
      I => U3_C2_2_DYMUX_5933,
      CE => U3_C2_2_CEINV_5912,
      CLK => U3_C2_2_CLKINV_5913,
      SET => GND,
      RST => GND,
      O => U3_C2(3)
    );
  U3_Mcount_C2_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y43"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(2)
    );
  U3_C2_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y43",
      INIT => '1'
    )
    port map (
      I => U3_C2_2_DXMUX_5950,
      CE => U3_C2_2_CEINV_5912,
      CLK => U3_C2_2_CLKINV_5913,
      SET => GND,
      RST => GND,
      O => U3_C2(2)
    );
  U3_Mcount_C2_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y44"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(5)
    );
  U3_C2_5 : X_FF
    generic map(
      LOC => "SLICE_X29Y44",
      INIT => '1'
    )
    port map (
      I => U3_C2_4_DYMUX_5986,
      CE => U3_C2_4_CEINV_5965,
      CLK => U3_C2_4_CLKINV_5966,
      SET => GND,
      RST => GND,
      O => U3_C2(5)
    );
  U3_Mcount_C2_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y44"
    )
    port map (
      ADR0 => nes_left_reg_4597,
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(4)
    );
  U3_C2_4 : X_FF
    generic map(
      LOC => "SLICE_X29Y44",
      INIT => '1'
    )
    port map (
      I => U3_C2_4_DXMUX_6003,
      CE => U3_C2_4_CEINV_5965,
      CLK => U3_C2_4_CLKINV_5966,
      SET => GND,
      RST => GND,
      O => U3_C2(4)
    );
  U3_Mcount_C2_lut_7_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y45"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => nes_left_reg_4597,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(7)
    );
  U3_C2_7 : X_FF
    generic map(
      LOC => "SLICE_X29Y45",
      INIT => '1'
    )
    port map (
      I => U3_C2_6_DYMUX_6039,
      CE => U3_C2_6_CEINV_6018,
      CLK => U3_C2_6_CLKINV_6019,
      SET => GND,
      RST => GND,
      O => U3_C2(7)
    );
  U3_Mcount_C2_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(6),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4597,
      O => U3_Mcount_C2_lut(6)
    );
  U3_C2_6 : X_FF
    generic map(
      LOC => "SLICE_X29Y45",
      INIT => '1'
    )
    port map (
      I => U3_C2_6_DXMUX_6056,
      CE => U3_C2_6_CEINV_6018,
      CLK => U3_C2_6_CLKINV_6019,
      SET => GND,
      RST => GND,
      O => U3_C2(6)
    );
  U3_Mcount_C2_lut_9_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X29Y46"
    )
    port map (
      ADR0 => U3_C2(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4597,
      O => U3_Mcount_C2_lut(9)
    );
  U3_C2_9 : X_FF
    generic map(
      LOC => "SLICE_X29Y46",
      INIT => '0'
    )
    port map (
      I => U3_C2_8_DYMUX_6083,
      CE => U3_C2_8_CEINV_6070,
      CLK => U3_C2_8_CLKINV_6071,
      SET => GND,
      RST => GND,
      O => U3_C2(9)
    );
  U3_Mcount_C2_lut_8_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(8),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4597,
      O => U3_Mcount_C2_lut(8)
    );
  U3_C2_8 : X_FF
    generic map(
      LOC => "SLICE_X29Y46",
      INIT => '1'
    )
    port map (
      I => U3_C2_8_DXMUX_6101,
      CE => U3_C2_8_CEINV_6070,
      CLK => U3_C2_8_CLKINV_6071,
      SET => GND,
      RST => GND,
      O => U3_C2(8)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X23Y39"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => U3_C2(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X23Y39"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X23Y40"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => U3_C2(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X23Y40"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X23Y41"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X23Y41"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U2_hcs(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X23Y42"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U3_Madd_spriteon2_addsub0000_lut_7_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6A95",
      LOC => "SLICE_X23Y42"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(4),
      ADR3 => U3_C2(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9969",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_C2(9),
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => U3_C2(8),
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(8)
    );
  U2_Mcount_vcs_lut_0_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X27Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  U2_vcs_9_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X27Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vcs_9_rt_6422
    );
  U3_Msub_xpix1_Madd_lut_1_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X35Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(1),
      ADR2 => VCC,
      ADR3 => U3_C1(1),
      O => U3_Msub_xpix1_Madd_lut(1)
    );
  U3_Msub_xpix1_Madd_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X35Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(0),
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Msub_xpix1_Madd_lut(0)
    );
  U3_Msub_xpix1_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X35Y33"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => U3_C1(3),
      ADR3 => VCC,
      O => U3_Msub_xpix1_Madd_lut(3)
    );
  U3_Msub_xpix1_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X35Y33"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U3_C1(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix1_Madd_lut(2)
    );
  U3_Madd_spriteon1_addsub0001_lut_8_11 : X_LUT4
    generic map(
      INIT => X"007F",
      LOC => "SLICE_X35Y34"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => U3_C1(4),
      ADR2 => U3_C1(6),
      ADR3 => U3_C1(7),
      O => U3_Madd_spriteon1_addsub0001_lut_8_bdd0
    );
  U3_Msub_xpix1_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X35Y34"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_C1(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix1_Madd_lut(4)
    );
  x7_clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_0_DYMUX_6568,
      CE => VCC,
      CLK => x7_clkdiv_0_CLKINV_6551,
      SET => GND,
      RST => x7_clkdiv_0_SRINV_6552,
      O => x7_clkdiv(1)
    );
  x7_Mcount_clkdiv_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X55Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(0),
      O => x7_Mcount_clkdiv_lut(0)
    );
  x7_clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_0_DXMUX_6590,
      CE => VCC,
      CLK => x7_clkdiv_0_CLKINV_6551,
      SET => GND,
      RST => x7_clkdiv_0_SRINV_6552,
      O => x7_clkdiv(0)
    );
  x7_clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y72",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_2_DYMUX_6627,
      CE => VCC,
      CLK => x7_clkdiv_2_CLKINV_6605,
      SET => GND,
      RST => x7_clkdiv_2_SRINV_6606,
      O => x7_clkdiv(3)
    );
  x7_clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y72",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_2_DXMUX_6646,
      CE => VCC,
      CLK => x7_clkdiv_2_CLKINV_6605,
      SET => GND,
      RST => x7_clkdiv_2_SRINV_6606,
      O => x7_clkdiv(2)
    );
  x7_clkdiv_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_4_DYMUX_6683,
      CE => VCC,
      CLK => x7_clkdiv_4_CLKINV_6661,
      SET => GND,
      RST => x7_clkdiv_4_SRINV_6662,
      O => x7_clkdiv(5)
    );
  x7_clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_4_DXMUX_6702,
      CE => VCC,
      CLK => x7_clkdiv_4_CLKINV_6661,
      SET => GND,
      RST => x7_clkdiv_4_SRINV_6662,
      O => x7_clkdiv(4)
    );
  x7_clkdiv_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y74",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_6_DYMUX_6739,
      CE => VCC,
      CLK => x7_clkdiv_6_CLKINV_6717,
      SET => GND,
      RST => x7_clkdiv_6_SRINV_6718,
      O => x7_clkdiv(7)
    );
  x7_clkdiv_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y74",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_6_DXMUX_6758,
      CE => VCC,
      CLK => x7_clkdiv_6_CLKINV_6717,
      SET => GND,
      RST => x7_clkdiv_6_SRINV_6718,
      O => x7_clkdiv(6)
    );
  x7_clkdiv_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y75",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_8_DYMUX_6795,
      CE => VCC,
      CLK => x7_clkdiv_8_CLKINV_6773,
      SET => GND,
      RST => x7_clkdiv_8_SRINV_6774,
      O => x7_clkdiv(9)
    );
  x7_clkdiv_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y75",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_8_DXMUX_6814,
      CE => VCC,
      CLK => x7_clkdiv_8_CLKINV_6773,
      SET => GND,
      RST => x7_clkdiv_8_SRINV_6774,
      O => x7_clkdiv(8)
    );
  x7_clkdiv_11 : X_FF
    generic map(
      LOC => "SLICE_X55Y76",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_10_DYMUX_6851,
      CE => VCC,
      CLK => x7_clkdiv_10_CLKINV_6829,
      SET => GND,
      RST => x7_clkdiv_10_SRINV_6830,
      O => x7_clkdiv(11)
    );
  x7_clkdiv_10 : X_FF
    generic map(
      LOC => "SLICE_X55Y76",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_10_DXMUX_6870,
      CE => VCC,
      CLK => x7_clkdiv_10_CLKINV_6829,
      SET => GND,
      RST => x7_clkdiv_10_SRINV_6830,
      O => x7_clkdiv(10)
    );
  x7_clkdiv_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_12_DYMUX_6907,
      CE => VCC,
      CLK => x7_clkdiv_12_CLKINV_6885,
      SET => GND,
      RST => x7_clkdiv_12_SRINV_6886,
      O => x7_clkdiv(13)
    );
  x7_clkdiv_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_12_DXMUX_6926,
      CE => VCC,
      CLK => x7_clkdiv_12_CLKINV_6885,
      SET => GND,
      RST => x7_clkdiv_12_SRINV_6886,
      O => x7_clkdiv(12)
    );
  x7_clkdiv_15 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_14_DYMUX_6963,
      CE => VCC,
      CLK => x7_clkdiv_14_CLKINV_6941,
      SET => GND,
      RST => x7_clkdiv_14_SRINV_6942,
      O => x7_clkdiv(15)
    );
  x7_clkdiv_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_14_DXMUX_6982,
      CE => VCC,
      CLK => x7_clkdiv_14_CLKINV_6941,
      SET => GND,
      RST => x7_clkdiv_14_SRINV_6942,
      O => x7_clkdiv(14)
    );
  x7_clkdiv_17 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_16_DYMUX_7019,
      CE => VCC,
      CLK => x7_clkdiv_16_CLKINV_6997,
      SET => GND,
      RST => x7_clkdiv_16_SRINV_6998,
      O => x7_clkdiv(17)
    );
  x7_clkdiv_16 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_16_DXMUX_7038,
      CE => VCC,
      CLK => x7_clkdiv_16_CLKINV_6997,
      SET => GND,
      RST => x7_clkdiv_16_SRINV_6998,
      O => x7_clkdiv(16)
    );
  x7_clkdiv_19_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => x7_clkdiv(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_19_rt_7061
    );
  x7_clkdiv_19 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_18_DYMUX_7066,
      CE => VCC,
      CLK => x7_clkdiv_18_CLKINV_7052,
      SET => GND,
      RST => x7_clkdiv_18_SRINV_7053,
      O => x7_clkdiv(19)
    );
  x7_clkdiv_18 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_18_DXMUX_7087,
      CE => VCC,
      CLK => x7_clkdiv_18_CLKINV_7052,
      SET => GND,
      RST => x7_clkdiv_18_SRINV_7053,
      O => x7_clkdiv(18)
    );
  U3_Msub_xpix2_Madd_lut_1_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X37Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(1),
      ADR2 => U3_C2(1),
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(1)
    );
  U3_Msub_xpix2_Madd_lut_0_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X37Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(0),
      ADR2 => U3_C2(0),
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(0)
    );
  U3_Msub_xpix2_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(3),
      O => U3_Msub_xpix2_Madd_lut(3)
    );
  U3_Msub_xpix2_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => VCC,
      ADR2 => U3_C2(2),
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(2)
    );
  U3_Madd_spriteon2f_add0002_xor_4_11_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteon2f_add0002(4)
    );
  U3_Msub_xpix2_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U3_Msub_xpix2_Madd_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X27Y42"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => VCC,
      ADR2 => U2_hcs(1),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X27Y42"
    )
    port map (
      ADR0 => U3_C2(0),
      ADR1 => U2_hcs(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X27Y43"
    )
    port map (
      ADR0 => U3_C2(3),
      ADR1 => VCC,
      ADR2 => U2_hcs(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X27Y43"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => VCC,
      ADR2 => U2_hcs(2),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"5AA5",
      LOC => "SLICE_X27Y44"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_Madd_spriteon2_addsub0000_cy_5_0,
      ADR2 => U2_hcs(5),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X27Y44"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_spriteon2f_add0002_4_0,
      ADR2 => U2_hcs(4),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X27Y45"
    )
    port map (
      ADR0 => U3_Madd_spriteon2_addsub0000_lut_7_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6C93",
      LOC => "SLICE_X27Y45"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(6),
      ADR2 => U3_C2(5),
      ADR3 => U2_hcs(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9969",
      LOC => "SLICE_X27Y46"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_C2(9),
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X27Y46"
    )
    port map (
      ADR0 => U3_Madd_spriteon2_addsub0000_lut_8_0,
      ADR1 => U3_C2(8),
      ADR2 => U2_hcs(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => U3_C1(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(0),
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => U3_C1(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U3_C1(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U2_hcs(5),
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_C1(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U3_C1(7),
      ADR2 => U3_N15,
      ADR3 => U3_C1(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6669",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => U2_hcs(6),
      ADR2 => U3_C1(5),
      ADR3 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X29Y36"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_spriteon1_addsub0001_9_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X29Y36"
    )
    port map (
      ADR0 => U3_spriteon1_addsub0001_8_0,
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X27Y37"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => U2_hcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X27Y37"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X27Y38"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X27Y38"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U3_C2(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X27Y39"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U3_C2(4),
      ADR2 => U3_C2(5),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X27Y39"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X27Y40"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U2_hcs(7),
      ADR2 => U3_N16,
      ADR3 => U3_C2(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6669",
      LOC => "SLICE_X27Y40"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C2(6),
      ADR2 => U3_C2(5),
      ADR3 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X27Y41"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_spriteon2_addsub0000_9_0,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X27Y41"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_spriteon2_addsub0000_8_0,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(8)
    );
  nes_Madd_scalar_next_addsub0000_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y18"
    )
    port map (
      ADR0 => nes_scalar_reg(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Madd_scalar_next_addsub0000_lut(0)
    );
  nes_scalar_reg_9_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y22"
    )
    port map (
      ADR0 => nes_scalar_reg(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_reg_9_rt_7824
    );
  U2_Mcount_hcs_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X27Y27"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_hcs_lut(0)
    );
  U2_hcs_9_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X27Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs(9),
      ADR3 => VCC,
      O => U2_hcs_9_rt_8005
    );
  nes_Mcount_counter_reg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_lut(0)
    );
  nes_counter_reg_9_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => nes_counter_reg(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_counter_reg_9_rt_8186
    );
  U3_q_1 : X_FF
    generic map(
      LOC => "SLICE_X43Y81",
      INIT => '0'
    )
    port map (
      I => U3_Q_0_DYMUX_8230,
      CE => VCC,
      CLK => U3_Q_0_CLKINV_8213,
      SET => GND,
      RST => U3_Q_0_SRINV_8214,
      O => U3_Q_1_4774
    );
  U3_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X43Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_0_4773,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_q_lut(0)
    );
  U3_q_0 : X_FF
    generic map(
      LOC => "SLICE_X43Y81",
      INIT => '0'
    )
    port map (
      I => U3_Q_0_DXMUX_8252,
      CE => VCC,
      CLK => U3_Q_0_CLKINV_8213,
      SET => GND,
      RST => U3_Q_0_SRINV_8214,
      O => U3_Q_0_4773
    );
  U3_q_3 : X_FF
    generic map(
      LOC => "SLICE_X43Y82",
      INIT => '0'
    )
    port map (
      I => U3_Q_2_DYMUX_8289,
      CE => VCC,
      CLK => U3_Q_2_CLKINV_8267,
      SET => GND,
      RST => U3_Q_2_SRINV_8268,
      O => U3_Q_3_4777
    );
  U3_q_2 : X_FF
    generic map(
      LOC => "SLICE_X43Y82",
      INIT => '0'
    )
    port map (
      I => U3_Q_2_DXMUX_8308,
      CE => VCC,
      CLK => U3_Q_2_CLKINV_8267,
      SET => GND,
      RST => U3_Q_2_SRINV_8268,
      O => U3_Q_2_4776
    );
  U3_q_5 : X_FF
    generic map(
      LOC => "SLICE_X43Y83",
      INIT => '0'
    )
    port map (
      I => U3_Q_4_DYMUX_8345,
      CE => VCC,
      CLK => U3_Q_4_CLKINV_8323,
      SET => GND,
      RST => U3_Q_4_SRINV_8324,
      O => U3_Q_5_4780
    );
  U3_q_4 : X_FF
    generic map(
      LOC => "SLICE_X43Y83",
      INIT => '0'
    )
    port map (
      I => U3_Q_4_DXMUX_8364,
      CE => VCC,
      CLK => U3_Q_4_CLKINV_8323,
      SET => GND,
      RST => U3_Q_4_SRINV_8324,
      O => U3_Q_4_4779
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_4652
    );
  x7_Mmux_digit_41 : X_LUT4
    generic map(
      INIT => X"1414",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => x7_clkdiv(18),
      ADR1 => who_present_state_FSM_FFd2_5012,
      ADR2 => who_present_state_FSM_FFd1_5011,
      ADR3 => VCC,
      O => x7_Mmux_digit_41_9986
    );
  x7_Mmux_digit_42 : X_LUT4
    generic map(
      INIT => X"0808",
      LOC => "SLICE_X65Y66"
    )
    port map (
      ADR0 => who_present_state_FSM_FFd2_5012,
      ADR1 => who_present_state_FSM_FFd1_5011,
      ADR2 => x7_clkdiv(18),
      ADR3 => VCC,
      O => x7_Mmux_digit_42_10011
    );
  U3_Mmux_M2_mux0000_82_SW01 : X_LUT4
    generic map(
      INIT => X"45A6",
      LOC => "SLICE_X42Y45"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => U3_Mmux_M2_mux0000_82_SW0
    );
  M1_12_bdd0_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X42Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => M1_12_bdd0,
      ADR3 => VCC,
      O => M1_12_bdd0_rt_10047
    );
  U3_Mmux_M1_mux0000_92_SW0_F : X_LUT4
    generic map(
      INIT => X"ABB6",
      LOC => "SLICE_X41Y27"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(2),
      O => N451
    );
  U3_Mmux_M1_mux0000_92_SW0_G : X_LUT4
    generic map(
      INIT => X"AA8D",
      LOC => "SLICE_X41Y27"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(2),
      O => N452
    );
  U3_Mmux_M1_mux0000_85_SW0_F : X_LUT4
    generic map(
      INIT => X"B4FA",
      LOC => "SLICE_X40Y27"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U3_xpix1(0),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N455
    );
  U3_Mmux_M1_mux0000_85_SW0_G : X_LUT4
    generic map(
      INIT => X"F1F1",
      LOC => "SLICE_X40Y27"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => VCC,
      O => N456
    );
  M1a_27_143_F : X_LUT4
    generic map(
      INIT => X"D580",
      LOC => "SLICE_X45Y34"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1a_27_123_0,
      ADR2 => M1_10_bdd5_0,
      ADR3 => M1a_27_83,
      O => N361
    );
  M1a_27_143_G : X_LUT4
    generic map(
      INIT => X"AAFC",
      LOC => "SLICE_X45Y34"
    )
    port map (
      ADR0 => M1a_27_123_0,
      ADR1 => M1_27_bdd0_0,
      ADR2 => M1a_27_83,
      ADR3 => rom1_addr(4),
      O => N362
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"431D",
      LOC => "SLICE_X41Y37"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N429
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"C318",
      LOC => "SLICE_X41Y37"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => N430
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : X_LUT4
    generic map(
      INIT => X"DD98",
      LOC => "SLICE_X40Y37"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(0),
      O => N453
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : X_LUT4
    generic map(
      INIT => X"F6EF",
      LOC => "SLICE_X40Y37"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(0),
      O => N454
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : X_LUT4
    generic map(
      INIT => X"DAC9",
      LOC => "SLICE_X38Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(0),
      O => N483
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : X_LUT4
    generic map(
      INIT => X"7776",
      LOC => "SLICE_X38Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(0),
      O => N484
    );
  U3_Mmux_M1a_mux0000_85_SW0_F : X_LUT4
    generic map(
      INIT => X"F905",
      LOC => "SLICE_X39Y32"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U3_xpix1(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N471
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : X_LUT4
    generic map(
      INIT => X"3E3E",
      LOC => "SLICE_X39Y32"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => N472
    );
  M1a_11_f5_F : X_LUT4
    generic map(
      INIT => X"17DC",
      LOC => "SLICE_X39Y35"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N489
    );
  M1a_11_f5_G : X_LUT4
    generic map(
      INIT => X"093F",
      LOC => "SLICE_X39Y35"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N490
    );
  M2a_22_2 : X_LUT4
    generic map(
      INIT => X"13A8",
      LOC => "SLICE_X48Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(3),
      ADR2 => rom1_addr(4),
      ADR3 => rom1_addr(2),
      O => M2a_22_2_10390
    );
  M2a_22_1 : X_LUT4
    generic map(
      INIT => X"3E0C",
      LOC => "SLICE_X48Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(3),
      ADR2 => rom1_addr(4),
      ADR3 => rom1_addr(2),
      O => M2a_22_1_10397
    );
  M1_8_F : X_LUT4
    generic map(
      INIT => X"7326",
      LOC => "SLICE_X38Y28"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N373
    );
  M1_8_G : X_LUT4
    generic map(
      INIT => X"553A",
      LOC => "SLICE_X38Y28"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N374
    );
  M1_30_116_F : X_LUT4
    generic map(
      INIT => X"040E",
      LOC => "SLICE_X45Y33"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => N331_0,
      ADR2 => rom1_addr(4),
      ADR3 => N315_0,
      O => N439
    );
  M1_30_116_G : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X45Y33"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1_22_bdd12,
      ADR2 => rom1_addr(4),
      ADR3 => U2_vcs(0),
      O => N440
    );
  M1_25_141_F : X_LUT4
    generic map(
      INIT => X"5F00",
      LOC => "SLICE_X43Y33"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => VCC,
      ADR2 => M1_25_bdd1_0,
      ADR3 => M1_25_77_0,
      O => N459
    );
  M1_25_141_G : X_LUT4
    generic map(
      INIT => X"8E72",
      LOC => "SLICE_X43Y33"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N460
    );
  M1_26_176_F : X_LUT4
    generic map(
      INIT => X"7444",
      LOC => "SLICE_X46Y30"
    )
    port map (
      ADR0 => M1_26_bdd0,
      ADR1 => rom1_addr(3),
      ADR2 => M1_26_58_0,
      ADR3 => M1_26_30_0,
      O => N435
    );
  M1_26_176_G : X_LUT4
    generic map(
      INIT => X"D20A",
      LOC => "SLICE_X46Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N436
    );
  M1_27_231_F : X_LUT4
    generic map(
      INIT => X"0AAA",
      LOC => "SLICE_X44Y34"
    )
    port map (
      ADR0 => M1_27_127_0,
      ADR1 => VCC,
      ADR2 => M1_27_bdd0_0,
      ADR3 => rom1_addr(3),
      O => N433
    );
  M1_27_231_G : X_LUT4
    generic map(
      INIT => X"4632",
      LOC => "SLICE_X44Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(2),
      O => N434
    );
  M1_28_122_F : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X43Y31"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1_28_2_0,
      ADR2 => M1_22_bdd4,
      ADR3 => M1_28_74_0,
      O => N401
    );
  M1_28_122_G : X_LUT4
    generic map(
      INIT => X"CD18",
      LOC => "SLICE_X43Y31"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(1),
      O => N402
    );
  M2_1_1172 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X45Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(4),
      ADR3 => M2_1_67,
      O => M2_1_1171_10715
    );
  M2_1_1171 : X_LUT4
    generic map(
      INIT => X"0081",
      LOC => "SLICE_X45Y51"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => M2_1_bdd1_0,
      O => M2_1_117
    );
  M2_21_f5_F : X_LUT4
    generic map(
      INIT => X"388A",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N421
    );
  M2_21_f5_G : X_LUT4
    generic map(
      INIT => X"14E0",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N422
    );
  M2_22_f5_F : X_LUT4
    generic map(
      INIT => X"483A",
      LOC => "SLICE_X41Y51"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N501
    );
  M2_22_f5_G : X_LUT4
    generic map(
      INIT => X"4869",
      LOC => "SLICE_X41Y51"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N502
    );
  M2_28_2 : X_LUT4
    generic map(
      INIT => X"5876",
      LOC => "SLICE_X42Y47"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => rom1_addr(2),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(0),
      O => M2_28_2_10790
    );
  M2_28_1 : X_LUT4
    generic map(
      INIT => X"70E0",
      LOC => "SLICE_X42Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => rom1_addr(3),
      ADR3 => rom1_addr(4),
      O => M2_28_1_10797
    );
  N113_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X48Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N113,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N113_rt_10815
    );
  M2_3_2001 : X_LUT4
    generic map(
      INIT => X"CD42",
      LOC => "SLICE_X48Y49"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_3_200
    );
  M1_18_F : X_LUT4
    generic map(
      INIT => X"4861",
      LOC => "SLICE_X41Y26"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N407
    );
  M1_18_G : X_LUT4
    generic map(
      INIT => X"2862",
      LOC => "SLICE_X41Y26"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N408
    );
  M2_11_F : X_LUT4
    generic map(
      INIT => X"30B8",
      LOC => "SLICE_X42Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N381
    );
  M2_11_G : X_LUT4
    generic map(
      INIT => X"14F3",
      LOC => "SLICE_X42Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N382
    );
  M1_2_1_F : X_LUT4
    generic map(
      INIT => X"2FA8",
      LOC => "SLICE_X43Y28"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N449
    );
  M1_2_1_G : X_LUT4
    generic map(
      INIT => X"17A0",
      LOC => "SLICE_X43Y28"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N450
    );
  M2a_6_102 : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M2a_6_bdd1_0,
      ADR3 => M2_6_bdd1_0,
      O => M2a_6_102_11065
    );
  M2a_6_101 : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M2a_6_bdd1_0,
      ADR3 => M2_6_bdd1_0,
      O => M2a_6_101_11072
    );
  M2_23_F : X_LUT4
    generic map(
      INIT => X"A9EA",
      LOC => "SLICE_X40Y46"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N363
    );
  M2_23_G : X_LUT4
    generic map(
      INIT => X"0477",
      LOC => "SLICE_X40Y46"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N364
    );
  M2_6_1692 : X_LUT4
    generic map(
      INIT => X"BB3F",
      LOC => "SLICE_X46Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => rom1_addr(4),
      ADR2 => M2_4_bdd0_0,
      ADR3 => U2_vcs(1),
      O => M2_6_1692_11115
    );
  M2_6_1691 : X_LUT4
    generic map(
      INIT => X"773F",
      LOC => "SLICE_X46Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(4),
      ADR2 => M2_4_bdd0_0,
      ADR3 => U2_vcs(1),
      O => M2_6_1691_11122
    );
  U3_spriteonB5_and000091 : X_LUT4
    generic map(
      INIT => X"A080",
      LOC => "SLICE_X22Y21"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => U3_spriteonB5_and000091_11147
    );
  M1a_2_F : X_LUT4
    generic map(
      INIT => X"3878",
      LOC => "SLICE_X40Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N457
    );
  M1a_2_G : X_LUT4
    generic map(
      INIT => X"0810",
      LOC => "SLICE_X40Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N458
    );
  U3_C1_not000152_SW1_F : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X32Y40"
    )
    port map (
      ADR0 => U3_C1(1),
      ADR1 => U3_C1(0),
      ADR2 => U3_C1(6),
      ADR3 => U3_C1(5),
      O => N111
    );
  U3_C1_not000152_SW1_G : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X32Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(6),
      ADR2 => VCC,
      ADR3 => U3_C1(5),
      O => N112
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"A5B1",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N389
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"DF5A",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N390
    );
  M1a_18_31_F : X_LUT4
    generic map(
      INIT => X"17B6",
      LOC => "SLICE_X43Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N469
    );
  M1a_18_31_G : X_LUT4
    generic map(
      INIT => X"1277",
      LOC => "SLICE_X43Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N470
    );
  M1a_19_32_F : X_LUT4
    generic map(
      INIT => X"172A",
      LOC => "SLICE_X42Y32"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N443
    );
  M1a_19_32_G : X_LUT4
    generic map(
      INIT => X"055D",
      LOC => "SLICE_X42Y32"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N444
    );
  M1a_27_83_F : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X48Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => M1a_27_50_0,
      ADR3 => U2_vcs(3),
      O => N371
    );
  M1a_27_83_G : X_LUT4
    generic map(
      INIT => X"0802",
      LOC => "SLICE_X48Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => M1_22_bdd4,
      ADR3 => U2_vcs(3),
      O => N372
    );
  M2a_10_54_F : X_LUT4
    generic map(
      INIT => X"4474",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => M1a_12_bdd0_0,
      ADR1 => U2_vcs(4),
      ADR2 => N309_0,
      ADR3 => U2_vcs(3),
      O => N387
    );
  M2a_10_54_G : X_LUT4
    generic map(
      INIT => X"1774",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => M1a_12_bdd0_0,
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N388
    );
  M2a_11_48_F : X_LUT4
    generic map(
      INIT => X"2070",
      LOC => "SLICE_X45Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N409
    );
  M2a_11_48_G : X_LUT4
    generic map(
      INIT => X"1B13",
      LOC => "SLICE_X45Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N410
    );
  M2a_12_42_F : X_LUT4
    generic map(
      INIT => X"1FBC",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N379
    );
  M2a_12_42_G : X_LUT4
    generic map(
      INIT => X"011C",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N380
    );
  M2a_20_39_F : X_LUT4
    generic map(
      INIT => X"1D7C",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N493
    );
  M2a_20_39_G : X_LUT4
    generic map(
      INIT => X"039F",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N494
    );
  M2a_21_29_F : X_LUT4
    generic map(
      INIT => X"153A",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N463
    );
  M2a_21_29_G : X_LUT4
    generic map(
      INIT => X"1D17",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N464
    );
  M2a_28_36_F : X_LUT4
    generic map(
      INIT => X"0688",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N377
    );
  M2a_28_36_G : X_LUT4
    generic map(
      INIT => X"510A",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N378
    );
  M2a_29_69_F : X_LUT4
    generic map(
      INIT => X"80A0",
      LOC => "SLICE_X45Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N419
    );
  M2a_29_69_G : X_LUT4
    generic map(
      INIT => X"011F",
      LOC => "SLICE_X45Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N420
    );
  M1_31_25_F : X_LUT4
    generic map(
      INIT => X"022A",
      LOC => "SLICE_X47Y31"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => U2_vcs(0),
      ADR3 => sw_3_IBUF_4994,
      O => N383
    );
  M1_31_25_G : X_LUT4
    generic map(
      INIT => X"1040",
      LOC => "SLICE_X47Y31"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => U2_vcs(0),
      ADR3 => sw_3_IBUF_4994,
      O => N384
    );
  M1_23_35_F : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X46Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_23_14_0,
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => N369
    );
  M1_23_35_G : X_LUT4
    generic map(
      INIT => X"4004",
      LOC => "SLICE_X46Y38"
    )
    port map (
      ADR0 => M1_22_bdd12,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N370
    );
  M1_23_76_F : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr(3),
      ADR2 => M1_23_35,
      ADR3 => M1_23_bdd1_0,
      O => N399
    );
  M1_23_76_G : X_LUT4
    generic map(
      INIT => X"94F4",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => N400
    );
  M1_19_32_F : X_LUT4
    generic map(
      INIT => X"6D04",
      LOC => "SLICE_X42Y28"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N397
    );
  M1_19_32_G : X_LUT4
    generic map(
      INIT => X"6078",
      LOC => "SLICE_X42Y28"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N398
    );
  M1_26_12 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => M1_26_11_11890
    );
  M1_26_11 : X_LUT4
    generic map(
      INIT => X"377F",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(1),
      ADR2 => sw_2_IBUF_4993,
      ADR3 => U2_vcs(0),
      O => M1_26_1
    );
  M2_12_59_F : X_LUT4
    generic map(
      INIT => X"7910",
      LOC => "SLICE_X43Y52"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N499
    );
  M2_12_59_G : X_LUT4
    generic map(
      INIT => X"486C",
      LOC => "SLICE_X43Y52"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N500
    );
  M2_20_59_F : X_LUT4
    generic map(
      INIT => X"2282",
      LOC => "SLICE_X40Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N495
    );
  M2_20_59_G : X_LUT4
    generic map(
      INIT => X"3460",
      LOC => "SLICE_X40Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N496
    );
  M2_13_43_F : X_LUT4
    generic map(
      INIT => X"5821",
      LOC => "SLICE_X41Y50"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N423
    );
  M2_13_43_G : X_LUT4
    generic map(
      INIT => X"4864",
      LOC => "SLICE_X41Y50"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(0),
      O => N424
    );
  M1_29_80_F : X_LUT4
    generic map(
      INIT => X"0511",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_29_bdd5_0,
      ADR2 => M1_22_bdd12,
      ADR3 => U2_vcs(0),
      O => N411
    );
  M1_29_80_G : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => M1_21_bdd5,
      O => N412
    );
  M2_30_72_F : X_LUT4
    generic map(
      INIT => X"8C08",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N481
    );
  M2_30_72_G : X_LUT4
    generic map(
      INIT => X"1557",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N482
    );
  U3_Mmux_M2a_mux0000_71_SW0_F : X_LUT4
    generic map(
      INIT => X"696E",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U3_xpix2(0),
      O => N391
    );
  U3_Mmux_M2a_mux0000_71_SW0_G : X_LUT4
    generic map(
      INIT => X"7C6F",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U3_xpix2(0),
      O => N392
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"9977",
      LOC => "SLICE_X47Y53"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => N497
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"0510",
      LOC => "SLICE_X47Y53"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => N498
    );
  U3_Mmux_M2a_mux0000_82_SW0_F : X_LUT4
    generic map(
      INIT => X"DEAB",
      LOC => "SLICE_X46Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(3),
      O => N427
    );
  U3_Mmux_M2a_mux0000_82_SW0_G : X_LUT4
    generic map(
      INIT => X"7FCC",
      LOC => "SLICE_X46Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(3),
      O => N428
    );
  M2_3_200_SW0_F : X_LUT4
    generic map(
      INIT => X"FF70",
      LOC => "SLICE_X50Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd10,
      ADR2 => M2_3_72_0,
      ADR3 => rom1_addr(3),
      O => N353
    );
  M2_3_200_SW0_G : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X50Y49"
    )
    port map (
      ADR0 => N215_0,
      ADR1 => rom1_addr(3),
      ADR2 => U2_vcs(0),
      ADR3 => M2_3_2_0,
      O => N354
    );
  U3_Mmux_M2_mux0000_8_SW0_F : X_LUT4
    generic map(
      INIT => X"EF1A",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N475
    );
  U3_Mmux_M2_mux0000_8_SW0_G : X_LUT4
    generic map(
      INIT => X"F0F5",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => VCC,
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N476
    );
  M2_8_132 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X47Y52"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M2_0_bdd20,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_8_132_12338
    );
  M2_8_131 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X47Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => M2_8_131_12347
    );
  U3_Mmux_M2_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"BBD8",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(1),
      O => N479
    );
  U3_Mmux_M2_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"4CDD",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(1),
      O => N480
    );
  x7_Mmux_digit_4 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X64Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(18),
      ADR2 => who_present_state_FSM_FFd1_5011,
      ADR3 => VCC,
      O => x7_Mmux_digit_4_12386
    );
  U3_spriteonB2_and000056_SW02 : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X24Y27"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(2),
      ADR3 => U2_hcs(3),
      O => U3_spriteonB2_and000056_SW01_12413
    );
  U3_spriteonB2_and000056_SW01 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X24Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs(4),
      ADR3 => U2_hcs(3),
      O => U3_spriteonB2_and000056_SW0
    );
  M1a_9_33_F : X_LUT4
    generic map(
      INIT => X"560A",
      LOC => "SLICE_X38Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N441
    );
  M1a_9_33_G : X_LUT4
    generic map(
      INIT => X"1716",
      LOC => "SLICE_X38Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N442
    );
  M1a_8_1_F : X_LUT4
    generic map(
      INIT => X"4448",
      LOC => "SLICE_X38Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => N491
    );
  M1a_8_1_G : X_LUT4
    generic map(
      INIT => X"2424",
      LOC => "SLICE_X38Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => N492
    );
  U3_red_2_112 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X25Y21"
    )
    port map (
      ADR0 => U3_spriteonB1_0,
      ADR1 => U3_spriteonB3_0,
      ADR2 => U3_spriteonB2_0,
      ADR3 => VCC,
      O => U3_red_2_111_12640
    );
  U3_red_2_111 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X25Y21"
    )
    port map (
      ADR0 => U3_spriteonB1_0,
      ADR1 => U3_spriteonB3_0,
      ADR2 => U3_spriteonB2_0,
      ADR3 => U3_spriteonB4_and000038_0,
      O => U3_red_2_11
    );
  nes_a_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X54Y30"
    )
    port map (
      ADR0 => nes_counter_reg(8),
      ADR1 => N2_0,
      ADR2 => nes_counter_reg(9),
      ADR3 => nes_counter_reg(0),
      O => nes_N01_pack_1
    );
  nes_left_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X54Y30"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_N01,
      O => nes_left_reg_cmp_eq0000
    );
  U3_C1_not00014 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X31Y42"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U3_C1(6),
      ADR2 => U3_C1(7),
      ADR3 => U3_C1(5),
      O => U3_C1_not00014_O_pack_1
    );
  U3_C1_not000127 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X31Y42"
    )
    port map (
      ADR0 => U3_C1_not000110_0,
      ADR1 => U3_C1_not00015_0,
      ADR2 => U3_C1_not00014_O,
      ADR3 => nes_left_reg_4597,
      O => U3_C1_not000127_12696
    );
  U3_C1_not000183 : X_LUT4
    generic map(
      INIT => X"53FF",
      LOC => "SLICE_X32Y42"
    )
    port map (
      ADR0 => N109,
      ADR1 => N108_0,
      ADR2 => U3_C1_not000147_0,
      ADR3 => U3_C1(7),
      O => U3_C1_not000183_O_pack_1
    );
  U3_C1_not0001144 : X_LUT4
    generic map(
      INIT => X"5444",
      LOC => "SLICE_X32Y42"
    )
    port map (
      ADR0 => who_present_state_FSM_FFd2_5012,
      ADR1 => U3_C1_not000127_0,
      ADR2 => U3_C1_not0001105_0,
      ADR3 => U3_C1_not000183_O,
      O => U3_C1_not0001
    );
  nes_scalar_next_cmp_eq000030 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X66Y26"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq000021_0,
      ADR1 => nes_scalar_reg(8),
      ADR2 => nes_scalar_next_cmp_eq000010_0,
      ADR3 => nes_scalar_reg(9),
      O => nes_scalar_next_cmp_eq0000_pack_1
    );
  nes_counter_reg_not00011 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X66Y26"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_N11_0,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_counter_reg_not0001
    );
  nes_counter_reg_cmp_eq0000112 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => nes_counter_reg(1),
      ADR1 => nes_counter_reg(7),
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_counter_reg(0),
      O => nes_counter_reg_cmp_eq0000112_pack_1
    );
  nes_counter_reg_cmp_eq0000126 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => nes_counter_reg_cmp_eq0000125_5128,
      ADR1 => VCC,
      ADR2 => nes_counter_reg_cmp_eq0000112_5127,
      ADR3 => VCC,
      O => nes_N11
    );
  U3_C2_not000150 : X_LUT4
    generic map(
      INIT => X"0013",
      LOC => "SLICE_X28Y44"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U3_C2(8),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(7),
      O => U3_C2_not000150_O_pack_1
    );
  U3_C2_not000164 : X_LUT4
    generic map(
      INIT => X"3010",
      LOC => "SLICE_X28Y44"
    )
    port map (
      ADR0 => U3_C2(9),
      ADR1 => nes_left_reg_4597,
      ADR2 => nes_right_reg_5129,
      ADR3 => U3_C2_not000150_O,
      O => U3_C2_not000164_12792
    );
  U3_C2_not000123 : X_LUT4
    generic map(
      INIT => X"FEF0",
      LOC => "SLICE_X28Y42"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2_not00016_0,
      ADR2 => U3_C2(9),
      ADR3 => U3_C2_not000113_0,
      O => U3_C2_not000123_O_pack_1
    );
  U3_C2_not000186 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X28Y42"
    )
    port map (
      ADR0 => who_present_state_FSM_FFd2_5012,
      ADR1 => U3_C2_not000164_0,
      ADR2 => nes_left_reg_4597,
      ADR3 => U3_C2_not000123_O,
      O => U3_C2_not0001
    );
  U3_spriteonB4_cmp_le0000121 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X25Y26"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => VCC,
      ADR2 => U2_hcs(6),
      ADR3 => U2_hcs(5),
      O => U3_N80_pack_1
    );
  U2_hcs_cmp_eq00005 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X25Y26"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => U2_hcs(0),
      ADR2 => U3_N80,
      ADR3 => U2_hcs(9),
      O => U2_hcs_cmp_eq00005_12840
    );
  U2_hcs_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X27Y26"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U2_hcs(8),
      ADR2 => U2_hcs(2),
      ADR3 => U2_hcs(4),
      O => U2_hcs_cmp_eq000010_pack_1
    );
  U2_hcs_cmp_eq0000111 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X27Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs_cmp_eq00005_0,
      ADR2 => U2_hcs_cmp_eq000010_5142,
      ADR3 => VCC,
      O => U2_hcs_cmp_eq0000
    );
  U2_vsenable : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      I => U2_vsenable_DXMUX_12933,
      CE => U2_vsenable_CEINVNOT,
      CLK => U2_vsenable_CLKINV_12916,
      SET => GND,
      RST => GND,
      O => U2_vsenable_5137
    );
  nes_Mcount_counter_reg_eqn_01 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_N11_0,
      ADR2 => nes_Result(0),
      ADR3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_0
    );
  nes_counter_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y28",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DYMUX_12961,
      CE => nes_counter_reg_1_CEINV_12951,
      CLK => nes_counter_reg_1_CLKINV_12952,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_12953,
      O => nes_counter_reg(0)
    );
  nes_Mcount_counter_reg_eqn_11 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_Result(1),
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_N11_0,
      O => nes_Mcount_counter_reg_eqn_1
    );
  nes_counter_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y28",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DXMUX_12976,
      CE => nes_counter_reg_1_CEINV_12951,
      CLK => nes_counter_reg_1_CLKINV_12952,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_12953,
      O => nes_counter_reg(1)
    );
  nes_Mcount_counter_reg_eqn_21 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_N11_0,
      ADR2 => nes_Result(2),
      ADR3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_2
    );
  nes_counter_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DYMUX_13007,
      CE => nes_counter_reg_3_CEINV_12997,
      CLK => nes_counter_reg_3_CLKINV_12998,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_12999,
      O => nes_counter_reg(2)
    );
  nes_Mcount_counter_reg_eqn_31 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => nes_Result(3),
      ADR1 => nes_N11_0,
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_3
    );
  nes_counter_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X67Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DXMUX_13022,
      CE => nes_counter_reg_3_CEINV_12997,
      CLK => nes_counter_reg_3_CLKINV_12998,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_12999,
      O => nes_counter_reg(3)
    );
  nes_Mcount_counter_reg_eqn_41 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_counter_reg(4),
      ADR2 => nes_Result(4),
      ADR3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_4
    );
  nes_counter_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X66Y30",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_5_DYMUX_13053,
      CE => nes_counter_reg_5_CEINV_13043,
      CLK => nes_counter_reg_5_CLKINV_13044,
      SET => GND,
      RST => nes_counter_reg_5_SRINV_13045,
      O => nes_counter_reg(4)
    );
  nes_Mcount_counter_reg_eqn_51 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_Result(5),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_5
    );
  nes_counter_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y30",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_5_DXMUX_13068,
      CE => nes_counter_reg_5_CEINV_13043,
      CLK => nes_counter_reg_5_CLKINV_13044,
      SET => GND,
      RST => nes_counter_reg_5_SRINV_13045,
      O => nes_counter_reg(5)
    );
  nes_Mcount_counter_reg_eqn_61 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_counter_reg(4),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_Result(6),
      O => nes_Mcount_counter_reg_eqn_6
    );
  nes_counter_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y31",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DYMUX_13099,
      CE => nes_counter_reg_7_CEINV_13089,
      CLK => nes_counter_reg_7_CLKINV_13090,
      SET => GND,
      RST => nes_counter_reg_7_SRINV_13091,
      O => nes_counter_reg(6)
    );
  nes_counter_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X66Y32",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DXMUX_13160,
      CE => nes_counter_reg_9_CEINV_13135,
      CLK => nes_counter_reg_9_CLKINV_13136,
      SET => GND,
      RST => nes_counter_reg_9_SRINV_13137,
      O => nes_counter_reg(9)
    );
  U1_Mcount_q_lut_0_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X34Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_Mcount_q_lut_0_0,
      O => U1_Mcount_q_lut_0_rt_13183
    );
  U1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => '0'
    )
    port map (
      I => U1_q_01_DXMUX_13188,
      CE => VCC,
      CLK => U1_q_01_CLKINV_13173,
      SET => GND,
      RST => U1_q_01_FFX_RSTAND_13193,
      O => U1_q_01
    );
  U1_q_01_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U1_q_01_FFX_RSTAND_13193
    );
  U2_Mcount_hcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"3F00",
      LOC => "SLICE_X26Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs_cmp_eq000010_5142,
      ADR2 => U2_hcs_cmp_eq00005_0,
      ADR3 => U2_Result_0_1,
      O => U2_Mcount_hcs_eqn_0
    );
  U2_hcs_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y27",
      INIT => '0'
    )
    port map (
      I => U2_hcs_1_DYMUX_13215,
      CE => VCC,
      CLK => U2_hcs_1_CLKINV_13205,
      SET => GND,
      RST => U2_hcs_1_SRINV_13206,
      O => U2_hcs(0)
    );
  U2_Mcount_hcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"2A2A",
      LOC => "SLICE_X26Y27"
    )
    port map (
      ADR0 => U2_Result_1_1,
      ADR1 => U2_hcs_cmp_eq000010_5142,
      ADR2 => U2_hcs_cmp_eq00005_0,
      ADR3 => VCC,
      O => U2_Mcount_hcs_eqn_1
    );
  U2_hcs_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y27",
      INIT => '0'
    )
    port map (
      I => U2_hcs_1_DXMUX_13230,
      CE => VCC,
      CLK => U2_hcs_1_CLKINV_13205,
      SET => GND,
      RST => U2_hcs_1_SRINV_13206,
      O => U2_hcs(1)
    );
  U2_Mcount_hcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X26Y29"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5142,
      ADR1 => VCC,
      ADR2 => U2_Result_2_1,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_2
    );
  U2_hcs_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      I => U2_hcs_3_DYMUX_13257,
      CE => VCC,
      CLK => U2_hcs_3_CLKINV_13247,
      SET => GND,
      RST => U2_hcs_3_SRINV_13248,
      O => U2_hcs(2)
    );
  U2_Mcount_hcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X26Y29"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5142,
      ADR1 => U2_Result_3_1,
      ADR2 => VCC,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_3
    );
  U2_hcs_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      I => U2_hcs_3_DXMUX_13272,
      CE => VCC,
      CLK => U2_hcs_3_CLKINV_13247,
      SET => GND,
      RST => U2_hcs_3_SRINV_13248,
      O => U2_hcs(3)
    );
  U2_Mcount_hcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5142,
      ADR1 => U2_hcs_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_Result_4_1,
      O => U2_Mcount_hcs_eqn_4
    );
  U2_hcs_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '0'
    )
    port map (
      I => U2_hcs_5_DYMUX_13299,
      CE => VCC,
      CLK => U2_hcs_5_CLKINV_13289,
      SET => GND,
      RST => U2_hcs_5_SRINV_13290,
      O => U2_hcs(4)
    );
  U2_Mcount_hcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => U2_Result_5_1,
      ADR1 => U2_hcs_cmp_eq000010_5142,
      ADR2 => VCC,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_5
    );
  U2_hcs_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '0'
    )
    port map (
      I => U2_hcs_5_DXMUX_13314,
      CE => VCC,
      CLK => U2_hcs_5_CLKINV_13289,
      SET => GND,
      RST => U2_hcs_5_SRINV_13290,
      O => U2_hcs(5)
    );
  U2_Mcount_hcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5142,
      ADR1 => VCC,
      ADR2 => U2_Result_6_1,
      ADR3 => U2_hcs_cmp_eq00005_0,
      O => U2_Mcount_hcs_eqn_6
    );
  U2_hcs_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      I => U2_hcs_7_DYMUX_13341,
      CE => VCC,
      CLK => U2_hcs_7_CLKINV_13331,
      SET => GND,
      RST => U2_hcs_7_SRINV_13332,
      O => U2_hcs(6)
    );
  U2_hcs_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => U2_hcs_9_DXMUX_13398,
      CE => VCC,
      CLK => U2_hcs_9_CLKINV_13373,
      SET => GND,
      RST => U2_hcs_9_SRINV_13374,
      O => U2_hcs(9)
    );
  U2_Mcount_vcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X27Y20"
    )
    port map (
      ADR0 => U2_Result(0),
      ADR1 => U2_vcs_cmp_eq0000_5138,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y20",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DYMUX_13426,
      CE => U2_vcs_1_CEINV_13414,
      CLK => U2_vcs_1_CLKINV_13415,
      SET => GND,
      RST => U2_vcs_1_SRINV_13416,
      O => U2_vcs(0)
    );
  U2_Mcount_vcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X27Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_5138,
      ADR2 => VCC,
      ADR3 => U2_Result(1),
      O => U2_Mcount_vcs_eqn_1
    );
  U2_vcs_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y20",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DXMUX_13443,
      CE => U2_vcs_1_CEINV_13414,
      CLK => U2_vcs_1_CLKINV_13415,
      SET => GND,
      RST => U2_vcs_1_SRINV_13416,
      O => U2_vcs(1)
    );
  U2_Mcount_vcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X26Y22"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5138,
      ADR1 => VCC,
      ADR2 => U2_Result(2),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_vcs_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DYMUX_13472,
      CE => U2_vcs_3_CEINV_13460,
      CLK => U2_vcs_3_CLKINV_13461,
      SET => GND,
      RST => U2_vcs_3_SRINV_13462,
      O => U2_vcs(2)
    );
  U2_Mcount_vcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X26Y22"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5138,
      ADR1 => U2_Result(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_vcs_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DXMUX_13489,
      CE => U2_vcs_3_CEINV_13460,
      CLK => U2_vcs_3_CLKINV_13461,
      SET => GND,
      RST => U2_vcs_3_SRINV_13462,
      O => U2_vcs(3)
    );
  U2_Mcount_vcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X26Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_5138,
      ADR2 => VCC,
      ADR3 => U2_Result(4),
      O => U2_Mcount_vcs_eqn_4
    );
  U2_vcs_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      I => U2_vcs_4_DYMUX_13515,
      CE => U2_vcs_4_CEINV_13503,
      CLK => U2_vcs_4_CLKINV_13504,
      SET => GND,
      RST => U2_vcs_4_FFY_RSTAND_13521,
      O => U2_vcs(4)
    );
  U2_vcs_4_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X26Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4652,
      O => U2_vcs_4_FFY_RSTAND_13521
    );
  U2_Mcount_vcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(6),
      ADR2 => VCC,
      ADR3 => U2_vcs_cmp_eq0000_5138,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_vcs_6 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DYMUX_13544,
      CE => U2_vcs_7_CEINV_13532,
      CLK => U2_vcs_7_CLKINV_13533,
      SET => GND,
      RST => U2_vcs_7_SRINV_13534,
      O => U2_vcs(6)
    );
  U2_Mcount_vcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs_cmp_eq0000_5138,
      ADR3 => U2_Result(7),
      O => U2_Mcount_vcs_eqn_7
    );
  U2_vcs_7 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DXMUX_13561,
      CE => U2_vcs_7_CEINV_13532,
      CLK => U2_vcs_7_CLKINV_13533,
      SET => GND,
      RST => U2_vcs_7_SRINV_13534,
      O => U2_vcs(7)
    );
  U2_Mcount_vcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X26Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs_cmp_eq0000_5138,
      ADR3 => U2_Result(8),
      O => U2_Mcount_vcs_eqn_8
    );
  nes_scalar_next_1_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X66Y19"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => nes_scalar_next_addsub0000(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next(1)
    );
  nes_scalar_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y19",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DXMUX_13650,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_13623,
      SET => GND,
      RST => nes_scalar_reg_1_SRINV_13624,
      O => nes_scalar_reg(1)
    );
  nes_scalar_next_2_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X66Y18"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(2),
      O => nes_scalar_next(2)
    );
  nes_scalar_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y18",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DYMUX_13676,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_13665,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_13666,
      O => nes_scalar_reg(2)
    );
  nes_scalar_next_3_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X66Y18"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(3),
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next(3)
    );
  nes_scalar_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X66Y18",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DXMUX_13692,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_13665,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_13666,
      O => nes_scalar_reg(3)
    );
  nes_scalar_next_4_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X66Y20"
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
      LOC => "SLICE_X66Y20",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DYMUX_13718,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_13707,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_13708,
      O => nes_scalar_reg(4)
    );
  nes_scalar_next_5_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X66Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(5),
      ADR2 => VCC,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(5)
    );
  nes_scalar_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y20",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DXMUX_13734,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_13707,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_13708,
      O => nes_scalar_reg(5)
    );
  nes_scalar_next_6_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_addsub0000(6),
      ADR3 => VCC,
      O => nes_scalar_next(6)
    );
  nes_scalar_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X67Y23",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DYMUX_13760,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_13749,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_13750,
      O => nes_scalar_reg(6)
    );
  nes_scalar_next_7_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(7),
      O => nes_scalar_next(7)
    );
  nes_scalar_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X67Y23",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DXMUX_13776,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_13749,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_13750,
      O => nes_scalar_reg(7)
    );
  nes_scalar_next_8_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X66Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_addsub0000(8),
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(8)
    );
  nes_scalar_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X66Y22",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DYMUX_13802,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_13791,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_13792,
      O => nes_scalar_reg(8)
    );
  nes_scalar_next_9_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X66Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(9),
      ADR2 => VCC,
      ADR3 => nes_scalar_next_cmp_eq0000,
      O => nes_scalar_next(9)
    );
  nes_scalar_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X66Y22",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DXMUX_13818,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_13791,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_13792,
      O => nes_scalar_reg(9)
    );
  U3_blue_and000031 : X_LUT4
    generic map(
      INIT => X"0088",
      LOC => "SLICE_X27Y19"
    )
    port map (
      ADR0 => U3_N35_0,
      ADR1 => U3_spriteon1_cmp_ge0000,
      ADR2 => VCC,
      ADR3 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q,
      O => U3_N81_pack_1
    );
  U3_blue_0_45 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X27Y19"
    )
    port map (
      ADR0 => U3_N85_0,
      ADR1 => U3_M1a_mux0000,
      ADR2 => U3_blue_0_27_0,
      ADR3 => U3_N81,
      O => blue_0_OBUF_13894
    );
  nes_right_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X54Y31"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_N01,
      O => nes_right_reg_cmp_eq0000
    );
  nes_a_reg_cmp_eq00002 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X54Y31"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_counter_reg(3),
      ADR3 => nes_N01,
      O => nes_a_reg_cmp_eq0000
    );
  U3_C1_not0001105 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X32Y43"
    )
    port map (
      ADR0 => nes_left_reg_4597,
      ADR1 => nes_right_reg_5129,
      ADR2 => U3_C1(8),
      ADR3 => U3_C1(9),
      O => U3_C1_not0001105_13933
    );
  U3_C1_not00015 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X32Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C1(8),
      ADR3 => U3_C1(9),
      O => U3_C1_not00015_13942
    );
  U3_blue_and0000211 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X23Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(8),
      ADR2 => VCC,
      ADR3 => U2_vcs(7),
      O => U3_N84
    );
  U3_spriteonB1_cmp_lt0000232 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X23Y22"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(8),
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(1),
      O => U3_spriteonB1_cmp_lt0000232_13966
    );
  M1_24_108_SW0 : X_LUT4
    generic map(
      INIT => X"CEFE",
      LOC => "SLICE_X48Y41"
    )
    port map (
      ADR0 => M1_24_25_0,
      ADR1 => rom1_addr(3),
      ADR2 => U2_vcs(1),
      ADR3 => M1_24_bdd2_0,
      O => N183
    );
  M1_25_77 : X_LUT4
    generic map(
      INIT => X"F4FE",
      LOC => "SLICE_X48Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_25_34_0,
      ADR2 => rom1_addr(3),
      ADR3 => M1_24_bdd2_0,
      O => M1_25_77_13990
    );
  U3_spriteonB5_and000026_SW0 : X_LUT4
    generic map(
      INIT => X"A8A8",
      LOC => "SLICE_X23Y21"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(5),
      ADR2 => U3_spriteonB5_and00009,
      ADR3 => VCC,
      O => N247_pack_1
    );
  U3_spriteonB5_and000026 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X23Y21"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(8),
      ADR2 => U2_vcs(9),
      ADR3 => N247,
      O => U3_spriteonB5_and000026_14014
    );
  U3_blue_1_1 : X_LUT4
    generic map(
      INIT => X"0700",
      LOC => "SLICE_X25Y17"
    )
    port map (
      ADR0 => U3_M1a_mux0000,
      ADR1 => U3_N81,
      ADR2 => U3_spriteonGrnd,
      ADR3 => U3_N85_0,
      O => blue_1_OBUF_14030
    );
  U3_green_1_SW1 : X_LUT4
    generic map(
      INIT => X"FAFF",
      LOC => "SLICE_X25Y17"
    )
    port map (
      ADR0 => U3_N12,
      ADR1 => VCC,
      ADR2 => U3_spriteonGrnd,
      ADR3 => U3_spriteonB5_0,
      O => N255
    );
  U3_blue_0_9 : X_LUT4
    generic map(
      INIT => X"FBBB",
      LOC => "SLICE_X24Y18"
    )
    port map (
      ADR0 => U3_spriteonB3_0,
      ADR1 => U3_spriteonB5_0,
      ADR2 => U3_spriteonB4_and000069_5106,
      ADR3 => U3_spriteonB4_and000038_0,
      O => U3_blue_0_9_pack_1
    );
  U3_blue_0_27 : X_LUT4
    generic map(
      INIT => X"5150",
      LOC => "SLICE_X24Y18"
    )
    port map (
      ADR0 => U3_spriteonGrnd,
      ADR1 => U3_spriteonB2_0,
      ADR2 => U3_spriteonB1_0,
      ADR3 => U3_blue_0_9_5162,
      O => U3_blue_0_27_14062
    );
  U3_spriteon2_addsub0000_5_11 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteon2_addsub0000(5)
    );
  U3_Madd_spriteon2_addsub0000_cy_5_1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_spriteon2_addsub0000_cy(5)
    );
  U3_spriteon2_addsub0000_9_11 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X26Y40"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_N16_pack_1
    );
  U3_spriteon2_addsub0000_8_1 : X_LUT4
    generic map(
      INIT => X"363C",
      LOC => "SLICE_X26Y40"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(8),
      ADR2 => U3_C2(7),
      ADR3 => U3_N16,
      O => U3_spriteon2_addsub0000(8)
    );
  nes_counter_reg_cmp_eq0000125 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => nes_counter_reg(8),
      ADR1 => nes_counter_reg(5),
      ADR2 => nes_counter_reg(6),
      ADR3 => nes_counter_reg(9),
      O => nes_counter_reg_cmp_eq0000125_pack_1
    );
  nes_state_next_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => nes_counter_reg_cmp_eq0000112_5127,
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_counter_reg_cmp_eq0000125_5128,
      ADR3 => nes_counter_reg(4),
      O => ja2_OBUF_14206
    );
  U3_red_0_21 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X27Y17"
    )
    port map (
      ADR0 => vidon_0,
      ADR1 => U3_M1_mux0000,
      ADR2 => U3_M1a_mux0000,
      ADR3 => U3_N81,
      O => U3_N30_pack_1
    );
  U3_green_1_Q : X_LUT4
    generic map(
      INIT => X"FF40",
      LOC => "SLICE_X27Y17"
    )
    port map (
      ADR0 => U3_blue_and0003_0,
      ADR1 => N255_0,
      ADR2 => U3_N36,
      ADR3 => U3_N30,
      O => green_1_OBUF_14230
    );
  U3_spriteonB1_cmp_lt0000250_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X23Y25"
    )
    port map (
      ADR0 => U3_spriteonB1_cmp_lt0000232_0,
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(5),
      O => N201_pack_1
    );
  U3_spriteonB1_cmp_lt0000250 : X_LUT4
    generic map(
      INIT => X"0F07",
      LOC => "SLICE_X23Y25"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(9),
      ADR3 => N201,
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_red_0_17 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => U3_spriteonB2_0,
      ADR1 => U3_spriteonB1_0,
      ADR2 => U3_spriteonGrnd,
      ADR3 => N203_0,
      O => U3_red_0_17_pack_1
    );
  U3_red_0_44 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => U3_N36,
      ADR1 => U3_blue_and0003_0,
      ADR2 => U3_red_0_17_5168,
      ADR3 => U3_N30,
      O => red_0_OBUF_14278
    );
  U3_spriteonGrnd_and000040 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X24Y28"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(0),
      O => U3_spriteonGrnd_and000040_pack_1
    );
  U3_spriteonGrnd_and000058_SW0 : X_LUT4
    generic map(
      INIT => X"EEFE",
      LOC => "SLICE_X24Y28"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(4),
      ADR3 => U3_spriteonGrnd_and000040_5170,
      O => N245
    );
  U3_spriteonGrnd_and000071 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X25Y25"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(0),
      O => U3_spriteonGrnd_and000071_pack_1
    );
  U3_spriteonGrnd_and000084 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X25Y25"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U2_hcs(4),
      ADR2 => U3_spriteonGrnd_and000066_0,
      ADR3 => U3_spriteonGrnd_and000071_5173,
      O => U3_spriteonGrnd_and000084_14326
    );
  U3_spriteonGrnd_and000058 : X_LUT4
    generic map(
      INIT => X"3F7F",
      LOC => "SLICE_X25Y23"
    )
    port map (
      ADR0 => N245_0,
      ADR1 => U2_hcs(9),
      ADR2 => U2_hcs(8),
      ADR3 => U2_hcs(5),
      O => U3_spriteonGrnd_and000058_pack_1
    );
  U3_spriteonGrnd_and0000123_SW0 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X25Y23"
    )
    port map (
      ADR0 => U3_N84_0,
      ADR1 => U3_spriteonGrnd_and000012_0,
      ADR2 => U2_vcs(9),
      ADR3 => U3_spriteonGrnd_and000058_5175,
      O => N199
    );
  U3_spriteonGrnd_and000066 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X25Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(6),
      ADR2 => VCC,
      ADR3 => U2_hcs(5),
      O => U3_spriteonGrnd_and000066_14367
    );
  U3_spriteonB1_and000049_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X25Y24"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U2_hcs(6),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(5),
      O => N195
    );
  U3_C2_not000113 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X26Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(8),
      ADR2 => VCC,
      ADR3 => U3_C2(7),
      O => U3_C2_not000113_14389
    );
  U3_Madd_spriteon2_addsub0000_lut_8_2 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X26Y43"
    )
    port map (
      ADR0 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      ADR1 => U3_C2(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Madd_spriteon2_addsub0000_lut(8)
    );
  U3_Mmux_M1_mux0000_83_SW1 : X_LUT4
    generic map(
      INIT => X"FF3C",
      LOC => "SLICE_X39Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N325
    );
  M1a_26_106 : X_LUT4
    generic map(
      INIT => X"4888",
      LOC => "SLICE_X49Y34"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_26_bdd0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1a_26_106_14422
    );
  U3_Madd_spriteon2_addsub0000_lut_8_11 : X_LUT4
    generic map(
      INIT => X"1555",
      LOC => "SLICE_X27Y47"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U3_C2(4),
      ADR2 => U3_C2(5),
      ADR3 => U3_C2(6),
      O => U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1
    );
  U3_Madd_spriteon2_addsub0000_lut_9_1 : X_LUT4
    generic map(
      INIT => X"CC3C",
      LOC => "SLICE_X27Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(9),
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Madd_spriteon2_addsub0000_lut(9)
    );
  x7_Mrom_a_to_g11 : X_LUT4
    generic map(
      INIT => X"8833",
      LOC => "SLICE_X65Y70"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(2),
      ADR2 => VCC,
      ADR3 => x7_digit(1),
      O => a_to_g_0_OBUF_14546
    );
  x7_Mrom_a_to_g31 : X_LUT4
    generic map(
      INIT => X"8866",
      LOC => "SLICE_X65Y70"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(2),
      ADR2 => VCC,
      ADR3 => x7_digit(1),
      O => a_to_g_3_OBUF_14554
    );
  x7_Mrom_a_to_g21 : X_LUT4
    generic map(
      INIT => X"FF50",
      LOC => "SLICE_X64Y71"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => VCC,
      ADR2 => x7_digit(2),
      ADR3 => x7_digit(0),
      O => a_to_g_2_OBUF_14570
    );
  x7_Mrom_a_to_g51 : X_LUT4
    generic map(
      INIT => X"50A0",
      LOC => "SLICE_X64Y71"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => VCC,
      ADR2 => x7_digit(2),
      ADR3 => x7_digit(0),
      O => a_to_g_5_OBUF_14578
    );
  x7_Mrom_a_to_g41 : X_LUT4
    generic map(
      INIT => X"1100",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(2),
      ADR2 => VCC,
      ADR3 => x7_digit(1),
      O => a_to_g_4_OBUF_14594
    );
  x7_Mrom_a_to_g61 : X_LUT4
    generic map(
      INIT => X"0066",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(2),
      ADR2 => VCC,
      ADR3 => x7_digit(1),
      O => a_to_g_6_OBUF_14602
    );
  U2_vidon_and00000 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X22Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => U2_hcs(9),
      O => U2_vidon_and00000_pack_1
    );
  U2_vidon_and000039 : X_LUT4
    generic map(
      INIT => X"FCA8",
      LOC => "SLICE_X22Y23"
    )
    port map (
      ADR0 => U2_vidon_and000018,
      ADR1 => U2_vidon_and00006_0,
      ADR2 => U2_vidon_and00000_5184,
      ADR3 => U2_vidon_and000026,
      O => U2_vidon_and000039_14626
    );
  U2_vidon_and00006 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X22Y25"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(4),
      ADR2 => U2_hcs(5),
      ADR3 => U2_hcs(7),
      O => U2_vidon_and00006_14643
    );
  U3_spriteonB4_and000052 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X22Y25"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(8),
      ADR2 => U2_hcs(5),
      ADR3 => U2_hcs(7),
      O => U3_spriteonB4_and000052_14650
    );
  M2a_1_SW0 : X_LUT4
    generic map(
      INIT => X"010B",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd18,
      ADR2 => rom1_addr(3),
      ADR3 => M2_0_bdd9_0,
      O => N69_pack_1
    );
  M2a_1_Q : X_LUT4
    generic map(
      INIT => X"0702",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd2,
      ADR2 => rom1_addr(4),
      ADR3 => N69,
      O => M2a_1_Q_14674
    );
  M1a_24_63_SW0 : X_LUT4
    generic map(
      INIT => X"2A80",
      LOC => "SLICE_X44Y38"
    )
    port map (
      ADR0 => M1_24_bdd0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N171_pack_1
    );
  M1a_24_63 : X_LUT4
    generic map(
      INIT => X"7774",
      LOC => "SLICE_X44Y38"
    )
    port map (
      ADR0 => M1a_12_bdd0_0,
      ADR1 => rom1_addr(4),
      ADR2 => M1a_24_38_0,
      ADR3 => N171,
      O => M1a_24_Q
    );
  nes_a_reg : X_FF
    generic map(
      LOC => "SLICE_X54Y32",
      INIT => '0'
    )
    port map (
      I => nes_a_reg_DYMUX_14708,
      CE => nes_a_reg_CEINV_14705,
      CLK => nes_a_reg_CLKINV_14706,
      SET => GND,
      RST => GND,
      O => nes_a_reg_5193
    );
  M1_22_111 : X_LUT4
    generic map(
      INIT => X"08F8",
      LOC => "SLICE_X47Y34"
    )
    port map (
      ADR0 => M1_21_bdd5,
      ADR1 => rom1_addr(2),
      ADR2 => U2_vcs(0),
      ADR3 => M1_22_bdd12,
      O => M1_22_11_14727
    );
  M1a_26_8 : X_LUT4
    generic map(
      INIT => X"80D5",
      LOC => "SLICE_X47Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => M1_22_bdd9,
      ADR3 => M1_22_bdd12,
      O => M1a_26_8_14734
    );
  M1_27_127 : X_LUT4
    generic map(
      INIT => X"FFE4",
      LOC => "SLICE_X44Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_27_102_0,
      ADR2 => M1_27_40_0,
      ADR3 => rom1_addr(3),
      O => M1_27_127_14823
    );
  M2_31_1 : X_LUT4
    generic map(
      INIT => X"3BCC",
      LOC => "SLICE_X44Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr(4),
      ADR2 => M1_0_bdd2_0,
      ADR3 => rom1_addr(3),
      O => M1_0_Q
    );
  nes_nes_clk31 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => nes_counter_reg(7),
      ADR1 => nes_counter_reg(6),
      ADR2 => nes_counter_reg(5),
      ADR3 => nes_counter_reg(8),
      O => nes_nes_clk31_14847
    );
  nes_a_reg_cmp_eq00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(6),
      ADR2 => nes_counter_reg(5),
      ADR3 => nes_counter_reg(7),
      O => N2
    );
  U3_spriteonB2_and00005 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X35Y31"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(1),
      O => U3_spriteonB2_and00005_14871
    );
  M1_21_51 : X_LUT4
    generic map(
      INIT => X"78FC",
      LOC => "SLICE_X35Y31"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(1),
      O => M1_21_5
    );
  M2_3_24_SW0 : X_LUT4
    generic map(
      INIT => X"099F",
      LOC => "SLICE_X51Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => N215
    );
  M2_4_61 : X_LUT4
    generic map(
      INIT => X"6660",
      LOC => "SLICE_X51Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_4_bdd10
    );
  M2_3_2 : X_LUT4
    generic map(
      INIT => X"CC8C",
      LOC => "SLICE_X50Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(3),
      ADR2 => M2_0_bdd13,
      ADR3 => rom1_addr(2),
      O => M2_3_2_14919
    );
  M2_2_10 : X_LUT4
    generic map(
      INIT => X"DC00",
      LOC => "SLICE_X50Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(3),
      ADR2 => M2_0_bdd13,
      ADR3 => rom1_addr(2),
      O => M2_2_10_14926
    );
  x7_Mrom_a_to_g111 : X_LUT4
    generic map(
      INIT => X"0F0A",
      LOC => "SLICE_X64Y62"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => VCC,
      ADR2 => x7_digit(2),
      ADR3 => x7_digit(0),
      O => a_to_g_1_OBUF_14938
    );
  U1_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X34Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_q_01,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_Mcount_q_lut(0)
    );
  M2a_10_54_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X50Y50"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => N309
    );
  M2_5_31 : X_LUT4
    generic map(
      INIT => X"F017",
      LOC => "SLICE_X50Y50"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => M2_5_bdd2
    );
  U2_vidon_and000080 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X35Y24"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(6),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => U2_vidon_and000080_14991
    );
  M1a_1_8 : X_LUT4
    generic map(
      INIT => X"78F8",
      LOC => "SLICE_X35Y24"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => M1a_1_8_14998
    );
  M2_5_48_SW1 : X_LUT4
    generic map(
      INIT => X"5042",
      LOC => "SLICE_X51Y54"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => M2_0_bdd6,
      O => N265
    );
  M2a_6_49 : X_LUT4
    generic map(
      INIT => X"BAB8",
      LOC => "SLICE_X51Y54"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(3),
      ADR3 => M2_0_bdd6,
      O => M2a_6_49_15022
    );
  nes_right_reg : X_FF
    generic map(
      LOC => "SLICE_X54Y33",
      INIT => '0'
    )
    port map (
      I => nes_right_reg_DYMUX_15032,
      CE => nes_right_reg_CEINV_15029,
      CLK => nes_right_reg_CLKINV_15030,
      SET => GND,
      RST => GND,
      O => nes_right_reg_5129
    );
  U3_spriteonB4_and00005 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X22Y18"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => U3_spriteonB4_and00005_15118
    );
  U3_spriteonB1_and000010 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X25Y22"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U2_vcs(8),
      ADR2 => N191,
      ADR3 => U2_vcs(9),
      O => U3_spriteonB1_and000010_15142
    );
  U3_spriteonB1_and000022_SW0 : X_LUT4
    generic map(
      INIT => X"555F",
      LOC => "SLICE_X22Y24"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => VCC,
      ADR2 => U2_hcs(2),
      ADR3 => U2_hcs(3),
      O => N193_pack_1
    );
  U3_spriteonB1_and000022 : X_LUT4
    generic map(
      INIT => X"2022",
      LOC => "SLICE_X22Y24"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(5),
      ADR3 => N193,
      O => U3_spriteonB1_and000022_15166
    );
  M1a_26_127_SW0 : X_LUT4
    generic map(
      INIT => X"5044",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1a_26_47_0,
      ADR2 => M1a_26_8_0,
      ADR3 => U2_vcs(1),
      O => N231_pack_1
    );
  M1a_26_127 : X_LUT4
    generic map(
      INIT => X"7774",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => M1a_10_bdd0,
      ADR1 => rom1_addr(4),
      ADR2 => N231,
      ADR3 => M1a_26_106_0,
      O => M1a_26_Q
    );
  U3_blue_and00031 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X29Y40"
    )
    port map (
      ADR0 => U3_M2a_mux0000,
      ADR1 => U3_spriteon2f_cmp_le0000,
      ADR2 => U3_N35_0,
      ADR3 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q,
      O => U3_blue_and0003
    );
  U3_red_0_3_SW0 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X29Y40"
    )
    port map (
      ADR0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q,
      ADR1 => U3_spriteon2_cmp_ge0000,
      ADR2 => U3_N35_0,
      ADR3 => U3_M2_mux0000,
      O => N104
    );
  U3_Madd_spriteon2f_add0002_xor_6_11 : X_LUT4
    generic map(
      INIT => X"66AA",
      LOC => "SLICE_X24Y44"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => U3_C2(4),
      O => U3_Madd_spriteon2_addsub0000_lut(6)
    );
  U3_spriteon2_addsub0000_6_1 : X_LUT4
    generic map(
      INIT => X"5566",
      LOC => "SLICE_X24Y44"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => U3_C2(4),
      O => U3_spriteon2_addsub0000(6)
    );
  U3_Madd_spriteon2f_add0002_xor_7_11 : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(4),
      ADR3 => U3_C2(7),
      O => U3_Madd_spriteon2_addsub0000_lut(7)
    );
  U3_spriteon2_addsub0000_7_1 : X_LUT4
    generic map(
      INIT => X"A857",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(4),
      ADR3 => U3_C2(7),
      O => U3_spriteon2_addsub0000(7)
    );
  U3_red_0_3 : X_LUT4
    generic map(
      INIT => X"1300",
      LOC => "SLICE_X26Y18"
    )
    port map (
      ADR0 => U3_N81,
      ADR1 => N104_0,
      ADR2 => U3_M1_mux0000,
      ADR3 => vidon_0,
      O => U3_N36_pack_1
    );
  U3_green_1_21 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X26Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_blue_and0003_0,
      ADR2 => VCC,
      ADR3 => U3_N36,
      O => U3_N85
    );
  U3_spriteonGrnd_and00002 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X25Y20"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => U3_spriteonGrnd_and00002_pack_1
    );
  U3_spriteonGrnd_and000012 : X_LUT4
    generic map(
      INIT => X"FEF0",
      LOC => "SLICE_X25Y20"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U3_spriteonGrnd_and00002_5215,
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(5),
      O => U3_spriteonGrnd_and000012_15310
    );
  M1a_10_11 : X_LUT4
    generic map(
      INIT => X"7AEC",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1a_10_bdd0_pack_1
    );
  M2a_9_67 : X_LUT4
    generic map(
      INIT => X"40EA",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M2a_9_33_0,
      ADR2 => M2a_9_13_0,
      ADR3 => M1a_10_bdd0,
      O => M2a_9_Q
    );
  M1a_22_18 : X_LUT4
    generic map(
      INIT => X"B777",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_22_bdd0_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => M1a_22_18_pack_1
    );
  M1a_22_44 : X_LUT4
    generic map(
      INIT => X"7222",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1a_10_bdd0,
      ADR2 => N229,
      ADR3 => M1a_22_18_5218,
      O => M1a_22_Q
    );
  M1a_25_36 : X_LUT4
    generic map(
      INIT => X"22F0",
      LOC => "SLICE_X47Y42"
    )
    port map (
      ADR0 => M1_10_bdd5_0,
      ADR1 => rom1_addr(3),
      ADR2 => N167,
      ADR3 => rom1_addr(4),
      O => M1a_25_Q
    );
  M2_4_117 : X_LUT4
    generic map(
      INIT => X"EFEC",
      LOC => "SLICE_X47Y42"
    )
    port map (
      ADR0 => M2_4_bdd10_0,
      ADR1 => rom1_addr(3),
      ADR2 => U2_vcs(0),
      ADR3 => M2_4_93_0,
      O => M2_4_117_15454
    );
  M1a_26_47 : X_LUT4
    generic map(
      INIT => X"F4E0",
      LOC => "SLICE_X49Y35"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => rom1_addr(2),
      ADR3 => sw_3_IBUF_4994,
      O => M1a_26_47_15471
    );
  M1a_27_50 : X_LUT4
    generic map(
      INIT => X"7CE0",
      LOC => "SLICE_X49Y35"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => rom1_addr(2),
      ADR3 => sw_3_IBUF_4994,
      O => M1a_27_50_15478
    );
  M2a_5_110_SW0 : X_LUT4
    generic map(
      INIT => X"FEF8",
      LOC => "SLICE_X51Y55"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(3),
      ADR3 => sw_1_IBUF_4992,
      O => N337_pack_1
    );
  M2a_5_110 : X_LUT4
    generic map(
      INIT => X"5140",
      LOC => "SLICE_X51Y55"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => N337,
      O => M2a_5_110_15502
    );
  M1a_28_32 : X_LUT4
    generic map(
      INIT => X"001F",
      LOC => "SLICE_X44Y35"
    )
    port map (
      ADR0 => N333_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => M1a_28_32_pack_1
    );
  M1a_28_70 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X44Y35"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => M1a_28_66_0,
      ADR2 => M1a_28_32_5226,
      ADR3 => M1a_28_17_0,
      O => M1a_28_Q
    );
  M1_25_34_SW0 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N267_pack_1
    );
  M1_25_34 : X_LUT4
    generic map(
      INIT => X"A001",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => U2_vcs(0),
      ADR2 => N267,
      ADR3 => sw_3_IBUF_4994,
      O => M1_25_34_15550
    );
  M1a_29_30 : X_LUT4
    generic map(
      INIT => X"1B0F",
      LOC => "SLICE_X42Y33"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_29_bdd5_0,
      ADR2 => M1_22_bdd12,
      ADR3 => U2_vcs(0),
      O => M1a_29_30_pack_1
    );
  M1a_29_53 : X_LUT4
    generic map(
      INIT => X"CCC0",
      LOC => "SLICE_X42Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_29_51_0,
      ADR2 => M1a_29_30_5227,
      ADR3 => rom1_addr(3),
      O => M1a_29_Q
    );
  M2a_13_21 : X_LUT4
    generic map(
      INIT => X"88A1",
      LOC => "SLICE_X42Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1a_14_bdd0
    );
  M2a_30_18 : X_LUT4
    generic map(
      INIT => X"850F",
      LOC => "SLICE_X43Y40"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M1a_1_20
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X24Y19"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N106
    );
  U2_vsync_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X24Y19"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(9),
      ADR3 => VCC,
      O => N01
    );
  M2a_24_11 : X_LUT4
    generic map(
      INIT => X"99FB",
      LOC => "SLICE_X42Y41"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1a_4_bdd0
    );
  M2a_18_11 : X_LUT4
    generic map(
      INIT => X"C401",
      LOC => "SLICE_X43Y41"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M1a_12_bdd1
    );
  M2a_5_142_SW0 : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X51Y50"
    )
    port map (
      ADR0 => M2a_5_9_0,
      ADR1 => U2_vcs(1),
      ADR2 => rom1_addr(3),
      ADR3 => M2_5_bdd2_0,
      O => N239_pack_1
    );
  M2a_5_142 : X_LUT4
    generic map(
      INIT => X"33FA",
      LOC => "SLICE_X51Y50"
    )
    port map (
      ADR0 => M2a_5_110_0,
      ADR1 => M1a_10_bdd0,
      ADR2 => N239,
      ADR3 => rom1_addr(4),
      O => M2a_5_Q
    );
  M1_10_31 : X_LUT4
    generic map(
      INIT => X"3FF3",
      LOC => "SLICE_X49Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_10_bdd7_pack_2
    );
  M2_6_87 : X_LUT4
    generic map(
      INIT => X"F2FE",
      LOC => "SLICE_X49Y47"
    )
    port map (
      ADR0 => M2_6_51_0,
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => M1_10_bdd7,
      O => M2_6_87_15754
    );
  M1_10_41 : X_LUT4
    generic map(
      INIT => X"0AA0",
      LOC => "SLICE_X43Y43"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_10_bdd8
    );
  M1_10_51 : X_LUT4
    generic map(
      INIT => X"AA77",
      LOC => "SLICE_X46Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => M1_10_bdd5
    );
  M1_21_50 : X_LUT4
    generic map(
      INIT => X"0EEE",
      LOC => "SLICE_X42Y38"
    )
    port map (
      ADR0 => M1_21_26,
      ADR1 => M1_21_5_0,
      ADR2 => rom1_addr(4),
      ADR3 => M1_12_bdd0,
      O => M1_21_Q
    );
  M2_7_132 : X_LUT4
    generic map(
      INIT => X"33A0",
      LOC => "SLICE_X42Y38"
    )
    port map (
      ADR0 => M2_7_92_0,
      ADR1 => M1_12_bdd0,
      ADR2 => M2_7_55_0,
      ADR3 => rom1_addr(4),
      O => M2_7_Q
    );
  M1_21_35 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X47Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sw_2_IBUF_4993,
      ADR2 => VCC,
      ADR3 => sw_3_IBUF_4994,
      O => M1_21_bdd5_pack_1
    );
  M1_26_58 : X_LUT4
    generic map(
      INIT => X"B373",
      LOC => "SLICE_X47Y30"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => M1_21_bdd5,
      ADR3 => U2_vcs(0),
      O => M1_26_58_15826
    );
  M1_21_52 : X_LUT4
    generic map(
      INIT => X"2800",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => sw_3_IBUF_4994,
      O => M1_21_bdd8_pack_2
    );
  M1a_21_54_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"330F",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => M1_21_bdd8,
      ADR3 => U2_vcs(0),
      O => N307
    );
  M1_22_42 : X_LUT4
    generic map(
      INIT => X"FEFB",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(2),
      ADR2 => sw_2_IBUF_4993,
      ADR3 => U2_vcs(1),
      O => M1_22_bdd7_pack_2
    );
  M1a_30_36 : X_LUT4
    generic map(
      INIT => X"4171",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => M1_22_bdd12,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => M1_22_bdd7,
      O => M1a_30_36_15874
    );
  M1_22_52 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => sw_2_IBUF_4993,
      O => M1_22_bdd9_pack_1
    );
  M1a_22_11 : X_LUT4
    generic map(
      INIT => X"54A8",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => M1_22_bdd9,
      ADR3 => U2_vcs(1),
      O => M1a_22_bdd0
    );
  M1_23_31 : X_LUT4
    generic map(
      INIT => X"7DBE",
      LOC => "SLICE_X47Y33"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => sw_2_IBUF_4993,
      ADR2 => sw_3_IBUF_4994,
      ADR3 => U2_vcs(1),
      O => M1_23_bdd6_pack_3
    );
  M1_23_21 : X_LUT4
    generic map(
      INIT => X"3F2E",
      LOC => "SLICE_X47Y33"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => M1_23_bdd6,
      O => M1_23_bdd1
    );
  M1_22_72 : X_LUT4
    generic map(
      INIT => X"EBD7",
      LOC => "SLICE_X49Y41"
    )
    port map (
      ADR0 => sw_3_IBUF_4994,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => sw_2_IBUF_4993,
      O => M1_22_bdd12_pack_1
    );
  M1_24_51 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X49Y41"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => M1_22_bdd12,
      O => M1_24_bdd2
    );
  M1_24_11 : X_LUT4
    generic map(
      INIT => X"EAEB",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => M1_22_bdd9,
      O => M1_24_bdd0_pack_3
    );
  M1_24_70 : X_LUT4
    generic map(
      INIT => X"9F5F",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_24_bdd0,
      ADR3 => U2_vcs(2),
      O => M1_24_70_15970
    );
  M1_27_21 : X_LUT4
    generic map(
      INIT => X"0041",
      LOC => "SLICE_X45Y30"
    )
    port map (
      ADR0 => sw_2_IBUF_4993,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => sw_3_IBUF_4994,
      O => M1_27_bdd4_pack_2
    );
  M1a_29_51 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X45Y30"
    )
    port map (
      ADR0 => rom1_addr(4),
      ADR1 => U2_vcs(1),
      ADR2 => M1_27_bdd4,
      ADR3 => rom1_addr(3),
      O => M1a_29_51_16078
    );
  M2_10_71 : X_LUT4
    generic map(
      INIT => X"4100",
      LOC => "SLICE_X42Y46"
    )
    port map (
      ADR0 => M2_10_bdd2,
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_10_7_pack_1
    );
  M2_10_45 : X_LUT4
    generic map(
      INIT => X"33FA",
      LOC => "SLICE_X42Y46"
    )
    port map (
      ADR0 => M2_10_25_0,
      ADR1 => M1_12_bdd0,
      ADR2 => M2_10_7,
      ADR3 => rom1_addr(4),
      O => M2_10_Q
    );
  M2_10_72 : X_LUT4
    generic map(
      INIT => X"BF7F",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M2_0_bdd13,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_10_bdd2_pack_3
    );
  M2a_9_33 : X_LUT4
    generic map(
      INIT => X"4DFF",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => M2_10_bdd2,
      ADR3 => U2_vcs(1),
      O => M2a_9_33_16126
    );
  M2_12_31 : X_LUT4
    generic map(
      INIT => X"030C",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_12_bdd5_pack_2
    );
  M2_7_92 : X_LUT4
    generic map(
      INIT => X"F737",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => M2_1_bdd1_0,
      ADR1 => U2_vcs(1),
      ADR2 => rom1_addr(3),
      ADR3 => M2_12_bdd5,
      O => M2_7_92_16150
    );
  M1_28_23 : X_LUT4
    generic map(
      INIT => X"0CAA",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => M1_23_bdd6,
      ADR1 => rom1_addr(2),
      ADR2 => M1_21_bdd5,
      ADR3 => U2_vcs(0),
      O => M1_28_23_pack_1
    );
  M1_28_74 : X_LUT4
    generic map(
      INIT => X"DC10",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_28_23_5244,
      ADR3 => N321_0,
      O => M1_28_74_16174
    );
  M2_21_11 : X_LUT4
    generic map(
      INIT => X"AD35",
      LOC => "SLICE_X46Y40"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => M1_10_bdd0
    );
  M2_13_21 : X_LUT4
    generic map(
      INIT => X"F7BE",
      LOC => "SLICE_X40Y38"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => M1_14_bdd1
    );
  M1_29_31 : X_LUT4
    generic map(
      INIT => X"6669",
      LOC => "SLICE_X44Y32"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => sw_2_IBUF_4993,
      ADR3 => sw_3_IBUF_4994,
      O => M1_29_bdd5
    );
  M1_30_111_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X44Y32"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => sw_2_IBUF_4993,
      ADR3 => sw_3_IBUF_4994,
      O => N315
    );
  M2_0_102 : X_LUT4
    generic map(
      INIT => X"F99F",
      LOC => "SLICE_X46Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_0_bdd18_pack_1
    );
  M2_2_50 : X_LUT4
    generic map(
      INIT => X"010B",
      LOC => "SLICE_X46Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_2_bdd5_0,
      ADR2 => rom1_addr(3),
      ADR3 => M2_0_bdd18,
      O => M2_2_50_16246
    );
  M2_0_111 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X45Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sw_1_IBUF_4992,
      ADR2 => VCC,
      ADR3 => sw_0_IBUF_4991,
      O => M2_0_bdd20_pack_1
    );
  M2_8_21 : X_LUT4
    generic map(
      INIT => X"FF6F",
      LOC => "SLICE_X45Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd20,
      ADR3 => U2_vcs(0),
      O => M2_3_72
    );
  M2_24_11 : X_LUT4
    generic map(
      INIT => X"DF87",
      LOC => "SLICE_X41Y39"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => M1_4_bdd0
    );
  M2_0_510 : X_LUT4
    generic map(
      INIT => X"FFF9",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_0_bdd9
    );
  M2_8_129 : X_LUT4
    generic map(
      INIT => X"22FA",
      LOC => "SLICE_X46Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2_8_129_pack_1
    );
  M2_8_149 : X_LUT4
    generic map(
      INIT => X"F3E2",
      LOC => "SLICE_X46Y53"
    )
    port map (
      ADR0 => M2_8_52,
      ADR1 => rom1_addr(4),
      ADR2 => M2_8_129_5248,
      ADR3 => M2_8_13,
      O => M2_8_Q
    );
  U3_spriteonB1_and000049 : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X24Y23"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(2),
      ADR3 => N195_0,
      O => U3_spriteonB1_and000049_pack_1
    );
  U3_spriteonB1_and000088 : X_LUT4
    generic map(
      INIT => X"C800",
      LOC => "SLICE_X24Y23"
    )
    port map (
      ADR0 => U3_spriteonB1_and000022_0,
      ADR1 => U3_N78_0,
      ADR2 => U3_spriteonB1_and000049_5249,
      ADR3 => U3_spriteonB1_and000010_0,
      O => U3_spriteonB1
    );
  U3_blue_and0000258_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"CFB3",
      LOC => "SLICE_X26Y20"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N261
    );
  U3_spriteonB3_and000050 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X26Y20"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => U3_spriteonB3_and000050_16438
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1_SW0 : X_LUT4
    generic map(
      INIT => X"EE00",
      LOC => "SLICE_X30Y37"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => U3_C1(4),
      ADR2 => VCC,
      ADR3 => U3_C1(6),
      O => N57_pack_1
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1 : X_LUT4
    generic map(
      INIT => X"666A",
      LOC => "SLICE_X30Y37"
    )
    port map (
      ADR0 => U3_C1(9),
      ADR1 => U3_C1(8),
      ADR2 => N57,
      ADR3 => U3_C1(7),
      O => U3_spriteon1_addsub0001(9)
    );
  who_present_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"99CC",
      LOC => "SLICE_X54Y54"
    )
    port map (
      ADR0 => nes_a_reg_5193,
      ADR1 => who_present_state_FSM_FFd2_5012,
      ADR2 => VCC,
      ADR3 => who_present_state_FSM_FFd1_5011,
      O => who_present_state_FSM_FFd2_In
    );
  who_present_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X54Y54",
      INIT => '0'
    )
    port map (
      I => who_present_state_FSM_FFd1_DYMUX_16483,
      CE => VCC,
      CLK => who_present_state_FSM_FFd1_CLKINV_16473,
      SET => who_present_state_FSM_FFd1_SRINV_16474,
      RST => GND,
      O => who_present_state_FSM_FFd2_5012
    );
  who_present_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X54Y54",
      INIT => '0'
    )
    port map (
      I => who_present_state_FSM_FFd1_DXMUX_16490,
      CE => VCC,
      CLK => who_present_state_FSM_FFd1_CLKINV_16473,
      SET => GND,
      RST => who_present_state_FSM_FFd1_SRINV_16474,
      O => who_present_state_FSM_FFd1_5011
    );
  U2_vcs_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X25Y18"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(7),
      O => U2_N2_pack_1
    );
  U2_vsync : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X25Y18"
    )
    port map (
      ADR0 => N01_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_N2,
      ADR3 => U2_vcs(1),
      O => vsync_OBUF_16518
    );
  U3_spriteonB3_and000032_SW0 : X_LUT4
    generic map(
      INIT => X"BDB5",
      LOC => "SLICE_X24Y24"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U2_hcs(3),
      ADR2 => U2_hcs(4),
      ADR3 => U3_N60,
      O => N141
    );
  U3_spriteonB2_and000056 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X24Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N197,
      ADR2 => U2_hcs(6),
      ADR3 => U2_hcs(7),
      O => U3_spriteonB2_and000056_16542
    );
  M2a_10_1 : X_LUT4
    generic map(
      INIT => X"6DEA",
      LOC => "SLICE_X46Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1a_12_bdd0
    );
  U3_spriteonB2_and000012 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X24Y22"
    )
    port map (
      ADR0 => U3_spriteonB2_and00005_0,
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(6),
      ADR3 => U3_N84_0,
      O => U3_spriteonB2_and000012_pack_1
    );
  U3_spriteonB2_and000083 : X_LUT4
    generic map(
      INIT => X"8880",
      LOC => "SLICE_X24Y22"
    )
    port map (
      ADR0 => U3_N78_0,
      ADR1 => U3_spriteonB2_and000056_0,
      ADR2 => U2_vcs(9),
      ADR3 => U3_spriteonB2_and000012_5256,
      O => U3_spriteonB2
    );
  M2a_2_18 : X_LUT4
    generic map(
      INIT => X"001B",
      LOC => "SLICE_X49Y52"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd18,
      ADR2 => M2_2_bdd5_0,
      ADR3 => rom1_addr(3),
      O => M2a_2_18_pack_1
    );
  M2a_8_11 : X_LUT4
    generic map(
      INIT => X"AFEE",
      LOC => "SLICE_X44Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2a_6_bdd0_0,
      ADR2 => M2_3_72_0,
      ADR3 => U2_vcs(3),
      O => M2a_8_11_pack_1
    );
  M2a_8_96 : X_LUT4
    generic map(
      INIT => X"B888",
      LOC => "SLICE_X44Y51"
    )
    port map (
      ADR0 => M1a_23_43_0,
      ADR1 => rom1_addr(4),
      ADR2 => M2a_8_29_0,
      ADR3 => M2a_8_11_5264,
      O => M2a_8_Q
    );
  M2a_8_81 : X_LUT4
    generic map(
      INIT => X"8303",
      LOC => "SLICE_X45Y43"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1a_23_43
    );
  U2_hsync1 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X22Y20"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U2_hcs(7),
      ADR2 => VCC,
      ADR3 => U2_hcs(8),
      O => hsync_OBUF_16727
    );
  U2_vidon_and0000105 : X_LUT4
    generic map(
      INIT => X"5DFF",
      LOC => "SLICE_X22Y20"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_N80,
      ADR2 => U2_hcs(4),
      ADR3 => U2_hcs(8),
      O => U2_vidon_and0000105_16734
    );
  U3_spriteonB3_and000073_SW0 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X26Y25"
    )
    port map (
      ADR0 => U3_spriteonB3_and000050_0,
      ADR1 => U2_vcs(6),
      ADR2 => U3_spriteonB3_and000043_0,
      ADR3 => U2_vcs(7),
      O => N249_pack_1
    );
  U3_spriteonB3_and000073 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X26Y25"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(9),
      ADR2 => N249,
      ADR3 => U2_hcs(7),
      O => U3_spriteonB3_and000073_16758
    );
  U3_spriteon2_addsub0000_9_SW0 : X_LUT4
    generic map(
      INIT => X"FC00",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(4),
      ADR2 => U3_C2(5),
      ADR3 => U3_C2(6),
      O => N39_pack_1
    );
  U3_spriteon2_addsub0000_9_Q : X_LUT4
    generic map(
      INIT => X"5A78",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => U3_C2(8),
      ADR1 => U3_C2(7),
      ADR2 => U3_C2(9),
      ADR3 => N39,
      O => U3_spriteon2_addsub0000(9)
    );
  U3_spriteonB3_and000096_SW0 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X24Y25"
    )
    port map (
      ADR0 => U3_spriteonB1_cmp_lt0000_0,
      ADR1 => U3_spriteonB3_and000073_0,
      ADR2 => U2_hcs(8),
      ADR3 => U2_hcs(9),
      O => N323_pack_1
    );
  U3_spriteonB3_and000096 : X_LUT4
    generic map(
      INIT => X"040E",
      LOC => "SLICE_X24Y25"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U2_hcs(6),
      ADR2 => N323,
      ADR3 => N141_0,
      O => U3_spriteonB3
    );
  M1_22_0 : X_LUT4
    generic map(
      INIT => X"7080",
      LOC => "SLICE_X42Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => M1_22_bdd0_0,
      ADR3 => U2_vcs(3),
      O => M1_22_0_pack_1
    );
  M1_22_67 : X_LUT4
    generic map(
      INIT => X"5F5C",
      LOC => "SLICE_X42Y34"
    )
    port map (
      ADR0 => M1_10_bdd0_0,
      ADR1 => M1_22_36,
      ADR2 => rom1_addr(4),
      ADR3 => M1_22_0_5273,
      O => M1_22_Q
    );
  M1_0_21 : X_LUT4
    generic map(
      INIT => X"BEBE",
      LOC => "SLICE_X45Y38"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M1_0_bdd2
    );
  M1_28_2 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X43Y30"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1_28_2_16854
    );
  U3_green_0_SW0 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X24Y17"
    )
    port map (
      ADR0 => U3_spriteonB1_0,
      ADR1 => U3_spriteonB2_0,
      ADR2 => U3_spriteonB3_0,
      ADR3 => U3_spriteonGrnd,
      O => N100_pack_1
    );
  U3_green_0_Q : X_LUT4
    generic map(
      INIT => X"020A",
      LOC => "SLICE_X24Y17"
    )
    port map (
      ADR0 => U3_N85_0,
      ADR1 => U3_M1a_mux0000,
      ADR2 => N100,
      ADR3 => U3_N81,
      O => green_0_OBUF_16878
    );
  M2_0_21 : X_LUT4
    generic map(
      INIT => X"FBFE",
      LOC => "SLICE_X50Y53"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => U2_vcs(2),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => U2_vcs(1),
      O => M2_0_bdd4_pack_1
    );
  M2a_2_59_SW0 : X_LUT4
    generic map(
      INIT => X"E2F3",
      LOC => "SLICE_X50Y53"
    )
    port map (
      ADR0 => M2_0_bdd20,
      ADR1 => rom1_addr(3),
      ADR2 => M2_0_bdd4,
      ADR3 => rom1_addr(2),
      O => N221
    );
  M2_0_81 : X_LUT4
    generic map(
      INIT => X"D8DD",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M2_0_bdd4,
      ADR2 => M2_0_bdd18,
      ADR3 => U2_vcs(0),
      O => M2_0_bdd2_pack_1
    );
  M2_2_31 : X_LUT4
    generic map(
      INIT => X"3C69",
      LOC => "SLICE_X46Y45"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => sw_0_IBUF_4991,
      O => M2_2_bdd5
    );
  M2_4_93 : X_LUT4
    generic map(
      INIT => X"BE28",
      LOC => "SLICE_X46Y45"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => sw_0_IBUF_4991,
      O => M2_4_93_17022
    );
  M2_4_11 : X_LUT4
    generic map(
      INIT => X"2BB1",
      LOC => "SLICE_X47Y44"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_4_bdd0
    );
  M2a_4_77_SW0 : X_LUT4
    generic map(
      INIT => X"9393",
      LOC => "SLICE_X52Y51"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => U2_vcs(2),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => VCC,
      O => N253
    );
  M2_4_24 : X_LUT4
    generic map(
      INIT => X"6990",
      LOC => "SLICE_X52Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_4_24_17058
    );
  M2_4_31 : X_LUT4
    generic map(
      INIT => X"7B21",
      LOC => "SLICE_X49Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => M2_4_bdd2_pack_3
    );
  M2_4_127 : X_LUT4
    generic map(
      INIT => X"D57F",
      LOC => "SLICE_X49Y48"
    )
    port map (
      ADR0 => M2_4_bdd2,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2_4_127_17082
    );
  M2_5_34 : X_LUT4
    generic map(
      INIT => X"A4DF",
      LOC => "SLICE_X45Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M2_4_49
    );
  M2_6_31 : X_LUT4
    generic map(
      INIT => X"999D",
      LOC => "SLICE_X53Y48"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_6_bdd1
    );
  M2a_5_9 : X_LUT4
    generic map(
      INIT => X"8AA0",
      LOC => "SLICE_X53Y48"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2a_5_9_17118
    );
  M2_7_11 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X48Y47"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => M2_7_bdd0_pack_1
    );
  M2_7_55 : X_LUT4
    generic map(
      INIT => X"CFEE",
      LOC => "SLICE_X48Y47"
    )
    port map (
      ADR0 => M2_7_25_0,
      ADR1 => U2_vcs(1),
      ADR2 => M2_7_bdd0,
      ADR3 => U2_vcs(3),
      O => M2_7_55_17142
    );
  M2_6_51 : X_LUT4
    generic map(
      INIT => X"0188",
      LOC => "SLICE_X48Y46"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => M2_6_51_17159
    );
  M2_7_25 : X_LUT4
    generic map(
      INIT => X"0108",
      LOC => "SLICE_X48Y46"
    )
    port map (
      ADR0 => sw_1_IBUF_4992,
      ADR1 => sw_0_IBUF_4991,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => M2_7_25_17166
    );
  M2_9_11 : X_LUT4
    generic map(
      INIT => X"AEEE",
      LOC => "SLICE_X49Y50"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => M2_9_bdd0_pack_1
    );
  M2a_9_13 : X_LUT4
    generic map(
      INIT => X"DFCE",
      LOC => "SLICE_X49Y50"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => M2_9_bdd0,
      ADR3 => M2a_6_bdd0_0,
      O => M2a_9_13_17190
    );
  M2_9_63 : X_LUT4
    generic map(
      INIT => X"5540",
      LOC => "SLICE_X48Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_9_bdd0,
      ADR2 => U2_vcs(3),
      ADR3 => N217_0,
      O => M2_9_63_pack_1
    );
  M2_9_88 : X_LUT4
    generic map(
      INIT => X"7774",
      LOC => "SLICE_X48Y50"
    )
    port map (
      ADR0 => M1_10_bdd0_0,
      ADR1 => rom1_addr(4),
      ADR2 => M2_9_25_0,
      ADR3 => M2_9_63_5278,
      O => M2_9_Q
    );
  M2a_7_58_SW0 : X_LUT4
    generic map(
      INIT => X"EAA8",
      LOC => "SLICE_X49Y46"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => sw_0_IBUF_4991,
      ADR3 => sw_1_IBUF_4992,
      O => N149_pack_1
    );
  U3_spriteonB3_and000043 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X25Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => U3_spriteonB3_and000043_17322
    );
  U3_spriteonGrnd_and0000123 : X_LUT4
    generic map(
      INIT => X"A080",
      LOC => "SLICE_X25Y16"
    )
    port map (
      ADR0 => N199_0,
      ADR1 => U2_vidon_and00000_5184,
      ADR2 => U3_spriteonB1_cmp_lt0000_0,
      ADR3 => U3_spriteonGrnd_and000084_0,
      O => U3_spriteonGrnd_pack_1
    );
  U3_green_2_1 : X_LUT4
    generic map(
      INIT => X"FECC",
      LOC => "SLICE_X25Y16"
    )
    port map (
      ADR0 => U3_N12,
      ADR1 => U3_N30,
      ADR2 => U3_spriteonGrnd,
      ADR3 => U3_N85_0,
      O => green_2_OBUF_17346
    );
  x7_an_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X65Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(18),
      ADR2 => VCC,
      ADR3 => x7_clkdiv(19),
      O => an_0_OBUF_17358
    );
  U3_spriteonB4_and0000111 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X23Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => U2_hcs(1),
      O => U3_N60_pack_1
    );
  U3_spriteonB4_and000055 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X23Y24"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U3_N60,
      ADR2 => U3_spriteonB4_and000052_0,
      ADR3 => U2_hcs(4),
      O => U3_spriteonB4_and000055_17382
    );
  U3_spriteonB4_and000017 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X25Y19"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U3_spriteonB4_and00005_0,
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(5),
      O => U3_spriteonB4_and000017_pack_1
    );
  U3_spriteonB4_and000038 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X25Y19"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(7),
      ADR2 => U3_spriteonB4_and000017_5285,
      ADR3 => U2_vcs(9),
      O => U3_spriteonB4_and000038_17406
    );
  U3_spriteonB4_and000069 : X_LUT4
    generic map(
      INIT => X"E000",
      LOC => "SLICE_X24Y21"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_spriteonB4_and000055_0,
      ADR2 => U3_spriteonB4_cmp_le0000_0,
      ADR3 => U3_spriteonB1_cmp_lt0000_0,
      O => U3_spriteonB4_and000069_pack_1
    );
  U3_red_0_17_SW0 : X_LUT4
    generic map(
      INIT => X"2033",
      LOC => "SLICE_X24Y21"
    )
    port map (
      ADR0 => U3_spriteonB4_and000038_0,
      ADR1 => U3_spriteonB3_0,
      ADR2 => U3_spriteonB4_and000069_5106,
      ADR3 => U3_spriteonB5_0,
      O => N203
    );
  U2_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y21"
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
      INIT => X"FF00",
      LOC => "SLICE_X27Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => U2_Result_2_F
    );
  U2_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y22"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_G
    );
  U2_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y23"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_4_F
    );
  U2_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y23"
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
      INIT => X"F0F0",
      LOC => "SLICE_X27Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(6),
      ADR3 => VCC,
      O => U2_Result_6_F
    );
  U2_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X27Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_G
    );
  U2_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X27Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(8),
      O => U2_Result_8_F
    );
  x7_clkdiv_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_0_G
    );
  x7_clkdiv_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y72"
    )
    port map (
      ADR0 => x7_clkdiv(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_2_F
    );
  x7_clkdiv_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(3),
      O => x7_clkdiv_2_G
    );
  x7_clkdiv_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_4_F
    );
  x7_clkdiv_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(5),
      ADR3 => VCC,
      O => x7_clkdiv_4_G
    );
  x7_clkdiv_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_6_F
    );
  x7_clkdiv_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(7),
      ADR3 => VCC,
      O => x7_clkdiv_6_G
    );
  x7_clkdiv_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(8),
      O => x7_clkdiv_8_F
    );
  x7_clkdiv_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y75"
    )
    port map (
      ADR0 => x7_clkdiv(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_8_G
    );
  x7_clkdiv_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y76"
    )
    port map (
      ADR0 => x7_clkdiv(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_10_F
    );
  x7_clkdiv_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(11),
      O => x7_clkdiv_10_G
    );
  x7_clkdiv_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_12_F
    );
  x7_clkdiv_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(13),
      ADR3 => VCC,
      O => x7_clkdiv_12_G
    );
  x7_clkdiv_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => x7_clkdiv(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_14_F
    );
  x7_clkdiv_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(15),
      O => x7_clkdiv_14_G
    );
  x7_clkdiv_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_16_F
    );
  x7_clkdiv_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(17),
      ADR3 => VCC,
      O => x7_clkdiv_16_G
    );
  x7_clkdiv_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(18),
      O => x7_clkdiv_18_F
    );
  nes_scalar_next_addsub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(1),
      O => nes_scalar_next_addsub0000_0_G
    );
  nes_scalar_next_addsub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y19"
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
      INIT => X"F0F0",
      LOC => "SLICE_X67Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_reg(3),
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_2_G
    );
  nes_scalar_next_addsub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => nes_scalar_reg(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_4_F
    );
  nes_scalar_next_addsub0000_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(5),
      O => nes_scalar_next_addsub0000_4_G
    );
  nes_scalar_next_addsub0000_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y21"
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
      LOC => "SLICE_X67Y21"
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
      INIT => X"CCCC",
      LOC => "SLICE_X67Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_8_F
    );
  U2_Result_0_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X27Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs(1),
      ADR3 => VCC,
      O => U2_Result_0_1_G
    );
  U2_Result_2_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_1_F
    );
  U2_Result_2_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_1_G
    );
  U2_Result_4_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X27Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U2_Result_4_1_F
    );
  U2_Result_4_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X27Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(5),
      O => U2_Result_4_1_G
    );
  U2_Result_6_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X27Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_1_F
    );
  U2_Result_6_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X27Y30"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_1_G
    );
  U2_Result_8_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X27Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(8),
      O => U2_Result_8_1_F
    );
  nes_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(1),
      O => nes_Result_0_G
    );
  nes_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(2),
      ADR3 => VCC,
      O => nes_Result_2_F
    );
  nes_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(3),
      O => nes_Result_2_G
    );
  nes_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(4),
      ADR3 => VCC,
      O => nes_Result_4_F
    );
  nes_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_4_G
    );
  nes_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y31"
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
      INIT => X"FF00",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(7),
      O => nes_Result_6_G
    );
  nes_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(8),
      O => nes_Result_8_F
    );
  U3_Q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y81"
    )
    port map (
      ADR0 => U3_Q_1_4774,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_0_G
    );
  U3_Q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_2_4776,
      ADR3 => VCC,
      O => U3_Q_2_F
    );
  U3_Q_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X43Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_3_4777,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_2_G
    );
  U3_Q_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y83"
    )
    port map (
      ADR0 => U3_Q_4_4779,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_4_F
    );
  U3_Q_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_5_4780,
      O => U3_Q_4_G
    );
  U3_Q_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_6_4782,
      O => U3_Q_6_F
    );
  U3_Q_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y84"
    )
    port map (
      ADR0 => U3_Q_7_4783,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_6_G
    );
  U3_Q_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y85"
    )
    port map (
      ADR0 => U3_Q_8_4785,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_8_F
    );
  U3_Q_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_9_4786,
      ADR3 => VCC,
      O => U3_Q_8_G
    );
  U3_Q_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_10_4788,
      O => U3_Q_10_F
    );
  U3_Q_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y86"
    )
    port map (
      ADR0 => U3_Q_11_4789,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_10_G
    );
  U3_Q_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y87"
    )
    port map (
      ADR0 => U3_Q_12_4791,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_12_F
    );
  U3_Q_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_13_4792,
      ADR3 => VCC,
      O => U3_Q_12_G
    );
  U3_Q_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y88"
    )
    port map (
      ADR0 => U3_Q_14_4794,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_14_F
    );
  U3_Q_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_15_4795,
      O => U3_Q_14_G
    );
  U3_Q_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y89"
    )
    port map (
      ADR0 => U3_Q_16_4797,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_16_F
    );
  dp_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => dp_OUTPUT_OFF_O1INV_9692,
      O => dp_O
    );
  dp_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => dp_OUTPUT_OFF_O1INV_9692
    );
  ja2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja2_OBUF_14206,
      O => ja2_O
    );
  ja3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja3_OBUF_14482,
      O => ja3_O
    );
  a_to_g_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_0_OBUF_14546,
      O => a_to_g_0_O
    );
  a_to_g_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_1_OBUF_14938,
      O => a_to_g_1_O
    );
  a_to_g_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_2_OBUF_14570,
      O => a_to_g_2_O
    );
  a_to_g_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_3_OBUF_14554,
      O => a_to_g_3_O
    );
  a_to_g_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_4_OBUF_14594,
      O => a_to_g_4_O
    );
  a_to_g_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_5_OBUF_14578,
      O => a_to_g_5_O
    );
  a_to_g_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_6_OBUF_14602,
      O => a_to_g_6_O
    );
  blue_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_0_OBUF_13894,
      O => blue_0_O
    );
  blue_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_1_OBUF_14030,
      O => blue_1_O
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_17358,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OUTPUT_OFF_O1INV_9808,
      O => an_1_O
    );
  an_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => an_1_OUTPUT_OFF_O1INV_9808
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OUTPUT_OFF_O1INV_9816,
      O => an_2_O
    );
  an_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => an_2_OUTPUT_OFF_O1INV_9816
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OUTPUT_OFF_O1INV_9824,
      O => an_3_O
    );
  an_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => an_3_OUTPUT_OFF_O1INV_9824
    );
  hsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 555 ps
    )
    port map (
      I => hsync_OBUF_16727,
      O => hsync_O
    );
  vsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 555 ps
    )
    port map (
      I => vsync_OBUF_16518,
      O => vsync_O
    );
  red_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_0_OBUF_14278,
      O => red_0_O
    );
  red_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_5005,
      O => red_1_O
    );
  red_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_5005,
      O => red_2_O
    );
  green_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_0_OBUF_16878,
      O => green_0_O
    );
  green_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_1_OBUF_14230,
      O => green_1_O
    );
  green_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_2_OBUF_17346,
      O => green_2_O
    );
  x7_digit_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_digit_1_F
    );
  x7_digit_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X65Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_digit_2_F
    );
  M1_21_26_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1_21_26_F
    );
  U3_spriteonB5_and00009_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X22Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteonB5_and00009_G
    );
  U2_vidon_and000026_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X23Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000026_G
    );
  U2_vidon_and000018_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X22Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000018_F
    );
  U3_spriteonB5_and000049_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X22Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteonB5_and000049_F
    );
  U2_vidon_and000065_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X23Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000065_G
    );
  x7_digit_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X64Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_digit_0_F
    );
  NlwBlock_vga_bsprite2a_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_vga_bsprite2a_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

