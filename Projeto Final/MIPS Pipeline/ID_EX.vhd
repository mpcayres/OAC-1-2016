------- ID_EX -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ID_EX is
	generic(WSIZE : natural := 32);
	port (
			clk, rst	: IN std_logic;
			ula_ctrIN : IN std_logic_vector(3 downto 0);
			LeMemIN, EscreveMemIN : IN std_logic;
			MemparaRegIN, OrigPCIN, OrigAALUIN	: IN std_logic;
			EscreveRegFwdIN,	RegDstIN, isShiftIN  : IN std_logic;
			PCbranchIN, saida1IN, saida2IN, signImmIN, instr : IN std_logic_vector (WSIZE-1 downto 0);
			ula_ctr : OUT std_logic_vector(3 downto 0);
			LeMem, EscreveMem : OUT std_logic;
			MemparaReg,	OrigPC, OrigAALU	: OUT std_logic;
			EscreveRegFwd,	RegDst, isShift  : OUT std_logic;
			PCbranch, saida1, saida2, signImm, instrAUX : OUT std_logic_vector (WSIZE-1 downto 0)
	);
end ID_EX;

architecture id_exArc of ID_EX is
begin
	process(clk, rst, ula_ctrIN, LeMemIN, EscreveMemIN, MemparaRegIN, instr, isShiftIN,
			OrigPCIN, OrigAALUIN, EscreveRegFwdIN, RegDstIN, PCbranchIN, saida1IN, saida2IN, signImmIN)
	begin
		if rst = '1' then
			ula_ctr <= (others => '1');
			LeMem <= '0';
			EscreveMem <= '0';
			MemparaReg <= '1';
			OrigPC <= '1';
			OrigAALU <= '0';
			EscreveRegFwd <= '0';
			RegDst <= '0';
			isShift	<= '0';
			PCbranch <= (others => '0');
			saida1 <= (others => 'Z');
			saida2 <= (others => 'Z');
			signImm <= (others => '0');
			instrAUX	<= (others => 'Z');
		elsif rising_edge(clk) then
			ula_ctr <= ula_ctrIN;
			LeMem <= LeMemIN;
			EscreveMem <= EscreveMemIN;
			MemparaReg <= MemparaRegIN;
			OrigPC <= OrigPCIN;
			OrigAALU <= OrigAALUIn;
			EscreveRegFwd <= EscreveRegFwdIN;
			RegDst <= RegDstIN;
			isShift	<= isShiftIN;
			PCbranch <= PCbranchIN;
			saida1 <= saida1IN;
			saida2 <= saida2IN;
			signImm <= signImmIN;
			instrAUX	<= instr;
		end if;
	end process;
end id_exArc;