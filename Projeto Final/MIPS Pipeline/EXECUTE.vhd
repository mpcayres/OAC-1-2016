------- DECODE -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EXECUTE is
	generic(WSIZE : natural := 32);
	port (
			clk, rst	: in std_logic;
			instr		: in std_logic_vector (WSIZE-1 DOWNTO 0);
			ula_ctr : in std_logic_vector (3 downto 0);
			saida1, saida2, imm32 : in std_logic_vector (WSIZE-1 downto 0);
			RegDst, EscreveMemFwd, MemparaRegIN, EscreveRegIN : in std_logic;
			WriData	: in std_logic_vector (WSIZE-1 downto 0);
			OrigAALU, isShift	: in std_logic;
			ResultULA, wrtData	: out std_logic_vector (WSIZE-1 downto 0);
			vai, zero, ovfl, EscreveMem, MemparaRegOUT, EscreveRegOUT : out std_logic;
			fwdWrtReg1 : out std_logic_vector (4 downto 0)
	);
end EXECUTE;

architecture executeArc of EXECUTE is

component MUX_5bits is
	port(
			IN0, IN1: in std_logic_vector(4 downto 0);
			sel: in std_logic;
			S: out std_logic_vector(4 downto 0)
	);
end component;

component MUX_2
	port (
			IN0, IN1	: in std_logic_vector(WSIZE-1 downto 0);
			sel	: in std_logic;
			S	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component ulaMIPS
	port (
			opcode	: in std_logic_vector(3 downto 0);
			A, B	: in std_logic_vector(WSIZE-1 downto 0);
			Z	: out std_logic_vector(WSIZE-1 downto 0);
			vai, zero, ovfl	: out std_logic
	);
end component;

component EX_MEM is
	port (
			clk, rst		: in std_logic;
			ResultULAIN, saida2	: in std_logic_vector (WSIZE-1 downto 0);
			vaiIN, zeroIN, ovflIN, EscreveMemFwd, MemparaRegIN, EscreveRegIN : in std_logic;
			fwdWrtReg1IN : in std_logic_vector (4 downto 0);
			ResultULA, wrtData	: out std_logic_vector (WSIZE-1 downto 0);
			vai, zero, ovfl, EscreveMem, MemparaRegOUT, EscreveRegOUT : out std_logic;
			fwdWrtReg1 : out std_logic_vector (4 downto 0)
	);
end component;

----- EXECUTE
-- MUX1 e 2
signal ent2ULA, ent1ULA, ent2ULAaux : std_logic_vector(WSIZE-1 downto 0);

signal ResultULAIN	: std_logic_vector (WSIZE-1 downto 0);
signal vaiIN, zeroIN, ovflIN : std_logic;
signal fwdWrtReg1IN : std_logic_vector (4 downto 0);

constant iRTYPE		: std_logic_vector(5 downto 0) := "000000";
constant iSLL			: std_logic_vector(5 downto 0) := "000000";
constant iSRL			: std_logic_vector(5 downto 0) := "000010";
constant iSRA			: std_logic_vector(5 downto 0) := "000011";

begin	
	
	MUX1: MUX_2 port map (saida1, imm32, isShift, ent1ULA);
	MUX2: MUX_2 port map (saida2, imm32, OrigAALU, ent2ULA);
	ULA: ulaMIPS port map (ula_ctr, ent1ULA, ent2ULA, ResultULAIN, vaiIN, zeroIN, ovflIN);
	
	MUXRegDst: MUX_5bits port map (instr(20 downto 16), instr(15 downto 11), RegDst, fwdWrtReg1IN);
	
	EXMEM: EX_MEM port map (clk, rst, ResultULAIN, saida2, vaiIN, zeroIN, ovflIN, 
									EscreveMemFwd, MemparaRegIN, EscreveRegIN, fwdWrtReg1IN, 
									ResultULA, wrtData, vai, zero, ovfl, EscreveMem, MemparaRegOUT, EscreveRegOUT, fwdWrtReg1);
	
end executeArc;