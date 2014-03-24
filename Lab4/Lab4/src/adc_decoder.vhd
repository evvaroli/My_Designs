-------------------------------------------------------------------------------
--
-- Title       : adc_decoder
-- Design      : Lab4
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab4\Lab4\src\adc_decoder.vhd
-- Generated   : Mon Feb 17 15:49:58 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {adc_decoder} architecture {adc_decoder}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity adc_decoder is
	 port(
		 adc_data : in STD_LOGIC_VECTOR(9 downto 0);
		 y : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end adc_decoder;

--}} End of automatically maintained section

architecture adc_decoder of adc_decoder is
begin
	process(adc_data)
	begin
		if adc_data > 896 then
			y <= "11111111"; 
		elsif adc_data > 768 then
			y <= "01111111";
		elsif adc_data > 640 then
			y <= "00111111";
		elsif adc_data > 512 then
			y <= "00011111";
		elsif adc_data > 384 then 
			y <= "00001111";
		elsif adc_data > 256 then
			y <= "00000111";
		elsif adc_data > 128 then
			y <= "00000011";
		elsif adc_data > 0 then
			y <= "00000001";
		else
			y <= "00000000";
		end if;
	end process;
end adc_decoder;
