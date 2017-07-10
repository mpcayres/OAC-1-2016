------- IF_ID -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_ID is
	generic(WSIZE : natural := 32);
	port (
			clk, rst		: in std_logic;
			PCatualIN, PC4IN	: in std_logic_vector(WSIZE-1 downto 0);
			PCatualOUT, PC4OUT	: out std_logic_vector(WSIZE-1 downto 0)
	);
end IF_ID;

architecture if_idArc of IF_ID is

begin
	process(clk, rst, PCatualIN, PC4IN)
	begin
		if rst = '1' then
			PCatualOUT	<= (others => '0');
			PC4OUT <= (2 => '1', others => '0');
		elsif rising_edge(clk) then
			PCatualOUT	<= PCatualIN;
			PC4OUT <= PC4IN;
		end if;
	end process;
	
end if_idArc;