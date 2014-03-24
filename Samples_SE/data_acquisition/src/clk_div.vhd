-------------------------------------------------------------------------------
--
-- Title       : clk_div
-- Design      : data_acquisition
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : clk_div.vhd
-- Generated   : Fri Sep 27 14:30:35 2013
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {clk_div} architecture {clk_div}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clk_div is
	generic(
		clk_ratio : POSITIVE := 4
		);
	port(
		clk_in : in STD_LOGIC;
		clk_out : out STD_LOGIC
		);
end clk_div;

--}} End of automatically maintained section

architecture clk_div of clk_div is
begin
	
	process
		
		variable clk_intern : std_logic := '0';
		
	begin
		
		clk_out <= clk_intern;
		
		for i in 2 to clk_ratio-1 loop
			wait until rising_edge(clk_in);
		end loop;
		
		clk_intern := not clk_intern;
		
	end process;
	
end clk_div;
