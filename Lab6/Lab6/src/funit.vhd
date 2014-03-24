-------------------------------------------------------------------------------
--
-- Title       : funit
-- Design      : Lab6
-- Author      : Skye N Schneider


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all; 

entity funit is
	 port(
		 a : in STD_LOGIC_VECTOR(15 downto 0);
		 b : in STD_LOGIC_VECTOR(15 downto 0);
		 fcode : in STD_LOGIC_VECTOR(3 downto 0);
		 y : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end funit;



architecture funit of funit is	

begin

	process(a,b,fcode)
	begin
		case fcode is  
			when X"0" =>
			y <= a + b;	
			when X"1" =>
			y <= a - b;
			when X"2" =>
			y <= a - 1;
			when X"3" =>
			y <= a + 1;
			when X"4" =>
			y <= not a;
			when X"5" =>
			y <= a and b;
			when X"6" =>
			y <= a or b;
			when X"7" =>
			y <= a xor b;
			when X"8" =>
			y <= a(14 downto 0) & '0';
			when X"9" =>
			y <= '0' & a(15 downto 1);
			when X"A" =>
			y <= a(15) & a(15 downto 1);
			when X"B" =>
			y <= shr(a,b);
			when X"C" =>
			y <= shl(a,b);
			when X"D" =>
			y <= (others => '0'); 
			when X"E" =>
			y <= (others => '1');
			when X"F" =>
			y <= a;
			when others =>
			y <= a;	  
		end case;					
	end process;	 

end funit;
