 -- Author Skye N Schneider
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity vga_bsprite2a is
    port ( vidon: in std_logic;
           hc : in std_logic_vector(9 downto 0);
           vc : in std_logic_vector(9 downto 0);
           M: in std_logic_vector(7 downto 0);
           sw: in std_logic_vector(7 downto 0);
           rom_addr16: out std_logic_vector(15 downto 0);
           red : out std_logic_vector(2 downto 0);
           green : out std_logic_vector(2 downto 0);
           blue : out std_logic_vector(1 downto 0)
	);
end vga_bsprite2a; 

architecture vga_bsprite2a of vga_bsprite2a is 
constant hbp: std_logic_vector(9 downto 0) := "0010010000";	 
	--Horizontal back porch = 144 (128+16)
constant vbp: std_logic_vector(9 downto 0) := "0000011111";	 
	--Vertical back porch = 31 (2+29)
constant w: integer := 100;
constant h: integer := 100;
signal xpix, ypix: std_logic_vector(9 downto 0);			
signal rom_addr : std_logic_vector(16 downto 0);
signal CRey, CSkye, CMona, R1: std_logic_vector(9 downto 0);				
signal spriteon, R, G, B: std_logic;
begin
	--set C1 and R1 using switches
	CRey <= "0000100001";
	CSkye <= "0010010111";	  -- 151
	CMona <= "0100101101";	-- 301
	R1 <= '0' & SW(7 downto 4) & "00001";
	ypix <= vc - vbp - R1;
	xpix <= hc - hbp - CRey;
	
	--Enable sprite video out when within the sprite region
 	spriteon <= '1' when (((hc > CRey + hbp) and (hc <= CRey + hbp + w))
and ((vc >= R1 + vbp) and (vc < R1 + vbp + h))) else '0'; 	
	
process(xpix, ypix)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := ('0' & ypix & "000000")  
            + ("00" & ypix & "00000") + ("00000" & ypix & "00");	
           -- y*(64+32+4) = y*100
		rom_addr2 := rom_addr1 + ("00000000" & xpix); -- y*100+x
		rom_addr16 <= rom_addr2(15 downto 0);
	end process;
	process(spriteon, vidon, M)
  		variable j: integer;
 	begin
		red <= "111";
		green <= "000";
		blue <= "00";
		if spriteon = '1' and vidon = '1' then
    			red <= M(7 downto 5);
    			green <= M(4 downto 2);
    			blue <= M(1 downto 0);
		end if;
  	end process; 
					
end vga_bsprite2a;