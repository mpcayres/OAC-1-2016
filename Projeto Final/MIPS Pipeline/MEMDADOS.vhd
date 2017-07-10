------- MEMDADOS -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MEMDADOS is
	generic(WSIZE : natural := 32);
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
end MEMDADOS;

architecture memArc of MEMDADOS is

component MemDad
	port (
			address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock	: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (WSIZE-1 downto 0);
			wren	: IN std_logic;
			q	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component MEM_WB is
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
end component;

signal ResultMemDadoIN	: std_logic_vector (WSIZE-1 downto 0);

begin

	MEM_DADO: MemDad port map (ResultULAIN(9 downto 2), clk, saida2, EscreveMem, ResultMemDado);
	
	MEMWB: MEM_WB port map (clk, rst, fwdWrtReg1, MemparaRegIN, EscreveRegIN, ResultULAIN,
									fwdWrtReg2, MemparaRegOUT, EscreveRegOUT, ResultULAOUT);
	
end memArc;