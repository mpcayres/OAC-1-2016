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
-- Generated on "06/01/2016 20:27:19"
                                                            
-- Vhdl Test Bench template for design  :  bregMIPS
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bregMIPS_tb IS
END bregMIPS_tb;
ARCHITECTURE bregMIPS_tbArch OF bregMIPS_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL clk : STD_LOGIC;
	SIGNAL wren : STD_LOGIC;
	SIGNAL radd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL radd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL wadd : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL wdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL r1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL r2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	COMPONENT bregMIPS
		PORT (
		clk : IN STD_LOGIC;
		wren : IN STD_LOGIC;
		radd1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		radd2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		wadd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		r1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		r2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;
	BEGIN
		i1 : bregMIPS
		PORT MAP (
	-- list connections between master ports and signals
		clk => clk,
		wren => wren,
		radd1 => radd1,
		radd2 => radd2,
		wadd => wadd,
		wdata => wdata,
		r1 => r1,
		r2 => r2
		);
	PROCESS                                               
	-- variable declarations                                     
	BEGIN
		clk	<= '0';
		wren	<= '0';
		radd1	<= (4 => '1', others => '0'); -- reg(16)
		radd2	<= (0 | 1 => '1', others => '0'); -- reg(3)
		wadd	<= (0 | 1 => '1', others => '0'); -- reg(3)
		wdata	<= (others => '1');
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		wait for 10 ns;
		
		clk	<= '1';
		wren	<= '1';
		radd1	<= (others => '0'); -- reg(0)
		wait for 10 ns;
		
		clk	<= '0';
		wren	<= '0';
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<=	'0';
		wren	<= '1';
		wadd	<= (others => '0');
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		wait for 10 ns;
		
		clk	<= '1';
		wait for 5 ns;
		
		radd1	<= (0 | 1 | 4 => '1', others => '0'); -- reg(19)
		radd2	<= (3 => '1', others => '0'); -- reg(8)
		wadd	<= (0 | 1 | 4 => '1', others => '0'); -- reg(19)
		wdata	<= (0 | 4 | 8 | 12 | 16 => '1', others => '0');
		wait for 5 ns;
		
		clk	<= '0';
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		wadd	<= (3 => '1', others => '0'); -- reg(8)
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		radd1	<= (0 | 1 => '1', others => '0'); -- reg(3)
		wdata <= (0 | 31 => '0', others => '1');
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		wren	<= '0';
		wait for 10 ns;
		
		clk	<= '1';
		wait for 10 ns;
		
		clk	<= '0';
		wait for 10 ns;
		wait;
																		  
	END PROCESS;                                         
END bregMIPS_tbArch;
