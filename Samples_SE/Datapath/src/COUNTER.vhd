-------------------------------------------------------------------------------
--
-- Title       : COUNTER
-- Design      : datapath
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : COUNTER.vhd
-- Generated   : Fri Sep 27 15:06:50 2013
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
--{entity {COUNTER} architecture {COUNTER}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COUNTER is
	port(
		CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		LOAD_COUNT : in STD_LOGIC;
		COUNT : in STD_LOGIC_VECTOR(3 downto 0);
		ZERO : out STD_LOGIC
		);
end COUNTER;

--}} End of automatically maintained section

library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;

architecture COUNTER of COUNTER is
	
	signal Q : STD_LOGIC_VECTOR(3 downto 0);	
	signal EMPTY : STD_LOGIC;	
	
begin
	process (CLK, RESET)
	begin		
		if RESET='1' then
			Q <= (others => '0');
			EMPTY <= '0';
		else	   
			if CLK'event and CLK='1' then
				if LOAD_COUNT = '1' then
					Q <= COUNT;
					EMPTY <= '0';
				else
					if Q = 0 then	 
						EMPTY <= '1';
					else			 
						Q <= Q - 1;
					end if;
				end if;	 
			end if;
		end if;
	end process;
	ZERO <= EMPTY;
	
end COUNTER;
