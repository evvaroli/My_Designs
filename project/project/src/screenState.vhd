
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity screenState is
	 port(
	 	 start : in STD_LOGIC;
	 	 sel : in std_logic;
		 up : in std_logic;	
		 down : in std_logic;
		 left : in std_logic;
		 right : in std_logic;
		 b : in std_logic;
		 a : in std_logic;
		 clr : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 screenSel : out STD_LOGIC;	
		 current_state : out std_logic_vector(7 downto 0);
		 hillCounter : out std_logic_vector(24 downto 0);
		 hill1 : out std_logic_vector(6 downto 0);
		 hill2 : out std_logic_vector(6 downto 0);
		 hill3 : out std_logic_vector(6 downto 0);
		 hill4 : out std_logic_vector(6 downto 0);
		 hill5 : out std_logic_vector(6 downto 0)
	     );
end screenState;



architecture screenState of screenState is 	  
constant zero :std_logic_vector(6 downto 0)	:= "0000000";
constant top :std_logic_vector(6 downto 0)	:= "1111111";
type state is (firstUp, secondUp, firstDown, secondDown, firstLeft, secondLeft, firstRight, secondRight, bDown, aDown,
firstUpReleased, secondUpReleased, firstDownReleased, secondDownReleased, firstLeftReleased, secondLeftReleased,
firstRightReleased, secondRightReleased, bDownReleased, aDownReleased, title_screen, game_screen);
signal present_state, next_state : state;  
signal sig_hill1, sig_hill2, sig_hill3, sig_hill4, sig_hill5 : std_logic_vector(6 downto 0);
signal hillCount: std_logic_vector(24 downto 0):= "0010101010100101001010011";
signal next_current_state : std_logic_vector(7 downto 0); -- used for printing state on x7segb
begin			
	
	process(clk, clr)
	begin
		if clr = '1' then 
			present_state <= title_screen;			
			
		elsif clk'event and clk = '1' then
			if present_state = title_screen then
--				if sig_hill1 = top then
--					sig_hill1 <= zero;
--				else 
--					sig_hill1 <= sig_hill1 + 6;	
--				end if;	
--				if sig_hill2 = top then
--					sig_hill2 <= zero;
--				else 
--					sig_hill2 <= sig_hill2 + 12;	
--				end if;			 
--				if sig_hill3 = top then
--					sig_hill3 <= zero;
--				else 
--					sig_hill3 <= sig_hill3 + 1;	
--				end if;	
--				if sig_hill4 = top then
--					sig_hill4 <= zero;
--				else 
--					sig_hill4 <= sig_hill4 + 15;	
--				end if;	 
--				if sig_hill5 = top then
--					sig_hill5 <= zero;
--				else 
--					sig_hill5 <= sig_hill5 + 30;	
--				end if;
				hillCount <= hillCount + 1;
			else
--				sig_hill1 <= hillCounter(6 downto 0);
--				sig_hill2 <= hillCounter(13 downto 7);
--				sig_hill3 <= hillCounter(20 downto 14);
--				sig_hill4 <= hillCounter(24 downto 18);
--				sig_hill5 <= hillCounter(9 downto 3);
				hillCounter <= hillCount;
			end if;
			present_state <= next_state; 
			current_state <= next_current_state(7 downto 0);
		end if;
	end process;  
	
	c1 : process(present_state, a, b, start, sel, up, down, right, left )
	begin
		case present_state is
			when title_screen =>
				if start = '1' then
					next_state <= game_screen;	
				else 
					next_state <= title_screen;
			end if;
			when game_screen =>
				next_state <= game_screen;
			when others =>	
			next_state <= title_screen;	 
		end case;
	end process;
	
	c2 : process(present_state)
	begin
		case present_state is 
			when title_screen =>
				screenSel <= '0';
			when game_screen =>
				screenSel <= '1';
			when others =>
				screenSel <= '0';
		end case;
	end process;

	hill1 <= sig_hill1;
	hill2 <= sig_hill2;
	hill3 <= sig_hill3;
	hill4 <= sig_hill4;
	hill5 <= sig_hill5; 

end screenState;
