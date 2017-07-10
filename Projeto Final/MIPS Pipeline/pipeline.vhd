--------------- PIPELINE ---------------
-- Desenvolvido por:
---- Ingrid Santana Lopes (14/0083065)
---- Marcos Paulo Cayres Rosa (14/0027131)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipeline is
	generic(WSIZE : natural := 32);
	port (
			entSEL   : in std_logic_vector(2 downto 0);
			clkIN		: in std_logic;
			rst		: in std_logic := '0';
			op_ula	: out std_logic_vector(3 downto 0);
			ula_out  : out std_logic_vector(WSIZE-1 downto 0);
			ctr		: out std_logic;
			inst_out	: out std_logic_vector(WSIZE-1 downto 0);
			data		: out std_logic_vector(WSIZE-1 downto 0);
			s1, s2	: out std_logic_vector(WSIZE-1 downto 0);
			t1, t2	: out std_logic_vector(4 downto 0);
			pc_out	: out std_logic_vector(WSIZE-1 downto 0);
			s7seg0, s7seg1, s7seg2, s7seg3, s7seg4, s7seg5, s7seg6, s7seg7 : out std_logic_vector (7 downto 0)
	);
end pipeline;

architecture pipelineArc of pipeline is

component FETCH is
	port (
			PCBranch	: in std_logic_vector(WSIZE-1 downto 0);
			OrigPC	: in std_logic;
			clk, rst, inicio	: in std_logic;
			PCatual, PC4out	: out std_logic_vector(WSIZE-1 downto 0);
			instr		: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component DECODE is
	port (
			clk, rst	: IN std_logic;
			instr		: IN std_logic_vector (WSIZE-1 DOWNTO 0);
			PC4	: IN std_logic_vector (WSIZE-1 downto 0);
			EscreveReg	: IN std_logic;
			wadd : IN std_logic_vector (4 downto 0);
			wdata : IN std_logic_vector (WSIZE-1 downto 0);
			ula_ctr : OUT std_logic_vector(3 downto 0);
			LeMem	: OUT std_logic;
			EscreveMem	: OUT std_logic;
			MemparaReg	: OUT std_logic;
			OrigPC	: OUT std_logic;
			OrigAALU : OUT std_logic;
			EscreveRegFwd	: OUT std_logic;
			RegDst, isJALout, isShift	: OUT std_logic;
			PCbranch	: OUT std_logic_vector (WSIZE-1 downto 0);
			signOut	: OUT std_logic_vector (WSIZE-1 downto 0);
			saida1, saida2, instrAUX : OUT std_logic_vector (WSIZE-1 downto 0)
	);
end component;

component EXECUTE is
	port (
			clk, rst	: in std_logic;
			instr		: in std_logic_vector (WSIZE-1 DOWNTO 0);
			ula_ctr : in std_logic_vector (3 downto 0);
			saida1, saida2, imm32 : in std_logic_vector (WSIZE-1 downto 0);
			RegDst, EscreveMemFwd, MemparaRegIN, EscreveRegIN: in std_logic;
			WriData	: in std_logic_vector (WSIZE-1 downto 0);
			OrigAALU, isShift : in std_logic;
			ResultULA, wrtData	: out std_logic_vector (WSIZE-1 downto 0);
			vai, zero, ovfl, EscreveMem, MemparaRegOUT, EscreveRegOUT : out std_logic;
			fwdWrtReg1 : out std_logic_vector (4 downto 0)
	);
end component;

component MEMDADOS is
	port (
			clk, rst	: in std_logic;
			saida2 : in std_logic_vector (WSIZE-1 downto 0);
			fwdWrtReg1 : in std_logic_vector (4 downto 0);
			EscreveMem, MemparaRegIN, EscreveRegIN	: in std_logic;
			ResultULAIN	: in std_logic_vector (WSIZE-1 downto 0);
			fwdWrtReg2 : out std_logic_vector (4 downto 0);
			ResultMemDado, ResultULAOUT	: out std_logic_vector (WSIZE-1 downto 0);
			MemparaRegOUT, EscreveRegOUT : out std_logic
	);
end component;

component WRITEBACK is
	port (
			clk, rst		: in std_logic;
			ResultMemDado, ResultULA	: in std_logic_vector (WSIZE-1 downto 0);
			MemparaReg, EscreveRegIN	: in std_logic;
			fwdWrtReg2 : in std_logic_vector (4 downto 0);
			wadd : out std_logic_vector (4 downto 0);
			WriData	: out std_logic_vector (WSIZE-1 downto 0);
			EscreveRegOUT : out std_logic
	);
end component;

component MUX_6 is
	port(
			IN0,IN1,IN2,IN3,IN4,IN5: in std_logic_vector(31 downto 0);
			sel: in std_logic_vector(2 downto 0);
			S: out std_logic_vector(31 downto 0)
	);
end component;

component bin_7seg is
    port(
			DADO : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			S : out STD_LOGIC_vector (7 downto 0)
    );
 end component;

----- FETCH
signal PCatual, PCbranchDelay, PCbranch, PC4	: std_logic_vector (WSIZE-1 downto 0) := (others => '0');
signal instr, instrAUX	: STD_LOGIC_VECTOR (WSIZE-1 DOWNTO 0);

----- DECODE
-- BREG
signal wadd : std_logic_vector(4 downto 0);
signal wdata : std_logic_vector(WSIZE-1 downto 0);
signal saida1, saida2, imm32 : std_logic_vector(WSIZE-1 downto 0);
-- CONTROLE
signal 	ula_ctr : std_logic_vector(3 downto 0);
signal	LeMem		: std_logic;
signal	EscreveMem, EscreveMemFwd	: std_logic;
signal	MemparaReg, MemparaRegFwd, MemparaRegFwd2	: std_logic;
signal	OrigPC	: std_logic := '1';
signal	OrigAALU : std_logic;
signal	EscreveReg, EscreveRegFwd, EscreveRegFwd2, EscreveRegFwd3	: std_logic := '0';
signal	RegDst, isJAL, isShift	: std_logic := '0';

----- EXECUTE
signal ResultULA, ResultULAFwd, wrtMem: std_logic_vector (WSIZE-1 downto 0);
signal vai, zero, ovfl : std_logic;
signal fwdWrtReg1, fwdWrtReg2 : std_logic_vector (4 downto 0);

----- MEM
signal ResultMemDado: std_logic_vector (WSIZE-1 downto 0);

---- AUXILIARES
signal clk, not_clkIN : std_logic;
signal inicio : std_logic := '1';

---- MUX_DISPLAY
signal sfinal : std_logic_vector (WSIZE-1 downto 0);

begin
	-- TIPOS DE INSTRUÇÕES TRABALHADAS:
	-- ACESSO À MEMÓRIA DE DADOS: LW, SW
	-- OPERAÇÕES ULA: ADD, ADDi, SUB, AND, OR, NOR, XOR, SLT, SLL, SRL, SRA
	-- SALTOS INCONDICIONAIS: J, JR, JAL
	-- SALTOS CONDICIONAIS (COM ULA): BEQ, BNE

	-- FETCH
	not_clkIN <= not(clkIN);
	PIP1: FETCH port map (PCbranch, OrigPC, clk, rst, inicio, PCatual, PC4, instr);
	
	-- DECODE
	PIP2: DECODE port map (not_clkIN, rst, instr, PC4, EscreveReg, wadd, wdata,
			ula_ctr, LeMem, EscreveMemFwd, MemparaRegFwd, OrigPC, 
			OrigAALU, EscreveRegFwd, RegDst, isJAL, isShift, PCbranch, imm32, saida1, saida2, instrAUX);
	
	-- EXECUTE
	PIP3: EXECUTE port map (clk, rst, instrAUX, ula_ctr, saida1, saida2, imm32, 
									RegDst, EscreveMemFwd, MemparaRegFwd, EscreveRegFwd, wdata,
									OrigAALU, isShift, ResultULAFwd, wrtMem, vai, zero, ovfl, 
									EscreveMem, MemparaRegFwd2, EscreveRegFwd2, fwdWrtReg1);
	
	-- MEM
	PIP4: MEMDADOS port map (clk, rst, wrtMem, fwdWrtReg1, EscreveMem, MemparaRegFwd2, EscreveRegFwd2,
									ResultULAFwd, fwdWrtReg2, ResultMemDado, ResultULA, MemparaReg, EscreveRegFwd3);

	-- WB
	PIP5: WRITEBACK port map (clk, rst, ResultMemDado, ResultULA, MemparaReg, EscreveRegFwd3, fwdWrtReg2,
										wadd, wdata, EscreveReg);
										
										
	MUXAO: MUX_6 port map (saida1, saida2, PCatual, ResultULAFwd, instr, wdata, entSEL, sfinal);
	
	SEG70: bin_7seg port map (sfinal(3 downto 0), s7seg0);
	SEG71: bin_7seg port map (sfinal(7 downto 4), s7seg1);
	SEG72: bin_7seg port map (sfinal(11 downto 8), s7seg2);
	SEG73: bin_7seg port map (sfinal(15 downto 12), s7seg3);
	SEG74: bin_7seg port map (sfinal(19 downto 16), s7seg4);
	SEG75: bin_7seg port map (sfinal(23 downto 20), s7seg5);
	SEG76: bin_7seg port map (sfinal(27 downto 24), s7seg6);
	SEG77: bin_7seg port map (sfinal(31 downto 28), s7seg7);
	
	-- Saí­das
	t1 <= instrAUX(25 downto 21);
	t2 <= instrAUX(20 downto 16);
	inst_out <= instr;
	pc_out <= PCatual;
	s1 <= saida1;
	s2 <= saida2;
	op_ula <= ula_ctr;
	ula_out <= ResultULAFwd;
	data <= wdata;
	ctr <= OrigPC;
	
	-- Lógica para iní­cio e JAL
	process (clkIN, not_clkIN, inicio, isJAL) is
	begin
		if (inicio = '1') then
			clk	<= not_clkIN;
			if (rising_edge(clkIN)) then
				inicio <= '0';
			end if;
		else
			clk	<= not_clkIN or isJAL;
		end if;
	end process;
	
end pipelineArc;