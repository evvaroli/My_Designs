-------------------------------------------------------------------------------
--
-- Title       : comp
-- Design      : submax
-- Author      : Skye N Schneider
-- Company     : oakland university
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\snschnei\Documents\CSE378\Lab2\submax\submax\src\comp.vhd
-- Generated   : Wed Jan 29 19:24:30 2014
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
--{entity {comp} architecture {comp}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comp is	  
	generic (N:integer := 8);
	 port(
		 x : in STD_LOGIC_VECTOR(N-1 downto 0);
		 y : in STD_LOGIC_VECTOR(N-1 downto 0);
		 lt : out STD_LOGIC
	     );
end comp;

--}} End of automatically maintained section

architecture comp of comp is
begin
	process(x,y)
	begin
		lt <= '0';
		if (x < y)then
			lt <= '1';
		end if;
	end process;
end comp;
