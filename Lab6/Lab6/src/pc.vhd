library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity pc is
	 port(
		 clr : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : out STD_LOGIC_VECTOR(2 downto 0)
	     );
end pc;

architecture pc of pc is
signal D, qs: STD_LOGIC_VECTOR(2 downto 0);
begin
	D(2) <= (not qs(2) and qs(1) and qs(0))
			or (qs(2) and not qs(1))
			or (qs(2) and not qs(0));
	D(1) <= (not qs(1) and qs(0))
			or (qs(1) and not qs(0));
	D(0) <= not qs(0);
	-- Three D flip-flops
	process(clk, clr)
	begin
		if clr = '1' then
			qs <= "000";
		elsif clk'event and clk = '1' then
			qs <= D;
		end if;								  
	end process;
	q <= qs;				
end pc;