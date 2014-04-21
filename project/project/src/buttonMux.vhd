
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity buttonMux is
	port(			 
		 screenSel : in std_logic;
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 start : in STD_LOGIC;
		 sel : in STD_LOGIC;
		 up : in STD_LOGIC;
		 down : in STD_LOGIC;
		 right : in STD_LOGIC;
		 left : in STD_LOGIC;
		 gameA : out STD_LOGIC;
		 gameB : out STD_LOGIC;
		 gameStart : out STD_LOGIC;
		 gameSel : out STD_LOGIC;
		 gameUp : out STD_LOGIC;
		 gameDown : out STD_LOGIC;
		 gameRight : out STD_LOGIC;
		 gameLeft : out STD_LOGIC
	     );
end buttonMux;



architecture buttonMux of buttonMux is
begin

	process(screenSel)
	begin
		if screenSel = '1' then
			gameA <= a;
			gameB <= b;
			gameStart <= start;
			gameSel <= sel;
			gameUp <= up;
			gameDown <= down;
			gameRight <= right;
			gameLeft <= left;
		else
			gameA <= '0';
			gameB <= '0';
			gameStart <= '0';
			gameSel <= '0';
			gameUp <= '0';
			gameDown <= '0';
			gameRight <= '0';
			gameLeft <= '0';
		end if;
	end process;

end buttonMux;
