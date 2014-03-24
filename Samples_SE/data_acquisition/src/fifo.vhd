-------------------------------------------------------------------------------
--
-- Title       : fifo
-- Design      : data_acquisition
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : fifo.vhd
-- Generated   : Fri Sep 27 14:35:05 2013
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
--{entity {fifo} architecture {fifo}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fifo is
	generic(
		data_width : INTEGER := 16;
		fifo_depth : INTEGER := 16
		);
	port(
		rd_clk : in STD_LOGIC;
		rd_en : in STD_LOGIC;
		rst : in STD_LOGIC;
		wr_clk : in STD_LOGIC;
		wr_data : in STD_LOGIC_VECTOR(data_width-1 downto 0);
		wr_en : in STD_LOGIC;
		empty : out STD_LOGIC;
		full : out STD_LOGIC;
		rd_data : out STD_LOGIC_VECTOR(data_width-1 downto 0)
		);
end fifo;

--}} End of automatically maintained section

architecture fifo of fifo is
	
	type memory_type is array ( 0 to fifo_depth-1 ) of std_logic_vector(wr_data'range);
	
	signal memory : memory_type;
	
	signal wr_ptr : integer range memory'range(1);
	signal rd_ptr : integer range memory'range(1);
	
	signal empty_int    : std_logic;
	signal full_int     : std_logic;
	signal full_delayed : std_logic;
	
begin
	
	process ( wr_clk, rst )
	begin
		
		if rising_edge(wr_clk) then
			
			if rst='1' then
				wr_ptr       <= 0;
				full_delayed <= '0';
			elsif wr_en='1' then
				
				if full_delayed='0' then
					memory(wr_ptr) <= wr_data;
				end if;
				
				if full_int='0' then
					wr_ptr <= (wr_ptr+1) mod fifo_depth;
				end if;
				
				full_delayed <= full_int;
				
			end if;
			
		end if;
		
	end process;
	
	
	process ( rd_clk, rst )
	begin
		
		if rising_edge(rd_clk) then
			
			if rst='1' then
				rd_ptr <= 0;
			elsif rd_en='1' then
				
				if empty_int='0' then
					rd_ptr <= (rd_ptr+1) mod fifo_depth;
				end if;
				
			end if;
			
		end if;
		
	end process;
	
	rd_data <= memory(rd_ptr);
	
	empty_int <= '1' when rd_ptr=wr_ptr else
	'0';
	empty     <= empty_int;
	
	full_int  <= '1' when ((wr_ptr+1) mod fifo_depth)=rd_ptr else
	'0';
	full      <= full_delayed;
	
end fifo;
