library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity titleScreen is
    port ( vidon: in std_logic;
           hc : in std_logic_vector(9 downto 0);
           vc : in std_logic_vector(9 downto 0);
           MTitle: in std_logic_vector(7 downto 0);
		   romTitle_addr14: out std_logic_vector(14 downto 0);
           red : out std_logic_vector(2 downto 0);
           green : out std_logic_vector(2 downto 0);
           blue : out std_logic_vector(1 downto 0)
	);
end titleScreen; 

architecture titleScreen of titleScreen is 
constant hbp: std_logic_vector(9 downto 0) := "0010010000";	 
	--Horizontal back porch = 144 (128+16)
constant vbp: std_logic_vector(9 downto 0) := "0000011111";	 
	--Vertical back porch = 31 (2+29)
constant w: integer := 280;
constant h: integer := 112;	 
constant topBar : integer := 40;
signal xpix, ypix: std_logic_vector(9 downto 0);			
signal rom_addr : std_logic_vector(16 downto 0);
signal CTitle, RTitle: std_logic_vector(9 downto 0);				
signal spriteon, R, G, B: std_logic; 
begin
	
	CTitle <= "0010110100";	   -- 180
	RTitle <= "0010111000";	   -- 184
	
	ypix <= vc - vbp - RTitle;
	xpix <= hc - hbp - CTitle;
	--Enable sprite video out when within the sprite region
 	spriteon <= '1' when (((hc > CTitle + hbp) and (hc <= CTitle + hbp + w))
and ((vc >= RTitle + vbp) and (vc < RTitle + vbp + h))) else '0';
	
process(xpix, ypix)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := (ypix & "00000000") + ("0000" & ypix & "0000") + ("00000" & ypix & "000");	
           -- y*(256+16+8) = y*280
		rom_addr2 := rom_addr1 + ("00000000" & xpix); -- y*280+x
		romTitle_addr14 <= rom_addr2(14 downto 0);
	end process;		
		
	process(spriteon, vidon, MTitle)
  		variable j: integer;
 	begin		
 		red <= "000";
		green <= "000";
		blue <= "00";
		if vidon = '1' then			   
			if spriteon = '1' then
	    			red <= MTitle(7 downto 5);
	    			green <= MTitle(4 downto 2);
	    			blue <= MTitle(1 downto 0);  	
			elsif vc < vbp + RTitle + topBar then
				red <= "010";
				green <= "010";
				blue <= "10";  
			else
				red <= "100";
				green <= "101";
				blue <= "10";
			end if;	 
		end if;
  	end process; 						
end titleScreen;