--------------------  ULA CONTROL -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulaCONTROL is
	port (
			op_alu		: in std_logic_vector(2 downto 0);
			funct			: in std_logic_vector(5 downto 0);
			alu_ctr	   : out std_logic_vector(3 downto 0)
	);
end entity;

architecture behav of ulaCONTROL is

	-- Operações da ULA
	constant ULA_ADD		: std_logic_vector(3 downto 0) := "0010"; -- 2
	constant ULA_SUB		: std_logic_vector(3 downto 0) := "0011"; -- 3
	constant ULA_AND		: std_logic_vector(3 downto 0) := "0000"; -- 0
	constant ULA_OR		: std_logic_vector(3 downto 0) := "0001"; -- 1
	constant ULA_XOR		: std_logic_vector(3 downto 0) := "0110"; -- 6
	constant ULA_NOP		: std_logic_vector(3 downto 0) := "1111"; -- 15
	constant ULA_NOR		: std_logic_vector(3 downto 0) := "0101"; -- 5
	constant ULA_SLT		: std_logic_vector(3 downto 0) := "0100"; -- 4
	constant ULA_SLL		: std_logic_vector(3 downto 0) := "0111"; -- 7
	constant ULA_SRL		: std_logic_vector(3 downto 0) := "1000"; -- 8
	constant ULA_SRA		: std_logic_vector(3 downto 0) := "1001"; -- 9
	
	-- Campo FUNCT
	constant iADD			: std_logic_vector(5 downto 0) := "100000";
	constant iSUB			: std_logic_vector(5 downto 0) := "100010";
	constant iAND			: std_logic_vector(5 downto 0) := "100100";
	constant iOR			: std_logic_vector(5 downto 0) := "100101";
	constant iXOR			: std_logic_vector(5 downto 0) := "100110";
	constant iNOR			: std_logic_vector(5 downto 0) := "100111";
	constant iSLT			: std_logic_vector(5 downto 0) := "101010";
	constant iSLL			: std_logic_vector(5 downto 0) := "000000";
	constant iSRL			: std_logic_vector(5 downto 0) := "000010";
	constant iSRA			: std_logic_vector(5 downto 0) := "000011";

begin
	alu_ctr <= -- Default (PC+4)
				ULA_ADD when (op_alu="000") else
				-- Type-R
				ULA_AND when (op_alu="010" and funct=iAND) else		--AND
				ULA_OR  when (op_alu="010" and funct=iOR)  else		--OR
				ULA_XOR when (op_alu="010" and funct=iXOR) else		--XOR
				ULA_SLL when (op_alu="010" and funct=iSLL) else		--SLL - shift left logical
				ULA_SRA when (op_alu="010" and funct=iSRA) else		--SRA - shift right arith
				ULA_SRL when (op_alu="010" and funct=iSRL) else		--SRL - shift right logical
				ULA_ADD when (op_alu="010" and funct=iADD) else		--ADD
				ULA_SUB when (op_alu="010" and funct=iSUB) else		--SUB
				ULA_SLT when (op_alu="010" and funct=iSLT) else		--SLT
				ULA_NOR when (op_alu="010" and funct=iNOR) else		--NOR
				-- Type-I
				ULA_SUB  when (op_alu="011") else							--BEQ, BNE
				ULA_OR   when (op_alu="100") else							--ORI
				ULA_XOR	when (op_alu="001") else							--XOR
				ULA_AND  when (op_alu="101") else							--ANDI
				ULA_SLT  when (op_alu="110") else							--SLTI
				ULA_NOP;
				
end architecture;