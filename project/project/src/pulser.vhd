library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity pulser is
		port(					   
		clk : in std_logic;
		clr : in std_logic;
		 destroyIn : in STD_LOGIC;
		 destroyOut : out STD_LOGIC
	     );
end pulser;


architecture pulser of pulser is
signal delay1, delay2, delay3, clk2: std_logic;
signal q: std_logic_vector(23 downto 0);
begin
	process(clk, clr)
	begin			
		if clr = '1' then
			q <= X"000000";
		elsif clk'event and clk = '1' then
			q <= q + 1;	
		end if;
	end process;
	clk2 <= q(18);
	
	process(destroyIn, clk, clr)
	begin
		if clr = '1' then
			delay1 <= '0';
			delay2 <= '0';
			delay3 <= '0';
		elsif clk'event and clk = '1' then
			delay1 <= destroyIn;
			delay2 <= delay1;
			delay3 <= delay2;
		end if;
	end process;
	destroyOut <= not delay1 and not delay2 and delay3;

end pulser;
