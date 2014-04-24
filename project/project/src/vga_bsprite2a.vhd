library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

entity vga_bsprite2a is
	port ( vidon: in std_logic;
		hc : in std_logic_vector(9 downto 0);
		vc : in std_logic_vector(9 downto 0);
		M1: in std_logic_vector(0 to 31);
		M1a: in std_logic_vector(0 to 31);
		M2: in std_logic_vector(31 downto 0);
		M2a: in std_logic_vector(31 downto 0);
		sw: in std_logic_vector(7 downto 0);
		clk: in std_logic;
		clr: in std_logic;
		btn: in std_logic_vector(3 downto 0);
		rom1_addr: out std_logic_vector(5 downto 0);
		rom2_addr: out std_logic_vector(5 downto 0);
		hill1, hill2, hill3, hill4, hill5: in std_logic_vector(6 downto 0);
		aBTN, bBTN, upBTN, downBTN, rightBTN, leftBTN: in std_logic;
		tank1Turn, tank2Turn: std_logic;
		tank1Angle, tank2Angle: out std_logic_vector(1 downto 0);
		tank1_angle, tank2_angle: out std_logic_vector(7 downto 0); --unnecessary after text 
		hillCounter : in std_logic_vector(24 downto 0);
		fireMissile : in std_logic;
		next_player : out std_logic;  
		tank1rom10s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16 
		tank1rom1s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16
		tank110sM: in std_logic_vector(0 to 7);
		tank11sM: in std_logic_vector(0 to 7);
		tank2rom10s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16 
		tank2rom1s : out std_logic_vector(11 downto 0);   --asciiaddr = asciicode*16
		tank210sM: in std_logic_vector(0 to 7);
		tank21sM: in std_logic_vector(0 to 7);
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
	constant w: integer := 8;
	constant h: integer := 10;	 
	constant tw: integer := 32;
	constant th: integer := 29;
	signal destroy1, destroy2 : std_logic := '0';
	signal xpix1, xpix2, xpix3, xpix4, ypix1, ypix2, ypix3, ypix4: std_logic_vector(9 downto 0);			
	signal rom_addr1, rom_addr2 : std_logic_vector(16 downto 0);
	signal C1: std_logic_vector(9 downto 0)  := "0001010100";
	signal C2: std_logic_vector(9 downto 0)  := "0111110100";
	signal C3, C4, R3, R4: std_logic_vector(9 downto 0);
	signal R1, R2: std_logic_vector(9 downto 0) := "0110100111";	--Tank ypos
	signal CM1: std_logic_vector(9 downto 0) := "0001010100";		--Missile xpos (later tank + 30ish)
	signal CM2: std_logic_vector(9 downto 0) := "0001010100";
	signal RM1, RM2: std_logic_vector(9 downto 0) := "0111100000";		--Missile ypos (later tank + 5ish)
	--signal vel: std_
	signal RMcnt, RMcnt2, RMht1, RMht2: std_logic_vector(5 downto 0) := "111111";
	signal RMclk: std_logic_vector(4 downto 0);
	--signal asciiaddr: std_logic_vector(11 downto 0);	
	signal C1a, C2a: std_logic_vector(9 downto 0);
	signal q: std_logic_vector(23 downto 0);
	--signal CM1, RM1: std_logic_vector(9 downto 0);
	signal spriteon1, spriteon1f, spriteon2, spriteon2f, spriteonGrnd, spriteonF, spriteonM1, spriteonM2, R, G, B: std_logic;
	signal tank2Angle10s, tank2Angle1s,tank1Angle10s, tank1Angle1s, spriteonB, spriteonB1, spriteonB2, spriteonB3, spriteonB4, spriteonB5: std_logic;
	signal clkTank, clkY, clkX, clkAngle: std_logic;
	signal rom_pix1, rom_pix2: std_logic_vector(9 downto 0);  --was 10 downto 0...
	signal rise, rise2: std_logic := '1';
	signal shoot: std_logic := '0';
	signal hill12, hill22, hill32, hill42, hill52: std_logic_vector(6 downto 0);
	signal turn: std_logic := '0';
	signal delay1, delay2, delay3, test, Mhorz: std_logic := '0';
	signal tank1HP, tank2HP: std_logic_vector(1 downto 0) := "11"; --set tank HP to 3 
	signal tank210sRomPix, tank21sRomPix, tank110sRomPix, tank11sRomPix, CFont, CFont2,CFont3, CFont4, RFont, tank2ascii10s, tank2ascii1s, tank1ascii10s, tank1ascii1s: std_logic_vector(11 downto 0);
	signal font1, font2, font3, font4 : std_logic_vector(7 downto 0);
	begin 					
	
	-- fonts
	CFont <= "000000010000";
	RFont <= "000000010000";
	CFont2 <= CFont + 8;
	-- set ascii code in switches
	tank1ascii10s <= font1 + 48 & "0000";   --asciiaddr = asciicode*16 -- plus 48 to get to 0
	tank1ascii1s <=  font2 + 48 & "0000";   --asciiaddr = asciicode*16
	tank1rom10s <= vc - vbp - RFont + tank1ascii10s;
	tank1rom1s <= vc - vbp - RFont + tank1ascii1s;
	tank110sRomPix <= hc - hbp - CFont;
	tank11sRomPix <= hc - hbp - CFont2;	
	
	-- fonts
	CFont3 <= "001000110000";
	RFont <= "000000010000";
	CFont4 <= CFont3 + 8;
	-- set ascii code in switches
	tank2ascii10s <= font3 + 48 & "0000";   --asciiaddr = asciicode*16
	tank2ascii1s <=  font4 + 48 & "0000";   --asciiaddr = asciicode*16
	tank2rom10s <= vc - vbp - RFont + tank2ascii10s;
	tank2rom1s <= vc - vbp - RFont + tank2ascii1s;
	tank210sRomPix <= hc - hbp - CFont3;
	tank21sRomPix <= hc - hbp - CFont4;

	--Enable sprite video out when within the sprite region
 	tank1Angle10s <= '1' when (((hc >= CFont + hbp) and (hc < CFont + hbp + w))
			and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';  
	tank1Angle1s <= '1' when (((hc >= CFont2 + hbp) and (hc < CFont2 + hbp + w))
          	and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';
				  
	--Enable sprite video out when within the sprite region
 	tank2Angle10s <= '1' when (((hc >= CFont3 + hbp) and (hc < CFont3 + hbp + w))
			and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';  
	tank2Angle1s <= '1' when (((hc >= CFont4 + hbp) and (hc < CFont4 + hbp + w))
          	and ((vc > RFont + vbp) and (vc <= RFont + vbp + h))) else '0';
				  
				  
	
	
	process(clk, clr)
	begin			
		if clr = '1' then
			q <= X"000000";
		elsif clk'event and clk = '1' then
			q <= q + 1;	
		end if;
	end process;
	clkTank <= q(19);
	clkY <= q(20);		  
	clkX <= q(18);		--separate from clkTank because value may change later

	process(clkY)			  --"FIXED POINT = JASON'S LOVE" -Mike
		variable i: integer;
	begin
			if  aBTN = '1' and tank2Turn = '1' then
				RM1 <= "0111010111"; 	--"0110100010";
				RMcnt <= RMht1;
				rise <= '1';
				next_player <= '0';
				Mhorz <= '1'; -- missile move horizontal
				--destroy <= '0';
			elsif aBTN = '1' and tank1Turn = '1' then 
				RM2 <= "0111010111";		--"0110100010";
				RMcnt2 <= RMht2;
				rise2 <= '1';
				next_player <= '0';
				Mhorz <= '1';
				--destroy <= '0';
			elsif clkY'event and clkY = '1' then
				if tank1Turn = '1' then
					if RMcnt = "000001" then	  --added 1 so wouldn't do 0 - 1 and wrap
						rise <= '0';
					end if;			
					if rise = '0' then		--and RMcnt < (RMht1 + 10) then--"111111" then
						if RMcnt = RMht1 then
							RM1 <= "0111100000";
							Mhorz <= '0';
						else
							RM1 <= RM1 + RMcnt(5 downto 1);
							if RMcnt = "111111" then
								RMcnt <= RMcnt;
							else
								RMcnt <= RMcnt + 1;
							end if;
						end if;
					else  --rise = '1'
						RM1 <= RM1 - RMcnt(5 downto 1);
						RMcnt <= RMcnt - 1;
					end if;
				elsif tank2Turn = '1' then
					if RMcnt2 = "000001" then	  --added 1 so wouldn't do 0 - 1 and wrap
						rise2 <= '0';
					end if;			
					if rise2 = '0' then		--and RMcnt2 < (RMht2 + 10) then
						if RMcnt2 = RMht2 then
							RM2 <= "0111100000";
							Mhorz <= '0';
						else
							RM2 <= RM2 + RMcnt2(5 downto 1);
							if RMcnt2 = "111111" then
								RMcnt2 <= RMcnt2;
							else
								RMcnt2 <= RMcnt2 + 1;
							end if;
						end if;
					else
						RM2 <= RM2 - RMcnt2(5 downto 1);
						RMcnt2 <= RMcnt2 - 1;
					end if;	
				end if;	
				--switch_turn <= '0';
			end if;
		--else
		--end if;	 		
	end process;
	
	process(clkX)				 							--Missile Y movement
	begin
		if Mhorz = '1' then
			if tank1Turn = '1' then		--backwards, don't know why
				if aBTN = '1' then --aBTN
					CM1 <= C1 + 27;	
				elsif clkX'event and clkX = '1' then
					CM1 <= CM1 + 1;
				end if;
			elsif tank2Turn = '1' then
				if aBTN = '1' then	--aBTN
					CM2 <= C2 - 2;	
				elsif clkX'event and clkX = '1' then
					CM2 <= CM2 - 1;
				end if;
			end if;
		end if;
	end process;							 

	process(clkTank, C1, C2, btn)	  						--Move tanks and angle
	begin
		if clkTank'event and clkTank = '1' then
			if tank2Turn = '1' then
				if leftBTN = '1' then
					if C1 > 0 then
						C1 <= C1 - 1;
					end if;
				elsif rightBTN = '1' then
					if C1 < 163 then
						C1 <= C1 + 1;
					end if;
				end if;
				if downBTN = '1' then 
					if RMht1 > 30 then
						RMht1 <= RMht1 - 1;
					end if;
				elsif upBTN = '1' then

					if RMht1 < 60 then
						RMht1 <= RMht1 + 1;
					end if;
				end if;					 			
			elsif tank1Turn = '1' then
				if leftBTN = '1' then
					if C2 > 445 then
						C2 <= C2 - 1;
					end if;
				elsif rightBTN = '1' then
					if C2 < 608 then
						C2 <= C2 + 1;
					end if;
				end if;
				if downBTN = '1' then 
					if RMht2 > 30 then
						RMht2 <= RMht2 - 1;
					end if;
				elsif upBTN = '1' then
					if RMht2 < 60 then
						RMht2 <= RMht2 + 1;
					end if;
				end if;				
			end if;
		end if;
	end process;
	
--------------------------------------------------------------------------------------------------------------	

	
--------------------------------------------------------------------------------------------------------------	
	
	
	
	
	
	ypix1 <= vc - vbp - R1;
	ypix2 <= vc - vbp - R2;
	ypix3 <= vc - vbp - R3;
	ypix4 <= vc - vbp - R4;
	xpix1 <= hc - hbp - C1;
	xpix2 <= hc - hbp - C2;
	xpix3 <= hc - hbp - C3;
	xpix4 <= hc - hbp - C4;
	
	turn <= sw(0);
	hill12 <= "0000000";
	hill22 <= "1111111";
	hill32 <= "0000000";
	hill42 <= "1010100";
	hill52 <= "0000000";
--hill12 <= "10" & hillCounter(6 downto 0);
--hill22 <= hillCounter(10 downto 4);
--hill32 <= hillCounter(14 downto 8);
--hill42 <= hillCounter(24 downto 18);
--hill52 <= hillCounter(8 downto 2);
	--Enable sprite video out when within the sprite region
	spriteon1 <= '1' when (((hc >= C1 + hbp) and (hc < C1 + hbp + tw)) and ((vc >= R1 + vbp) and (vc < R1 + vbp + th))) else '0';
	spriteon1f <= '1' when (((hc > C1 + hbp) and (hc <= C1 + hbp + tw)) and ((vc >= R1 + vbp) and (vc < R1 + vbp + th))) else '0';
	
	spriteon2 <= '1' when (((hc >= C2 + hbp) and (hc < C2 + hbp + tw)) and ((vc >= R2 + vbp) and (vc < R2 + vbp + th))) else '0'; 
	spriteon2f <= '1' when (((hc > C2 + hbp) and (hc <= C2 + hbp + tw)) and ((vc >= R2 + vbp) and (vc < R2 + vbp + th))) else '0';
	--landscape
	spriteonGrnd <= '1' when (((hc >= hbp) and (hc < 640 + hbp)) and ((vc >= 440 + vbp) and (vc < vbp + 480))) else '0';  
	spriteonB1 <= '1' when (((hc >= 195 + hbp) and (hc <= 245 + hbp)) and ((vc >= 201 + hill12) and (vc < 551)))else '0';	--vbp=31
	spriteonB2 <= '1' when (((hc > 245 + hbp) and (hc <= 295 + hbp)) and ((vc >= 201 + hill22) and (vc < 551)))else '0';
	spriteonB3 <= '1' when (((hc > 295 + hbp) and (hc <= 345 + hbp)) and ((vc >= 201 + hill32) and (vc < 551)))else '0';
	spriteonB4 <= '1' when (((hc > 345 + hbp) and (hc <= 395 + hbp)) and ((vc >= 201 + hill42) and (vc < 551)))else '0';
	spriteonB5 <= '1' when (((hc > 395 + hbp) and (hc < 445 + hbp)) and ((vc >= 201 + hill52) and (vc < 551)))else '0';
	spriteonB <= '1' when (spriteonB1='1' or spriteonB2='1' or spriteonB3='1' or spriteonB4='1' or spriteonB5='1');
	spriteonF <= '1' when (((hc >= C1 + hbp) and (hc < C1 + hbp + w))and ((vc > R1 + vbp) and (vc <= R1 + vbp + h))) else '0';	
	spriteonM1 <= '1' when (((hc > CM1 + hbp) and (hc <= CM1 + hbp + 5)) and ((vc >= RM1 + vbp) and (vc < RM1 + vbp + 5))) else '0';
	spriteonM2 <= '1' when (((hc > CM2 + hbp) and (hc <= CM2 + hbp + 5)) and ((vc >= RM2 + vbp) and (vc < RM2 + vbp + 5))) else '0';
	
	--destroy <= '1' when (spriteonM1 and spriteonB) and not spriteonGrnd else '0';
		
	--	process(xpix1, ypix1)
	--		variable  rom_addr1, rom_addr2: STD_LOGIC_VECTOR (16 downto 0);
	--		begin 
	--			rom_addr1 := ('0' & ypix1 & "000000")  
	--	            + ("00" & ypix1 & "00000") + ("00000" & ypix1 & "00");	
	--	           -- y*(128+64+32+16) = y*240	 !!this is old value??
	--			rom_addr2 := rom_addr1 + ("0000000" & xpix1); -- y*240+x   *******************removed a 0
	--			rom1_addr16 <= rom_addr2(4 downto 0);
	--	end process;	
	
	process(RMht1, RMht2)
	begin
		if RMht1 > 50 then			 --visible tank angle
			tank1Angle <= "11";
		elsif RMht1 > 40 then
			tank1Angle <= "10";
		else
			tank1Angle <= "00";
		end if;
		
		if RMht2 > 50 then
			tank2Angle <= "11";
		elsif RMht2 > 40 then
			tank2Angle <= "10";
		else
			tank2Angle <= "00";
		end if;
	end process;
	tank1_angle <= RMht1 - 30;
	tank2_angle <= RMht2 - 30;
	
	-- for fonts of angle
	process(RMht1, RMht2)
	begin
		if RMht1 < 60 then			 --tank 1 angle font
			font1 <= "00000101";
			font2 <= Rmht1 - 50;
			if RMht1 < 50 then
				font1 <= "00000100";
				font2 <= Rmht1 - 40;
			end if;
				if RMht1 < 40 then
					font1 <= "00000011";
					font2 <= Rmht1 - 30; 
				end if;
		else
			font1 <= "00000110";
			font2 <= "00000000";
		end if;
		if RMht2 < 60 then			 --tank2 angle font
			font3 <= "00000101";
			font4 <= Rmht2 - 50;
			if RMht2 < 50 then
				font3 <= "00000100";
				font4 <= Rmht2 - 40; 
			end if;
				if RMht2 < 40 then
					font3 <= "00000011";
					font4 <= Rmht2 - 30;
				end if;
		else
			font3 <= "00000110";
			font4 <= "00000000";
		end if;
	end process;
	
	rom_addr1 <= vc - vbp - R1;
	rom_addr2 <= vc - vbp - R2;
	
	rom1_addr <= rom_addr1(5 downto 0);
	rom2_addr <= rom_addr2(5 downto 0);
	
	rom_pix1 <= hc - hbp - C1;
	rom_pix2 <= hc - hbp - C2;	
	
	--destroy <= destroy;
	--asciiaddr <= sw & "0000";   --asciiaddr = asciicode*16
	--rom_addr12 <= vc - vbp - R1 + asciiaddr;
	--font_pix <= hc - hbp - C1;	
	process(spriteon1, spriteon1f, spriteon2, spriteon2f, spriteonGrnd, spriteonB1, spriteonB2, spriteonB3, spriteonB4,
	spriteonB5, spriteonF, spriteonM1, spriteonM2, spriteonB, vidon, M1, M1a, M2, M2a, rom_pix1, rom_pix2, 
	destroy1, destroy2, tank1HP, tank2HP, bBTN)	--probably way too  many...	 DON'T CARE
		variable i, j, f, n, m, p: integer;
	begin
		red <= "000";
		green <= "000";
		blue <= "00";
		i := conv_integer(rom_pix1);
		j := conv_integer(rom_pix2);
		f := conv_integer(tank110sRomPix);
		n := conv_integer(tank11sRomPix);
		m := conv_integer(tank210sRomPix);
		p := conv_integer(tank21sRomPix);
		if vidon = '1' then
			--			if spriteonF = '1' and vidon = '1' then
			--    			j := conv_integer(font_pix);
			--    			R <= M(j);
			--    			G <= M(j);
			--    			B <= M(j);
			--   				red <= R & R & R;
			--    			green <= G & G & G;
			--    			blue <= B & B;
			if bBTN = '1' then
				destroy1 <= '0';
				destroy2 <= '0';
				tank1HP <= "11";
				tank2HP <= "11";
			end if;
			if spriteon1 = '1' and M1(i) = '1' then
				red <= "000";
				green <= "000";
				blue <= "00"; 
			elsif spriteon1 = '1' and M1a(i) = '1' then
				if spriteonM2 = '1' then
					if tank1HP = "11" then
						tank1HP <= "01";
						destroy2 <= '1';
					else
						tank1HP <= "00";
					end if;
				end if;
				if M1a(i) = '1' then
					if tank1HP = "00" then
						red <= "000";
						green <= "000";
						blue <= "00"; 
					else
						red <= "111";
						green <= "110";
						blue <= "00"; 
					end if;
				end if;
			elsif spriteon2 = '1' and M2(j) = '1' then
				if M2(j) = '1' then
					red <= "000";
					green <= "000";
					blue <= "00"; 
				end if;
			elsif spriteon2f = '1' and M2a(j) = '1' then
				if spriteonM1 = '1' then
					if tank2HP = "11" then
						tank2HP <= "10";
						destroy1 <= '1';
					else
						tank2HP <= "00";
					end if;
				end if;
				if M2a(j) = '1' then
					if tank2HP = "00" then
						red <= "000";
						green <= "000";
						blue <= "00";
					elsif tank2HP = "11" then
						red <= "111";
						green <= "000";
						blue <= "00";
					else
						red <= "111";
						green <= "100";
						blue <= "10";
					end if;
				end if;
			elsif spriteonGrnd = '1' then
				red <= "100";
				green <= "110";
				blue <= "00";
				if spriteonM1 = '1' then
					destroy1 <= '0';
				elsif spriteonM2 = '1' then
					destroy2 <= '0';
				end if;
			elsif spriteonB1 = '1' then --buildings
				if spriteonM1='1' then
					destroy1 <= '1';
					if destroy1 = '1' then
					red <= "111";
					green <= "000";
					blue <= "01";
					end if;
				end if;
					red <= "110";
					green <= "110";
					blue <= "11";
			elsif spriteonB2 = '1' then --buildings
				red <= "110";
				green <= "110";
				blue <= "10";
			elsif spriteonB3 = '1' then --buildings	
				if tank2Turn = '1' then
					red <= "111";
					green <= "110";
					blue <= "00"; 
				elsif tank1Turn = '1' then
					red <= "111";
					green <= "000";
					blue <= "00";
				else
					red <= "110";
					green <= "111";
					blue <= "11";					
				end if;
			elsif spriteonB4 = '1' then --buildings
				red <= "111";
				green <= "110";
				blue <= "11";
			elsif spriteonB5 = '1' then --buildings
				if spriteonM1='1' then
					destroy1 <= '1';
					red <= "101";
					green <= "001";
					blue <= "01";
				elsif spriteonM2='1' then
					destroy2 <= '1';
					red <= "101";
					green <= "001";
					blue <= "01";
				end if;
				red <= "001";
				green <= "001";
				blue <= "01";
--				if spriteonGrnd = '1' then
--					switch_turn <= '1';
--				end if;
--				if destroyIn = '0' then
--					red <= "111";
--					green <= "111";
--					blue <= "11";
--				else
--					red <= "111";
--					green <= "000";
--					blue <= "00";
--				end if;
			elsif spriteonM1 = '1' and destroy1 = '0' then
--				if spriteonB = '1' then
--					destroy <= '1';
--				else
					--destroy <= destroy;
					red <= "111";
					green <= "111";
					blue <= "11";
--				end if;
			elsif spriteonM2 = '1' and destroy2 = '0' then 
					red <= "100";
					green <= "110";
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
			elsif 							
				tank2Angle10s = '1' then
    			R <= tank210sM(m);
    			G <= tank210sM(m);
    			B <= tank210sM(m);
   				red <= R & R & R;
    			green <= G & G & G;
    			blue <= B & B;
			elsif 							
				tank2Angle1s = '1' then
    			R <= tank21sM(p);
    			G <= tank21sM(p);
    			B <= tank21sM(p);
   				red <= R & R & R;
    			green <= G & G & G;
    			blue <= B & B;
			else	--sky
				if test = '1' then
					red <= "111";
					green <= "011";
					blue <= "01"; 
				
				else
					red <= "000";
					green <= "011";
					blue <= "11";
				end if;
			end if;
			--if spriteonM1 = '1' and destroy = '1' then
--				if spriteonGrnd = '1' then
--					destroy <= '0';
--					red <= "100";
--					green <= "110";
--					blue <= "00";					
--					turn <= '1';	--change to player2's turn
--				end if;
--			elsif spriteonM2 = '1' and destroy = '1' then
--				if spriteonGrnd = '1' then
--					destroy <= '0';
--					red <= "100";
--					green <= "110";
--					blue <= "00";					
--					turn <= '0';   --change to player1's turn
--				end if;
--			end if;
		end if;
		
		-- sand = "11111010"
		-- dirt = "10001100"
		-- sky  = "00001111"
	end process;
end vga_bsprite2a;


