-------------------------------------------------------------------------------
--
-- Title       : peakCounter
-- Design      : project
-- Author      : Thomas Kocik
-- Company     : Oakland University
--
-------------------------------------------------------------------------------
--
-- Description : A counter that is used to output a 32-bit random number that
-- will be used to find the heighest points of mountain peaks.
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity peakCounter is
	 port(
		 mclk : in STD_LOGIC;
		 peakCounter : out STD_LOGIC_VECTOR(31 downto 0)
	     );
end peakCounter;

architecture peakCounter of peakCounter is
signal valueToOutput: STD_LOGIC_VECTOR(31 downto 0);
begin
	valueToOutput <= "10101010101010101010101010101010";
	process(mclk)
	begin
		if mclk'event and mclk = '1' then
			valueToOutput <= valueToOutput + 1;
		end if;
		peakCounter <= valueToOutput;
	end process;
end peakCounter;
