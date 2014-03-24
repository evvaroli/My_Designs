-------------------------------------------------------------------------------
--
-- Title       : submax2
-- Design      : submax2
-- Author      : Skye N Schneider
-- Company     : oakland university
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\snschnei\Documents\CSE378\Lab2\part2\submax2\src\submax2.vhd
-- Generated   : Wed Feb  5 19:35:08 2014
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
--{entity {submax2} architecture {submax2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_unsigned.all;

entity submax2 is
	 port(
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 z : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end submax2;

--}} End of automatically maintained section

architecture submax2 of submax2 is
begin
	p1 : process(x,y)
	begin
		if x < y then
			z <= y - x;
		elsif y < x then
			z <= x - y;
		end if;
	end process p1;
	 -- enter your statements here --

end submax2;
