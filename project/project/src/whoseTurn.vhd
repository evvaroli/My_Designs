library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity whoseTurn is
	port(
		clr : in std_logic;	 
		clk : in std_logic;
		a : in STD_LOGIC;
		next_player : in std_logic;
		start : in STD_LOGIC;
		tank1 : out STD_LOGIC;
		tank2 : out STD_LOGIC
		);
end whoseTurn;

architecture whoseTurn of whoseTurn is  
	
type tankState is (tank1Turn, tank2Turn, tank1_to_tank2, tank2_to_tank1, hammer_time1, hammer_time2);
signal present_state, next_state : tankState;
signal aPulse, delay1, delay2, delay3 : std_logic;
begin			

	process(clk, clr)
	begin
		if clr = '1' then 
			present_state <= tank2Turn;			
		 elsif clk'event and clk = '1' then
			present_state <= next_state;  
		end if;
	end process;
	
	process(a, clk, clr)	  --clock pulse for A button
	begin
		if clr = '1' then
			delay1 <= '0';
			delay2 <= '0';
			delay3 <= '0';
		elsif clk'event and clk = '1' then
			delay1 <= a;
			delay2 <= delay1;
			delay3 <= delay2;
		end if;
	end process;
	aPulse <= not delay1 and not delay2 and delay3; --pulse when A is released
	
	C1State : process(aPulse, present_state)
	begin
		case present_state is

			when tank1Turn =>	  
				if aPulse = '1' then
					next_state <= tank1_to_tank2;
				else next_state <= tank1Turn;
				end if;
			when tank1_to_tank2 =>	
				if a = '0'	then
					next_state <= tank2Turn;
					else next_state <= tank1_to_tank2;
				end if;
			when tank2Turn => 
				if aPulse = '1' then
					next_state <= tank2_to_tank1;
					else next_state <= tank2Turn;
				end if;
			when tank2_to_tank1 => 
				if a = '0' then
					next_state <= tank1Turn; 
					else next_state <= tank2_to_tank1;
				end if;
			when others => 
			next_state <= tank2_to_tank1;
		end case;
	end process;  

	C2State : process(present_state)
	begin
		case present_state is
			when tank1Turn =>		-- a released
				tank1 <= '1';
				tank2 <= '0';
			when tank1_to_tank2 =>	 -- a pressed
				tank1 <= '0';
				tank2 <= '0';	  
			when tank2Turn => 		 -- a released
				tank1 <= '0';
				tank2 <= '1'; 
			when tank2_to_tank1 =>	  -- a pressed
				tank1 <= '0';
				tank2 <= '0';
			when others => 
				tank1 <= '1';
				tank2 <= '0'; 
		end case;
	end process;  

	
end whoseTurn;
