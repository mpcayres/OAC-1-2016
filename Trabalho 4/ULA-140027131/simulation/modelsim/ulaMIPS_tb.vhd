-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/26/2016 15:36:42"
                                                            
-- Vhdl Test Bench template for design  :  ulaMIPS
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ulaMIPS_tb IS
END ulaMIPS_tb;
ARCHITECTURE ulaMIPS_arch OF ulaMIPS_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL vai : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
SIGNAL ovfl : STD_LOGIC;

COMPONENT ulaMIPS
	PORT (
	A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	vai : OUT STD_LOGIC;
	zero : OUT STD_LOGIC;
	ovfl : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ulaMIPS
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	opcode => opcode,
	Z => Z,
	vai => vai,
	zero => zero,
	ovfl => ovfl
	);

	PROCESS                                               
-- variable declarations                                                                        
	BEGIN             
		-- AND
		A <= (31 | 30 => '1', others => '0');
		B <= (0 | 1 => '0', others => '1');
		opcode <= "0000";
		wait for 10 ns;
		A <= (0 | 2 | 4 | 6 | 8 | 10 | 12 | 14 | 16 => '1', others => '0');
		B <= (0 | 3 | 6 | 9 | 12 | 15 => '0', others => '1');
		opcode <= "0000";
		wait for 10 ns;
		
		-- OR
		A <= (31 | 30 => '1', others => '0');
		B <= (0 | 1 => '0', others => '1');
		opcode <= "0001";
		wait for 10 ns;
		A <= (0 | 2 | 4 | 6 | 8 | 10 | 12 | 14 | 16 => '1', others => '0');
		B <= (0 | 3 | 6 | 9 | 12 | 15 => '0', others => '1');
		opcode <= "0001";
		wait for 10 ns;
		
		-- ADD
		A <= (others => '1');
		B <= (0 => '1', others => '0');
		opcode <= "0010";
		wait for 10 ns;
		A <= (0 => '1', others => '0');
		B <= (31 => '0', others => '1');
		opcode <= "0010";
		wait for 10 ns;
		A <= (others => '0');
		B <= (others => '1');
		opcode <= "0010";
		wait for 10 ns;
		A <= (1 | 2 | 3 | 4 | 5 => '1', others => '0');
		B <= (3 | 4 | 5 | 6 | 7 => '1', others => '0');
		opcode <= "0010";
		wait for 10 ns;
		
		-- SUB
		A <= (0 => '1', others => '0');
		B <= (0 | 31 => '1', others => '0');
		opcode <= "0011";
		wait for 10 ns;
		A <= (others => '1');
		B <= (0 => '1', others => '0');
		opcode <= "0011";
		wait for 10 ns;
		A <= (0 => '1', others => '0');
		B <= (31 => '0', others => '1');
		opcode <= "0011";
		wait for 10 ns;
		A <= (others => '0');
		B <= (others => '1');
		opcode <= "0011";
		wait for 10 ns;
		A <= (0 | 31 => '1', others => '0');
		B <= (31 => '0', others => '1');
		opcode <= "0011";
		wait for 10 ns;
		
		-- SLT
		A <= (0 | 1 => '1', others => '0');
		B <= (31 | 30 => '0', others => '1');
		opcode <= "0100";
		wait for 10 ns;
		A <= (0 | 1 => '1', others => '0');
		B <= (0 | 1 => '1', others => '0');
		opcode <= "0100";
		wait for 10 ns;
		A <= (others => '0');
		B <= (others => '1');
		opcode <= "0100";
		wait for 10 ns;
		A <= (0 | 1 => '0', others => '1');
		B <= (others => '1');
		opcode <= "0100";
		wait for 10 ns;
		
		-- NOR
		A <= (31 | 30 => '1', others => '0');
		B <= (0 | 1 => '0', others => '1');
		opcode <= "0101";
		wait for 10 ns;
		A <= (0 | 2 | 4 | 6 | 8 | 10 | 12 | 14 | 16 => '1', others => '0');
		B <= (0 | 3 | 6 | 9 | 12 | 15 => '0', others => '1');
		opcode <= "0101";
		wait for 10 ns;
		
		-- XOR
		A <= (31 | 30 => '1', others => '0');
		B <= (0 | 1 => '0', others => '1');
		opcode <= "0110";
		wait for 10 ns;
		A <= (0 | 2 | 4 | 6 | 8 | 10 | 12 | 14 | 16 => '1', others => '0');
		B <= (0 | 3 | 6 | 9 | 12 | 15 => '0', others => '1');
		opcode <= "0110";
		wait for 10 ns;
		
		-- SLL
		A <= (0 | 1 => '1', others => '0');
		B <= (30 | 29 | 28 => '0', others => '1');
		opcode <= "0111";
		wait for 10 ns;
		A <= (1  => '0', others => '1');
		B <= (1 | 2 | 3 => '0', others => '1');
		opcode <= "0111";
		wait for 10 ns;
		A <= (0 | 1 | 2 | 3 | 4 => '1', others => '0');
		B <= (others => '1');
		opcode <= "0111";
		wait for 10 ns;
		
		-- SRL
		A <= (0 | 1 => '1', others => '0');
		B <= (1 | 2 | 3 => '0', others => '1');
		opcode <= "1000";
		wait for 10 ns;
		A <= (1  => '0', others => '1');
		B <= (30 | 29 | 28 => '0', others => '1');
		opcode <= "1000";
		wait for 10 ns;
		A <= (0 | 1 | 2 | 3 | 4 => '1', others => '0');
		B <= (others => '1');
		opcode <= "1000";
		wait for 10 ns;
		
		-- SRA
		A <= (0 | 1 => '1', others => '0');
		B <= (1 | 2 | 3 => '0', others => '1');
		opcode <= "1001";
		wait for 10 ns;
		A <= (1  => '0', others => '1');
		B <= (30 | 29 | 28 => '0', others => '1');
		opcode <= "1001";
		wait for 10 ns;
		A <= (0 | 1 | 2 | 3 | 4 => '1', others => '0');
		B <= (others => '1');
		opcode <= "1001";
		wait for 10 ns;
		A <= (0 | 2 => '1', others => '0');
		B <= (30 | 29 | 28 => '1', others => '0');
		opcode <= "1001";
		wait for 10 ns;
		
		opcode <= "1111";
		wait for 10 ns;
		wait;
		
	END PROCESS;                                          
END ulaMIPS_arch;
