------- FETCH -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FETCH is
	generic(WSIZE : natural := 32);
	port (
			PCbranch	: in std_logic_vector(WSIZE-1 downto 0);
			OrigPC	: in std_logic;
			clk, rst, inicio	: in std_logic;
			PCatual, PC4out	: out std_logic_vector(WSIZE-1 downto 0);
			instr		: out std_logic_vector(WSIZE-1 downto 0)
	);
end FETCH;

architecture fetchArc of FETCH is

component PC
	port (
			pcNovo	: in std_logic_vector(WSIZE-1 downto 0);
			pcDepois	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component MUX_2
	port (
			IN0, IN1	: in std_logic_vector(WSIZE-1 downto 0);
			sel	: in std_logic;
			S	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component SOM
	port (
			a	: in std_logic_vector	((WSIZE-1) downto 0);
			b	: in std_logic_vector	((WSIZE-1) downto 0);
			result	: out std_logic_vector ((WSIZE-1) downto 0)
	);
end component;

component MemInst
	port (
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component IF_ID is
	port (
			clk, rst		: in std_logic;
			PCatualIN, PC4IN	: in std_logic_vector(WSIZE-1 downto 0);
			PCatualOUT, PC4OUT	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

----- FETCH
signal saindoMUX, PC4, PC4aux, PCatualaux, PCatualaux2	: std_logic_vector(WSIZE-1 downto 0) := (others => '0');

begin
	
	MUX_PC: MUX_2 port map (IN0 => PCbranch, IN1 => PC4, 
								 sel => OrigPC, S => saindoMUX);
	ATUAL_PC: PC port map (pcNovo => saindoMUX, 
								  pcDepois => PCatualaux);
								  
	INCR_PC: SOM port map (a => PCatualaux2, b => (2 => '1', others => '0'),
								  result => PC4aux);
								  
	MEM_INSTR: MemInst port map (PCatualaux2(9 downto 2), clk, instr);
	
	IFID: IF_ID port map (clk, rst, PCatualaux2, PC4aux, PCatual, PC4);
	PC4out <= PC4;
	
	process (inicio, PCatualaux) 
	begin
		if(inicio = '1') then
			PCatualaux2	<= (others => '0');
		else
			PCatualaux2	<= PCatualaux;
		end if;
	end process;
	
end fetchArc;