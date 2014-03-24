-------------------------------------------------------------------------------
--
-- Title       : c2or
-- Design      : VHDL_Verilog_EDIF_C_PLI
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : c2or.vhd
-- Generated   : Tue Sep 24 16:42:22 2013
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
--{entity {c2or} architecture {c2or}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity c2or is
	port(
		CM : in STD_LOGIC;
		CP : in STD_LOGIC;
		RESET : in STD_LOGIC;
		NQ : out STD_LOGIC;
		Q : out STD_LOGIC
		);
end c2or;

--}} End of automatically maintained section

architecture c2or of c2or is
	signal CLK :STD_LOGIC;
	signal S :STD_LOGIC ;
begin
	CLK <= CP or CM;
	
	process (CLK,RESET)
	begin			  
		if To_X01(RESET)='1' then
			S <='0';
		else
			if FALLING_EDGE(CLK) then
				S <=not S;
			end if;
		end if;
	end process;
	
	Q <= S;
	NQ <= not S;
end c2or;
