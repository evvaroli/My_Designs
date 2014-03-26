--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Tue Mar 25 20:32:57 2014
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
  signal vga_sprite_Msub_ypixRey_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_5_Q : STD_LOGIC; 
  signal sw_6_IBUF_2454 : STD_LOGIC; 
  signal sw_7_IBUF_2459 : STD_LOGIC; 
  signal sw_2_IBUF_2500 : STD_LOGIC; 
  signal sw_3_IBUF_2502 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_4_Q : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_5_Q : STD_LOGIC; 
  signal sw_4_IBUF_2516 : STD_LOGIC; 
  signal sw_5_IBUF_2520 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_9_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_5_Q : STD_LOGIC; 
  signal U2_vidon_and000098_0 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_6_Q : STD_LOGIC; 
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
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_9_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_9_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_4_Q : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_1_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_5_Q : STD_LOGIC; 
  signal sw_0_IBUF_2738 : STD_LOGIC; 
  signal sw_1_IBUF_2739 : STD_LOGIC; 
  signal btn_0_IBUF_2742 : STD_LOGIC; 
  signal btn_1_IBUF_2743 : STD_LOGIC; 
  signal btn_2_IBUF_2744 : STD_LOGIC; 
  signal btn_3_IBUF_2745 : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q : STD_LOGIC; 
  signal vga_sprite_skye_0 : STD_LOGIC; 
  signal vga_sprite_mona_0 : STD_LOGIC; 
  signal MSkye_0_0 : STD_LOGIC; 
  signal MMona_0_0 : STD_LOGIC; 
  signal MRey_0_0 : STD_LOGIC; 
  signal vga_sprite_blue_0_1145_0 : STD_LOGIC; 
  signal MSkye_1_0 : STD_LOGIC; 
  signal MMona_1_0 : STD_LOGIC; 
  signal MRey_1_0 : STD_LOGIC; 
  signal U2_vidon_and0000111 : STD_LOGIC; 
  signal MSkye_5_0 : STD_LOGIC; 
  signal MMona_5_0 : STD_LOGIC; 
  signal MRey_5_0 : STD_LOGIC; 
  signal MSkye_6_0 : STD_LOGIC; 
  signal MMona_6_0 : STD_LOGIC; 
  signal MRey_6_0 : STD_LOGIC; 
  signal MSkye_7_0 : STD_LOGIC; 
  signal MMona_7_0 : STD_LOGIC; 
  signal MRey_7_0 : STD_LOGIC; 
  signal vga_sprite_redMona_and000023 : STD_LOGIC; 
  signal vga_sprite_skye_and000037 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal MSkye_2_0 : STD_LOGIC; 
  signal MMona_2_0 : STD_LOGIC; 
  signal MRey_2_0 : STD_LOGIC; 
  signal MSkye_3_0 : STD_LOGIC; 
  signal MMona_3_0 : STD_LOGIC; 
  signal MRey_3_0 : STD_LOGIC; 
  signal MSkye_4_0 : STD_LOGIC; 
  signal MMona_4_0 : STD_LOGIC; 
  signal MRey_4_0 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_2837 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_0 : STD_LOGIC; 
  signal U2_VSENABLE_2839 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_2840 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal U2_N3 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_0 : STD_LOGIC; 
  signal vidon_0 : STD_LOGIC; 
  signal vga_sprite_skye_and000023_0 : STD_LOGIC; 
  signal vga_sprite_skye_and000084_2846 : STD_LOGIC; 
  signal vga_sprite_skye_and000067_0 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal vga_sprite_blue_0_188_0 : STD_LOGIC; 
  signal vga_sprite_blue_0_1104_0 : STD_LOGIC; 
  signal vga_sprite_redMona_and0000127_2851 : STD_LOGIC; 
  signal vga_sprite_redMona_and0000116_0 : STD_LOGIC; 
  signal N57_0 : STD_LOGIC; 
  signal vga_sprite_redMona_and000098_0 : STD_LOGIC; 
  signal vga_sprite_redMona_and000081_2855 : STD_LOGIC; 
  signal U2_vidon_and000011_2856 : STD_LOGIC; 
  signal U2_vidon_and000018_0 : STD_LOGIC; 
  signal U2_vidon_and000057_2858 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal U2_vidon_and000059_2860 : STD_LOGIC; 
  signal U2_vidon_and000094_0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal vga_sprite_blue_0_17_0 : STD_LOGIC; 
  signal vga_sprite_blue_0_121_0 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N59_0 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal vga_sprite_blue_0_1117_2873 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_XORF_2908 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_LOGIC_ZERO_2907 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_CYINIT_2906 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_CYSELF_2897 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_F : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_BXINV_2895 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_XORG_2893 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_CYMUXG_2892 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_LOGIC_ONE_2890 : STD_LOGIC; 
  signal vga_sprite_ypixRey_0_CYSELG_2881 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_XORF_2946 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYINIT_2945 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_XORG_2934 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYSELF_2932 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYMUXFAST_2931 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYAND_2930 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_FASTCARRY_2929 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYMUXG2_2928 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYMUXF2_2927 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_LOGIC_ONE_2926 : STD_LOGIC; 
  signal vga_sprite_ypixRey_2_CYSELG_2917 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_XORF_2984 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYINIT_2983 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_XORG_2972 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYSELF_2970 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYMUXFAST_2969 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYAND_2968 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_FASTCARRY_2967 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYMUXG2_2966 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYMUXF2_2965 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_LOGIC_ONE_2964 : STD_LOGIC; 
  signal vga_sprite_ypixRey_4_CYSELG_2955 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_XORF_3023 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_LOGIC_ONE_3022 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYINIT_3021 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_XORG_3010 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYSELF_3008 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYMUXFAST_3007 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYAND_3006 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_FASTCARRY_3005 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYMUXG2_3004 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYMUXF2_3003 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CY0G_3002 : STD_LOGIC; 
  signal vga_sprite_ypixRey_6_CYSELG_2994 : STD_LOGIC; 
  signal vga_sprite_ypixRey_8_XORF_3054 : STD_LOGIC; 
  signal vga_sprite_ypixRey_8_CYINIT_3053 : STD_LOGIC; 
  signal vga_sprite_ypixRey_8_CY0F_3052 : STD_LOGIC; 
  signal vga_sprite_ypixRey_8_CYSELF_3044 : STD_LOGIC; 
  signal vga_sprite_ypixRey_8_XORG_3041 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_lut_9_2 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_XORF_3090 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CYINIT_3089 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CY0F_3088 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CYSELF_3080 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_BXINV_3078 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_XORG_3076 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CYMUXG_3075 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CY0G_3073 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_5_CYSELG_3065 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_XORF_3129 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYINIT_3128 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CY0F_3127 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_XORG_3117 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYSELF_3115 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYMUXFAST_3114 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYAND_3113 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_FASTCARRY_3112 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYMUXG2_3111 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYMUXF2_3110 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CY0G_3109 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_7_CYSELG_3101 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_XORF_3168 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYINIT_3167 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CY0F_3166 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_XORG_3156 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYSELF_3154 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYMUXFAST_3153 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYAND_3152 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_FASTCARRY_3151 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYMUXG2_3150 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYMUXF2_3149 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CY0G_3148 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_9_CYSELG_3140 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_XORF_3207 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYINIT_3206 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CY0F_3205 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_XORG_3195 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYSELF_3193 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYMUXFAST_3192 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYAND_3191 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_FASTCARRY_3190 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYMUXG2_3189 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYMUXF2_3188 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_LOGIC_ZERO_3187 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_CYSELG_3178 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_11_G : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_13_XORF_3222 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_13_CYINIT_3221 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_13_rt_3219 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_3253 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYINIT_3252 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELF_3243 : STD_LOGIC; 
  signal U2_vcs_2_rt_3242 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_BXINV_3241 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYMUXG_3240 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ONE_3238 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELG_3232 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0F_3284 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELF_3275 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXFAST_3274 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYAND_3273 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_FASTCARRY_3272 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXG2_3271 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXF2_3270 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0G_3269 : STD_LOGIC; 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELG_3262 : STD_LOGIC; 
  signal N3_CYINIT_3311 : STD_LOGIC; 
  signal N3_CY0F_3310 : STD_LOGIC; 
  signal N3_CYSELF_3303 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_XORF_3346 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_LOGIC_ZERO_3345 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_CYINIT_3344 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_CYSELF_3335 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_F : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_BXINV_3333 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_XORG_3331 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_CYMUXG_3330 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_LOGIC_ONE_3328 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_0_CYSELG_3319 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_XORF_3384 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYINIT_3383 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_XORG_3372 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYSELF_3370 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYMUXFAST_3369 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYAND_3368 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_FASTCARRY_3367 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYMUXG2_3366 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYMUXF2_3365 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_LOGIC_ONE_3364 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_2_CYSELG_3355 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_XORF_3422 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYINIT_3421 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_XORG_3410 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYSELF_3408 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYMUXFAST_3407 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYAND_3406 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_FASTCARRY_3405 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYMUXG2_3404 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYMUXF2_3403 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_LOGIC_ONE_3402 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_4_CYSELG_3393 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_XORF_3461 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_LOGIC_ONE_3460 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYINIT_3459 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_XORG_3448 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYSELF_3446 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYMUXFAST_3445 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYAND_3444 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_FASTCARRY_3443 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYMUXG2_3442 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYMUXF2_3441 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CY0G_3440 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_6_CYSELG_3432 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_8_XORF_3492 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_8_CYINIT_3491 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_8_CY0F_3490 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_8_CYSELF_3482 : STD_LOGIC; 
  signal vga_sprite_ypixSkye_8_XORG_3479 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixSkye_cy_8_Q : STD_LOGIC; 
  signal U2_Result_0_XORF_3528 : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ONE_3527 : STD_LOGIC; 
  signal U2_Result_0_CYINIT_3526 : STD_LOGIC; 
  signal U2_Result_0_CYSELF_3517 : STD_LOGIC; 
  signal U2_Result_0_BXINV_3515 : STD_LOGIC; 
  signal U2_Result_0_XORG_3513 : STD_LOGIC; 
  signal U2_Result_0_CYMUXG_3512 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ZERO_3510 : STD_LOGIC; 
  signal U2_Result_0_CYSELG_3501 : STD_LOGIC; 
  signal U2_Result_0_G : STD_LOGIC; 
  signal U2_Result_2_XORF_3566 : STD_LOGIC; 
  signal U2_Result_2_CYINIT_3565 : STD_LOGIC; 
  signal U2_Result_2_F : STD_LOGIC; 
  signal U2_Result_2_XORG_3554 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_CYSELF_3552 : STD_LOGIC; 
  signal U2_Result_2_CYMUXFAST_3551 : STD_LOGIC; 
  signal U2_Result_2_CYAND_3550 : STD_LOGIC; 
  signal U2_Result_2_FASTCARRY_3549 : STD_LOGIC; 
  signal U2_Result_2_CYMUXG2_3548 : STD_LOGIC; 
  signal U2_Result_2_CYMUXF2_3547 : STD_LOGIC; 
  signal U2_Result_2_LOGIC_ZERO_3546 : STD_LOGIC; 
  signal U2_Result_2_CYSELG_3537 : STD_LOGIC; 
  signal U2_Result_2_G : STD_LOGIC; 
  signal U2_Result_4_XORF_3604 : STD_LOGIC; 
  signal U2_Result_4_CYINIT_3603 : STD_LOGIC; 
  signal U2_Result_4_F : STD_LOGIC; 
  signal U2_Result_4_XORG_3592 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_CYSELF_3590 : STD_LOGIC; 
  signal U2_Result_4_CYMUXFAST_3589 : STD_LOGIC; 
  signal U2_Result_4_CYAND_3588 : STD_LOGIC; 
  signal U2_Result_4_FASTCARRY_3587 : STD_LOGIC; 
  signal U2_Result_4_CYMUXG2_3586 : STD_LOGIC; 
  signal U2_Result_4_CYMUXF2_3585 : STD_LOGIC; 
  signal U2_Result_4_LOGIC_ZERO_3584 : STD_LOGIC; 
  signal U2_Result_4_CYSELG_3575 : STD_LOGIC; 
  signal U2_Result_4_G : STD_LOGIC; 
  signal U2_Result_6_XORF_3642 : STD_LOGIC; 
  signal U2_Result_6_CYINIT_3641 : STD_LOGIC; 
  signal U2_Result_6_F : STD_LOGIC; 
  signal U2_Result_6_XORG_3630 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_CYSELF_3628 : STD_LOGIC; 
  signal U2_Result_6_CYMUXFAST_3627 : STD_LOGIC; 
  signal U2_Result_6_CYAND_3626 : STD_LOGIC; 
  signal U2_Result_6_FASTCARRY_3625 : STD_LOGIC; 
  signal U2_Result_6_CYMUXG2_3624 : STD_LOGIC; 
  signal U2_Result_6_CYMUXF2_3623 : STD_LOGIC; 
  signal U2_Result_6_LOGIC_ZERO_3622 : STD_LOGIC; 
  signal U2_Result_6_CYSELG_3613 : STD_LOGIC; 
  signal U2_Result_6_G : STD_LOGIC; 
  signal U2_Result_8_XORF_3673 : STD_LOGIC; 
  signal U2_Result_8_LOGIC_ZERO_3672 : STD_LOGIC; 
  signal U2_Result_8_CYINIT_3671 : STD_LOGIC; 
  signal U2_Result_8_CYSELF_3662 : STD_LOGIC; 
  signal U2_Result_8_F : STD_LOGIC; 
  signal U2_Result_8_XORG_3659 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_Q : STD_LOGIC; 
  signal U2_vcs_9_rt_3656 : STD_LOGIC; 
  signal romRey_addr14_2_XORF_3709 : STD_LOGIC; 
  signal romRey_addr14_2_CYINIT_3708 : STD_LOGIC; 
  signal romRey_addr14_2_CY0F_3707 : STD_LOGIC; 
  signal romRey_addr14_2_CYSELF_3699 : STD_LOGIC; 
  signal romRey_addr14_2_BXINV_3697 : STD_LOGIC; 
  signal romRey_addr14_2_XORG_3695 : STD_LOGIC; 
  signal romRey_addr14_2_CYMUXG_3694 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_2_Q : STD_LOGIC; 
  signal romRey_addr14_2_CY0G_3692 : STD_LOGIC; 
  signal romRey_addr14_2_CYSELG_3684 : STD_LOGIC; 
  signal romRey_addr14_4_XORF_3748 : STD_LOGIC; 
  signal romRey_addr14_4_CYINIT_3747 : STD_LOGIC; 
  signal romRey_addr14_4_CY0F_3746 : STD_LOGIC; 
  signal romRey_addr14_4_XORG_3736 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_4_Q : STD_LOGIC; 
  signal romRey_addr14_4_CYSELF_3734 : STD_LOGIC; 
  signal romRey_addr14_4_CYMUXFAST_3733 : STD_LOGIC; 
  signal romRey_addr14_4_CYAND_3732 : STD_LOGIC; 
  signal romRey_addr14_4_FASTCARRY_3731 : STD_LOGIC; 
  signal romRey_addr14_4_CYMUXG2_3730 : STD_LOGIC; 
  signal romRey_addr14_4_CYMUXF2_3729 : STD_LOGIC; 
  signal romRey_addr14_4_CY0G_3728 : STD_LOGIC; 
  signal romRey_addr14_4_CYSELG_3720 : STD_LOGIC; 
  signal romRey_addr14_6_XORF_3787 : STD_LOGIC; 
  signal romRey_addr14_6_CYINIT_3786 : STD_LOGIC; 
  signal romRey_addr14_6_CY0F_3785 : STD_LOGIC; 
  signal romRey_addr14_6_XORG_3775 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_6_Q : STD_LOGIC; 
  signal romRey_addr14_6_CYSELF_3773 : STD_LOGIC; 
  signal romRey_addr14_6_CYMUXFAST_3772 : STD_LOGIC; 
  signal romRey_addr14_6_CYAND_3771 : STD_LOGIC; 
  signal romRey_addr14_6_FASTCARRY_3770 : STD_LOGIC; 
  signal romRey_addr14_6_CYMUXG2_3769 : STD_LOGIC; 
  signal romRey_addr14_6_CYMUXF2_3768 : STD_LOGIC; 
  signal romRey_addr14_6_CY0G_3767 : STD_LOGIC; 
  signal romRey_addr14_6_CYSELG_3759 : STD_LOGIC; 
  signal romRey_addr14_8_XORF_3826 : STD_LOGIC; 
  signal romRey_addr14_8_CYINIT_3825 : STD_LOGIC; 
  signal romRey_addr14_8_CY0F_3824 : STD_LOGIC; 
  signal romRey_addr14_8_XORG_3814 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_8_Q : STD_LOGIC; 
  signal romRey_addr14_8_CYSELF_3812 : STD_LOGIC; 
  signal romRey_addr14_8_CYMUXFAST_3811 : STD_LOGIC; 
  signal romRey_addr14_8_CYAND_3810 : STD_LOGIC; 
  signal romRey_addr14_8_FASTCARRY_3809 : STD_LOGIC; 
  signal romRey_addr14_8_CYMUXG2_3808 : STD_LOGIC; 
  signal romRey_addr14_8_CYMUXF2_3807 : STD_LOGIC; 
  signal romRey_addr14_8_CY0G_3806 : STD_LOGIC; 
  signal romRey_addr14_8_CYSELG_3798 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_3871 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_3870 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_3857 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_3856 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_3855 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_Q : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_3853 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_3852 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_3851 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_3850 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_3849 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_3848 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_3838 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_3836 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_3912 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_3911 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_3910 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_3909 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_3908 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_3899 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_3894 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_3893 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_3892 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_13_rt_3889 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_3881 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_XORF_3950 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CYINIT_3949 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CY0F_3948 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CYSELF_3940 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_BXINV_3938 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_XORG_3936 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CYMUXG_3935 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CY0G_3933 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_6_CYSELG_3925 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_XORF_3989 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYINIT_3988 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CY0F_3987 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_XORG_3977 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYSELF_3975 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYMUXFAST_3974 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYAND_3973 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_FASTCARRY_3972 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYMUXG2_3971 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYMUXF2_3970 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CY0G_3969 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_8_CYSELG_3961 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_XORF_4028 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYINIT_4027 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CY0F_4026 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_XORG_4016 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYSELF_4014 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYMUXFAST_4013 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYAND_4012 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_FASTCARRY_4011 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYMUXG2_4010 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYMUXF2_4009 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CY0G_4008 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_10_CYSELG_4000 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_12_XORF_4059 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_12_CYINIT_4058 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_12_CY0F_4057 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_12_CYSELF_4049 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_12_XORG_4046 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_9_Q : STD_LOGIC; 
  signal romMona_addr14_0_XORF_4094 : STD_LOGIC; 
  signal romMona_addr14_0_CYINIT_4093 : STD_LOGIC; 
  signal romMona_addr14_0_CYSELF_4084 : STD_LOGIC; 
  signal romMona_addr14_0_F : STD_LOGIC; 
  signal romMona_addr14_0_BXINV_4082 : STD_LOGIC; 
  signal romMona_addr14_0_XORG_4080 : STD_LOGIC; 
  signal romMona_addr14_0_CYMUXG_4079 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_0_Q : STD_LOGIC; 
  signal romMona_addr14_0_LOGIC_ZERO_4077 : STD_LOGIC; 
  signal romMona_addr14_0_CYSELG_4068 : STD_LOGIC; 
  signal romMona_addr14_0_G : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_XORF_4133 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_LOGIC_ZERO_4132 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYINIT_4131 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_F : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_XORG_4120 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYSELF_4118 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYMUXFAST_4117 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYAND_4116 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_FASTCARRY_4115 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYMUXG2_4114 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYMUXF2_4113 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_LOGIC_ONE_4112 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_2_CYSELG_4103 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_XORF_4172 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_LOGIC_ZERO_4171 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYINIT_4170 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_4_11 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_XORG_4159 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYSELF_4157 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYMUXFAST_4156 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYAND_4155 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_FASTCARRY_4154 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYMUXG2_4153 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYMUXF2_4152 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_LOGIC_ONE_4151 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_4_CYSELG_4143 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_5_Q_4142 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_XORF_4211 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_LOGIC_ONE_4210 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYINIT_4209 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_6_Q_4202 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_XORG_4200 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYSELF_4198 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYMUXFAST_4197 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYAND_4196 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_FASTCARRY_4195 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYMUXG2_4194 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYMUXF2_4193 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_LOGIC_ZERO_4192 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_6_CYSELG_4186 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_7_11 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_8_XORF_4242 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_8_LOGIC_ONE_4241 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_8_CYINIT_4240 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_8_CYSELF_4233 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_lut_8_Q_4232 : STD_LOGIC; 
  signal vga_sprite_xpixSkye_8_XORG_4230 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixSkye_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_2_4227 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_XORF_4278 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CYINIT_4277 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CY0F_4276 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CYSELF_4268 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_BXINV_4266 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_XORG_4264 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CYMUXG_4263 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CY0G_4261 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_6_CYSELG_4253 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_XORF_4317 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYINIT_4316 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CY0F_4315 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_XORG_4305 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYSELF_4303 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYMUXFAST_4302 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYAND_4301 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_FASTCARRY_4300 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYMUXG2_4299 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYMUXF2_4298 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CY0G_4297 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_8_CYSELG_4289 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_XORF_4356 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYINIT_4355 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CY0F_4354 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_XORG_4344 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYSELF_4342 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYMUXFAST_4341 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYAND_4340 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_FASTCARRY_4339 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYMUXG2_4338 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYMUXF2_4337 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CY0G_4336 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_10_CYSELG_4328 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_12_XORF_4387 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_12_CYINIT_4386 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_12_CY0F_4385 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_12_CYSELF_4377 : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0000_12_XORG_4374 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_9_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_XORF_4423 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CYINIT_4422 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CY0F_4421 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CYSELF_4413 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_BXINV_4411 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_XORG_4409 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CYMUXG_4408 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CY0G_4406 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_5_CYSELG_4398 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_XORF_4462 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYINIT_4461 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CY0F_4460 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_XORG_4450 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYSELF_4448 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYMUXFAST_4447 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYAND_4446 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_FASTCARRY_4445 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYMUXG2_4444 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYMUXF2_4443 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CY0G_4442 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_7_CYSELG_4434 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_XORF_4501 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYINIT_4500 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CY0F_4499 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_XORG_4489 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYSELF_4487 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYMUXFAST_4486 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYAND_4485 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_FASTCARRY_4484 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYMUXG2_4483 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYMUXF2_4482 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CY0G_4481 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_9_CYSELG_4473 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_XORF_4540 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYINIT_4539 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CY0F_4538 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_XORG_4528 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYSELF_4526 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYMUXFAST_4525 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYAND_4524 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_FASTCARRY_4523 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYMUXG2_4522 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYMUXF2_4521 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_LOGIC_ZERO_4520 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_CYSELG_4511 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_11_G : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_13_XORF_4555 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0001_13_CYINIT_4554 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_13_rt_4552 : STD_LOGIC; 
  signal U2_Result_0_1_XORF_4591 : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ONE_4590 : STD_LOGIC; 
  signal U2_Result_0_1_CYINIT_4589 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELF_4580 : STD_LOGIC; 
  signal U2_Result_0_1_BXINV_4578 : STD_LOGIC; 
  signal U2_Result_0_1_XORG_4576 : STD_LOGIC; 
  signal U2_Result_0_1_CYMUXG_4575 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ZERO_4573 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELG_4564 : STD_LOGIC; 
  signal U2_Result_0_1_G : STD_LOGIC; 
  signal U2_Result_2_1_XORF_4629 : STD_LOGIC; 
  signal U2_Result_2_1_CYINIT_4628 : STD_LOGIC; 
  signal U2_Result_2_1_F : STD_LOGIC; 
  signal U2_Result_2_1_XORG_4617 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_1_CYSELF_4615 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXFAST_4614 : STD_LOGIC; 
  signal U2_Result_2_1_CYAND_4613 : STD_LOGIC; 
  signal U2_Result_2_1_FASTCARRY_4612 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXG2_4611 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXF2_4610 : STD_LOGIC; 
  signal U2_Result_2_1_LOGIC_ZERO_4609 : STD_LOGIC; 
  signal U2_Result_2_1_CYSELG_4600 : STD_LOGIC; 
  signal U2_Result_2_1_G : STD_LOGIC; 
  signal U2_Result_4_1_XORF_4667 : STD_LOGIC; 
  signal U2_Result_4_1_CYINIT_4666 : STD_LOGIC; 
  signal U2_Result_4_1_F : STD_LOGIC; 
  signal U2_Result_4_1_XORG_4655 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_1_CYSELF_4653 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXFAST_4652 : STD_LOGIC; 
  signal U2_Result_4_1_CYAND_4651 : STD_LOGIC; 
  signal U2_Result_4_1_FASTCARRY_4650 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXG2_4649 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXF2_4648 : STD_LOGIC; 
  signal U2_Result_4_1_LOGIC_ZERO_4647 : STD_LOGIC; 
  signal U2_Result_4_1_CYSELG_4638 : STD_LOGIC; 
  signal U2_Result_4_1_G : STD_LOGIC; 
  signal U2_Result_6_1_XORF_4705 : STD_LOGIC; 
  signal U2_Result_6_1_CYINIT_4704 : STD_LOGIC; 
  signal U2_Result_6_1_F : STD_LOGIC; 
  signal U2_Result_6_1_XORG_4693 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_1_CYSELF_4691 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXFAST_4690 : STD_LOGIC; 
  signal U2_Result_6_1_CYAND_4689 : STD_LOGIC; 
  signal U2_Result_6_1_FASTCARRY_4688 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXG2_4687 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXF2_4686 : STD_LOGIC; 
  signal U2_Result_6_1_LOGIC_ZERO_4685 : STD_LOGIC; 
  signal U2_Result_6_1_CYSELG_4676 : STD_LOGIC; 
  signal U2_Result_6_1_G : STD_LOGIC; 
  signal U2_Result_8_1_XORF_4736 : STD_LOGIC; 
  signal U2_Result_8_1_LOGIC_ZERO_4735 : STD_LOGIC; 
  signal U2_Result_8_1_CYINIT_4734 : STD_LOGIC; 
  signal U2_Result_8_1_CYSELF_4725 : STD_LOGIC; 
  signal U2_Result_8_1_F : STD_LOGIC; 
  signal U2_Result_8_1_XORG_4722 : STD_LOGIC; 
  signal U2_Mcount_HCS_cy_8_Q : STD_LOGIC; 
  signal U2_HCS_9_rt_4719 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_XORF_4772 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CYINIT_4771 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CY0F_4770 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CYSELF_4762 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_BXINV_4760 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_XORG_4758 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CYMUXG_4757 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CY0G_4755 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_5_CYSELG_4747 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_XORF_4811 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYINIT_4810 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CY0F_4809 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_XORG_4799 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYSELF_4797 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYMUXFAST_4796 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYAND_4795 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_FASTCARRY_4794 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYMUXG2_4793 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYMUXF2_4792 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CY0G_4791 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_7_CYSELG_4783 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_XORF_4850 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYINIT_4849 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CY0F_4848 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_XORG_4838 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYSELF_4836 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYMUXFAST_4835 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYAND_4834 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_FASTCARRY_4833 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYMUXG2_4832 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYMUXF2_4831 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CY0G_4830 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_9_CYSELG_4822 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_XORF_4889 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYINIT_4888 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CY0F_4887 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_XORG_4877 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYSELF_4875 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYMUXFAST_4874 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYAND_4873 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_FASTCARRY_4872 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYMUXG2_4871 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYMUXF2_4870 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_LOGIC_ZERO_4869 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_CYSELG_4860 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_11_G : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_13_XORF_4904 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_13_CYINIT_4903 : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0000_13_rt_4901 : STD_LOGIC; 
  signal romSkye_addr14_2_XORF_4940 : STD_LOGIC; 
  signal romSkye_addr14_2_CYINIT_4939 : STD_LOGIC; 
  signal romSkye_addr14_2_CY0F_4938 : STD_LOGIC; 
  signal romSkye_addr14_2_CYSELF_4930 : STD_LOGIC; 
  signal romSkye_addr14_2_BXINV_4928 : STD_LOGIC; 
  signal romSkye_addr14_2_XORG_4926 : STD_LOGIC; 
  signal romSkye_addr14_2_CYMUXG_4925 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_2_Q : STD_LOGIC; 
  signal romSkye_addr14_2_CY0G_4923 : STD_LOGIC; 
  signal romSkye_addr14_2_CYSELG_4915 : STD_LOGIC; 
  signal romSkye_addr14_4_XORF_4979 : STD_LOGIC; 
  signal romSkye_addr14_4_CYINIT_4978 : STD_LOGIC; 
  signal romSkye_addr14_4_CY0F_4977 : STD_LOGIC; 
  signal romSkye_addr14_4_XORG_4967 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_4_Q : STD_LOGIC; 
  signal romSkye_addr14_4_CYSELF_4965 : STD_LOGIC; 
  signal romSkye_addr14_4_CYMUXFAST_4964 : STD_LOGIC; 
  signal romSkye_addr14_4_CYAND_4963 : STD_LOGIC; 
  signal romSkye_addr14_4_FASTCARRY_4962 : STD_LOGIC; 
  signal romSkye_addr14_4_CYMUXG2_4961 : STD_LOGIC; 
  signal romSkye_addr14_4_CYMUXF2_4960 : STD_LOGIC; 
  signal romSkye_addr14_4_CY0G_4959 : STD_LOGIC; 
  signal romSkye_addr14_4_CYSELG_4951 : STD_LOGIC; 
  signal romSkye_addr14_6_XORF_5018 : STD_LOGIC; 
  signal romSkye_addr14_6_CYINIT_5017 : STD_LOGIC; 
  signal romSkye_addr14_6_CY0F_5016 : STD_LOGIC; 
  signal romSkye_addr14_6_XORG_5006 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_6_Q : STD_LOGIC; 
  signal romSkye_addr14_6_CYSELF_5004 : STD_LOGIC; 
  signal romSkye_addr14_6_CYMUXFAST_5003 : STD_LOGIC; 
  signal romSkye_addr14_6_CYAND_5002 : STD_LOGIC; 
  signal romSkye_addr14_6_FASTCARRY_5001 : STD_LOGIC; 
  signal romSkye_addr14_6_CYMUXG2_5000 : STD_LOGIC; 
  signal romSkye_addr14_6_CYMUXF2_4999 : STD_LOGIC; 
  signal romSkye_addr14_6_CY0G_4998 : STD_LOGIC; 
  signal romSkye_addr14_6_CYSELG_4990 : STD_LOGIC; 
  signal romSkye_addr14_8_XORF_5057 : STD_LOGIC; 
  signal romSkye_addr14_8_CYINIT_5056 : STD_LOGIC; 
  signal romSkye_addr14_8_CY0F_5055 : STD_LOGIC; 
  signal romSkye_addr14_8_XORG_5045 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_8_Q : STD_LOGIC; 
  signal romSkye_addr14_8_CYSELF_5043 : STD_LOGIC; 
  signal romSkye_addr14_8_CYMUXFAST_5042 : STD_LOGIC; 
  signal romSkye_addr14_8_CYAND_5041 : STD_LOGIC; 
  signal romSkye_addr14_8_FASTCARRY_5040 : STD_LOGIC; 
  signal romSkye_addr14_8_CYMUXG2_5039 : STD_LOGIC; 
  signal romSkye_addr14_8_CYMUXF2_5038 : STD_LOGIC; 
  signal romSkye_addr14_8_CY0G_5037 : STD_LOGIC; 
  signal romSkye_addr14_8_CYSELG_5029 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5102 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5101 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5088 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5087 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5086 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_Q : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5084 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5083 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5082 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5081 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5080 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5079 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5069 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5067 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5143 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5142 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5141 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5140 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5139 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5130 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5125 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5124 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5123 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr20_addsub0001_13_rt_5120 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5112 : STD_LOGIC; 
  signal romMona_addr14_2_XORF_5181 : STD_LOGIC; 
  signal romMona_addr14_2_CYINIT_5180 : STD_LOGIC; 
  signal romMona_addr14_2_CY0F_5179 : STD_LOGIC; 
  signal romMona_addr14_2_CYSELF_5171 : STD_LOGIC; 
  signal romMona_addr14_2_BXINV_5169 : STD_LOGIC; 
  signal romMona_addr14_2_XORG_5167 : STD_LOGIC; 
  signal romMona_addr14_2_CYMUXG_5166 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_2_Q : STD_LOGIC; 
  signal romMona_addr14_2_CY0G_5164 : STD_LOGIC; 
  signal romMona_addr14_2_CYSELG_5156 : STD_LOGIC; 
  signal romMona_addr14_4_XORF_5220 : STD_LOGIC; 
  signal romMona_addr14_4_CYINIT_5219 : STD_LOGIC; 
  signal romMona_addr14_4_CY0F_5218 : STD_LOGIC; 
  signal romMona_addr14_4_XORG_5208 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_4_Q : STD_LOGIC; 
  signal romMona_addr14_4_CYSELF_5206 : STD_LOGIC; 
  signal romMona_addr14_4_CYMUXFAST_5205 : STD_LOGIC; 
  signal romMona_addr14_4_CYAND_5204 : STD_LOGIC; 
  signal romMona_addr14_4_FASTCARRY_5203 : STD_LOGIC; 
  signal romMona_addr14_4_CYMUXG2_5202 : STD_LOGIC; 
  signal romMona_addr14_4_CYMUXF2_5201 : STD_LOGIC; 
  signal romMona_addr14_4_CY0G_5200 : STD_LOGIC; 
  signal romMona_addr14_4_CYSELG_5192 : STD_LOGIC; 
  signal romMona_addr14_6_XORF_5259 : STD_LOGIC; 
  signal romMona_addr14_6_CYINIT_5258 : STD_LOGIC; 
  signal romMona_addr14_6_CY0F_5257 : STD_LOGIC; 
  signal romMona_addr14_6_XORG_5247 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_6_Q : STD_LOGIC; 
  signal romMona_addr14_6_CYSELF_5245 : STD_LOGIC; 
  signal romMona_addr14_6_CYMUXFAST_5244 : STD_LOGIC; 
  signal romMona_addr14_6_CYAND_5243 : STD_LOGIC; 
  signal romMona_addr14_6_FASTCARRY_5242 : STD_LOGIC; 
  signal romMona_addr14_6_CYMUXG2_5241 : STD_LOGIC; 
  signal romMona_addr14_6_CYMUXF2_5240 : STD_LOGIC; 
  signal romMona_addr14_6_CY0G_5239 : STD_LOGIC; 
  signal romMona_addr14_6_CYSELG_5231 : STD_LOGIC; 
  signal romMona_addr14_8_XORF_5298 : STD_LOGIC; 
  signal romMona_addr14_8_CYINIT_5297 : STD_LOGIC; 
  signal romMona_addr14_8_CY0F_5296 : STD_LOGIC; 
  signal romMona_addr14_8_XORG_5286 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_8_Q : STD_LOGIC; 
  signal romMona_addr14_8_CYSELF_5284 : STD_LOGIC; 
  signal romMona_addr14_8_CYMUXFAST_5283 : STD_LOGIC; 
  signal romMona_addr14_8_CYAND_5282 : STD_LOGIC; 
  signal romMona_addr14_8_FASTCARRY_5281 : STD_LOGIC; 
  signal romMona_addr14_8_CYMUXG2_5280 : STD_LOGIC; 
  signal romMona_addr14_8_CYMUXF2_5279 : STD_LOGIC; 
  signal romMona_addr14_8_CY0G_5278 : STD_LOGIC; 
  signal romMona_addr14_8_CYSELG_5270 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5343 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5342 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5329 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5328 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5327 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_Q : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5325 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5324 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5323 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5322 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5321 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5320 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5310 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5308 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5384 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5383 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5382 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5381 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5380 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5371 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5366 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5365 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5364 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr21_addsub0001_13_rt_5361 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5353 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_XORF_5422 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CYINIT_5421 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CY0F_5420 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CYSELF_5412 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_BXINV_5410 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_XORG_5408 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CYMUXG_5407 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_3_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CY0G_5405 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_6_CYSELG_5397 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_XORF_5461 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYINIT_5460 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CY0F_5459 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_XORG_5449 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_5_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYSELF_5447 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYMUXFAST_5446 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYAND_5445 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_FASTCARRY_5444 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYMUXG2_5443 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYMUXF2_5442 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CY0G_5441 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_8_CYSELG_5433 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_XORF_5500 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYINIT_5499 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CY0F_5498 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_XORG_5488 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_7_Q : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYSELF_5486 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYMUXFAST_5485 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYAND_5484 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_FASTCARRY_5483 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYMUXG2_5482 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYMUXF2_5481 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CY0G_5480 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_10_CYSELG_5472 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_12_XORF_5531 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_12_CYINIT_5530 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_12_CY0F_5529 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_12_CYSELF_5521 : STD_LOGIC; 
  signal vga_sprite_rom_addr2_addsub0000_12_XORG_5518 : STD_LOGIC; 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_9_Q : STD_LOGIC; 
  signal romRey_addr14_0_XORF_5567 : STD_LOGIC; 
  signal romRey_addr14_0_LOGIC_ZERO_5566 : STD_LOGIC; 
  signal romRey_addr14_0_CYINIT_5565 : STD_LOGIC; 
  signal romRey_addr14_0_CYSELF_5556 : STD_LOGIC; 
  signal romRey_addr14_0_F : STD_LOGIC; 
  signal romRey_addr14_0_BXINV_5554 : STD_LOGIC; 
  signal romRey_addr14_0_XORG_5552 : STD_LOGIC; 
  signal romRey_addr14_0_CYMUXG_5551 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_0_Q : STD_LOGIC; 
  signal romRey_addr14_0_LOGIC_ONE_5549 : STD_LOGIC; 
  signal romRey_addr14_0_CYSELG_5540 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_1_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_XORF_5605 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYINIT_5604 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_2_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_XORG_5593 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYSELF_5591 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYMUXFAST_5590 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYAND_5589 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_FASTCARRY_5588 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYMUXG2_5587 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYMUXF2_5586 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_LOGIC_ONE_5585 : STD_LOGIC; 
  signal vga_sprite_xpixRey_2_CYSELG_5576 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_3_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_XORF_5643 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYINIT_5642 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_F : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_XORG_5631 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYSELF_5629 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYMUXFAST_5628 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYAND_5627 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_FASTCARRY_5626 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYMUXG2_5625 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYMUXF2_5624 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_LOGIC_ONE_5623 : STD_LOGIC; 
  signal vga_sprite_xpixRey_4_CYSELG_5615 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_5_Q_5614 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_XORF_5681 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYINIT_5680 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_6_Q_5673 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_XORG_5671 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYSELF_5669 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYMUXFAST_5668 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYAND_5667 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_FASTCARRY_5666 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYMUXG2_5665 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYMUXF2_5664 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_LOGIC_ONE_5663 : STD_LOGIC; 
  signal vga_sprite_xpixRey_6_CYSELG_5657 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_7_Q_5656 : STD_LOGIC; 
  signal vga_sprite_xpixRey_8_XORF_5712 : STD_LOGIC; 
  signal vga_sprite_xpixRey_8_LOGIC_ONE_5711 : STD_LOGIC; 
  signal vga_sprite_xpixRey_8_CYINIT_5710 : STD_LOGIC; 
  signal vga_sprite_xpixRey_8_CYSELF_5703 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_lut_8_Q_5702 : STD_LOGIC; 
  signal vga_sprite_xpixRey_8_XORG_5700 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_Q_5697 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ZERO_5743 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYINIT_5742 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELF_5733 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_F : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_BXINV_5731 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYMUXG_5730 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ONE_5728 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELG_5722 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0F_5774 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELF_5765 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXFAST_5764 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYAND_5763 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_FASTCARRY_5762 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXG2_5761 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXF2_5760 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0G_5759 : STD_LOGIC; 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELG_5752 : STD_LOGIC; 
  signal N23_CYINIT_5801 : STD_LOGIC; 
  signal N23_CY0F_5800 : STD_LOGIC; 
  signal N23_CYSELF_5793 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_XORF_5835 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_CYINIT_5834 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_CYSELF_5825 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_F : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_BXINV_5823 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_XORG_5821 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_CYMUXG_5820 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_LOGIC_ZERO_5818 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_CYSELG_5809 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_0_G : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_XORF_5873 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYINIT_5872 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_F : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_XORG_5861 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYSELF_5859 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYMUXFAST_5858 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYAND_5857 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_FASTCARRY_5856 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYMUXG2_5855 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYMUXF2_5854 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_CYSELG_5844 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_2_G : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_XORF_5912 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO_5911 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYINIT_5910 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_F : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_XORG_5899 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYSELF_5897 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYMUXFAST_5896 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYAND_5895 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_FASTCARRY_5894 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYMUXG2_5893 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYMUXF2_5892 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_LOGIC_ONE_5891 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_4_CYSELG_5882 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_XORF_5950 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYINIT_5949 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_XORG_5938 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYSELF_5936 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYMUXFAST_5935 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYAND_5934 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_FASTCARRY_5933 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYMUXG2_5932 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYMUXF2_5931 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_6_CYSELG_5921 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_8_XORF_5981 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_8_LOGIC_ONE_5980 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_8_CYINIT_5979 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_8_CYSELF_5970 : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000_8_XORG_5967 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixRey_sub0000_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_XORF_6017 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_LOGIC_ZERO_6016 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_CYINIT_6015 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_CYSELF_6006 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_F : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_BXINV_6004 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_XORG_6002 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_CYMUXG_6001 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_LOGIC_ONE_5999 : STD_LOGIC; 
  signal vga_sprite_ypixMona_0_CYSELG_5990 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_XORF_6055 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYINIT_6054 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_XORG_6043 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYSELF_6041 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYMUXFAST_6040 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYAND_6039 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_FASTCARRY_6038 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYMUXG2_6037 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYMUXF2_6036 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_LOGIC_ONE_6035 : STD_LOGIC; 
  signal vga_sprite_ypixMona_2_CYSELG_6026 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_XORF_6093 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYINIT_6092 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_XORG_6081 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYSELF_6079 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYMUXFAST_6078 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYAND_6077 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_FASTCARRY_6076 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYMUXG2_6075 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYMUXF2_6074 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_LOGIC_ONE_6073 : STD_LOGIC; 
  signal vga_sprite_ypixMona_4_CYSELG_6064 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_XORF_6132 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_LOGIC_ONE_6131 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYINIT_6130 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_XORG_6119 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYSELF_6117 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYMUXFAST_6116 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYAND_6115 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_FASTCARRY_6114 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYMUXG2_6113 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYMUXF2_6112 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CY0G_6111 : STD_LOGIC; 
  signal vga_sprite_ypixMona_6_CYSELG_6103 : STD_LOGIC; 
  signal vga_sprite_ypixMona_8_XORF_6163 : STD_LOGIC; 
  signal vga_sprite_ypixMona_8_CYINIT_6162 : STD_LOGIC; 
  signal vga_sprite_ypixMona_8_CY0F_6161 : STD_LOGIC; 
  signal vga_sprite_ypixMona_8_CYSELF_6153 : STD_LOGIC; 
  signal vga_sprite_ypixMona_8_XORG_6150 : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_Msub_ypixMona_lut_9_1 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_6194 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYINIT_6193 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELF_6184 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_F : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_BXINV_6182 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYMUXG_6181 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ONE_6179 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELG_6173 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0F_6225 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELF_6216 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXFAST_6215 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYAND_6214 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_FASTCARRY_6213 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXG2_6212 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXF2_6211 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0G_6210 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELG_6203 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYINIT_6240 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CY0F_6239 : STD_LOGIC; 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYSELF_6232 : STD_LOGIC; 
  signal romSkye_addr14_0_XORF_6275 : STD_LOGIC; 
  signal romSkye_addr14_0_LOGIC_ZERO_6274 : STD_LOGIC; 
  signal romSkye_addr14_0_CYINIT_6273 : STD_LOGIC; 
  signal romSkye_addr14_0_CYSELF_6264 : STD_LOGIC; 
  signal romSkye_addr14_0_F : STD_LOGIC; 
  signal romSkye_addr14_0_BXINV_6262 : STD_LOGIC; 
  signal romSkye_addr14_0_XORG_6260 : STD_LOGIC; 
  signal romSkye_addr14_0_CYMUXG_6259 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_0_Q : STD_LOGIC; 
  signal romSkye_addr14_0_LOGIC_ONE_6257 : STD_LOGIC; 
  signal romSkye_addr14_0_CYSELG_6248 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_1_Q : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_XORF_6313 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYINIT_6312 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_F : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_XORG_6301 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_2_Q : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYSELF_6299 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYMUXFAST_6298 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYAND_6297 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_FASTCARRY_6296 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYMUXG2_6295 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYMUXF2_6294 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_LOGIC_ZERO_6293 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_CYSELG_6284 : STD_LOGIC; 
  signal vga_sprite_xpixMona_2_G : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_XORF_6352 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_LOGIC_ONE_6351 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYINIT_6350 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_F : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_XORG_6339 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_4_Q : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYSELF_6337 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYMUXFAST_6336 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYAND_6335 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_FASTCARRY_6334 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYMUXG2_6333 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYMUXF2_6332 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_LOGIC_ZERO_6331 : STD_LOGIC; 
  signal vga_sprite_xpixMona_4_CYSELG_6323 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_5_11 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_XORF_6390 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYINIT_6389 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_6_Q_6382 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_XORG_6380 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_6_Q : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYSELF_6378 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYMUXFAST_6377 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYAND_6376 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_FASTCARRY_6375 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYMUXG2_6374 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYMUXF2_6373 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_LOGIC_ONE_6372 : STD_LOGIC; 
  signal vga_sprite_xpixMona_6_CYSELG_6366 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_7_Q_6365 : STD_LOGIC; 
  signal vga_sprite_xpixMona_8_XORF_6421 : STD_LOGIC; 
  signal vga_sprite_xpixMona_8_LOGIC_ZERO_6420 : STD_LOGIC; 
  signal vga_sprite_xpixMona_8_CYINIT_6419 : STD_LOGIC; 
  signal vga_sprite_xpixMona_8_CYSELF_6412 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixRey_sub0000_xor_8_11 : STD_LOGIC; 
  signal vga_sprite_xpixMona_8_XORG_6409 : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_cy_8_Q : STD_LOGIC; 
  signal vga_sprite_Msub_xpixMona_lut_9_1_6406 : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal blue_0_O : STD_LOGIC; 
  signal blue_1_O : STD_LOGIC; 
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
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT : STD_LOGIC;
 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0 : STD_LOGIC; 
  signal blue_0_OBUF_F5MUX_7328 : STD_LOGIC; 
  signal blue_0_OBUF_BXINV_7320 : STD_LOGIC; 
  signal vga_sprite_blue_0_1_7318 : STD_LOGIC; 
  signal blue_1_OBUF_F5MUX_7353 : STD_LOGIC; 
  signal blue_1_OBUF_BXINV_7345 : STD_LOGIC; 
  signal vga_sprite_blue_1_1_7343 : STD_LOGIC; 
  signal U2_vidon_and0000111_F5MUX_7378 : STD_LOGIC; 
  signal U2_vidon_and00001111_7376 : STD_LOGIC; 
  signal U2_vidon_and0000111_BXINV_7371 : STD_LOGIC; 
  signal U2_vidon_and00001112_7369 : STD_LOGIC; 
  signal red_0_OBUF_F5MUX_7403 : STD_LOGIC; 
  signal red_0_OBUF_BXINV_7395 : STD_LOGIC; 
  signal vga_sprite_red_0_1_7393 : STD_LOGIC; 
  signal red_1_OBUF_F5MUX_7428 : STD_LOGIC; 
  signal red_1_OBUF_BXINV_7420 : STD_LOGIC; 
  signal vga_sprite_red_1_1_7418 : STD_LOGIC; 
  signal red_2_OBUF_F5MUX_7453 : STD_LOGIC; 
  signal red_2_OBUF_BXINV_7445 : STD_LOGIC; 
  signal vga_sprite_red_2_1_7443 : STD_LOGIC; 
  signal vga_sprite_redMona_and00006_F5MUX_7478 : STD_LOGIC; 
  signal vga_sprite_redMona_and000061_7476 : STD_LOGIC; 
  signal vga_sprite_redMona_and00006_BXINV_7471 : STD_LOGIC; 
  signal vga_sprite_redMona_and00006_G : STD_LOGIC; 
  signal vga_sprite_redMona_and000023_F5MUX_7503 : STD_LOGIC; 
  signal vga_sprite_redMona_and0000231_7501 : STD_LOGIC; 
  signal vga_sprite_redMona_and000023_BXINV_7495 : STD_LOGIC; 
  signal vga_sprite_redMona_and0000232_7493 : STD_LOGIC; 
  signal vga_sprite_skye_and000037_F5MUX_7528 : STD_LOGIC; 
  signal vga_sprite_skye_and000037_F : STD_LOGIC; 
  signal vga_sprite_skye_and000037_BXINV_7517 : STD_LOGIC; 
  signal vga_sprite_skye_and0000371_7515 : STD_LOGIC; 
  signal N27_F5MUX_7553 : STD_LOGIC; 
  signal N27_F : STD_LOGIC; 
  signal N27_BXINV_7542 : STD_LOGIC; 
  signal U2_vidon_and000018_SW0 : STD_LOGIC; 
  signal green_0_OBUF_F5MUX_7578 : STD_LOGIC; 
  signal green_0_OBUF_BXINV_7570 : STD_LOGIC; 
  signal vga_sprite_green_0_1_7568 : STD_LOGIC; 
  signal green_1_OBUF_F5MUX_7603 : STD_LOGIC; 
  signal green_1_OBUF_BXINV_7595 : STD_LOGIC; 
  signal vga_sprite_green_1_1_7593 : STD_LOGIC; 
  signal green_2_OBUF_F5MUX_7628 : STD_LOGIC; 
  signal green_2_OBUF_BXINV_7620 : STD_LOGIC; 
  signal vga_sprite_green_2_1_7618 : STD_LOGIC; 
  signal U2_VSENABLE_DXMUX_7658 : STD_LOGIC; 
  signal U2_HCS_cmp_eq0000 : STD_LOGIC; 
  signal U2_HCS_cmp_eq000010_pack_1 : STD_LOGIC; 
  signal U2_VSENABLE_CLKINV_7641 : STD_LOGIC; 
  signal U2_VSENABLE_CEINVNOT : STD_LOGIC; 
  signal U2_vcs_0_DXMUX_7693 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_pack_2 : STD_LOGIC; 
  signal U2_vcs_0_CLKINV_7675 : STD_LOGIC; 
  signal U2_vcs_0_CEINV_7674 : STD_LOGIC; 
  signal U2_HCS_cmp_eq00005_7722 : STD_LOGIC; 
  signal U2_N3_pack_1 : STD_LOGIC; 
  signal U1_q_01_DXMUX_7745 : STD_LOGIC; 
  signal U1_q_01_XORF_7743 : STD_LOGIC; 
  signal U1_q_01_CYINIT_7742 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_rt_7740 : STD_LOGIC; 
  signal U1_q_01_BXINV_7732 : STD_LOGIC; 
  signal U1_q_01_CLKINV_7730 : STD_LOGIC; 
  signal U2_HCS_1_DXMUX_7787 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_1 : STD_LOGIC; 
  signal U2_HCS_1_DYMUX_7772 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_0 : STD_LOGIC; 
  signal U2_HCS_1_SRINV_7763 : STD_LOGIC; 
  signal U2_HCS_1_CLKINV_7762 : STD_LOGIC; 
  signal U2_HCS_3_DXMUX_7829 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_3 : STD_LOGIC; 
  signal U2_HCS_3_DYMUX_7814 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_2 : STD_LOGIC; 
  signal U2_HCS_3_SRINV_7805 : STD_LOGIC; 
  signal U2_HCS_3_CLKINV_7804 : STD_LOGIC; 
  signal U2_HCS_5_DXMUX_7871 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_5 : STD_LOGIC; 
  signal U2_HCS_5_DYMUX_7856 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_4 : STD_LOGIC; 
  signal U2_HCS_5_SRINV_7847 : STD_LOGIC; 
  signal U2_HCS_5_CLKINV_7846 : STD_LOGIC; 
  signal U2_HCS_7_DXMUX_7913 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_7 : STD_LOGIC; 
  signal U2_HCS_7_DYMUX_7898 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_6 : STD_LOGIC; 
  signal U2_HCS_7_SRINV_7889 : STD_LOGIC; 
  signal U2_HCS_7_CLKINV_7888 : STD_LOGIC; 
  signal U2_HCS_9_DXMUX_7955 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_9 : STD_LOGIC; 
  signal U2_HCS_9_DYMUX_7940 : STD_LOGIC; 
  signal U2_Mcount_HCS_eqn_8 : STD_LOGIC; 
  signal U2_HCS_9_SRINV_7931 : STD_LOGIC; 
  signal U2_HCS_9_CLKINV_7930 : STD_LOGIC; 
  signal U2_vcs_1_DYMUX_7980 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal U2_vcs_1_CLKINV_7969 : STD_LOGIC; 
  signal U2_vcs_1_CEINV_7968 : STD_LOGIC; 
  signal U2_vcs_3_DXMUX_8026 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal U2_vcs_3_DYMUX_8009 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal U2_vcs_3_SRINV_7999 : STD_LOGIC; 
  signal U2_vcs_3_CLKINV_7998 : STD_LOGIC; 
  signal U2_vcs_3_CEINV_7997 : STD_LOGIC; 
  signal U2_vcs_5_DXMUX_8072 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal U2_vcs_5_DYMUX_8055 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal U2_vcs_5_SRINV_8045 : STD_LOGIC; 
  signal U2_vcs_5_CLKINV_8044 : STD_LOGIC; 
  signal U2_vcs_5_CEINV_8043 : STD_LOGIC; 
  signal U2_vcs_7_DXMUX_8118 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal U2_vcs_7_DYMUX_8101 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal U2_vcs_7_SRINV_8091 : STD_LOGIC; 
  signal U2_vcs_7_CLKINV_8090 : STD_LOGIC; 
  signal U2_vcs_7_CEINV_8089 : STD_LOGIC; 
  signal U2_vcs_9_DXMUX_8164 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal U2_vcs_9_DYMUX_8147 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal U2_vcs_9_SRINV_8137 : STD_LOGIC; 
  signal U2_vcs_9_CLKINV_8136 : STD_LOGIC; 
  signal U2_vcs_9_CEINV_8135 : STD_LOGIC; 
  signal vga_sprite_skye : STD_LOGIC; 
  signal vga_sprite_skye_and000084_pack_1 : STD_LOGIC; 
  signal vga_sprite_blue_0_1104_8217 : STD_LOGIC; 
  signal N31_pack_1 : STD_LOGIC; 
  signal vga_sprite_mona : STD_LOGIC; 
  signal vga_sprite_redMona_and0000127_pack_1 : STD_LOGIC; 
  signal vga_sprite_redMona_and0000116_8265 : STD_LOGIC; 
  signal vga_sprite_redMona_and000081_pack_1 : STD_LOGIC; 
  signal hsync_OBUF_8289 : STD_LOGIC; 
  signal vga_sprite_redMona_and000098_8281 : STD_LOGIC; 
  signal U2_vidon_and000018_8325 : STD_LOGIC; 
  signal U2_vidon_and000011_pack_1 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal U2_vidon_and000057_pack_1 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal U2_vidon_and000059_pack_1 : STD_LOGIC; 
  signal U2_vidon_and000098_8397 : STD_LOGIC; 
  signal U2_vidon_and000094_8389 : STD_LOGIC; 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2 : STD_LOGIC; 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2 : STD_LOGIC; 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2 : STD_LOGIC; 
  signal vsync_OBUF_8529 : STD_LOGIC; 
  signal U2_N2_pack_1 : STD_LOGIC; 
  signal vga_sprite_skye_and000023_8553 : STD_LOGIC; 
  signal N25_pack_1 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N33_pack_1 : STD_LOGIC; 
  signal vga_sprite_blue_0_121_8601 : STD_LOGIC; 
  signal N55_pack_1 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N35_pack_1 : STD_LOGIC; 
  signal vga_sprite_skye_and000067_8649 : STD_LOGIC; 
  signal N53_pack_1 : STD_LOGIC; 
  signal vga_sprite_blue_0_1145_8925 : STD_LOGIC; 
  signal vga_sprite_blue_0_1117_pack_1 : STD_LOGIC; 
  signal vga_sprite_blue_0_17_8949 : STD_LOGIC; 
  signal vga_sprite_blue_0_188_8942 : STD_LOGIC; 
  signal U2_vcs_0_FFX_RSTAND_7699 : STD_LOGIC; 
  signal U1_q_01_FFX_RSTAND_7750 : STD_LOGIC; 
  signal U2_vcs_1_FFY_RSTAND_7986 : STD_LOGIC; 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal vga_sprite_ypixRey_sub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixRey : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixMona : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_rom_addr21_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_rom_addr21_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_ypixSkye : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sprite_xpixRey : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal romRey_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_sprite_rom_addr2_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_rom_addr20_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_HCS : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal romMona_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal romSkye_addr14 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_sprite_xpixSkye : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_rom_addr2_addsub0000 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_rom_addr20_addsub0001 : STD_LOGIC_VECTOR ( 13 downto 5 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_xpixMona : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_Msub_ypixRey_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_Msub_ypixSkye_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal vga_sprite_Msub_ypixMona_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_sprite_Madd_rom_addr2_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal U2_Mcount_HCS_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 5 ); 
  signal vga_sprite_Madd_rom_addr20_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr21_add0000_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_Msub_ypixRey_sub0000_lut : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal vga_sprite_blue : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal vga_sprite_red : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sprite_green : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal MRey : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MMona : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MSkye : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  vga_sprite_ypixRey_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      O => vga_sprite_ypixRey_0_LOGIC_ONE_2890
    );
  vga_sprite_ypixRey_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      O => vga_sprite_ypixRey_0_LOGIC_ZERO_2907
    );
  vga_sprite_ypixRey_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_0_XORF_2908,
      O => vga_sprite_ypixRey(0)
    );
  vga_sprite_ypixRey_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      I0 => vga_sprite_ypixRey_0_CYINIT_2906,
      I1 => vga_sprite_ypixRey_0_F,
      O => vga_sprite_ypixRey_0_XORF_2908
    );
  vga_sprite_ypixRey_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      IA => vga_sprite_ypixRey_0_LOGIC_ZERO_2907,
      IB => vga_sprite_ypixRey_0_CYINIT_2906,
      SEL => vga_sprite_ypixRey_0_CYSELF_2897,
      O => vga_sprite_Msub_ypixRey_cy_0_Q
    );
  vga_sprite_ypixRey_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_0_BXINV_2895,
      O => vga_sprite_ypixRey_0_CYINIT_2906
    );
  vga_sprite_ypixRey_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_0_F,
      O => vga_sprite_ypixRey_0_CYSELF_2897
    );
  vga_sprite_ypixRey_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_ypixRey_0_BXINV_2895
    );
  vga_sprite_ypixRey_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_0_XORG_2893,
      O => vga_sprite_ypixRey(1)
    );
  vga_sprite_ypixRey_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_cy_0_Q,
      I1 => vga_sprite_Msub_ypixRey_lut(1),
      O => vga_sprite_ypixRey_0_XORG_2893
    );
  vga_sprite_ypixRey_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_0_CYMUXG_2892,
      O => vga_sprite_Msub_ypixRey_cy_1_Q
    );
  vga_sprite_ypixRey_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y40"
    )
    port map (
      IA => vga_sprite_ypixRey_0_LOGIC_ONE_2890,
      IB => vga_sprite_Msub_ypixRey_cy_0_Q,
      SEL => vga_sprite_ypixRey_0_CYSELG_2881,
      O => vga_sprite_ypixRey_0_CYMUXG_2892
    );
  vga_sprite_ypixRey_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(1),
      O => vga_sprite_ypixRey_0_CYSELG_2881
    );
  vga_sprite_ypixRey_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      O => vga_sprite_ypixRey_2_LOGIC_ONE_2926
    );
  vga_sprite_ypixRey_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_2_XORF_2946,
      O => vga_sprite_ypixRey(2)
    );
  vga_sprite_ypixRey_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      I0 => vga_sprite_ypixRey_2_CYINIT_2945,
      I1 => vga_sprite_Msub_ypixRey_lut(2),
      O => vga_sprite_ypixRey_2_XORF_2946
    );
  vga_sprite_ypixRey_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      IA => vga_sprite_ypixRey_2_LOGIC_ONE_2926,
      IB => vga_sprite_ypixRey_2_CYINIT_2945,
      SEL => vga_sprite_ypixRey_2_CYSELF_2932,
      O => vga_sprite_Msub_ypixRey_cy_2_Q
    );
  vga_sprite_ypixRey_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      IA => vga_sprite_ypixRey_2_LOGIC_ONE_2926,
      IB => vga_sprite_ypixRey_2_LOGIC_ONE_2926,
      SEL => vga_sprite_ypixRey_2_CYSELF_2932,
      O => vga_sprite_ypixRey_2_CYMUXF2_2927
    );
  vga_sprite_ypixRey_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_1_Q,
      O => vga_sprite_ypixRey_2_CYINIT_2945
    );
  vga_sprite_ypixRey_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(2),
      O => vga_sprite_ypixRey_2_CYSELF_2932
    );
  vga_sprite_ypixRey_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_2_XORG_2934,
      O => vga_sprite_ypixRey(3)
    );
  vga_sprite_ypixRey_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_cy_2_Q,
      I1 => vga_sprite_Msub_ypixRey_lut(3),
      O => vga_sprite_ypixRey_2_XORG_2934
    );
  vga_sprite_ypixRey_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_2_CYMUXFAST_2931,
      O => vga_sprite_Msub_ypixRey_cy_3_Q
    );
  vga_sprite_ypixRey_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_1_Q,
      O => vga_sprite_ypixRey_2_FASTCARRY_2929
    );
  vga_sprite_ypixRey_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      I0 => vga_sprite_ypixRey_2_CYSELG_2917,
      I1 => vga_sprite_ypixRey_2_CYSELF_2932,
      O => vga_sprite_ypixRey_2_CYAND_2930
    );
  vga_sprite_ypixRey_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      IA => vga_sprite_ypixRey_2_CYMUXG2_2928,
      IB => vga_sprite_ypixRey_2_FASTCARRY_2929,
      SEL => vga_sprite_ypixRey_2_CYAND_2930,
      O => vga_sprite_ypixRey_2_CYMUXFAST_2931
    );
  vga_sprite_ypixRey_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y41"
    )
    port map (
      IA => vga_sprite_ypixRey_2_LOGIC_ONE_2926,
      IB => vga_sprite_ypixRey_2_CYMUXF2_2927,
      SEL => vga_sprite_ypixRey_2_CYSELG_2917,
      O => vga_sprite_ypixRey_2_CYMUXG2_2928
    );
  vga_sprite_ypixRey_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(3),
      O => vga_sprite_ypixRey_2_CYSELG_2917
    );
  vga_sprite_ypixRey_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      O => vga_sprite_ypixRey_4_LOGIC_ONE_2964
    );
  vga_sprite_ypixRey_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_4_XORF_2984,
      O => vga_sprite_ypixRey(4)
    );
  vga_sprite_ypixRey_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      I0 => vga_sprite_ypixRey_4_CYINIT_2983,
      I1 => vga_sprite_Msub_ypixRey_lut(4),
      O => vga_sprite_ypixRey_4_XORF_2984
    );
  vga_sprite_ypixRey_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      IA => vga_sprite_ypixRey_4_LOGIC_ONE_2964,
      IB => vga_sprite_ypixRey_4_CYINIT_2983,
      SEL => vga_sprite_ypixRey_4_CYSELF_2970,
      O => vga_sprite_Msub_ypixRey_cy_4_Q
    );
  vga_sprite_ypixRey_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      IA => vga_sprite_ypixRey_4_LOGIC_ONE_2964,
      IB => vga_sprite_ypixRey_4_LOGIC_ONE_2964,
      SEL => vga_sprite_ypixRey_4_CYSELF_2970,
      O => vga_sprite_ypixRey_4_CYMUXF2_2965
    );
  vga_sprite_ypixRey_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_3_Q,
      O => vga_sprite_ypixRey_4_CYINIT_2983
    );
  vga_sprite_ypixRey_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(4),
      O => vga_sprite_ypixRey_4_CYSELF_2970
    );
  vga_sprite_ypixRey_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_4_XORG_2972,
      O => vga_sprite_ypixRey(5)
    );
  vga_sprite_ypixRey_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_cy_4_Q,
      I1 => vga_sprite_Msub_ypixRey_lut(5),
      O => vga_sprite_ypixRey_4_XORG_2972
    );
  vga_sprite_ypixRey_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_4_CYMUXFAST_2969,
      O => vga_sprite_Msub_ypixRey_cy_5_Q
    );
  vga_sprite_ypixRey_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_3_Q,
      O => vga_sprite_ypixRey_4_FASTCARRY_2967
    );
  vga_sprite_ypixRey_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      I0 => vga_sprite_ypixRey_4_CYSELG_2955,
      I1 => vga_sprite_ypixRey_4_CYSELF_2970,
      O => vga_sprite_ypixRey_4_CYAND_2968
    );
  vga_sprite_ypixRey_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      IA => vga_sprite_ypixRey_4_CYMUXG2_2966,
      IB => vga_sprite_ypixRey_4_FASTCARRY_2967,
      SEL => vga_sprite_ypixRey_4_CYAND_2968,
      O => vga_sprite_ypixRey_4_CYMUXFAST_2969
    );
  vga_sprite_ypixRey_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y42"
    )
    port map (
      IA => vga_sprite_ypixRey_4_LOGIC_ONE_2964,
      IB => vga_sprite_ypixRey_4_CYMUXF2_2965,
      SEL => vga_sprite_ypixRey_4_CYSELG_2955,
      O => vga_sprite_ypixRey_4_CYMUXG2_2966
    );
  vga_sprite_ypixRey_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(5),
      O => vga_sprite_ypixRey_4_CYSELG_2955
    );
  vga_sprite_Msub_ypixRey_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X45Y42"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_lut(4)
    );
  vga_sprite_Msub_ypixRey_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X45Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(6),
      O => vga_sprite_Msub_ypixRey_lut(6)
    );
  vga_sprite_ypixRey_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      O => vga_sprite_ypixRey_6_LOGIC_ONE_3022
    );
  vga_sprite_ypixRey_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_6_XORF_3023,
      O => vga_sprite_ypixRey(6)
    );
  vga_sprite_ypixRey_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      I0 => vga_sprite_ypixRey_6_CYINIT_3021,
      I1 => vga_sprite_Msub_ypixRey_lut(6),
      O => vga_sprite_ypixRey_6_XORF_3023
    );
  vga_sprite_ypixRey_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      IA => vga_sprite_ypixRey_6_LOGIC_ONE_3022,
      IB => vga_sprite_ypixRey_6_CYINIT_3021,
      SEL => vga_sprite_ypixRey_6_CYSELF_3008,
      O => vga_sprite_Msub_ypixRey_cy_6_Q
    );
  vga_sprite_ypixRey_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      IA => vga_sprite_ypixRey_6_LOGIC_ONE_3022,
      IB => vga_sprite_ypixRey_6_LOGIC_ONE_3022,
      SEL => vga_sprite_ypixRey_6_CYSELF_3008,
      O => vga_sprite_ypixRey_6_CYMUXF2_3003
    );
  vga_sprite_ypixRey_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_5_Q,
      O => vga_sprite_ypixRey_6_CYINIT_3021
    );
  vga_sprite_ypixRey_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(6),
      O => vga_sprite_ypixRey_6_CYSELF_3008
    );
  vga_sprite_ypixRey_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_6_XORG_3010,
      O => vga_sprite_ypixRey(7)
    );
  vga_sprite_ypixRey_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_cy_6_Q,
      I1 => vga_sprite_Msub_ypixRey_lut(7),
      O => vga_sprite_ypixRey_6_XORG_3010
    );
  vga_sprite_ypixRey_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_cy_5_Q,
      O => vga_sprite_ypixRey_6_FASTCARRY_3005
    );
  vga_sprite_ypixRey_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      I0 => vga_sprite_ypixRey_6_CYSELG_2994,
      I1 => vga_sprite_ypixRey_6_CYSELF_3008,
      O => vga_sprite_ypixRey_6_CYAND_3006
    );
  vga_sprite_ypixRey_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      IA => vga_sprite_ypixRey_6_CYMUXG2_3004,
      IB => vga_sprite_ypixRey_6_FASTCARRY_3005,
      SEL => vga_sprite_ypixRey_6_CYAND_3006,
      O => vga_sprite_ypixRey_6_CYMUXFAST_3007
    );
  vga_sprite_ypixRey_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y43"
    )
    port map (
      IA => vga_sprite_ypixRey_6_CY0G_3002,
      IB => vga_sprite_ypixRey_6_CYMUXF2_3003,
      SEL => vga_sprite_ypixRey_6_CYSELG_2994,
      O => vga_sprite_ypixRey_6_CYMUXG2_3004
    );
  vga_sprite_ypixRey_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(7),
      O => vga_sprite_ypixRey_6_CY0G_3002
    );
  vga_sprite_ypixRey_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(7),
      O => vga_sprite_ypixRey_6_CYSELG_2994
    );
  vga_sprite_Msub_ypixRey_lut_7_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X45Y43"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => sw_6_IBUF_2454,
      O => vga_sprite_Msub_ypixRey_lut(7)
    );
  vga_sprite_ypixRey_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_8_XORF_3054,
      O => vga_sprite_ypixRey(8)
    );
  vga_sprite_ypixRey_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      I0 => vga_sprite_ypixRey_8_CYINIT_3053,
      I1 => vga_sprite_Msub_ypixRey_lut(8),
      O => vga_sprite_ypixRey_8_XORF_3054
    );
  vga_sprite_ypixRey_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      IA => vga_sprite_ypixRey_8_CY0F_3052,
      IB => vga_sprite_ypixRey_8_CYINIT_3053,
      SEL => vga_sprite_ypixRey_8_CYSELF_3044,
      O => vga_sprite_Msub_ypixRey_cy_8_Q
    );
  vga_sprite_ypixRey_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_6_CYMUXFAST_3007,
      O => vga_sprite_ypixRey_8_CYINIT_3053
    );
  vga_sprite_ypixRey_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(8),
      O => vga_sprite_ypixRey_8_CY0F_3052
    );
  vga_sprite_ypixRey_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_lut(8),
      O => vga_sprite_ypixRey_8_CYSELF_3044
    );
  vga_sprite_ypixRey_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_8_XORG_3041,
      O => vga_sprite_ypixRey(9)
    );
  vga_sprite_ypixRey_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y44"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_cy_8_Q,
      I1 => vga_sprite_Msub_ypixMona_lut_9_2,
      O => vga_sprite_ypixRey_8_XORG_3041
    );
  vga_sprite_rom_addr21_addsub0001_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_5_XORF_3090,
      O => vga_sprite_rom_addr21_addsub0001(5)
    );
  vga_sprite_rom_addr21_addsub0001_5_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y36"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_5_CYINIT_3089,
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0001_5_XORF_3090
    );
  vga_sprite_rom_addr21_addsub0001_5_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_5_CY0F_3088,
      IB => vga_sprite_rom_addr21_addsub0001_5_CYINIT_3089,
      SEL => vga_sprite_rom_addr21_addsub0001_5_CYSELF_3080,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5)
    );
  vga_sprite_rom_addr21_addsub0001_5_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_5_BXINV_3078,
      O => vga_sprite_rom_addr21_addsub0001_5_CYINIT_3089
    );
  vga_sprite_rom_addr21_addsub0001_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(0),
      O => vga_sprite_rom_addr21_addsub0001_5_CY0F_3088
    );
  vga_sprite_rom_addr21_addsub0001_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0001_5_CYSELF_3080
    );
  vga_sprite_rom_addr21_addsub0001_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr21_addsub0001_5_BXINV_3078
    );
  vga_sprite_rom_addr21_addsub0001_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_5_XORG_3076,
      O => vga_sprite_rom_addr21_addsub0001(6)
    );
  vga_sprite_rom_addr21_addsub0001_5_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y36"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5),
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0001_5_XORG_3076
    );
  vga_sprite_rom_addr21_addsub0001_5_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_5_CYMUXG_3075,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6)
    );
  vga_sprite_rom_addr21_addsub0001_5_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X41Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_5_CY0G_3073,
      IB => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(5),
      SEL => vga_sprite_rom_addr21_addsub0001_5_CYSELG_3065,
      O => vga_sprite_rom_addr21_addsub0001_5_CYMUXG_3075
    );
  vga_sprite_rom_addr21_addsub0001_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(6),
      O => vga_sprite_rom_addr21_addsub0001_5_CY0G_3073
    );
  vga_sprite_rom_addr21_addsub0001_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0001_5_CYSELG_3065
    );
  vga_sprite_rom_addr21_addsub0001_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_7_XORF_3129,
      O => vga_sprite_rom_addr21_addsub0001(7)
    );
  vga_sprite_rom_addr21_addsub0001_7_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_7_CYINIT_3128,
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0001_7_XORF_3129
    );
  vga_sprite_rom_addr21_addsub0001_7_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_7_CY0F_3127,
      IB => vga_sprite_rom_addr21_addsub0001_7_CYINIT_3128,
      SEL => vga_sprite_rom_addr21_addsub0001_7_CYSELF_3115,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(7)
    );
  vga_sprite_rom_addr21_addsub0001_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_7_CY0F_3127,
      IB => vga_sprite_rom_addr21_addsub0001_7_CY0F_3127,
      SEL => vga_sprite_rom_addr21_addsub0001_7_CYSELF_3115,
      O => vga_sprite_rom_addr21_addsub0001_7_CYMUXF2_3110
    );
  vga_sprite_rom_addr21_addsub0001_7_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr21_addsub0001_7_CYINIT_3128
    );
  vga_sprite_rom_addr21_addsub0001_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(7),
      O => vga_sprite_rom_addr21_addsub0001_7_CY0F_3127
    );
  vga_sprite_rom_addr21_addsub0001_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0001_7_CYSELF_3115
    );
  vga_sprite_rom_addr21_addsub0001_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_7_XORG_3117,
      O => vga_sprite_rom_addr21_addsub0001(8)
    );
  vga_sprite_rom_addr21_addsub0001_7_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(7),
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0001_7_XORG_3117
    );
  vga_sprite_rom_addr21_addsub0001_7_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_7_CYMUXFAST_3114,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8)
    );
  vga_sprite_rom_addr21_addsub0001_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr21_addsub0001_7_FASTCARRY_3112
    );
  vga_sprite_rom_addr21_addsub0001_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_7_CYSELG_3101,
      I1 => vga_sprite_rom_addr21_addsub0001_7_CYSELF_3115,
      O => vga_sprite_rom_addr21_addsub0001_7_CYAND_3113
    );
  vga_sprite_rom_addr21_addsub0001_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_7_CYMUXG2_3111,
      IB => vga_sprite_rom_addr21_addsub0001_7_FASTCARRY_3112,
      SEL => vga_sprite_rom_addr21_addsub0001_7_CYAND_3113,
      O => vga_sprite_rom_addr21_addsub0001_7_CYMUXFAST_3114
    );
  vga_sprite_rom_addr21_addsub0001_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y37"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_7_CY0G_3109,
      IB => vga_sprite_rom_addr21_addsub0001_7_CYMUXF2_3110,
      SEL => vga_sprite_rom_addr21_addsub0001_7_CYSELG_3101,
      O => vga_sprite_rom_addr21_addsub0001_7_CYMUXG2_3111
    );
  vga_sprite_rom_addr21_addsub0001_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(8),
      O => vga_sprite_rom_addr21_addsub0001_7_CY0G_3109
    );
  vga_sprite_rom_addr21_addsub0001_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0001_7_CYSELG_3101
    );
  vga_sprite_rom_addr21_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_9_XORF_3168,
      O => vga_sprite_rom_addr21_addsub0001(9)
    );
  vga_sprite_rom_addr21_addsub0001_9_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_9_CYINIT_3167,
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0001_9_XORF_3168
    );
  vga_sprite_rom_addr21_addsub0001_9_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_9_CY0F_3166,
      IB => vga_sprite_rom_addr21_addsub0001_9_CYINIT_3167,
      SEL => vga_sprite_rom_addr21_addsub0001_9_CYSELF_3154,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(9)
    );
  vga_sprite_rom_addr21_addsub0001_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_9_CY0F_3166,
      IB => vga_sprite_rom_addr21_addsub0001_9_CY0F_3166,
      SEL => vga_sprite_rom_addr21_addsub0001_9_CYSELF_3154,
      O => vga_sprite_rom_addr21_addsub0001_9_CYMUXF2_3149
    );
  vga_sprite_rom_addr21_addsub0001_9_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr21_addsub0001_9_CYINIT_3167
    );
  vga_sprite_rom_addr21_addsub0001_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(9),
      O => vga_sprite_rom_addr21_addsub0001_9_CY0F_3166
    );
  vga_sprite_rom_addr21_addsub0001_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0001_9_CYSELF_3154
    );
  vga_sprite_rom_addr21_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_9_XORG_3156,
      O => vga_sprite_rom_addr21_addsub0001(10)
    );
  vga_sprite_rom_addr21_addsub0001_9_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(9),
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr21_addsub0001_9_XORG_3156
    );
  vga_sprite_rom_addr21_addsub0001_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_9_CYMUXFAST_3153,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10)
    );
  vga_sprite_rom_addr21_addsub0001_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr21_addsub0001_9_FASTCARRY_3151
    );
  vga_sprite_rom_addr21_addsub0001_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_9_CYSELG_3140,
      I1 => vga_sprite_rom_addr21_addsub0001_9_CYSELF_3154,
      O => vga_sprite_rom_addr21_addsub0001_9_CYAND_3152
    );
  vga_sprite_rom_addr21_addsub0001_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_9_CYMUXG2_3150,
      IB => vga_sprite_rom_addr21_addsub0001_9_FASTCARRY_3151,
      SEL => vga_sprite_rom_addr21_addsub0001_9_CYAND_3152,
      O => vga_sprite_rom_addr21_addsub0001_9_CYMUXFAST_3153
    );
  vga_sprite_rom_addr21_addsub0001_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y38"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_9_CY0G_3148,
      IB => vga_sprite_rom_addr21_addsub0001_9_CYMUXF2_3149,
      SEL => vga_sprite_rom_addr21_addsub0001_9_CYSELG_3140,
      O => vga_sprite_rom_addr21_addsub0001_9_CYMUXG2_3150
    );
  vga_sprite_rom_addr21_addsub0001_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(10),
      O => vga_sprite_rom_addr21_addsub0001_9_CY0G_3148
    );
  vga_sprite_rom_addr21_addsub0001_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr21_addsub0001_9_CYSELG_3140
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X41Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr21_addsub0000(9),
      ADR2 => vga_sprite_ypixMona(7),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(9)
    );
  vga_sprite_rom_addr21_addsub0001_11_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      O => vga_sprite_rom_addr21_addsub0001_11_LOGIC_ZERO_3187
    );
  vga_sprite_rom_addr21_addsub0001_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_11_XORF_3207,
      O => vga_sprite_rom_addr21_addsub0001(11)
    );
  vga_sprite_rom_addr21_addsub0001_11_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_11_CYINIT_3206,
      I1 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr21_addsub0001_11_XORF_3207
    );
  vga_sprite_rom_addr21_addsub0001_11_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_11_CY0F_3205,
      IB => vga_sprite_rom_addr21_addsub0001_11_CYINIT_3206,
      SEL => vga_sprite_rom_addr21_addsub0001_11_CYSELF_3193,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11)
    );
  vga_sprite_rom_addr21_addsub0001_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_11_CY0F_3205,
      IB => vga_sprite_rom_addr21_addsub0001_11_CY0F_3205,
      SEL => vga_sprite_rom_addr21_addsub0001_11_CYSELF_3193,
      O => vga_sprite_rom_addr21_addsub0001_11_CYMUXF2_3188
    );
  vga_sprite_rom_addr21_addsub0001_11_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr21_addsub0001_11_CYINIT_3206
    );
  vga_sprite_rom_addr21_addsub0001_11_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000(11),
      O => vga_sprite_rom_addr21_addsub0001_11_CY0F_3205
    );
  vga_sprite_rom_addr21_addsub0001_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr21_addsub0001_11_CYSELF_3193
    );
  vga_sprite_rom_addr21_addsub0001_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_11_XORG_3195,
      O => vga_sprite_rom_addr21_addsub0001(12)
    );
  vga_sprite_rom_addr21_addsub0001_11_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(11),
      I1 => vga_sprite_rom_addr21_addsub0001_11_G,
      O => vga_sprite_rom_addr21_addsub0001_11_XORG_3195
    );
  vga_sprite_rom_addr21_addsub0001_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr21_addsub0001_11_FASTCARRY_3190
    );
  vga_sprite_rom_addr21_addsub0001_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_11_CYSELG_3178,
      I1 => vga_sprite_rom_addr21_addsub0001_11_CYSELF_3193,
      O => vga_sprite_rom_addr21_addsub0001_11_CYAND_3191
    );
  vga_sprite_rom_addr21_addsub0001_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_11_CYMUXG2_3189,
      IB => vga_sprite_rom_addr21_addsub0001_11_FASTCARRY_3190,
      SEL => vga_sprite_rom_addr21_addsub0001_11_CYAND_3191,
      O => vga_sprite_rom_addr21_addsub0001_11_CYMUXFAST_3192
    );
  vga_sprite_rom_addr21_addsub0001_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y39"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0001_11_LOGIC_ZERO_3187,
      IB => vga_sprite_rom_addr21_addsub0001_11_CYMUXF2_3188,
      SEL => vga_sprite_rom_addr21_addsub0001_11_CYSELG_3178,
      O => vga_sprite_rom_addr21_addsub0001_11_CYMUXG2_3189
    );
  vga_sprite_rom_addr21_addsub0001_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_11_G,
      O => vga_sprite_rom_addr21_addsub0001_11_CYSELG_3178
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X41Y39"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0000(11),
      ADR1 => vga_sprite_ypixMona(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(11)
    );
  vga_sprite_rom_addr21_addsub0001_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_13_XORF_3222,
      O => vga_sprite_rom_addr21_addsub0001(13)
    );
  vga_sprite_rom_addr21_addsub0001_13_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y40"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0001_13_CYINIT_3221,
      I1 => vga_sprite_rom_addr21_addsub0000_13_rt_3219,
      O => vga_sprite_rom_addr21_addsub0001_13_XORF_3222
    );
  vga_sprite_rom_addr21_addsub0001_13_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001_11_CYMUXFAST_3192,
      O => vga_sprite_rom_addr21_addsub0001_13_CYINIT_3221
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X51Y32"
    )
    port map (
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ONE_3238
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y32"
    )
    port map (
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_3253
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y32"
    )
    port map (
      IA => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_3253,
      IB => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYINIT_3252,
      SEL => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELF_3243,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_Q
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_BXINV_3241,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYINIT_3252
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_2_rt_3242,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELF_3243
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_BXINV_3241
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X51Y32"
    )
    port map (
      IA => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_LOGIC_ONE_3238,
      IB => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_0_Q,
      SEL => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELG_3232,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYMUXG_3240
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYSELG_3232
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y33"
    )
    port map (
      IA => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0F_3284,
      IB => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0F_3284,
      SEL => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELF_3275,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXF2_3270
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(7),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0F_3284
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELF_3275
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_1_CYMUXG_3240,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_FASTCARRY_3272
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y33"
    )
    port map (
      I0 => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELG_3262,
      I1 => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELF_3275,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYAND_3273
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y33"
    )
    port map (
      IA => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXG2_3271,
      IB => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_FASTCARRY_3272,
      SEL => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYAND_3273,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXFAST_3274
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y33"
    )
    port map (
      IA => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0G_3269,
      IB => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXF2_3270,
      SEL => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELG_3262,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXG2_3271
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CY0G_3269
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYSELG_3262
    );
  N3_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y34"
    )
    port map (
      IA => N3_CY0F_3310,
      IB => N3_CYINIT_3311,
      SEL => N3_CYSELF_3303,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_4_Q
    );
  N3_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_3_CYMUXFAST_3274,
      O => N3_CYINIT_3311
    );
  N3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => N3_CY0F_3310
    );
  N3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4),
      O => N3_CYSELF_3303
    );
  N3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  vga_sprite_ypixSkye_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      O => vga_sprite_ypixSkye_0_LOGIC_ONE_3328
    );
  vga_sprite_ypixSkye_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      O => vga_sprite_ypixSkye_0_LOGIC_ZERO_3345
    );
  vga_sprite_ypixSkye_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_0_XORF_3346,
      O => vga_sprite_ypixSkye(0)
    );
  vga_sprite_ypixSkye_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      I0 => vga_sprite_ypixSkye_0_CYINIT_3344,
      I1 => vga_sprite_ypixSkye_0_F,
      O => vga_sprite_ypixSkye_0_XORF_3346
    );
  vga_sprite_ypixSkye_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      IA => vga_sprite_ypixSkye_0_LOGIC_ZERO_3345,
      IB => vga_sprite_ypixSkye_0_CYINIT_3344,
      SEL => vga_sprite_ypixSkye_0_CYSELF_3335,
      O => vga_sprite_Msub_ypixSkye_cy_0_Q
    );
  vga_sprite_ypixSkye_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_0_BXINV_3333,
      O => vga_sprite_ypixSkye_0_CYINIT_3344
    );
  vga_sprite_ypixSkye_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_0_F,
      O => vga_sprite_ypixSkye_0_CYSELF_3335
    );
  vga_sprite_ypixSkye_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_ypixSkye_0_BXINV_3333
    );
  vga_sprite_ypixSkye_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_0_XORG_3331,
      O => vga_sprite_ypixSkye(1)
    );
  vga_sprite_ypixSkye_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      I0 => vga_sprite_Msub_ypixSkye_cy_0_Q,
      I1 => vga_sprite_Msub_ypixSkye_lut(1),
      O => vga_sprite_ypixSkye_0_XORG_3331
    );
  vga_sprite_ypixSkye_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_0_CYMUXG_3330,
      O => vga_sprite_Msub_ypixSkye_cy_1_Q
    );
  vga_sprite_ypixSkye_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X47Y22"
    )
    port map (
      IA => vga_sprite_ypixSkye_0_LOGIC_ONE_3328,
      IB => vga_sprite_Msub_ypixSkye_cy_0_Q,
      SEL => vga_sprite_ypixSkye_0_CYSELG_3319,
      O => vga_sprite_ypixSkye_0_CYMUXG_3330
    );
  vga_sprite_ypixSkye_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(1),
      O => vga_sprite_ypixSkye_0_CYSELG_3319
    );
  vga_sprite_ypixSkye_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      O => vga_sprite_ypixSkye_2_LOGIC_ONE_3364
    );
  vga_sprite_ypixSkye_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_2_XORF_3384,
      O => vga_sprite_ypixSkye(2)
    );
  vga_sprite_ypixSkye_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      I0 => vga_sprite_ypixSkye_2_CYINIT_3383,
      I1 => vga_sprite_Msub_ypixSkye_lut(2),
      O => vga_sprite_ypixSkye_2_XORF_3384
    );
  vga_sprite_ypixSkye_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      IA => vga_sprite_ypixSkye_2_LOGIC_ONE_3364,
      IB => vga_sprite_ypixSkye_2_CYINIT_3383,
      SEL => vga_sprite_ypixSkye_2_CYSELF_3370,
      O => vga_sprite_Msub_ypixSkye_cy_2_Q
    );
  vga_sprite_ypixSkye_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      IA => vga_sprite_ypixSkye_2_LOGIC_ONE_3364,
      IB => vga_sprite_ypixSkye_2_LOGIC_ONE_3364,
      SEL => vga_sprite_ypixSkye_2_CYSELF_3370,
      O => vga_sprite_ypixSkye_2_CYMUXF2_3365
    );
  vga_sprite_ypixSkye_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_1_Q,
      O => vga_sprite_ypixSkye_2_CYINIT_3383
    );
  vga_sprite_ypixSkye_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(2),
      O => vga_sprite_ypixSkye_2_CYSELF_3370
    );
  vga_sprite_ypixSkye_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_2_XORG_3372,
      O => vga_sprite_ypixSkye(3)
    );
  vga_sprite_ypixSkye_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      I0 => vga_sprite_Msub_ypixSkye_cy_2_Q,
      I1 => vga_sprite_Msub_ypixSkye_lut(3),
      O => vga_sprite_ypixSkye_2_XORG_3372
    );
  vga_sprite_ypixSkye_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_2_CYMUXFAST_3369,
      O => vga_sprite_Msub_ypixSkye_cy_3_Q
    );
  vga_sprite_ypixSkye_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_1_Q,
      O => vga_sprite_ypixSkye_2_FASTCARRY_3367
    );
  vga_sprite_ypixSkye_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      I0 => vga_sprite_ypixSkye_2_CYSELG_3355,
      I1 => vga_sprite_ypixSkye_2_CYSELF_3370,
      O => vga_sprite_ypixSkye_2_CYAND_3368
    );
  vga_sprite_ypixSkye_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      IA => vga_sprite_ypixSkye_2_CYMUXG2_3366,
      IB => vga_sprite_ypixSkye_2_FASTCARRY_3367,
      SEL => vga_sprite_ypixSkye_2_CYAND_3368,
      O => vga_sprite_ypixSkye_2_CYMUXFAST_3369
    );
  vga_sprite_ypixSkye_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y23"
    )
    port map (
      IA => vga_sprite_ypixSkye_2_LOGIC_ONE_3364,
      IB => vga_sprite_ypixSkye_2_CYMUXF2_3365,
      SEL => vga_sprite_ypixSkye_2_CYSELG_3355,
      O => vga_sprite_ypixSkye_2_CYMUXG2_3366
    );
  vga_sprite_ypixSkye_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(3),
      O => vga_sprite_ypixSkye_2_CYSELG_3355
    );
  vga_sprite_Msub_ypixSkye_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X47Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixRey_sub0000(4),
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(4)
    );
  vga_sprite_ypixSkye_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      O => vga_sprite_ypixSkye_4_LOGIC_ONE_3402
    );
  vga_sprite_ypixSkye_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_4_XORF_3422,
      O => vga_sprite_ypixSkye(4)
    );
  vga_sprite_ypixSkye_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      I0 => vga_sprite_ypixSkye_4_CYINIT_3421,
      I1 => vga_sprite_Msub_ypixSkye_lut(4),
      O => vga_sprite_ypixSkye_4_XORF_3422
    );
  vga_sprite_ypixSkye_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      IA => vga_sprite_ypixSkye_4_LOGIC_ONE_3402,
      IB => vga_sprite_ypixSkye_4_CYINIT_3421,
      SEL => vga_sprite_ypixSkye_4_CYSELF_3408,
      O => vga_sprite_Msub_ypixSkye_cy_4_Q
    );
  vga_sprite_ypixSkye_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      IA => vga_sprite_ypixSkye_4_LOGIC_ONE_3402,
      IB => vga_sprite_ypixSkye_4_LOGIC_ONE_3402,
      SEL => vga_sprite_ypixSkye_4_CYSELF_3408,
      O => vga_sprite_ypixSkye_4_CYMUXF2_3403
    );
  vga_sprite_ypixSkye_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_3_Q,
      O => vga_sprite_ypixSkye_4_CYINIT_3421
    );
  vga_sprite_ypixSkye_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(4),
      O => vga_sprite_ypixSkye_4_CYSELF_3408
    );
  vga_sprite_ypixSkye_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_4_XORG_3410,
      O => vga_sprite_ypixSkye(5)
    );
  vga_sprite_ypixSkye_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      I0 => vga_sprite_Msub_ypixSkye_cy_4_Q,
      I1 => vga_sprite_Msub_ypixSkye_lut(5),
      O => vga_sprite_ypixSkye_4_XORG_3410
    );
  vga_sprite_ypixSkye_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_4_CYMUXFAST_3407,
      O => vga_sprite_Msub_ypixSkye_cy_5_Q
    );
  vga_sprite_ypixSkye_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_3_Q,
      O => vga_sprite_ypixSkye_4_FASTCARRY_3405
    );
  vga_sprite_ypixSkye_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      I0 => vga_sprite_ypixSkye_4_CYSELG_3393,
      I1 => vga_sprite_ypixSkye_4_CYSELF_3408,
      O => vga_sprite_ypixSkye_4_CYAND_3406
    );
  vga_sprite_ypixSkye_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      IA => vga_sprite_ypixSkye_4_CYMUXG2_3404,
      IB => vga_sprite_ypixSkye_4_FASTCARRY_3405,
      SEL => vga_sprite_ypixSkye_4_CYAND_3406,
      O => vga_sprite_ypixSkye_4_CYMUXFAST_3407
    );
  vga_sprite_ypixSkye_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y24"
    )
    port map (
      IA => vga_sprite_ypixSkye_4_LOGIC_ONE_3402,
      IB => vga_sprite_ypixSkye_4_CYMUXF2_3403,
      SEL => vga_sprite_ypixSkye_4_CYSELG_3393,
      O => vga_sprite_ypixSkye_4_CYMUXG2_3404
    );
  vga_sprite_ypixSkye_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(5),
      O => vga_sprite_ypixSkye_4_CYSELG_3393
    );
  vga_sprite_Msub_ypixSkye_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X47Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(5),
      O => vga_sprite_Msub_ypixSkye_lut(5)
    );
  vga_sprite_Msub_ypixSkye_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X47Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(6)
    );
  vga_sprite_ypixSkye_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      O => vga_sprite_ypixSkye_6_LOGIC_ONE_3460
    );
  vga_sprite_ypixSkye_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_6_XORF_3461,
      O => vga_sprite_ypixSkye(6)
    );
  vga_sprite_ypixSkye_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      I0 => vga_sprite_ypixSkye_6_CYINIT_3459,
      I1 => vga_sprite_Msub_ypixSkye_lut(6),
      O => vga_sprite_ypixSkye_6_XORF_3461
    );
  vga_sprite_ypixSkye_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      IA => vga_sprite_ypixSkye_6_LOGIC_ONE_3460,
      IB => vga_sprite_ypixSkye_6_CYINIT_3459,
      SEL => vga_sprite_ypixSkye_6_CYSELF_3446,
      O => vga_sprite_Msub_ypixSkye_cy_6_Q
    );
  vga_sprite_ypixSkye_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      IA => vga_sprite_ypixSkye_6_LOGIC_ONE_3460,
      IB => vga_sprite_ypixSkye_6_LOGIC_ONE_3460,
      SEL => vga_sprite_ypixSkye_6_CYSELF_3446,
      O => vga_sprite_ypixSkye_6_CYMUXF2_3441
    );
  vga_sprite_ypixSkye_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_5_Q,
      O => vga_sprite_ypixSkye_6_CYINIT_3459
    );
  vga_sprite_ypixSkye_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(6),
      O => vga_sprite_ypixSkye_6_CYSELF_3446
    );
  vga_sprite_ypixSkye_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_6_XORG_3448,
      O => vga_sprite_ypixSkye(7)
    );
  vga_sprite_ypixSkye_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      I0 => vga_sprite_Msub_ypixSkye_cy_6_Q,
      I1 => vga_sprite_Msub_ypixSkye_lut(7),
      O => vga_sprite_ypixSkye_6_XORG_3448
    );
  vga_sprite_ypixSkye_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_cy_5_Q,
      O => vga_sprite_ypixSkye_6_FASTCARRY_3443
    );
  vga_sprite_ypixSkye_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      I0 => vga_sprite_ypixSkye_6_CYSELG_3432,
      I1 => vga_sprite_ypixSkye_6_CYSELF_3446,
      O => vga_sprite_ypixSkye_6_CYAND_3444
    );
  vga_sprite_ypixSkye_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      IA => vga_sprite_ypixSkye_6_CYMUXG2_3442,
      IB => vga_sprite_ypixSkye_6_FASTCARRY_3443,
      SEL => vga_sprite_ypixSkye_6_CYAND_3444,
      O => vga_sprite_ypixSkye_6_CYMUXFAST_3445
    );
  vga_sprite_ypixSkye_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y25"
    )
    port map (
      IA => vga_sprite_ypixSkye_6_CY0G_3440,
      IB => vga_sprite_ypixSkye_6_CYMUXF2_3441,
      SEL => vga_sprite_ypixSkye_6_CYSELG_3432,
      O => vga_sprite_ypixSkye_6_CYMUXG2_3442
    );
  vga_sprite_ypixSkye_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(7),
      O => vga_sprite_ypixSkye_6_CY0G_3440
    );
  vga_sprite_ypixSkye_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(7),
      O => vga_sprite_ypixSkye_6_CYSELG_3432
    );
  vga_sprite_Msub_ypixSkye_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X47Y25"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(7),
      ADR1 => sw_4_IBUF_2516,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(7)
    );
  vga_sprite_ypixSkye_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_8_XORF_3492,
      O => vga_sprite_ypixSkye(8)
    );
  vga_sprite_ypixSkye_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y26"
    )
    port map (
      I0 => vga_sprite_ypixSkye_8_CYINIT_3491,
      I1 => vga_sprite_Msub_ypixSkye_lut(8),
      O => vga_sprite_ypixSkye_8_XORF_3492
    );
  vga_sprite_ypixSkye_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y26"
    )
    port map (
      IA => vga_sprite_ypixSkye_8_CY0F_3490,
      IB => vga_sprite_ypixSkye_8_CYINIT_3491,
      SEL => vga_sprite_ypixSkye_8_CYSELF_3482,
      O => vga_sprite_Msub_ypixSkye_cy_8_Q
    );
  vga_sprite_ypixSkye_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_6_CYMUXFAST_3445,
      O => vga_sprite_ypixSkye_8_CYINIT_3491
    );
  vga_sprite_ypixSkye_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(8),
      O => vga_sprite_ypixSkye_8_CY0F_3490
    );
  vga_sprite_ypixSkye_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixSkye_lut(8),
      O => vga_sprite_ypixSkye_8_CYSELF_3482
    );
  vga_sprite_ypixSkye_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye_8_XORG_3479,
      O => vga_sprite_ypixSkye(9)
    );
  vga_sprite_ypixSkye_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y26"
    )
    port map (
      I0 => vga_sprite_Msub_ypixSkye_cy_8_Q,
      I1 => vga_sprite_Msub_ypixMona_lut(9),
      O => vga_sprite_ypixSkye_8_XORG_3479
    );
  U2_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      O => U2_Result_0_LOGIC_ZERO_3510
    );
  U2_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      O => U2_Result_0_LOGIC_ONE_3527
    );
  U2_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORF_3528,
      O => U2_Result(0)
    );
  U2_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      I0 => U2_Result_0_CYINIT_3526,
      I1 => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_XORF_3528
    );
  U2_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      IA => U2_Result_0_LOGIC_ONE_3527,
      IB => U2_Result_0_CYINIT_3526,
      SEL => U2_Result_0_CYSELF_3517,
      O => U2_Mcount_vcs_cy_0_Q
    );
  U2_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_BXINV_3515,
      O => U2_Result_0_CYINIT_3526
    );
  U2_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_CYSELF_3517
    );
  U2_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_BXINV_3515
    );
  U2_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORG_3513,
      O => U2_Result(1)
    );
  U2_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_0_Q,
      I1 => U2_Result_0_G,
      O => U2_Result_0_XORG_3513
    );
  U2_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_CYMUXG_3512,
      O => U2_Mcount_vcs_cy_1_Q
    );
  U2_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X47Y32"
    )
    port map (
      IA => U2_Result_0_LOGIC_ZERO_3510,
      IB => U2_Mcount_vcs_cy_0_Q,
      SEL => U2_Result_0_CYSELG_3501,
      O => U2_Result_0_CYMUXG_3512
    );
  U2_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_G,
      O => U2_Result_0_CYSELG_3501
    );
  U2_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      O => U2_Result_2_LOGIC_ZERO_3546
    );
  U2_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORF_3566,
      O => U2_Result(2)
    );
  U2_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      I0 => U2_Result_2_CYINIT_3565,
      I1 => U2_Result_2_F,
      O => U2_Result_2_XORF_3566
    );
  U2_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_3546,
      IB => U2_Result_2_CYINIT_3565,
      SEL => U2_Result_2_CYSELF_3552,
      O => U2_Mcount_vcs_cy_2_Q
    );
  U2_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_3546,
      IB => U2_Result_2_LOGIC_ZERO_3546,
      SEL => U2_Result_2_CYSELF_3552,
      O => U2_Result_2_CYMUXF2_3547
    );
  U2_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_CYINIT_3565
    );
  U2_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_F,
      O => U2_Result_2_CYSELF_3552
    );
  U2_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORG_3554,
      O => U2_Result(3)
    );
  U2_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_2_Q,
      I1 => U2_Result_2_G,
      O => U2_Result_2_XORG_3554
    );
  U2_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_CYMUXFAST_3551,
      O => U2_Mcount_vcs_cy_3_Q
    );
  U2_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_FASTCARRY_3549
    );
  U2_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      I0 => U2_Result_2_CYSELG_3537,
      I1 => U2_Result_2_CYSELF_3552,
      O => U2_Result_2_CYAND_3550
    );
  U2_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      IA => U2_Result_2_CYMUXG2_3548,
      IB => U2_Result_2_FASTCARRY_3549,
      SEL => U2_Result_2_CYAND_3550,
      O => U2_Result_2_CYMUXFAST_3551
    );
  U2_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y33"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_3546,
      IB => U2_Result_2_CYMUXF2_3547,
      SEL => U2_Result_2_CYSELG_3537,
      O => U2_Result_2_CYMUXG2_3548
    );
  U2_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_G,
      O => U2_Result_2_CYSELG_3537
    );
  U2_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      O => U2_Result_4_LOGIC_ZERO_3584
    );
  U2_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORF_3604,
      O => U2_Result(4)
    );
  U2_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      I0 => U2_Result_4_CYINIT_3603,
      I1 => U2_Result_4_F,
      O => U2_Result_4_XORF_3604
    );
  U2_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_3584,
      IB => U2_Result_4_CYINIT_3603,
      SEL => U2_Result_4_CYSELF_3590,
      O => U2_Mcount_vcs_cy_4_Q
    );
  U2_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_3584,
      IB => U2_Result_4_LOGIC_ZERO_3584,
      SEL => U2_Result_4_CYSELF_3590,
      O => U2_Result_4_CYMUXF2_3585
    );
  U2_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_CYINIT_3603
    );
  U2_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_F,
      O => U2_Result_4_CYSELF_3590
    );
  U2_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORG_3592,
      O => U2_Result(5)
    );
  U2_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_4_Q,
      I1 => U2_Result_4_G,
      O => U2_Result_4_XORG_3592
    );
  U2_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_CYMUXFAST_3589,
      O => U2_Mcount_vcs_cy_5_Q
    );
  U2_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_FASTCARRY_3587
    );
  U2_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      I0 => U2_Result_4_CYSELG_3575,
      I1 => U2_Result_4_CYSELF_3590,
      O => U2_Result_4_CYAND_3588
    );
  U2_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      IA => U2_Result_4_CYMUXG2_3586,
      IB => U2_Result_4_FASTCARRY_3587,
      SEL => U2_Result_4_CYAND_3588,
      O => U2_Result_4_CYMUXFAST_3589
    );
  U2_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y34"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_3584,
      IB => U2_Result_4_CYMUXF2_3585,
      SEL => U2_Result_4_CYSELG_3575,
      O => U2_Result_4_CYMUXG2_3586
    );
  U2_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_G,
      O => U2_Result_4_CYSELG_3575
    );
  U2_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      O => U2_Result_6_LOGIC_ZERO_3622
    );
  U2_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORF_3642,
      O => U2_Result(6)
    );
  U2_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      I0 => U2_Result_6_CYINIT_3641,
      I1 => U2_Result_6_F,
      O => U2_Result_6_XORF_3642
    );
  U2_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_3622,
      IB => U2_Result_6_CYINIT_3641,
      SEL => U2_Result_6_CYSELF_3628,
      O => U2_Mcount_vcs_cy_6_Q
    );
  U2_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_3622,
      IB => U2_Result_6_LOGIC_ZERO_3622,
      SEL => U2_Result_6_CYSELF_3628,
      O => U2_Result_6_CYMUXF2_3623
    );
  U2_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_CYINIT_3641
    );
  U2_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_F,
      O => U2_Result_6_CYSELF_3628
    );
  U2_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORG_3630,
      O => U2_Result(7)
    );
  U2_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_6_Q,
      I1 => U2_Result_6_G,
      O => U2_Result_6_XORG_3630
    );
  U2_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_FASTCARRY_3625
    );
  U2_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      I0 => U2_Result_6_CYSELG_3613,
      I1 => U2_Result_6_CYSELF_3628,
      O => U2_Result_6_CYAND_3626
    );
  U2_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      IA => U2_Result_6_CYMUXG2_3624,
      IB => U2_Result_6_FASTCARRY_3625,
      SEL => U2_Result_6_CYAND_3626,
      O => U2_Result_6_CYMUXFAST_3627
    );
  U2_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y35"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_3622,
      IB => U2_Result_6_CYMUXF2_3623,
      SEL => U2_Result_6_CYSELG_3613,
      O => U2_Result_6_CYMUXG2_3624
    );
  U2_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_G,
      O => U2_Result_6_CYSELG_3613
    );
  U2_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      O => U2_Result_8_LOGIC_ZERO_3672
    );
  U2_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORF_3673,
      O => U2_Result(8)
    );
  U2_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      I0 => U2_Result_8_CYINIT_3671,
      I1 => U2_Result_8_F,
      O => U2_Result_8_XORF_3673
    );
  U2_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      IA => U2_Result_8_LOGIC_ZERO_3672,
      IB => U2_Result_8_CYINIT_3671,
      SEL => U2_Result_8_CYSELF_3662,
      O => U2_Mcount_vcs_cy_8_Q
    );
  U2_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_CYMUXFAST_3627,
      O => U2_Result_8_CYINIT_3671
    );
  U2_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_F,
      O => U2_Result_8_CYSELF_3662
    );
  U2_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORG_3659,
      O => U2_Result(9)
    );
  U2_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_8_Q,
      I1 => U2_vcs_9_rt_3656,
      O => U2_Result_8_XORG_3659
    );
  U2_vcs_9_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(9),
      O => U2_vcs_9_rt_3656
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X41Y44"
    )
    port map (
      ADR0 => vga_sprite_xpixRey(2),
      ADR1 => vga_sprite_ypixRey(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2)
    );
  romRey_addr14_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_2_XORF_3709,
      O => romRey_addr14(2)
    );
  romRey_addr14_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y44"
    )
    port map (
      I0 => romRey_addr14_2_CYINIT_3708,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2),
      O => romRey_addr14_2_XORF_3709
    );
  romRey_addr14_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y44"
    )
    port map (
      IA => romRey_addr14_2_CY0F_3707,
      IB => romRey_addr14_2_CYINIT_3708,
      SEL => romRey_addr14_2_CYSELF_3699,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_2_Q
    );
  romRey_addr14_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_2_BXINV_3697,
      O => romRey_addr14_2_CYINIT_3708
    );
  romRey_addr14_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(0),
      O => romRey_addr14_2_CY0F_3707
    );
  romRey_addr14_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(2),
      O => romRey_addr14_2_CYSELF_3699
    );
  romRey_addr14_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => romRey_addr14_2_BXINV_3697
    );
  romRey_addr14_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_2_XORG_3695,
      O => romRey_addr14(3)
    );
  romRey_addr14_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y44"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_2_Q,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3),
      O => romRey_addr14_2_XORG_3695
    );
  romRey_addr14_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_2_CYMUXG_3694,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_3_Q
    );
  romRey_addr14_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X41Y44"
    )
    port map (
      IA => romRey_addr14_2_CY0G_3692,
      IB => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_2_Q,
      SEL => romRey_addr14_2_CYSELG_3684,
      O => romRey_addr14_2_CYMUXG_3694
    );
  romRey_addr14_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(1),
      O => romRey_addr14_2_CY0G_3692
    );
  romRey_addr14_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3),
      O => romRey_addr14_2_CYSELG_3684
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X41Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey(1),
      ADR2 => vga_sprite_xpixRey(3),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(3)
    );
  romRey_addr14_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_4_XORF_3748,
      O => romRey_addr14(4)
    );
  romRey_addr14_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      I0 => romRey_addr14_4_CYINIT_3747,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4),
      O => romRey_addr14_4_XORF_3748
    );
  romRey_addr14_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      IA => romRey_addr14_4_CY0F_3746,
      IB => romRey_addr14_4_CYINIT_3747,
      SEL => romRey_addr14_4_CYSELF_3734,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_4_Q
    );
  romRey_addr14_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      IA => romRey_addr14_4_CY0F_3746,
      IB => romRey_addr14_4_CY0F_3746,
      SEL => romRey_addr14_4_CYSELF_3734,
      O => romRey_addr14_4_CYMUXF2_3729
    );
  romRey_addr14_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_3_Q,
      O => romRey_addr14_4_CYINIT_3747
    );
  romRey_addr14_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(2),
      O => romRey_addr14_4_CY0F_3746
    );
  romRey_addr14_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4),
      O => romRey_addr14_4_CYSELF_3734
    );
  romRey_addr14_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_4_XORG_3736,
      O => romRey_addr14(5)
    );
  romRey_addr14_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_4_Q,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5),
      O => romRey_addr14_4_XORG_3736
    );
  romRey_addr14_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_4_CYMUXFAST_3733,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_5_Q
    );
  romRey_addr14_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_3_Q,
      O => romRey_addr14_4_FASTCARRY_3731
    );
  romRey_addr14_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      I0 => romRey_addr14_4_CYSELG_3720,
      I1 => romRey_addr14_4_CYSELF_3734,
      O => romRey_addr14_4_CYAND_3732
    );
  romRey_addr14_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      IA => romRey_addr14_4_CYMUXG2_3730,
      IB => romRey_addr14_4_FASTCARRY_3731,
      SEL => romRey_addr14_4_CYAND_3732,
      O => romRey_addr14_4_CYMUXFAST_3733
    );
  romRey_addr14_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y45"
    )
    port map (
      IA => romRey_addr14_4_CY0G_3728,
      IB => romRey_addr14_4_CYMUXF2_3729,
      SEL => romRey_addr14_4_CYSELG_3720,
      O => romRey_addr14_4_CYMUXG2_3730
    );
  romRey_addr14_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001(5),
      O => romRey_addr14_4_CY0G_3728
    );
  romRey_addr14_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5),
      O => romRey_addr14_4_CYSELG_3720
    );
  romRey_addr14_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_6_XORF_3787,
      O => romRey_addr14(6)
    );
  romRey_addr14_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      I0 => romRey_addr14_6_CYINIT_3786,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6),
      O => romRey_addr14_6_XORF_3787
    );
  romRey_addr14_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      IA => romRey_addr14_6_CY0F_3785,
      IB => romRey_addr14_6_CYINIT_3786,
      SEL => romRey_addr14_6_CYSELF_3773,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_6_Q
    );
  romRey_addr14_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      IA => romRey_addr14_6_CY0F_3785,
      IB => romRey_addr14_6_CY0F_3785,
      SEL => romRey_addr14_6_CYSELF_3773,
      O => romRey_addr14_6_CYMUXF2_3768
    );
  romRey_addr14_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_5_Q,
      O => romRey_addr14_6_CYINIT_3786
    );
  romRey_addr14_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001(6),
      O => romRey_addr14_6_CY0F_3785
    );
  romRey_addr14_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6),
      O => romRey_addr14_6_CYSELF_3773
    );
  romRey_addr14_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_6_XORG_3775,
      O => romRey_addr14(7)
    );
  romRey_addr14_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_6_Q,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7),
      O => romRey_addr14_6_XORG_3775
    );
  romRey_addr14_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_6_CYMUXFAST_3772,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_7_Q
    );
  romRey_addr14_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_5_Q,
      O => romRey_addr14_6_FASTCARRY_3770
    );
  romRey_addr14_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      I0 => romRey_addr14_6_CYSELG_3759,
      I1 => romRey_addr14_6_CYSELF_3773,
      O => romRey_addr14_6_CYAND_3771
    );
  romRey_addr14_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      IA => romRey_addr14_6_CYMUXG2_3769,
      IB => romRey_addr14_6_FASTCARRY_3770,
      SEL => romRey_addr14_6_CYAND_3771,
      O => romRey_addr14_6_CYMUXFAST_3772
    );
  romRey_addr14_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y46"
    )
    port map (
      IA => romRey_addr14_6_CY0G_3767,
      IB => romRey_addr14_6_CYMUXF2_3768,
      SEL => romRey_addr14_6_CYSELG_3759,
      O => romRey_addr14_6_CYMUXG2_3769
    );
  romRey_addr14_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001(7),
      O => romRey_addr14_6_CY0G_3767
    );
  romRey_addr14_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7),
      O => romRey_addr14_6_CYSELG_3759
    );
  romRey_addr14_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_8_XORF_3826,
      O => romRey_addr14(8)
    );
  romRey_addr14_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      I0 => romRey_addr14_8_CYINIT_3825,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8),
      O => romRey_addr14_8_XORF_3826
    );
  romRey_addr14_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => romRey_addr14_8_CY0F_3824,
      IB => romRey_addr14_8_CYINIT_3825,
      SEL => romRey_addr14_8_CYSELF_3812,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_8_Q
    );
  romRey_addr14_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => romRey_addr14_8_CY0F_3824,
      IB => romRey_addr14_8_CY0F_3824,
      SEL => romRey_addr14_8_CYSELF_3812,
      O => romRey_addr14_8_CYMUXF2_3807
    );
  romRey_addr14_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_7_Q,
      O => romRey_addr14_8_CYINIT_3825
    );
  romRey_addr14_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001(8),
      O => romRey_addr14_8_CY0F_3824
    );
  romRey_addr14_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8),
      O => romRey_addr14_8_CYSELF_3812
    );
  romRey_addr14_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_8_XORG_3814,
      O => romRey_addr14(9)
    );
  romRey_addr14_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_8_Q,
      I1 => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9),
      O => romRey_addr14_8_XORG_3814
    );
  romRey_addr14_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_8_CYMUXFAST_3811,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_9_Q
    );
  romRey_addr14_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_7_Q,
      O => romRey_addr14_8_FASTCARRY_3809
    );
  romRey_addr14_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      I0 => romRey_addr14_8_CYSELG_3798,
      I1 => romRey_addr14_8_CYSELF_3812,
      O => romRey_addr14_8_CYAND_3810
    );
  romRey_addr14_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => romRey_addr14_8_CYMUXG2_3808,
      IB => romRey_addr14_8_FASTCARRY_3809,
      SEL => romRey_addr14_8_CYAND_3810,
      O => romRey_addr14_8_CYMUXFAST_3811
    );
  romRey_addr14_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => romRey_addr14_8_CY0G_3806,
      IB => romRey_addr14_8_CYMUXF2_3807,
      SEL => romRey_addr14_8_CYSELG_3798,
      O => romRey_addr14_8_CYMUXG2_3808
    );
  romRey_addr14_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001(9),
      O => romRey_addr14_8_CY0G_3806
    );
  romRey_addr14_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9),
      O => romRey_addr14_8_CYSELG_3798
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_3871,
      O => romRey_addr14(10)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_3870,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_3871
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_3870,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_3853,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_Q
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_3853,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_3848
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_9_Q,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_3870
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_3853
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_3856,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_3857
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_3856,
      O => romRey_addr14(11)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_3855,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_3856
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_10_Q,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_3855
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_9_Q,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_3850
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_3838,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_3853,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_3851
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_3849,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_3850,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_3851,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_3852
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_3847,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_3848,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_3838,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_3849
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_3838
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_3836
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0 : X_FF
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_3857,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_3836,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1 : X_FF
    generic map(
      LOC => "SLICE_X41Y49",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_3912,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_3881,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_3909
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_3911,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_3912
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_3911,
      O => romRey_addr14(12)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_3910,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_3911
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      I0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_3908,
      I1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_3910
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      IA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_3909,
      IB => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_3908,
      SEL => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_3899,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_Q
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_3852,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_3908
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_3899
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_3893,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_3894
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_3893,
      O => romRey_addr14(13)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_3892,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_3893
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_add0000_Madd_cy_12_Q,
      I1 => vga_sprite_rom_addr2_addsub0001_13_rt_3889,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_3892
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_3881
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_2 : X_FF
    generic map(
      LOC => "SLICE_X41Y49",
      INIT => '0'
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_3894,
      CE => VCC,
      CLK => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_3881,
      SET => GND,
      RST => GND,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2)
    );
  vga_sprite_rom_addr2_addsub0001_13_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0001(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_rom_addr2_addsub0001_13_rt_3889
    );
  vga_sprite_rom_addr20_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_6_XORF_3950,
      O => vga_sprite_rom_addr20_addsub0000(6)
    );
  vga_sprite_rom_addr20_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y18"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_6_CYINIT_3949,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr20_addsub0000_6_XORF_3950
    );
  vga_sprite_rom_addr20_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y18"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_6_CY0F_3948,
      IB => vga_sprite_rom_addr20_addsub0000_6_CYINIT_3949,
      SEL => vga_sprite_rom_addr20_addsub0000_6_CYSELF_3940,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_3_Q
    );
  vga_sprite_rom_addr20_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_6_BXINV_3938,
      O => vga_sprite_rom_addr20_addsub0000_6_CYINIT_3949
    );
  vga_sprite_rom_addr20_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(0),
      O => vga_sprite_rom_addr20_addsub0000_6_CY0F_3948
    );
  vga_sprite_rom_addr20_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr20_addsub0000_6_CYSELF_3940
    );
  vga_sprite_rom_addr20_addsub0000_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr20_addsub0000_6_BXINV_3938
    );
  vga_sprite_rom_addr20_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_6_XORG_3936,
      O => vga_sprite_rom_addr20_addsub0000(7)
    );
  vga_sprite_rom_addr20_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y18"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_3_Q,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr20_addsub0000_6_XORG_3936
    );
  vga_sprite_rom_addr20_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_6_CYMUXG_3935,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_4_Q
    );
  vga_sprite_rom_addr20_addsub0000_6_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X47Y18"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_6_CY0G_3933,
      IB => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_3_Q,
      SEL => vga_sprite_rom_addr20_addsub0000_6_CYSELG_3925,
      O => vga_sprite_rom_addr20_addsub0000_6_CYMUXG_3935
    );
  vga_sprite_rom_addr20_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(1),
      O => vga_sprite_rom_addr20_addsub0000_6_CY0G_3933
    );
  vga_sprite_rom_addr20_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr20_addsub0000_6_CYSELG_3925
    );
  vga_sprite_rom_addr20_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_8_XORF_3989,
      O => vga_sprite_rom_addr20_addsub0000(8)
    );
  vga_sprite_rom_addr20_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_8_CYINIT_3988,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0000_8_XORF_3989
    );
  vga_sprite_rom_addr20_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_8_CY0F_3987,
      IB => vga_sprite_rom_addr20_addsub0000_8_CYINIT_3988,
      SEL => vga_sprite_rom_addr20_addsub0000_8_CYSELF_3975,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_5_Q
    );
  vga_sprite_rom_addr20_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_8_CY0F_3987,
      IB => vga_sprite_rom_addr20_addsub0000_8_CY0F_3987,
      SEL => vga_sprite_rom_addr20_addsub0000_8_CYSELF_3975,
      O => vga_sprite_rom_addr20_addsub0000_8_CYMUXF2_3970
    );
  vga_sprite_rom_addr20_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr20_addsub0000_8_CYINIT_3988
    );
  vga_sprite_rom_addr20_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(2),
      O => vga_sprite_rom_addr20_addsub0000_8_CY0F_3987
    );
  vga_sprite_rom_addr20_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0000_8_CYSELF_3975
    );
  vga_sprite_rom_addr20_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_8_XORG_3977,
      O => vga_sprite_rom_addr20_addsub0000(9)
    );
  vga_sprite_rom_addr20_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_5_Q,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0000_8_XORG_3977
    );
  vga_sprite_rom_addr20_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_8_CYMUXFAST_3974,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_6_Q
    );
  vga_sprite_rom_addr20_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr20_addsub0000_8_FASTCARRY_3972
    );
  vga_sprite_rom_addr20_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_8_CYSELG_3961,
      I1 => vga_sprite_rom_addr20_addsub0000_8_CYSELF_3975,
      O => vga_sprite_rom_addr20_addsub0000_8_CYAND_3973
    );
  vga_sprite_rom_addr20_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_8_CYMUXG2_3971,
      IB => vga_sprite_rom_addr20_addsub0000_8_FASTCARRY_3972,
      SEL => vga_sprite_rom_addr20_addsub0000_8_CYAND_3973,
      O => vga_sprite_rom_addr20_addsub0000_8_CYMUXFAST_3974
    );
  vga_sprite_rom_addr20_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_8_CY0G_3969,
      IB => vga_sprite_rom_addr20_addsub0000_8_CYMUXF2_3970,
      SEL => vga_sprite_rom_addr20_addsub0000_8_CYSELG_3961,
      O => vga_sprite_rom_addr20_addsub0000_8_CYMUXG2_3971
    );
  vga_sprite_rom_addr20_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(3),
      O => vga_sprite_rom_addr20_addsub0000_8_CY0G_3969
    );
  vga_sprite_rom_addr20_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0000_8_CYSELG_3961
    );
  vga_sprite_rom_addr20_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_10_XORF_4028,
      O => vga_sprite_rom_addr20_addsub0000(10)
    );
  vga_sprite_rom_addr20_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_10_CYINIT_4027,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0000_10_XORF_4028
    );
  vga_sprite_rom_addr20_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_10_CY0F_4026,
      IB => vga_sprite_rom_addr20_addsub0000_10_CYINIT_4027,
      SEL => vga_sprite_rom_addr20_addsub0000_10_CYSELF_4014,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_7_Q
    );
  vga_sprite_rom_addr20_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_10_CY0F_4026,
      IB => vga_sprite_rom_addr20_addsub0000_10_CY0F_4026,
      SEL => vga_sprite_rom_addr20_addsub0000_10_CYSELF_4014,
      O => vga_sprite_rom_addr20_addsub0000_10_CYMUXF2_4009
    );
  vga_sprite_rom_addr20_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr20_addsub0000_10_CYINIT_4027
    );
  vga_sprite_rom_addr20_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(4),
      O => vga_sprite_rom_addr20_addsub0000_10_CY0F_4026
    );
  vga_sprite_rom_addr20_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0000_10_CYSELF_4014
    );
  vga_sprite_rom_addr20_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_10_XORG_4016,
      O => vga_sprite_rom_addr20_addsub0000(11)
    );
  vga_sprite_rom_addr20_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_7_Q,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0000_10_XORG_4016
    );
  vga_sprite_rom_addr20_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr20_addsub0000_10_FASTCARRY_4011
    );
  vga_sprite_rom_addr20_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_10_CYSELG_4000,
      I1 => vga_sprite_rom_addr20_addsub0000_10_CYSELF_4014,
      O => vga_sprite_rom_addr20_addsub0000_10_CYAND_4012
    );
  vga_sprite_rom_addr20_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_10_CYMUXG2_4010,
      IB => vga_sprite_rom_addr20_addsub0000_10_FASTCARRY_4011,
      SEL => vga_sprite_rom_addr20_addsub0000_10_CYAND_4012,
      O => vga_sprite_rom_addr20_addsub0000_10_CYMUXFAST_4013
    );
  vga_sprite_rom_addr20_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_10_CY0G_4008,
      IB => vga_sprite_rom_addr20_addsub0000_10_CYMUXF2_4009,
      SEL => vga_sprite_rom_addr20_addsub0000_10_CYSELG_4000,
      O => vga_sprite_rom_addr20_addsub0000_10_CYMUXG2_4010
    );
  vga_sprite_rom_addr20_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(5),
      O => vga_sprite_rom_addr20_addsub0000_10_CY0G_4008
    );
  vga_sprite_rom_addr20_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X47Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0000_10_CYSELG_4000
    );
  vga_sprite_rom_addr20_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_12_XORF_4059,
      O => vga_sprite_rom_addr20_addsub0000(12)
    );
  vga_sprite_rom_addr20_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X47Y21"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0000_12_CYINIT_4058,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0000_12_XORF_4059
    );
  vga_sprite_rom_addr20_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X47Y21"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0000_12_CY0F_4057,
      IB => vga_sprite_rom_addr20_addsub0000_12_CYINIT_4058,
      SEL => vga_sprite_rom_addr20_addsub0000_12_CYSELF_4049,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_9_Q
    );
  vga_sprite_rom_addr20_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X47Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_10_CYMUXFAST_4013,
      O => vga_sprite_rom_addr20_addsub0000_12_CYINIT_4058
    );
  vga_sprite_rom_addr20_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X47Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(6),
      O => vga_sprite_rom_addr20_addsub0000_12_CY0F_4057
    );
  vga_sprite_rom_addr20_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X47Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0000_12_CYSELF_4049
    );
  vga_sprite_rom_addr20_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000_12_XORG_4046,
      O => vga_sprite_rom_addr20_addsub0000(13)
    );
  vga_sprite_rom_addr20_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X47Y21"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_cy_9_Q,
      I1 => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr20_addsub0000_12_XORG_4046
    );
  romMona_addr14_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y16"
    )
    port map (
      O => romMona_addr14_0_LOGIC_ZERO_4077
    );
  romMona_addr14_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_XORF_4094,
      O => romMona_addr14(0)
    );
  romMona_addr14_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y16"
    )
    port map (
      I0 => romMona_addr14_0_CYINIT_4093,
      I1 => romMona_addr14_0_F,
      O => romMona_addr14_0_XORF_4094
    );
  romMona_addr14_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y16"
    )
    port map (
      IA => romMona_addr14_0_LOGIC_ZERO_4077,
      IB => romMona_addr14_0_CYINIT_4093,
      SEL => romMona_addr14_0_CYSELF_4084,
      O => vga_sprite_Msub_xpixSkye_cy_0_Q
    );
  romMona_addr14_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_BXINV_4082,
      O => romMona_addr14_0_CYINIT_4093
    );
  romMona_addr14_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_F,
      O => romMona_addr14_0_CYSELF_4084
    );
  romMona_addr14_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => romMona_addr14_0_BXINV_4082
    );
  romMona_addr14_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_XORG_4080,
      O => romSkye_addr14(1)
    );
  romMona_addr14_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y16"
    )
    port map (
      I0 => vga_sprite_Msub_xpixSkye_cy_0_Q,
      I1 => romMona_addr14_0_G,
      O => romMona_addr14_0_XORG_4080
    );
  romMona_addr14_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_CYMUXG_4079,
      O => vga_sprite_Msub_xpixSkye_cy_1_Q
    );
  romMona_addr14_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y16"
    )
    port map (
      IA => romMona_addr14_0_LOGIC_ZERO_4077,
      IB => vga_sprite_Msub_xpixSkye_cy_0_Q,
      SEL => romMona_addr14_0_CYSELG_4068,
      O => romMona_addr14_0_CYMUXG_4079
    );
  romMona_addr14_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_0_G,
      O => romMona_addr14_0_CYSELG_4068
    );
  vga_sprite_xpixSkye_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      O => vga_sprite_xpixSkye_2_LOGIC_ONE_4112
    );
  vga_sprite_xpixSkye_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      O => vga_sprite_xpixSkye_2_LOGIC_ZERO_4132
    );
  vga_sprite_xpixSkye_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_2_XORF_4133,
      O => vga_sprite_xpixSkye(2)
    );
  vga_sprite_xpixSkye_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      I0 => vga_sprite_xpixSkye_2_CYINIT_4131,
      I1 => vga_sprite_xpixSkye_2_F,
      O => vga_sprite_xpixSkye_2_XORF_4133
    );
  vga_sprite_xpixSkye_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      IA => vga_sprite_xpixSkye_2_LOGIC_ZERO_4132,
      IB => vga_sprite_xpixSkye_2_CYINIT_4131,
      SEL => vga_sprite_xpixSkye_2_CYSELF_4118,
      O => vga_sprite_Msub_xpixSkye_cy_2_Q
    );
  vga_sprite_xpixSkye_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      IA => vga_sprite_xpixSkye_2_LOGIC_ZERO_4132,
      IB => vga_sprite_xpixSkye_2_LOGIC_ZERO_4132,
      SEL => vga_sprite_xpixSkye_2_CYSELF_4118,
      O => vga_sprite_xpixSkye_2_CYMUXF2_4113
    );
  vga_sprite_xpixSkye_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_1_Q,
      O => vga_sprite_xpixSkye_2_CYINIT_4131
    );
  vga_sprite_xpixSkye_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_2_F,
      O => vga_sprite_xpixSkye_2_CYSELF_4118
    );
  vga_sprite_xpixSkye_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_2_XORG_4120,
      O => vga_sprite_xpixSkye(3)
    );
  vga_sprite_xpixSkye_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      I0 => vga_sprite_Msub_xpixSkye_cy_2_Q,
      I1 => vga_sprite_Msub_xpixSkye_lut_3_Q,
      O => vga_sprite_xpixSkye_2_XORG_4120
    );
  vga_sprite_xpixSkye_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_2_CYMUXFAST_4117,
      O => vga_sprite_Msub_xpixSkye_cy_3_Q
    );
  vga_sprite_xpixSkye_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_1_Q,
      O => vga_sprite_xpixSkye_2_FASTCARRY_4115
    );
  vga_sprite_xpixSkye_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      I0 => vga_sprite_xpixSkye_2_CYSELG_4103,
      I1 => vga_sprite_xpixSkye_2_CYSELF_4118,
      O => vga_sprite_xpixSkye_2_CYAND_4116
    );
  vga_sprite_xpixSkye_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      IA => vga_sprite_xpixSkye_2_CYMUXG2_4114,
      IB => vga_sprite_xpixSkye_2_FASTCARRY_4115,
      SEL => vga_sprite_xpixSkye_2_CYAND_4116,
      O => vga_sprite_xpixSkye_2_CYMUXFAST_4117
    );
  vga_sprite_xpixSkye_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y17"
    )
    port map (
      IA => vga_sprite_xpixSkye_2_LOGIC_ONE_4112,
      IB => vga_sprite_xpixSkye_2_CYMUXF2_4113,
      SEL => vga_sprite_xpixSkye_2_CYSELG_4103,
      O => vga_sprite_xpixSkye_2_CYMUXG2_4114
    );
  vga_sprite_xpixSkye_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_lut_3_Q,
      O => vga_sprite_xpixSkye_2_CYSELG_4103
    );
  vga_sprite_Msub_xpixSkye_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X43Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(3),
      O => vga_sprite_Msub_xpixSkye_lut_3_Q
    );
  vga_sprite_xpixSkye_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      O => vga_sprite_xpixSkye_4_LOGIC_ONE_4151
    );
  vga_sprite_xpixSkye_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      O => vga_sprite_xpixSkye_4_LOGIC_ZERO_4171
    );
  vga_sprite_xpixSkye_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_4_XORF_4172,
      O => vga_sprite_xpixSkye(4)
    );
  vga_sprite_xpixSkye_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      I0 => vga_sprite_xpixSkye_4_CYINIT_4170,
      I1 => vga_sprite_Msub_xpixRey_sub0000_xor_4_11,
      O => vga_sprite_xpixSkye_4_XORF_4172
    );
  vga_sprite_xpixSkye_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      IA => vga_sprite_xpixSkye_4_LOGIC_ZERO_4171,
      IB => vga_sprite_xpixSkye_4_CYINIT_4170,
      SEL => vga_sprite_xpixSkye_4_CYSELF_4157,
      O => vga_sprite_Msub_xpixSkye_cy_4_Q
    );
  vga_sprite_xpixSkye_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      IA => vga_sprite_xpixSkye_4_LOGIC_ZERO_4171,
      IB => vga_sprite_xpixSkye_4_LOGIC_ZERO_4171,
      SEL => vga_sprite_xpixSkye_4_CYSELF_4157,
      O => vga_sprite_xpixSkye_4_CYMUXF2_4152
    );
  vga_sprite_xpixSkye_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_3_Q,
      O => vga_sprite_xpixSkye_4_CYINIT_4170
    );
  vga_sprite_xpixSkye_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_sub0000_xor_4_11,
      O => vga_sprite_xpixSkye_4_CYSELF_4157
    );
  vga_sprite_xpixSkye_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_4_XORG_4159,
      O => vga_sprite_xpixSkye(5)
    );
  vga_sprite_xpixSkye_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      I0 => vga_sprite_Msub_xpixSkye_cy_4_Q,
      I1 => vga_sprite_Msub_xpixSkye_lut_5_Q_4142,
      O => vga_sprite_xpixSkye_4_XORG_4159
    );
  vga_sprite_xpixSkye_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_4_CYMUXFAST_4156,
      O => vga_sprite_Msub_xpixSkye_cy_5_Q
    );
  vga_sprite_xpixSkye_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_3_Q,
      O => vga_sprite_xpixSkye_4_FASTCARRY_4154
    );
  vga_sprite_xpixSkye_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      I0 => vga_sprite_xpixSkye_4_CYSELG_4143,
      I1 => vga_sprite_xpixSkye_4_CYSELF_4157,
      O => vga_sprite_xpixSkye_4_CYAND_4155
    );
  vga_sprite_xpixSkye_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      IA => vga_sprite_xpixSkye_4_CYMUXG2_4153,
      IB => vga_sprite_xpixSkye_4_FASTCARRY_4154,
      SEL => vga_sprite_xpixSkye_4_CYAND_4155,
      O => vga_sprite_xpixSkye_4_CYMUXFAST_4156
    );
  vga_sprite_xpixSkye_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y18"
    )
    port map (
      IA => vga_sprite_xpixSkye_4_LOGIC_ONE_4151,
      IB => vga_sprite_xpixSkye_4_CYMUXF2_4152,
      SEL => vga_sprite_xpixSkye_4_CYSELG_4143,
      O => vga_sprite_xpixSkye_4_CYMUXG2_4153
    );
  vga_sprite_xpixSkye_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_lut_5_Q_4142,
      O => vga_sprite_xpixSkye_4_CYSELG_4143
    );
  vga_sprite_xpixSkye_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      O => vga_sprite_xpixSkye_6_LOGIC_ZERO_4192
    );
  vga_sprite_xpixSkye_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      O => vga_sprite_xpixSkye_6_LOGIC_ONE_4210
    );
  vga_sprite_xpixSkye_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_6_XORF_4211,
      O => vga_sprite_xpixSkye(6)
    );
  vga_sprite_xpixSkye_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      I0 => vga_sprite_xpixSkye_6_CYINIT_4209,
      I1 => vga_sprite_Msub_xpixSkye_lut_6_Q_4202,
      O => vga_sprite_xpixSkye_6_XORF_4211
    );
  vga_sprite_xpixSkye_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      IA => vga_sprite_xpixSkye_6_LOGIC_ONE_4210,
      IB => vga_sprite_xpixSkye_6_CYINIT_4209,
      SEL => vga_sprite_xpixSkye_6_CYSELF_4198,
      O => vga_sprite_Msub_xpixSkye_cy_6_Q
    );
  vga_sprite_xpixSkye_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      IA => vga_sprite_xpixSkye_6_LOGIC_ONE_4210,
      IB => vga_sprite_xpixSkye_6_LOGIC_ONE_4210,
      SEL => vga_sprite_xpixSkye_6_CYSELF_4198,
      O => vga_sprite_xpixSkye_6_CYMUXF2_4193
    );
  vga_sprite_xpixSkye_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_5_Q,
      O => vga_sprite_xpixSkye_6_CYINIT_4209
    );
  vga_sprite_xpixSkye_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_lut_6_Q_4202,
      O => vga_sprite_xpixSkye_6_CYSELF_4198
    );
  vga_sprite_xpixSkye_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_6_XORG_4200,
      O => vga_sprite_xpixSkye(7)
    );
  vga_sprite_xpixSkye_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      I0 => vga_sprite_Msub_xpixSkye_cy_6_Q,
      I1 => vga_sprite_Msub_xpixRey_sub0000_xor_7_11,
      O => vga_sprite_xpixSkye_6_XORG_4200
    );
  vga_sprite_xpixSkye_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_cy_5_Q,
      O => vga_sprite_xpixSkye_6_FASTCARRY_4195
    );
  vga_sprite_xpixSkye_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      I0 => vga_sprite_xpixSkye_6_CYSELG_4186,
      I1 => vga_sprite_xpixSkye_6_CYSELF_4198,
      O => vga_sprite_xpixSkye_6_CYAND_4196
    );
  vga_sprite_xpixSkye_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      IA => vga_sprite_xpixSkye_6_CYMUXG2_4194,
      IB => vga_sprite_xpixSkye_6_FASTCARRY_4195,
      SEL => vga_sprite_xpixSkye_6_CYAND_4196,
      O => vga_sprite_xpixSkye_6_CYMUXFAST_4197
    );
  vga_sprite_xpixSkye_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y19"
    )
    port map (
      IA => vga_sprite_xpixSkye_6_LOGIC_ZERO_4192,
      IB => vga_sprite_xpixSkye_6_CYMUXF2_4193,
      SEL => vga_sprite_xpixSkye_6_CYSELG_4186,
      O => vga_sprite_xpixSkye_6_CYMUXG2_4194
    );
  vga_sprite_xpixSkye_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_sub0000_xor_7_11,
      O => vga_sprite_xpixSkye_6_CYSELG_4186
    );
  vga_sprite_xpixSkye_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y20"
    )
    port map (
      O => vga_sprite_xpixSkye_8_LOGIC_ONE_4241
    );
  vga_sprite_xpixSkye_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_8_XORF_4242,
      O => vga_sprite_xpixSkye(8)
    );
  vga_sprite_xpixSkye_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y20"
    )
    port map (
      I0 => vga_sprite_xpixSkye_8_CYINIT_4240,
      I1 => vga_sprite_Msub_xpixSkye_lut_8_Q_4232,
      O => vga_sprite_xpixSkye_8_XORF_4242
    );
  vga_sprite_xpixSkye_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y20"
    )
    port map (
      IA => vga_sprite_xpixSkye_8_LOGIC_ONE_4241,
      IB => vga_sprite_xpixSkye_8_CYINIT_4240,
      SEL => vga_sprite_xpixSkye_8_CYSELF_4233,
      O => vga_sprite_Msub_xpixSkye_cy_8_Q
    );
  vga_sprite_xpixSkye_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_6_CYMUXFAST_4197,
      O => vga_sprite_xpixSkye_8_CYINIT_4240
    );
  vga_sprite_xpixSkye_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixSkye_lut_8_Q_4232,
      O => vga_sprite_xpixSkye_8_CYSELF_4233
    );
  vga_sprite_xpixSkye_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixSkye_8_XORG_4230,
      O => vga_sprite_xpixSkye(9)
    );
  vga_sprite_xpixSkye_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y20"
    )
    port map (
      I0 => vga_sprite_Msub_xpixSkye_cy_8_Q,
      I1 => vga_sprite_Msub_xpixMona_lut_9_2_4227,
      O => vga_sprite_xpixSkye_8_XORG_4230
    );
  vga_sprite_rom_addr21_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_6_XORF_4278,
      O => vga_sprite_rom_addr21_addsub0000(6)
    );
  vga_sprite_rom_addr21_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y34"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_6_CYINIT_4277,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr21_addsub0000_6_XORF_4278
    );
  vga_sprite_rom_addr21_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y34"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_6_CY0F_4276,
      IB => vga_sprite_rom_addr21_addsub0000_6_CYINIT_4277,
      SEL => vga_sprite_rom_addr21_addsub0000_6_CYSELF_4268,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_3_Q
    );
  vga_sprite_rom_addr21_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_6_BXINV_4266,
      O => vga_sprite_rom_addr21_addsub0000_6_CYINIT_4277
    );
  vga_sprite_rom_addr21_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(0),
      O => vga_sprite_rom_addr21_addsub0000_6_CY0F_4276
    );
  vga_sprite_rom_addr21_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr21_addsub0000_6_CYSELF_4268
    );
  vga_sprite_rom_addr21_addsub0000_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr21_addsub0000_6_BXINV_4266
    );
  vga_sprite_rom_addr21_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_6_XORG_4264,
      O => vga_sprite_rom_addr21_addsub0000(7)
    );
  vga_sprite_rom_addr21_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y34"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_3_Q,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr21_addsub0000_6_XORG_4264
    );
  vga_sprite_rom_addr21_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_6_CYMUXG_4263,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_4_Q
    );
  vga_sprite_rom_addr21_addsub0000_6_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y34"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_6_CY0G_4261,
      IB => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_3_Q,
      SEL => vga_sprite_rom_addr21_addsub0000_6_CYSELG_4253,
      O => vga_sprite_rom_addr21_addsub0000_6_CYMUXG_4263
    );
  vga_sprite_rom_addr21_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(1),
      O => vga_sprite_rom_addr21_addsub0000_6_CY0G_4261
    );
  vga_sprite_rom_addr21_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr21_addsub0000_6_CYSELG_4253
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixMona(2),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixMona(3),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5)
    );
  vga_sprite_rom_addr21_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_8_XORF_4317,
      O => vga_sprite_rom_addr21_addsub0000(8)
    );
  vga_sprite_rom_addr21_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_8_CYINIT_4316,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0000_8_XORF_4317
    );
  vga_sprite_rom_addr21_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_8_CY0F_4315,
      IB => vga_sprite_rom_addr21_addsub0000_8_CYINIT_4316,
      SEL => vga_sprite_rom_addr21_addsub0000_8_CYSELF_4303,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_5_Q
    );
  vga_sprite_rom_addr21_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_8_CY0F_4315,
      IB => vga_sprite_rom_addr21_addsub0000_8_CY0F_4315,
      SEL => vga_sprite_rom_addr21_addsub0000_8_CYSELF_4303,
      O => vga_sprite_rom_addr21_addsub0000_8_CYMUXF2_4298
    );
  vga_sprite_rom_addr21_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr21_addsub0000_8_CYINIT_4316
    );
  vga_sprite_rom_addr21_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(2),
      O => vga_sprite_rom_addr21_addsub0000_8_CY0F_4315
    );
  vga_sprite_rom_addr21_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr21_addsub0000_8_CYSELF_4303
    );
  vga_sprite_rom_addr21_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_8_XORG_4305,
      O => vga_sprite_rom_addr21_addsub0000(9)
    );
  vga_sprite_rom_addr21_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_5_Q,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0000_8_XORG_4305
    );
  vga_sprite_rom_addr21_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_8_CYMUXFAST_4302,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_6_Q
    );
  vga_sprite_rom_addr21_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr21_addsub0000_8_FASTCARRY_4300
    );
  vga_sprite_rom_addr21_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_8_CYSELG_4289,
      I1 => vga_sprite_rom_addr21_addsub0000_8_CYSELF_4303,
      O => vga_sprite_rom_addr21_addsub0000_8_CYAND_4301
    );
  vga_sprite_rom_addr21_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_8_CYMUXG2_4299,
      IB => vga_sprite_rom_addr21_addsub0000_8_FASTCARRY_4300,
      SEL => vga_sprite_rom_addr21_addsub0000_8_CYAND_4301,
      O => vga_sprite_rom_addr21_addsub0000_8_CYMUXFAST_4302
    );
  vga_sprite_rom_addr21_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y35"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_8_CY0G_4297,
      IB => vga_sprite_rom_addr21_addsub0000_8_CYMUXF2_4298,
      SEL => vga_sprite_rom_addr21_addsub0000_8_CYSELG_4289,
      O => vga_sprite_rom_addr21_addsub0000_8_CYMUXG2_4299
    );
  vga_sprite_rom_addr21_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(3),
      O => vga_sprite_rom_addr21_addsub0000_8_CY0G_4297
    );
  vga_sprite_rom_addr21_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr21_addsub0000_8_CYSELG_4289
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y35"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(3),
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixMona(4),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(6)
    );
  vga_sprite_rom_addr21_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_10_XORF_4356,
      O => vga_sprite_rom_addr21_addsub0000(10)
    );
  vga_sprite_rom_addr21_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_10_CYINIT_4355,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0000_10_XORF_4356
    );
  vga_sprite_rom_addr21_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_10_CY0F_4354,
      IB => vga_sprite_rom_addr21_addsub0000_10_CYINIT_4355,
      SEL => vga_sprite_rom_addr21_addsub0000_10_CYSELF_4342,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_7_Q
    );
  vga_sprite_rom_addr21_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_10_CY0F_4354,
      IB => vga_sprite_rom_addr21_addsub0000_10_CY0F_4354,
      SEL => vga_sprite_rom_addr21_addsub0000_10_CYSELF_4342,
      O => vga_sprite_rom_addr21_addsub0000_10_CYMUXF2_4337
    );
  vga_sprite_rom_addr21_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr21_addsub0000_10_CYINIT_4355
    );
  vga_sprite_rom_addr21_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(4),
      O => vga_sprite_rom_addr21_addsub0000_10_CY0F_4354
    );
  vga_sprite_rom_addr21_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr21_addsub0000_10_CYSELF_4342
    );
  vga_sprite_rom_addr21_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_10_XORG_4344,
      O => vga_sprite_rom_addr21_addsub0000(11)
    );
  vga_sprite_rom_addr21_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_7_Q,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0000_10_XORG_4344
    );
  vga_sprite_rom_addr21_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr21_addsub0000_10_FASTCARRY_4339
    );
  vga_sprite_rom_addr21_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_10_CYSELG_4328,
      I1 => vga_sprite_rom_addr21_addsub0000_10_CYSELF_4342,
      O => vga_sprite_rom_addr21_addsub0000_10_CYAND_4340
    );
  vga_sprite_rom_addr21_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_10_CYMUXG2_4338,
      IB => vga_sprite_rom_addr21_addsub0000_10_FASTCARRY_4339,
      SEL => vga_sprite_rom_addr21_addsub0000_10_CYAND_4340,
      O => vga_sprite_rom_addr21_addsub0000_10_CYMUXFAST_4341
    );
  vga_sprite_rom_addr21_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y36"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_10_CY0G_4336,
      IB => vga_sprite_rom_addr21_addsub0000_10_CYMUXF2_4337,
      SEL => vga_sprite_rom_addr21_addsub0000_10_CYSELG_4328,
      O => vga_sprite_rom_addr21_addsub0000_10_CYMUXG2_4338
    );
  vga_sprite_rom_addr21_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(5),
      O => vga_sprite_rom_addr21_addsub0000_10_CY0G_4336
    );
  vga_sprite_rom_addr21_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr21_addsub0000_10_CYSELG_4328
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixMona(5),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixMona(6),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(8)
    );
  vga_sprite_rom_addr21_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_12_XORF_4387,
      O => vga_sprite_rom_addr21_addsub0000(12)
    );
  vga_sprite_rom_addr21_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      I0 => vga_sprite_rom_addr21_addsub0000_12_CYINIT_4386,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0000_12_XORF_4387
    );
  vga_sprite_rom_addr21_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      IA => vga_sprite_rom_addr21_addsub0000_12_CY0F_4385,
      IB => vga_sprite_rom_addr21_addsub0000_12_CYINIT_4386,
      SEL => vga_sprite_rom_addr21_addsub0000_12_CYSELF_4377,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_9_Q
    );
  vga_sprite_rom_addr21_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_10_CYMUXFAST_4341,
      O => vga_sprite_rom_addr21_addsub0000_12_CYINIT_4386
    );
  vga_sprite_rom_addr21_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(6),
      O => vga_sprite_rom_addr21_addsub0000_12_CY0F_4385
    );
  vga_sprite_rom_addr21_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr21_addsub0000_12_CYSELF_4377
    );
  vga_sprite_rom_addr21_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0000_12_XORG_4374,
      O => vga_sprite_rom_addr21_addsub0000(13)
    );
  vga_sprite_rom_addr21_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y37"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_cy_9_Q,
      I1 => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr21_addsub0000_12_XORG_4374
    );
  vga_sprite_rom_addr2_addsub0001_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_5_XORF_4423,
      O => vga_sprite_rom_addr2_addsub0001(5)
    );
  vga_sprite_rom_addr2_addsub0001_5_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_5_CYINIT_4422,
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0001_5_XORF_4423
    );
  vga_sprite_rom_addr2_addsub0001_5_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_5_CY0F_4421,
      IB => vga_sprite_rom_addr2_addsub0001_5_CYINIT_4422,
      SEL => vga_sprite_rom_addr2_addsub0001_5_CYSELF_4413,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5)
    );
  vga_sprite_rom_addr2_addsub0001_5_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_5_BXINV_4411,
      O => vga_sprite_rom_addr2_addsub0001_5_CYINIT_4422
    );
  vga_sprite_rom_addr2_addsub0001_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(0),
      O => vga_sprite_rom_addr2_addsub0001_5_CY0F_4421
    );
  vga_sprite_rom_addr2_addsub0001_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0001_5_CYSELF_4413
    );
  vga_sprite_rom_addr2_addsub0001_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr2_addsub0001_5_BXINV_4411
    );
  vga_sprite_rom_addr2_addsub0001_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_5_XORG_4409,
      O => vga_sprite_rom_addr2_addsub0001(6)
    );
  vga_sprite_rom_addr2_addsub0001_5_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5),
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0001_5_XORG_4409
    );
  vga_sprite_rom_addr2_addsub0001_5_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_5_CYMUXG_4408,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6)
    );
  vga_sprite_rom_addr2_addsub0001_5_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y44"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_5_CY0G_4406,
      IB => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(5),
      SEL => vga_sprite_rom_addr2_addsub0001_5_CYSELG_4398,
      O => vga_sprite_rom_addr2_addsub0001_5_CYMUXG_4408
    );
  vga_sprite_rom_addr2_addsub0001_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(6),
      O => vga_sprite_rom_addr2_addsub0001_5_CY0G_4406
    );
  vga_sprite_rom_addr2_addsub0001_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0001_5_CYSELG_4398
    );
  vga_sprite_rom_addr2_addsub0001_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_7_XORF_4462,
      O => vga_sprite_rom_addr2_addsub0001(7)
    );
  vga_sprite_rom_addr2_addsub0001_7_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_7_CYINIT_4461,
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0001_7_XORF_4462
    );
  vga_sprite_rom_addr2_addsub0001_7_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_7_CY0F_4460,
      IB => vga_sprite_rom_addr2_addsub0001_7_CYINIT_4461,
      SEL => vga_sprite_rom_addr2_addsub0001_7_CYSELF_4448,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(7)
    );
  vga_sprite_rom_addr2_addsub0001_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_7_CY0F_4460,
      IB => vga_sprite_rom_addr2_addsub0001_7_CY0F_4460,
      SEL => vga_sprite_rom_addr2_addsub0001_7_CYSELF_4448,
      O => vga_sprite_rom_addr2_addsub0001_7_CYMUXF2_4443
    );
  vga_sprite_rom_addr2_addsub0001_7_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr2_addsub0001_7_CYINIT_4461
    );
  vga_sprite_rom_addr2_addsub0001_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(7),
      O => vga_sprite_rom_addr2_addsub0001_7_CY0F_4460
    );
  vga_sprite_rom_addr2_addsub0001_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0001_7_CYSELF_4448
    );
  vga_sprite_rom_addr2_addsub0001_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_7_XORG_4450,
      O => vga_sprite_rom_addr2_addsub0001(8)
    );
  vga_sprite_rom_addr2_addsub0001_7_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(7),
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0001_7_XORG_4450
    );
  vga_sprite_rom_addr2_addsub0001_7_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_7_CYMUXFAST_4447,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8)
    );
  vga_sprite_rom_addr2_addsub0001_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr2_addsub0001_7_FASTCARRY_4445
    );
  vga_sprite_rom_addr2_addsub0001_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_7_CYSELG_4434,
      I1 => vga_sprite_rom_addr2_addsub0001_7_CYSELF_4448,
      O => vga_sprite_rom_addr2_addsub0001_7_CYAND_4446
    );
  vga_sprite_rom_addr2_addsub0001_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_7_CYMUXG2_4444,
      IB => vga_sprite_rom_addr2_addsub0001_7_FASTCARRY_4445,
      SEL => vga_sprite_rom_addr2_addsub0001_7_CYAND_4446,
      O => vga_sprite_rom_addr2_addsub0001_7_CYMUXFAST_4447
    );
  vga_sprite_rom_addr2_addsub0001_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y45"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_7_CY0G_4442,
      IB => vga_sprite_rom_addr2_addsub0001_7_CYMUXF2_4443,
      SEL => vga_sprite_rom_addr2_addsub0001_7_CYSELG_4434,
      O => vga_sprite_rom_addr2_addsub0001_7_CYMUXG2_4444
    );
  vga_sprite_rom_addr2_addsub0001_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(8),
      O => vga_sprite_rom_addr2_addsub0001_7_CY0G_4442
    );
  vga_sprite_rom_addr2_addsub0001_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0001_7_CYSELG_4434
    );
  vga_sprite_rom_addr2_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_9_XORF_4501,
      O => vga_sprite_rom_addr2_addsub0001(9)
    );
  vga_sprite_rom_addr2_addsub0001_9_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_9_CYINIT_4500,
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0001_9_XORF_4501
    );
  vga_sprite_rom_addr2_addsub0001_9_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_9_CY0F_4499,
      IB => vga_sprite_rom_addr2_addsub0001_9_CYINIT_4500,
      SEL => vga_sprite_rom_addr2_addsub0001_9_CYSELF_4487,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(9)
    );
  vga_sprite_rom_addr2_addsub0001_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_9_CY0F_4499,
      IB => vga_sprite_rom_addr2_addsub0001_9_CY0F_4499,
      SEL => vga_sprite_rom_addr2_addsub0001_9_CYSELF_4487,
      O => vga_sprite_rom_addr2_addsub0001_9_CYMUXF2_4482
    );
  vga_sprite_rom_addr2_addsub0001_9_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr2_addsub0001_9_CYINIT_4500
    );
  vga_sprite_rom_addr2_addsub0001_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(9),
      O => vga_sprite_rom_addr2_addsub0001_9_CY0F_4499
    );
  vga_sprite_rom_addr2_addsub0001_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0001_9_CYSELF_4487
    );
  vga_sprite_rom_addr2_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_9_XORG_4489,
      O => vga_sprite_rom_addr2_addsub0001(10)
    );
  vga_sprite_rom_addr2_addsub0001_9_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(9),
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr2_addsub0001_9_XORG_4489
    );
  vga_sprite_rom_addr2_addsub0001_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_9_CYMUXFAST_4486,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10)
    );
  vga_sprite_rom_addr2_addsub0001_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr2_addsub0001_9_FASTCARRY_4484
    );
  vga_sprite_rom_addr2_addsub0001_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_9_CYSELG_4473,
      I1 => vga_sprite_rom_addr2_addsub0001_9_CYSELF_4487,
      O => vga_sprite_rom_addr2_addsub0001_9_CYAND_4485
    );
  vga_sprite_rom_addr2_addsub0001_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_9_CYMUXG2_4483,
      IB => vga_sprite_rom_addr2_addsub0001_9_FASTCARRY_4484,
      SEL => vga_sprite_rom_addr2_addsub0001_9_CYAND_4485,
      O => vga_sprite_rom_addr2_addsub0001_9_CYMUXFAST_4486
    );
  vga_sprite_rom_addr2_addsub0001_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y46"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_9_CY0G_4481,
      IB => vga_sprite_rom_addr2_addsub0001_9_CYMUXF2_4482,
      SEL => vga_sprite_rom_addr2_addsub0001_9_CYSELG_4473,
      O => vga_sprite_rom_addr2_addsub0001_9_CYMUXG2_4483
    );
  vga_sprite_rom_addr2_addsub0001_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(10),
      O => vga_sprite_rom_addr2_addsub0001_9_CY0G_4481
    );
  vga_sprite_rom_addr2_addsub0001_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr2_addsub0001_9_CYSELG_4473
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y47"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0000(11),
      ADR1 => vga_sprite_ypixRey(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11)
    );
  vga_sprite_rom_addr2_addsub0001_11_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      O => vga_sprite_rom_addr2_addsub0001_11_LOGIC_ZERO_4520
    );
  vga_sprite_rom_addr2_addsub0001_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_11_XORF_4540,
      O => vga_sprite_rom_addr2_addsub0001(11)
    );
  vga_sprite_rom_addr2_addsub0001_11_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_11_CYINIT_4539,
      I1 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr2_addsub0001_11_XORF_4540
    );
  vga_sprite_rom_addr2_addsub0001_11_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_11_CY0F_4538,
      IB => vga_sprite_rom_addr2_addsub0001_11_CYINIT_4539,
      SEL => vga_sprite_rom_addr2_addsub0001_11_CYSELF_4526,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11)
    );
  vga_sprite_rom_addr2_addsub0001_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_11_CY0F_4538,
      IB => vga_sprite_rom_addr2_addsub0001_11_CY0F_4538,
      SEL => vga_sprite_rom_addr2_addsub0001_11_CYSELF_4526,
      O => vga_sprite_rom_addr2_addsub0001_11_CYMUXF2_4521
    );
  vga_sprite_rom_addr2_addsub0001_11_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr2_addsub0001_11_CYINIT_4539
    );
  vga_sprite_rom_addr2_addsub0001_11_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000(11),
      O => vga_sprite_rom_addr2_addsub0001_11_CY0F_4538
    );
  vga_sprite_rom_addr2_addsub0001_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr2_addsub0001_11_CYSELF_4526
    );
  vga_sprite_rom_addr2_addsub0001_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_11_XORG_4528,
      O => vga_sprite_rom_addr2_addsub0001(12)
    );
  vga_sprite_rom_addr2_addsub0001_11_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(11),
      I1 => vga_sprite_rom_addr2_addsub0001_11_G,
      O => vga_sprite_rom_addr2_addsub0001_11_XORG_4528
    );
  vga_sprite_rom_addr2_addsub0001_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr2_addsub0001_11_FASTCARRY_4523
    );
  vga_sprite_rom_addr2_addsub0001_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_11_CYSELG_4511,
      I1 => vga_sprite_rom_addr2_addsub0001_11_CYSELF_4526,
      O => vga_sprite_rom_addr2_addsub0001_11_CYAND_4524
    );
  vga_sprite_rom_addr2_addsub0001_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_11_CYMUXG2_4522,
      IB => vga_sprite_rom_addr2_addsub0001_11_FASTCARRY_4523,
      SEL => vga_sprite_rom_addr2_addsub0001_11_CYAND_4524,
      O => vga_sprite_rom_addr2_addsub0001_11_CYMUXFAST_4525
    );
  vga_sprite_rom_addr2_addsub0001_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y47"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0001_11_LOGIC_ZERO_4520,
      IB => vga_sprite_rom_addr2_addsub0001_11_CYMUXF2_4521,
      SEL => vga_sprite_rom_addr2_addsub0001_11_CYSELG_4511,
      O => vga_sprite_rom_addr2_addsub0001_11_CYMUXG2_4522
    );
  vga_sprite_rom_addr2_addsub0001_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_11_G,
      O => vga_sprite_rom_addr2_addsub0001_11_CYSELG_4511
    );
  vga_sprite_rom_addr2_addsub0001_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_13_XORF_4555,
      O => vga_sprite_rom_addr2_addsub0001(13)
    );
  vga_sprite_rom_addr2_addsub0001_13_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y48"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0001_13_CYINIT_4554,
      I1 => vga_sprite_rom_addr2_addsub0000_13_rt_4552,
      O => vga_sprite_rom_addr2_addsub0001_13_XORF_4555
    );
  vga_sprite_rom_addr2_addsub0001_13_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0001_11_CYMUXFAST_4525,
      O => vga_sprite_rom_addr2_addsub0001_13_CYINIT_4554
    );
  vga_sprite_rom_addr2_addsub0000_13_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr2_addsub0000(13),
      O => vga_sprite_rom_addr2_addsub0000_13_rt_4552
    );
  U2_Result_0_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ZERO_4573
    );
  U2_Result_0_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ONE_4590
    );
  U2_Result_0_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORF_4591,
      O => U2_Result_0_1
    );
  U2_Result_0_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      I0 => U2_Result_0_1_CYINIT_4589,
      I1 => U2_Mcount_HCS_lut(0),
      O => U2_Result_0_1_XORF_4591
    );
  U2_Result_0_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ONE_4590,
      IB => U2_Result_0_1_CYINIT_4589,
      SEL => U2_Result_0_1_CYSELF_4580,
      O => U2_Mcount_HCS_cy_0_Q
    );
  U2_Result_0_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_BXINV_4578,
      O => U2_Result_0_1_CYINIT_4589
    );
  U2_Result_0_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_lut(0),
      O => U2_Result_0_1_CYSELF_4580
    );
  U2_Result_0_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_1_BXINV_4578
    );
  U2_Result_0_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORG_4576,
      O => U2_Result_1_1
    );
  U2_Result_0_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_0_Q,
      I1 => U2_Result_0_1_G,
      O => U2_Result_0_1_XORG_4576
    );
  U2_Result_0_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_CYMUXG_4575,
      O => U2_Mcount_HCS_cy_1_Q
    );
  U2_Result_0_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X41Y31"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ZERO_4573,
      IB => U2_Mcount_HCS_cy_0_Q,
      SEL => U2_Result_0_1_CYSELG_4564,
      O => U2_Result_0_1_CYMUXG_4575
    );
  U2_Result_0_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_G,
      O => U2_Result_0_1_CYSELG_4564
    );
  U2_Mcount_HCS_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X41Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_HCS_lut(0)
    );
  U2_Result_2_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      O => U2_Result_2_1_LOGIC_ZERO_4609
    );
  U2_Result_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORF_4629,
      O => U2_Result_2_1
    );
  U2_Result_2_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      I0 => U2_Result_2_1_CYINIT_4628,
      I1 => U2_Result_2_1_F,
      O => U2_Result_2_1_XORF_4629
    );
  U2_Result_2_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_4609,
      IB => U2_Result_2_1_CYINIT_4628,
      SEL => U2_Result_2_1_CYSELF_4615,
      O => U2_Mcount_HCS_cy_2_Q
    );
  U2_Result_2_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_4609,
      IB => U2_Result_2_1_LOGIC_ZERO_4609,
      SEL => U2_Result_2_1_CYSELF_4615,
      O => U2_Result_2_1_CYMUXF2_4610
    );
  U2_Result_2_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_1_Q,
      O => U2_Result_2_1_CYINIT_4628
    );
  U2_Result_2_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_F,
      O => U2_Result_2_1_CYSELF_4615
    );
  U2_Result_2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORG_4617,
      O => U2_Result_3_1
    );
  U2_Result_2_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_2_Q,
      I1 => U2_Result_2_1_G,
      O => U2_Result_2_1_XORG_4617
    );
  U2_Result_2_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_CYMUXFAST_4614,
      O => U2_Mcount_HCS_cy_3_Q
    );
  U2_Result_2_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_1_Q,
      O => U2_Result_2_1_FASTCARRY_4612
    );
  U2_Result_2_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      I0 => U2_Result_2_1_CYSELG_4600,
      I1 => U2_Result_2_1_CYSELF_4615,
      O => U2_Result_2_1_CYAND_4613
    );
  U2_Result_2_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U2_Result_2_1_CYMUXG2_4611,
      IB => U2_Result_2_1_FASTCARRY_4612,
      SEL => U2_Result_2_1_CYAND_4613,
      O => U2_Result_2_1_CYMUXFAST_4614
    );
  U2_Result_2_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y32"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_4609,
      IB => U2_Result_2_1_CYMUXF2_4610,
      SEL => U2_Result_2_1_CYSELG_4600,
      O => U2_Result_2_1_CYMUXG2_4611
    );
  U2_Result_2_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_G,
      O => U2_Result_2_1_CYSELG_4600
    );
  U2_Result_4_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      O => U2_Result_4_1_LOGIC_ZERO_4647
    );
  U2_Result_4_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORF_4667,
      O => U2_Result_4_1
    );
  U2_Result_4_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      I0 => U2_Result_4_1_CYINIT_4666,
      I1 => U2_Result_4_1_F,
      O => U2_Result_4_1_XORF_4667
    );
  U2_Result_4_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_4647,
      IB => U2_Result_4_1_CYINIT_4666,
      SEL => U2_Result_4_1_CYSELF_4653,
      O => U2_Mcount_HCS_cy_4_Q
    );
  U2_Result_4_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_4647,
      IB => U2_Result_4_1_LOGIC_ZERO_4647,
      SEL => U2_Result_4_1_CYSELF_4653,
      O => U2_Result_4_1_CYMUXF2_4648
    );
  U2_Result_4_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_3_Q,
      O => U2_Result_4_1_CYINIT_4666
    );
  U2_Result_4_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_F,
      O => U2_Result_4_1_CYSELF_4653
    );
  U2_Result_4_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORG_4655,
      O => U2_Result_5_1
    );
  U2_Result_4_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_4_Q,
      I1 => U2_Result_4_1_G,
      O => U2_Result_4_1_XORG_4655
    );
  U2_Result_4_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_CYMUXFAST_4652,
      O => U2_Mcount_HCS_cy_5_Q
    );
  U2_Result_4_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_3_Q,
      O => U2_Result_4_1_FASTCARRY_4650
    );
  U2_Result_4_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      I0 => U2_Result_4_1_CYSELG_4638,
      I1 => U2_Result_4_1_CYSELF_4653,
      O => U2_Result_4_1_CYAND_4651
    );
  U2_Result_4_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U2_Result_4_1_CYMUXG2_4649,
      IB => U2_Result_4_1_FASTCARRY_4650,
      SEL => U2_Result_4_1_CYAND_4651,
      O => U2_Result_4_1_CYMUXFAST_4652
    );
  U2_Result_4_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y33"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_4647,
      IB => U2_Result_4_1_CYMUXF2_4648,
      SEL => U2_Result_4_1_CYSELG_4638,
      O => U2_Result_4_1_CYMUXG2_4649
    );
  U2_Result_4_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_G,
      O => U2_Result_4_1_CYSELG_4638
    );
  U2_Result_6_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      O => U2_Result_6_1_LOGIC_ZERO_4685
    );
  U2_Result_6_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORF_4705,
      O => U2_Result_6_1
    );
  U2_Result_6_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      I0 => U2_Result_6_1_CYINIT_4704,
      I1 => U2_Result_6_1_F,
      O => U2_Result_6_1_XORF_4705
    );
  U2_Result_6_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_4685,
      IB => U2_Result_6_1_CYINIT_4704,
      SEL => U2_Result_6_1_CYSELF_4691,
      O => U2_Mcount_HCS_cy_6_Q
    );
  U2_Result_6_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_4685,
      IB => U2_Result_6_1_LOGIC_ZERO_4685,
      SEL => U2_Result_6_1_CYSELF_4691,
      O => U2_Result_6_1_CYMUXF2_4686
    );
  U2_Result_6_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_5_Q,
      O => U2_Result_6_1_CYINIT_4704
    );
  U2_Result_6_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_F,
      O => U2_Result_6_1_CYSELF_4691
    );
  U2_Result_6_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORG_4693,
      O => U2_Result_7_1
    );
  U2_Result_6_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_6_Q,
      I1 => U2_Result_6_1_G,
      O => U2_Result_6_1_XORG_4693
    );
  U2_Result_6_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_cy_5_Q,
      O => U2_Result_6_1_FASTCARRY_4688
    );
  U2_Result_6_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      I0 => U2_Result_6_1_CYSELG_4676,
      I1 => U2_Result_6_1_CYSELF_4691,
      O => U2_Result_6_1_CYAND_4689
    );
  U2_Result_6_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U2_Result_6_1_CYMUXG2_4687,
      IB => U2_Result_6_1_FASTCARRY_4688,
      SEL => U2_Result_6_1_CYAND_4689,
      O => U2_Result_6_1_CYMUXFAST_4690
    );
  U2_Result_6_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y34"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_4685,
      IB => U2_Result_6_1_CYMUXF2_4686,
      SEL => U2_Result_6_1_CYSELG_4676,
      O => U2_Result_6_1_CYMUXG2_4687
    );
  U2_Result_6_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X41Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_G,
      O => U2_Result_6_1_CYSELG_4676
    );
  U2_Result_8_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X41Y35"
    )
    port map (
      O => U2_Result_8_1_LOGIC_ZERO_4735
    );
  U2_Result_8_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORF_4736,
      O => U2_Result_8_1
    );
  U2_Result_8_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X41Y35"
    )
    port map (
      I0 => U2_Result_8_1_CYINIT_4734,
      I1 => U2_Result_8_1_F,
      O => U2_Result_8_1_XORF_4736
    );
  U2_Result_8_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X41Y35"
    )
    port map (
      IA => U2_Result_8_1_LOGIC_ZERO_4735,
      IB => U2_Result_8_1_CYINIT_4734,
      SEL => U2_Result_8_1_CYSELF_4725,
      O => U2_Mcount_HCS_cy_8_Q
    );
  U2_Result_8_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_CYMUXFAST_4690,
      O => U2_Result_8_1_CYINIT_4734
    );
  U2_Result_8_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_F,
      O => U2_Result_8_1_CYSELF_4725
    );
  U2_Result_8_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORG_4722,
      O => U2_Result_9_1
    );
  U2_Result_8_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X41Y35"
    )
    port map (
      I0 => U2_Mcount_HCS_cy_8_Q,
      I1 => U2_HCS_9_rt_4719,
      O => U2_Result_8_1_XORG_4722
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X45Y18"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(0),
      ADR1 => vga_sprite_ypixSkye(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5)
    );
  vga_sprite_rom_addr20_addsub0001_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_5_XORF_4772,
      O => vga_sprite_rom_addr20_addsub0001(5)
    );
  vga_sprite_rom_addr20_addsub0001_5_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y18"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_5_CYINIT_4771,
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0001_5_XORF_4772
    );
  vga_sprite_rom_addr20_addsub0001_5_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y18"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_5_CY0F_4770,
      IB => vga_sprite_rom_addr20_addsub0001_5_CYINIT_4771,
      SEL => vga_sprite_rom_addr20_addsub0001_5_CYSELF_4762,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5)
    );
  vga_sprite_rom_addr20_addsub0001_5_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_5_BXINV_4760,
      O => vga_sprite_rom_addr20_addsub0001_5_CYINIT_4771
    );
  vga_sprite_rom_addr20_addsub0001_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(0),
      O => vga_sprite_rom_addr20_addsub0001_5_CY0F_4770
    );
  vga_sprite_rom_addr20_addsub0001_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(5),
      O => vga_sprite_rom_addr20_addsub0001_5_CYSELF_4762
    );
  vga_sprite_rom_addr20_addsub0001_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr20_addsub0001_5_BXINV_4760
    );
  vga_sprite_rom_addr20_addsub0001_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_5_XORG_4758,
      O => vga_sprite_rom_addr20_addsub0001(6)
    );
  vga_sprite_rom_addr20_addsub0001_5_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y18"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5),
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0001_5_XORG_4758
    );
  vga_sprite_rom_addr20_addsub0001_5_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_5_CYMUXG_4757,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6)
    );
  vga_sprite_rom_addr20_addsub0001_5_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y18"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_5_CY0G_4755,
      IB => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(5),
      SEL => vga_sprite_rom_addr20_addsub0001_5_CYSELG_4747,
      O => vga_sprite_rom_addr20_addsub0001_5_CYMUXG_4757
    );
  vga_sprite_rom_addr20_addsub0001_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(6),
      O => vga_sprite_rom_addr20_addsub0001_5_CY0G_4755
    );
  vga_sprite_rom_addr20_addsub0001_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6),
      O => vga_sprite_rom_addr20_addsub0001_5_CYSELG_4747
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X45Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0000(6),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(4),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X45Y19"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0000(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(5),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7)
    );
  vga_sprite_rom_addr20_addsub0001_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_7_XORF_4811,
      O => vga_sprite_rom_addr20_addsub0001(7)
    );
  vga_sprite_rom_addr20_addsub0001_7_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_7_CYINIT_4810,
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0001_7_XORF_4811
    );
  vga_sprite_rom_addr20_addsub0001_7_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_7_CY0F_4809,
      IB => vga_sprite_rom_addr20_addsub0001_7_CYINIT_4810,
      SEL => vga_sprite_rom_addr20_addsub0001_7_CYSELF_4797,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(7)
    );
  vga_sprite_rom_addr20_addsub0001_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_7_CY0F_4809,
      IB => vga_sprite_rom_addr20_addsub0001_7_CY0F_4809,
      SEL => vga_sprite_rom_addr20_addsub0001_7_CYSELF_4797,
      O => vga_sprite_rom_addr20_addsub0001_7_CYMUXF2_4792
    );
  vga_sprite_rom_addr20_addsub0001_7_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr20_addsub0001_7_CYINIT_4810
    );
  vga_sprite_rom_addr20_addsub0001_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(7),
      O => vga_sprite_rom_addr20_addsub0001_7_CY0F_4809
    );
  vga_sprite_rom_addr20_addsub0001_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(7),
      O => vga_sprite_rom_addr20_addsub0001_7_CYSELF_4797
    );
  vga_sprite_rom_addr20_addsub0001_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_7_XORG_4799,
      O => vga_sprite_rom_addr20_addsub0001(8)
    );
  vga_sprite_rom_addr20_addsub0001_7_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(7),
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0001_7_XORG_4799
    );
  vga_sprite_rom_addr20_addsub0001_7_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_7_CYMUXFAST_4796,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8)
    );
  vga_sprite_rom_addr20_addsub0001_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(6),
      O => vga_sprite_rom_addr20_addsub0001_7_FASTCARRY_4794
    );
  vga_sprite_rom_addr20_addsub0001_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_7_CYSELG_4783,
      I1 => vga_sprite_rom_addr20_addsub0001_7_CYSELF_4797,
      O => vga_sprite_rom_addr20_addsub0001_7_CYAND_4795
    );
  vga_sprite_rom_addr20_addsub0001_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_7_CYMUXG2_4793,
      IB => vga_sprite_rom_addr20_addsub0001_7_FASTCARRY_4794,
      SEL => vga_sprite_rom_addr20_addsub0001_7_CYAND_4795,
      O => vga_sprite_rom_addr20_addsub0001_7_CYMUXFAST_4796
    );
  vga_sprite_rom_addr20_addsub0001_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y19"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_7_CY0G_4791,
      IB => vga_sprite_rom_addr20_addsub0001_7_CYMUXF2_4792,
      SEL => vga_sprite_rom_addr20_addsub0001_7_CYSELG_4783,
      O => vga_sprite_rom_addr20_addsub0001_7_CYMUXG2_4793
    );
  vga_sprite_rom_addr20_addsub0001_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(8),
      O => vga_sprite_rom_addr20_addsub0001_7_CY0G_4791
    );
  vga_sprite_rom_addr20_addsub0001_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8),
      O => vga_sprite_rom_addr20_addsub0001_7_CYSELG_4783
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X45Y19"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0000(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(6),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(8)
    );
  vga_sprite_rom_addr20_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_9_XORF_4850,
      O => vga_sprite_rom_addr20_addsub0001(9)
    );
  vga_sprite_rom_addr20_addsub0001_9_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_9_CYINIT_4849,
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0001_9_XORF_4850
    );
  vga_sprite_rom_addr20_addsub0001_9_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_9_CY0F_4848,
      IB => vga_sprite_rom_addr20_addsub0001_9_CYINIT_4849,
      SEL => vga_sprite_rom_addr20_addsub0001_9_CYSELF_4836,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(9)
    );
  vga_sprite_rom_addr20_addsub0001_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_9_CY0F_4848,
      IB => vga_sprite_rom_addr20_addsub0001_9_CY0F_4848,
      SEL => vga_sprite_rom_addr20_addsub0001_9_CYSELF_4836,
      O => vga_sprite_rom_addr20_addsub0001_9_CYMUXF2_4831
    );
  vga_sprite_rom_addr20_addsub0001_9_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr20_addsub0001_9_CYINIT_4849
    );
  vga_sprite_rom_addr20_addsub0001_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(9),
      O => vga_sprite_rom_addr20_addsub0001_9_CY0F_4848
    );
  vga_sprite_rom_addr20_addsub0001_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9),
      O => vga_sprite_rom_addr20_addsub0001_9_CYSELF_4836
    );
  vga_sprite_rom_addr20_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_9_XORG_4838,
      O => vga_sprite_rom_addr20_addsub0001(10)
    );
  vga_sprite_rom_addr20_addsub0001_9_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(9),
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr20_addsub0001_9_XORG_4838
    );
  vga_sprite_rom_addr20_addsub0001_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_9_CYMUXFAST_4835,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10)
    );
  vga_sprite_rom_addr20_addsub0001_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(8),
      O => vga_sprite_rom_addr20_addsub0001_9_FASTCARRY_4833
    );
  vga_sprite_rom_addr20_addsub0001_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_9_CYSELG_4822,
      I1 => vga_sprite_rom_addr20_addsub0001_9_CYSELF_4836,
      O => vga_sprite_rom_addr20_addsub0001_9_CYAND_4834
    );
  vga_sprite_rom_addr20_addsub0001_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_9_CYMUXG2_4832,
      IB => vga_sprite_rom_addr20_addsub0001_9_FASTCARRY_4833,
      SEL => vga_sprite_rom_addr20_addsub0001_9_CYAND_4834,
      O => vga_sprite_rom_addr20_addsub0001_9_CYMUXFAST_4835
    );
  vga_sprite_rom_addr20_addsub0001_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y20"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_9_CY0G_4830,
      IB => vga_sprite_rom_addr20_addsub0001_9_CYMUXF2_4831,
      SEL => vga_sprite_rom_addr20_addsub0001_9_CYSELG_4822,
      O => vga_sprite_rom_addr20_addsub0001_9_CYMUXG2_4832
    );
  vga_sprite_rom_addr20_addsub0001_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(10),
      O => vga_sprite_rom_addr20_addsub0001_9_CY0G_4830
    );
  vga_sprite_rom_addr20_addsub0001_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10),
      O => vga_sprite_rom_addr20_addsub0001_9_CYSELG_4822
    );
  vga_sprite_rom_addr20_addsub0001_11_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      O => vga_sprite_rom_addr20_addsub0001_11_LOGIC_ZERO_4869
    );
  vga_sprite_rom_addr20_addsub0001_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_11_XORF_4889,
      O => vga_sprite_rom_addr20_addsub0001(11)
    );
  vga_sprite_rom_addr20_addsub0001_11_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_11_CYINIT_4888,
      I1 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr20_addsub0001_11_XORF_4889
    );
  vga_sprite_rom_addr20_addsub0001_11_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_11_CY0F_4887,
      IB => vga_sprite_rom_addr20_addsub0001_11_CYINIT_4888,
      SEL => vga_sprite_rom_addr20_addsub0001_11_CYSELF_4875,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11)
    );
  vga_sprite_rom_addr20_addsub0001_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_11_CY0F_4887,
      IB => vga_sprite_rom_addr20_addsub0001_11_CY0F_4887,
      SEL => vga_sprite_rom_addr20_addsub0001_11_CYSELF_4875,
      O => vga_sprite_rom_addr20_addsub0001_11_CYMUXF2_4870
    );
  vga_sprite_rom_addr20_addsub0001_11_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr20_addsub0001_11_CYINIT_4888
    );
  vga_sprite_rom_addr20_addsub0001_11_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0000(11),
      O => vga_sprite_rom_addr20_addsub0001_11_CY0F_4887
    );
  vga_sprite_rom_addr20_addsub0001_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11),
      O => vga_sprite_rom_addr20_addsub0001_11_CYSELF_4875
    );
  vga_sprite_rom_addr20_addsub0001_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_11_XORG_4877,
      O => vga_sprite_rom_addr20_addsub0001(12)
    );
  vga_sprite_rom_addr20_addsub0001_11_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(11),
      I1 => vga_sprite_rom_addr20_addsub0001_11_G,
      O => vga_sprite_rom_addr20_addsub0001_11_XORG_4877
    );
  vga_sprite_rom_addr20_addsub0001_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_addsub0001_Madd_cy(10),
      O => vga_sprite_rom_addr20_addsub0001_11_FASTCARRY_4872
    );
  vga_sprite_rom_addr20_addsub0001_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_11_CYSELG_4860,
      I1 => vga_sprite_rom_addr20_addsub0001_11_CYSELF_4875,
      O => vga_sprite_rom_addr20_addsub0001_11_CYAND_4873
    );
  vga_sprite_rom_addr20_addsub0001_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_11_CYMUXG2_4871,
      IB => vga_sprite_rom_addr20_addsub0001_11_FASTCARRY_4872,
      SEL => vga_sprite_rom_addr20_addsub0001_11_CYAND_4873,
      O => vga_sprite_rom_addr20_addsub0001_11_CYMUXFAST_4874
    );
  vga_sprite_rom_addr20_addsub0001_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y21"
    )
    port map (
      IA => vga_sprite_rom_addr20_addsub0001_11_LOGIC_ZERO_4869,
      IB => vga_sprite_rom_addr20_addsub0001_11_CYMUXF2_4870,
      SEL => vga_sprite_rom_addr20_addsub0001_11_CYSELG_4860,
      O => vga_sprite_rom_addr20_addsub0001_11_CYMUXG2_4871
    );
  vga_sprite_rom_addr20_addsub0001_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_11_G,
      O => vga_sprite_rom_addr20_addsub0001_11_CYSELG_4860
    );
  vga_sprite_rom_addr20_addsub0001_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_13_XORF_4904,
      O => vga_sprite_rom_addr20_addsub0001(13)
    );
  vga_sprite_rom_addr20_addsub0001_13_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y22"
    )
    port map (
      I0 => vga_sprite_rom_addr20_addsub0001_13_CYINIT_4903,
      I1 => vga_sprite_rom_addr20_addsub0000_13_rt_4901,
      O => vga_sprite_rom_addr20_addsub0001_13_XORF_4904
    );
  vga_sprite_rom_addr20_addsub0001_13_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001_11_CYMUXFAST_4874,
      O => vga_sprite_rom_addr20_addsub0001_13_CYINIT_4903
    );
  romSkye_addr14_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_2_XORF_4940,
      O => romSkye_addr14(2)
    );
  romSkye_addr14_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y16"
    )
    port map (
      I0 => romSkye_addr14_2_CYINIT_4939,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2),
      O => romSkye_addr14_2_XORF_4940
    );
  romSkye_addr14_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y16"
    )
    port map (
      IA => romSkye_addr14_2_CY0F_4938,
      IB => romSkye_addr14_2_CYINIT_4939,
      SEL => romSkye_addr14_2_CYSELF_4930,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_2_Q
    );
  romSkye_addr14_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_2_BXINV_4928,
      O => romSkye_addr14_2_CYINIT_4939
    );
  romSkye_addr14_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(0),
      O => romSkye_addr14_2_CY0F_4938
    );
  romSkye_addr14_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2),
      O => romSkye_addr14_2_CYSELF_4930
    );
  romSkye_addr14_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => romSkye_addr14_2_BXINV_4928
    );
  romSkye_addr14_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_2_XORG_4926,
      O => romSkye_addr14(3)
    );
  romSkye_addr14_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y16"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_2_Q,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3),
      O => romSkye_addr14_2_XORG_4926
    );
  romSkye_addr14_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_2_CYMUXG_4925,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_3_Q
    );
  romSkye_addr14_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X44Y16"
    )
    port map (
      IA => romSkye_addr14_2_CY0G_4923,
      IB => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_2_Q,
      SEL => romSkye_addr14_2_CYSELG_4915,
      O => romSkye_addr14_2_CYMUXG_4925
    );
  romSkye_addr14_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(1),
      O => romSkye_addr14_2_CY0G_4923
    );
  romSkye_addr14_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3),
      O => romSkye_addr14_2_CYSELG_4915
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X44Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixSkye(2),
      ADR2 => vga_sprite_xpixSkye(4),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4)
    );
  romSkye_addr14_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_4_XORF_4979,
      O => romSkye_addr14(4)
    );
  romSkye_addr14_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      I0 => romSkye_addr14_4_CYINIT_4978,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4),
      O => romSkye_addr14_4_XORF_4979
    );
  romSkye_addr14_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      IA => romSkye_addr14_4_CY0F_4977,
      IB => romSkye_addr14_4_CYINIT_4978,
      SEL => romSkye_addr14_4_CYSELF_4965,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_4_Q
    );
  romSkye_addr14_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      IA => romSkye_addr14_4_CY0F_4977,
      IB => romSkye_addr14_4_CY0F_4977,
      SEL => romSkye_addr14_4_CYSELF_4965,
      O => romSkye_addr14_4_CYMUXF2_4960
    );
  romSkye_addr14_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_3_Q,
      O => romSkye_addr14_4_CYINIT_4978
    );
  romSkye_addr14_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixSkye(2),
      O => romSkye_addr14_4_CY0F_4977
    );
  romSkye_addr14_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(4),
      O => romSkye_addr14_4_CYSELF_4965
    );
  romSkye_addr14_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_4_XORG_4967,
      O => romSkye_addr14(5)
    );
  romSkye_addr14_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_4_Q,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5),
      O => romSkye_addr14_4_XORG_4967
    );
  romSkye_addr14_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_4_CYMUXFAST_4964,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_5_Q
    );
  romSkye_addr14_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_3_Q,
      O => romSkye_addr14_4_FASTCARRY_4962
    );
  romSkye_addr14_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      I0 => romSkye_addr14_4_CYSELG_4951,
      I1 => romSkye_addr14_4_CYSELF_4965,
      O => romSkye_addr14_4_CYAND_4963
    );
  romSkye_addr14_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      IA => romSkye_addr14_4_CYMUXG2_4961,
      IB => romSkye_addr14_4_FASTCARRY_4962,
      SEL => romSkye_addr14_4_CYAND_4963,
      O => romSkye_addr14_4_CYMUXFAST_4964
    );
  romSkye_addr14_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y17"
    )
    port map (
      IA => romSkye_addr14_4_CY0G_4959,
      IB => romSkye_addr14_4_CYMUXF2_4960,
      SEL => romSkye_addr14_4_CYSELG_4951,
      O => romSkye_addr14_4_CYMUXG2_4961
    );
  romSkye_addr14_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001(5),
      O => romSkye_addr14_4_CY0G_4959
    );
  romSkye_addr14_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5),
      O => romSkye_addr14_4_CYSELG_4951
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X44Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0001(6),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixSkye(6),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6)
    );
  romSkye_addr14_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_6_XORF_5018,
      O => romSkye_addr14(6)
    );
  romSkye_addr14_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      I0 => romSkye_addr14_6_CYINIT_5017,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6),
      O => romSkye_addr14_6_XORF_5018
    );
  romSkye_addr14_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      IA => romSkye_addr14_6_CY0F_5016,
      IB => romSkye_addr14_6_CYINIT_5017,
      SEL => romSkye_addr14_6_CYSELF_5004,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_6_Q
    );
  romSkye_addr14_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      IA => romSkye_addr14_6_CY0F_5016,
      IB => romSkye_addr14_6_CY0F_5016,
      SEL => romSkye_addr14_6_CYSELF_5004,
      O => romSkye_addr14_6_CYMUXF2_4999
    );
  romSkye_addr14_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_5_Q,
      O => romSkye_addr14_6_CYINIT_5017
    );
  romSkye_addr14_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001(6),
      O => romSkye_addr14_6_CY0F_5016
    );
  romSkye_addr14_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(6),
      O => romSkye_addr14_6_CYSELF_5004
    );
  romSkye_addr14_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_6_XORG_5006,
      O => romSkye_addr14(7)
    );
  romSkye_addr14_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_6_Q,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7),
      O => romSkye_addr14_6_XORG_5006
    );
  romSkye_addr14_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_6_CYMUXFAST_5003,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_7_Q
    );
  romSkye_addr14_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_5_Q,
      O => romSkye_addr14_6_FASTCARRY_5001
    );
  romSkye_addr14_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      I0 => romSkye_addr14_6_CYSELG_4990,
      I1 => romSkye_addr14_6_CYSELF_5004,
      O => romSkye_addr14_6_CYAND_5002
    );
  romSkye_addr14_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      IA => romSkye_addr14_6_CYMUXG2_5000,
      IB => romSkye_addr14_6_FASTCARRY_5001,
      SEL => romSkye_addr14_6_CYAND_5002,
      O => romSkye_addr14_6_CYMUXFAST_5003
    );
  romSkye_addr14_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y18"
    )
    port map (
      IA => romSkye_addr14_6_CY0G_4998,
      IB => romSkye_addr14_6_CYMUXF2_4999,
      SEL => romSkye_addr14_6_CYSELG_4990,
      O => romSkye_addr14_6_CYMUXG2_5000
    );
  romSkye_addr14_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001(7),
      O => romSkye_addr14_6_CY0G_4998
    );
  romSkye_addr14_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7),
      O => romSkye_addr14_6_CYSELG_4990
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X44Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0001(7),
      ADR2 => vga_sprite_xpixSkye(7),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(7)
    );
  romSkye_addr14_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_8_XORF_5057,
      O => romSkye_addr14(8)
    );
  romSkye_addr14_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      I0 => romSkye_addr14_8_CYINIT_5056,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8),
      O => romSkye_addr14_8_XORF_5057
    );
  romSkye_addr14_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      IA => romSkye_addr14_8_CY0F_5055,
      IB => romSkye_addr14_8_CYINIT_5056,
      SEL => romSkye_addr14_8_CYSELF_5043,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_8_Q
    );
  romSkye_addr14_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      IA => romSkye_addr14_8_CY0F_5055,
      IB => romSkye_addr14_8_CY0F_5055,
      SEL => romSkye_addr14_8_CYSELF_5043,
      O => romSkye_addr14_8_CYMUXF2_5038
    );
  romSkye_addr14_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_7_Q,
      O => romSkye_addr14_8_CYINIT_5056
    );
  romSkye_addr14_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001(8),
      O => romSkye_addr14_8_CY0F_5055
    );
  romSkye_addr14_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8),
      O => romSkye_addr14_8_CYSELF_5043
    );
  romSkye_addr14_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_8_XORG_5045,
      O => romSkye_addr14(9)
    );
  romSkye_addr14_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_8_Q,
      I1 => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9),
      O => romSkye_addr14_8_XORG_5045
    );
  romSkye_addr14_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_8_CYMUXFAST_5042,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_9_Q
    );
  romSkye_addr14_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_7_Q,
      O => romSkye_addr14_8_FASTCARRY_5040
    );
  romSkye_addr14_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      I0 => romSkye_addr14_8_CYSELG_5029,
      I1 => romSkye_addr14_8_CYSELF_5043,
      O => romSkye_addr14_8_CYAND_5041
    );
  romSkye_addr14_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      IA => romSkye_addr14_8_CYMUXG2_5039,
      IB => romSkye_addr14_8_FASTCARRY_5040,
      SEL => romSkye_addr14_8_CYAND_5041,
      O => romSkye_addr14_8_CYMUXFAST_5042
    );
  romSkye_addr14_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y19"
    )
    port map (
      IA => romSkye_addr14_8_CY0G_5037,
      IB => romSkye_addr14_8_CYMUXF2_5038,
      SEL => romSkye_addr14_8_CYSELG_5029,
      O => romSkye_addr14_8_CYMUXG2_5039
    );
  romSkye_addr14_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr20_addsub0001(9),
      O => romSkye_addr14_8_CY0G_5037
    );
  romSkye_addr14_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9),
      O => romSkye_addr14_8_CYSELG_5029
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5102,
      O => romSkye_addr14(10)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      I0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5101,
      I1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5102
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      IA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078,
      IB => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5101,
      SEL => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5084,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_Q
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      IA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078,
      IB => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078,
      SEL => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5084,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5079
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_9_Q,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5101
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5084
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5087,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5088
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5087,
      O => romSkye_addr14(11)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5086,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5087
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_10_Q,
      I1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5086
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_9_Q,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5081
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      I0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5069,
      I1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5084,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5082
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      IA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5080,
      IB => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5081,
      SEL => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5082,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5083
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y20"
    )
    port map (
      IA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5078,
      IB => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5079,
      SEL => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5069,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5080
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5069
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5067
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y21"
    )
    port map (
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5140
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5142,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5143
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5142,
      O => romSkye_addr14(12)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5141,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5142
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y21"
    )
    port map (
      I0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5139,
      I1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5141
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y21"
    )
    port map (
      IA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5140,
      IB => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5139,
      SEL => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5130,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_Q
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5083,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5139
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5130
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5124,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5125
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5124,
      O => romSkye_addr14(13)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5123,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5124
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y21"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr20_add0000_Madd_cy_12_Q,
      I1 => vga_sprite_rom_addr20_addsub0001_13_rt_5120,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5123
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5112
    );
  romMona_addr14_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_2_XORF_5181,
      O => romMona_addr14(2)
    );
  romMona_addr14_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      I0 => romMona_addr14_2_CYINIT_5180,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2),
      O => romMona_addr14_2_XORF_5181
    );
  romMona_addr14_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      IA => romMona_addr14_2_CY0F_5179,
      IB => romMona_addr14_2_CYINIT_5180,
      SEL => romMona_addr14_2_CYSELF_5171,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_2_Q
    );
  romMona_addr14_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_2_BXINV_5169,
      O => romMona_addr14_2_CYINIT_5180
    );
  romMona_addr14_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(0),
      O => romMona_addr14_2_CY0F_5179
    );
  romMona_addr14_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2),
      O => romMona_addr14_2_CYSELF_5171
    );
  romMona_addr14_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => romMona_addr14_2_BXINV_5169
    );
  romMona_addr14_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_2_XORG_5167,
      O => romMona_addr14(3)
    );
  romMona_addr14_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_2_Q,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3),
      O => romMona_addr14_2_XORG_5167
    );
  romMona_addr14_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_2_CYMUXG_5166,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_3_Q
    );
  romMona_addr14_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      IA => romMona_addr14_2_CY0G_5164,
      IB => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_2_Q,
      SEL => romMona_addr14_2_CYSELG_5156,
      O => romMona_addr14_2_CYMUXG_5166
    );
  romMona_addr14_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(1),
      O => romMona_addr14_2_CY0G_5164
    );
  romMona_addr14_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3),
      O => romMona_addr14_2_CYSELG_5156
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(0),
      ADR1 => VCC,
      ADR2 => vga_sprite_xpixMona(2),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(2)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X39Y35"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixMona(4),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4)
    );
  romMona_addr14_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_4_XORF_5220,
      O => romMona_addr14(4)
    );
  romMona_addr14_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      I0 => romMona_addr14_4_CYINIT_5219,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4),
      O => romMona_addr14_4_XORF_5220
    );
  romMona_addr14_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      IA => romMona_addr14_4_CY0F_5218,
      IB => romMona_addr14_4_CYINIT_5219,
      SEL => romMona_addr14_4_CYSELF_5206,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_4_Q
    );
  romMona_addr14_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      IA => romMona_addr14_4_CY0F_5218,
      IB => romMona_addr14_4_CY0F_5218,
      SEL => romMona_addr14_4_CYSELF_5206,
      O => romMona_addr14_4_CYMUXF2_5201
    );
  romMona_addr14_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_3_Q,
      O => romMona_addr14_4_CYINIT_5219
    );
  romMona_addr14_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona(2),
      O => romMona_addr14_4_CY0F_5218
    );
  romMona_addr14_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(4),
      O => romMona_addr14_4_CYSELF_5206
    );
  romMona_addr14_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_4_XORG_5208,
      O => romMona_addr14(5)
    );
  romMona_addr14_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_4_Q,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5),
      O => romMona_addr14_4_XORG_5208
    );
  romMona_addr14_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_4_CYMUXFAST_5205,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_5_Q
    );
  romMona_addr14_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_3_Q,
      O => romMona_addr14_4_FASTCARRY_5203
    );
  romMona_addr14_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      I0 => romMona_addr14_4_CYSELG_5192,
      I1 => romMona_addr14_4_CYSELF_5206,
      O => romMona_addr14_4_CYAND_5204
    );
  romMona_addr14_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      IA => romMona_addr14_4_CYMUXG2_5202,
      IB => romMona_addr14_4_FASTCARRY_5203,
      SEL => romMona_addr14_4_CYAND_5204,
      O => romMona_addr14_4_CYMUXFAST_5205
    );
  romMona_addr14_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y35"
    )
    port map (
      IA => romMona_addr14_4_CY0G_5200,
      IB => romMona_addr14_4_CYMUXF2_5201,
      SEL => romMona_addr14_4_CYSELG_5192,
      O => romMona_addr14_4_CYMUXG2_5202
    );
  romMona_addr14_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001(5),
      O => romMona_addr14_4_CY0G_5200
    );
  romMona_addr14_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5),
      O => romMona_addr14_4_CYSELG_5192
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X39Y35"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0001(5),
      ADR1 => vga_sprite_xpixMona(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(5)
    );
  romMona_addr14_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_6_XORF_5259,
      O => romMona_addr14(6)
    );
  romMona_addr14_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      I0 => romMona_addr14_6_CYINIT_5258,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6),
      O => romMona_addr14_6_XORF_5259
    );
  romMona_addr14_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      IA => romMona_addr14_6_CY0F_5257,
      IB => romMona_addr14_6_CYINIT_5258,
      SEL => romMona_addr14_6_CYSELF_5245,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_6_Q
    );
  romMona_addr14_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      IA => romMona_addr14_6_CY0F_5257,
      IB => romMona_addr14_6_CY0F_5257,
      SEL => romMona_addr14_6_CYSELF_5245,
      O => romMona_addr14_6_CYMUXF2_5240
    );
  romMona_addr14_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_5_Q,
      O => romMona_addr14_6_CYINIT_5258
    );
  romMona_addr14_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001(6),
      O => romMona_addr14_6_CY0F_5257
    );
  romMona_addr14_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6),
      O => romMona_addr14_6_CYSELF_5245
    );
  romMona_addr14_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_6_XORG_5247,
      O => romMona_addr14(7)
    );
  romMona_addr14_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_6_Q,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7),
      O => romMona_addr14_6_XORG_5247
    );
  romMona_addr14_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_6_CYMUXFAST_5244,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_7_Q
    );
  romMona_addr14_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_5_Q,
      O => romMona_addr14_6_FASTCARRY_5242
    );
  romMona_addr14_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      I0 => romMona_addr14_6_CYSELG_5231,
      I1 => romMona_addr14_6_CYSELF_5245,
      O => romMona_addr14_6_CYAND_5243
    );
  romMona_addr14_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      IA => romMona_addr14_6_CYMUXG2_5241,
      IB => romMona_addr14_6_FASTCARRY_5242,
      SEL => romMona_addr14_6_CYAND_5243,
      O => romMona_addr14_6_CYMUXFAST_5244
    );
  romMona_addr14_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      IA => romMona_addr14_6_CY0G_5239,
      IB => romMona_addr14_6_CYMUXF2_5240,
      SEL => romMona_addr14_6_CYSELG_5231,
      O => romMona_addr14_6_CYMUXG2_5241
    );
  romMona_addr14_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001(7),
      O => romMona_addr14_6_CY0G_5239
    );
  romMona_addr14_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7),
      O => romMona_addr14_6_CYSELG_5231
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X39Y36"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0001(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixMona(7),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(7)
    );
  romMona_addr14_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_8_XORF_5298,
      O => romMona_addr14(8)
    );
  romMona_addr14_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      I0 => romMona_addr14_8_CYINIT_5297,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8),
      O => romMona_addr14_8_XORF_5298
    );
  romMona_addr14_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      IA => romMona_addr14_8_CY0F_5296,
      IB => romMona_addr14_8_CYINIT_5297,
      SEL => romMona_addr14_8_CYSELF_5284,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_8_Q
    );
  romMona_addr14_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      IA => romMona_addr14_8_CY0F_5296,
      IB => romMona_addr14_8_CY0F_5296,
      SEL => romMona_addr14_8_CYSELF_5284,
      O => romMona_addr14_8_CYMUXF2_5279
    );
  romMona_addr14_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_7_Q,
      O => romMona_addr14_8_CYINIT_5297
    );
  romMona_addr14_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001(8),
      O => romMona_addr14_8_CY0F_5296
    );
  romMona_addr14_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8),
      O => romMona_addr14_8_CYSELF_5284
    );
  romMona_addr14_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_8_XORG_5286,
      O => romMona_addr14(9)
    );
  romMona_addr14_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_8_Q,
      I1 => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9),
      O => romMona_addr14_8_XORG_5286
    );
  romMona_addr14_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14_8_CYMUXFAST_5283,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_9_Q
    );
  romMona_addr14_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_7_Q,
      O => romMona_addr14_8_FASTCARRY_5281
    );
  romMona_addr14_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      I0 => romMona_addr14_8_CYSELG_5270,
      I1 => romMona_addr14_8_CYSELF_5284,
      O => romMona_addr14_8_CYAND_5282
    );
  romMona_addr14_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      IA => romMona_addr14_8_CYMUXG2_5280,
      IB => romMona_addr14_8_FASTCARRY_5281,
      SEL => romMona_addr14_8_CYAND_5282,
      O => romMona_addr14_8_CYMUXFAST_5283
    );
  romMona_addr14_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y37"
    )
    port map (
      IA => romMona_addr14_8_CY0G_5278,
      IB => romMona_addr14_8_CYMUXF2_5279,
      SEL => romMona_addr14_8_CYSELG_5270,
      O => romMona_addr14_8_CYMUXG2_5280
    );
  romMona_addr14_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr21_addsub0001(9),
      O => romMona_addr14_8_CY0G_5278
    );
  romMona_addr14_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9),
      O => romMona_addr14_8_CYSELG_5270
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5343,
      O => romMona_addr14(10)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      I0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5342,
      I1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORF_5343
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      IA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319,
      IB => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5342,
      SEL => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5325,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_Q
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      IA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319,
      IB => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319,
      SEL => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5325,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5320
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_9_Q,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYINIT_5342
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5325
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5328,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5329
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5328,
      O => romMona_addr14(11)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5327,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_GYMUX_5328
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_10_Q,
      I1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_XORG_5327
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_9_Q,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5322
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      I0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5310,
      I1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELF_5325,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5323
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      IA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5321,
      IB => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_FASTCARRY_5322,
      SEL => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYAND_5323,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5324
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y38"
    )
    port map (
      IA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_LOGIC_ZERO_5319,
      IB => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXF2_5320,
      SEL => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5310,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXG2_5321
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYSELG_5310
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5308
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y39"
    )
    port map (
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5381
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5383,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5384
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5383,
      O => romMona_addr14(12)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5382,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_FXMUX_5383
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y39"
    )
    port map (
      I0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5380,
      I1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORF_5382
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y39"
    )
    port map (
      IA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_LOGIC_ZERO_5381,
      IB => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5380,
      SEL => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5371,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_Q
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CYMUXFAST_5324,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYINIT_5380
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CYSELF_5371
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5365,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5366
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5365,
      O => romMona_addr14(13)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5364,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_GYMUX_5365
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y39"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr21_add0000_Madd_cy_12_Q,
      I1 => vga_sprite_rom_addr21_addsub0001_13_rt_5361,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_XORG_5364
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5353
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y40"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(0),
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixRey(1),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3)
    );
  vga_sprite_rom_addr2_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_6_XORF_5422,
      O => vga_sprite_rom_addr2_addsub0000(6)
    );
  vga_sprite_rom_addr2_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_6_CYINIT_5421,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr2_addsub0000_6_XORF_5422
    );
  vga_sprite_rom_addr2_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_6_CY0F_5420,
      IB => vga_sprite_rom_addr2_addsub0000_6_CYINIT_5421,
      SEL => vga_sprite_rom_addr2_addsub0000_6_CYSELF_5412,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_3_Q
    );
  vga_sprite_rom_addr2_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_6_BXINV_5410,
      O => vga_sprite_rom_addr2_addsub0000_6_CYINIT_5421
    );
  vga_sprite_rom_addr2_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(0),
      O => vga_sprite_rom_addr2_addsub0000_6_CY0F_5420
    );
  vga_sprite_rom_addr2_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(3),
      O => vga_sprite_rom_addr2_addsub0000_6_CYSELF_5412
    );
  vga_sprite_rom_addr2_addsub0000_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => vga_sprite_rom_addr2_addsub0000_6_BXINV_5410
    );
  vga_sprite_rom_addr2_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_6_XORG_5408,
      O => vga_sprite_rom_addr2_addsub0000(7)
    );
  vga_sprite_rom_addr2_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_3_Q,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr2_addsub0000_6_XORG_5408
    );
  vga_sprite_rom_addr2_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_6_CYMUXG_5407,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_4_Q
    );
  vga_sprite_rom_addr2_addsub0000_6_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y40"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_6_CY0G_5405,
      IB => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_3_Q,
      SEL => vga_sprite_rom_addr2_addsub0000_6_CYSELG_5397,
      O => vga_sprite_rom_addr2_addsub0000_6_CYMUXG_5407
    );
  vga_sprite_rom_addr2_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(1),
      O => vga_sprite_rom_addr2_addsub0000_6_CY0G_5405
    );
  vga_sprite_rom_addr2_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4),
      O => vga_sprite_rom_addr2_addsub0000_6_CYSELG_5397
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y40"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(1),
      ADR1 => vga_sprite_ypixRey(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(4)
    );
  vga_sprite_rom_addr2_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_8_XORF_5461,
      O => vga_sprite_rom_addr2_addsub0000(8)
    );
  vga_sprite_rom_addr2_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_8_CYINIT_5460,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0000_8_XORF_5461
    );
  vga_sprite_rom_addr2_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_8_CY0F_5459,
      IB => vga_sprite_rom_addr2_addsub0000_8_CYINIT_5460,
      SEL => vga_sprite_rom_addr2_addsub0000_8_CYSELF_5447,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_5_Q
    );
  vga_sprite_rom_addr2_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_8_CY0F_5459,
      IB => vga_sprite_rom_addr2_addsub0000_8_CY0F_5459,
      SEL => vga_sprite_rom_addr2_addsub0000_8_CYSELF_5447,
      O => vga_sprite_rom_addr2_addsub0000_8_CYMUXF2_5442
    );
  vga_sprite_rom_addr2_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr2_addsub0000_8_CYINIT_5460
    );
  vga_sprite_rom_addr2_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(2),
      O => vga_sprite_rom_addr2_addsub0000_8_CY0F_5459
    );
  vga_sprite_rom_addr2_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5),
      O => vga_sprite_rom_addr2_addsub0000_8_CYSELF_5447
    );
  vga_sprite_rom_addr2_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_8_XORG_5449,
      O => vga_sprite_rom_addr2_addsub0000(9)
    );
  vga_sprite_rom_addr2_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_5_Q,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0000_8_XORG_5449
    );
  vga_sprite_rom_addr2_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_8_CYMUXFAST_5446,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_6_Q
    );
  vga_sprite_rom_addr2_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_4_Q,
      O => vga_sprite_rom_addr2_addsub0000_8_FASTCARRY_5444
    );
  vga_sprite_rom_addr2_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_8_CYSELG_5433,
      I1 => vga_sprite_rom_addr2_addsub0000_8_CYSELF_5447,
      O => vga_sprite_rom_addr2_addsub0000_8_CYAND_5445
    );
  vga_sprite_rom_addr2_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_8_CYMUXG2_5443,
      IB => vga_sprite_rom_addr2_addsub0000_8_FASTCARRY_5444,
      SEL => vga_sprite_rom_addr2_addsub0000_8_CYAND_5445,
      O => vga_sprite_rom_addr2_addsub0000_8_CYMUXFAST_5446
    );
  vga_sprite_rom_addr2_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y41"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_8_CY0G_5441,
      IB => vga_sprite_rom_addr2_addsub0000_8_CYMUXF2_5442,
      SEL => vga_sprite_rom_addr2_addsub0000_8_CYSELG_5433,
      O => vga_sprite_rom_addr2_addsub0000_8_CYMUXG2_5443
    );
  vga_sprite_rom_addr2_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(3),
      O => vga_sprite_rom_addr2_addsub0000_8_CY0G_5441
    );
  vga_sprite_rom_addr2_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6),
      O => vga_sprite_rom_addr2_addsub0000_8_CYSELG_5433
    );
  vga_sprite_rom_addr2_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_10_XORF_5500,
      O => vga_sprite_rom_addr2_addsub0000(10)
    );
  vga_sprite_rom_addr2_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_10_CYINIT_5499,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0000_10_XORF_5500
    );
  vga_sprite_rom_addr2_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_10_CY0F_5498,
      IB => vga_sprite_rom_addr2_addsub0000_10_CYINIT_5499,
      SEL => vga_sprite_rom_addr2_addsub0000_10_CYSELF_5486,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_7_Q
    );
  vga_sprite_rom_addr2_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_10_CY0F_5498,
      IB => vga_sprite_rom_addr2_addsub0000_10_CY0F_5498,
      SEL => vga_sprite_rom_addr2_addsub0000_10_CYSELF_5486,
      O => vga_sprite_rom_addr2_addsub0000_10_CYMUXF2_5481
    );
  vga_sprite_rom_addr2_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr2_addsub0000_10_CYINIT_5499
    );
  vga_sprite_rom_addr2_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(4),
      O => vga_sprite_rom_addr2_addsub0000_10_CY0F_5498
    );
  vga_sprite_rom_addr2_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7),
      O => vga_sprite_rom_addr2_addsub0000_10_CYSELF_5486
    );
  vga_sprite_rom_addr2_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_10_XORG_5488,
      O => vga_sprite_rom_addr2_addsub0000(11)
    );
  vga_sprite_rom_addr2_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_7_Q,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0000_10_XORG_5488
    );
  vga_sprite_rom_addr2_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_6_Q,
      O => vga_sprite_rom_addr2_addsub0000_10_FASTCARRY_5483
    );
  vga_sprite_rom_addr2_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_10_CYSELG_5472,
      I1 => vga_sprite_rom_addr2_addsub0000_10_CYSELF_5486,
      O => vga_sprite_rom_addr2_addsub0000_10_CYAND_5484
    );
  vga_sprite_rom_addr2_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_10_CYMUXG2_5482,
      IB => vga_sprite_rom_addr2_addsub0000_10_FASTCARRY_5483,
      SEL => vga_sprite_rom_addr2_addsub0000_10_CYAND_5484,
      O => vga_sprite_rom_addr2_addsub0000_10_CYMUXFAST_5485
    );
  vga_sprite_rom_addr2_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y42"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_10_CY0G_5480,
      IB => vga_sprite_rom_addr2_addsub0000_10_CYMUXF2_5481,
      SEL => vga_sprite_rom_addr2_addsub0000_10_CYSELG_5472,
      O => vga_sprite_rom_addr2_addsub0000_10_CYMUXG2_5482
    );
  vga_sprite_rom_addr2_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(5),
      O => vga_sprite_rom_addr2_addsub0000_10_CY0G_5480
    );
  vga_sprite_rom_addr2_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8),
      O => vga_sprite_rom_addr2_addsub0000_10_CYSELG_5472
    );
  vga_sprite_rom_addr2_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_12_XORF_5531,
      O => vga_sprite_rom_addr2_addsub0000(12)
    );
  vga_sprite_rom_addr2_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      I0 => vga_sprite_rom_addr2_addsub0000_12_CYINIT_5530,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0000_12_XORF_5531
    );
  vga_sprite_rom_addr2_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      IA => vga_sprite_rom_addr2_addsub0000_12_CY0F_5529,
      IB => vga_sprite_rom_addr2_addsub0000_12_CYINIT_5530,
      SEL => vga_sprite_rom_addr2_addsub0000_12_CYSELF_5521,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_9_Q
    );
  vga_sprite_rom_addr2_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_10_CYMUXFAST_5485,
      O => vga_sprite_rom_addr2_addsub0000_12_CYINIT_5530
    );
  vga_sprite_rom_addr2_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey(6),
      O => vga_sprite_rom_addr2_addsub0000_12_CY0F_5529
    );
  vga_sprite_rom_addr2_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9),
      O => vga_sprite_rom_addr2_addsub0000_12_CYSELF_5521
    );
  vga_sprite_rom_addr2_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_rom_addr2_addsub0000_12_XORG_5518,
      O => vga_sprite_rom_addr2_addsub0000(13)
    );
  vga_sprite_rom_addr2_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y43"
    )
    port map (
      I0 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_cy_9_Q,
      I1 => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(10),
      O => vga_sprite_rom_addr2_addsub0000_12_XORG_5518
    );
  romRey_addr14_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      O => romRey_addr14_0_LOGIC_ONE_5549
    );
  romRey_addr14_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      O => romRey_addr14_0_LOGIC_ZERO_5566
    );
  romRey_addr14_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_0_XORF_5567,
      O => romRey_addr14(0)
    );
  romRey_addr14_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      I0 => romRey_addr14_0_CYINIT_5565,
      I1 => romRey_addr14_0_F,
      O => romRey_addr14_0_XORF_5567
    );
  romRey_addr14_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      IA => romRey_addr14_0_LOGIC_ZERO_5566,
      IB => romRey_addr14_0_CYINIT_5565,
      SEL => romRey_addr14_0_CYSELF_5556,
      O => vga_sprite_Msub_xpixRey_cy_0_Q
    );
  romRey_addr14_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_0_BXINV_5554,
      O => romRey_addr14_0_CYINIT_5565
    );
  romRey_addr14_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_0_F,
      O => romRey_addr14_0_CYSELF_5556
    );
  romRey_addr14_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => romRey_addr14_0_BXINV_5554
    );
  romRey_addr14_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_0_XORG_5552,
      O => romRey_addr14(1)
    );
  romRey_addr14_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      I0 => vga_sprite_Msub_xpixRey_cy_0_Q,
      I1 => vga_sprite_Msub_xpixRey_lut_1_Q,
      O => romRey_addr14_0_XORG_5552
    );
  romRey_addr14_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14_0_CYMUXG_5551,
      O => vga_sprite_Msub_xpixRey_cy_1_Q
    );
  romRey_addr14_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X39Y42"
    )
    port map (
      IA => romRey_addr14_0_LOGIC_ONE_5549,
      IB => vga_sprite_Msub_xpixRey_cy_0_Q,
      SEL => romRey_addr14_0_CYSELG_5540,
      O => romRey_addr14_0_CYMUXG_5551
    );
  romRey_addr14_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_1_Q,
      O => romRey_addr14_0_CYSELG_5540
    );
  vga_sprite_Msub_xpixRey_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X39Y43"
    )
    port map (
      ADR0 => U2_HCS(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixRey_lut_2_Q
    );
  vga_sprite_xpixRey_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      O => vga_sprite_xpixRey_2_LOGIC_ONE_5585
    );
  vga_sprite_xpixRey_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_2_XORF_5605,
      O => vga_sprite_xpixRey(2)
    );
  vga_sprite_xpixRey_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      I0 => vga_sprite_xpixRey_2_CYINIT_5604,
      I1 => vga_sprite_Msub_xpixRey_lut_2_Q,
      O => vga_sprite_xpixRey_2_XORF_5605
    );
  vga_sprite_xpixRey_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      IA => vga_sprite_xpixRey_2_LOGIC_ONE_5585,
      IB => vga_sprite_xpixRey_2_CYINIT_5604,
      SEL => vga_sprite_xpixRey_2_CYSELF_5591,
      O => vga_sprite_Msub_xpixRey_cy_2_Q
    );
  vga_sprite_xpixRey_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      IA => vga_sprite_xpixRey_2_LOGIC_ONE_5585,
      IB => vga_sprite_xpixRey_2_LOGIC_ONE_5585,
      SEL => vga_sprite_xpixRey_2_CYSELF_5591,
      O => vga_sprite_xpixRey_2_CYMUXF2_5586
    );
  vga_sprite_xpixRey_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_1_Q,
      O => vga_sprite_xpixRey_2_CYINIT_5604
    );
  vga_sprite_xpixRey_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_2_Q,
      O => vga_sprite_xpixRey_2_CYSELF_5591
    );
  vga_sprite_xpixRey_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_2_XORG_5593,
      O => vga_sprite_xpixRey(3)
    );
  vga_sprite_xpixRey_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      I0 => vga_sprite_Msub_xpixRey_cy_2_Q,
      I1 => vga_sprite_Msub_xpixRey_lut_3_Q,
      O => vga_sprite_xpixRey_2_XORG_5593
    );
  vga_sprite_xpixRey_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_2_CYMUXFAST_5590,
      O => vga_sprite_Msub_xpixRey_cy_3_Q
    );
  vga_sprite_xpixRey_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_1_Q,
      O => vga_sprite_xpixRey_2_FASTCARRY_5588
    );
  vga_sprite_xpixRey_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      I0 => vga_sprite_xpixRey_2_CYSELG_5576,
      I1 => vga_sprite_xpixRey_2_CYSELF_5591,
      O => vga_sprite_xpixRey_2_CYAND_5589
    );
  vga_sprite_xpixRey_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      IA => vga_sprite_xpixRey_2_CYMUXG2_5587,
      IB => vga_sprite_xpixRey_2_FASTCARRY_5588,
      SEL => vga_sprite_xpixRey_2_CYAND_5589,
      O => vga_sprite_xpixRey_2_CYMUXFAST_5590
    );
  vga_sprite_xpixRey_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y43"
    )
    port map (
      IA => vga_sprite_xpixRey_2_LOGIC_ONE_5585,
      IB => vga_sprite_xpixRey_2_CYMUXF2_5586,
      SEL => vga_sprite_xpixRey_2_CYSELG_5576,
      O => vga_sprite_xpixRey_2_CYMUXG2_5587
    );
  vga_sprite_xpixRey_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_3_Q,
      O => vga_sprite_xpixRey_2_CYSELG_5576
    );
  vga_sprite_Msub_xpixRey_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X39Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(3),
      O => vga_sprite_Msub_xpixRey_lut_3_Q
    );
  vga_sprite_xpixRey_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      O => vga_sprite_xpixRey_4_LOGIC_ONE_5623
    );
  vga_sprite_xpixRey_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_4_XORF_5643,
      O => vga_sprite_xpixRey(4)
    );
  vga_sprite_xpixRey_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      I0 => vga_sprite_xpixRey_4_CYINIT_5642,
      I1 => vga_sprite_xpixRey_4_F,
      O => vga_sprite_xpixRey_4_XORF_5643
    );
  vga_sprite_xpixRey_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      IA => vga_sprite_xpixRey_4_LOGIC_ONE_5623,
      IB => vga_sprite_xpixRey_4_CYINIT_5642,
      SEL => vga_sprite_xpixRey_4_CYSELF_5629,
      O => vga_sprite_Msub_xpixRey_cy_4_Q
    );
  vga_sprite_xpixRey_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      IA => vga_sprite_xpixRey_4_LOGIC_ONE_5623,
      IB => vga_sprite_xpixRey_4_LOGIC_ONE_5623,
      SEL => vga_sprite_xpixRey_4_CYSELF_5629,
      O => vga_sprite_xpixRey_4_CYMUXF2_5624
    );
  vga_sprite_xpixRey_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_3_Q,
      O => vga_sprite_xpixRey_4_CYINIT_5642
    );
  vga_sprite_xpixRey_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_4_F,
      O => vga_sprite_xpixRey_4_CYSELF_5629
    );
  vga_sprite_xpixRey_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_4_XORG_5631,
      O => vga_sprite_xpixRey(5)
    );
  vga_sprite_xpixRey_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      I0 => vga_sprite_Msub_xpixRey_cy_4_Q,
      I1 => vga_sprite_Msub_xpixRey_lut_5_Q_5614,
      O => vga_sprite_xpixRey_4_XORG_5631
    );
  vga_sprite_xpixRey_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_4_CYMUXFAST_5628,
      O => vga_sprite_Msub_xpixRey_cy_5_Q
    );
  vga_sprite_xpixRey_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_3_Q,
      O => vga_sprite_xpixRey_4_FASTCARRY_5626
    );
  vga_sprite_xpixRey_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      I0 => vga_sprite_xpixRey_4_CYSELG_5615,
      I1 => vga_sprite_xpixRey_4_CYSELF_5629,
      O => vga_sprite_xpixRey_4_CYAND_5627
    );
  vga_sprite_xpixRey_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      IA => vga_sprite_xpixRey_4_CYMUXG2_5625,
      IB => vga_sprite_xpixRey_4_FASTCARRY_5626,
      SEL => vga_sprite_xpixRey_4_CYAND_5627,
      O => vga_sprite_xpixRey_4_CYMUXFAST_5628
    );
  vga_sprite_xpixRey_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y44"
    )
    port map (
      IA => vga_sprite_xpixRey_4_LOGIC_ONE_5623,
      IB => vga_sprite_xpixRey_4_CYMUXF2_5624,
      SEL => vga_sprite_xpixRey_4_CYSELG_5615,
      O => vga_sprite_xpixRey_4_CYMUXG2_5625
    );
  vga_sprite_xpixRey_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_5_Q_5614,
      O => vga_sprite_xpixRey_4_CYSELG_5615
    );
  vga_sprite_Msub_xpixRey_lut_5_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X39Y44"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(4),
      O => vga_sprite_Msub_xpixRey_lut_5_Q_5614
    );
  vga_sprite_Msub_xpixRey_lut_6_Q : X_LUT4
    generic map(
      INIT => X"11EE",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(4),
      ADR2 => VCC,
      ADR3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixRey_lut_6_Q_5673
    );
  vga_sprite_xpixRey_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      O => vga_sprite_xpixRey_6_LOGIC_ONE_5663
    );
  vga_sprite_xpixRey_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_6_XORF_5681,
      O => vga_sprite_xpixRey(6)
    );
  vga_sprite_xpixRey_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      I0 => vga_sprite_xpixRey_6_CYINIT_5680,
      I1 => vga_sprite_Msub_xpixRey_lut_6_Q_5673,
      O => vga_sprite_xpixRey_6_XORF_5681
    );
  vga_sprite_xpixRey_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      IA => vga_sprite_xpixRey_6_LOGIC_ONE_5663,
      IB => vga_sprite_xpixRey_6_CYINIT_5680,
      SEL => vga_sprite_xpixRey_6_CYSELF_5669,
      O => vga_sprite_Msub_xpixRey_cy_6_Q
    );
  vga_sprite_xpixRey_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      IA => vga_sprite_xpixRey_6_LOGIC_ONE_5663,
      IB => vga_sprite_xpixRey_6_LOGIC_ONE_5663,
      SEL => vga_sprite_xpixRey_6_CYSELF_5669,
      O => vga_sprite_xpixRey_6_CYMUXF2_5664
    );
  vga_sprite_xpixRey_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_5_Q,
      O => vga_sprite_xpixRey_6_CYINIT_5680
    );
  vga_sprite_xpixRey_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_6_Q_5673,
      O => vga_sprite_xpixRey_6_CYSELF_5669
    );
  vga_sprite_xpixRey_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_6_XORG_5671,
      O => vga_sprite_xpixRey(7)
    );
  vga_sprite_xpixRey_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      I0 => vga_sprite_Msub_xpixRey_cy_6_Q,
      I1 => vga_sprite_Msub_xpixRey_lut_7_Q_5656,
      O => vga_sprite_xpixRey_6_XORG_5671
    );
  vga_sprite_xpixRey_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_cy_5_Q,
      O => vga_sprite_xpixRey_6_FASTCARRY_5666
    );
  vga_sprite_xpixRey_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      I0 => vga_sprite_xpixRey_6_CYSELG_5657,
      I1 => vga_sprite_xpixRey_6_CYSELF_5669,
      O => vga_sprite_xpixRey_6_CYAND_5667
    );
  vga_sprite_xpixRey_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      IA => vga_sprite_xpixRey_6_CYMUXG2_5665,
      IB => vga_sprite_xpixRey_6_FASTCARRY_5666,
      SEL => vga_sprite_xpixRey_6_CYAND_5667,
      O => vga_sprite_xpixRey_6_CYMUXFAST_5668
    );
  vga_sprite_xpixRey_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y45"
    )
    port map (
      IA => vga_sprite_xpixRey_6_LOGIC_ONE_5663,
      IB => vga_sprite_xpixRey_6_CYMUXF2_5664,
      SEL => vga_sprite_xpixRey_6_CYSELG_5657,
      O => vga_sprite_xpixRey_6_CYMUXG2_5665
    );
  vga_sprite_xpixRey_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_7_Q_5656,
      O => vga_sprite_xpixRey_6_CYSELG_5657
    );
  vga_sprite_Msub_xpixRey_lut_7_Q : X_LUT4
    generic map(
      INIT => X"CCC9",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixRey_lut_7_Q_5656
    );
  vga_sprite_xpixRey_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y46"
    )
    port map (
      O => vga_sprite_xpixRey_8_LOGIC_ONE_5711
    );
  vga_sprite_xpixRey_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_8_XORF_5712,
      O => vga_sprite_xpixRey(8)
    );
  vga_sprite_xpixRey_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y46"
    )
    port map (
      I0 => vga_sprite_xpixRey_8_CYINIT_5710,
      I1 => vga_sprite_Msub_xpixRey_lut_8_Q_5702,
      O => vga_sprite_xpixRey_8_XORF_5712
    );
  vga_sprite_xpixRey_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y46"
    )
    port map (
      IA => vga_sprite_xpixRey_8_LOGIC_ONE_5711,
      IB => vga_sprite_xpixRey_8_CYINIT_5710,
      SEL => vga_sprite_xpixRey_8_CYSELF_5703,
      O => vga_sprite_Msub_xpixRey_cy_8_Q
    );
  vga_sprite_xpixRey_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_6_CYMUXFAST_5668,
      O => vga_sprite_xpixRey_8_CYINIT_5710
    );
  vga_sprite_xpixRey_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_lut_8_Q_5702,
      O => vga_sprite_xpixRey_8_CYSELF_5703
    );
  vga_sprite_xpixRey_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixRey_8_XORG_5700,
      O => vga_sprite_xpixRey(9)
    );
  vga_sprite_xpixRey_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y46"
    )
    port map (
      I0 => vga_sprite_Msub_xpixRey_cy_8_Q,
      I1 => vga_sprite_Msub_xpixMona_lut_9_Q_5697,
      O => vga_sprite_xpixRey_8_XORG_5700
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ONE_5728
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ZERO_5743
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ZERO_5743,
      IB => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYINIT_5742,
      SEL => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELF_5733,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_Q
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_BXINV_5731,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYINIT_5742
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_F,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELF_5733
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_BXINV_5731
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_LOGIC_ONE_5728,
      IB => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_0_Q,
      SEL => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELG_5722,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYMUXG_5730
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYSELG_5722
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0F_5774,
      IB => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0F_5774,
      SEL => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELF_5765,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXF2_5760
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(7),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0F_5774
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELF_5765
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_CYMUXG_5730,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_FASTCARRY_5762
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      I0 => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELG_5752,
      I1 => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELF_5765,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYAND_5763
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXG2_5761,
      IB => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_FASTCARRY_5762,
      SEL => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYAND_5763,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXFAST_5764
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0G_5759,
      IB => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXF2_5760,
      SEL => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELG_5752,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXG2_5761
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CY0G_5759
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYSELG_5752
    );
  N23_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => N23_CY0F_5800,
      IB => N23_CYINIT_5801,
      SEL => N23_CYSELF_5793,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_4_Q
    );
  N23_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_3_CYMUXFAST_5764,
      O => N23_CYINIT_5801
    );
  N23_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => N23_CY0F_5800
    );
  N23_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4),
      O => N23_CYSELF_5793
    );
  N23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  vga_sprite_ypixRey_sub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_0_LOGIC_ZERO_5818
    );
  vga_sprite_ypixRey_sub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_XORF_5835,
      O => vga_sprite_ypixRey_sub0000(0)
    );
  vga_sprite_ypixRey_sub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_0_CYINIT_5834,
      I1 => vga_sprite_ypixRey_sub0000_0_F,
      O => vga_sprite_ypixRey_sub0000_0_XORF_5835
    );
  vga_sprite_ypixRey_sub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_0_LOGIC_ZERO_5818,
      IB => vga_sprite_ypixRey_sub0000_0_CYINIT_5834,
      SEL => vga_sprite_ypixRey_sub0000_0_CYSELF_5825,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_0_Q
    );
  vga_sprite_ypixRey_sub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_BXINV_5823,
      O => vga_sprite_ypixRey_sub0000_0_CYINIT_5834
    );
  vga_sprite_ypixRey_sub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_F,
      O => vga_sprite_ypixRey_sub0000_0_CYSELF_5825
    );
  vga_sprite_ypixRey_sub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_ypixRey_sub0000_0_BXINV_5823
    );
  vga_sprite_ypixRey_sub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_XORG_5821,
      O => vga_sprite_ypixRey_sub0000(1)
    );
  vga_sprite_ypixRey_sub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_sub0000_cy_0_Q,
      I1 => vga_sprite_ypixRey_sub0000_0_G,
      O => vga_sprite_ypixRey_sub0000_0_XORG_5821
    );
  vga_sprite_ypixRey_sub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_CYMUXG_5820,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_1_Q
    );
  vga_sprite_ypixRey_sub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y33"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_0_LOGIC_ZERO_5818,
      IB => vga_sprite_Msub_ypixRey_sub0000_cy_0_Q,
      SEL => vga_sprite_ypixRey_sub0000_0_CYSELG_5809,
      O => vga_sprite_ypixRey_sub0000_0_CYMUXG_5820
    );
  vga_sprite_ypixRey_sub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_0_G,
      O => vga_sprite_ypixRey_sub0000_0_CYSELG_5809
    );
  vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853
    );
  vga_sprite_ypixRey_sub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_2_XORF_5873,
      O => vga_sprite_ypixRey_sub0000(2)
    );
  vga_sprite_ypixRey_sub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_2_CYINIT_5872,
      I1 => vga_sprite_ypixRey_sub0000_2_F,
      O => vga_sprite_ypixRey_sub0000_2_XORF_5873
    );
  vga_sprite_ypixRey_sub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853,
      IB => vga_sprite_ypixRey_sub0000_2_CYINIT_5872,
      SEL => vga_sprite_ypixRey_sub0000_2_CYSELF_5859,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_2_Q
    );
  vga_sprite_ypixRey_sub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853,
      IB => vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853,
      SEL => vga_sprite_ypixRey_sub0000_2_CYSELF_5859,
      O => vga_sprite_ypixRey_sub0000_2_CYMUXF2_5854
    );
  vga_sprite_ypixRey_sub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_1_Q,
      O => vga_sprite_ypixRey_sub0000_2_CYINIT_5872
    );
  vga_sprite_ypixRey_sub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_2_F,
      O => vga_sprite_ypixRey_sub0000_2_CYSELF_5859
    );
  vga_sprite_ypixRey_sub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_2_XORG_5861,
      O => vga_sprite_ypixRey_sub0000(3)
    );
  vga_sprite_ypixRey_sub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_sub0000_cy_2_Q,
      I1 => vga_sprite_ypixRey_sub0000_2_G,
      O => vga_sprite_ypixRey_sub0000_2_XORG_5861
    );
  vga_sprite_ypixRey_sub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_2_CYMUXFAST_5858,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_3_Q
    );
  vga_sprite_ypixRey_sub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_1_Q,
      O => vga_sprite_ypixRey_sub0000_2_FASTCARRY_5856
    );
  vga_sprite_ypixRey_sub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_2_CYSELG_5844,
      I1 => vga_sprite_ypixRey_sub0000_2_CYSELF_5859,
      O => vga_sprite_ypixRey_sub0000_2_CYAND_5857
    );
  vga_sprite_ypixRey_sub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_2_CYMUXG2_5855,
      IB => vga_sprite_ypixRey_sub0000_2_FASTCARRY_5856,
      SEL => vga_sprite_ypixRey_sub0000_2_CYAND_5857,
      O => vga_sprite_ypixRey_sub0000_2_CYMUXFAST_5858
    );
  vga_sprite_ypixRey_sub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y34"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_2_LOGIC_ZERO_5853,
      IB => vga_sprite_ypixRey_sub0000_2_CYMUXF2_5854,
      SEL => vga_sprite_ypixRey_sub0000_2_CYSELG_5844,
      O => vga_sprite_ypixRey_sub0000_2_CYMUXG2_5855
    );
  vga_sprite_ypixRey_sub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_2_G,
      O => vga_sprite_ypixRey_sub0000_2_CYSELG_5844
    );
  vga_sprite_ypixRey_sub0000_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_4_LOGIC_ONE_5891
    );
  vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO_5911
    );
  vga_sprite_ypixRey_sub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_4_XORF_5912,
      O => vga_sprite_ypixRey_sub0000(4)
    );
  vga_sprite_ypixRey_sub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_4_CYINIT_5910,
      I1 => vga_sprite_ypixRey_sub0000_4_F,
      O => vga_sprite_ypixRey_sub0000_4_XORF_5912
    );
  vga_sprite_ypixRey_sub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO_5911,
      IB => vga_sprite_ypixRey_sub0000_4_CYINIT_5910,
      SEL => vga_sprite_ypixRey_sub0000_4_CYSELF_5897,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_4_Q
    );
  vga_sprite_ypixRey_sub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO_5911,
      IB => vga_sprite_ypixRey_sub0000_4_LOGIC_ZERO_5911,
      SEL => vga_sprite_ypixRey_sub0000_4_CYSELF_5897,
      O => vga_sprite_ypixRey_sub0000_4_CYMUXF2_5892
    );
  vga_sprite_ypixRey_sub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_3_Q,
      O => vga_sprite_ypixRey_sub0000_4_CYINIT_5910
    );
  vga_sprite_ypixRey_sub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_4_F,
      O => vga_sprite_ypixRey_sub0000_4_CYSELF_5897
    );
  vga_sprite_ypixRey_sub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_4_XORG_5899,
      O => vga_sprite_ypixRey_sub0000(5)
    );
  vga_sprite_ypixRey_sub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_sub0000_cy_4_Q,
      I1 => vga_sprite_Msub_ypixRey_sub0000_lut(5),
      O => vga_sprite_ypixRey_sub0000_4_XORG_5899
    );
  vga_sprite_ypixRey_sub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_4_CYMUXFAST_5896,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_5_Q
    );
  vga_sprite_ypixRey_sub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_3_Q,
      O => vga_sprite_ypixRey_sub0000_4_FASTCARRY_5894
    );
  vga_sprite_ypixRey_sub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_4_CYSELG_5882,
      I1 => vga_sprite_ypixRey_sub0000_4_CYSELF_5897,
      O => vga_sprite_ypixRey_sub0000_4_CYAND_5895
    );
  vga_sprite_ypixRey_sub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_4_CYMUXG2_5893,
      IB => vga_sprite_ypixRey_sub0000_4_FASTCARRY_5894,
      SEL => vga_sprite_ypixRey_sub0000_4_CYAND_5895,
      O => vga_sprite_ypixRey_sub0000_4_CYMUXFAST_5896
    );
  vga_sprite_ypixRey_sub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y35"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_4_LOGIC_ONE_5891,
      IB => vga_sprite_ypixRey_sub0000_4_CYMUXF2_5892,
      SEL => vga_sprite_ypixRey_sub0000_4_CYSELG_5882,
      O => vga_sprite_ypixRey_sub0000_4_CYMUXG2_5893
    );
  vga_sprite_ypixRey_sub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_lut(5),
      O => vga_sprite_ypixRey_sub0000_4_CYSELG_5882
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X45Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(5),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(5)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(6),
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_sub0000_lut(6)
    );
  vga_sprite_ypixRey_sub0000_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930
    );
  vga_sprite_ypixRey_sub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_6_XORF_5950,
      O => vga_sprite_ypixRey_sub0000(6)
    );
  vga_sprite_ypixRey_sub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_6_CYINIT_5949,
      I1 => vga_sprite_Msub_ypixRey_sub0000_lut(6),
      O => vga_sprite_ypixRey_sub0000_6_XORF_5950
    );
  vga_sprite_ypixRey_sub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930,
      IB => vga_sprite_ypixRey_sub0000_6_CYINIT_5949,
      SEL => vga_sprite_ypixRey_sub0000_6_CYSELF_5936,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_6_Q
    );
  vga_sprite_ypixRey_sub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930,
      IB => vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930,
      SEL => vga_sprite_ypixRey_sub0000_6_CYSELF_5936,
      O => vga_sprite_ypixRey_sub0000_6_CYMUXF2_5931
    );
  vga_sprite_ypixRey_sub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_5_Q,
      O => vga_sprite_ypixRey_sub0000_6_CYINIT_5949
    );
  vga_sprite_ypixRey_sub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_lut(6),
      O => vga_sprite_ypixRey_sub0000_6_CYSELF_5936
    );
  vga_sprite_ypixRey_sub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_6_XORG_5938,
      O => vga_sprite_ypixRey_sub0000(7)
    );
  vga_sprite_ypixRey_sub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_sub0000_cy_6_Q,
      I1 => vga_sprite_Msub_ypixRey_sub0000_lut(7),
      O => vga_sprite_ypixRey_sub0000_6_XORG_5938
    );
  vga_sprite_ypixRey_sub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_cy_5_Q,
      O => vga_sprite_ypixRey_sub0000_6_FASTCARRY_5933
    );
  vga_sprite_ypixRey_sub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_6_CYSELG_5921,
      I1 => vga_sprite_ypixRey_sub0000_6_CYSELF_5936,
      O => vga_sprite_ypixRey_sub0000_6_CYAND_5934
    );
  vga_sprite_ypixRey_sub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_6_CYMUXG2_5932,
      IB => vga_sprite_ypixRey_sub0000_6_FASTCARRY_5933,
      SEL => vga_sprite_ypixRey_sub0000_6_CYAND_5934,
      O => vga_sprite_ypixRey_sub0000_6_CYMUXFAST_5935
    );
  vga_sprite_ypixRey_sub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y36"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_6_LOGIC_ONE_5930,
      IB => vga_sprite_ypixRey_sub0000_6_CYMUXF2_5931,
      SEL => vga_sprite_ypixRey_sub0000_6_CYSELG_5921,
      O => vga_sprite_ypixRey_sub0000_6_CYMUXG2_5932
    );
  vga_sprite_ypixRey_sub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_lut(7),
      O => vga_sprite_ypixRey_sub0000_6_CYSELG_5921
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X45Y36"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_sub0000_lut(7)
    );
  vga_sprite_ypixRey_sub0000_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      O => vga_sprite_ypixRey_sub0000_8_LOGIC_ONE_5980
    );
  vga_sprite_ypixRey_sub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_8_XORF_5981,
      O => vga_sprite_ypixRey_sub0000(8)
    );
  vga_sprite_ypixRey_sub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      I0 => vga_sprite_ypixRey_sub0000_8_CYINIT_5979,
      I1 => vga_sprite_Msub_ypixRey_sub0000_lut(8),
      O => vga_sprite_ypixRey_sub0000_8_XORF_5981
    );
  vga_sprite_ypixRey_sub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      IA => vga_sprite_ypixRey_sub0000_8_LOGIC_ONE_5980,
      IB => vga_sprite_ypixRey_sub0000_8_CYINIT_5979,
      SEL => vga_sprite_ypixRey_sub0000_8_CYSELF_5970,
      O => vga_sprite_Msub_ypixRey_sub0000_cy_8_Q
    );
  vga_sprite_ypixRey_sub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_6_CYMUXFAST_5935,
      O => vga_sprite_ypixRey_sub0000_8_CYINIT_5979
    );
  vga_sprite_ypixRey_sub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixRey_sub0000_lut(8),
      O => vga_sprite_ypixRey_sub0000_8_CYSELF_5970
    );
  vga_sprite_ypixRey_sub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000_8_XORG_5967,
      O => vga_sprite_ypixRey_sub0000(9)
    );
  vga_sprite_ypixRey_sub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X45Y37"
    )
    port map (
      I0 => vga_sprite_Msub_ypixRey_sub0000_cy_8_Q,
      I1 => vga_sprite_Msub_ypixRey_sub0000_lut(9),
      O => vga_sprite_ypixRey_sub0000_8_XORG_5967
    );
  vga_sprite_ypixMona_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      O => vga_sprite_ypixMona_0_LOGIC_ONE_5999
    );
  vga_sprite_ypixMona_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      O => vga_sprite_ypixMona_0_LOGIC_ZERO_6016
    );
  vga_sprite_ypixMona_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_0_XORF_6017,
      O => vga_sprite_ypixMona(0)
    );
  vga_sprite_ypixMona_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      I0 => vga_sprite_ypixMona_0_CYINIT_6015,
      I1 => vga_sprite_ypixMona_0_F,
      O => vga_sprite_ypixMona_0_XORF_6017
    );
  vga_sprite_ypixMona_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      IA => vga_sprite_ypixMona_0_LOGIC_ZERO_6016,
      IB => vga_sprite_ypixMona_0_CYINIT_6015,
      SEL => vga_sprite_ypixMona_0_CYSELF_6006,
      O => vga_sprite_Msub_ypixMona_cy_0_Q
    );
  vga_sprite_ypixMona_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_0_BXINV_6004,
      O => vga_sprite_ypixMona_0_CYINIT_6015
    );
  vga_sprite_ypixMona_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_0_F,
      O => vga_sprite_ypixMona_0_CYSELF_6006
    );
  vga_sprite_ypixMona_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_ypixMona_0_BXINV_6004
    );
  vga_sprite_ypixMona_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_0_XORG_6002,
      O => vga_sprite_ypixMona(1)
    );
  vga_sprite_ypixMona_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      I0 => vga_sprite_Msub_ypixMona_cy_0_Q,
      I1 => vga_sprite_Msub_ypixMona_lut(1),
      O => vga_sprite_ypixMona_0_XORG_6002
    );
  vga_sprite_ypixMona_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_0_CYMUXG_6001,
      O => vga_sprite_Msub_ypixMona_cy_1_Q
    );
  vga_sprite_ypixMona_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X44Y33"
    )
    port map (
      IA => vga_sprite_ypixMona_0_LOGIC_ONE_5999,
      IB => vga_sprite_Msub_ypixMona_cy_0_Q,
      SEL => vga_sprite_ypixMona_0_CYSELG_5990,
      O => vga_sprite_ypixMona_0_CYMUXG_6001
    );
  vga_sprite_ypixMona_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(1),
      O => vga_sprite_ypixMona_0_CYSELG_5990
    );
  vga_sprite_ypixMona_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      O => vga_sprite_ypixMona_2_LOGIC_ONE_6035
    );
  vga_sprite_ypixMona_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_2_XORF_6055,
      O => vga_sprite_ypixMona(2)
    );
  vga_sprite_ypixMona_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      I0 => vga_sprite_ypixMona_2_CYINIT_6054,
      I1 => vga_sprite_Msub_ypixMona_lut(2),
      O => vga_sprite_ypixMona_2_XORF_6055
    );
  vga_sprite_ypixMona_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      IA => vga_sprite_ypixMona_2_LOGIC_ONE_6035,
      IB => vga_sprite_ypixMona_2_CYINIT_6054,
      SEL => vga_sprite_ypixMona_2_CYSELF_6041,
      O => vga_sprite_Msub_ypixMona_cy_2_Q
    );
  vga_sprite_ypixMona_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      IA => vga_sprite_ypixMona_2_LOGIC_ONE_6035,
      IB => vga_sprite_ypixMona_2_LOGIC_ONE_6035,
      SEL => vga_sprite_ypixMona_2_CYSELF_6041,
      O => vga_sprite_ypixMona_2_CYMUXF2_6036
    );
  vga_sprite_ypixMona_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_1_Q,
      O => vga_sprite_ypixMona_2_CYINIT_6054
    );
  vga_sprite_ypixMona_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(2),
      O => vga_sprite_ypixMona_2_CYSELF_6041
    );
  vga_sprite_ypixMona_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_2_XORG_6043,
      O => vga_sprite_ypixMona(3)
    );
  vga_sprite_ypixMona_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      I0 => vga_sprite_Msub_ypixMona_cy_2_Q,
      I1 => vga_sprite_Msub_ypixMona_lut(3),
      O => vga_sprite_ypixMona_2_XORG_6043
    );
  vga_sprite_ypixMona_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_2_CYMUXFAST_6040,
      O => vga_sprite_Msub_ypixMona_cy_3_Q
    );
  vga_sprite_ypixMona_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_1_Q,
      O => vga_sprite_ypixMona_2_FASTCARRY_6038
    );
  vga_sprite_ypixMona_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      I0 => vga_sprite_ypixMona_2_CYSELG_6026,
      I1 => vga_sprite_ypixMona_2_CYSELF_6041,
      O => vga_sprite_ypixMona_2_CYAND_6039
    );
  vga_sprite_ypixMona_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      IA => vga_sprite_ypixMona_2_CYMUXG2_6037,
      IB => vga_sprite_ypixMona_2_FASTCARRY_6038,
      SEL => vga_sprite_ypixMona_2_CYAND_6039,
      O => vga_sprite_ypixMona_2_CYMUXFAST_6040
    );
  vga_sprite_ypixMona_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y34"
    )
    port map (
      IA => vga_sprite_ypixMona_2_LOGIC_ONE_6035,
      IB => vga_sprite_ypixMona_2_CYMUXF2_6036,
      SEL => vga_sprite_ypixMona_2_CYSELG_6026,
      O => vga_sprite_ypixMona_2_CYMUXG2_6037
    );
  vga_sprite_ypixMona_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(3),
      O => vga_sprite_ypixMona_2_CYSELG_6026
    );
  vga_sprite_ypixMona_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      O => vga_sprite_ypixMona_4_LOGIC_ONE_6073
    );
  vga_sprite_ypixMona_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_4_XORF_6093,
      O => vga_sprite_ypixMona(4)
    );
  vga_sprite_ypixMona_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      I0 => vga_sprite_ypixMona_4_CYINIT_6092,
      I1 => vga_sprite_Msub_ypixMona_lut(4),
      O => vga_sprite_ypixMona_4_XORF_6093
    );
  vga_sprite_ypixMona_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      IA => vga_sprite_ypixMona_4_LOGIC_ONE_6073,
      IB => vga_sprite_ypixMona_4_CYINIT_6092,
      SEL => vga_sprite_ypixMona_4_CYSELF_6079,
      O => vga_sprite_Msub_ypixMona_cy_4_Q
    );
  vga_sprite_ypixMona_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      IA => vga_sprite_ypixMona_4_LOGIC_ONE_6073,
      IB => vga_sprite_ypixMona_4_LOGIC_ONE_6073,
      SEL => vga_sprite_ypixMona_4_CYSELF_6079,
      O => vga_sprite_ypixMona_4_CYMUXF2_6074
    );
  vga_sprite_ypixMona_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_3_Q,
      O => vga_sprite_ypixMona_4_CYINIT_6092
    );
  vga_sprite_ypixMona_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(4),
      O => vga_sprite_ypixMona_4_CYSELF_6079
    );
  vga_sprite_ypixMona_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_4_XORG_6081,
      O => vga_sprite_ypixMona(5)
    );
  vga_sprite_ypixMona_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      I0 => vga_sprite_Msub_ypixMona_cy_4_Q,
      I1 => vga_sprite_Msub_ypixMona_lut(5),
      O => vga_sprite_ypixMona_4_XORG_6081
    );
  vga_sprite_ypixMona_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_4_CYMUXFAST_6078,
      O => vga_sprite_Msub_ypixMona_cy_5_Q
    );
  vga_sprite_ypixMona_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_3_Q,
      O => vga_sprite_ypixMona_4_FASTCARRY_6076
    );
  vga_sprite_ypixMona_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      I0 => vga_sprite_ypixMona_4_CYSELG_6064,
      I1 => vga_sprite_ypixMona_4_CYSELF_6079,
      O => vga_sprite_ypixMona_4_CYAND_6077
    );
  vga_sprite_ypixMona_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      IA => vga_sprite_ypixMona_4_CYMUXG2_6075,
      IB => vga_sprite_ypixMona_4_FASTCARRY_6076,
      SEL => vga_sprite_ypixMona_4_CYAND_6077,
      O => vga_sprite_ypixMona_4_CYMUXFAST_6078
    );
  vga_sprite_ypixMona_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y35"
    )
    port map (
      IA => vga_sprite_ypixMona_4_LOGIC_ONE_6073,
      IB => vga_sprite_ypixMona_4_CYMUXF2_6074,
      SEL => vga_sprite_ypixMona_4_CYSELG_6064,
      O => vga_sprite_ypixMona_4_CYMUXG2_6075
    );
  vga_sprite_ypixMona_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(5),
      O => vga_sprite_ypixMona_4_CYSELG_6064
    );
  vga_sprite_ypixMona_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      O => vga_sprite_ypixMona_6_LOGIC_ONE_6131
    );
  vga_sprite_ypixMona_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_6_XORF_6132,
      O => vga_sprite_ypixMona(6)
    );
  vga_sprite_ypixMona_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      I0 => vga_sprite_ypixMona_6_CYINIT_6130,
      I1 => vga_sprite_Msub_ypixMona_lut(6),
      O => vga_sprite_ypixMona_6_XORF_6132
    );
  vga_sprite_ypixMona_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      IA => vga_sprite_ypixMona_6_LOGIC_ONE_6131,
      IB => vga_sprite_ypixMona_6_CYINIT_6130,
      SEL => vga_sprite_ypixMona_6_CYSELF_6117,
      O => vga_sprite_Msub_ypixMona_cy_6_Q
    );
  vga_sprite_ypixMona_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      IA => vga_sprite_ypixMona_6_LOGIC_ONE_6131,
      IB => vga_sprite_ypixMona_6_LOGIC_ONE_6131,
      SEL => vga_sprite_ypixMona_6_CYSELF_6117,
      O => vga_sprite_ypixMona_6_CYMUXF2_6112
    );
  vga_sprite_ypixMona_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_5_Q,
      O => vga_sprite_ypixMona_6_CYINIT_6130
    );
  vga_sprite_ypixMona_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(6),
      O => vga_sprite_ypixMona_6_CYSELF_6117
    );
  vga_sprite_ypixMona_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_6_XORG_6119,
      O => vga_sprite_ypixMona(7)
    );
  vga_sprite_ypixMona_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      I0 => vga_sprite_Msub_ypixMona_cy_6_Q,
      I1 => vga_sprite_Msub_ypixMona_lut(7),
      O => vga_sprite_ypixMona_6_XORG_6119
    );
  vga_sprite_ypixMona_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_cy_5_Q,
      O => vga_sprite_ypixMona_6_FASTCARRY_6114
    );
  vga_sprite_ypixMona_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      I0 => vga_sprite_ypixMona_6_CYSELG_6103,
      I1 => vga_sprite_ypixMona_6_CYSELF_6117,
      O => vga_sprite_ypixMona_6_CYAND_6115
    );
  vga_sprite_ypixMona_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      IA => vga_sprite_ypixMona_6_CYMUXG2_6113,
      IB => vga_sprite_ypixMona_6_FASTCARRY_6114,
      SEL => vga_sprite_ypixMona_6_CYAND_6115,
      O => vga_sprite_ypixMona_6_CYMUXFAST_6116
    );
  vga_sprite_ypixMona_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      IA => vga_sprite_ypixMona_6_CY0G_6111,
      IB => vga_sprite_ypixMona_6_CYMUXF2_6112,
      SEL => vga_sprite_ypixMona_6_CYSELG_6103,
      O => vga_sprite_ypixMona_6_CYMUXG2_6113
    );
  vga_sprite_ypixMona_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(7),
      O => vga_sprite_ypixMona_6_CY0G_6111
    );
  vga_sprite_ypixMona_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(7),
      O => vga_sprite_ypixMona_6_CYSELG_6103
    );
  vga_sprite_ypixMona_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_8_XORF_6163,
      O => vga_sprite_ypixMona(8)
    );
  vga_sprite_ypixMona_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y37"
    )
    port map (
      I0 => vga_sprite_ypixMona_8_CYINIT_6162,
      I1 => vga_sprite_Msub_ypixMona_lut(8),
      O => vga_sprite_ypixMona_8_XORF_6163
    );
  vga_sprite_ypixMona_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y37"
    )
    port map (
      IA => vga_sprite_ypixMona_8_CY0F_6161,
      IB => vga_sprite_ypixMona_8_CYINIT_6162,
      SEL => vga_sprite_ypixMona_8_CYSELF_6153,
      O => vga_sprite_Msub_ypixMona_cy_8_Q
    );
  vga_sprite_ypixMona_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_6_CYMUXFAST_6116,
      O => vga_sprite_ypixMona_8_CYINIT_6162
    );
  vga_sprite_ypixMona_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X44Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixRey_sub0000(8),
      O => vga_sprite_ypixMona_8_CY0F_6161
    );
  vga_sprite_ypixMona_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_ypixMona_lut(8),
      O => vga_sprite_ypixMona_8_CYSELF_6153
    );
  vga_sprite_ypixMona_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_ypixMona_8_XORG_6150,
      O => vga_sprite_ypixMona(9)
    );
  vga_sprite_ypixMona_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y37"
    )
    port map (
      I0 => vga_sprite_Msub_ypixMona_cy_8_Q,
      I1 => vga_sprite_Msub_ypixMona_lut_9_1,
      O => vga_sprite_ypixMona_8_XORG_6150
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y28"
    )
    port map (
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ONE_6179
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y28"
    )
    port map (
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_6194
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y28"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ZERO_6194,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYINIT_6193,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELF_6184,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_Q
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_BXINV_6182,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYINIT_6193
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_F,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELF_6184
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_BXINV_6182
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y28"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_LOGIC_ONE_6179,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_0_Q,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELG_6173,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYMUXG_6181
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYSELG_6173
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0F_6225,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0F_6225,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELF_6216,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXF2_6211
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X55Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(7),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0F_6225
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELF_6216
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_CYMUXG_6181,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_FASTCARRY_6213
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y29"
    )
    port map (
      I0 => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELG_6203,
      I1 => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELF_6216,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYAND_6214
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXG2_6212,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_FASTCARRY_6213,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYAND_6214,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXFAST_6215
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y29"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0G_6210,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXF2_6211,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELG_6203,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXG2_6212
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X55Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CY0G_6210
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYSELG_6203
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y30"
    )
    port map (
      IA => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CY0F_6239,
      IB => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYINIT_6240,
      SEL => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYSELF_6232,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_Q
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_3_CYMUXFAST_6215,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYINIT_6240
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CY0F_6239
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_CYSELF_6232
    );
  romSkye_addr14_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      O => romSkye_addr14_0_LOGIC_ONE_6257
    );
  romSkye_addr14_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      O => romSkye_addr14_0_LOGIC_ZERO_6274
    );
  romSkye_addr14_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_0_XORF_6275,
      O => romSkye_addr14(0)
    );
  romSkye_addr14_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      I0 => romSkye_addr14_0_CYINIT_6273,
      I1 => romSkye_addr14_0_F,
      O => romSkye_addr14_0_XORF_6275
    );
  romSkye_addr14_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      IA => romSkye_addr14_0_LOGIC_ZERO_6274,
      IB => romSkye_addr14_0_CYINIT_6273,
      SEL => romSkye_addr14_0_CYSELF_6264,
      O => vga_sprite_Msub_xpixMona_cy_0_Q
    );
  romSkye_addr14_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_0_BXINV_6262,
      O => romSkye_addr14_0_CYINIT_6273
    );
  romSkye_addr14_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_0_F,
      O => romSkye_addr14_0_CYSELF_6264
    );
  romSkye_addr14_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => romSkye_addr14_0_BXINV_6262
    );
  romSkye_addr14_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_0_XORG_6260,
      O => romMona_addr14(1)
    );
  romSkye_addr14_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      I0 => vga_sprite_Msub_xpixMona_cy_0_Q,
      I1 => vga_sprite_Msub_xpixMona_lut_1_Q,
      O => romSkye_addr14_0_XORG_6260
    );
  romSkye_addr14_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14_0_CYMUXG_6259,
      O => vga_sprite_Msub_xpixMona_cy_1_Q
    );
  romSkye_addr14_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X43Y28"
    )
    port map (
      IA => romSkye_addr14_0_LOGIC_ONE_6257,
      IB => vga_sprite_Msub_xpixMona_cy_0_Q,
      SEL => romSkye_addr14_0_CYSELG_6248,
      O => romSkye_addr14_0_CYMUXG_6259
    );
  romSkye_addr14_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_lut_1_Q,
      O => romSkye_addr14_0_CYSELG_6248
    );
  vga_sprite_xpixMona_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      O => vga_sprite_xpixMona_2_LOGIC_ZERO_6293
    );
  vga_sprite_xpixMona_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_2_XORF_6313,
      O => vga_sprite_xpixMona(2)
    );
  vga_sprite_xpixMona_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      I0 => vga_sprite_xpixMona_2_CYINIT_6312,
      I1 => vga_sprite_xpixMona_2_F,
      O => vga_sprite_xpixMona_2_XORF_6313
    );
  vga_sprite_xpixMona_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      IA => vga_sprite_xpixMona_2_LOGIC_ZERO_6293,
      IB => vga_sprite_xpixMona_2_CYINIT_6312,
      SEL => vga_sprite_xpixMona_2_CYSELF_6299,
      O => vga_sprite_Msub_xpixMona_cy_2_Q
    );
  vga_sprite_xpixMona_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      IA => vga_sprite_xpixMona_2_LOGIC_ZERO_6293,
      IB => vga_sprite_xpixMona_2_LOGIC_ZERO_6293,
      SEL => vga_sprite_xpixMona_2_CYSELF_6299,
      O => vga_sprite_xpixMona_2_CYMUXF2_6294
    );
  vga_sprite_xpixMona_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_1_Q,
      O => vga_sprite_xpixMona_2_CYINIT_6312
    );
  vga_sprite_xpixMona_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_2_F,
      O => vga_sprite_xpixMona_2_CYSELF_6299
    );
  vga_sprite_xpixMona_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_2_XORG_6301,
      O => vga_sprite_xpixMona(3)
    );
  vga_sprite_xpixMona_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      I0 => vga_sprite_Msub_xpixMona_cy_2_Q,
      I1 => vga_sprite_xpixMona_2_G,
      O => vga_sprite_xpixMona_2_XORG_6301
    );
  vga_sprite_xpixMona_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_2_CYMUXFAST_6298,
      O => vga_sprite_Msub_xpixMona_cy_3_Q
    );
  vga_sprite_xpixMona_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_1_Q,
      O => vga_sprite_xpixMona_2_FASTCARRY_6296
    );
  vga_sprite_xpixMona_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      I0 => vga_sprite_xpixMona_2_CYSELG_6284,
      I1 => vga_sprite_xpixMona_2_CYSELF_6299,
      O => vga_sprite_xpixMona_2_CYAND_6297
    );
  vga_sprite_xpixMona_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      IA => vga_sprite_xpixMona_2_CYMUXG2_6295,
      IB => vga_sprite_xpixMona_2_FASTCARRY_6296,
      SEL => vga_sprite_xpixMona_2_CYAND_6297,
      O => vga_sprite_xpixMona_2_CYMUXFAST_6298
    );
  vga_sprite_xpixMona_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y29"
    )
    port map (
      IA => vga_sprite_xpixMona_2_LOGIC_ZERO_6293,
      IB => vga_sprite_xpixMona_2_CYMUXF2_6294,
      SEL => vga_sprite_xpixMona_2_CYSELG_6284,
      O => vga_sprite_xpixMona_2_CYMUXG2_6295
    );
  vga_sprite_xpixMona_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_2_G,
      O => vga_sprite_xpixMona_2_CYSELG_6284
    );
  vga_sprite_xpixMona_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      O => vga_sprite_xpixMona_4_LOGIC_ZERO_6331
    );
  vga_sprite_xpixMona_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      O => vga_sprite_xpixMona_4_LOGIC_ONE_6351
    );
  vga_sprite_xpixMona_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_4_XORF_6352,
      O => vga_sprite_xpixMona(4)
    );
  vga_sprite_xpixMona_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      I0 => vga_sprite_xpixMona_4_CYINIT_6350,
      I1 => vga_sprite_xpixMona_4_F,
      O => vga_sprite_xpixMona_4_XORF_6352
    );
  vga_sprite_xpixMona_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      IA => vga_sprite_xpixMona_4_LOGIC_ONE_6351,
      IB => vga_sprite_xpixMona_4_CYINIT_6350,
      SEL => vga_sprite_xpixMona_4_CYSELF_6337,
      O => vga_sprite_Msub_xpixMona_cy_4_Q
    );
  vga_sprite_xpixMona_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      IA => vga_sprite_xpixMona_4_LOGIC_ONE_6351,
      IB => vga_sprite_xpixMona_4_LOGIC_ONE_6351,
      SEL => vga_sprite_xpixMona_4_CYSELF_6337,
      O => vga_sprite_xpixMona_4_CYMUXF2_6332
    );
  vga_sprite_xpixMona_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_3_Q,
      O => vga_sprite_xpixMona_4_CYINIT_6350
    );
  vga_sprite_xpixMona_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_4_F,
      O => vga_sprite_xpixMona_4_CYSELF_6337
    );
  vga_sprite_xpixMona_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_4_XORG_6339,
      O => vga_sprite_xpixMona(5)
    );
  vga_sprite_xpixMona_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      I0 => vga_sprite_Msub_xpixMona_cy_4_Q,
      I1 => vga_sprite_Msub_xpixRey_sub0000_xor_5_11,
      O => vga_sprite_xpixMona_4_XORG_6339
    );
  vga_sprite_xpixMona_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_4_CYMUXFAST_6336,
      O => vga_sprite_Msub_xpixMona_cy_5_Q
    );
  vga_sprite_xpixMona_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_3_Q,
      O => vga_sprite_xpixMona_4_FASTCARRY_6334
    );
  vga_sprite_xpixMona_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      I0 => vga_sprite_xpixMona_4_CYSELG_6323,
      I1 => vga_sprite_xpixMona_4_CYSELF_6337,
      O => vga_sprite_xpixMona_4_CYAND_6335
    );
  vga_sprite_xpixMona_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      IA => vga_sprite_xpixMona_4_CYMUXG2_6333,
      IB => vga_sprite_xpixMona_4_FASTCARRY_6334,
      SEL => vga_sprite_xpixMona_4_CYAND_6335,
      O => vga_sprite_xpixMona_4_CYMUXFAST_6336
    );
  vga_sprite_xpixMona_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y30"
    )
    port map (
      IA => vga_sprite_xpixMona_4_LOGIC_ZERO_6331,
      IB => vga_sprite_xpixMona_4_CYMUXF2_6332,
      SEL => vga_sprite_xpixMona_4_CYSELG_6323,
      O => vga_sprite_xpixMona_4_CYMUXG2_6333
    );
  vga_sprite_xpixMona_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_sub0000_xor_5_11,
      O => vga_sprite_xpixMona_4_CYSELG_6323
    );
  vga_sprite_xpixMona_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      O => vga_sprite_xpixMona_6_LOGIC_ONE_6372
    );
  vga_sprite_xpixMona_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_6_XORF_6390,
      O => vga_sprite_xpixMona(6)
    );
  vga_sprite_xpixMona_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      I0 => vga_sprite_xpixMona_6_CYINIT_6389,
      I1 => vga_sprite_Msub_xpixMona_lut_6_Q_6382,
      O => vga_sprite_xpixMona_6_XORF_6390
    );
  vga_sprite_xpixMona_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      IA => vga_sprite_xpixMona_6_LOGIC_ONE_6372,
      IB => vga_sprite_xpixMona_6_CYINIT_6389,
      SEL => vga_sprite_xpixMona_6_CYSELF_6378,
      O => vga_sprite_Msub_xpixMona_cy_6_Q
    );
  vga_sprite_xpixMona_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      IA => vga_sprite_xpixMona_6_LOGIC_ONE_6372,
      IB => vga_sprite_xpixMona_6_LOGIC_ONE_6372,
      SEL => vga_sprite_xpixMona_6_CYSELF_6378,
      O => vga_sprite_xpixMona_6_CYMUXF2_6373
    );
  vga_sprite_xpixMona_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_5_Q,
      O => vga_sprite_xpixMona_6_CYINIT_6389
    );
  vga_sprite_xpixMona_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_lut_6_Q_6382,
      O => vga_sprite_xpixMona_6_CYSELF_6378
    );
  vga_sprite_xpixMona_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_6_XORG_6380,
      O => vga_sprite_xpixMona(7)
    );
  vga_sprite_xpixMona_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      I0 => vga_sprite_Msub_xpixMona_cy_6_Q,
      I1 => vga_sprite_Msub_xpixMona_lut_7_Q_6365,
      O => vga_sprite_xpixMona_6_XORG_6380
    );
  vga_sprite_xpixMona_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_cy_5_Q,
      O => vga_sprite_xpixMona_6_FASTCARRY_6375
    );
  vga_sprite_xpixMona_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      I0 => vga_sprite_xpixMona_6_CYSELG_6366,
      I1 => vga_sprite_xpixMona_6_CYSELF_6378,
      O => vga_sprite_xpixMona_6_CYAND_6376
    );
  vga_sprite_xpixMona_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      IA => vga_sprite_xpixMona_6_CYMUXG2_6374,
      IB => vga_sprite_xpixMona_6_FASTCARRY_6375,
      SEL => vga_sprite_xpixMona_6_CYAND_6376,
      O => vga_sprite_xpixMona_6_CYMUXFAST_6377
    );
  vga_sprite_xpixMona_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y31"
    )
    port map (
      IA => vga_sprite_xpixMona_6_LOGIC_ONE_6372,
      IB => vga_sprite_xpixMona_6_CYMUXF2_6373,
      SEL => vga_sprite_xpixMona_6_CYSELG_6366,
      O => vga_sprite_xpixMona_6_CYMUXG2_6374
    );
  vga_sprite_xpixMona_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X43Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixMona_lut_7_Q_6365,
      O => vga_sprite_xpixMona_6_CYSELG_6366
    );
  vga_sprite_xpixMona_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X43Y32"
    )
    port map (
      O => vga_sprite_xpixMona_8_LOGIC_ZERO_6420
    );
  vga_sprite_xpixMona_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_8_XORF_6421,
      O => vga_sprite_xpixMona(8)
    );
  vga_sprite_xpixMona_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y32"
    )
    port map (
      I0 => vga_sprite_xpixMona_8_CYINIT_6419,
      I1 => vga_sprite_Msub_xpixRey_sub0000_xor_8_11,
      O => vga_sprite_xpixMona_8_XORF_6421
    );
  vga_sprite_xpixMona_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X43Y32"
    )
    port map (
      IA => vga_sprite_xpixMona_8_LOGIC_ZERO_6420,
      IB => vga_sprite_xpixMona_8_CYINIT_6419,
      SEL => vga_sprite_xpixMona_8_CYSELF_6412,
      O => vga_sprite_Msub_xpixMona_cy_8_Q
    );
  vga_sprite_xpixMona_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_6_CYMUXFAST_6377,
      O => vga_sprite_xpixMona_8_CYINIT_6419
    );
  vga_sprite_xpixMona_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_Msub_xpixRey_sub0000_xor_8_11,
      O => vga_sprite_xpixMona_8_CYSELF_6412
    );
  vga_sprite_xpixMona_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_xpixMona_8_XORG_6409,
      O => vga_sprite_xpixMona(9)
    );
  vga_sprite_xpixMona_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X43Y32"
    )
    port map (
      I0 => vga_sprite_Msub_xpixMona_cy_8_Q,
      I1 => vga_sprite_Msub_xpixMona_lut_9_1_6406,
      O => vga_sprite_xpixMona_8_XORG_6409
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
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000015501555555555555554000000000000000110000000000000",
      INIT_01 => X"0000000004154000000000000000150000155505555555550000000010000000",
      INIT_02 => X"5401555555550000000001450454000000000000000000001550016555555500",
      INIT_03 => X"0000000000501555015555555550040140504000154000000000000000000015",
      INIT_04 => X"40001101000000000000000554155555550555A5540400404040000154000000",
      INIT_05 => X"55A9540000414000004011500000000000001550055555500555A95400005100",
      INIT_06 => X"0500000555555555954000150050000500001500000000000015400015555405",
      INIT_07 => X"0054000000000000001555555555555400040000100004105100000000000000",
      INIT_08 => X"0000040000000000550000000000000015555555555554000000041400041000",
      INIT_09 => X"5555555550000000000400000000000140000001000000155555555555540000",
      INIT_0A => X"0000000000155555555565500000000000010000400001540000010000000555",
      INIT_0B => X"4140140001050001000000101555540155694000000000000140004000011500",
      INIT_0C => X"0000555550500000015440051500015000005505595501556940000500000400",
      INIT_0D => X"5541554155AA6400015555555554001559540014000055000055415555555555",
      INIT_0E => X"0000450014000015416941556A9400055555555555555AAA5400004000550000",
      INIT_0F => X"5556AAAAFFFAA950555540000000054169555056900015555555555A6AAAAA95",
      INIT_10 => X"555640005A555555AAAAABFFFEAA9555554000000001556A9550565000559555",
      INIT_11 => X"00400001551AA55555400169555556AAAAABFFFFEA9555554000400001555AAA",
      INIT_12 => X"FFFFFEA5554000000055415416955595400165555556AAAAABFFFFFEA5554140",
      INIT_13 => X"A55555555556AAAFFFFEA55540000000555540055555550005A555555596AAAA",
      INIT_14 => X"0555AA941500169555555555555AABFFFEA95540000001555400155A95150005",
      INIT_15 => X"554154000695545556AAA559001695555555555556AABFFAA955504000055540",
      INIT_16 => X"96A5AAAAAAAAAA5541550016A5555545AAA559001A55555555559556AAAFAAAA",
      INIT_17 => X"54005955555AAAAAAAAAAAAAAAAA5541154056A56A55415A5555005A55555AAA",
      INIT_18 => X"6A956AA5000555000159555556AAAAAAAAAFFAAAAA554001505A956AA5005555",
      INIT_19 => X"EAAAA95550005555555A955555540101695695956AAAAAAAFFEAAAAA55500154",
      INIT_1A => X"55556AAAAAAABFEAAAA955500015555515545555550001695555556AAAAAAAFF",
      INIT_1B => X"0550015406A540005555555AAAAFFEAAA955500015005505501555555405A555",
      INIT_1C => X"50005515555550010005540695550005555555AAAAFFAAA95540001500555550",
      INIT_1D => X"5555556AAAAA5410005555555550000055941154054001555555555AABAAA955",
      INIT_1E => X"595555550155555400015AAAAA54100055545555550001556415555500015555",
      INIT_1F => X"555555400155552AA5551004555500000055AAAA551000155555555540055565",
      INIT_20 => X"6AA50000000015550550000015552AA54500050555000005556AAA4140000015",
      INIT_21 => X"0105555000155501565000000005540140000015552A55050005400055555501",
      INIT_22 => X"55695565955554054555500001965AAA55500000015500000000595469555550",
      INIT_23 => X"00000004015405555555655555541555555004005656AE55A400000005000001",
      INIT_24 => X"0555AA5AAA56A800005400055401595555655555555555565415555596AA56B8",
      INIT_25 => X"5555555556FAA5104569AAAA55540000555015A501555015655555555556A695",
      INIT_26 => X"555515555554655555555556FFE9550556AAAA55500000555515A50155501466",
      INIT_27 => X"AA5A5000000055401556955554699555555556BFBA56A96BFAAA555000004155",
      INIT_28 => X"6AEBE9AAA6FFFAA95A90000000150014159515556A955555555AABBA95A9ABEA",
      INIT_29 => X"0019A9555555556AFAF96A5BFFFAA95680000000000154155405556A95555555",
      INIT_2A => X"000010005000000019A5555555AA9ABAA9556AFFFAA956400000000001540140",
      INIT_2B => X"6ABFFEA95A400000005400000000005565555555A655AAA955AAFFFAA9564000",
      INIT_2C => X"555540550559555AABFEA96A4000000055000000000055555555555555556955",
      INIT_2D => X"000050015565555555555500155556AAFAA9AA55400055550000001000556555",
      INIT_2E => X"F9554055540100000000015555555555555500005555AAAAAAB9554000540500",
      INIT_2F => X"506515555AAAAAF95500555000000000000056555555555555005555556AAAAA",
      INIT_30 => X"1595555555555555A9155556AAAAF85500550000000000000056955555555555",
      INIT_31 => X"000000000000000595555555555556A5555555AAAAA454005400000000000000",
      INIT_32 => X"05AAA95000000000000000000000019555555555555AA5015105AAA9A4100000",
      INIT_33 => X"05554005A9555455AAA95000000000000000000001519555500511515AA94555",
      INIT_34 => X"0000015195555506A6550055555556AAA9554000000000000000000551955550",
      INIT_35 => X"000005010000000000015565555541AA9951000555A6AAA55540000000000000",
      INIT_36 => X"00155AAAAAA4000001555550000000000155555555515A9A55400556A6AAA550",
      INIT_37 => X"9555555515555001555AAAAA9400001556555400000000015555555554055955",
      INIT_38 => X"5555000005406A9555555555555555555AAAAA9500005AAA555500000000015A",
      INIT_39 => X"AA4555555555055555000016505AE55555555556AAA5555A95AA5540015AA955",
      INIT_3A => X"555555AA955555AA055555555500155550015A945A455555555556AAA9955955",
      INIT_3B => X"AAA55001555555555405AA955555A9015554000100155555556A955401555555",
      INIT_3C => X"55555415555696AAAA90015555555555556A9555556901555400004005555555",
      INIT_3D => X"55555554001555555555555556AAAAAA40015555555555456A55555568005555",
      INIT_3E => X"555555555515AA5555556400055155559556555AAAAAA500005555555555556A",
      INIT_3F => X"AAAAAAA9000001555555555555AA555555900001505555AAAAAAAAAAAA900001",
      LOC => "RAMB16_X1Y8",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"A800008002AAA8800A80000000AA002A82AA00200820000028880000A00AAAA8",
      INIT_01 => X"8000A802A2822AA800000002AAA080AAAA8000A0AA000AA0A8000022002802AA",
      INIT_02 => X"82A8AA0002A0A8AA82AAA820A202A800000002AAA0AAAAAA800AA89A0002A0A0",
      INIT_03 => X"AAAAA0AAAA0A8AA0A82A02AAA80AA2A82A0A2A2880280000002AAAA0AAAAAA8A",
      INIT_04 => X"202888A8A0AA00AA02A8AAA00282AA0000A2AA5A82A2AA2A2AA0002802002800",
      INIT_05 => X"AA5682AAAA282A00222A880AAA802A02AAA8800AA002A00AA2AA56A2AAAA88A2",
      INIT_06 => X"A0AAAAA0028002AA68282A08AA080020A8AA80AA002000AAA8802AAA802A82A2",
      INIT_07 => X"AA2A0000AAAA02AAAA800002A0AAAAA2A0A22AAA88002088082AAA00002AAA02",
      INIT_08 => X"000A80A00A2A02A2008A00AAAA0A0002802AAAAAA802A2A2AA2AA28000008A00",
      INIT_09 => X"AAAAAAAA0A22A0000282A0AAAAA002A82AA2AAA8AA0002802AAAAAA80002A2A0",
      INIT_0A => X"AAAAA8002A800AA000AA9A8AA00000020AA8822A282AA802AAAAA8AA0000A00A",
      INIT_0B => X"282A82A008A0A8A8AA00028A80AAA2A8AA96A8000AAA082AA822AA2AA2A880AA",
      INIT_0C => X"A2AA0A000A0AAAAA28022A0080A0A80A000200A0A6A0A8AA962A00A0AAAAA2AA",
      INIT_0D => X"0828AA2802559A2AA82AAAAA8002AA82A6020A82AAAA0028022828AA8000AAA8",
      INIT_0E => X"A8AA20AA82AA008028962802956002A0AAAAAA80000027FDA2888A2AAA002802",
      INIT_0F => X"AAA95FFF55DD568A00002AAAA800A02896828A2948828AAAAAAAAAA59577FF68",
      INIT_10 => X"A029A00A25AAAAAA555FFD57F7FD6000002800A000A800956A8A29800A2A6AAA",
      INIT_11 => X"0A2AAAA800855AAAAAA0A896AAAAA9555FFD7FFD7D68080020022800A8002555",
      INIT_12 => X"5FD557D8002AA00AAA002802896AAA6A02A89AAAAAA955557D7FF557D0022820",
      INIT_13 => X"5AAAAAAAAAA957F55557FA0002A02A8A00002AA2AAAA8882A25AAAAAAA69555F",
      INIT_14 => X"A00A5562888A896AAAAAAAAAAAA57D5557F68022A82A082802AA82A568888AA2",
      INIT_15 => X"A82802A0A968020009555826AA896AAAA02AAAAAA95FD55FFE800A2AAA22A82A",
      INIT_16 => X"695A555FFFFFFDAA2800A889582AAA225558A6AAA5AAAAAAAAAA6AA957F5FFFD",
      INIT_17 => X"02AA26AAAAA55F5555D5FFFFFFF5AA28802A095A95AA28A5AAA8AA25AAAAA555",
      INIT_18 => X"95609758AAA280AAA8A6AAAAA95FFD7FFFF55FFFF5822AA80AA56A9558AA0AA0",
      INIT_19 => X"7FFFF6000AAA00AAA025600002A2A8A896A96A6A9FFFFFFF557FFFF5800A2802",
      INIT_1A => X"00AA955555FFD57FFFF60008AA82000082822A8AA0AAAA96AAAAAA95557FFF55",
      INIT_1B => X"220AA8A281582AAA2AAAAAA555F557FFF60008AA82AA00A00A8A800002A25A00",
      INIT_1C => X"08022A8000000828A8A2A2A16800A0A0AAAAAA555F55FFF60028028AAA000008",
      INIT_1D => X"A0000A97FFFD828802280002800A2A8A0A620802A02AA8002AAAAAA5FDFFF600",
      INIT_1E => X"06AAA000A8000002AAA8A5FFFD82800228020AA000A808AA9A800AA0AA880002",
      INIT_1F => X"AA0A002AA800A8955AA08AA20880AAA2AA027FFD00800080002AA28028002898",
      INIT_20 => X"97D8AAA000008A80A00AA02A82A8955A20A2A0A0A0AA02802ABFFD282000AA8A",
      INIT_21 => X"A8AAA20AAA822A08090AA00000AA82A82800AA8AA895A8A0A2A00A00AAAAA8A0",
      INIT_22 => X"0096A81A6AAA02A222A20AAA0A49255F800800002800A2A80AAA26A216A8280A",
      INIT_23 => X"0002AA228802A0AAAA281AAAAA028282820AA2AAA1A97782F8000008A082AA28",
      INIT_24 => X"A00A55A7FD0BD4000002AAA2A2A8A680281AAAAA800AAAA98280002A49FF01DE",
      INIT_25 => X"AA802AAAA95FD88A20B67FFD0A280000000A8A58A8AA0AA81AAA8A820AA9F960",
      INIT_26 => X"00A082A8002A9AAAA0AAAAA9757E00A0ABFFFD0028000002208A58A82A0AAA99",
      INIT_27 => X"FD25A00000AA282A8009680A2A966AAAAAAAA9D5DD89569D5FFD2A20000028A8",
      INIT_28 => X"977D765F595D5FFE05400000A280AA828A608028956AAAAAAAA7FDDF6AD67D7F",
      INIT_29 => X"AAA656AAAA02AA975F569FA57D5FFE0960000282AAA80280A2A028956AAAA0AA",
      INIT_2A => X"02028AAA0AAAAAA8A65AAAA0025565DFF62ABF555FFE0980000A82AA2802A82A",
      INIT_2B => X"97D557F62500A8000A02A2AAAAAAAA2A9AAA800A59AA7DFE007F555FFE0B0000",
      INIT_2C => X"00AA2A20A02402A5FD57F6BD2AAA00AA00AAA8AAAAA2AAAAAA802A82A02A9E02",
      INIT_2D => X"A00A0808AA9AAA00AA8000828000097F5FF67D802A800000AAA80A8A8AAA9AAA",
      INIT_2E => X"54A8220002A8A00002A808AAAAA802AA8000AAAA000257FFFDDEAA2AAA02A0AA",
      INIT_2F => X"0A98800025FFFFD4A8A2280A2AA0002A800229AAA802200000AA00000097FFFF",
      INIT_30 => X"826AAA00AAAA0002748000097FFF56288228A00AA020280000296AAA0020AA00",
      INIT_31 => X"000000A8000008226AAA02AAAA8809F800000257FFFA228202800280A0200000",
      INIT_32 => X"A257FC8AA00000000002A800002AAA6AAA00AA802825F8A808A257FE528800A8",
      INIT_33 => X"02222AA2540002025FFC0AA000002A0002A80000A80A6AAA88A0880827F42000",
      INIT_34 => X"0000280A6AAA80815980AA000000A15FF400200000AAA802A80000A00A6AAA8A",
      INIT_35 => X"8002A0A8AA8080000008009AAAAA2A57660880A00A595FF80020000AAAAA82A8",
      INIT_36 => X"828025555FD2A800280A000A800000000880AAAAAA88256580202009595FF00A",
      INIT_37 => X"6AAAAAA08AAA0AA800A5555FEA80028AA9AA82A0000002882AAAAAAA82AAA6A2",
      INIT_38 => X"0A808000202A17EAAAAAA800AA00000025555F68800A2555AA80A800000A8825",
      INIT_39 => X"55208002AAAAA00AAAA000898A275AAAAAAA00297FD000A56A558A2AA8A556A8",
      INIT_3A => X"80000A7F402AAA55A0A80000008A82AA0A0825622F2AAAAAAA802955F64026AA",
      INIT_3B => X"5FDAA802AAAAAA8002A275402AAA56A82A02AAA8AA802A00029F60AA8AAAAAAA",
      INIT_3C => X"0000828002A9695FF54A00AAAAAAA0000295402AAA94280A82AAAA2AA002AAAA",
      INIT_3D => X"A02AAAAA02800AAA00800AAAA9557FF52000AAAAAAA0002095800AAA960A02AA",
      INIT_3E => X"8AAAAA80008255A022A89002A008AAA06AA9AAA5557FF88002AAAAAAA0000095",
      INIT_3F => X"FFFFFFF4AA0000A2AAAA00002A55A028026800A80A000055555557FFFF4A8000",
      LOC => "RAMB16_X1Y9",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"540000400155546AA56AAAAAAAFFAABFE9550010041000001664000050055554",
      INIT_01 => X"40005401596B95540000000155506A55556AAA5AFFAAAFFA5400001120140155",
      INIT_02 => X"E956FFAAABFA54554155569A59A9540000000155505555556AA556CFAAABFA50",
      INIT_03 => X"5555505555A56FFA56BFABFFFEA5595695A595146A940000001555505555556F",
      INIT_04 => X"90146656505500550154555AA96BFFAAAA5BFF0FE959559595D00016A9001400",
      INIT_05 => X"FF03E95555969500119566A55540150155546AA55AABFAA55BFF03F95555E651",
      INIT_06 => X"5A55555AABEAABFF3E94152E55A4001A54556A5500100055546A95556ABFE95B",
      INIT_07 => X"55BD000055550155556AAAABFAFFFFF95059155564001864A615550000155501",
      INIT_08 => X"0005485005150151AA450055550500016ABFFFFFFEABF9515515596800086500",
      INIT_09 => X"FFFFFFFFA51150000149505555500156955155565500016ABFFFFFFEAAA95150",
      INIT_0A => X"55555400156AAFFAAAFFCFE55000000105564115941556A95555565500005AAF",
      INIT_0B => X"96956950065A5456550001656AFFF956FFC3D400055504155691559551566A55",
      INIT_0C => X"5155AFAAA5A5555516A9950A6A5056A50001AA5AF3FA56FFC395005A55555955",
      INIT_0D => X"AE96FF96AB00CD1556BFFFFFEAA9556BF3A905695555AA1401BE96FFEAAAFFFE",
      INIT_0E => X"54559A556955006A96C396ABC038015AFFFFFFEAAAAAB154F944459555AA1401",
      INIT_0F => X"FFFC0555AAE403E5AAAA955554005A96C3EBE5BC24416FFFFFFFFFF0C011553E",
      INIT_10 => X"FABCD005B0FFFFFF000556ABF9543AAAAA9400500056AAC03FE5BCE005BF3FFF",
      INIT_11 => X"05955556AA600FFFFFD056C3FFFFFC000556BFFE943EAEAA9001940056AAB000",
      INIT_12 => X"AFEAA94EAA95500555AA96A96C3FFF3F8156CFFFFFFC000016BFFAA94AAB9690",
      INIT_13 => X"0FFFFFFFFFFC015AAAA95FAA81501545AAAA955BFFFFEE415B0FFFFFFF3C0005",
      INIT_14 => X"5AAF00396E456C3FFFFFFFFFFFF016AAA953EA91541506BEA9556BF03E6E455B",
      INIT_15 => X"FE96A9505C3EA9AAAC000EB3556C3FFFFABFFFFFFC056AA557EAA595551BFE95",
      INIT_16 => X"3C0F0005555554FF96AA546C0EBFFF9B000EF35570FFFFFFFFFF3FFC015A5554",
      INIT_17 => X"A955B3FFFFF00500004055555550FF966A95AC0FC0FF96F0FFFE55B0FFFFF000",
      INIT_18 => X"C03AC10E555BEA5556F3FFFFFC055415555AA55550EB9556A5F03FC00E55AFFA",
      INIT_19 => X"955553AAA555AAFFFAB03AAAABF95656C3FC3F3FC5555555AA955550EAA516A9",
      INIT_1A => X"AAFFC00000556A955553AAA4556BAAAA6BE9BFEFFA5557C3FFFFFFC0001555AA",
      INIT_1B => X"1BA556F9480E9555BFFFFFF0005AA95553AAA4556B55AA5AA56FEAAAA95B0FAA",
      INIT_1C => X"A401BF6AAAAAA416545BF9583EAA505AFFFFFF0005AA5553AA94016F55AAAAA4",
      INIT_1D => X"FAAAAFC15554E96401BEAAABEAA51545AF3926A95A9556AABFFFFFF0565553AA",
      INIT_1E => X"A3FFFAAA56AAAAA95556F05554E96001BEA9AFFAAA5406FFCD6AAFFA5546AAAB",
      INIT_1F => X"FFAFAA9556AAFE400FFA6559AEEA555155AB1554AA60006AAABFFBEA940ABECE",
      INIT_20 => X"C14E555000006FEA5AA550156BFE400F9A515A5AFA55014ABFD554969000556F",
      INIT_21 => X"565FFBA5556BBF06ACA55000005FE9569400556FFE40FE5A515A8500FFFFFE52",
      INIT_22 => X"AAC3FE8F3FFFA95B9BFBA555072CB005EAA4000016AA51540555B3F983FEBEA5",
      INIT_23 => X"0001551946A95AFFFFBE8FFFFFA96BEBEBA55955F8FC19EB5C0000045A415516",
      INIT_24 => X"5AAF00F154AD400000A9555BF956F3EABE8FFFFFEAAFFFFCE96AAABF2C55A865",
      INIT_25 => X"FFEABFFFFCA54E659AD31554AFBC0000AAA56F0E56FFA57E8FFFEFEBAFFC5C3A",
      INIT_26 => X"AAFA6BFEAABDCFFFFAFFFFFCBA97AA5AFD5554AAB40000ABBA6F0E56BFA57DCC",
      INIT_27 => X"54B0F0000055BE956AAC3EAFBDC33FFFFFFFFC6A64EC03C6A554BFB0000096FE",
      INIT_28 => X"C19693050CAEA557A0200000516A55696F3A6ABEC03FFFFFFFF156653F431695",
      INIT_29 => X"557303FFFFABFFC1A5A3C5F2BEA557AC100001415556A96AF95ABEC03FFFFAFF",
      INIT_2A => X"01016555A5555554730FFFFAAB00306553BFD5AAA557ACC00005415516A95695",
      INIT_2B => X"C16AA953B080540005A95155555555BFCFFFEAAF0CFF1457AA15AAA557AD8000",
      INIT_2C => X"AAFF95BA5AB2ABF056A953D495550055AA5554555551FFFFFFEABFEBFABFC7AB",
      INIT_2D => X"5005A406FFCFFFAAFFEAAA416AAAAC15A55314EA9540AAAA5554056545FFCFFF",
      INIT_2E => X"A2FE91AAA9565000015406FFFFFEABFFEAAA5555AAAB01555467FF9555A95A55",
      INIT_2F => X"A5CE6AAAB05555E2FE51BEA5155000154001BCFFFEABBAAAAA55AAAAAAC15555",
      INIT_30 => X"6B3FFFAAFFFFAAAB126AAAAC1555A1BE41BE50055010140000BC3FFFAABAFFAA",
      INIT_31 => X"000000540000041B3FFFABFFFFEEAC5EAAAAAB01555DB941A940014050100000",
      INIT_32 => X"5B0156E550000000000154000015573FFFAAFFEABEB05E56A65B015709640054",
      INIT_33 => X"0BBB955B02AAA9AB0556A550000015000154000056A73FFFE45A66A6B1529AAA",
      INIT_34 => X"000016A73FFFEA480CEA55AAAAAAF80552AA9000005554015400005AA73FFFE5",
      INIT_35 => X"40015A56554040000006AACFFFFF970133A6405AAF0C055EAA90000555554154",
      INIT_36 => X"416AB0000549540016AFAAA54000000006EAFFFFFFE6B030EA901AAC0C055AA5",
      INIT_37 => X"3FFFFFFA6FFFA556AAF000057D40016FFCFFE95000000146BFFFFFFFE95FF3FB",
      INIT_38 => X"AFEA40001A95817FFFFFFEAAFFAAAAAAB000053E4005B000FFEA5400000546B0",
      INIT_39 => X"009AEAABFFFF5AAFFF50006CE5B18FFFFFFFAABC154AAAF03F00EF9556F003FE",
      INIT_3A => X"EAAAAF152ABFFF005AFEAAAAAA456BFFA506B039B59FFFFFFFEABC00532AB3FF",
      INIT_3B => X"054FF403FFFFFFEAA95B102ABFFF0356BFA95556556ABFAAABC53AFD47FFFFFF",
      INIT_3C => X"AAAAE96AABFC3C05502502FFFFFFFAAAABC02ABFFFC216AFE95555955AABFFFF",
      INIT_3D => X"FABFFFFD016AAFFFAAEAAFFFFC0015509002FFFFFFFAAA9AC0EAAFFFC105ABFF",
      INIT_3E => X"EFFFFFEAAA6B00FABBFEC8015AA6FFFA3FFCFFF000155E4001FFFFFFFAAAAAC0",
      INIT_3F => X"55555552550002FBFFFFAAAABF00FABEAB340056A5AAAA000000015555254002",
      LOC => "RAMB16_X1Y7",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(13),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0000000000000015501555555555555554000000000000000110000000000000",
      INIT_01 => X"0000000004154000000000000000150000155505555555550000000010000000",
      INIT_02 => X"5401555555550000000001450454000000000000000000001550016555555500",
      INIT_03 => X"0000000000501555015555555550040140504000154000000000000000000015",
      INIT_04 => X"40001101000000000000000554155555550555A5540400404040000154000000",
      INIT_05 => X"55A9540000414000004011500000000000001550055555500555A95400005100",
      INIT_06 => X"0500000555555555954000150050000500001500000000000015400015555405",
      INIT_07 => X"0054000000000000001555555555555400040000100004105100000000000000",
      INIT_08 => X"0000040000000000550000000000000015555555555554000000041400041000",
      INIT_09 => X"5555555550000000000400000000000140000001000000155555555555540000",
      INIT_0A => X"0000000000155555555565500000000000010000400001540000010000000555",
      INIT_0B => X"4140140001050001000000101555540155694000000000000140004000011500",
      INIT_0C => X"0000555550500000015440051500015000005505595501556940000500000400",
      INIT_0D => X"5541554155AA6400015555555554001559540014000055000055415555555555",
      INIT_0E => X"0000450014000015416941556A9400055555555555555AAA5400004000550000",
      INIT_0F => X"5556AAAAFFFAA950555540000000054169555056900015555555555A6AAAAA95",
      INIT_10 => X"555640005A555555AAAAABFFFEAA9555554000000001556A9550565000559555",
      INIT_11 => X"00400001551AA55555400169555556AAAAABFFFFEA9555554000400001555AAA",
      INIT_12 => X"FFFFFEA5554000000055415416955595400165555556AAAAABFFFFFEA5554140",
      INIT_13 => X"A55555555556AAAFFFFEA55540000000555540055555550005A555555596AAAA",
      INIT_14 => X"0555AA941500169555555555555AABFFFEA95540000001555400155A95150005",
      INIT_15 => X"554154000695545556AAA559001695555555555556AABFFAA955504000055540",
      INIT_16 => X"96A5AAAAAAAAAA5541550016A5555545AAA559001A55555555559556AAAFAAAA",
      INIT_17 => X"54005955555AAAAAAAAAAAAAAAAA5541154056A56A55415A5555005A55555AAA",
      INIT_18 => X"6A956AA5000555000159555556AAAAAAAAAFFAAAAA554001505A956AA5005555",
      INIT_19 => X"EAAAA95550005555555A955555540101695695956AAAAAAAFFEAAAAA55500154",
      INIT_1A => X"55556AAAAAAABFEAAAA955500015555515545555550001695555556AAAAAAAFF",
      INIT_1B => X"0550015406A540005555555AAAAFFEAAA955500015005505501555555405A555",
      INIT_1C => X"50005515555550010005540695550005555555AAAAFFAAA95540001500555550",
      INIT_1D => X"5555556AAAAA5410005555555550000055941154054001555555555AABAAA955",
      INIT_1E => X"595555550155555400015AAAAA54100055545555550001556415555500015555",
      INIT_1F => X"555555400155552AA5551004555500000055AAAA551000155555555540055565",
      INIT_20 => X"6AA50000000015550550000015552AA54500050555000005556AAA4140000015",
      INIT_21 => X"0105555000155501565000000005540140000015552A55050005400055555501",
      INIT_22 => X"55695565955554054555500001965AAA55500000015500000000595469555550",
      INIT_23 => X"00000004015405555555655555541555555004005656AE55A400000005000001",
      INIT_24 => X"0555AA5AAA56A800005400055401595555655555555555565415555596AA56B8",
      INIT_25 => X"5555555556FAA5104569AAAA55540000555015A501555015655555555556A695",
      INIT_26 => X"555515555554655555555556FFE9550556AAAA55500000555515A50155501466",
      INIT_27 => X"AA5A5000000055401556955554699555555556BFBA56A96BFAAA555000004155",
      INIT_28 => X"6AEBE9AAA6FFFAA95A90000000150014159515556A955555555AABBA95A9ABEA",
      INIT_29 => X"0019A9555555556AFAF96A5BFFFAA95680000000000154155405556A95555555",
      INIT_2A => X"000010005000000019A5555555AA9ABAA9556AFFFAA956400000000001540140",
      INIT_2B => X"6ABFFEA95A400000005400000000005565555555A655AAA955AAFFFAA9564000",
      INIT_2C => X"555540550559555AABFEA96A4000000055000000000055555555555555556955",
      INIT_2D => X"000050015565555555555500155556AAFAA9AA55400055550000001000556555",
      INIT_2E => X"F9554055540100000000015555555555555500005555AAAAAAB9554000540500",
      INIT_2F => X"506515555AAAAAF95500555000000000000056555555555555005555556AAAAA",
      INIT_30 => X"1595555555555555A9155556AAAAF85500550000000000000056955555555555",
      INIT_31 => X"000000000000000595555555555556A5555555AAAAA454005400000000000000",
      INIT_32 => X"05AAA95000000000000000000000019555555555555AA5015105AAA9A4100000",
      INIT_33 => X"05554005A9555455AAA95000000000000000000001519555500511515AA94555",
      INIT_34 => X"0000015195555506A6550055555556AAA9554000000000000000000551955550",
      INIT_35 => X"000005010000000000015565555541AA9951000555A6AAA55540000000000000",
      INIT_36 => X"00155AAAAAA4000001555550000000000155555555515A9A55400556A6AAA550",
      INIT_37 => X"9555555515555001555AAAAA9400001556555400000000015555555554055955",
      INIT_38 => X"5555000005406A9555555555555555555AAAAA9500005AAA555500000000015A",
      INIT_39 => X"AA4555555555055555000016505AE55555555556AAA5555A95AA5540015AA955",
      INIT_3A => X"555555AA955555AA055555555500155550015A945A455555555556AAA9955955",
      INIT_3B => X"AAA55001555555555405AA955555A9015554000100155555556A955401555555",
      INIT_3C => X"55555415555696AAAA90015555555555556A9555556901555400004005555555",
      INIT_3D => X"55555554001555555555555556AAAAAA40015555555555456A55555568005555",
      INIT_3E => X"555555555515AA5555556400055155559556555AAAAAA500005555555555556A",
      INIT_3F => X"AAAAAAA9000001555555555555AA555555900001505555AAAAAAAAAAAA900001",
      LOC => "RAMB16_X1Y5",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      DOA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X0Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(13),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"AAAAA9AA9AA6965555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"ABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55FFEAAAAAAAAAAAAAAAAAAAA",
      INIT_03 => X"AA9A5BFBFBFFAFABFBAAAAAAAA500005AAAAAAAAAAAAAAAAAAAAAA5BFABEFEBA",
      INIT_04 => X"AAAAAAAAAAAAAAAAAA9BFBBEFEBBABAFEFEAAA5000000006AAAAAAAAAAAAAAAA",
      INIT_05 => X"40000000001006AAAAAAAAAAAAAAAAAAABFBBFFABFABAFFEEAA400000000002A",
      INIT_06 => X"FFFFFAABFEFFE401500000001400AAAAAAAAAAAAAAAAAA9BFBFFFEFBEEABFAAA",
      INIT_07 => X"AAAAAAAAAAABFBAFFFABFEEEFE90000000000014001AAAAAAAAAAAAAAAAA9BFB",
      INIT_08 => X"00550002AAAAAAAAAAAAAAAAABFBFFFEFBFFFBEA40000000000014000AAAAAAA",
      INIT_09 => X"BFA4000000000000554400AAAAAAAAAAAAAAAA9BFBFEEFEABBFFFD0000000000",
      INIT_0A => X"AAABFBFFFFFEABBFA00000000001556A50006AAAAAAAAAAAAAAAABFBFFBEBABF",
      INIT_0B => X"0BAAAAAAAAAAAAAAABFBFFFFFFFFEB80000000001ABFFEE9002AAAAAAAAAAAAA",
      INIT_0C => X"0005ABFFFFFFF906AAAAAAAAAAAAAAABFBFFFFFFFBBF00000000016BFFFFFFA4",
      INIT_0D => X"FFFFFFF8000000001ABFFFFFFFEA42AABAAAAAAAAAAAABFBFFFFFFFFF9000000",
      INIT_0E => X"AAAAAAAAABFBFFFFFFFFF4000000005AFFFFFFFFFE41AABAAAAAAAAAAAABFBFF",
      INIT_0F => X"FFFFFF906AABAAAAAAAAAAABFBFFFFFFFFE0000000016AFFFFFFFFFF90AAEAAA",
      INIT_10 => X"00000005ABFFFFFFFFFFA02AAAABAAAAAAAAABFBFFFFFFFFD0000000056AFFFF",
      INIT_11 => X"ABFBFFFFFBAE8000000005ABFFFFFFFFFFA01AAAAAAAAAAAAAABFBFFFFFFFF80",
      INIT_12 => X"1AFAABAAAAAAEAABFBFFFBEAAB4000000016ABFFFFFFFFFFA017FAAAAABAAAAA",
      INIT_13 => X"BFFFFFFFFFFFE406BFAABAAAAAAAABFBBFEEAEAA000000015AAFFFFFFFFFFFE4",
      INIT_14 => X"AAA900000001AABFFFFFFFFFFFE402BFAAAAAAAAEAABFBBFBAABAA00000001AA",
      INIT_15 => X"AAAAAAABFBEBAAAA5900000001AFFFFFFFFFFFFFE801AFFAAAAAAAAAABFBAFAA",
      INIT_16 => X"FFFFE800AFFFFEBAAAAA6BFAAAAAA96900000001AFFFFFFFFFFFFFF801AEFFAA",
      INIT_17 => X"00016ABFFEAFFFFFFFE800AFFFFFAAAA5A9BF6AAAAA95800000001AAFFFFFFFF",
      INIT_18 => X"F6AAAA9554000000015AAAAAAAFFFFBFE4015FFFBEEAA695ABF6AAAAA5580000",
      INIT_19 => X"5AAFAAA5555557F6A96955540000000555556955BFFAAAA4015AAFFAB955555B",
      INIT_1A => X"01A56FE95A00005AAFFAD5555557F5AAA55554000000055005AF916FE6A95400",
      INIT_1B => X"5000000005AA5447E96FA40904004AAEBE95955557F5A565555400000005A404",
      INIT_1C => X"555457F55555555000000005AAAAAFF96FBAAE68001AAEBAD5955557F5555555",
      INIT_1D => X"AAE8001A955AA5555017F55555555000000005AAAAFFFA6FEEFFA8001AA96AB5",
      INIT_1E => X"01ABFFFFFAAFFFFFF80016855694551417F55595545000000005ABFEABFAAFFE",
      INIT_1F => X"5555555000000001ABFFFFFEAFFFFFF80015455544400007F556A55550000000",
      INIT_20 => X"414000000007F555555550000000016BFFFFFEAFFFFFF80015415440401007F5",
      INIT_21 => X"EAAFFFFFF80000414500000007F56AAAA990000000016AFFFFFAAFFFFFF80015",
      INIT_22 => X"000000005ABFFF96AFFFFFE40000000000000007F5AAAA5640000000006AFFFF",
      INIT_23 => X"0407F555544040000000005ABFFF6AAFFFFFE40000000000000007F595955500",
      INIT_24 => X"A00000000001000107F4555000000000000056BFFF69AFFFFFE0000000000000",
      INIT_25 => X"15ABFE5156AFFF900000000000000047F5554500000000000055ABFF555BFFFF",
      INIT_26 => X"00000000000000556ABE9556BFEA800000000000040007F45404000000000000",
      INIT_27 => X"0000001007F4551551000000000055AA6BA9ABFFFA400000000000001007F015",
      INIT_28 => X"FFFFFA400000000000000007F4505404000000000055A96ABEEFFFFA40000000",
      INIT_29 => X"00000015AA5065555AFA000000000000000007F4550100000000000015AA5ABF",
      INIT_2A => X"07F45554440000000000056A515BFFEBE9000000000000000007F45451140000",
      INIT_2B => X"0000000000000007F55555540000000000055A556AFFBFA80000000000000000",
      INIT_2C => X"55556AAAFE900055556A4000000007F5555554000000000005555556AABEA400",
      INIT_2D => X"54000000000000156AABFFFA4007FFFFFFE000000007F5555114000000000001",
      INIT_2E => X"01000003F5595554000000000000155AABFFE8000A2AAEAFF001000007F55551",
      INIT_2F => X"90000AAAAAAAA000000007F55555540000000000000155AAFFE4000A2AAAAAA0",
      INIT_30 => X"000000000156A940000AAAAAAAA000000003F555555000000000000000156ABF",
      INIT_31 => X"F55501100000000000000000015000000AAABAAAA000000007F5555550000000",
      INIT_32 => X"A7AAA000000007F45001000000000000000000000000000AAAAAAAB000000007",
      INIT_33 => X"00000000000AAF96AAE555000007F55540000000000000000000000000000AAB",
      INIT_34 => X"0000000055500000054000000AAFEFAAA100000007F555544000000000000000",
      INIT_35 => X"550007F45545100000000055540001558000000BFFFFAAA554400003F5555540",
      INIT_36 => X"000FFFFFAFE545440007F5A9550000000000555540015A8000000FFFFFAAE105",
      INIT_37 => X"6A95555AAA4000002FFFFFAAAE54455107F5AA55000000000459555555AA4000",
      INIT_38 => X"00000000000005AAAAA56AAA400000FFFFFFABAE44040007F555510000000005",
      INIT_39 => X"FBEAA4000007F400000001000006AAAAAAAAAA400003FFFFFFEBFA85000007F4",
      INIT_3A => X"AA94000FFFFFFFAFEAB4000007F440000001000016AEAAAAABAA50000BFFFFFF",
      INIT_3B => X"04041AAFFFEEFFEAA9003FFFBFFE5BFABC040007F40000000100001AAFAFAAAA",
      INIT_3C => X"D003F40000000104005BFFFFFFFFFFFA50BFFFFAAA5BFAAA064007F400000000",
      INIT_3D => X"BFFFFFEABFABFFF007F55540000104116AFFFFFFFBFFFA96FFFBFBAAAAF9ABBF",
      INIT_3E => X"FFFFFFFFFBABEFFFFFFFFEBEABFFF007F54000000045116BFFFFFFFFFFEAABFF",
      INIT_3F => X"00000005541AFFFFFFFFFFEFAFBBFFFFFABAFEAFFFF407F40000000045412BFF",
      LOC => "RAMB16_X0Y5",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      DOA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      DOB(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X0Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(13),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"55555655655828AAAAAAAAAAA89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FDFFFFFFFFFFFF5DF7F75FF57D5755555555555AA7FD1F7DD5777FFF55555555",
      INIT_03 => X"1120A7F55D55F5FD5DFFFFFFF48AAAA23DFFDDDF55555555045544A7FFD757DF",
      INIT_04 => X"DFDF55D5157554501027F5D757DDFDF5757FFD880AAAA021FFFF7F5545555550",
      INIT_05 => X"2AAA0000008823F7FFD7DC555775551447F5D55FD5FDF5577FC2AAAA0008A89F",
      INIT_06 => X"55555FFD57557A280800002AA202FFFFFFFDF77F75514527F555575D77FD5FFF",
      INIT_07 => X"7D55F5555517F5F555FD577757C02A0000000AA2A0AFFFFFFFF5FFF5555567F5",
      INIT_08 => X"AA28AA88FFFFFFD575F55D5557F555575D555D7F002800000AAA8AAA23FFFFFF",
      INIT_09 => X"D5F00000000000AA0A22827FFFFFDFFF7FD55567F557757FDD5554000000000A",
      INIT_0A => X"5157F5555557FDD5C000000000000A8C8AA03FFFFFFD7FF5F75557F555D7DFD5",
      INIT_0B => X"2DFFFFD7FDFFF55D57F5555555557DC00000000283D55772880FFFFFFFFFFFD7",
      INIT_0C => X"00A23D55DFD55EABFFFFD77DFFDDFD57F55555555DD580000000A8BD557D75F2",
      INIT_0D => X"7555555C0000000280DFFFFDFD780BFFDFFF7FFFF7D757F5555555555E000000",
      INIT_0E => X"FFFFF7F757F7557D5555580000000A235FFFFFFFF7AAFFDFFFFFFFF7FFD7F7D5",
      INIT_0F => X"FFFFF5E03FFDFFFFFFFFFFFFF7555555557800000028837FFFFFFFF5CA7F7FFF",
      INIT_10 => X"00008022097FFFFFFFFD881FFFFDFFFFFFFDDFFF575D555540000000208B7FFF",
      INIT_11 => X"FFF575555DF7C0000020AA095FFFFFFFFDC80FFFFFFFFFFFFF7FF755555555C0",
      INIT_12 => X"255FFDFFFFFF7FFFF5555D7FFD8000000A882D57FFFFFFF5C8295FFFFFDFFFFF",
      INIT_13 => X"D555FFFFFF7D4828D5FFDFFFFFFFFFF5D577F7DF8000000820B555FFFFFF7540",
      INIT_14 => X"F7560000002A2FD557FFF7FFD5482815FFFFFFFF7FFFF5D5DFFD55000000080B",
      INIT_15 => X"FFFFF55FF57DFC15A40000002A3555FFFFFFFF55702A355FFFFFFFF57FF5F5FD",
      INIT_16 => X"FFDD700A155557DFFF5597F7FFF556940000002A3577FFFDFFFD5552003755FF",
      INIT_17 => X"00288AD557E5FF7D55700215D555FFDFE46FFFF57554A6000000083F555D5FFF",
      INIT_18 => X"FF55557A0A00000008A00AAA827DF5D57800A555D77F596A07FFF55F58060000",
      INIT_19 => X"07F5FFDAA028ABFD57D68A0000000000A00002AAD5D803F80027F55FD6AAAAA3",
      INIT_1A => X"2A00B74220A80A07F55F4AA0000BFB555A2000000000228AA2F5A8B56832A00A",
      INIT_1B => X"08000000223C822B4227C2A0A00227F7D7CA62000BFA5FDC00800000002202A2",
      INIT_1C => X"A0022BFAA2E20828000000222FEBF5DA87D0078000ADF55F4860000BFBFBA000",
      INIT_1D => X"0F7C028F60A7D0A00A8BFABEF80008000000220BA05550877675300A8FD4BFD0",
      INIT_1E => X"2A0D57FFDC375F5F5C008162894280828BFAA8780200000000222D57B9580756",
      INIT_1F => X"F0AA0200000000280D5DFFD6B77FDFDE008AA28AA22AAAABF23D5A2000000000",
      INIT_20 => X"282AA2AAAA83F088AA20800000000889575FD6375FFD5C0080088A2A228AA3F0",
      INIT_21 => X"60B77FFFD0002A0820AAAAAAA3F2D55556600000000883557F5EB7FFFF520080",
      INIT_22 => X"0000000A22D55D2827F5FF78082AAAAA2AA28A2BF3555589A00000000A8255FF",
      INIT_23 => X"A2A3F0000228000000000A20957F80A7F55F7000008AA2AA8AAAABF27F6800A0",
      INIT_24 => X"C008000A8A88AAA8A3F2000AAA800000000A08157F8237FF7D68000002AAAA8A",
      INIT_25 => X"8A0D5F880ACF5580000002AAAAAAAA23F00020A880000000020A2D7D2A2DD77D",
      INIT_26 => X"AAAA00000000020A8BD7A0A8FFFB20000008A2AAA2AAA3F202A2AA0000000002",
      INIT_27 => X"8AA0AA8A83F200800800000000020A002DF22BF550A00000008AAAAA8A03FA80",
      INIT_28 => X"7FFF5C8020008002AA2A0A03F20A02A280000000020A020FD775FD58A0000020",
      INIT_29 => X"0000008A000A8A8AA2588000000008AA28AA83F200AAAA0000000000820802D5",
      INIT_2A => X"A3F20002220000000000AA808809D5697A00000000028288AAA3F20208820000",
      INIT_2B => X"0000AA0200000A03F00000020000000000A0A080827D9DE2000000200002A202",
      INIT_2C => X"0AAA802B5400022AAA952A00802023F00000020000000000A02AA80800970000",
      INIT_2D => X"020000000000AA8280017F5C0003DD7FFFC2A2080003F0A80882000000000028",
      INIT_2E => X"A882020BF0A6888200000000002A80A00DFF720000BFF7F55AA8A82003F0AA8A",
      INIT_2F => X"000007FFFFFFF020880003F0AE828000000000000AA80A0F5D4000049FFFFFFA",
      INIT_30 => X"0000002AA8080E000007FFFFFFF20080800BF2AA0808000000000000AA8088D5",
      INIT_31 => X"F080A88800000000000000AAA80A00000FFFDFFFFAAA280003F0000008000000",
      INIT_32 => X"09FFFA82AA0003F20AA8A0000000000008000A200000000FFFE3FFDAAA820003",
      INIT_33 => X"00028000000FF50BFF7000AAA803F8022A8000000000A8A00000000000000FFD",
      INIT_34 => X"00000002000AA002A08000000FF575FFF8AAAAAAA3F800022000000000AAA000",
      INIT_35 => X"00AA03F2002088000000020202AA280A0000000D5555FFF0022AA00BF0000020",
      INIT_36 => X"0007F555F5402022AAA3FA5280A0000000022AA02AA8A0000000055555FF58A0",
      INIT_37 => X"802AAAA03F2A8000855555FFF7822008A3FA05A8A000000022A2AA002A0CA000",
      INIT_38 => X"AA2280028002A202000A8EFF0000025D5555FDF722A2AAA3F808088022000002",
      INIT_39 => X"5D6A82002083F0A00000080880280FBC000FFC2000015F55557D5AE0A82883F2",
      INIT_3A => X"FC22002754075535EA902802A3F02A00000828228837FFEABDFC800001D7FF55",
      INIT_3B => X"A28AA3B55577557FF2801740800221529600A0A3F2AA000008AAA282B5F5FFFF",
      INIT_3C => X"682BF2AAA00008A2AA2955555555555C8815400AAA2152AF290883F00020000A",
      INIT_3D => X"97FFD57FDCA9555203F800200008AA808F5555555D555C2855080882BF52A1D5",
      INIT_3E => X"57FD55D55DFD755FFF5557D6A9557803FAAA00020A28880D55557555557F8155",
      INIT_3F => X"000202AA82AB555DDF777575F5DD55FD5FDF56A1555003F2AA0000022A288155",
      LOC => "RAMB16_X0Y6",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      DOA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      DOB(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X0Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(13),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"00000300300FFFFFFFFFFFFFEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"555555555554100001400450000000000000000FFBFCC0100000101500000000",
      INIT_03 => X"CCFFF3F2555555555655555503A5515BD440440000000000F30033F3F555A555",
      INIT_04 => X"44400000C000030FCFF3F255555555595555549001000008445100003000000F",
      INIT_05 => X"801400000050095140000300001000C333F15555555555554574000000004041",
      INIT_06 => X"9965555555955801500000006401550100000000000C30F3F255555555565554",
      INIT_07 => X"0000000000C3F25A5555555955600400000000240035050000001000000033F2",
      INIT_08 => X"05694503555100001000000003F2A695555655558000000004142D100C155410",
      INIT_09 => X"6A580000000000145A5500150500040414000033F2A9565555AA560000000000",
      INIT_0A => X"0C03F29A5A99566A7000000000015AB39400955411000000000003F2A655556A",
      INIT_0B => X"115541004415000003F2AA956AAA9600000000001C11504E4035555440005140",
      INIT_0C => X"0016C0159A95420D5555000005000003F2AA95A6A66940000000058115555508",
      INIT_0D => X"AAAAAA94000000006F055AAAA94F805550440050400003F2AA6AA9AA96000000",
      INIT_0E => X"5055400003F2AAAAAAAA9800000001AC15AAAAAA94C21555550054100003F3AA",
      INIT_0F => X"AAAAA5209555515545500007F2AAAA6AAA9400000001BC55AAAAAAA410159445",
      INIT_10 => X"00000016BC5AAAAAAAA4F00565555514450007F3AAAAA6AAA000000005BC55AA",
      INIT_11 => X"57F2BA95A559400000005ABC156AAAAAA53426A5555551555017F3AAAA966A40",
      INIT_12 => X"2055515555555557F3AA555555C00000005BF00569AAAA95343EA55555555555",
      INIT_13 => X"004556AAAA65381B55555551555557F2AA555544400000016BC0155AAAA96434",
      INIT_14 => X"110300000002F011556AA6AA953813EA555541559557F26A55510000000001FC",
      INIT_15 => X"51555003F2AA53C0F200000006C155555A9AAA550C12D6655555555017F2AA54",
      INIT_16 => X"59554C00CAA669555500C3F2955003C200000006C0555699AAA9550C02C96955",
      INIT_17 => X"0005BF0000315655550C01C9A56955453333F2541002F100000001C00554155A",
      INIT_18 => X"F254000FAD00000005ABFFFFFF1564010801FA9A55550C3FF3F250450EA10000",
      INIT_19 => X"A19A554FFABEBFF15013FFEC00000005A5556A9A155EBC0801B1595563FFFFBF",
      INIT_1A => X"02F5452E6F0005615955BFFAAAAFFC144FFEA800000006A00601D1857ACDA401",
      INIT_1B => X"A400000016C394463E76340C0401516959AF3AA6AFFF1013AEF800000006F404",
      INIT_1C => X"FAA9AFFFFF3FFFB400000016F03C054E760FB4BC00305815BF3AAA5FFC0CFFEA",
      INIT_1D => X"B04001217AF14EFAA56FFFC30FFBA400000016FCFF010EB60314CC041542956A",
      INIT_1E => X"06F056A953C659555000682BAC2DEAA96FFFFF0FAAA000000006F000CC0FB653",
      INIT_1F => X"0FFFFBA000000005B055AA53C6565550006BDBABD9A9555FFFC00FFAA0000000",
      INIT_20 => X"96955555694BFBFFFFBEE000000005BC169553C65AA540006A9AD99595A95BFA",
      INIT_21 => X"3AC659A9580015969A5555A95BFB0000033000000005AC155543C66AA54C0066",
      INIT_22 => X"000000016B0555EAF6516548000055551555595FFC5044ECE000000005AF0555",
      INIT_23 => X"595BFAFBE9A580000000016BC059BEF2905944000045555555955FFF003FAA90",
      INIT_24 => X"30000005555655565BFABFAA5540000000006BC05A69C6956530000004555555",
      INIT_25 => X"5AF054801B3A54D0000001555555599BFAEAAAA540000000005AF05419519665",
      INIT_26 => X"9A6500000000005ABC04E5AA2A8CD0000005515959595BFAAAA9954000000000",
      INIT_27 => X"555555654BFABAAEAA00000000005ABE710EBDE94F80000045555555650BF9AA",
      INIT_28 => X"056A0380000045555515550BF9BAAA6940000000005ABE700001A94F80000015",
      INIT_29 => X"0000005AFF5065015B0F40000001555555554BF9EBABA500000000005AFE5F00",
      INIT_2A => X"5BFABFEAA900000000001ABF915C003D0E00000014055555555BFAAABBA90000",
      INIT_2B => X"000055555500150BFAFAAAA940000000001AAFA5AB10C53D0000005551155501",
      INIT_2C => X"6ABAABFC13D000BEAFC0955541515BFAAFBAB94000000000156AE95AAAC4F400",
      INIT_2D => X"A900000000005156BFFC55534006AAAEAFF15105400BFAFFAAAD000000000015",
      INIT_2E => X"5655150BFAF3AEE900000000000555AFF0554D000F415555555655104BFAFFE7",
      INIT_2F => X"D00000401545505554100BFAF3EBA8000000000001555AF01574000304155555",
      INIT_30 => X"00000015115BF34000010005555101504107FBFFAEA40000000000005455BF00",
      INIT_31 => X"FAEA9A6400000000000000005554000001445555555514000BFAEEAAA4000000",
      INIT_32 => X"E9154152554007F9AAAA9000000000000000000000000005553C415155410007",
      INIT_33 => X"00004000000556E8554AAAAA540BFFEF99400000000000000000000000000145",
      INIT_34 => X"000000005A95500056C0000005599515465555655BFFAAA99000000000550000",
      INIT_35 => X"AA554BFAAAAA64000000015AA54515ABC0000006A6A95546AA955547FEAAAA90",
      INIT_36 => X"0006AAA9557A9A99555BFF0FE950000000016BA65556FFC0000006AAA955465A",
      INIT_37 => X"BFEAAABFC081400076AAA555549AAAA65BFFF0FE5000000005AEAAA9AAF38000",
      INIT_38 => X"55514001000006FFFFFEB3004000016966A555405AA9555BFEAEA54001000006",
      INIT_39 => X"557EF500104BF85400000100000BF0C3FFF003400001695555554F0A54554BF9",
      INIT_3A => X"03E4000543F000C57AC414015BF9A500000604001BC0003FC00390000D515550",
      INIT_3B => X"094C2CC5500000000E40153FABFF1D46C004105BF96500000514401FC4000000",
      INIT_3C => X"A41BF95550000158006C005550001053A4D43FA9AE1D46B01C844BF800000005",
      INIT_3D => X"C155504157BC51500BFEAA4000015D51B0545555415153EB40FBFFEBC058A815",
      INIT_3E => X"5695555541015555A6544412AC50100BFFE5000001591160015555555540F940",
      INIT_3F => X"0000015A942C15559555554505555565000003AC40040BF9540000015A413C15",
      LOC => "RAMB16_X0Y7",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      DOA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      DOB(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(13),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"555555555555510051005545002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"55555555555555555555555555555555555555515BFD55555555555555555555",
      INIT_03 => X"554517F695555555555555555500000155555555555555555555555BFA556555",
      INIT_04 => X"55555555155554555557F6A55555555555555540000000015555555145555551",
      INIT_05 => X"0000000000000155555554555555555557F66555555555555550000000000015",
      INIT_06 => X"A96955555555500000000000000055555555555555555557F6A6555555555555",
      INIT_07 => X"555555555517F65AA655A55955400000000000000015555555555555555557F6",
      INIT_08 => X"00000001555555555555555557F6AAA555A55555000000000000040005555555",
      INIT_09 => X"5950000000000000000000555555555555555557F6A99A555595580000000000",
      INIT_0A => X"5157F69AAA59655650000000000000040000255555555555555557F6A6555566",
      INIT_0B => X"065555555555555557F6AA996AA9564000000000015555500015555555555555",
      INIT_0C => X"00001555555554015555555555555557F6AAAAAAA55A00000000001555555550",
      INIT_0D => X"AAAAAAA40000000000155555A551015555555555555557F6AAAAAAAA58000000",
      INIT_0E => X"5555555557F6AAAAAAAAA000000000001555A5AA55005555555555555557F6AA",
      INIT_0F => X"66A995401A59555555555557F6AAAAAAAA9000000000005555AAA69540559555",
      INIT_10 => X"000000000055555AA955001AA555555555555BF6AAAAAAAA8000000000005555",
      INIT_11 => X"5BF6AA99A55940000000000015555AA955400AA955555555555BF6AAAA966A80",
      INIT_12 => X"05A555555555555BF6AA55955640000000000055555AA9554016A95555555555",
      INIT_13 => X"00555556AA5550016555555555555BF66655555500000000000055555A995550",
      INIT_14 => X"5555000000000011555555669540016955555555555BF66A5555550000000000",
      INIT_15 => X"55555557F69A545544000000000155555555595550005A55555555555BF6AA55",
      INIT_16 => X"5555540056566955555517F69555555400000000015555555555555400596665",
      INIT_17 => X"000000555401555555540005A65555550007F655555414000000000055555555",
      INIT_18 => X"F65555510400000000000000005555555000055A55A5514007F6555550040000",
      INIT_19 => X"055A5550000007F55554450400000000000000001550015000055A5565005017",
      INIT_1A => X"00000500050000056A9580000007F55555100000000000000055001540100000",
      INIT_1B => X"0000000000150002400500040000056A5980400007F555550000000000000000",
      INIT_1C => X"000007F5515104100000000005454550050005140005596580400007F5555000",
      INIT_1D => X"00540005400550000007F5545400100000000000005540054055140005541560",
      INIT_1E => X"0001555550065555540001400140000007F55454000000000000055400500554",
      INIT_1F => X"501000000000000000555554055555540001000000000007F555540000000000",
      INIT_20 => X"400000000007F0400000400000000000155554065555540000000000000007F0",
      INIT_21 => X"40165555500000000000000007F5555555500000000000555554065555540000",
      INIT_22 => X"0000000000055500065155500000000000000007F55555454000000000001555",
      INIT_23 => X"0007F0400000000000000000055500069055500000000000000007F555540000",
      INIT_24 => X"400000000000000007F004000000000000000005560015955550000000000000",
      INIT_25 => X"00015500000A55400000000000000007F0400000000000000000055500059655",
      INIT_26 => X"0000000000000000005500006A91000000000000000003F00000000000000000",
      INIT_27 => X"0000000007F0000000000000000000000550019550000000000000000007F000",
      INIT_28 => X"556A54000000000000000003F010000000000000000000055555595000000000",
      INIT_29 => X"00000000000000000051000000000000000003F0400100000000000000040155",
      INIT_2A => X"07F0000000000000000000000001554154000000000000000007F00010000000",
      INIT_2B => X"0000000000000007F40000000000000000000000015555540000000000000000",
      INIT_2C => X"000000015400001400550000000003F400000000000000000000000000140000",
      INIT_2D => X"0000000000000000000155550003AAAAAA9000000007F0400000000000000000",
      INIT_2E => X"00000003F4140040000000000000000005555400051555555000000007F04100",
      INIT_2F => X"4000055445555000000007F00500000000000000000000005550000514155550",
      INIT_30 => X"000000000000440000054154555000000003F104040000000000000000000015",
      INIT_31 => X"F0400100000000000000000000000000054555555000000003F0000100000000",
      INIT_32 => X"01515000000003F4000000000000000000000000000000055541515000000003",
      INIT_33 => X"0000000000055501515001000007F50500000000000000000000000000000545",
      INIT_34 => X"000000000000000000400000055555515000000007F400000000000000000000",
      INIT_35 => X"000007F0000000000000000000000000400000055555505000000003F4000000",
      INIT_36 => X"00065555554000000007F5550000000000000000000001400000095555505000",
      INIT_37 => X"0000000015000000155555155500000007F45544000000000000000000040000",
      INIT_38 => X"000000000000000000000055000000555555554500000007F400000000000000",
      INIT_39 => X"554050000007F0000000000000000000000114000001555555455040000003F4",
      INIT_3A => X"00000009400101154010000007F0000000010000000000000100000005415540",
      INIT_3B => X"0004000550444140100015000004014014000007F00000000000000004040000",
      INIT_3C => X"4003F0000000000000015455514455500055000000015005010003F000000000",
      INIT_3D => X"015551555401515003F400000000000000555555415550005400000015500155",
      INIT_3E => X"55555555550145555550555401515003F5400000000000011155555555400140",
      INIT_3F => X"0000000000001155555555550551555540005401511003F00000000000000155",
      LOC => "RAMB16_X0Y3",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      DOA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      DOB(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(13),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFEBFAAABEBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEA",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFEFEBFEAAABFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFABFAAAFFFFFFFFFFFFFFFFFFFFFFEAFEFFEAAAAAFBEFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFAABBEABFEAAEABFBFFFEEFBFEFFFFFFFFFFFFFFFEFFFFEAAAAEAF",
      INIT_07 => X"EAAABFABAAAAFFFFFFFFFFFFFFEBFFFFFFABEAABEFFFEAAAAABABFFFFFFFFFFF",
      INIT_08 => X"FFFEFBEFEBBEFBBFEABEBAAAAAFFFFFFFFFFFFFFFFFFFFFEABFEABBABAAEAAAB",
      INIT_09 => X"FFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFBEAAAAAAFFFFFFFFFFFFFFFFFFFFFFFA",
      INIT_0A => X"FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAFFABFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"AAAABEABFFFFFFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAFEAAFFFFFF",
      INIT_0E => X"FFFFFFFFEFFEAAAAAAAFFFFFFFFFFFEAAABFFFFFFFFFEFFFFFFFFFFABFFFFFFA",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAABEFFFFFFFFFFAAAAFFFFFFFFFFFFFFF",
      INIT_10 => X"AFAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAAAAAAAAAAFEAAFFFFFFFFFFF",
      INIT_11 => X"FFFBAAAAAAAAFFFFFEBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAF",
      INIT_12 => X"FFFFFFFFFFFFFFFFEBAAAAAAAABFFFFFFFFFFAAFBFFFFFFFFBFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFEA9ABFFFFFFFFFFFFEFFFFFFFFAAAAAAAAFBFFFFFFFFFFBAAFFFFFFFFFF",
      INIT_14 => X"AAFAFFFFFFFFFFFFA500016AAAFFFFFEFFFFFFFFFFFFEAAAAAAAAABBFFBFFFFF",
      INIT_15 => X"FFFFFFFFAAEAAAAABFFFEEFAFBFFA5500015BAAA56FFFFFFFFEFFFFFFFAAAAAA",
      INIT_16 => X"AAA5AA51BFFFFFFFFFFFFEAAAAAAAAABFFEAFAFFE555550016AAA9696FFFFFFF",
      INIT_17 => X"FFE555554405AAAA9AAA950BFFFFFFFFEFFFABAAAAEAAEFFFEABFE555540056A",
      INIT_18 => X"AAAAAABAAAEFFFFE5A555544156AAAAAAAA540BFFFFFFBAEFFAEEAAAAAAFBFFF",
      INIT_19 => X"5550BFFFFFFFFFAAAAAAAABFFEBFEA59555540556AAAAAAAA5550BFFFFFFFFFF",
      INIT_1A => X"54555A6AAAAA9555551FFFFFFFFFAAAAAABFFFFFFFA655555554555A9AAAAAA5",
      INIT_1B => X"FAABFAA9555555545556AAAAA694555552FFFFFBBEAAAAAABFFBFFFE99555555",
      INIT_1C => X"FFBAAAAAAAAABAEAABEA6A555555555555AAAA9AA05555547FFEFBEEAAAAAAAB",
      INIT_1D => X"AAAA9555555552FFFFBFAAAAAABFBFEA6AAA5555555555556BA96A955555555B",
      INIT_1E => X"95565555555555AAAA9555555554FFFFFFAAAAAABBFFE9AAEA555A555555555A",
      INIT_1F => X"AAAAAFFE9AAAFAA5555555555555555955555555553FFFFFAAAAAABFFAA66AFA",
      INIT_20 => X"5555540AFFFFAAAAAAAFFA6AAFFAA9555555555541555555555555551FFFFFAA",
      INIT_21 => X"555540555555555555555FBFFFAAAAAAABEAAAAFFAA955555555554155555555",
      INIT_22 => X"AAABFFA9555555555540155555555505551EAAFFAAAAAAAAA6AAAFFEA9555555",
      INIT_23 => X"AAABAAAAAAAAAAAAAAFFA5555555555540055555555405550EAAFFAAAAAAAAAA",
      INIT_24 => X"4025555005555EAAABAAAAAAAAAAAAABFFA6A55555555540545955555405555A",
      INIT_25 => X"A69555555504105005555005551AAFABAAAAAAAAAAAAAAFFAAA5955555550144",
      INIT_26 => X"AAAAAAAAAAFEBAAA5555555504550141400005555AAFFAAAAAEAAAAAAAAABEAA",
      INIT_27 => X"01555ABEABAAAAAAAAAAAAAABAEEAA9555555510555000000001555AABAAAAAA",
      INIT_28 => X"5544551155000005552ABFABAEAAAAABAAAAAABAEAA595555555001545540000",
      INIT_29 => X"AAAFFFAAA95BEAA501554154000101552AFFEAABAAAEAAAAAEAAABEEA9A55555",
      INIT_2A => X"AAAAAABAAAAAAAAAAFEBA6A56AFA9541555555400501556BFFEAAAAABEAAAAAA",
      INIT_2B => X"55400001556AFFBBAAAAAAAABAAEAAAFEFA9A56AAA9440555555400001551EBF",
      INIT_2C => X"996AEA5540155555500001AAAFFFBEAAAAAAAAAAAEAAAFFFE9A96AAA95405555",
      INIT_2D => X"AAAAAAAABBEBFA996BFA55401556554010016AAEFEAEFAAAAAAAAAAAAAAFFFEA",
      INIT_2E => X"6A6AABFEFBAAAAAAAAAABAABEFAAA56BFA95001555550050156AAAFAEEEAAAAA",
      INIT_2F => X"44055550004155AAABABFFFBEAAAAAAAAFEAABFFFBA56BFE9400055554005045",
      INIT_30 => X"AAFFFEA56BFE9550015554000556AABEABAAFFAAAAAAAAABEAABFFABA56BFE94",
      INIT_31 => X"FAEAAAAAAEFFAAAAFFFAA56BFE954001595401555AAABEAAABFFAAAAAAABBFEA",
      INIT_32 => X"55556AAABEAAAFFEEAAAAABFFFBAABFFEEA55AFE954500555515555AAABEABAB",
      INIT_33 => X"5AFFA15115555555556AAAFAAAAAFAEAAAAABFFFEAABFFA9A55AFFA454155540",
      INIT_34 => X"ABFFEAABFFE5955AFFA5555555555555AAA9BAAAEAAAEAAAAAAAFFFAAAFBFA94",
      INIT_35 => X"AAAAAAEBEAAAAAABFFEAAAFFD64556BFE5415555555555AAA96AAAAFFAFAAAAA",
      INIT_36 => X"5569555556AAA5AEAAAAAAAEAAAAAAFEFAAAFF9A5556BFA55556A5555556AAA9",
      INIT_37 => X"EAAA6555AFE555555555555AAAA5ABAAAAEAAEAAAAAAABEAAAFAA9A556AFA555",
      INIT_38 => X"EAAAAAAAAAAAAAEAA95555ABF9569A5555555AAA96FAAAAAEABA9AAAAAAAAAAB",
      INIT_39 => X"ABEA52EAAAAAAEEAAAAAAAAAAAAAEAAA5555ABF95AA69555556AAA96EAAAAAEA",
      INIT_3A => X"6BFE6AA9A55556AFAA47EAAAAAAFEAAAAAAAAAAAAAAAA955556BF96AA6A55955",
      INIT_3B => X"AAAAAAAAA555556FFE6AAA6A655ABEA947FAAAAAABAAAAAAAAABAAAAAAA95555",
      INIT_3C => X"AAAFABAAAAAAAAAAAAAAA59555556ABE6AA6AAA95AFEA506AAAAAFABAAAAAAAA",
      INIT_3D => X"AAA9AABA9006FAAAAF9BAA9AAAAAAAAAA9AA5555556AEEAA96AAAA6BFAA401BA",
      INIT_3E => X"555556ABFFEAAAAAAAAAFA9007EAAAAAABAA9AAAAAAAAAAAA9555555ABFFAA6A",
      INIT_3F => X"5AAAAAAAAAAA96A5556ABFFFFAAAAAAAAFFA545BAAAAAAABAA5AAAAAAAAA6AA5",
      LOC => "RAMB16_X1Y4",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      DOA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      DOB(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(13),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DDFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"5555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD75FFFDFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFD5D7FDEAAD7DA557DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6756F",
      INIT_04 => X"FFFFFFFFFFD5F57DF57FD756F56A2AD555557555FFFFFFFFFFFFFFFFFFFFF5FF",
      INIT_05 => X"555555FDFFEF5555FFFFFFFFFFFDD75FFF7F54757A0BBF5D75D55575FFFD77FF",
      INIT_06 => X"5FFD7FFD555AFDD7FD57FF7FD59F75775D56DFFF7DF7FFFF555675FFFBEFB7F5",
      INIT_07 => X"6AABFDB9ABFF57FFFD75FFFFFD7D555555B9FFFD75557FBEFEDFD57FFFFFFF55",
      INIT_08 => X"7F575D757DD75DD57AFE9AAA007FFFFD5FFFFFFF555555578956EDDFDBF7FFF9",
      INIT_09 => X"FFFFF57DFFFFFDFFFFF5DF7FFF5FFFFDF6AAAAAAFFFFFD57FFFFFFF555FD75DF",
      INIT_0A => X"5F5AFFFFFD57FFFFFFD555FFFFF5FFFFFFFFFFDFFF77F57F2AABAEFFFFFD5FFF",
      INIT_0B => X"FFDFFFFFFFFFFFFFFDFFFFD757FFFFFFFFD5FFD5FFFFF7FFF7FFFDFF7D7FFF55",
      INIT_0C => X"FFFFD57FFFFFFFFFFFFFFFFF555FFFFFF5D57FE857E3FFFFF7FF7FFFFFFFFFFF",
      INIT_0D => X"3EFFD7CBDD5FFFF7FF7FDFFF5FFF57F7FDDD7FD7D757FFD5DFFFEA57C3FF5555",
      INIT_0E => X"75DFF55577D7F57FA2F557755FFFFFFFFFD57D5D7DD57FFD5755FFDFD55F555C",
      INIT_0F => X"FFFFFFFFFF5FF5D57FF5FFDF57F5FF0FFD75FFFFFFFFFEFEF5557DFD5D775DFF",
      INIT_10 => X"F5FF777FFFFFD55557FFFFFFFFFD55D7F55FFFDFF33F8BCFF77FF5FFFFFFD555",
      INIT_11 => X"D55DF507F0FF575557D5D577FD5777D557FFFF7FFFFF77FDDFFF5FD4CF22FFF5",
      INIT_12 => X"7FFFFFF757FD5D5D7DFD03C2FFD575555F555FF5D5DF555F5DFFFFFFFFD5557D",
      INIT_13 => X"FDFFF7023D7FFFDFF7DF7D7777FF5D5FF50FE3F5D5555557FF5DFF5577FFFFF5",
      INIT_14 => X"FB5F7F557FF7FDFFC8AAA8A0037FDFF7FFF7D557F5777FF54FEFFFDD55DDD7F5",
      INIT_15 => X"F5F75FFFDF745FFBD7F567DFFFFD480AAA801E00A8FFFFFFF57557FFFFFFF5DF",
      INIT_16 => X"FF0A00A83FFF5F7FFFFFD7F7F40FFAFD557E5F7778A800AA8AFEC28207DDFFF7",
      INIT_17 => X"77FAAA8822A22EFFA82020A37F55F7F5F555FDFC0F7FF755F7FDFFA2A22AA08B",
      INIT_18 => X"75FCDFDFFF75557FA0AA002280AAFF02A80A2A17FFF55DC755F7744FFFF5F57F",
      INIT_19 => X"000AD5557D57FF757D7FFFD557D770A2AA002A008AFBAAAA0A00A157FFF5757F",
      INIT_1A => X"020000A02820200000A555FFFFFF755DFFD555DD5508AAAA0002002020AAAA80",
      INIT_1B => X"5FFD5002AAAAA00200080A8E0A2200000BDDFFFDD755557FDDDD555422AAAA00",
      INIT_1C => X"7FDFCA555C7FDF7FFD40BCAAAAA8000002AA82228A00000295775D7755F5FFFD",
      INIT_1D => X"A002200000000B7DFFD500517FD5D57F873CAAAAA800000008AAA0A000000001",
      INIT_1E => X"2AA880002000020080000000000255FFF555517FDD55720F7CAAA0A800000002",
      INIT_1F => X"147FF55F203F5FCAAA0000A80000002200000000009FD55D574C1FD55FC8BF5C",
      INIT_20 => X"000002AF5F5554143FF55C80355FD2AA0000AA00280000000000000085FFFD44",
      INIT_21 => X"AAA02A0020000000000005D555540CDFFD7003355FD2AA8000AAA02800800000",
      INIT_22 => X"3F3D55F2AA2202AAA82A8000000000A000A7FF555405FFFF08033557F2AAA002",
      INIT_23 => X"FFFD0440F5F000FF1FD5FAAA8002AAA82AA008000002A000A7FF551507FFFC00",
      INIT_24 => X"2A80000AA00007FFFD100053FB00C31555F80A8002AAA8220222200002A0000F",
      INIT_25 => X"082002AAA8A28A0AA0000AA0008FF5FD1000D1FFF0D70755F30A0002AAA8A822",
      INIT_26 => X"C1FFFF370757DFF0AA82AAA8A200A8282AAAA0000FF55F500075FFF4F747D7FF",
      INIT_27 => X"A8002FD7DD071543FFFFD7D7DD77D02A8AAAA08A000AAAAAAAA80003FDD74101",
      INIT_28 => X"0022008800AAAAA0008FD5FD57551FFDFFDFD3DF7FCA2A8AAA80AA802002AAAA",
      INIT_29 => X"FFF555C000286800A8002802AAA8A8008F557F1D5D07FFFF77D7FD77C20A8AAA",
      INIT_2A => X"FF53555DFFFFFFFFF57DC8080A5AA0200000002AA0A80001577F5D5D57FFFFFF",
      INIT_2B => X"AA2AAAAAAA8F75DDCF557DFFDFF7DFF575C2080AA8822A0020002AAAA800A7D5",
      INIT_2C => X"200B788028AAAAAA8AAAAA28257DD737773DFFFFF75FF55572000AE8002A0AAA",
      INIT_2D => X"FFFFFFFFDD7D5F20895A802A8AA8AA2A8AA8803757F7D10D37CFFFFD7FF5557C",
      INIT_2E => X"80AFFD575D401FFFFFFFDFFD75FF08895E00AA82A800AA0A80803F5F77D4540F",
      INIT_2F => X"22A0000AAA2802003DFD557F54017FFFF57FFD555DC8895602AAA0A202AA0A20",
      INIT_30 => X"FF5557CA8956000AA80002AAA0002017FDFFD5F5057FFFFD7FFD55FD4A895602",
      INIT_31 => X"FFF3350FF755FFFF555F0A0957A02AA8A202A80000A0D7FFFDFF74774FFDD57F",
      INIT_32 => X"00020AA0D7FFF577F77D4FD555DFFD55770A2B57A020AAAAA0800022A8D7FDFD",
      INIT_33 => X"A255C80882800080008AA05FFFFF7DFFD403D5557FFD55FE082A55C20282002A",
      INIT_34 => X"FD557FFD554A02A255C00002AAAAA0000AA2DFFF7FC375510FFF555FFF5D5C22",
      INIT_35 => X"3FFFFF55F7C303FD557FFF5569AA0A95602A0AAAAA08022A828FFFF5575F0003",
      INIT_36 => X"0082AAA808AE8A37FFFFD7C70103FF575FFF5564280095E008280AAAA000AB82",
      INIT_37 => X"73DC800225782080AAAAA002AF8AF5FFFF77340443FFFD7FF75C16C800B5E020",
      INIT_38 => X"7D0143FF75FFFF773E00082D520820AAAAA022FE28537FFF77DD200DFFFFFFFD",
      INIT_39 => X"2978AB7DDFDFF7754370FFFFFFFF7FF080002D5CA0082AAA808AF8237D7FFF7D",
      INIT_3A => X"89F48C060AA800A5E0A17F547FF57500F1FF7FFFFFCFD22000895E80C80AA200",
      INIT_3B => X"FFFFF44D08880A25548C7C808802D7C2215DFF7FCDFCD1C3FFFDFFFCFF700802",
      INIT_3C => X"FFF50DF50003FFCFFFF53A2AA0282296B3D800022A5788A03FDFF5FDFD5143FF",
      INIT_3D => X"00822BDE2AA35FFFFD2DF42037FFFFFFDED08AA0A0027700690000895F02AA1F",
      INIT_3E => X"AAAA883D7D60C0C002BF5E0AA97FFFFF4DFD2130FFFFDF17F62AAAA20955C080",
      INIT_3F => X"A177FFFFF00D280AAA82F5D55073E0EAF558020DFFFFFF05FDA131FF7FF08F4A",
      LOC => "RAMB16_X1Y0",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      DOA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      DOB(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(13),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"A66955AAAAAAA9559556E955AAAAAAAAAAAAAAAAAAAAAAAF95AAAAAAAA595555",
      INIT_01 => X"AAFFBBEFAAAFAAAAAAAAA9AAAAAA6AAA5B96AAAAAAAAAAAAAAAEAAAAAAAAAF6A",
      INIT_02 => X"0151AAAAAAAAAAAABAAAAAAAABAAAAAAAAAAAAAAAA5556FB956AAAAAAAAAAAAA",
      INIT_03 => X"AAAAAA5550293FF000F0155AAAAAAAFAAAAAAA9AAAAAAABAAAAAAAAA66976570",
      INIT_04 => X"56AAAA59AA55B555556A5403253FFF00140100056AAAFAAAAAAAAAAA56AAA5FA",
      INIT_05 => X"05050001A0301055565AA9AAAAB95555654013254FFCC000015000155AF955AA",
      INIT_06 => X"5AA566A5400F00000000004000C51500000355697E959555404365654C30C000",
      INIT_07 => X"3FFC29CCFC0002AA9555A9556940010000CD4000000400C30300017F55559A10",
      INIT_08 => X"55540000000000154F27CFFFFF6AAAA55AA9559954050400FC5730000C00000C",
      INIT_09 => X"AA6AA555A6A561A5AAA5595665595A9827FFFFFFAAAAA556A9A5AA9555555150",
      INIT_0A => X"405FAAAAA556AAAA9A9555966565AA9AA9AA95555566A564FFFCF3AAAAA556AA",
      INIT_0B => X"9556A99556AAAAB695AEAB94449AA6966555655556A666AAA6AAA5555566AF54",
      INIT_0C => X"AA69506AAA9AA6AAA66A6A9A555ABAAAEAE5403F163DAA6A95A5556AAA9AAA69",
      INIT_0D => X"C300143E995BAAA5A90016AA599A5555955526969641AA99A4003F143CA95555",
      INIT_0E => X"119AA54002D54000FF0146655BFEEA8000001515594005585501AA90115AA953",
      INIT_0F => X"5AAAAAA9AA5AA5956AA5A95B655000F00155AAABFFFA9303010169A554515595",
      INIT_10 => X"00006A6AAAAAA5595AAAAAAAAA999556A56AAA144CC0FC30164005FFAAAA9555",
      INIT_11 => X"555550F00F005A5554151546595666955AAAAAAAAAA556A59AAA514330FF0055",
      INIT_12 => X"6BEAAFE5055559455540FC3F0115555556555005159A565A51AAAAAFA9415569",
      INIT_13 => X"B55694FEC06ABF9FFA9AA94555A5595140F03C011405556AAA50005566AAAAA5",
      INIT_14 => X"0C00691426A6A9AA3940007FAC6AAFE5AAA55555A5154100303000100019AAA5",
      INIT_15 => X"A5966AAA0043000C16A57480A2AE39554001C3FA67EBEAFEA40416AAAA440000",
      INIT_16 => X"00E5AA51FEEE996AAAAA940143F00F01594350264AA955500B032DB977EAAAA5",
      INIT_17 => X"568AAA994515B300EEBA950EAAA566A440000643F040045560007CA6AA5515BC",
      INIT_18 => X"1043001000045568EFAA655405BF00EBFEA54096AAA54030001583300006256A",
      INIT_19 => X"000015555556AA100000000040164FBFAAA694006F0CFFFEA5000D56A9545059",
      INIT_1A => X"54001A7ABEBEA400001515AAAAAA00000015555555FBAAAAA694002EAEFBBEE5",
      INIT_1B => X"50015FFEAAAAA9540006AFE3ABE000000099AFF00000000005505457EEAAAAAA",
      INIT_1C => X"6A103F0003001000007FC3AAAAA9540001EFEF9FE00000005564510000000000",
      INIT_1D => X"FAEBD0000000006DA900FF0C01101540B0C3AAAAAA9400002FFD7AE00000000D",
      INIT_1E => X"EAAF9A50000001BAFA900000000056AA94000C0010054EB043AAAFAA5000000B",
      INIT_1F => X"C3000554EFC1503AAAAA500000000169000000000015955A0033C015103BC153",
      INIT_20 => X"00000000565503C3C00553FFC5540EAAA9500000400001000000000015AAAA33",
      INIT_21 => X"0040000060000000000005155503F300014FFCC5540EAAAA5000000001500000",
      INIT_22 => X"C0C6A50EAAAA410040000010000000000024005403F00000FFFCC6940EAAAA51",
      INIT_23 => X"0045F33F000FFF00C1A55EAAAA4100004100180000000000040055C0F00003FF",
      INIT_24 => X"543000000000040041CFFF0C0CFF3CC15A1BFAAA55000001696E100000000010",
      INIT_25 => X"FBEA5010001965950000000000101545CFFF0C000F00F0690CFEE951000106A9",
      INIT_26 => X"3C0000C0F054500FEA80100459A99550000000001015510FFF40000300306440",
      INIT_27 => X"4000101405F0C03C0000000010440FFA45441155AAA555540000001C05003CFC",
      INIT_28 => X"5559AA66A5555540003025050800C00100000C11503AFA454441556A99555555",
      INIT_29 => X"0016553FFE6F3EA556AA9555555A4000305641C500F40000150045543FFE5500",
      INIT_2A => X"450C00140004050005413BFD6F0FE591A6AA6A555A40002D5641000414000015",
      INIT_2B => X"FF9555525AA06A113100100010050005453EFD6FFFD595AABAAA955500002416",
      INIT_2C => X"FD6C0F96506FFFFFE55456FFF56A15D000C00000050005954EFD6F3F96945FFF",
      INIT_2D => X"00000040159550FD6C0F9A506FFFFF955555AFC45505ACF0C030001400055543",
      INIT_2E => X"AFB00555663FC000000011055511FE6C039A556BFA565565556BC061558303F0",
      INIT_2F => X"5406AAA5555555BF810255B743FC000005400555513E6C03D5555AAAA9555555",
      INIT_30 => X"0155543EAC03D5545256A9555556FFD401419940F0000001400155513ABC03D5",
      INIT_31 => X"B58CC0F0045500015550FA6C00E55152BFA955595AFF144451FF030030011540",
      INIT_32 => X"55566FFF04000564C00030155510015554FAAC00E55515AAA955665BFE140141",
      INIT_33 => X"AF0035555A9556AAA9BFFE50000170D003FC155550015553FA6F0025555A5541",
      INIT_34 => X"01155001557EEA9B003555969AAAA555BFFE1000403C500CF0005550015557F9",
      INIT_35 => X"C0001442C03CFC0155400155689B5BC035565AAAAA9A56FFFEB400059154FFFC",
      INIT_36 => X"55BEAAAA5BF3FAC400010075FCFC005451005523AD57C0355A6BFAAAA596FCFA",
      INIT_37 => X"5C03BA55F009A995AAAAA55BF0EA01000040D7F33C0001500157C33E56C03579",
      INIT_38 => X"50FC3C0000000040C255A5F00E5BEFAAAAA56F03E75C00014010FFF000000101",
      INIT_39 => X"FC0E9050000005503C0F00000001440FA995B001BFFBEAAA957F0FA440044040",
      INIT_3A => X"7D57B3F2FAB957F03E855003000540FF0C00004000300EA6A5BC02FF3BFAAEA5",
      INIT_3B => X"00000334FA995A7403F303FFB95B003A4550000036530C3C00014013010E9A55",
      INIT_3C => X"1016F200FFFC00301040CFEAA5697FC38C0BFFFE6F00F947C4000606400C3C00",
      INIT_3D => X"FFFEBC03E15450000AF503FFC0000000034FAAA5A56B00FF28FFFFBC00E456D0",
      INIT_3E => X"AAAA9BC0547F3F3FFBC003855D5000103500FCCF000000C143AAAAA6FC053FFF",
      INIT_3F => X"FC0000000FF0EFEAAABB11400F0C3F3F000F5551000000F140FCCC00000FF13E",
      LOC => "RAMB16_X1Y3",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      DOA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      DOB(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENAINV : X_INV
    generic map(
      LOC => "RAMB16_X1Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(13),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram : X_RAMB16_S2_S2
    generic map(
      INIT_A => X"0",
      INIT_B => X"0",
      SRVAL_A => X"0",
      SRVAL_B => X"0",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"AAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAA",
      INIT_01 => X"AABAAAAAAAAFAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_02 => X"5555AAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAA96AAABAAAAAAAAAAAAAAAA",
      INIT_03 => X"AAAAAA9A956A55555555569AAAAAAAFAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AA55",
      INIT_04 => X"9AAAAAAAAAAABAAAAAAAA55565555555555555556AAAFAAAAAAAAAAAAAAAAAFA",
      INIT_05 => X"55555555A55555555A6AAAAAAABA9A6AAA5555695555555555555555AAFA66AA",
      INIT_06 => X"AAA96AA955555555555555955555555555545AAABEAAAAAA5555656A95555555",
      INIT_07 => X"55556955555556AAA9AAAAAAA95555555555955555555555555555BEAAAAAA55",
      INIT_08 => X"6A5555555555555555695555556AAAA96AAAAAAA555555554555555555555555",
      INIT_09 => X"AAAAA555AAAAA6AAAAA59A6AAA5AAAA965555555AAAAA96AAAAAAAA555A56555",
      INIT_0A => X"9595AAAAAA5AAAAAAAA555A6AAA6AAAAAAAAAA9A9AA6A9A9555555AAAAA95AAA",
      INIT_0B => X"A5AAAAAAAAAAAAAAAAAEAAA559AAAAAAAA95A5A5AAAAAAAAA6AAA96A596AAAA5",
      INIT_0C => X"AAAA956AAAAAAAAAAAAAAAAAAAAABAAAEAEA95546A56AAAAA6A9696AAA9AAAAA",
      INIT_0D => X"55556956AAAAAAAAAA5556AA6AAA96A6AAA96AAAA656AAAAA955555955AA966A",
      INIT_0E => X"55AAA99556EAA55555569AAAABEAAA9555555959AA9559A99555AAA5655AAAA5",
      INIT_0F => X"AAAAAAAAAAAAAA99AAAAAAAAAAA55555565AAAABBAEAA555555569AA596659AA",
      INIT_10 => X"55556AAAAAAAAAAAAAAAAAAAAAAAA6AAAAAAAAAA955555555A555AFAAAAAAAAA",
      INIT_11 => X"AAAAA5555556AA99696A655AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555556AA",
      INIT_12 => X"ABFEBFEA56AAAA9AAAA5555556AAA9AAAAAAA5556AAA96AAA6ABAAAFAA965AAA",
      INIT_13 => X"BAAAA95455AABFAFFAAFA996AAAA5AAAA555555A69556AAAAAA55566AAAAAAAA",
      INIT_14 => X"5555AA656AAAAAAA5000001555AAAFFABEAAAA5AAA6AA65555555565556AAAAA",
      INIT_15 => X"AAAAAAAA9AA555556AAA5595A6AE50000000655511EFEABEA9556AAAAA9AA555",
      INIT_16 => X"555054007FFEAAAAAAAA959695555556AA95556A90000000055554141BEAAAAA",
      INIT_17 => X"AA9000000000555545554006BAAAAAA995559AA5559559AAA555AD0000000015",
      INIT_18 => X"65A95555555599A945000000001555555550006AAAAA555555AAA556555A6AAA",
      INIT_19 => X"00006AA9AA9AAA6559555555956A95550000000015555555500006AAAAA5656A",
      INIT_1A => X"0000051555555000000A6AAAAAAA6559556A96AAAA5114000000001545555550",
      INIT_1B => X"A555A55400000000000155555150000001AAABF5555555555AA5A9A945400000",
      INIT_1C => X"AA65455555556555559555000000000000555505500000002AA9A55555555555",
      INIT_1D => X"55554000000001AAAA55555555655A9515550000000000001554115000000006",
      INIT_1E => X"4015000000000055554000000000AAAAA5555555655A94159500050000000005",
      INIT_1F => X"555559A94556A550100000000000001400000000002AAAAA5555556A655116A5",
      INIT_20 => X"00000005AAAA55555555A5555AA954000000000000000000000000000AAAAA55",
      INIT_21 => X"000000001000000000000A6AAA5555555695556AA95400000000000000000000",
      INIT_22 => X"555AAA54040000000000000000000000000955A55555955555555AA954000000",
      INIT_23 => X"559A55555555555556AAA4540000000000000400000000000955AA5555555555",
      INIT_24 => X"00100000000009559655555555555556AA615040000000000415000000000009",
      INIT_25 => X"55400000000410400000000000056A9A55559555555555AA5555400000000140",
      INIT_26 => X"5555555555A9A555550000000414000000000000056AA65555A555555555A995",
      INIT_27 => X"0000056A5A56555555555555659955540000000015400000000000055A955555",
      INIT_28 => X"00001501400000000015AA5A5A555556555555A6A55054000000001144000000",
      INIT_29 => X"556AAA5554155550015540000000000015AA955A595955556A559AA955540000",
      INIT_2A => X"9A555569555A5A566A965154155540005151050001000016AA9659596955596A",
      INIT_2B => X"554000000115AA6A56556555665A569A9A54541555400055555500000000096A",
      INIT_2C => X"54155540001555555000005556AA6A65665555555A565AAA9454155540000555",
      INIT_2D => X"555555996AAAA554155540001555554000001555AA5AA55555555569559AAA95",
      INIT_2E => X"05155AAAAA5555555555665AAA5554155540001555010010001555A6AAD55555",
      INIT_2F => X"00005550000000555566AABB955555555A965AAAA65415554000055554000000",
      INIT_30 => X"56AAA5541565400000015000000155695A96EA95555555569556AA9650155540",
      INIT_31 => X"BAD5555555AA5556AAA5541569400000555400000155695AA6FF655555566A95",
      INIT_32 => X"0000155559596AA9E655556AAA6596AA99540569500000155000000555655AA6",
      INIT_33 => X"055A500001000000001555A55566B5E555556AAAA556AAA55405695000010000",
      INIT_34 => X"566AA556AA9541455A50000100000000555465599555A5555555AAA596AAA950",
      INIT_35 => X"55556996E6555556AA9556AA8105015950000400400000555415555AA6AA5555",
      INIT_36 => X"00140004015550595556559A555555A9A655AA55140156500015500000015554",
      INIT_37 => X"A555500055900000000000055550566565956955555566A556A9555400565010",
      INIT_38 => X"A9555555555555A664000056A40545400140155551A5555695A9555555555656",
      INIT_39 => X"559541A955555AA55555555595569A6500005554155140054015554195599595",
      INIT_3A => X"05541554515001569502A555555AA555555555959A9995000015545551501500",
      INIT_3B => X"56559559540000155555555550015A5402A555555AA555555556956566640000",
      INIT_3C => X"656A5A65555555556595655000001055155155540569540155555A5AA9555555",
      INIT_3D => X"555455654002A5555A5A695555555556559500000001555555555515A5500065",
      INIT_3E => X"00000156AA9555555555A54006A595665A9955555555555695000000556A5555",
      INIT_3F => X"5555555555555540001566AAA55555555AA5000A65555556A955555555555654",
      LOC => "RAMB16_X1Y1",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ENA_INTNOT,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(12) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q,
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
      DIA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA1,
      DIA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DIA0,
      DIB(1) => '0',
      DIB(0) => '0',
      DOA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      DOA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      DOB(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB1,
      DOB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_DOB0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram : X_RAMB16_S9_S9
    generic map(
      INIT_A => X"000",
      INIT_B => X"000",
      SRVAL_A => X"000",
      SRVAL_B => X"000",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"922400000000002424242424494924000024244949492424B6B6B6B6B6B6B6B6",
      INIT_01 => X"6D6D6D494949494949496D6D6D929292929292926D6D49496D4949494949496D",
      INIT_02 => X"B6B6B6B6B6B6B6B6B66D49242424240000000000000000496D6D49496D6D6D6D",
      INIT_03 => X"0000002424242424494949240000002424242424B6B6B6B6B6B6B6B6B6B6B6B6",
      INIT_04 => X"4949494949496D9292929292929292926D6D49496D49494949496D926D000000",
      INIT_05 => X"92929292492400242424000000000000000000496D6D49494949496D6D6D6D49",
      INIT_06 => X"2424242424494949240000000024242492929292929292929292929292929292",
      INIT_07 => X"4949496D6D6D92929292926D6D6D49494949494949496D922400000000000000",
      INIT_08 => X"242424242400000000000000000000496D6D6D49494949496D6D6D4949494949",
      INIT_09 => X"2424244924240000000000246D6D6D6D6D6D6D6D92929292926D9292926D4924",
      INIT_0A => X"496D6D6D9292926D6D49494924242424496D9249000000000000000024242424",
      INIT_0B => X"2424000000000000000000496D6D6D4949494949494949494949494949494949",
      INIT_0C => X"49242400000000006D6D6D49496D6D6D6D6D6D6D6D6D6D6D4949240024242424",
      INIT_0D => X"6D6D6D4949494924242424496D926D0000000000000000000024242424242424",
      INIT_0E => X"00000000000000496D6D6D6D494949494949494949494924244949494949496D",
      INIT_0F => X"000000006D6D6D6D6D6D6D6D6D6D6D6D6D6D6D49242400240024242424000000",
      INIT_10 => X"24242424240024496D6D24000000000000000000002424242424242424242424",
      INIT_11 => X"000000496D6D6D6D494949494949494949494924494924242424494949494949",
      INIT_12 => X"6D6D6D6D6D6D6D6D6D6D6D6D6D49242400000000002424240000000000000000",
      INIT_13 => X"0024496D6D490000000000000000000000002424242424242424242424000000",
      INIT_14 => X"6D6D6D6D49494924494924242424242424242424242424242424242424242400",
      INIT_15 => X"6D6D6D6D6D6D4949242400000000000024242424000000000000000000002449",
      INIT_16 => X"492400000000000000000000000024242424242424242424240000006D6D6D6D",
      INIT_17 => X"6D4949242424242424242424242424242424242424242424240000000024496D",
      INIT_18 => X"49242400000000000000000024242400000000000000000000002449496D6D6D",
      INIT_19 => X"0000000000000000000000000000000024242424242400004949496D6D6D6D6D",
      INIT_1A => X"24242424242424242424242400000000240000000000000024496D4924000000",
      INIT_1B => X"00000000000000000000000000000000000000000000244949496D6D6D494949",
      INIT_1C => X"0000000000000000000000000000242424242400242449494949492400000000",
      INIT_1D => X"2424242424242424240000000000000000000024494949240000000000000000",
      INIT_1E => X"0000000000000000000000000000000000002449494949494949494924242424",
      INIT_1F => X"0000000000000000000000002424242424242424240000000000000000000000",
      INIT_20 => X"2424240000000000000000000000002449494924000000000000000000000000",
      INIT_21 => X"0000000000000000000000000024244949494949494949494924242424242424",
      INIT_22 => X"0000000000000000000024242400000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000024244924240000000000000000000000000000000000",
      INIT_24 => X"0000000000000000002424494949494949494949494924242424242424000000",
      INIT_25 => X"0000000000000024000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000242424242400000000000000000000000000002400000000000000",
      INIT_27 => X"0000000000242449494949494949494949492424242424240000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"2424242424000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0024244949494949494949494924242424242424242400000000000000000024",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"4949494949494949492424242424242424242400000000000024242424242424",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000242449",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"4949494924242424242424242424242424242424242424242424000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000242449494949",
      INIT_32 => X"0000000000000024000000000000000024000000000000000000000000000000",
      INIT_33 => X"2424242424242424242424242424242424242424240000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000024242449242424242424",
      INIT_35 => X"2424242424242424242424492424242424242424000000000000000000000000",
      INIT_36 => X"2424242424242424242424242424242400000000000000000000000000242424",
      INIT_37 => X"0000000000000000000000000000000000002424242424242424242424242424",
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
      LOC => "RAMB16_X1Y6",
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
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q,
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
      DIA(7) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7,
      DIA(6) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6,
      DIA(5) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5,
      DIA(4) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4,
      DIA(3) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3,
      DIA(2) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2,
      DIA(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1,
      DIA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0,
      DIPA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0,
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
      DOPA(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0,
      DOB(7) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7,
      DOB(6) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6,
      DOB(5) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5,
      DOB(4) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4,
      DOB(3) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3,
      DOB(2) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2,
      DOB(1) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1,
      DOB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0,
      DOPB(0) => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram : X_RAMB16_S9_S9
    generic map(
      INIT_A => X"000",
      INIT_B => X"000",
      SRVAL_A => X"000",
      SRVAL_B => X"000",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"88A8ACA8ACACA8A8A8CCCCD0F1CCCCACACD16824240048FFFFFF492424242420",
      INIT_01 => X"F9D5D5D5F5D5F9D5D5D5D5D5B1B0D5D5D5B0B4B4D5D5D5D5D5D5F5D0CCAC8C8C",
      INIT_02 => X"0000000000000020242048682044444444688CD5D0D0D0D5D5D5D5D5F9F9D5D5",
      INIT_03 => X"88406064A8A8CCACA88888ACACD18C24482448FFFFFF48242400000000002000",
      INIT_04 => X"F9F9F9D5D5D5B5B090B0B5D5B4B0B5B4D5D1B0B0B0ACD0CCACACACACACACACAC",
      INIT_05 => X"0000000024244844442044486844B0D0D0D5D5D5D5D5F9F9F9F9F9F9D5D5F5F9",
      INIT_06 => X"88846484ACF1F5F9F5D5B124242448FFFFFF4924200000200000240000002400",
      INIT_07 => X"D5D5D5B1B5B0B0B0B0B0B5B5B0B08CACACACACCCD0B0B0B0B0B0B0B1B1ADA8A8",
      INIT_08 => X"242448484444686844ADB0D0D0D0D5D5D5D5F9F9F9F9F9F9F9F5D5D5F9F5F9D5",
      INIT_09 => X"F5F5F5F5F5F5D120242448FFFFFF492420000000002000240000000000000000",
      INIT_0A => X"B0B0B0B0B0B5D5B5B08CB0B1D5D5F5D0B0B0B0B0B0B0B1D1D188406084ADD1F5",
      INIT_0B => X"20444444448C8CB0D4D0F5F5F9F9D5F9F9F9F9F9F9F9D5F5F5F5D5D5D5D5D5D5",
      INIT_0C => X"D5D5D544484449FFFFFF48000000000020000044200000000000000020244848",
      INIT_0D => X"B5D5B0B1B0B0B0D5D5D5F5AC88ACB1B0B1B1B1B1684088ACADACD1F5F5F5D5F5",
      INIT_0E => X"20688CB0D0D4F5F5F5F5F9F5F9F9F9F9F9F5F5F5F5D5D5D5D5D5D5B5B0B0B0B0",
      INIT_0F => X"484449FFFFFF4800000020242424484844242000000000000024484824206844",
      INIT_10 => X"D58CB1B1D5D5ACACAC88B1B0B0B0B164406488ADB1D1D5F5D5D5D5D4B0D0F568",
      INIT_11 => X"D0D4D5F5F5D5F9F9F9F9F9F9F9D5F5F5F9F9D5D5D5B5B5B5B0B0B0D5D5B5B5B1",
      INIT_12 => X"FFFF4400002024444844486C4844240000000000002444444424444444448CB0",
      INIT_13 => X"D5AC8CB18C888C8CB0B1B18C202064ADADACB0D5D5D0D0D0D0ACD0D568486DFF",
      INIT_14 => X"D5D5D5F9F9F9F9F9F9D5D5F5F9D5D5D5D5B0B0B1B0B0B1D5D5B5B18CB188B1D1",
      INIT_15 => X"00000024242424448D6D6848000000000024482448446D44686868B0B0D4D5D5",
      INIT_16 => X"6888888C8C8C8D8D686488646488D1F5F5F5F5F9F5F5B0D58C486DFFFFFF2400",
      INIT_17 => X"D5F9F9F9F9D5F9F9F9D5D5D5D5B5B5B1D5B0D1D1D5B1B1B18868ACADD1D18CAD",
      INIT_18 => X"484448444444444868442400002044444424484468688CACD0D0D5D5D5D5D5D9",
      INIT_19 => X"686868688864404060CDF1F5F5D5D5F5D4F5D0D168486DFFFFFF240000244444",
      INIT_1A => X"F9D5D5F5D5F9D5D5B5B5B1B0D5B0B0B0B1B1D5B1686488A8ACAC8C6464686868",
      INIT_1B => X"8C8C8C44444448442420442444242448686868B0B0D0D5D5D5D5D5D5F9F9F9F9",
      INIT_1C => X"446440404088D1D1D1D1D1D0D0D0D0B068686DFFFFFF2400244448686868B18D",
      INIT_1D => X"F9D9D5D5D5B5B0B1D1D1B0B0B0B1B1B1B1644064888888888864444020202040",
      INIT_1E => X"B1B18C8C4848442444244848686868ACB0D0D5F5D5D5F9F9D5F9F9F9F9F5F9F9",
      INIT_1F => X"20446460606084A8ACACD18C48686DFFFFFF24000024242448686868688CB08C",
      INIT_20 => X"B5B1B0B1B1B1B0B1B0B5B5B1B1B1ACACACACACAC8C8868482400202020404040",
      INIT_21 => X"918C684844242044444488ACB0D0D5F5F5F5F9F9F9F5F9F9F9F9F9F9D5D5D5D5",
      INIT_22 => X"40606084A8ACD18C484444FFFFFF24002448696D8DB1B1B1B08C8C8C888C8C8C",
      INIT_23 => X"B1B1B1D1B0B1B1B1D1B1B0D1B0B0B18C8C8C6848240020204040402020204040",
      INIT_24 => X"684448446868688CD0D4D0D5F5F9F5F9F9F9F9F9F9F9F5F9F9D9D5D5B5B0B0B0",
      INIT_25 => X"84A8AC68440048FFFFFF24000000242444688D91B1B0B1D5B18C8C88688C8C68",
      INIT_26 => X"D5B1B1B1B1D1D1B0B0B0AC886844242000202020404040404020404040608084",
      INIT_27 => X"686888ACACD5D0F5D5F9F9F9F9F9D5F9F9F9F9F9D9D9D5D5B18CB0B0B0D1D1D1",
      INIT_28 => X"200049FFFFFF28000000242420002424486C68B1D5D5D5B068684868686C6868",
      INIT_29 => X"ACACD1D1AC8C684420000000000020202044444040404040406084A488A88C44",
      INIT_2A => X"B0D0D0D5D5D5F9F9F9F9F9F9F9F9F9F9F9D9D5B5B08CB0B0B0D0B0B0B0B0ACAC",
      INIT_2B => X"FFFF4900000000000020242424244448688CB1B1D5B1688C684868688C8C88AC",
      INIT_2C => X"AC686424000000000000002020404040404060406060A48488884444200092FF",
      INIT_2D => X"F9F9F9F9F9F9F9F9F9F9F9F9F9D9D5D5B0B0B0B0B0D1D0B0ACACACACACA8ACAC",
      INIT_2E => X"000000000000000000002020242448688DB1D5B190686868688C88B0B0D4D5F9",
      INIT_2F => X"0000000000000000202020202040404040408488888820000024FFFFFFFF9200",
      INIT_30 => X"FAFAFAFAFAFAFAFAFAD9D9D5B5B5B1B1B5D5D1B1ADACAC88ACACD1D1AC682000",
      INIT_31 => X"0000000000000000000000000044686C8C916844688C8C8CB0D5D5D5F9FAF9FA",
      INIT_32 => X"9291919292929292B2B2B2B2B2B2B2D6D6B69292B6FFFFFFFFFFFF4900000000",
      INIT_33 => X"FAFAFAFAFADADADADADADADADADAD6D6D6D6D6D6D6D6DADAB6B69191928E8E72",
      INIT_34 => X"49496D496D246D6D6D9291B2B6B6D6B6B6B6D6D6DADADAFAFAFAFAFAFAFADAFA",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB66DB6DB926D256D6D494992",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FF",
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
      LOC => "RAMB16_X0Y4",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(10) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q,
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
      DIA(7) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7,
      DIA(6) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6,
      DIA(5) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5,
      DIA(4) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4,
      DIA(3) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3,
      DIA(2) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2,
      DIA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1,
      DIA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0,
      DIPA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0,
      DIB(7) => '0',
      DIB(6) => '0',
      DIB(5) => '0',
      DIB(4) => '0',
      DIB(3) => '0',
      DIB(2) => '0',
      DIB(1) => '0',
      DIB(0) => '0',
      DIPB(0) => '0',
      DOA(7) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      DOA(6) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      DOA(5) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      DOA(4) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      DOA(3) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      DOA(2) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      DOA(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      DOA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      DOPA(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0,
      DOB(7) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7,
      DOB(6) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6,
      DOB(5) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5,
      DOB(4) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4,
      DOB(3) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3,
      DOB(2) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2,
      DOB(1) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1,
      DOB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0,
      DOPB(0) => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram : X_RAMB16_S9_S9
    generic map(
      INIT_A => X"000",
      INIT_B => X"000",
      SRVAL_A => X"000",
      SRVAL_B => X"000",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"D6D2AD44446869696968D6D6D6D6B1B6B1B1B1B1B191B1B18D6DB2DAD6B1B28D",
      INIT_01 => X"D6B1B1ADF6D6B1D6D289AD89D2D2ADB1B18D8DADADB18DB1B1D2D2B1D1D1D2D2",
      INIT_02 => X"B1B18DB1B1B1B1B2B1B1B2B18D8D6D8DB1B18D6D69698D8D8D8D68686868688D",
      INIT_03 => X"446969696868B1D6B1B2B1B1B1B191B191B1B1B1918D91DAB691B28D8D8D91B1",
      INIT_04 => X"FA89D2F6AD8D8D89ADD2ADB1B18D8D8DADADADD2D6D2D2D6D6D6D2B1D2AD4444",
      INIT_05 => X"B1B1D6B1B1B2916D8D8D8D8D918D6968688D8D8D6868688D68688DFAB1FAB1D6",
      INIT_06 => X"6868B1B1D6B1B6B18D9191B19191B1B29191B6DAB6B18D6D8D8D8D91918D8DB1",
      INIT_07 => X"B1B1D6D28DD1D68D8D8D8DB1B1D2F6D6B1D6D6D6D6D6D6D2B168444848696968",
      INIT_08 => X"D6D6B1918D916D8D8D6D696D8D8D8D8868686868688DD68DFAD2ADFAB188D2F6",
      INIT_09 => X"D6B1B1B191918D91B1B1B1B16D8DDAD6B6B28D8D8D8D8D9191918DB1B1D6D6B1",
      INIT_0A => X"B189AD8D8D8DADB1F6F6ADD2F6F6D6D6D6D6F6D6B1686848484868684868B1B1",
      INIT_0B => X"B1916D916D68698D8D8D8D686868686868B18DB1F668F6FA89ADF6D2B1B1D2AD",
      INIT_0C => X"91918DB191918DB1916DB6D6DAB1918D91B1B191918D91B1B1B2D6D6B1B1B18D",
      INIT_0D => X"8D69B1F6D6ADD6FBD6D2F6FAD2D2D6F68D69696D686D6868688DB1B1B1B1B1B1",
      INIT_0E => X"8D688D8D8D8D6868686868686868ADFA8D8DF6D18DB1F6B1D2B1B18D8D8D8D8D",
      INIT_0F => X"B6B191D68D8DD6D6B68D9191B2B18D9191918DB1B1D6D6D6B18D918D8D8D9191",
      INIT_10 => X"89D6FBD6B1FAFAB1D2F6D2ADB1B1B1B1B1686868448DB1B1B1B1B1B1B18D918D",
      INIT_11 => X"8D686868686868688DADB1D28DB1F6AD8DD2D6D1D2B1AD8D8D8D8D8D89D6FAD2",
      INIT_12 => X"8D6D8DDAD6B1B1B6B2B28D918D91B1B2B1D6D6D68D8D8D8D8D6D8D8D8D6D8D8D",
      INIT_13 => X"F6FAAD64FAD6688DB1B1B18D8D8D686844B1B1D6B1B1B1B1918D9191B6D68DB1",
      INIT_14 => X"68448CB1B1D2D6AD8DF6D28D8DFAB1B1B1B1ADADAD8DB18DD6FAAD64D6FBFA68",
      INIT_15 => X"D6D6B1B1B6B6B1B2918DB1B1B2D6D6B18D8D8DB1B16D8D6D6D8D8D8D8D8D6868",
      INIT_16 => X"FBD18D8DAD8D8D8D8D8D686868B1D6B1B1B5B1B1B191B1B2B1B1B1B16D6D6DD6",
      INIT_17 => X"B1D6B1B1B1B1D1D1B1B1B1B18DB1B1AD8DADB1ADFAAD68B1FBFB64B2FFFA448D",
      INIT_18 => X"91D6B1B6B1B1B691B1D6D6B1B18D91B1918D6D8D8D8D8D8D8D8D8D68688DADB1",
      INIT_19 => X"8D8D8D8D8D8D8D8868B1D6B1B1B1B1B1918D8D8DB1B1B1B18D6D698D8DD6B16D",
      INIT_1A => X"B1B1B1B1B1B18DB1B1B1B1B1ADB1B1AD8DADADD6FA8968F6FB8D68D2FA8D8D8D",
      INIT_1B => X"B6B1B28D8D8DB2B1918D91B18D688D8D8D8D8D8D8D8D8D688DB18DB1D1B1B1AD",
      INIT_1C => X"ADADAD8D8D8D8DB1B1B1B191B1B18DB18D8DADB19169698D698DB16DB2B6B2B1",
      INIT_1D => X"8DB1B1B1B1B1B1ADB1ADADB1B18DF6FAB189B1FAB18D69FAD68D8DB1B1B1B18D",
      INIT_1E => X"B1918DB1916D8D8D6D688D8D8D8D8D8D8D8D69B1B1B1B1D6B1B1B1B1B1ADADB1",
      INIT_1F => X"B1B1AD8D8D8D6868B1B18D688D8D8D8D8D8D8D918DB18D6DB1D6B1B1B2919191",
      INIT_20 => X"B1B1B1B1B1B1B1B1B1ADB1D6AD8DF6FA8DB18DADADB1B1B1B1D1B1B1B1ADB1B1",
      INIT_21 => X"8D6D8D8D8D8D8D8D8D8D8D8D8D68ADB1B1B1B1B1B1B1B1B1ADB18DB1B1B1B1B1",
      INIT_22 => X"D6B1B1B18D8D8D8DB1B18DAD8D8D8D6D69916D69B1B6B1918DB18D8DB1918D8D",
      INIT_23 => X"B1D2D6B1B1B1B1B1B18D8DB1D1B1B1B1FAB1B1B1B18DB1ADB1B1B18DAD8DB1B1",
      INIT_24 => X"8D8D8D8D8D8D8D8D68B1D6B1B1D6B1B1B1B1B1B1B1AD8DB1B1B1B1B1B2ADB1B1",
      INIT_25 => X"B1B1B1B1B1B1B18D8DB18D6D6D8D8D69B1B68D8D8D918D8D8D8D8D8D8D8D6D8D",
      INIT_26 => X"B1ADB1B1ADADB1B1D6B1B1B1B18DAD8DB1ADADB1B1B1B1B18D8D8D8DB1ADB1D6",
      INIT_27 => X"8D8D8D69B1B1B1D6B1D6B1D1B1B1B1B18DB1ADADB1B1B1B1B1B1B1B1B1B18DAD",
      INIT_28 => X"8D8D8DAD916D918D8D6D6D8DB1B18D698D8D696D8D8D6D8D8D8D8D8D8D8D8D8D",
      INIT_29 => X"ADB1B1ADD1B18D8D91B1B1ADAD8DB1ADADB1B18D8DAD8D8DB18D8DB1B18D8D8D",
      INIT_2A => X"B1B1B1D1D1D6B1B1B1ADB1B1B1B1B1B1FAFA8DB1B1B1B18DB18DB1B1B1B1B1AD",
      INIT_2B => X"6D6D8D6DB16D91B6D6D6B1698D6D6D8D6D8D6D6D8D8D8D8D8D8D8D8D8D8D8DB1",
      INIT_2C => X"B1B1B1B1B18DB1B1ADADADB1AD8DAD8D8DAD8D8D8DADADAD8D8D8D8D8D8D8DB1",
      INIT_2D => X"B1B1B1B1B1B1B1B1B1B1B1B1B1B18DB1B1B1B1B1B1B1B1ADB1ADADADB1B1B1B1",
      INIT_2E => X"B1D6B691D6DAB2696D6D696D8D8D6D6D8D8D8D8D8D8D8D8D8D88B1B1B1D1B1D6",
      INIT_2F => X"B1B1B1D6D6B1B1B1B1B18D8DADAD8DADAD8DADAD8DB1AD8D8D8D8D918D8D6D6D",
      INIT_30 => X"B1B18D8DB18D8DB1B1B1B1B1B1B1D6D6B1B18DB1B1B1B1B18DB19191B18D8DB1",
      INIT_31 => X"D6B68D696D6969698D8D8D8D8D8D8D8D8D8D8D8D88B1D1B1B1B1B1D6B1ADADB1",
      INIT_32 => X"D6B1B1B18DB1B18D8DADB1B1B18DB1B1B1ADAD8D8D91B6B1918D6D688DB2B191",
      INIT_33 => X"B2D6B1B18DB1B1B1B1B1B1D6B1B1B18DADB18DB18D8DB1B1B1B2B1B18DB1B1D6",
      INIT_34 => X"6D69698D8D8D8D8D8D8D8D8D8D8D8D8DB1D1B1B1B1D6D6B1ADB1B1B18DB191B1",
      INIT_35 => X"8D8D8DB1B18D8DAD8DADB18D8DB1B18DB1B2B1D68D6D6DD6D6B691D691916D6D",
      INIT_36 => X"B2B1B1B1B1B1B1B1B1D68DB1B1B1B1B1B1D6B1B2D6DAB1B1B1B1B1B1B1B1B1B1",
      INIT_37 => X"8D8D8D8D8D8DADB18D8D8DB1B1B1B1D6D6D6B1ADB1B18DD6B1DAD6FAFAB1B1B1",
      INIT_38 => X"00000000000000000000000000000000696DD6DAB6B2918D6D6D6D696D698D8D",
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
      LOC => "RAMB16_X1Y2",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => U1_q(0),
      CLKB => '0',
      ENA => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0,
      ENB => '0',
      SSRA => '0',
      SSRB => '0',
      WEA => '0',
      WEB => '0',
      ADDRA(10) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q,
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
      DIA(7) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA7,
      DIA(6) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA6,
      DIA(5) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA5,
      DIA(4) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA4,
      DIA(3) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA3,
      DIA(2) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA2,
      DIA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA1,
      DIA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIA0,
      DIPA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DIPA0,
      DIB(7) => '0',
      DIB(6) => '0',
      DIB(5) => '0',
      DIB(4) => '0',
      DIB(3) => '0',
      DIB(2) => '0',
      DIB(1) => '0',
      DIB(0) => '0',
      DIPB(0) => '0',
      DOA(7) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      DOA(6) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      DOA(5) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      DOA(4) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      DOA(3) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      DOA(2) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      DOA(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      DOA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      DOPA(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPA0,
      DOB(7) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB7,
      DOB(6) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB6,
      DOB(5) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB5,
      DOB(4) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB4,
      DOB(3) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB3,
      DOB(2) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB2,
      DOB(1) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB1,
      DOB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOB0,
      DOPB(0) => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_DOPB0
    );
  blue_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y28"
    )
    port map (
      IA => vga_sprite_blue_0_1_7318,
      IB => vga_sprite_blue(0),
      SEL => blue_0_OBUF_BXINV_7320,
      O => blue_0_OBUF_F5MUX_7328
    );
  blue_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => blue_0_OBUF_BXINV_7320
    );
  blue_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y26"
    )
    port map (
      IA => vga_sprite_blue_1_1_7343,
      IB => vga_sprite_blue(1),
      SEL => blue_1_OBUF_BXINV_7345,
      O => blue_1_OBUF_F5MUX_7353
    );
  blue_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => blue_1_OBUF_BXINV_7345
    );
  U2_vidon_and0000111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and0000111_F5MUX_7378,
      O => U2_vidon_and0000111
    );
  U2_vidon_and0000111_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y28"
    )
    port map (
      IA => U2_vidon_and00001112_7369,
      IB => U2_vidon_and00001111_7376,
      SEL => U2_vidon_and0000111_BXINV_7371,
      O => U2_vidon_and0000111_F5MUX_7378
    );
  U2_vidon_and0000111_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000098_0,
      O => U2_vidon_and0000111_BXINV_7371
    );
  red_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y28"
    )
    port map (
      IA => vga_sprite_red_0_1_7393,
      IB => vga_sprite_red(0),
      SEL => red_0_OBUF_BXINV_7395,
      O => red_0_OBUF_F5MUX_7403
    );
  red_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => red_0_OBUF_BXINV_7395
    );
  red_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y29"
    )
    port map (
      IA => vga_sprite_red_1_1_7418,
      IB => vga_sprite_red(1),
      SEL => red_1_OBUF_BXINV_7420,
      O => red_1_OBUF_F5MUX_7428
    );
  red_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => red_1_OBUF_BXINV_7420
    );
  red_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y27"
    )
    port map (
      IA => vga_sprite_red_2_1_7443,
      IB => vga_sprite_red(2),
      SEL => red_2_OBUF_BXINV_7445,
      O => red_2_OBUF_F5MUX_7453
    );
  red_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => red_2_OBUF_BXINV_7445
    );
  vga_sprite_redMona_and00006_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y30"
    )
    port map (
      IA => vga_sprite_redMona_and00006_G,
      IB => vga_sprite_redMona_and000061_7476,
      SEL => vga_sprite_redMona_and00006_BXINV_7471,
      O => vga_sprite_redMona_and00006_F5MUX_7478
    );
  vga_sprite_redMona_and00006_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS(5),
      O => vga_sprite_redMona_and00006_BXINV_7471
    );
  vga_sprite_redMona_and000023_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and000023_F5MUX_7503,
      O => vga_sprite_redMona_and000023
    );
  vga_sprite_redMona_and000023_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y31"
    )
    port map (
      IA => vga_sprite_redMona_and0000232_7493,
      IB => vga_sprite_redMona_and0000231_7501,
      SEL => vga_sprite_redMona_and000023_BXINV_7495,
      O => vga_sprite_redMona_and000023_F5MUX_7503
    );
  vga_sprite_redMona_and000023_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and00006_F5MUX_7478,
      O => vga_sprite_redMona_and000023_BXINV_7495
    );
  vga_sprite_skye_and000037_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_and000037_F5MUX_7528,
      O => vga_sprite_skye_and000037
    );
  vga_sprite_skye_and000037_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y31"
    )
    port map (
      IA => vga_sprite_skye_and0000371_7515,
      IB => vga_sprite_skye_and000037_F,
      SEL => vga_sprite_skye_and000037_BXINV_7517,
      O => vga_sprite_skye_and000037_F5MUX_7528
    );
  vga_sprite_skye_and000037_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS(7),
      O => vga_sprite_skye_and000037_BXINV_7517
    );
  N27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N27_F5MUX_7553,
      O => N27
    );
  N27_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y33"
    )
    port map (
      IA => U2_vidon_and000018_SW0,
      IB => N27_F,
      SEL => N27_BXINV_7542,
      O => N27_F5MUX_7553
    );
  N27_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(9),
      O => N27_BXINV_7542
    );
  green_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y29"
    )
    port map (
      IA => vga_sprite_green_0_1_7568,
      IB => vga_sprite_green(0),
      SEL => green_0_OBUF_BXINV_7570,
      O => green_0_OBUF_F5MUX_7578
    );
  green_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => green_0_OBUF_BXINV_7570
    );
  green_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y28"
    )
    port map (
      IA => vga_sprite_green_1_1_7593,
      IB => vga_sprite_green(1),
      SEL => green_1_OBUF_BXINV_7595,
      O => green_1_OBUF_F5MUX_7603
    );
  green_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => green_1_OBUF_BXINV_7595
    );
  green_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y27"
    )
    port map (
      IA => vga_sprite_green_2_1_7618,
      IB => vga_sprite_green(2),
      SEL => green_2_OBUF_BXINV_7620,
      O => green_2_OBUF_F5MUX_7628
    );
  green_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_0,
      O => green_2_OBUF_BXINV_7620
    );
  U2_VSENABLE_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq0000,
      O => U2_VSENABLE_DXMUX_7658
    );
  U2_VSENABLE_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq000010_pack_1,
      O => U2_HCS_cmp_eq000010_2837
    );
  U2_VSENABLE_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_VSENABLE_CLKINV_7641
    );
  U2_VSENABLE_CEINV : X_INV
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_VSENABLE_CEINVNOT
    );
  U2_vcs_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_0,
      O => U2_vcs_0_DXMUX_7693
    );
  U2_vcs_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_cmp_eq0000_pack_2,
      O => U2_vcs_cmp_eq0000_2840
    );
  U2_vcs_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_0_CLKINV_7675
    );
  U2_vcs_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_0_CEINV_7674
    );
  U2_HCS_cmp_eq00005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_HCS_cmp_eq00005_7722,
      O => U2_HCS_cmp_eq00005_0
    );
  U2_HCS_cmp_eq00005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_N3_pack_1,
      O => U2_N3
    );
  U1_q_01_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_XORF_7743,
      O => U1_q_01_DXMUX_7745
    );
  U1_q_01_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X43Y90"
    )
    port map (
      I0 => U1_q_01_CYINIT_7742,
      I1 => U1_Mcount_q_lut_0_rt_7740,
      O => U1_q_01_XORF_7743
    );
  U1_q_01_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_BXINV_7732,
      O => U1_q_01_CYINIT_7742
    );
  U1_q_01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U1_q_01_BXINV_7732
    );
  U1_q_01_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U1_q_01_CLKINV_7730
    );
  U2_HCS_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_1,
      O => U2_HCS_1_DXMUX_7787
    );
  U2_HCS_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_0,
      O => U2_HCS_1_DYMUX_7772
    );
  U2_HCS_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_HCS_1_SRINV_7763
    );
  U2_HCS_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_1_CLKINV_7762
    );
  U2_HCS_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_3,
      O => U2_HCS_3_DXMUX_7829
    );
  U2_HCS_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_2,
      O => U2_HCS_3_DYMUX_7814
    );
  U2_HCS_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_HCS_3_SRINV_7805
    );
  U2_HCS_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_3_CLKINV_7804
    );
  U2_HCS_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_5,
      O => U2_HCS_5_DXMUX_7871
    );
  U2_HCS_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_4,
      O => U2_HCS_5_DYMUX_7856
    );
  U2_HCS_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_HCS_5_SRINV_7847
    );
  U2_HCS_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_5_CLKINV_7846
    );
  U2_HCS_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_7,
      O => U2_HCS_7_DXMUX_7913
    );
  U2_HCS_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_6,
      O => U2_HCS_7_DYMUX_7898
    );
  U2_HCS_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_HCS_7_SRINV_7889
    );
  U2_HCS_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_7_CLKINV_7888
    );
  U2_HCS_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_9,
      O => U2_HCS_9_DXMUX_7955
    );
  U2_HCS_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_HCS_eqn_8,
      O => U2_HCS_9_DYMUX_7940
    );
  U2_HCS_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_HCS_9_SRINV_7931
    );
  U2_HCS_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_HCS_9_CLKINV_7930
    );
  U2_vcs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_1,
      O => U2_vcs_1_DYMUX_7980
    );
  U2_vcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_1_CLKINV_7969
    );
  U2_vcs_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_1_CEINV_7968
    );
  U2_vcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_3,
      O => U2_vcs_3_DXMUX_8026
    );
  U2_vcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_2,
      O => U2_vcs_3_DYMUX_8009
    );
  U2_vcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_3_SRINV_7999
    );
  U2_vcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_3_CLKINV_7998
    );
  U2_vcs_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_3_CEINV_7997
    );
  U2_vcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_5,
      O => U2_vcs_5_DXMUX_8072
    );
  U2_vcs_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_4,
      O => U2_vcs_5_DYMUX_8055
    );
  U2_vcs_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_5_SRINV_8045
    );
  U2_vcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_5_CLKINV_8044
    );
  U2_vcs_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_5_CEINV_8043
    );
  U2_vcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_7,
      O => U2_vcs_7_DXMUX_8118
    );
  U2_vcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_6,
      O => U2_vcs_7_DYMUX_8101
    );
  U2_vcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_7_SRINV_8091
    );
  U2_vcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_7_CLKINV_8090
    );
  U2_vcs_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_7_CEINV_8089
    );
  U2_vcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_9,
      O => U2_vcs_9_DXMUX_8164
    );
  U2_vcs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_8,
      O => U2_vcs_9_DYMUX_8147
    );
  U2_vcs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_9_SRINV_8137
    );
  U2_vcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_9_CLKINV_8136
    );
  U2_vcs_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_VSENABLE_2839,
      O => U2_vcs_9_CEINV_8135
    );
  vga_sprite_skye_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye,
      O => vga_sprite_skye_0
    );
  vga_sprite_skye_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_and000084_pack_1,
      O => vga_sprite_skye_and000084_2846
    );
  vga_sprite_blue_0_1104_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_1104_8217,
      O => vga_sprite_blue_0_1104_0
    );
  vga_sprite_blue_0_1104_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31_pack_1,
      O => N31
    );
  vga_sprite_mona_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_mona,
      O => vga_sprite_mona_0
    );
  vga_sprite_mona_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and0000127_pack_1,
      O => vga_sprite_redMona_and0000127_2851
    );
  vga_sprite_redMona_and0000116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and0000116_8265,
      O => vga_sprite_redMona_and0000116_0
    );
  vga_sprite_redMona_and0000116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and000081_pack_1,
      O => vga_sprite_redMona_and000081_2855
    );
  hsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_redMona_and000098_8281,
      O => vga_sprite_redMona_and000098_0
    );
  U1_Mcount_q_lut_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_Mcount_q_lut(0),
      O => U1_Mcount_q_lut_0_0
    );
  U2_vidon_and000018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000018_8325,
      O => U2_vidon_and000018_0
    );
  U2_vidon_and000018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000011_pack_1,
      O => U2_vidon_and000011_2856
    );
  N29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  N29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000057_pack_1,
      O => U2_vidon_and000057_2858
    );
  vidon_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => vidon,
      O => vidon_0
    );
  vidon_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000059_pack_1,
      O => U2_vidon_and000059_2860
    );
  U2_vidon_and000098_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000098_8397,
      O => U2_vidon_and000098_0
    );
  U2_vidon_and000098_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000094_8389,
      O => U2_vidon_and000094_0
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array_4_0
    );
  MRey_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(0),
      O => MRey_0_0
    );
  MRey_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11
    );
  MMona_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(0),
      O => MMona_0_0
    );
  MMona_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11
    );
  MSkye_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(0),
      O => MSkye_0_0
    );
  MSkye_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11
    );
  vsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_N2_pack_1,
      O => U2_N2
    );
  vga_sprite_skye_and000023_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_and000023_8553,
      O => vga_sprite_skye_and000023_0
    );
  vga_sprite_skye_and000023_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N25_pack_1,
      O => N25
    );
  N57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N57,
      O => N57_0
    );
  N57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33_pack_1,
      O => N33
    );
  vga_sprite_blue_0_121_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_121_8601,
      O => vga_sprite_blue_0_121_0
    );
  vga_sprite_blue_0_121_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N55_pack_1,
      O => N55
    );
  N59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N35_pack_1,
      O => N35
    );
  vga_sprite_skye_and000067_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_skye_and000067_8649,
      O => vga_sprite_skye_and000067_0
    );
  vga_sprite_skye_and000067_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N53_pack_1,
      O => N53
    );
  MRey_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(7),
      O => MRey_7_0
    );
  MRey_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(1),
      O => MRey_1_0
    );
  MMona_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(7),
      O => MMona_7_0
    );
  MMona_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(1),
      O => MMona_1_0
    );
  MSkye_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(7),
      O => MSkye_7_0
    );
  MSkye_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(1),
      O => MSkye_1_0
    );
  MRey_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(6),
      O => MRey_6_0
    );
  MRey_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(2),
      O => MRey_2_0
    );
  MMona_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(6),
      O => MMona_6_0
    );
  MMona_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(2),
      O => MMona_2_0
    );
  MSkye_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(6),
      O => MSkye_6_0
    );
  MSkye_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(2),
      O => MSkye_2_0
    );
  MRey_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(5),
      O => MRey_5_0
    );
  MRey_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(3),
      O => MRey_3_0
    );
  MMona_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(5),
      O => MMona_5_0
    );
  MMona_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(3),
      O => MMona_3_0
    );
  MSkye_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(5),
      O => MSkye_5_0
    );
  MSkye_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(3),
      O => MSkye_3_0
    );
  MRey_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => MRey(4),
      O => MRey_4_0
    );
  MMona_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => MMona(4),
      O => MMona_4_0
    );
  MSkye_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => MSkye(4),
      O => MSkye_4_0
    );
  vga_sprite_blue_0_1145_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_1145_8925,
      O => vga_sprite_blue_0_1145_0
    );
  vga_sprite_blue_0_1145_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_1117_pack_1,
      O => vga_sprite_blue_0_1117_2873
    );
  vga_sprite_blue_0_17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_17_8949,
      O => vga_sprite_blue_0_17_0
    );
  vga_sprite_blue_0_17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => vga_sprite_blue_0_188_8942,
      O => vga_sprite_blue_0_188_0
    );
  vga_sprite_Msub_ypixRey_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X45Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(1),
      O => vga_sprite_Msub_ypixRey_lut(1)
    );
  vga_sprite_Msub_ypixRey_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X45Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_lut(3)
    );
  vga_sprite_Msub_ypixRey_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X45Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(2),
      O => vga_sprite_Msub_ypixRey_lut(2)
    );
  vga_sprite_Msub_ypixRey_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X45Y42"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_lut(5)
    );
  vga_sprite_Msub_ypixMona_lut_9_2_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut_9_2
    );
  vga_sprite_Msub_ypixRey_lut_8_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(8),
      ADR2 => VCC,
      ADR3 => sw_7_IBUF_2459,
      O => vga_sprite_Msub_ypixRey_lut(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X41Y36"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0000(6),
      ADR1 => vga_sprite_ypixMona(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X41Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixMona(0),
      ADR2 => vga_sprite_ypixMona(3),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X41Y37"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0000(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixMona(6),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X41Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr21_addsub0000(7),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixMona(5),
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X41Y38"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0000(10),
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixMona(8),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0001_Madd_lut(10)
    );
  vga_sprite_rom_addr21_addsub0000_13_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X41Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr21_addsub0000(13),
      O => vga_sprite_rom_addr21_addsub0000_13_rt_3219
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(5),
      ADR3 => U2_vcs(4),
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(1)
    );
  U2_vcs_2_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vcs_2_rt_3242
    );
  U2_vsync_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X51Y34"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(9),
      ADR3 => VCC,
      O => N3
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X51Y33"
    )
    port map (
      ADR0 => sw_3_IBUF_2502,
      ADR1 => U2_vcs(8),
      ADR2 => VCC,
      ADR3 => sw_2_IBUF_2500,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X51Y33"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => sw_2_IBUF_2500,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9955",
      LOC => "SLICE_X51Y34"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => sw_3_IBUF_2502,
      ADR2 => VCC,
      ADR3 => sw_2_IBUF_2500,
      O => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Msub_ypixSkye_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X47Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(1)
    );
  vga_sprite_Msub_ypixSkye_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X47Y23"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(3)
    );
  vga_sprite_Msub_ypixSkye_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X47Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixSkye_lut(2)
    );
  vga_sprite_Msub_ypixMona_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X47Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(9),
      O => vga_sprite_Msub_ypixMona_lut(9)
    );
  vga_sprite_Msub_ypixSkye_lut_8_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X47Y26"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => sw_5_IBUF_2520,
      O => vga_sprite_Msub_ypixSkye_lut(8)
    );
  U2_Mcount_vcs_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => U2_Mcount_vcs_lut(0)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X41Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0001(5),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixRey(5),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X41Y45"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(2),
      ADR1 => vga_sprite_xpixRey(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0001(7),
      ADR1 => VCC,
      ADR2 => vga_sprite_xpixRey(7),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0001(6),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixRey(6),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0001(9),
      ADR1 => vga_sprite_xpixRey(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr2_add0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0001(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixRey(8),
      O => vga_sprite_Madd_rom_addr2_add0000_Madd_lut(8)
    );
  vga_sprite_Msub_xpixSkye_lut_5_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y18"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixSkye_lut_5_Q_4142
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X47Y18"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(1),
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixSkye(2),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X47Y18"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(1),
      ADR1 => vga_sprite_ypixSkye(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X47Y19"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(4),
      ADR1 => vga_sprite_ypixSkye(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X47Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixSkye(2),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(3),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X47Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixSkye(5),
      ADR2 => vga_sprite_ypixSkye(6),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X47Y20"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(4),
      ADR1 => vga_sprite_ypixSkye(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X47Y21"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(7),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X47Y21"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(7),
      O => vga_sprite_Madd_rom_addr20_addsub0000_Madd_lut(9)
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_4_111_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X43Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixRey_sub0000_xor_4_11
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_7_111 : X_LUT4
    generic map(
      INIT => X"3336",
      LOC => "SLICE_X43Y19"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixRey_sub0000_xor_7_11
    );
  vga_sprite_Msub_xpixSkye_lut_6_Q : X_LUT4
    generic map(
      INIT => X"05FA",
      LOC => "SLICE_X43Y19"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => VCC,
      ADR2 => U2_HCS(4),
      ADR3 => U2_HCS(6),
      O => vga_sprite_Msub_xpixSkye_lut_6_Q_4202
    );
  vga_sprite_Msub_xpixMona_lut_9_2 : X_LUT4
    generic map(
      INIT => X"1E5A",
      LOC => "SLICE_X43Y20"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(9),
      ADR3 => U2_vidon_and000098_0,
      O => vga_sprite_Msub_xpixMona_lut_9_2_4227
    );
  vga_sprite_Msub_xpixSkye_lut_8_Q : X_LUT4
    generic map(
      INIT => X"66AA",
      LOC => "SLICE_X43Y20"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U2_HCS(7),
      ADR2 => VCC,
      ADR3 => U2_vidon_and000098_0,
      O => vga_sprite_Msub_xpixSkye_lut_8_Q_4232
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y34"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(1),
      ADR1 => vga_sprite_ypixMona(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(4)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X43Y34"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(0),
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixMona(1),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X43Y36"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixMona(5),
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(7),
      ADR1 => vga_sprite_ypixMona(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y37"
    )
    port map (
      ADR0 => vga_sprite_ypixMona(7),
      ADR1 => vga_sprite_ypixMona(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_addsub0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(4),
      ADR1 => vga_sprite_rom_addr2_addsub0000(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(3),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0000(8),
      ADR1 => vga_sprite_ypixRey(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0000(7),
      ADR2 => vga_sprite_ypixRey(5),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0000(10),
      ADR2 => vga_sprite_ypixRey(8),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0000(9),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(7),
      O => vga_sprite_Madd_rom_addr2_addsub0001_Madd_lut(9)
    );
  U2_HCS_9_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X41Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_HCS_9_rt_4719
    );
  vga_sprite_rom_addr20_addsub0000_13_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y22"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0000(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_rom_addr20_addsub0000_13_rt_4901
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X45Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0000(10),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(8),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X45Y20"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0000(9),
      ADR1 => vga_sprite_ypixSkye(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut_11_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X45Y21"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0000(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixSkye(9),
      O => vga_sprite_Madd_rom_addr20_addsub0001_Madd_lut(11)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X44Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixSkye(1),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixSkye(3),
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X44Y16"
    )
    port map (
      ADR0 => vga_sprite_ypixSkye(0),
      ADR1 => vga_sprite_xpixSkye(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(2)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X44Y17"
    )
    port map (
      ADR0 => vga_sprite_xpixSkye(5),
      ADR1 => vga_sprite_rom_addr20_addsub0001(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(5)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X44Y19"
    )
    port map (
      ADR0 => vga_sprite_xpixSkye(9),
      ADR1 => vga_sprite_rom_addr20_addsub0001(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr20_add0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X44Y19"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0001(8),
      ADR1 => VCC,
      ADR2 => vga_sprite_xpixSkye(8),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr20_add0000_Madd_lut(8)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0 : X_FF
    generic map(
      LOC => "SLICE_X44Y20",
      INIT => '0'
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5088,
      CE => VCC,
      CLK => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5067,
      SET => GND,
      RST => GND,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0)
    );
  vga_sprite_rom_addr20_addsub0001_13_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0001(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_rom_addr20_addsub0001_13_rt_5120
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y21",
      INIT => '0'
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5125,
      CE => VCC,
      CLK => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5112,
      SET => GND,
      RST => GND,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y21",
      INIT => '0'
    )
    port map (
      I => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5143,
      CE => VCC,
      CLK => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5112,
      SET => GND,
      RST => GND,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixMona(1),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixMona(3),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(3)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X39Y36"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0001(6),
      ADR1 => VCC,
      ADR2 => vga_sprite_xpixMona(6),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X39Y37"
    )
    port map (
      ADR0 => vga_sprite_rom_addr21_addsub0001(9),
      ADR1 => vga_sprite_xpixMona(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(9)
    );
  vga_sprite_Madd_rom_addr21_add0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X39Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr21_addsub0001(8),
      ADR2 => VCC,
      ADR3 => vga_sprite_xpixMona(8),
      O => vga_sprite_Madd_rom_addr21_add0000_Madd_lut(8)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y38",
      INIT => '0'
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_DYMUX_5329,
      CE => VCC,
      CLK => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_CLKINV_5308,
      SET => GND,
      RST => GND,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0)
    );
  vga_sprite_rom_addr21_addsub0001_13_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr21_addsub0001(13),
      O => vga_sprite_rom_addr21_addsub0001_13_rt_5361
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y39",
      INIT => '0'
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DYMUX_5366,
      CE => VCC,
      CLK => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5353,
      SET => GND,
      RST => GND,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1 : X_FF
    generic map(
      LOC => "SLICE_X39Y39",
      INIT => '0'
    )
    port map (
      I => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_DXMUX_5384,
      CE => VCC,
      CLK => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_CLKINV_5353,
      SET => GND,
      RST => GND,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey(3),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(4),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(6)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey(2),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(3),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(5)
    );
  vga_sprite_Msub_xpixRey_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X39Y42"
    )
    port map (
      ADR0 => U2_HCS(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixRey_lut_1_Q
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_8_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey(5),
      ADR2 => vga_sprite_ypixRey(6),
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(8)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_7_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey(4),
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(5),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(7)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_10_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X43Y43"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey(8),
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(10)
    );
  vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X43Y43"
    )
    port map (
      ADR0 => vga_sprite_ypixRey(6),
      ADR1 => vga_sprite_ypixRey(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Madd_rom_addr2_addsub0000_Madd_lut(9)
    );
  vga_sprite_Msub_xpixMona_lut_9_Q : X_LUT4
    generic map(
      INIT => X"336C",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => U2_vidon_and000098_0,
      ADR1 => U2_HCS(9),
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(8),
      O => vga_sprite_Msub_xpixMona_lut_9_Q_5697
    );
  vga_sprite_Msub_xpixRey_lut_8_Q : X_LUT4
    generic map(
      INIT => X"7878",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => U2_vidon_and000098_0,
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(8),
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixRey_lut_8_Q_5702
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X53Y28"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(5),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(1)
    );
  U2_vcs_2_rt_2 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_1_F
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFDF",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(9),
      ADR3 => U2_vcs(4),
      O => N23
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X53Y29"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => sw_5_IBUF_2520,
      ADR2 => sw_4_IBUF_2516,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X53Y29"
    )
    port map (
      ADR0 => sw_4_IBUF_2516,
      ADR1 => U2_vcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9595",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => sw_5_IBUF_2520,
      ADR2 => sw_4_IBUF_2516,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(9),
      O => vga_sprite_Msub_ypixRey_sub0000_lut(9)
    );
  vga_sprite_Msub_ypixRey_sub0000_lut_8_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X45Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixRey_sub0000_lut(8)
    );
  vga_sprite_Msub_ypixMona_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(1)
    );
  vga_sprite_Msub_ypixMona_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X44Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(3)
    );
  vga_sprite_Msub_ypixMona_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X44Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixRey_sub0000(2),
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(2)
    );
  vga_sprite_Msub_ypixMona_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X44Y35"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(5)
    );
  vga_sprite_Msub_ypixMona_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X44Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(4),
      O => vga_sprite_Msub_ypixMona_lut(4)
    );
  vga_sprite_Msub_ypixMona_lut_7_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(7),
      ADR2 => VCC,
      ADR3 => sw_2_IBUF_2500,
      O => vga_sprite_Msub_ypixMona_lut(7)
    );
  vga_sprite_Msub_ypixMona_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixRey_sub0000(6),
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(6)
    );
  vga_sprite_Msub_ypixMona_lut_9_1_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X44Y37"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut_9_1
    );
  vga_sprite_Msub_ypixMona_lut_8_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X44Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_ypixRey_sub0000(8),
      ADR2 => sw_3_IBUF_2502,
      ADR3 => VCC,
      O => vga_sprite_Msub_ypixMona_lut(8)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X55Y28"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(6),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(1)
    );
  U2_vcs_2_rt_4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_1_F
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X55Y29"
    )
    port map (
      ADR0 => sw_7_IBUF_2459,
      ADR1 => U2_vcs(8),
      ADR2 => sw_6_IBUF_2454,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(3)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X55Y29"
    )
    port map (
      ADR0 => sw_6_IBUF_2454,
      ADR1 => U2_vcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(2)
    );
  vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9393",
      LOC => "SLICE_X55Y30"
    )
    port map (
      ADR0 => sw_7_IBUF_2459,
      ADR1 => U2_vcs(9),
      ADR2 => sw_6_IBUF_2454,
      ADR3 => VCC,
      O => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_lut(4)
    );
  vga_sprite_Msub_xpixMona_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X43Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(1),
      O => vga_sprite_Msub_xpixMona_lut_1_Q
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_5_111 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X43Y30"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixRey_sub0000_xor_5_11
    );
  vga_sprite_Msub_xpixMona_lut_7_Q : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X43Y31"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(4),
      ADR2 => U2_HCS(5),
      ADR3 => U2_HCS(7),
      O => vga_sprite_Msub_xpixMona_lut_7_Q_6365
    );
  vga_sprite_Msub_xpixMona_lut_6_Q : X_LUT4
    generic map(
      INIT => X"5656",
      LOC => "SLICE_X43Y31"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(4),
      ADR2 => U2_HCS(5),
      ADR3 => VCC,
      O => vga_sprite_Msub_xpixMona_lut_6_Q_6382
    );
  vga_sprite_Msub_xpixMona_lut_9_1 : X_LUT4
    generic map(
      INIT => X"1E5A",
      LOC => "SLICE_X43Y32"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(9),
      ADR3 => U2_vidon_and000098_0,
      O => vga_sprite_Msub_xpixMona_lut_9_1_6406
    );
  vga_sprite_Msub_xpixRey_sub0000_xor_8_111 : X_LUT4
    generic map(
      INIT => X"9955",
      LOC => "SLICE_X43Y32"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U2_HCS(7),
      ADR2 => VCC,
      ADR3 => U2_vidon_and000098_0,
      O => vga_sprite_Msub_xpixRey_sub0000_xor_8_11
    );
  sw_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IBUF_2738
    );
  sw_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IBUF_2739
    );
  sw_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IBUF_2500
    );
  sw_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IBUF_2502
    );
  sw_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_4_INBUF,
      O => sw_4_IBUF_2516
    );
  sw_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_5_INBUF,
      O => sw_5_IBUF_2520
    );
  sw_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_6_INBUF,
      O => sw_6_IBUF_2454
    );
  sw_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_7_INBUF,
      O => sw_7_IBUF_2459
    );
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_2742
    );
  btn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_INBUF,
      O => btn_1_IBUF_2743
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_2744
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_2745
    );
  vga_sprite_blue_0_2 : X_LUT4
    generic map(
      INIT => X"EA40",
      LOC => "SLICE_X38Y28"
    )
    port map (
      ADR0 => vga_sprite_mona_0,
      ADR1 => MRey_0_0,
      ADR2 => vga_sprite_blue_0_1145_0,
      ADR3 => MMona_0_0,
      O => vga_sprite_blue_0_1_7318
    );
  vga_sprite_blue_0_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X38Y28"
    )
    port map (
      ADR0 => vga_sprite_mona_0,
      ADR1 => MSkye_0_0,
      ADR2 => VCC,
      ADR3 => MMona_0_0,
      O => vga_sprite_blue(0)
    );
  vga_sprite_blue_1_2 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X36Y26"
    )
    port map (
      ADR0 => vga_sprite_blue_0_1145_0,
      ADR1 => vga_sprite_mona_0,
      ADR2 => MMona_1_0,
      ADR3 => MRey_1_0,
      O => vga_sprite_blue_1_1_7343
    );
  vga_sprite_blue_1_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X36Y26"
    )
    port map (
      ADR0 => MMona_1_0,
      ADR1 => VCC,
      ADR2 => MSkye_1_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_blue(1)
    );
  U2_vidon_and00001112 : X_LUT4
    generic map(
      INIT => X"3322",
      LOC => "SLICE_X42Y28"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => U2_HCS(8),
      O => U2_vidon_and00001112_7369
    );
  U2_vidon_and00001111 : X_LUT4
    generic map(
      INIT => X"3332",
      LOC => "SLICE_X42Y28"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_vcs(9),
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(8),
      O => U2_vidon_and00001111_7376
    );
  vga_sprite_red_0_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X41Y28"
    )
    port map (
      ADR0 => MRey_5_0,
      ADR1 => vga_sprite_blue_0_1145_0,
      ADR2 => MMona_5_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_red_0_1_7393
    );
  vga_sprite_red_0_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X41Y28"
    )
    port map (
      ADR0 => MSkye_5_0,
      ADR1 => VCC,
      ADR2 => MMona_5_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_red(0)
    );
  vga_sprite_red_1_2 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X40Y29"
    )
    port map (
      ADR0 => vga_sprite_blue_0_1145_0,
      ADR1 => MRey_6_0,
      ADR2 => vga_sprite_mona_0,
      ADR3 => MMona_6_0,
      O => vga_sprite_red_1_1_7418
    );
  vga_sprite_red_1_1 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X40Y29"
    )
    port map (
      ADR0 => MSkye_6_0,
      ADR1 => VCC,
      ADR2 => vga_sprite_mona_0,
      ADR3 => MMona_6_0,
      O => vga_sprite_red(1)
    );
  vga_sprite_red_2_2 : X_LUT4
    generic map(
      INIT => X"B888",
      LOC => "SLICE_X38Y27"
    )
    port map (
      ADR0 => MMona_7_0,
      ADR1 => vga_sprite_mona_0,
      ADR2 => MRey_7_0,
      ADR3 => vga_sprite_blue_0_1145_0,
      O => vga_sprite_red_2_1_7443
    );
  vga_sprite_red_2_1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X38Y27"
    )
    port map (
      ADR0 => MMona_7_0,
      ADR1 => vga_sprite_mona_0,
      ADR2 => VCC,
      ADR3 => MSkye_7_0,
      O => vga_sprite_red(2)
    );
  vga_sprite_redMona_and000061 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X40Y30"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_HCS(1),
      ADR2 => U2_HCS(2),
      ADR3 => U2_HCS(3),
      O => vga_sprite_redMona_and000061_7476
    );
  vga_sprite_redMona_and0000232 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X42Y31"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(8),
      ADR3 => U2_HCS(6),
      O => vga_sprite_redMona_and0000232_7493
    );
  vga_sprite_redMona_and0000231 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X42Y31"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => VCC,
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(8),
      O => vga_sprite_redMona_and0000231_7501
    );
  vga_sprite_skye_and0000371 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X45Y31"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => U2_HCS(3),
      ADR2 => U2_HCS(6),
      ADR3 => U2_HCS(4),
      O => vga_sprite_skye_and0000371_7515
    );
  U2_vidon_and000018_SW01 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X43Y33"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(7),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(5),
      O => U2_vidon_and000018_SW0
    );
  vga_sprite_green_0_2 : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X39Y29"
    )
    port map (
      ADR0 => MMona_2_0,
      ADR1 => vga_sprite_blue_0_1145_0,
      ADR2 => MRey_2_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_green_0_1_7568
    );
  vga_sprite_green_0_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X39Y29"
    )
    port map (
      ADR0 => MSkye_2_0,
      ADR1 => VCC,
      ADR2 => MMona_2_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_green(0)
    );
  vga_sprite_green_1_2 : X_LUT4
    generic map(
      INIT => X"CCA0",
      LOC => "SLICE_X39Y28"
    )
    port map (
      ADR0 => vga_sprite_blue_0_1145_0,
      ADR1 => MMona_3_0,
      ADR2 => MRey_3_0,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_green_1_1_7593
    );
  vga_sprite_green_1_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X39Y28"
    )
    port map (
      ADR0 => MSkye_3_0,
      ADR1 => MMona_3_0,
      ADR2 => VCC,
      ADR3 => vga_sprite_mona_0,
      O => vga_sprite_green(1)
    );
  vga_sprite_green_2_2 : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X37Y27"
    )
    port map (
      ADR0 => MRey_4_0,
      ADR1 => MMona_4_0,
      ADR2 => vga_sprite_mona_0,
      ADR3 => vga_sprite_blue_0_1145_0,
      O => vga_sprite_green_2_1_7618
    );
  vga_sprite_green_2_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X37Y27"
    )
    port map (
      ADR0 => MSkye_4_0,
      ADR1 => MMona_4_0,
      ADR2 => vga_sprite_mona_0,
      ADR3 => VCC,
      O => vga_sprite_green(2)
    );
  U2_HCS_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_HCS(3),
      ADR2 => U2_HCS(2),
      ADR3 => U2_HCS(8),
      O => U2_HCS_cmp_eq000010_pack_1
    );
  U2_HCS_cmp_eq0000111 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS_cmp_eq00005_0,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_HCS_cmp_eq0000
    );
  U2_VSENABLE : X_FF
    generic map(
      LOC => "SLICE_X46Y36",
      INIT => '0'
    )
    port map (
      I => U2_VSENABLE_DXMUX_7658,
      CE => U2_VSENABLE_CEINVNOT,
      CLK => U2_VSENABLE_CLKINV_7641,
      SET => GND,
      RST => GND,
      O => U2_VSENABLE_2839
    );
  U2_vcs_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X45Y32"
    )
    port map (
      ADR0 => U2_N2,
      ADR1 => U2_vcs(1),
      ADR2 => N23_0,
      ADR3 => U2_vcs(0),
      O => U2_vcs_cmp_eq0000_pack_2
    );
  U2_Mcount_vcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X45Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(0),
      ADR2 => U2_vcs_cmp_eq0000_2840,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_0 : X_FF
    generic map(
      LOC => "SLICE_X45Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_0_DXMUX_7693,
      CE => U2_vcs_0_CEINV_7674,
      CLK => U2_vcs_0_CLKINV_7675,
      SET => GND,
      RST => U2_vcs_0_FFX_RSTAND_7699,
      O => U2_vcs(0)
    );
  U2_vcs_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X45Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_0_FFX_RSTAND_7699
    );
  U2_HCS_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X43Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(7),
      ADR2 => U2_HCS(6),
      ADR3 => U2_HCS(5),
      O => U2_N3_pack_1
    );
  U2_HCS_cmp_eq00005 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X43Y38"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_HCS(0),
      ADR2 => U2_N3,
      ADR3 => U2_HCS(1),
      O => U2_HCS_cmp_eq00005_7722
    );
  U1_Mcount_q_lut_0_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y90"
    )
    port map (
      ADR0 => U1_Mcount_q_lut_0_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_Mcount_q_lut_0_rt_7740
    );
  U1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X43Y90",
      INIT => '0'
    )
    port map (
      I => U1_q_01_DXMUX_7745,
      CE => VCC,
      CLK => U1_q_01_CLKINV_7730,
      SET => GND,
      RST => U1_q_01_FFX_RSTAND_7750,
      O => U1_q_01
    );
  U1_q_01_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U1_q_01_FFX_RSTAND_7750
    );
  U2_Mcount_HCS_eqn_01 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X41Y30"
    )
    port map (
      ADR0 => U2_Result_0_1,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_0
    );
  U2_HCS_0 : X_FF
    generic map(
      LOC => "SLICE_X41Y30",
      INIT => '0'
    )
    port map (
      I => U2_HCS_1_DYMUX_7772,
      CE => VCC,
      CLK => U2_HCS_1_CLKINV_7762,
      SET => GND,
      RST => U2_HCS_1_SRINV_7763,
      O => U2_HCS(0)
    );
  U2_Mcount_HCS_eqn_11 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X41Y30"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_Result_1_1,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_1
    );
  U2_HCS_1 : X_FF
    generic map(
      LOC => "SLICE_X41Y30",
      INIT => '0'
    )
    port map (
      I => U2_HCS_1_DXMUX_7787,
      CE => VCC,
      CLK => U2_HCS_1_CLKINV_7762,
      SET => GND,
      RST => U2_HCS_1_SRINV_7763,
      O => U2_HCS(1)
    );
  U2_Mcount_HCS_eqn_21 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X40Y33"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => VCC,
      ADR2 => U2_Result_2_1,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_2
    );
  U2_HCS_2 : X_FF
    generic map(
      LOC => "SLICE_X40Y33",
      INIT => '0'
    )
    port map (
      I => U2_HCS_3_DYMUX_7814,
      CE => VCC,
      CLK => U2_HCS_3_CLKINV_7804,
      SET => GND,
      RST => U2_HCS_3_SRINV_7805,
      O => U2_HCS(2)
    );
  U2_Mcount_HCS_eqn_31 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X40Y33"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_Result_3_1,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_3
    );
  U2_HCS_3 : X_FF
    generic map(
      LOC => "SLICE_X40Y33",
      INIT => '0'
    )
    port map (
      I => U2_HCS_3_DXMUX_7829,
      CE => VCC,
      CLK => U2_HCS_3_CLKINV_7804,
      SET => GND,
      RST => U2_HCS_3_SRINV_7805,
      O => U2_HCS(3)
    );
  U2_Mcount_HCS_eqn_41 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X40Y32"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_HCS_cmp_eq000010_2837,
      ADR2 => VCC,
      ADR3 => U2_Result_4_1,
      O => U2_Mcount_HCS_eqn_4
    );
  U2_HCS_4 : X_FF
    generic map(
      LOC => "SLICE_X40Y32",
      INIT => '0'
    )
    port map (
      I => U2_HCS_5_DYMUX_7856,
      CE => VCC,
      CLK => U2_HCS_5_CLKINV_7846,
      SET => GND,
      RST => U2_HCS_5_SRINV_7847,
      O => U2_HCS(4)
    );
  U2_Mcount_HCS_eqn_51 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X40Y32"
    )
    port map (
      ADR0 => U2_Result_5_1,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_5
    );
  U2_HCS_5 : X_FF
    generic map(
      LOC => "SLICE_X40Y32",
      INIT => '0'
    )
    port map (
      I => U2_HCS_5_DXMUX_7871,
      CE => VCC,
      CLK => U2_HCS_5_CLKINV_7846,
      SET => GND,
      RST => U2_HCS_5_SRINV_7847,
      O => U2_HCS(5)
    );
  U2_Mcount_HCS_eqn_61 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X40Y34"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => VCC,
      ADR2 => U2_Result_6_1,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_6
    );
  U2_HCS_6 : X_FF
    generic map(
      LOC => "SLICE_X40Y34",
      INIT => '0'
    )
    port map (
      I => U2_HCS_7_DYMUX_7898,
      CE => VCC,
      CLK => U2_HCS_7_CLKINV_7888,
      SET => GND,
      RST => U2_HCS_7_SRINV_7889,
      O => U2_HCS(6)
    );
  U2_Mcount_HCS_eqn_71 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X40Y34"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_Result_7_1,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_7
    );
  U2_HCS_7 : X_FF
    generic map(
      LOC => "SLICE_X40Y34",
      INIT => '0'
    )
    port map (
      I => U2_HCS_7_DXMUX_7913,
      CE => VCC,
      CLK => U2_HCS_7_CLKINV_7888,
      SET => GND,
      RST => U2_HCS_7_SRINV_7889,
      O => U2_HCS(7)
    );
  U2_Mcount_HCS_eqn_81 : X_LUT4
    generic map(
      INIT => X"7700",
      LOC => "SLICE_X40Y35"
    )
    port map (
      ADR0 => U2_HCS_cmp_eq00005_0,
      ADR1 => U2_HCS_cmp_eq000010_2837,
      ADR2 => VCC,
      ADR3 => U2_Result_8_1,
      O => U2_Mcount_HCS_eqn_8
    );
  U2_HCS_8 : X_FF
    generic map(
      LOC => "SLICE_X40Y35",
      INIT => '0'
    )
    port map (
      I => U2_HCS_9_DYMUX_7940,
      CE => VCC,
      CLK => U2_HCS_9_CLKINV_7930,
      SET => GND,
      RST => U2_HCS_9_SRINV_7931,
      O => U2_HCS(8)
    );
  U2_Mcount_HCS_eqn_91 : X_LUT4
    generic map(
      INIT => X"22AA",
      LOC => "SLICE_X40Y35"
    )
    port map (
      ADR0 => U2_Result_9_1,
      ADR1 => U2_HCS_cmp_eq00005_0,
      ADR2 => VCC,
      ADR3 => U2_HCS_cmp_eq000010_2837,
      O => U2_Mcount_HCS_eqn_9
    );
  U2_HCS_9 : X_FF
    generic map(
      LOC => "SLICE_X40Y35",
      INIT => '0'
    )
    port map (
      I => U2_HCS_9_DXMUX_7955,
      CE => VCC,
      CLK => U2_HCS_9_CLKINV_7930,
      SET => GND,
      RST => U2_HCS_9_SRINV_7931,
      O => U2_HCS(9)
    );
  U2_Mcount_vcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X44Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_2840,
      ADR2 => U2_Result(1),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_vcs_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DYMUX_7980,
      CE => U2_vcs_1_CEINV_7968,
      CLK => U2_vcs_1_CLKINV_7969,
      SET => GND,
      RST => U2_vcs_1_FFY_RSTAND_7986,
      O => U2_vcs(1)
    );
  U2_vcs_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X44Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_2745,
      O => U2_vcs_1_FFY_RSTAND_7986
    );
  U2_Mcount_vcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs_cmp_eq0000_2840,
      ADR3 => U2_Result(2),
      O => U2_Mcount_vcs_eqn_2
    );
  U2_vcs_2 : X_FF
    generic map(
      LOC => "SLICE_X46Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DYMUX_8009,
      CE => U2_vcs_3_CEINV_7997,
      CLK => U2_vcs_3_CLKINV_7998,
      SET => GND,
      RST => U2_vcs_3_SRINV_7999,
      O => U2_vcs(2)
    );
  U2_Mcount_vcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X46Y32"
    )
    port map (
      ADR0 => U2_Result(3),
      ADR1 => VCC,
      ADR2 => U2_vcs_cmp_eq0000_2840,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_3
    );
  U2_vcs_3 : X_FF
    generic map(
      LOC => "SLICE_X46Y32",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DXMUX_8026,
      CE => U2_vcs_3_CEINV_7997,
      CLK => U2_vcs_3_CLKINV_7998,
      SET => GND,
      RST => U2_vcs_3_SRINV_7999,
      O => U2_vcs(3)
    );
  U2_Mcount_vcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_2840,
      ADR2 => U2_Result(4),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_vcs_4 : X_FF
    generic map(
      LOC => "SLICE_X46Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DYMUX_8055,
      CE => U2_vcs_5_CEINV_8043,
      CLK => U2_vcs_5_CLKINV_8044,
      SET => GND,
      RST => U2_vcs_5_SRINV_8045,
      O => U2_vcs(4)
    );
  U2_Mcount_vcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X46Y34"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_2840,
      ADR1 => U2_Result(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_vcs_5 : X_FF
    generic map(
      LOC => "SLICE_X46Y34",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DXMUX_8072,
      CE => U2_vcs_5_CEINV_8043,
      CLK => U2_vcs_5_CLKINV_8044,
      SET => GND,
      RST => U2_vcs_5_SRINV_8045,
      O => U2_vcs(5)
    );
  U2_Mcount_vcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_2840,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_Result(6),
      O => U2_Mcount_vcs_eqn_6
    );
  U2_vcs_6 : X_FF
    generic map(
      LOC => "SLICE_X46Y35",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DYMUX_8101,
      CE => U2_vcs_7_CEINV_8089,
      CLK => U2_vcs_7_CLKINV_8090,
      SET => GND,
      RST => U2_vcs_7_SRINV_8091,
      O => U2_vcs(6)
    );
  U2_Mcount_vcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => U2_Result(7),
      ADR1 => U2_vcs_cmp_eq0000_2840,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_vcs_7 : X_FF
    generic map(
      LOC => "SLICE_X46Y35",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DXMUX_8118,
      CE => U2_vcs_7_CEINV_8089,
      CLK => U2_vcs_7_CLKINV_8090,
      SET => GND,
      RST => U2_vcs_7_SRINV_8091,
      O => U2_vcs(7)
    );
  U2_Mcount_vcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_2840,
      ADR1 => VCC,
      ADR2 => U2_Result(8),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_8
    );
  U2_vcs_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y37",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DYMUX_8147,
      CE => U2_vcs_9_CEINV_8135,
      CLK => U2_vcs_9_CLKINV_8136,
      SET => GND,
      RST => U2_vcs_9_SRINV_8137,
      O => U2_vcs(8)
    );
  U2_Mcount_vcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(9),
      ADR2 => U2_vcs_cmp_eq0000_2840,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_9
    );
  U2_vcs_9 : X_FF
    generic map(
      LOC => "SLICE_X46Y37",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DXMUX_8164,
      CE => U2_vcs_9_CEINV_8135,
      CLK => U2_vcs_9_CLKINV_8136,
      SET => GND,
      RST => U2_vcs_9_SRINV_8137,
      O => U2_vcs(9)
    );
  vga_sprite_skye_and000084 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X45Y30"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => vga_sprite_skye_and000067_0,
      ADR2 => vga_sprite_skye_and000037,
      ADR3 => U2_HCS(9),
      O => vga_sprite_skye_and000084_pack_1
    );
  vga_sprite_skye_and0000122 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X45Y30"
    )
    port map (
      ADR0 => vga_sprite_skye_and000023_0,
      ADR1 => vga_sprite_Mcompar_skyespriteon_cmp_lt0000_cy_4_Q,
      ADR2 => vga_sprite_skye_and000084_2846,
      ADR3 => vidon_0,
      O => vga_sprite_skye
    );
  vga_sprite_blue_0_1104_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X45Y29"
    )
    port map (
      ADR0 => vga_sprite_blue_0_188_0,
      ADR1 => U2_HCS(6),
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(5),
      O => N31_pack_1
    );
  vga_sprite_blue_0_1104 : X_LUT4
    generic map(
      INIT => X"1101",
      LOC => "SLICE_X45Y29"
    )
    port map (
      ADR0 => U2_HCS(8),
      ADR1 => U2_HCS(9),
      ADR2 => U2_HCS(4),
      ADR3 => N31,
      O => vga_sprite_blue_0_1104_8217
    );
  vga_sprite_redMona_and0000127 : X_LUT4
    generic map(
      INIT => X"CCC0",
      LOC => "SLICE_X42Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_redMona_and0000116_0,
      ADR2 => N57_0,
      ADR3 => U2_vcs(9),
      O => vga_sprite_redMona_and0000127_pack_1
    );
  vga_sprite_redMona_and0000157 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X42Y30"
    )
    port map (
      ADR0 => vga_sprite_Mcompar_monaspriteon_cmp_lt0000_cy_4_Q,
      ADR1 => vga_sprite_redMona_and000023,
      ADR2 => vidon_0,
      ADR3 => vga_sprite_redMona_and0000127_2851,
      O => vga_sprite_mona
    );
  vga_sprite_redMona_and000081 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X40Y27"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_HCS(1),
      ADR2 => U2_HCS(2),
      ADR3 => U2_HCS(3),
      O => vga_sprite_redMona_and000081_pack_1
    );
  vga_sprite_redMona_and0000116 : X_LUT4
    generic map(
      INIT => X"D5DD",
      LOC => "SLICE_X40Y27"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => vga_sprite_redMona_and000098_0,
      ADR2 => vga_sprite_redMona_and000081_2855,
      ADR3 => U2_HCS(5),
      O => vga_sprite_redMona_and0000116_8265
    );
  vga_sprite_redMona_and000098 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X38Y26"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(8),
      ADR2 => U2_HCS(7),
      ADR3 => VCC,
      O => vga_sprite_redMona_and000098_8281
    );
  U2_hsync1 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X38Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(8),
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(9),
      O => hsync_OBUF_8289
    );
  U1_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X42Y90"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U1_q_01,
      ADR3 => VCC,
      O => U1_Mcount_q_lut(0)
    );
  U2_vidon_and000011 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X44Y31"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => U2_vidon_and000011_pack_1
    );
  U2_vidon_and000018 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X44Y31"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vidon_and000011_2856,
      ADR3 => N27,
      O => U2_vidon_and000018_8325
    );
  U2_vidon_and000057 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(3),
      O => U2_vidon_and000057_pack_1
    );
  U2_vidon_and000059_SW0 : X_LUT4
    generic map(
      INIT => X"F7F7",
      LOC => "SLICE_X46Y33"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(7),
      ADR2 => U2_vidon_and000057_2858,
      ADR3 => VCC,
      O => N29
    );
  U2_vidon_and000059 : X_LUT4
    generic map(
      INIT => X"F7FF",
      LOC => "SLICE_X44Y30"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(5),
      ADR2 => N29_0,
      ADR3 => U2_vcs(1),
      O => U2_vidon_and000059_pack_1
    );
  U2_vidon_and0000130 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X44Y30"
    )
    port map (
      ADR0 => U2_vidon_and0000111,
      ADR1 => U2_vidon_and000018_0,
      ADR2 => U2_vidon_and000094_0,
      ADR3 => U2_vidon_and000059_2860,
      O => vidon
    );
  U2_vidon_and000094 : X_LUT4
    generic map(
      INIT => X"4FFF",
      LOC => "SLICE_X42Y38"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_N3,
      ADR2 => U2_HCS(8),
      ADR3 => U2_HCS(9),
      O => U2_vidon_and000094_8389
    );
  U2_vidon_and000098 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X42Y38"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => U2_HCS(6),
      ADR2 => VCC,
      ADR3 => U2_HCS(5),
      O => U2_vidon_and000098_8397
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_bindec_a_bindec_inst_a_ADDR_2_PWR_16_o_equal_5_o_2_1 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => romRey_addr14(13),
      ADR1 => VCC,
      ADR2 => romRey_addr14(11),
      ADR3 => romRey_addr14(12),
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_bindec_a_bindec_inst_a_ADDR_2_PWR_16_o_equal_5_o_2_1 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X38Y38"
    )
    port map (
      ADR0 => romMona_addr14(13),
      ADR1 => romMona_addr14(11),
      ADR2 => VCC,
      ADR3 => romMona_addr14(12),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_bindec_a_bindec_inst_a_ADDR_2_PWR_16_o_equal_5_o_2_1 : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X46Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => romSkye_addr14(11),
      ADR2 => romSkye_addr14(13),
      ADR3 => romSkye_addr14(12),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ena_array(4)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux111 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0),
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux12 : X_LUT4
    generic map(
      INIT => X"A0EC",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      O => MRey(0)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux111 : X_LUT4
    generic map(
      INIT => X"0044",
      LOC => "SLICE_X38Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0),
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => VCC,
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux12 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X38Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      O => MMona(0)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux111 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X46Y22"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(1),
      ADR2 => VCC,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(0),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11_pack_2
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux12 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X46Y22"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_0_Q,
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_0_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(0)
    );
  U2_vcs_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X42Y32"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U2_vcs(8),
      ADR2 => U2_vcs(7),
      ADR3 => U2_vcs(6),
      O => U2_N2_pack_1
    );
  U2_vsync : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X42Y32"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => N3_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_N2,
      O => vsync_OBUF_8529
    );
  vga_sprite_skye_and000023_SW0 : X_LUT4
    generic map(
      INIT => X"F5D4",
      LOC => "SLICE_X51Y29"
    )
    port map (
      ADR0 => sw_4_IBUF_2516,
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(7),
      ADR3 => U2_vcs(6),
      O => N25_pack_1
    );
  vga_sprite_skye_and000023 : X_LUT4
    generic map(
      INIT => X"FBF2",
      LOC => "SLICE_X51Y29"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => sw_5_IBUF_2520,
      ADR2 => U2_vcs(9),
      ADR3 => N25,
      O => vga_sprite_skye_and000023_8553
    );
  vga_sprite_redMona_and000056_SW0 : X_LUT4
    generic map(
      INIT => X"3071",
      LOC => "SLICE_X50Y33"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U2_vcs(7),
      ADR2 => sw_2_IBUF_2500,
      ADR3 => U2_vcs(6),
      O => N33_pack_1
    );
  vga_sprite_redMona_and0000127_SW0 : X_LUT4
    generic map(
      INIT => X"0AAF",
      LOC => "SLICE_X50Y33"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => VCC,
      ADR2 => N33,
      ADR3 => sw_3_IBUF_2502,
      O => N57
    );
  vga_sprite_blue_0_121_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X44Y29"
    )
    port map (
      ADR0 => U2_HCS(5),
      ADR1 => VCC,
      ADR2 => U2_HCS(6),
      ADR3 => vga_sprite_blue_0_17_0,
      O => N55_pack_1
    );
  vga_sprite_blue_0_121 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X44Y29"
    )
    port map (
      ADR0 => U2_HCS(9),
      ADR1 => U2_HCS(7),
      ADR2 => N55,
      ADR3 => U2_HCS(8),
      O => vga_sprite_blue_0_121_8601
    );
  vga_sprite_blue_0_154_SW0 : X_LUT4
    generic map(
      INIT => X"04CD",
      LOC => "SLICE_X54Y29"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => sw_6_IBUF_2454,
      ADR2 => U2_vcs(5),
      ADR3 => U2_vcs(7),
      O => N35_pack_1
    );
  vga_sprite_blue_0_1117_SW0 : X_LUT4
    generic map(
      INIT => X"2B2B",
      LOC => "SLICE_X54Y29"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => sw_7_IBUF_2459,
      ADR2 => N35,
      ADR3 => VCC,
      O => N59
    );
  vga_sprite_skye_and000067_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X42Y33"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => U2_HCS(5),
      ADR2 => U2_HCS(3),
      ADR3 => U2_HCS(2),
      O => N53_pack_1
    );
  vga_sprite_skye_and000067 : X_LUT4
    generic map(
      INIT => X"1FFF",
      LOC => "SLICE_X42Y33"
    )
    port map (
      ADR0 => U2_HCS(4),
      ADR1 => N53,
      ADR2 => U2_HCS(7),
      ADR3 => U2_HCS(8),
      O => vga_sprite_skye_and000067_8649
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux21 : X_LUT4
    generic map(
      INIT => X"C0EA",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      O => MRey(1)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux81 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      O => MRey(7)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux21 : X_LUT4
    generic map(
      INIT => X"AE0C",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(1)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux81 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      O => MMona(7)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux21 : X_LUT4
    generic map(
      INIT => X"DC50",
      LOC => "SLICE_X54Y22"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_1_Q,
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_ram_douta_1_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(1)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux81 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X54Y22"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_7_Q,
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_1_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(7)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux31 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X55Y54"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      O => MRey(2)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux71 : X_LUT4
    generic map(
      INIT => X"AE0C",
      LOC => "SLICE_X55Y54"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      O => MRey(6)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux31 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X37Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(2)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux71 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X37Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(6)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux31 : X_LUT4
    generic map(
      INIT => X"F222",
      LOC => "SLICE_X54Y28"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_0_Q,
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_2_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(2)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux71 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X54Y28"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_6_Q,
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_ram_douta_0_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(6)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux41 : X_LUT4
    generic map(
      INIT => X"F444",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MRey(3)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux61 : X_LUT4
    generic map(
      INIT => X"F444",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MRey(5)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux41 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X33Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(3)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux61 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X33Y39"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(5)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux41 : X_LUT4
    generic map(
      INIT => X"F444",
      LOC => "SLICE_X54Y23"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_ram_douta_1_Q,
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_3_Q,
      O => MSkye(3)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux61 : X_LUT4
    generic map(
      INIT => X"F222",
      LOC => "SLICE_X54Y23"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_1_Q,
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_5_Q,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MSkye(5)
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux51 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X54Y54"
    )
    port map (
      ADR0 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      ADR1 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR2 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      ADR3 => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MRey(4)
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux51 : X_LUT4
    generic map(
      INIT => X"DC50",
      LOC => "SLICE_X35Y36"
    )
    port map (
      ADR0 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      ADR2 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      ADR3 => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      O => MMona(4)
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux51 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X52Y22"
    )
    port map (
      ADR0 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe(2),
      ADR1 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_ram_douta_4_Q,
      ADR2 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_Mmux_dout_mux11,
      ADR3 => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_ram_douta_0_Q,
      O => MSkye(4)
    );
  vga_sprite_blue_0_1117 : X_LUT4
    generic map(
      INIT => X"AAA0",
      LOC => "SLICE_X45Y28"
    )
    port map (
      ADR0 => vga_sprite_blue_0_1104_0,
      ADR1 => VCC,
      ADR2 => N59_0,
      ADR3 => U2_vcs(9),
      O => vga_sprite_blue_0_1117_pack_1
    );
  vga_sprite_blue_0_1145 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X45Y28"
    )
    port map (
      ADR0 => vidon_0,
      ADR1 => vga_sprite_blue_0_121_0,
      ADR2 => vga_sprite_blue_0_1117_2873,
      ADR3 => vga_sprite_Mcompar_reyspriteon_cmp_lt0000_cy_4_Q,
      O => vga_sprite_blue_0_1145_8925
    );
  vga_sprite_blue_0_188 : X_LUT4
    generic map(
      INIT => X"005F",
      LOC => "SLICE_X44Y28"
    )
    port map (
      ADR0 => U2_HCS(2),
      ADR1 => VCC,
      ADR2 => U2_HCS(1),
      ADR3 => U2_HCS(3),
      O => vga_sprite_blue_0_188_8942
    );
  vga_sprite_blue_0_17 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X44Y28"
    )
    port map (
      ADR0 => U2_HCS(2),
      ADR1 => U2_HCS(4),
      ADR2 => U2_HCS(1),
      ADR3 => U2_HCS(3),
      O => vga_sprite_blue_0_17_8949
    );
  vga_sprite_ypixRey_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y40"
    )
    port map (
      ADR0 => vga_sprite_ypixRey_sub0000(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_ypixRey_0_F
    );
  vga_sprite_rom_addr21_addsub0001_11_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X41Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr21_addsub0000(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_rom_addr21_addsub0001_11_G
    );
  vga_sprite_ypixSkye_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X47Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_ypixRey_sub0000(0),
      ADR3 => VCC,
      O => vga_sprite_ypixSkye_0_F
    );
  U2_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X47Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => U2_Result_0_G
    );
  U2_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X47Y33"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_F
    );
  U2_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X47Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => U2_Result_2_G
    );
  U2_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X47Y34"
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
      LOC => "SLICE_X47Y34"
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
      LOC => "SLICE_X47Y35"
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
      INIT => X"FF00",
      LOC => "SLICE_X47Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(7),
      O => U2_Result_6_G
    );
  U2_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_8_F
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_rom_addr2_addsub0001(10),
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr2_addsub0001(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G
    );
  rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => vga_sprite_rom_addr2_addsub0001(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F
    );
  romMona_addr14_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(0),
      O => romMona_addr14_0_F
    );
  romMona_addr14_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X43Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => romMona_addr14_0_G
    );
  vga_sprite_xpixSkye_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X43Y17"
    )
    port map (
      ADR0 => U2_HCS(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_xpixSkye_2_F
    );
  vga_sprite_rom_addr2_addsub0001_11_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X43Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_rom_addr2_addsub0000(12),
      ADR3 => VCC,
      O => vga_sprite_rom_addr2_addsub0001_11_G
    );
  U2_Result_0_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X41Y31"
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
      INIT => X"AAAA",
      LOC => "SLICE_X41Y32"
    )
    port map (
      ADR0 => U2_HCS(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_1_F
    );
  U2_Result_2_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X41Y32"
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
      INIT => X"FF00",
      LOC => "SLICE_X41Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(4),
      O => U2_Result_4_1_F
    );
  U2_Result_4_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X41Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(5),
      ADR3 => VCC,
      O => U2_Result_4_1_G
    );
  U2_Result_6_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X41Y34"
    )
    port map (
      ADR0 => U2_HCS(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_1_F
    );
  U2_Result_6_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X41Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(7),
      O => U2_Result_6_1_G
    );
  U2_Result_8_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X41Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_HCS(8),
      ADR3 => VCC,
      O => U2_Result_8_1_F
    );
  vga_sprite_rom_addr20_addsub0001_11_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr20_addsub0000(12),
      O => vga_sprite_rom_addr20_addsub0001_11_G
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr20_addsub0001(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr20_addsub0001(11),
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G
    );
  skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X44Y21"
    )
    port map (
      ADR0 => vga_sprite_rom_addr20_addsub0001(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_rom_addr21_addsub0001(10),
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_F
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X39Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vga_sprite_rom_addr21_addsub0001(11),
      ADR3 => VCC,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_0_G
    );
  monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X39Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vga_sprite_rom_addr21_addsub0001(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_has_mux_a_A_sel_pipe_1_F
    );
  romRey_addr14_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(0),
      O => romRey_addr14_0_F
    );
  vga_sprite_xpixRey_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(4),
      O => vga_sprite_xpixRey_4_F
    );
  vga_sprite_ypixRey_sub0000_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X45Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => vga_sprite_ypixRey_sub0000_0_F
    );
  vga_sprite_ypixRey_sub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X45Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_ypixRey_sub0000_0_G
    );
  vga_sprite_ypixRey_sub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X45Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_ypixRey_sub0000_2_F
    );
  vga_sprite_ypixRey_sub0000_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X45Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(3),
      ADR3 => VCC,
      O => vga_sprite_ypixRey_sub0000_2_G
    );
  vga_sprite_ypixRey_sub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X45Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_ypixRey_sub0000_4_F
    );
  vga_sprite_ypixMona_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vga_sprite_ypixRey_sub0000(0),
      O => vga_sprite_ypixMona_0_F
    );
  romSkye_addr14_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X43Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => romSkye_addr14_0_F
    );
  vga_sprite_xpixMona_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(2),
      O => vga_sprite_xpixMona_2_F
    );
  vga_sprite_xpixMona_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X43Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_HCS(3),
      O => vga_sprite_xpixMona_2_G
    );
  vga_sprite_xpixMona_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X43Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_HCS(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_xpixMona_4_F
    );
  blue_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_0_OBUF_F5MUX_7328,
      O => blue_0_O
    );
  blue_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_1_OBUF_F5MUX_7353,
      O => blue_1_O
    );
  hsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 555 ps
    )
    port map (
      I => hsync_OBUF_8289,
      O => hsync_O
    );
  vsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 555 ps
    )
    port map (
      I => vsync_OBUF_8529,
      O => vsync_O
    );
  red_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_0_OBUF_F5MUX_7403,
      O => red_0_O
    );
  red_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_F5MUX_7428,
      O => red_1_O
    );
  red_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_2_OBUF_F5MUX_7453,
      O => red_2_O
    );
  green_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_0_OBUF_F5MUX_7578,
      O => green_0_O
    );
  green_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_1_OBUF_F5MUX_7603,
      O => green_1_O
    );
  green_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_2_OBUF_F5MUX_7628,
      O => green_2_O
    );
  vga_sprite_redMona_and00006_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X40Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_redMona_and00006_G
    );
  vga_sprite_skye_and000037_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X45Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vga_sprite_skye_and000037_F
    );
  N27_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X43Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N27_F
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(9),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(8),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(7),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(6),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(5),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(4),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(3),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(2),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(1),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(0),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(9),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(8),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(7),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(6),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(5),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(4),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(3),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(2),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(1),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(0),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(9),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(8),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(7),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(6),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(5),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(4),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(3),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(2),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(1),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(0),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(12),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(11),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(9),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(8),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(7),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(6),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(5),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(4),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(3),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(2),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(1),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(0),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(12),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(11),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(10),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(9),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(8),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(7),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(6),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(5),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(4),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(3),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(2),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(1),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(0),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(12),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(11),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(10),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(9),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(8),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(7),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(6),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(5),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(4),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(3),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(2),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(1),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(0),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(12),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(11),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(10),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(9),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(8),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(7),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(6),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(5),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(4),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(3),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(2),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(1),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(0),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(12),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(11),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(10),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(9),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(8),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(7),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(6),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(5),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(4),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(3),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(2),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(1),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(0),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(12),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(11),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(10),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(9),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(8),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(7),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(6),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(5),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(4),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(3),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(2),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(1),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(0),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_4_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(12),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(11),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(10),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(9),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(8),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(7),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(6),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(5),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(4),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(3),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(2),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(1),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(0),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_3_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(12),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(11),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(10),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(9),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(8),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(7),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(6),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(5),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(4),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(3),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(2),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(1),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(0),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_2_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(12),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_12_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(11),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_11_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(10),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_10_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(9),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_9_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(8),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_8_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(7),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_7_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(6),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_6_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(5),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_5_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(4),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_4_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(3),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_3_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(2),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_2_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(1),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_1_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(0),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp2x2_ram_ADDRA_0_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(10),
      O => 
NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(9),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(8),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(7),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(6),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(5),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(4),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(3),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(2),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(1),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q
    );
  NlwBufferBlock_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romRey_addr14(0),
      O => NlwBufferSignal_rey_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(10),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(9),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(8),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(7),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(6),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(5),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(4),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(3),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(2),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(1),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q
    );
  NlwBufferBlock_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romMona_addr14(0),
      O => 
NlwBufferSignal_monaPic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(10),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_10_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(9),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_9_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(8),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_8_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(7),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_7_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(6),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_6_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(5),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_5_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(4),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_4_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(3),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_3_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(2),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_2_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(1),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_1_Q
    );
  NlwBufferBlock_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => romSkye_addr14(0),
      O => 
NlwBufferSignal_skyePic_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_s3_init_ram_dpram_dp9x9_ram_ADDRA_0_Q
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

