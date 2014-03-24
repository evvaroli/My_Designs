-------------------------------------------------------------------------------
--
-- Title       : subtract
-- Design      : submax
-- Author      : Skye N Schneider
-- Company     : oakland university
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\snschnei\Documents\CSE378\Lab2\submax\submax\src\subtract.vhd
-- Generated   : Wed Jan 29 19:28:49 2014
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
--{entity {subtract} architecture {subtract}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_unsigned.all;

entity subtract is	  
	generic (N:integer := 8);
	 port(
		 a : in STD_LOGIC_VECTOR(N-1 downto 0);
		 b : in STD_LOGIC_VECTOR(N-1 downto 0);
		 y : out STD_LOGIC_VECTOR(N-1 downto 0)
	     );
end subtract;

--}} End of automatically maintained section

architecture subtract of subtract is
begin
	process(a, b)
	begin 
		y <= a - b;
	end process;
end subtract;
