-------------------------------------------------------------------------------
--
-- Title       : mux24b
-- Design      : submax
-- Author      : Skye N Schneider
-- Company     : oakland university
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\snschnei\Documents\CSE378\Lab2\submax\submax\src\mux24b.vhd
-- Generated   : Wed Jan 29 19:20:06 2014
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
--{entity {mux24b} architecture {mux24b}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux24b is
	 port(
		 s : in STD_LOGIC;
		 a : in STD_LOGIC_VECTOR(3 downto 0);
		 b : in STD_LOGIC_VECTOR(3 downto 0);
		 y : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end mux24b;

--}} End of automatically maintained section

architecture mux24b of mux24b is  
signal s4 : STD_LOGIC_VECTOR(3 downto 0);
begin
	p1 : process (a,b,s)
	begin 
		if s = '0' then
			y <= a;
		else 
			y <= b;
		end if;
	end process;
end mux24b;
