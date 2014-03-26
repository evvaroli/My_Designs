-- Example 74b: bounce
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
entity bounce is
	 port(
		 cclk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 go : in STD_LOGIC;
		 Crey : out STD_LOGIC_VECTOR(9 downto 0);
		 Rrey : out STD_LOGIC_VECTOR(9 downto 0);	
		 Cskye : out STD_LOGIC_VECTOR(9 downto 0);
		 Rskye : out STD_LOGIC_VECTOR(9 downto 0);
		 Cmona : out STD_LOGIC_VECTOR(9 downto 0);
		 Rmona : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end bounce;
architecture bounce of bounce is
begin
process(cclk, clr)
variable creyv, cskyev, cmonav, rreyv, rskyev, rmonav: STD_LOGIC_VECTOR(9 downto 0);
variable dcvrey, dcvskye, dcvmona, drvrey, drvskye, drvmona: STD_LOGIC_VECTOR(9 downto 0);
variable calc: std_logic;
constant c1max: integer := 540;
constant r1max: integer := 380;	

begin
	if clr = '1' then
		creyv := "0001010000";   -- 80 = 0x50
		rreyv := "0010001100";   -- 140 = 0x8C  
		
		cskyev := "0001010000";   -- 80 = 0x50	 
		rskyev := "0010001100";   -- 140 = 0x8C	
		
		cmonav := "0001010000";   -- 80 = 0x50
		rmonav := "0010001100";   -- 140 = 0x8C
		
		dcvrey := "0000000001";   -- +1
		drvrey := "0000000001";   -- +1
		
		dcvskye := "1111111111";   -- -1
		drvskye := "0000000001";   -- +1	
		
		dcvmona := "0000000001";   -- +1
		drvmona := "1111111111";   -- -1
		calc := '0';
	elsif cclk'event and cclk = '1' then	
		if go = '1' then
			calc := '1';
		elsif calc = '1' then
			creyv := creyv + dcvrey;
			rreyv := rreyv + drvrey;	
			cskyev := cskyev + dcvskye;
			rskyev := rskyev + drvskye;
			cmonav := cmonav + dcvmona;
			rmonav := rmonav + drvmona;
			if (creyv < 0 or creyv >= c1max) then
				dcvrey := 0 - dcvrey;
			end if;
			if (rreyv < 0 or rreyv >= r1max) then
				drvrey := 0 - drvrey;
			end if;	  
			
			if (cskyev < 0 or cskyev >= c1max) then
				dcvskye := 0 - dcvskye;
			end if;
			if (rskyev < 0 or rskyev >= r1max) then
				drvskye := 0 - drvskye;
			end if;		  
			
			if (cmonav < 0 or cmonav >= c1max) then
				dcvmona := 0 - dcvmona;
			end if;
			if (rmonav< 0 or rmonav >= r1max) then
				drvmona := 0 - drvmona;
			end if;
		end if;
	end if;
	Crey <= creyv;
	Rrey <= rreyv;	
	
	Cskye <= cskyev;
	Rskye <= rskyev;	
	
	Cmona <= cmonav;
	Rmona <= rmonav;
end process;
end bounce;