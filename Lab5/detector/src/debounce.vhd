library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity debounce is 
	port(
		inp : in std_logic_vector(1 downto 0);
		cclk : in std_logic;
		clr : in std_logic;
		outp : out std_logic_vector(1 downto 0)
	);	   	
end debounce;

architecture debounce of debounce is
signal delay1, delay2, delay3 : std_logic_vector(1 downto 0);
begin
	process(cclk, clr)
	begin	
		if clr = '1' then
			delay1 <= "00"; 
			delay2 <= "00";
			delay3 <= "00";
		elsif cclk'event and cclk = '1' then
			delay1 <= inp;
			delay2 <= delay1;
			delay3 <= delay2; 
		end if;
	end process;
	outp <= delay1 and delay2 and delay3;
end debounce;