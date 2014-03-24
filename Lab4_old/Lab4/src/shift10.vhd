-------------------------------------------------------------------------------
--
-- Title       : shift10
-- Design      : Lab4
-- Author      : Skye N Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab4\Lab4\src\shift10.vhd
-- Generated   : Mon Feb 17 14:35:10 2014
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
--{entity {shift10} architecture {shift10}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity shift10 is
	 port(
		 clk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 data_in : in STD_LOGIC;
		 q : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end shift10;

--}} End of automatically maintained section

architecture shift10 of shift10 is	   
signal qs : std_logic_vector(9 downto 0);
begin
	process(clk, clr)
	begin
		if clr = '1' then
			qs <= "0000000000";
		elsif clk'event and clk = '1' then
			qs(9) <= data_in;
			qs(8 downto 0) <= qs(9 downto 1);
		end if;
	end process;
	q <= qs;

	 -- enter your statements here --

end shift10;
