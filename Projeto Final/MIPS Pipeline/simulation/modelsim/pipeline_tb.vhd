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
-- Generated on "06/22/2016 10:51:59"
                                                            
-- Vhdl Test Bench template for design  :  pipeline
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pipeline_tb IS
END pipeline_tb;
ARCHITECTURE pipeline_arch OF pipeline_tb IS                                        

-- Sinais da simulação                       
SIGNAL clk, rst, ctr : STD_LOGIC;
SIGNAL pc_out, inst_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL t1, t2	: std_logic_vector(4 downto 0);
SIGNAL s1, s2  : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL op_ula	: std_logic_vector(3 downto 0);
SIGNAL ula_out, data : STD_LOGIC_VECTOR(31 DOWNTO 0);

-- Sinais para teste no FPGA
SIGNAL entSEL   : std_logic_vector(2 downto 0);  
SIGNAL s7seg0, s7seg1, s7seg2, s7seg3, s7seg4, s7seg5, s7seg6, s7seg7 : std_logic_vector(7 downto 0);
SIGNAL not_clk	: STD_LOGIC;

COMPONENT pipeline
	PORT (
			entSEL   : in std_logic_vector(2 downto 0);
			clkIN		: in std_logic;
			rst		: in std_logic;
			op_ula	: out std_logic_vector(3 downto 0);
			ula_out  : out std_logic_vector(31 downto 0);
			ctr		: out std_logic;
			inst_out	: out std_logic_vector(31 downto 0);
			data		: out std_logic_vector(31 downto 0);
			s1, s2	: out std_logic_vector(31 downto 0);
			t1, t2	: out std_logic_vector(4 downto 0);
			pc_out	: out std_logic_vector(31 downto 0);
			s7seg0, s7seg1, s7seg2, s7seg3, s7seg4, s7seg5, s7seg6, s7seg7 : out std_logic_vector (7 downto 0)
	);
END COMPONENT;

BEGIN
	i1 : pipeline
	PORT MAP (
-- list connections between master ports and signals
	entSel => entSel,
	clkIN => not_clk,
	rst => rst,
	op_ula => op_ula,
	ula_out => ula_out,
	ctr => ctr,
	inst_out => inst_out,
	data => data,
	s1 => s1,
	s2 => s2,
	t1 => t1,
	t2 => t2,
	pc_out => pc_out,
	s7seg0 => s7seg0, s7seg1 => s7seg1, s7seg2 => s7seg2, s7seg3 => s7seg3, 
	s7seg4 => s7seg4, s7seg5 => s7seg5, s7seg6 => s7seg6, s7seg7 => s7seg7
	);                                           
PROCESS

VARIABLE cont : integer range 0 to 46;
                                                                      
BEGIN

	entSel <= "010";
	rst <= '0';
	-- Clock barrado para estar de acordo com os testes no FPGA, é invertido no programa principal
	while (cont <= 45) loop
		clk <= '0';
		not_clk <= '1';
		wait for 10 ns;
	  
		clk <= '1';
		not_clk <= '0';
		wait for 10 ns;
	  
	  cont := cont + 1;
	end loop;
  
	clk <= '0';
	not_clk <= '1';
	wait for 10 ns;
		  
	wait;
	
END PROCESS; 
                                         
END pipeline_arch;
