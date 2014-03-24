library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity ClockDivider is 
	port(
		mclk : in std_logic;
		clr : in std_logic;
		clk3 : out std_logic
	);			 
end ClockDivider;

architecture ClockDivider of ClockDivider is

signal q : std_logic_vector(23 downto 0);

begin 
	process(mclk, clr)
	begin 
		if clr = '1' then
			q <= X"000000";
		elsif mclk'event and mclk = '1' then
			q <= q + 1;		  
		end if;
	end process;
		
		clk3 <= q(3); -- 3Mhz
		
end ClockDivider;
		