				 -- Author Skye N Schneider
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity vga_bsprite4a2 is
    port ( vidon: in std_logic;						
           hc : in std_logic_vector(9 downto 0);
           vc : in std_logic_vector(9 downto 0);
		   CRey : in std_logic_vector(9 downto 0);
		   RRey : in std_logic_vector(9 downto 0); 
		   CSkye : in std_logic_vector(9 downto 0);
		   RSkye : in std_logic_vector(9 downto 0);
		   CMona : in std_logic_vector(9 downto 0);
		   RMona : in std_logic_vector(9 downto 0);
           MRey: in std_logic_vector(7 downto 0); 
		   MSkye: in std_logic_vector(7 downto 0);
		   MMona: in std_logic_vector(7 downto 0);		
		   clk3 : in std_logic;		 
		   clr : in std_logic;
           romRey_addr14: out std_logic_vector(13 downto 0);
		   romSkye_addr14: out std_logic_vector(13 downto 0);
		   romMona_addr14: out std_logic_vector(13 downto 0);
           red : out std_logic_vector(2 downto 0);
           green : out std_logic_vector(2 downto 0);
           blue : out std_logic_vector(1 downto 0)
	);
end vga_bsprite4a2; 

architecture vga_bsprite4a2 of vga_bsprite4a2 is 
constant hbp: std_logic_vector(9 downto 0) := "0010010000";	 
	--Horizontal back porch = 144 (128+16)
constant vbp: std_logic_vector(9 downto 0) := "0000011111";	 
	--Vertical back porch = 31 (2+29)
constant w: integer := 100;
constant h: integer := 100;
signal xpixRey, xpixSkye, xpixMona, ypixRey, ypixSkye, ypixMona: std_logic_vector(9 downto 0);			
signal rom_addr : std_logic_vector(16 downto 0);				
signal reyspriteon, skyespriteon, monaspriteon: std_logic;
signal redRey, redSkye, redMona, greenMona, greenSkye, greenRey : std_logic_vector(2 downto 0);
signal blueRey, blueMona, blueSkye : std_logic_vector(1 downto 0);
type state_type is (red_state, green_state, blue_state);
signal present_state, next_state : state_type;
begin
	--set C1 and R1 using switches
	
	
	ypixRey <= vc - vbp - Rrey;
	xpixRey <= hc - hbp - CRey;
	
	ypixSkye <= vc - vbp - Rskye;
	xpixSkye <= hc - hbp - CSkye;
	
	ypixMona <= vc - vbp - Rmona;
	xpixMona <= hc - hbp - CMona;
	
	
	--Enable sprite video out when within the sprite region
 	reyspriteon <= '1' when (((hc > CRey + hbp) and (hc <= CRey + hbp + w))
and ((vc >= RRey + vbp) and (vc < RRey + vbp + h)) and skyespriteon = '0') else '0';
	
	skyespriteon <= '1' when (((hc > CSkye + hbp) and (hc <= CSkye + hbp + w))
and ((vc >= RSkye + vbp) and (vc < RSkye + vbp + h))) else '0';
	
	monaspriteon <= '1' when (((hc > CMona + hbp) and (hc <= CMona + hbp + w))
and ((vc >= RMona + vbp) and (vc < RMona + vbp + h)) and skyespriteon = '0' and reyspriteon = '0') else '0';
	
process(xpixRey, ypixRey)
	variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	begin 
		rom_addr1 := ('0' & ypixRey & "000000")  
            + ("00" & ypixRey & "00000") + ("00000" & ypixRey & "00");	
           -- y*(64+32+4) = y*100
		rom_addr2 := rom_addr1 + ("00000000" & xpixRey); -- y*100+x
		romRey_addr14 <= rom_addr2(13 downto 0);
	end process;
	process(reyspriteon, vidon, MRey)
  		variable j: integer;
 	begin
		redRey <= "000";
		greenRey <= "000";
		blueRey <= "00";   
		if reyspriteon = '1' and vidon = '1' then
    			redRey <= MRey(7 downto 5);
    			greenRey <= MRey(4 downto 2);
    			blueRey <= MRey(1 downto 0);
		end if;
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
	process(skyespriteon, vidon, MSkye)
  		variable j: integer;
 	begin		
		redSkye <= "000";
		greenSkye <= "000";
		blueSkye <= "00";
		if skyespriteon = '1' and vidon = '1' then
    			redSkye <= MSkye(7 downto 5);
    			greenSkye <= MSkye(4 downto 2);
    			blueSkye <= MSkye(1 downto 0);
		end if;
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
	process(monaspriteon, vidon, MMona)
  		variable j: integer;
 	begin
		redMona <= "000";
		greenMona <= "000";
		blueMona <= "00";
		if monaspriteon = '1' and vidon = '1' then
    			redMona <= MMona(7 downto 5);
    			greenMona <= MMona(4 downto 2);
    			blueMona <= MMona(1 downto 0);
		end if;
  	end process;
	  
	process(clk3, clr)
	begin
		if clr = '1' then 
			present_state <= red_state;	
		elsif clk3'event and clk3 = '1' then
			present_state <= next_state;	
		end if;
	end process;					
	
	-- flicker the background 3 times a second
	C1State : process(present_state)
	begin
		case present_state is
			when red_state =>
				next_state <= green_state;
			when green_state =>
				next_state <= blue_state;
			when blue_state =>
			next_state <= red_state;
				when others => 
			next_state <= red_state;
		end case;
	end process;
	  
	process(hc)
	begin	
		if monaspriteon = '1' then
			red <= redMona;
			green <= greenMona;
			blue <= blueMona;
		elsif skyespriteon = '1' then
			red <= redSkye;
			green <= greenSkye;
			blue <= blueSkye;
		elsif reyspriteon = '1' then
			red <= redRey;
			green <= greenRey;
			blue <= blueRey;
		else  
			if vidon = '1' then
				case present_state is 
					when red_state =>
					red <= "111";
					green <= "000";
					blue <= "00"; 
					when green_state =>
					red <= "000";
					green <= "111";
					blue <= "00";
					when blue_state =>
					red <= "000";
					green <= "000";
					blue <= "11";	 
					when others =>
					red <= "000";
					green <= "000";
					blue <= "00";
				end case;
			else
				red <= "000";
				blue <= "00";
				green <= "000";	 
			end if;
		end if;
	end process;
					
end vga_bsprite4a2;