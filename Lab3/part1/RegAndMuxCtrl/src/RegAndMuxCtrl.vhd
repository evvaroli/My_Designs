-------------------------------------------------------------------------------
--
-- Title       : RegAndMuxCtrl
-- Design      : RegAndMuxCtrl
-- Author      : Skye N Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Lab3\part1\RegAndMuxCtrl\src\RegAndMuxCtrl.vhd
-- Generated   : Sun Feb 16 16:49:26 2014
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
--{entity {RegAndMuxCtrl} architecture {RegAndMuxCtrl}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  

entity RegAndMuxCtrl is
	 port(
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 xmuxsel : out STD_LOGIC;
		 ymuxsel : out STD_LOGIC;
		 xload : out STD_LOGIC;
		 yload : out STD_LOGIC
	     );
end RegAndMuxCtrl;

--}} End of automatically maintained section

architecture RegAndMuxCtrl of RegAndMuxCtrl is
begin
	p1 : process(x,y)
	begin	 

		if (x = "0000") and (y = "0000") then
			xmuxsel <= '0';
			ymuxsel <= '0';
			xload <= '1';
			yload <= '1';
		elsif x > y then
			xmuxsel <= '1';
			yload <= '0';
			xload <= '1';
		elsif y > x then
			ymuxsel <= '1';
			xload <= '0';
			yload <= '1'; 	  
		else
			ymuxsel <= '1';
			xmuxsel <= '1';
			xload <= '0';
			yload <= '0';
		end if;	 
	end process p1;
		
	 -- enter your statements here --

end RegAndMuxCtrl;
