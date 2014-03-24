library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity mux is
    generic (N:integer);
    port (
        a: in STD_LOGIC_VECTOR(N-1 downto 0);
        b: in STD_LOGIC_VECTOR(N-1 downto 0);
        s: in STD_LOGIC;
        y: out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end mux;
		 
architecture mux of mux is
begin
    process(a, b, s)
  	begin
  	   if s = '0' then
  	      y <= a;
  	   else
  	      y <= b;
  	   end if;
  	end process;
end mux;