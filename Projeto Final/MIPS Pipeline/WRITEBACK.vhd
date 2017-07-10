------- WRITEBACK -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WRITEBACK is
	generic(WSIZE : natural := 32);
	port (
			clk, rst		: in std_logic;
			ResultMemDado, ResultULA	: in std_logic_vector (WSIZE-1 downto 0);
			MemparaReg, EscreveRegIN	: in std_logic;
			fwdWrtReg2 : in std_logic_vector (4 downto 0);
			wadd : out std_logic_vector (4 downto 0);
			WriData	: out std_logic_vector (WSIZE-1 downto 0);
			EscreveRegOUT : out std_logic
	);
end WRITEBACK;

architecture wbArc of WRITEBACK is
component MUX_2
	port (
			IN0, IN1	: in std_logic_vector(WSIZE-1 downto 0);
			sel	: in std_logic;
			S	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

signal WriDataIN	: std_logic_vector (WSIZE-1 downto 0);

begin

	MUX_DATA: MUX_2 port map (ResultMemDado, ResultULA, MemparaReg, WriDataIN);
	
	process(clk, rst, ResultMemDado, ResultULA, MemparaReg, EscreveRegIN, fwdWrtReg2, WriDataIN)
	begin
		if rst = '1' then
			WriData <= (others => '0');
			wadd <= (others => '0');
			EscreveRegOUT <= '0';
		else
			WriData <= WriDataIN;
			wadd <= fwdWrtReg2;
			EscreveRegOUT <= EscreveRegIN;
		end if;
	end process;
	
end wbArc;