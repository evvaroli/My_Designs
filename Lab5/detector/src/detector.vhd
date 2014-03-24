-------------------------------------------------------------------------------
--
-- Title       : detector
-- Design      : detector
-- Author      : Skye Schneider
 
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity detector is
	 port(
		 clk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 btn : in STD_LOGIC_VECTOR(1 downto 0);
		 ld : out STD_LOGIC_VECTOR(1 downto 0);
		 current_state : out std_logic_vector(7 downto 0) -- used for printing state on x7segb
	     );
end detector;

--}} End of automatically maintained section

architecture detector of detector is
type state_type is (s0, s1, s2, s3, s4, s5, s6, e1, e2, e3, e4, e5, e6);
signal present_state, next_state: state_type; 
signal next_current_state : std_logic_vector(7 downto 0); -- used for printing state on x7segb
begin
	sreg : process(clr, clk)
	begin
		if clr = '1' then
			present_state <= s0;
			current_state <= X"00";
		elsif clk'event and clk = '1' then
			present_state <= next_state;  
			current_state <= next_current_state;
		end if;
	end process;	
	
	C1 : process(present_state, btn)
	begin
		case present_state is 
			when s0 =>
			if btn = "01" then 
				next_state <= s1;
				next_current_state <= X"01";
			else
				next_state <= e1;	
				next_current_state <= X"E1";
			end if;	  
			when s1 =>
			if btn = "01" then 
				next_state <= s2;
				next_current_state <= X"02";
			else
				next_state <= e2;
				next_current_state <= X"E1";
			end if;	 
			when s2 =>
			if btn = "10" then 
				next_state <= s3;
				next_current_state <= X"03";
			else
				next_state <= e3; 
				next_current_state <= X"E3";
			end if;			
			when s3 =>
			if btn = "10" then 
				next_state <= s4; 
				next_current_state <= X"04";
			else
				next_state <= e4;
				next_current_state <= X"E4";
			end if;			   
			when s4 =>
			if btn = "01" then 
				next_state <= s5;  
				next_current_state <= X"05";
			else
				next_state <= e5;
				next_current_state <= X"E5";
			end if;			   
			when s5 =>
			if btn = "10" then 
				next_state <= s6;  
				next_current_state <= X"06";
			else
				next_state <= e6;
				next_current_state <= X"E6";
			end if;		
			when s6 =>
			if btn = "01" then
				next_state <= s1; 
				next_current_state <= X"01";
			else
				next_state <= e1; 
				next_current_state <= X"E1";
			end if;
			when e1 =>
			next_state <= e2;
			next_current_state <= X"E2";
			when e2 =>
			next_state <= e3;
			next_current_state <= X"E3";
			when e3 =>
			next_state <= e4; 
			next_current_state <= X"E4";
			when e4 =>
			next_state <= e5;
			next_current_state <= X"E5";
			when e5 =>
			next_state <= e6; 
			next_current_state <= X"E6";
			when e6 => 
				if btn = "01" then
					next_state <= s1;  
					next_current_state <= X"01";
			else
				next_state <= e1;
				next_current_state <= X"E1";
			end if;
			when others =>
			next_state <= s0;  	 
			next_current_state <= X"00";
		end case;
	end process;			   
	
	C2 : process(present_state)
	begin
		if present_state = s6 then -- pass
			ld(0) <= '1';
		else
			ld(0) <= '0';
		end if;
		if present_state = e6 then -- fail
			ld(1) <= '1';
		else 
			ld(1) <= '0';
		end if;
	end process;
	 

end detector;
