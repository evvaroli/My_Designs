library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity whosTurn is
	port(
		clr : in std_logic;	 
		clk : in std_logic;
		a : in STD_LOGIC;  
		x : out std_logic_vector(15 downto 0);
		start : in STD_LOGIC;
		tank1 : out STD_LOGIC;
		tank2 : out STD_LOGIC
		);
end whosTurn;



architecture whosTurn of whosTurn is  
	
	type tankState is (tank1Turn, tank2Turn, tank1_to_tank2, tank2_to_tank1);
	signal present_state, next_state : tankState;
begin			
	
	process(clk, clr)
	begin
		if clr = '1' then 
			present_state <= tank2Turn;			
			
		 elsif clk'event and clk = '1' then
			present_state <= next_state;  
		end if;
	end process;	 
	
	C1State : process(a, present_state)
	begin
		case present_state is
			
			when tank1Turn =>	
				if a = '1' then
					next_state <= tank1_to_tank2;
				else next_state <= tank1Turn;
				end if;
			when tank1_to_tank2 =>	
				if a = '0'	then
					next_state <= tank2Turn;
					else next_state <= tank1_to_tank2;
				end if;
			when tank2Turn => 
				if a = '1' then
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
				x <= "0000000000000001";
			when tank1_to_tank2 =>	 -- a pressed
				tank1 <= '1';
			tank2 <= '0';	  
				x <= "0000000000000010";
			when tank2Turn => 		 -- a released
				tank1 <= '0';
				tank2 <= '1'; 
				x <= "0000000000000011";
			when tank2_to_tank1 =>	  -- a pressed
				tank1 <= '0';
				tank2 <= '1';
				x <= "0000000000000100";
			when others => 
				tank1 <= '1';
			tank2 <= '0';  
			x <= "0000000000000101";
		end case;
	end process;  
	
	
end whosTurn;
