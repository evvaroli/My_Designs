
------ DESCRIPTION OF SN7485 ---------------------

-- A0 ... A3 ( 2^0 ... 2^3 )
-- B0 ... B3 ( 2^0 ... 2^3 )

-- K  = 1 ( A > B )
-- L  = 1 ( A < B )
-- M = 1 ( A = B )	

--------------------------------------------------------

library ieee;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;
library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity sn7485_top_tb is
end sn7485_top_tb;

architecture TB_ARCHITECTURE of sn7485_top_tb is	 
file RESULTS: TEXT open WRITE_MODE is "results.txt";
	-- Component declaration of the tested unit
	component SN7485_TOP
	port(
		A0 : in std_logic;
		A1 : in std_logic;
		A2 : in std_logic;
		A3 : in std_logic;
		B0 : in std_logic;
		B1 : in std_logic;
		B2 : in std_logic;
		B3 : in std_logic;
		K0 : in std_logic;
		L0 : in std_logic;
		M0 : in std_logic;
		K : out std_logic;
		L : out std_logic;
		M : out std_logic );
end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal A0 : std_logic;
	signal A1 : std_logic;
	signal A2 : std_logic;
	signal A3 : std_logic;
	signal B0 : std_logic;
	signal B1 : std_logic;
	signal B2 : std_logic;
	signal B3 : std_logic;
	signal K0 : std_logic;
	signal L0 : std_logic;
	signal M0 : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal K : std_logic;
	signal L : std_logic;
	signal M : std_logic;
	
procedure WRITE_RESULTS(
	A0 : std_logic;
	A1 : std_logic;
	A2 : std_logic;
	A3 : std_logic;
	B0 : std_logic;
	B1 : std_logic;
	B2 : std_logic;
	B3 : std_logic;
	K0 : std_logic;
	L0 : std_logic;
	M0 : std_logic;
	K : std_logic;
	L : std_logic;
	M : std_logic) is 

	variable L_OUT : LINE;
begin
	write(l_out, now, right, 15, ps);
	write(l_out,A0, right, 2);
	write(l_out,A1, right, 2);
	write(l_out,A2, right, 2);
	write(l_out,A3, right, 2);
	write(l_out,B0, right, 2);
	write(l_out,B1, right, 2);
	write(l_out,B2, right, 2);
	write(l_out,B3, right, 2);
	write(l_out,K0, right, 2);
	write(l_out,L0, right, 2);
	write(l_out,M0, right, 2);
	write(l_out,K, right, 2);
	write(l_out,L, right, 2);
	write(l_out,M, right, 2);
	writeline(RESULTS, L_OUT);
end;
	
	-- Add your code here ...

	function FileOpen return boolean is
	begin
		return true;
	end function; 

	function FileClose return boolean is
	begin
		return true;
	end function; 

	function FileEnd return boolean is
	begin
		return true;
	end function; 

	function Stimulator return std_ulogic is
	begin
		return '1';
	end function; 

	attribute FOREIGN of FileOpen : function is "FileOpen external\Foreign1.dll"; 
	attribute FOREIGN of FileClose : function is "FileClose external\Foreign1.dll";
	attribute FOREIGN of FileEnd : function is "FileEnd external\Foreign1.dll";
	attribute FOREIGN of Stimulator : function is "Stimulator external\Foreign1.dll";
	
begin

	UUT : SN7485_TOP
		port map
			(A0 => A0,
			A1 => A1,
			A2 => A2,
			A3 => A3,
			B0 => B0,
			B1 => B1,
			B2 => B2,
			B3 => B3,
			K0 => K0,
			L0 => L0,
			M0 => M0,
			K => K,
			L => L,
			M => M );
	-- Add your stimulus here ...	
	
	K0 <= '0';
	M0 <= '1';
	L0 <= '0';	
	
process
	variable ret: boolean;
begin
	
	ret := FileOpen;
	if ret = false then
		report ("Error during opening stimulation file."); 
	end if;
	
	while 1 = 1 loop
		if FileEnd = true then 
			report ("End of stimulation file.");	   
			exit;
		end if;
		A0 <= Stimulator;
		
		if FileEnd = true then 
			report ("End of stimulation file.");	
			exit;
		end if;
		A1 <= Stimulator;
		
		if FileEnd = true then
			report ("End of stimulation file.");
			exit;
		end if;
		A2 <= Stimulator; 

		if FileEnd = true then 
			report ("End of stimulation file.");
			exit;
		end if;
		A3 <= Stimulator;

		if FileEnd = true then
			report ("End of stimulation file.");
			exit;
		end if;
		B0 <= Stimulator;

		if FileEnd = true then 
			report ("End of stimulation file.");
			exit;
		end if;
		B1 <= Stimulator; 

		if FileEnd = true then 
			report ("End of stimulation file.");
			exit;
		end if;
		B2 <= Stimulator;  

		if FileEnd = true then
			report ("End of stimulation file.");
			exit;
		end if;
		B3 <= Stimulator;
		
		wait for 5 ns;
	end loop;
	
	ret := FileClose;
	if(ret = false) then
		report ("Error during closing stimulation file.");	
	end if;
	
	wait;
end process;

WRITE_TO_FILE: WRITE_RESULTS(A0,A1,A2,A3,B0,B1,B2,B3,K0,L0,M0,K,L,M);

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_SN7485_TOP of sn7485_top_tb is
	for TB_ARCHITECTURE
		for UUT : SN7485_TOP
			use entity work.SN7485_TOP(SN7485_TOP);
		end for;
	end for;
end TESTBENCH_FOR_SN7485_TOP;

