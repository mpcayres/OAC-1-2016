------- MEM_WB -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MEM_WB is
	generic(WSIZE : natural := 32);
	port (
			clk, rst	: in std_logic;
			fwdWrtReg2IN : in std_logic_vector (4 downto 0);
			MemparaRegIN, EscreveRegIN : in std_logic;
			ResultULAFwd	: in std_logic_vector (WSIZE-1 downto 0);
			fwdWrtReg2 : out std_logic_vector (4 downto 0);
			MemparaRegOUT, EscreveRegOUT : out std_logic;
			ResultULA	: out std_logic_vector (WSIZE-1 downto 0)
	);
end MEM_WB;

architecture mem_wbArc of MEM_WB is
begin
	process(clk, rst, fwdWrtReg2IN, MemparaRegIN, EscreveRegIN, ResultULAFwd)
	begin
		if rst = '1' then
			fwdWrtReg2 <= (others => '0');
			MemparaRegOUT <= '0';
			EscreveRegOUT <= '0';
			ResultULA	<= (others => '0');
		elsif rising_edge(clk) then
			fwdWrtReg2 <= fwdWrtReg2IN;
			MemparaRegOUT <= MemparaRegIN;
			EscreveRegOUT <= EscreveRegIN;
			ResultULA <= ResultULAFwd;
		end if;
	end process;
	
end mem_wbArc;