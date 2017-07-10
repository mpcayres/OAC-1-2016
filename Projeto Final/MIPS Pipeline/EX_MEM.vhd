------- EX_MEM -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EX_MEM is
	generic(WSIZE : natural := 32);
	port (
			clk, rst		: in std_logic;
			ResultULAIN, saida2	: in std_logic_vector (WSIZE-1 downto 0);
			vaiIN, zeroIN, ovflIN, EscreveMemFwd, MemparaRegIN, EscreveRegIN : in std_logic;
			fwdWrtReg1IN : in std_logic_vector (4 downto 0);
			ResultULA, wrtData	: out std_logic_vector (WSIZE-1 downto 0);
			vai, zero, ovfl, EscreveMem, MemparaRegOUT, EscreveRegOUT : out std_logic;
			fwdWrtReg1 : out std_logic_vector (4 downto 0)
	);
end EX_MEM;

architecture ex_memArc of EX_MEM is
begin	
	process(clk, rst, ResultULAIN, saida2, EscreveMemFwd, vaiIN, zeroIN, ovflIN, MemparaRegIN, EscreveRegIN, fwdWrtReg1IN)
	begin
		if rst = '1' then
			ResultULA	<= (others => 'Z');
			wrtData <= (others => '0');
			MemparaRegOUT	<= '0';
			EscreveRegOUT	<= '0';
			EscreveMem <= '0';
			vai <= '0';
			zero <= '0';
			ovfl <= '0';
			fwdWrtReg1 <= (others => '0');
		elsif rising_edge(clk) then
			ResultULA	<= ResultULAIN;
			wrtData <= saida2;
			MemparaRegOUT <= MemparaRegIN;
			EscreveRegOUT <= EscreveRegIN;
			EscreveMem <= EscreveMemFwd;
			vai <= vaiIN;
			zero <= zeroIN;
			ovfl <= ovflIN;
			fwdWrtReg1 <= fwdWrtReg1IN;
		end if;
	end process;
end ex_memArc;