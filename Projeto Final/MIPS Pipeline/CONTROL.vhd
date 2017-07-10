--------------------  CONTROL -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY CONTROL IS

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
	
END ENTITY;

ARCHITECTURE control_op OF CONTROL IS

	constant iRTYPE		: std_logic_vector(5 downto 0) := "000000"; 
	constant iLW			: std_logic_vector(5 downto 0) := "100011"; 
	constant iSW			: std_logic_vector(5 downto 0) := "101011"; 
	constant iJ				: std_logic_vector(5 downto 0) := "000010"; 
	constant iJAL			: std_logic_vector(5 downto 0) := "000011"; 	
	constant iBEQ			: std_logic_vector(5 downto 0) := "000100"; 
	constant iBNE			: std_logic_vector(5 downto 0) := "000101"; 
	----------------------------------------------------------------
	constant iADDI			: std_logic_vector(5 downto 0) := "001000"; --I-TYPE
	constant iORI			: std_logic_vector(5 downto 0) := "001101"; --I-TYPE
	constant iXORI			: std_logic_vector(5 downto 0) := "001110"; --I-TYPE
	constant iANDI			: std_logic_vector(5 downto 0) := "001100"; --I-TYPE
	constant iSLTI			: std_logic_vector(5 downto 0) := "001010"; --I-TYPE
	----------------------------------------------------------------
	constant fSLL			: std_logic_vector(5 downto 0) := "000000"; --FUNCT
	constant fSRL			: std_logic_vector(5 downto 0) := "000010"; --FUNCT
	constant fSRA			: std_logic_vector(5 downto 0) := "000011"; --FUNCT

	BEGIN
		
process (opcode, funct)
	begin
		LeMem					<= '0'; --lw
		EscreveMem			<= '0'; --sw
		EscrevePCCond		<= '0'; --isBEQ
		Branchifnotequal	<= '0'; --isBNE
		MemparaReg			<= '1'; --MUX MemparaReg
		op_alu				<= "111";
		OrigPC				<= '1'; --MUX PC
		OrigAALU				<= '0'; --MUX ALU
		EscreveRegFwd		<= '0'; --lw, OPs-ULA
		RegDst				<= '0'; --lw, OPs-ULA
		isJMP					<= '0'; --JMP, JAL
		isJAL					<= '0'; --JAL
		isShift				<= '0'; --sll, srl, sra
		
		case opcode is 
		
			when iRTYPE => EscreveRegFwd	<= '1';
								RegDst	<= '1';
								op_alu	<= "010";
								if((funct = fSLL) or (funct = fSRL) or(funct = fSRA)) then
									isShift	<= '1';
								end if;
								
			when iLW		=> EscreveRegFwd	<= '1';
								MemparaReg	<= '0';
								LeMem	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "000";
								
			when iSW		=>	EscreveMem	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "000";
								
			-- SALTOS
			when iJ		=> OrigPC	<= '0';
								isJMP	<= '1';
			when iJAL	=> OrigPC	<= '0';
								isJMP	<= '1';
								isJAL	<= '1';
			when iBEQ	=> EscrevePCCond <= '1';
			when iBNE	=> Branchifnotequal <= '1';
			
			-- TIPO-I
			when iADDI	=> EscreveRegFwd	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "000";
			when iORI	=> EscreveRegFwd	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "100";
			when iXORI	=> EscreveRegFwd	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "001";
			when iANDI	=> EscreveRegFwd	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "101";
			when iSLTI	=> EscreveRegFwd	<= '1';
								OrigAALU	<= '1';
								op_alu	<= "110";
			when others => op_alu	<= "111";
			
		end case;
		
	end process;
		
end control_op;