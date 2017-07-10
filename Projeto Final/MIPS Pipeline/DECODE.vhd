------- DECODE -----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DECODE is
	generic(WSIZE : natural := 32);
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
end DECODE;

architecture decodeArc of DECODE is

component bregMIPS
	port (
			clk, rst, wren	: in std_logic;
			radd1, radd2, wadd	: in std_logic_vector(4 downto 0);
			wdata		: in std_logic_vector(WSIZE-1 downto 0);
			r1, r2	: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component sign_ext
	port (
			imm16: in std_logic_vector(15 downto 0);
			imm32: out std_logic_vector(31 downto 0)
	);
end component;

component SOM
	port (
			a	: in std_logic_vector	((WSIZE-1) downto 0);
			b	: in std_logic_vector	((WSIZE-1) downto 0);
			result	: out std_logic_vector ((WSIZE-1) downto 0)
	);
end component;

component ulaCONTROL is
	port (
			op_alu		: in std_logic_vector(2 downto 0);
			funct			: in std_logic_vector(5 downto 0);
			alu_ctr	   : out std_logic_vector(3 downto 0)
	);
end component;

component ShiftLeft is
	port(
			INP: in std_logic_vector(WSIZE-1 downto 0);
			OUTP: out std_logic_vector(WSIZE-1 downto 0)
	);
end component;

component CONTROL is
	PORT (
			rst	: IN std_logic;
			opcode	: IN std_logic_vector (5 DOWNTO 0);
			funct	: IN std_logic_vector (5 DOWNTO 0);
			LeMem	: OUT std_logic;
			EscreveMem	: OUT std_logic;
			EscrevePCCond	: OUT std_logic; -- isBEQ
			Branchifnotequal	: OUT std_logic; -- isBNE
			MemparaReg	: OUT std_logic;
			op_alu	: OUT std_logic_vector (2 DOWNTO 0);
			OrigPC	: OUT std_logic;
			OrigAALU : OUT std_logic;
			EscreveRegFwd	: OUT std_logic;
			RegDst	: OUT std_logic;
			isJMP	: OUT std_logic;
			isJAL	: OUT std_logic;
			isShift	: OUT std_logic
	);
end component;

component ID_EX is
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
end component;

----- DECODE
-- CONTROLE ULA
signal opULA	: std_logic_vector (2 DOWNTO 0);

-- SIGN_EXT 
signal imm32, imediato : std_logic_vector(31 downto 0);

-- SHIFT LEFT
signal saidaSh: std_logic_vector(WSIZE-1 downto 0);

-- CONTROLE
signal ula_ctrIN : std_logic_vector(3 downto 0);
signal LeMemIN	: std_logic;
signal EscreveMemIN	: std_logic;
signal isBEQ	: std_logic := '0'; 
signal isBNE	: std_logic := '0';
signal MemparaRegIN	: std_logic;
signal OrigPCIN, OrigPCaux, OrigPCctr	: std_logic := '1';
signal OrigAALUIN : std_logic;
signal EscreveRegFwdIN	: std_logic;
signal RegDstIN, isShiftIN	: std_logic;
signal isJAL, isJALaux, riseMark, isJMP  : std_logic := '0';
signal PCbranchIN, PCbranchJR, PCbranchLBL	: std_logic_vector (WSIZE-1 downto 0);
signal saida1IN, saida2IN : std_logic_vector (WSIZE-1 downto 0);

-- BREG
signal wren, clk2 : std_logic;
signal RegEscrita : std_logic_vector (4 downto 0);
signal DataEscrita : std_logic_vector (WSIZE-1 downto 0);

-- CONSTANTES
constant iRTYPE		: std_logic_vector(5 downto 0) := "000000";
constant fJR			: std_logic_vector(5 downto 0) := "001000";

begin
	
	CTRL: CONTROL port map (rst, instr(31 downto 26), instr(5 downto 0),
										LeMemIN, EscreveMemIN, isBEQ, 
										isBNE, MemparaRegIN, opULA, OrigPCctr, 
										OrigAALUIN, EscreveRegFwdIN, RegDstIN, isJMP, isJALaux, isShiftIN);
	ULACONTR: ulaCONTROL port map (opULA, instr(5 downto 0), ula_ctrIN);
	
	BREG: bregMIPS port map (clk, rst, wren, instr(25 downto 21), instr(20 downto 16), 
									RegEscrita, DataEscrita, saida1IN, saida2IN);
	
	SIGNEXT: sign_ext port map (instr(15 downto 0), imediato);
	SHL: ShiftLeft port map (imm32, saidaSh);
	SOMB: SOM port map (saidaSh, PC4, PCbranchLBL);

	OrigPCIN <= OrigPCctr and OrigPCaux;
	clk2	<= clk or isJAL;
	IDEX: ID_EX port map (clk2, rst, ula_ctrIN, LeMemIN, EscreveMemIN, MemparaRegIN,
			OrigPCIN, OrigAALUIN, EscreveRegFwdIN, RegDstIN, isShiftIN, PCbranchIN, saida1IN, saida2IN, imm32, instr,
			ula_ctr, LeMem, EscreveMem, MemparaReg, OrigPC, OrigAALU, EscreveRegFwd, 
			RegDst, isShift, PCbranch, saida1, saida2, signOut, instrAUX);
	
	-- Shifts
	process (instr, isShiftIN, imediato)
	begin
		if(isShiftIN = '1') then
			imm32	<= std_logic_vector(resize(signed(instr(10 downto 6)), imm32'length));
		else
			imm32	<= imediato;
		end if;
	end process;
	
	-- BEQ, BNE, J e JR
	process (isBEQ, isBNE, isJMP, saida1IN, saida2IN, instr, PCbranchLBL)
	begin
		if(isBEQ = '1') then
			if(saida1IN = saida2IN) then
				OrigPCaux <= '0';
			else
				OrigPCaux <= '1';
			end if;
		elsif(isBNE = '1') then
			if(saida1IN /= saida2IN) then
				OrigPCaux <= '0';
			else
				OrigPCaux <= '1';
			end if;
		else
			OrigPCaux <= '1';
		end if;
		
		if(isJMP = '1') then
			PCbranchIN	<= std_logic_vector(resize((unsigned(instr(25 downto 0)) sll 2), imm32'length));
		elsif((instr(31 downto 26) = iRTYPE) and (instr(5 downto 0) = fJR)) then
			OrigPCaux <= '0';
			PCbranchIN <= saida1IN;
		else
			PCbranchIN <= PCbranchLBL;
		end if;
		
	end process;
	
	-- JAL
	process (clk, isJALaux)
	begin
		if(isJALaux = '1') then
			if(rising_edge(clk)) then
				riseMark	<= not(riseMark);
			end if;
		else
			riseMark	<= '0';
		end if;
	end process;
	
	process (riseMark, isJALaux)
	begin
		if(riseMark = '1') then
			isJAL	<= '0';
		else
			isJAL	<= isJALaux;
		end if;
	end process;
	
	isJALOUT	<= isJAL;
	process (isJAL, wadd, wdata, EscreveReg, PC4)
	begin
		if(isJAL = '1') then
			wren <= '1';
			RegEscrita <= (others => '1'); -- $ra = $31
			DataEscrita <= std_logic_vector(unsigned(PC4)); -- $ra <- PC + 4
		else
			wren <= EscreveReg;
			RegEscrita <= wadd;
			DataEscrita <= wdata;
		end if;
	end process;
	
end decodeArc;