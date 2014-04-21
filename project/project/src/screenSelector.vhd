library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity screenSelector is
	port(				  
		 screenSel : in std_logic;
		 titleRed : in STD_LOGIC_VECTOR(2 downto 0);
		 titleGreen : in STD_LOGIC_VECTOR(2 downto 0);
		 titleBlue : in STD_LOGIC_VECTOR(1 downto 0);
		 gameRed : in STD_LOGIC_VECTOR(2 downto 0);
		 gameBlue : in STD_LOGIC_VECTOR(1 downto 0);
		 gameGreen : in STD_LOGIC_VECTOR(2 downto 0);
		 red : out STD_LOGIC_VECTOR(2 downto 0);
		 green : out STD_LOGIC_VECTOR(2 downto 0);
		 blue : out STD_LOGIC_VECTOR(1 downto 0)
	     );
end screenSelector;


architecture screenSelector of screenSelector is
begin

	process(screenSel)
	begin
		if screenSel = '1' then
			red <= gameRed;
			green <= gameGreen;
			blue <= gameBlue;
		else
			red <= titleRed;
			green <= titleGreen;
			blue <= titleBlue; 
		end if;
	end process;

end screenSelector;
