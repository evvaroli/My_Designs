 -- Author Skye N Schneider
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity vga_bsprite2a is
    port ( vidon: in std_logic;
           hc : in std_logic_vector(9 downto 0);
           vc : in std_logic_vector(9 downto 0);
           MRey: in std_logic_vector(7 downto 0); 
		   MSkye: in std_logic_vector(7 downto 0);
		   MMona: in std_logic_vector(7 downto 0);
           sw: in std_logic_vector(7 downto 0);
           romRey_addr14: out std_logic_vector(13 downto 0);
		   romSkye_addr14: out std_logic_vector(13 downto 0);
		   romMona_addr14: out std_logic_vector(13 downto 0);
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
signal xpixRey, xpixSkye, xpixMona, ypixRey, ypixSkye, ypixMona: std_logic_vector(9 downto 0);			
signal rom_addr : std_logic_vector(16 downto 0);
signal CRey, CSkye, CMona, R1rey, R2skye, R3mona: std_logic_vector(9 downto 0);				
signal reyspriteon, skyespriteon, monaspriteon, rey, skye, mona, R, G, B: std_logic; 
begin
	--set C1 and R1 using switches
	CRey <= "0000000001";
	CSkye <= "0010010111";	  -- 151
	CMona <= "0100101101";	-- 301
	R1rey <= '0' & SW(7 downto 6) & "0000001";	
	R2Skye <= '0' & SW(5 downto 4) & "0000001";
	R3Mona <= '0' & SW(3 downto 2) & "0000001";	
	
	ypixRey <= vc - vbp - R1rey;
	xpixRey <= hc - hbp - CRey;
	
	ypixSkye <= vc - vbp - R2skye;
	xpixSkye <= hc - hbp - CSkye;
	
	ypixMona <= vc - vbp - R3mona;
	xpixMona <= hc - hbp - CMona;
	
	
	--Enable sprite video out when within the sprite region
 	reyspriteon <= '1' when (((hc > CRey + hbp) and (hc <= CRey + hbp + w))
and ((vc >= R1Rey + vbp) and (vc < R1Rey + vbp + h))) else '0';
	
	skyespriteon <= '1' when (((hc > CSkye + hbp) and (hc <= CSkye + hbp + w))
and ((vc >= R2Skye + vbp) and (vc < R2Skye + vbp + h))) else '0';
	
	monaspriteon <= '1' when (((hc > CMona + hbp) and (hc <= CMona + hbp + w))
and ((vc >= R3Mona + vbp) and (vc < R3Mona + vbp + h))) else '0';
	
process(xpixRey, ypixRey)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := ('0' & ypixRey & "000000")  
            + ("00" & ypixRey & "00000") + ("00000" & ypixRey & "00");	
           -- y*(64+32+4) = y*100
		rom_addr2 := rom_addr1 + ("00000000" & xpixRey); -- y*100+x
		romRey_addr14 <= rom_addr2(13 downto 0);
	end process;		
	
	process(xpixSkye, ypixSkye)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := ('0' & ypixSkye & "000000")  
            + ("00" & ypixSkye & "00000") + ("00000" & ypixSkye & "00");	
           -- y*(64+32+4) = y*100
		rom_addr2 := rom_addr1 + ("00000000" & xpixSkye); -- y*100+x
		romSkye_addr14 <= rom_addr2(13 downto 0);
	end process; 
	
	process(xpixMona, ypixMona)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := ('0' & ypixMona & "000000")  
            + ("00" & ypixMona & "00000") + ("00000" & ypixMona & "00");	
           -- y*(64+32+4) = y*100
		rom_addr2 := rom_addr1 + ("00000000" & xpixMona); -- y*100+x
		romMona_addr14 <= rom_addr2(13 downto 0);
	end process;
	
	
	
	process(reyspriteon, skyespriteon, monaspriteon, vidon, MRey, MSkye, MMona)
  		variable j: integer;
 	begin
		red <= "000";
		green <= "000";
		blue <= "00";   
		if reyspriteon = '1' and vidon = '1' then
    			red <= MRey(7 downto 5);
    			green <= MRey(4 downto 2);
    			blue <= MRey(1 downto 0);  	
		elsif skyespriteon = '1' and vidon = '1' then
    			red <= MSkye(7 downto 5);
    			green <= MSkye(4 downto 2);
    			blue <= MSkye(1 downto 0);
	 	elsif monaspriteon = '1' and vidon = '1' then
    			red <= MMona(7 downto 5);
    			green <= MMona(4 downto 2);
    			blue <= MMona(1 downto 0);
		end if;
  	end process; 						
end vga_bsprite2a;