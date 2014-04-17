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
		   clk190 : in std_logic;		 
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
--Vertical back porch = 31 (2+29) 1010000000 
constant screenWidth: std_logic_vector(9 downto 0) := "1010000000";	 
	--screen width 640
constant w: integer := 100;
constant h: integer := 100;
signal xpixRey, xpixSkye, xpixMona, ypixRey, ypixSkye, ypixMona: std_logic_vector(9 downto 0);			
signal rom_addr : std_logic_vector(16 downto 0);				
signal reyspriteon, skyespriteon, monaspriteon, wallMovingForward: std_logic;
type state_type is (red_state, green_state, blue_state);
signal present_state, next_state : state_type;	  
signal wall : std_logic_vector(9 downto 0);	
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
	
	process(clk190, clr)
	begin
		if clr = '1' then 
			wall <= hbp;   
			wallMovingForward <= '1';
		elsif clk190'event and clk190 = '1' then 
			if wallMovingForward = '1' then
				wall <= wall + 1;	
			else 
				wall <= wall - 1; 
			end if;
			if wall > hbp + screenWidth then				
				wallMovingForward <= '0';
				wall <= wall - 1;
				present_state <= next_state;
			elsif wall < hbp then	 
				wall <= wall + 1;
				wallMovingForward <= '1'; 
				present_state <= next_state;
			end if;
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
	
	
	
	
	process(reyspriteon, skyespriteon, monaspriteon, vidon, MRey, MSkye, MMona)
  		variable j: integer;
 	begin  
		if vidon = '1' then
			if reyspriteon = '1' then
	    			red <= MRey(7 downto 5);
	    			green <= MRey(4 downto 2);
	    			blue <= MRey(1 downto 0);
			elsif skyespriteon = '1' then
	    			red <= MSkye(7 downto 5);
	    			green <= MSkye(4 downto 2);
	    			blue <= MSkye(1 downto 0);
			elsif monaspriteon = '1' then
	    			red <= MMona(7 downto 5);
	    			green <= MMona(4 downto 2);
	    			blue <= MMona(1 downto 0);
	  		else 
				case present_state is 
					when red_state => 
					if hc <= wall then 
						if wallMovingForward = '1' then
							red <= "111";
							blue <= "00";
						else 
							red <= "000";
							blue <= "11";
						end if;
						green <= "000";
					else 	  
						if wallMovingForward = '1' then
							red <= "000";
							blue <= "11";
						else 
							red <= "111";
							blue <= "00";
						end if;
						green <= "000";
					end if;
					when green_state =>
					if hc <= wall then
						if wallMovingForward = '1' then 
							red <= "000"; 
							green <= "111";
						else 
							red <= "111";
							green <= "000";	 
						end if;
						blue <= "00";
					else   
						if wallMovingForward = '1' then
							red <= "111";
							green <= "000";
						else 
							red <= "000";
							green <= "111";
						end if;
						blue <= "00";
					end if;
					when blue_state =>
					if hc <= wall then 
						if wallMovingForward = '1' then
							green <= "000";
							blue <= "11";
						else
							green <= "111";
							blue <= "00";
						end if;
						red <= "000";
					else 	  
						if wallMovingForward = '1' then
							green <= "111";
							blue <= "00";
						else
							green <= "000";
							blue <= "11";
						end if;
						red <= "000";
					end if;
					when others =>
					red <= "000";
					green <= "000";
					blue <= "00";
				end case;  
			end if;
		else
			red <= "000";
			blue <= "00";
			green <= "000";	 
		end if;
	end process;			 
				
end vga_bsprite4a2;