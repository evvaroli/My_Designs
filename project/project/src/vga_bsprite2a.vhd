library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity vga_bsprite2a is
    port ( vidon: in std_logic;		
		   tank1Turn : in std_logic;
		   tank2Turn : in std_logic;   
		   hill1 : in std_logic_vector(7 downto 0);   
		   hill2 : in std_logic_vector(7 downto 0);
		   hill3 : in std_logic_vector(7 downto 0);
		   hill4 : in std_logic_vector(7 downto 0);
		   hill5 : in std_logic_vector(7 downto 0);
		   tank1Angle : out std_logic_vector(1 downto 0);
		   tank2Angle : out std_logic_vector(1 downto 0);
		   tank1_angle : out std_logic_vector(7 downto 0);
		   tank2_angle : out std_logic_vector(7 downto 0);
		   aBTN : in std_logic; 
		   upBTN : in std_logic;
		   downBTN : in std_logic;
		   rightBTN : in std_logic;
		   leftBTN : in std_logic;
           hc : in std_logic_vector(9 downto 0);
           vc : in std_logic_vector(9 downto 0);
           M1: in std_logic_vector(0 to 31);
		   M1a: in std_logic_vector(0 to 31);
		   M2: in std_logic_vector(31 downto 0);
		   M2a: in std_logic_vector(31 downto 0);
           sw: in std_logic_vector(7 downto 0);
		   clk: in std_logic;
		   clr: in std_logic;
		   --clk3: out std_logic;
		   btn: in std_logic_vector(3 downto 0);
           rom1_addr: out std_logic_vector(5 downto 0);
		   rom2_addr: out std_logic_vector(5 downto 0);	
		   tank1rom10s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16 
		   tank1rom1s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16
		   tank110sM: in std_logic_vector(0 to 7);
		   tank11sM: in std_logic_vector(0 to 7);
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
constant w: integer := 4;
constant h: integer := 10;	 
constant tw: integer := 32;
constant th: integer := 29;		
constant zero :std_logic_vector(7 downto 0)	:= "00000000";
constant thirty :std_logic_vector(7 downto 0)	:= "00011110";
constant sixty :std_logic_vector(7 downto 0)	:= "00111100";
constant ninety :std_logic_vector(7 downto 0)	:= "01011010";

signal xpix1, xpix2, xpix3, xpix4, ypix1, ypix2, ypix3, ypix4: std_logic_vector(9 downto 0);			
signal rom_addr1, rom_addr2 : std_logic_vector(16 downto 0);
signal C1: std_logic_vector(9 downto 0)  := "0001010100";
signal C2: std_logic_vector(9 downto 0)  := "0111110100";
signal C3, C4, R1, R2, R3, R4: std_logic_vector(9 downto 0);
signal C1a, C2a: std_logic_vector(9 downto 0);
signal q: std_logic_vector(23 downto 0);
signal tank1Angle10s, tank1Angle1s, spriteon1, spriteon1f, spriteon2, spriteon2f, spriteonGrnd, R, G, B: std_logic;
signal spriteonB1, spriteonB2, spriteonB3, spriteonB4, spriteonB5: std_logic;
signal clk3 : std_logic; 
signal rom_pix1, rom_pix2: std_logic_vector(10 downto 0);  	
signal tank1_angle_calc, tank2_angle_calc: std_logic_vector(7 downto 0);
signal tank110sRomPix, tank11sRomPix, CFont, CFont2, RFont, tank1ascii10s, tank1ascii1s: std_logic_vector(11 downto 0);

begin 	  
	
	--fix C1 and R1 near middle of screen
	CFont <= "000" & "0000" & "10000";
	RFont <= "000" & "0000" & "10000";	
	CFont2 <= CFont + w;
	-- set ascii code in switches
	tank1ascii10s <= "0000" & sw(7 downto 4) & "0000";   --asciiaddr = asciicode*16
	tank1ascii1s <=  "0000" & sw(3 downto 0) & "0000";   --asciiaddr = asciicode*16
	tank1rom10s <= vc - vbp - R1 + tank1ascii10s;
	tank1rom1s <= vc - vbp - R1 + tank1ascii1s;
	tank110sRomPix <= hc - hbp - CFont;
	tank11sRomPix <= hc - hbp - CFont2 + w;

	--Enable sprite video out when within the sprite region
 	tank1Angle10s <= '1' when (((hc >= CFont + hbp - w) and (hc < CFont + hbp + w))
			and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';  
	tank1Angle1s <= '1' when (((hc >= CFont2 + hbp) and (hc < CFont2 + hbp + w))
          	and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';
	--fall1 <= '1';
	--jump1 <= "1111";
	--set C1 and R1 using switches
	
	--C2 <= "0111111111";	   --"arbitrary" values of where on screen we want each pic (horz)
	--C3 <= "0101100001";	   --0 & XXXX & 00001
	C4 <= "0111100001";
	
	R1 <= "0101111111";	
	R2 <= "0101111111";
	--R3 <= '0' & SW(3 downto 2) & "0000001";	--every 2 sw control vertical position
	--R4 <= '0' & SW(1 downto 0) & "0000001";
	
	process(clk, clr)
	begin			
		if clr = '1' then
			q <= X"000000";	
		elsif clk'event and clk = '1' then
			q <= q + 1;	
		end if;
	end process;
	clk3 <= q(17);
	
	process(clk3, C1, C2, leftBTN, rightBTN, upBTN, downBTN)
	begin
		if clk3'event and clk3 = '1' then 
			-- angle calculation 
			if tank1Turn = '1' then	  -- tank 1 turn
				if upBTN = '1' then
					if tank1_angle_calc = ninety then	
						tank1_angle_calc <= ninety;
					else
						tank1_angle_calc <= tank1_angle_calc + 1;
					end if;
				elsif downBTN = '1' then
					if tank1_angle_calc = zero then
						tank1_angle_calc <= zero;
					else
						tank1_angle_calc <= tank1_angle_calc - 1;
					end if;
				else
					tank1_angle_calc <= tank1_angle_calc; 
				end if;
			else			 -- tank 2 turn
				if upBTN = '1' then
					if tank2_angle_calc = ninety then	
						tank2_angle_calc <= ninety;
					else
						tank2_angle_calc <= tank2_angle_calc + 1;
					end if;
				elsif downBTN = '1' then
					if tank2_angle_calc = zero then
						tank2_angle_calc <= zero;
					else
						tank2_angle_calc <= tank2_angle_calc - 1;
					end if;
				else
					tank2_angle_calc <= tank2_angle_calc; 
				end if;
			end if;
			
			-- tank movement
			if leftBTN = '1' then 
				if tank1Turn = '1' then	
					if C1 > 0 then
						C1 <= C1 - 1;
					end if;	 
				else 			-- tank2Turn is 1 
					if C2 > 445 then	 --445 + hbp
						C2 <= C2 - 1; 
					end if;
				end if;
			elsif rightBTN = '1' then 
				if tank1Turn = '1' then
					if C1 < 163 then
						C1 <= C1 + 1;
					end if;	
				else 	 -- tank2Turn
					if C2 < 608 then
						C2 <= C2 + 1;
					end if;			
				end if;	
			end if;
		end if;
	end process;
			
	--R1 <= '0' & jump1;
	--R2 <= '0' & jump2;
	--R3 <= '0' & jump3;
	--R4 <= '0' & jump4;--"00001";
	
	ypix1 <= vc - vbp - R1;
	ypix2 <= vc - vbp - R2;
	ypix3 <= vc - vbp - R3;
	ypix4 <= vc - vbp - R4;
	xpix1 <= hc - hbp - C1;
	xpix2 <= hc - hbp - C2;
	xpix3 <= hc - hbp - C3;
	xpix4 <= hc - hbp - C4;
	
	--Enable sprite video out when within the sprite region
 	spriteon1 <= '1' when (((hc >= C1 + hbp) and (hc < C1 + hbp + tw)) and ((vc >= R1 + vbp) and (vc < R1 + vbp + th))) else '0';
	spriteon1f <= '1' when (((hc > C1 + hbp) and (hc <= C1 + hbp + tw)) and ((vc >= R1 + vbp) and (vc < R1 + vbp + th))) else '0';
	
	spriteon2 <= '1' when (((hc >= C2 + hbp) and (hc < C2 + hbp + tw)) and ((vc >= R2 + vbp) and (vc < R2 + vbp + th))) else '0'; 
	spriteon2f <= '1' when (((hc > C2 + hbp) and (hc <= C2 + hbp + tw)) and ((vc >= R2 + vbp) and (vc < R2 + vbp + th))) else '0';
		--landscape
	spriteonGrnd <= '1' when (((hc > hbp) and (hc <= 640 + hbp)) and ((vc >= 400 + vbp) and (vc < vbp + 480))) else '0';  
	spriteonB1 <= '1' when (((hc > 195 + hbp) and (hc <= 245 + hbp)) and ((vc >= 131 + hill1) and (vc < 511)))else '0';	--vbp=31
	spriteonB2 <= '1' when (((hc > 245 + hbp) and (hc <= 295 + hbp)) and ((vc >= 131 + hill2) and (vc < 511)))else '0';
	spriteonB3 <= '1' when (((hc > 295 + hbp) and (hc <= 345 + hbp)) and ((vc >= 131 + hill3) and (vc < 511)))else '0';
	spriteonB4 <= '1' when (((hc > 345 + hbp) and (hc <= 395 + hbp)) and ((vc >= 131 + hill4) and (vc < 511)))else '0';
	spriteonB5 <= '1' when (((hc > 395 + hbp) and (hc <= 445 + hbp)) and ((vc >= 131 + hill5) and (vc < 511)))else '0';
	
	--spriteonG <= '1' when 
						
--	process(xpix1, ypix1)
--		variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
--		begin 
--			rom_addr1 := ('0' & ypix1 & "000000")  
--	            + ("00" & ypix1 & "00000") + ("00000" & ypix1 & "00");	
--	           -- y*(128+64+32+16) = y*240	 !!this is old value??
--			rom_addr2 := rom_addr1 + ("0000000" & xpix1); -- y*240+x   *******************removed a 0
--			rom1_addr16 <= rom_addr2(4 downto 0);
--	end process;	

	rom_addr1 <= vc - vbp - R1;
	rom_addr2 <= vc - vbp - R2;
	
	rom1_addr <= rom_addr1(5 downto 0);
	rom2_addr <= rom_addr2(5 downto 0);
	
	rom_pix1 <= hc - hbp - C1;
	rom_pix2 <= hc - hbp - C2;

	process(spriteon1, spriteon1f, spriteon2, spriteon2f, spriteonGrnd, spriteonB1, spriteonB2, spriteonB3, spriteonB4,
			spriteonB5, vidon, M1, M1a, M2, M2a, rom_pix1, rom_pix2)
  		variable i, j, f, n: integer;
 	begin
		red <= "000";
		green <= "000";
		blue <= "00";
		i := conv_integer(rom_pix1);
		j := conv_integer(rom_pix2);
		f := conv_integer(tank110sRomPix);
		n := conv_integer(tank11sRomPix);
		if vidon = '1' then
			if spriteon1 = '1' and M1(i) = '1' then
				if M1(i) = '1' then
					red <= "000";
					green <= "000";
					blue <= "00"; 
				end if;
			elsif spriteon1 = '1' and M1a(i) = '1' then
				if M1a(i) = '1' then
					red <= "111";
					green <= "110";
					blue <= "00"; 
				end if;	 
			elsif spriteon2 = '1' and M2(j) = '1' then
    			--j := conv_integer(rom_pix2);
    			--R <= M2(j);
--    			G <= M2(j);
--    			B <= M2(j);
--   				red <= R & R & R;
--    			green <= G & G & G;
--    			blue <= B & B; 
				if M2(j) = '1' then
					red <= "000";
					green <= "000";
					blue <= "00"; 
				end if;
			elsif spriteon2f = '1' and M2a(j) = '1' then
				if M2a(j) = '1' then
					red <= "111";
					green <= "000";
					blue <= "00"; 
				end if;
			elsif spriteonGrnd = '1' then
				red <= "000";
				green <= "111";
				blue <= "00"; 
			elsif spriteonB1 = '1' then --buildings
				red <= "110";
				green <= "110";
				blue <= "11";
			elsif spriteonB2 = '1' then --buildings
				red <= "110";
				green <= "110";
				blue <= "10";
			elsif spriteonB3 = '1' then --buildings
				red <= "111";
				green <= "110";
				blue <= "11";
			elsif spriteonB4 = '1' then --buildings
				red <= "110";
				green <= "111";
				blue <= "11";
			elsif spriteonB5 = '1' then --buildings
				red <= "001";
				green <= "001";
				blue <= "10";
			elsif 							
				tank1Angle10s = '1' then
    			R <= tank110sM(f);
    			G <= tank110sM(f);
    			B <= tank110sM(f);
   				red <= R & R & R;
    			green <= G & G & G;
    			blue <= B & B;
			elsif 							
				tank1Angle1s = '1' then
    			R <= tank11sM(n);
    			G <= tank11sM(n);
    			B <= tank11sM(n);
   				red <= R & R & R;
    			green <= G & G & G;
    			blue <= B & B;
			else	--sky
				--red <= vc(0) & vc(0) & vc(0);
				--green <= vc(0) & vc(0) & vc(0);
				red <= "000";
				green <= "011";
				blue <= "11";
			end if;
		end if;
		
		-- sand = "11111010"
		-- sky = "00001111"
  	end process;   

	process(tank1_angle_calc, tank2_angle_calc)
	begin
		if tank1_angle_calc >= thirty then
			if tank1_angle_calc >= sixty then
				tank1Angle <= "11";
			else
				tank1Angle <= "10";
			end if;
		else 
			tank1Angle <= "00";
		end if;
		
		if tank2_angle_calc >= thirty then
			if tank2_angle_calc >= sixty then
				tank2Angle <= "11";
			else
				tank2Angle <= "10";
			end if;
		else 
			tank2Angle <= "00";
		end if;	
	end process;	 
	
	
	tank1_angle <= tank1_angle_calc;
	tank2_angle <= tank2_angle_calc;
   end vga_bsprite2a;


