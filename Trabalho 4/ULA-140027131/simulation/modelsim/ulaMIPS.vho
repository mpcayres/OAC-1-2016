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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/27/2016 10:49:28"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ulaMIPS IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Z : OUT std_logic_vector(31 DOWNTO 0);
	vai : OUT std_logic;
	zero : OUT std_logic;
	ovfl : OUT std_logic
	);
END ulaMIPS;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[1]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[2]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[3]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[4]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[5]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[6]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[7]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[8]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[9]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[10]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[12]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[13]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[14]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[15]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[16]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[17]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[18]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[19]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[20]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[21]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[22]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[23]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[24]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[25]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[26]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[27]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[28]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[29]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[30]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[31]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vai	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovfl	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode[1]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ulaMIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_vai : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_ovfl : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \cout~1_combout\ : std_logic;
SIGNAL \cout~2_combout\ : std_logic;
SIGNAL \cout~3_combout\ : std_logic;
SIGNAL \cout~4_combout\ : std_logic;
SIGNAL \cout~5_combout\ : std_logic;
SIGNAL \cout~6_combout\ : std_logic;
SIGNAL \cout~14_combout\ : std_logic;
SIGNAL \cout~21_combout\ : std_logic;
SIGNAL \cout~22_combout\ : std_logic;
SIGNAL \cout~25_combout\ : std_logic;
SIGNAL \cout~26_combout\ : std_logic;
SIGNAL \cout~29_combout\ : std_logic;
SIGNAL \cout~30_combout\ : std_logic;
SIGNAL \cout~45_combout\ : std_logic;
SIGNAL \cout~46_combout\ : std_logic;
SIGNAL \cout~47_combout\ : std_logic;
SIGNAL \cout~48_combout\ : std_logic;
SIGNAL \cout~51_combout\ : std_logic;
SIGNAL \cout~55_combout\ : std_logic;
SIGNAL \cout~56_combout\ : std_logic;
SIGNAL \cout~57_combout\ : std_logic;
SIGNAL \cout~58_combout\ : std_logic;
SIGNAL \cout~59_combout\ : std_logic;
SIGNAL \cout~61_combout\ : std_logic;
SIGNAL \cout~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~6_combout\ : std_logic;
SIGNAL \ShiftLeft1~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~8_combout\ : std_logic;
SIGNAL \ShiftLeft1~9_combout\ : std_logic;
SIGNAL \ShiftLeft1~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft1~19_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~20_combout\ : std_logic;
SIGNAL \ShiftLeft1~23_combout\ : std_logic;
SIGNAL \ShiftLeft1~25_combout\ : std_logic;
SIGNAL \ShiftLeft1~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft1~27_combout\ : std_logic;
SIGNAL \ShiftLeft1~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft1~30_combout\ : std_logic;
SIGNAL \ShiftLeft1~31_combout\ : std_logic;
SIGNAL \ShiftLeft1~34_combout\ : std_logic;
SIGNAL \ShiftLeft1~35_combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \cout~69_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \Mux29~16_combout\ : std_logic;
SIGNAL \Mux1~26_combout\ : std_logic;
SIGNAL \Mux1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \Mux1~32_combout\ : std_logic;
SIGNAL \ShiftRight2~10_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight2~12_combout\ : std_logic;
SIGNAL \Mux1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux1~41_combout\ : std_logic;
SIGNAL \ShiftRight2~14_combout\ : std_logic;
SIGNAL \ShiftRight2~15_combout\ : std_logic;
SIGNAL \ShiftRight2~16_combout\ : std_logic;
SIGNAL \ShiftRight2~17_combout\ : std_logic;
SIGNAL \cout~70_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \cout~71_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \ShiftLeft1~38_combout\ : std_logic;
SIGNAL \ShiftRight2~18_combout\ : std_logic;
SIGNAL \Mux1~48_combout\ : std_logic;
SIGNAL \Mux1~49_combout\ : std_logic;
SIGNAL \Mux1~52_combout\ : std_logic;
SIGNAL \Mux1~53_combout\ : std_logic;
SIGNAL \soma~3_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \ShiftLeft2~9_combout\ : std_logic;
SIGNAL \ShiftLeft2~10_combout\ : std_logic;
SIGNAL \Mux1~58_combout\ : std_logic;
SIGNAL \Mux1~59_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \cout~74_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux1~62_combout\ : std_logic;
SIGNAL \ShiftLeft1~55_combout\ : std_logic;
SIGNAL \Mux1~63_combout\ : std_logic;
SIGNAL \ShiftLeft1~57_combout\ : std_logic;
SIGNAL \ShiftLeft1~58_combout\ : std_logic;
SIGNAL \Mux1~64_combout\ : std_logic;
SIGNAL \ShiftLeft2~11_combout\ : std_logic;
SIGNAL \ShiftRight2~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \cout~75_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \cout~76_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight2~20_combout\ : std_logic;
SIGNAL \ShiftRight2~21_combout\ : std_logic;
SIGNAL \Mux1~70_combout\ : std_logic;
SIGNAL \Mux1~71_combout\ : std_logic;
SIGNAL \Mux1~73_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \Mux1~74_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \cout~77_combout\ : std_logic;
SIGNAL \ShiftLeft2~15_combout\ : std_logic;
SIGNAL \ShiftRight2~22_combout\ : std_logic;
SIGNAL \ShiftRight2~23_combout\ : std_logic;
SIGNAL \Mux1~75_combout\ : std_logic;
SIGNAL \Mux1~76_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \ShiftRight0~91_combout\ : std_logic;
SIGNAL \cout~79_combout\ : std_logic;
SIGNAL \soma~6_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \cout~80_combout\ : std_logic;
SIGNAL \soma~7_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \ShiftLeft2~16_combout\ : std_logic;
SIGNAL \Mux1~79_combout\ : std_logic;
SIGNAL \Mux1~80_combout\ : std_logic;
SIGNAL \Mux1~81_combout\ : std_logic;
SIGNAL \cout~81_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mux1~87_combout\ : std_logic;
SIGNAL \ShiftRight2~26_combout\ : std_logic;
SIGNAL \ShiftRight0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \cout~82_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \ShiftLeft2~18_combout\ : std_logic;
SIGNAL \ShiftLeft2~19_combout\ : std_logic;
SIGNAL \Mux1~95_combout\ : std_logic;
SIGNAL \Mux1~96_combout\ : std_logic;
SIGNAL \Mux1~97_combout\ : std_logic;
SIGNAL \cout~83_combout\ : std_logic;
SIGNAL \soma~10_combout\ : std_logic;
SIGNAL \soma~11_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \ShiftRight0~95_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \cout~86_combout\ : std_logic;
SIGNAL \soma~14_combout\ : std_logic;
SIGNAL \soma~15_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ShiftRight0~98_combout\ : std_logic;
SIGNAL \ShiftRight0~99_combout\ : std_logic;
SIGNAL \ShiftRight0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \ShiftLeft2~20_combout\ : std_logic;
SIGNAL \ShiftLeft2~21_combout\ : std_logic;
SIGNAL \ShiftRight2~28_combout\ : std_logic;
SIGNAL \ShiftRight2~29_combout\ : std_logic;
SIGNAL \ShiftRight2~30_combout\ : std_logic;
SIGNAL \Mux1~106_combout\ : std_logic;
SIGNAL \ShiftLeft2~22_combout\ : std_logic;
SIGNAL \ShiftLeft2~23_combout\ : std_logic;
SIGNAL \ShiftRight2~31_combout\ : std_logic;
SIGNAL \Mux1~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \cout~88_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux1~115_combout\ : std_logic;
SIGNAL \Mux1~117_combout\ : std_logic;
SIGNAL \cout~89_combout\ : std_logic;
SIGNAL \soma~17_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux1~119_combout\ : std_logic;
SIGNAL \Mux1~120_combout\ : std_logic;
SIGNAL \Mux1~121_combout\ : std_logic;
SIGNAL \cout~90_combout\ : std_logic;
SIGNAL \soma~18_combout\ : std_logic;
SIGNAL \soma~19_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux1~123_combout\ : std_logic;
SIGNAL \Mux1~124_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Mux1~127_combout\ : std_logic;
SIGNAL \Mux1~128_combout\ : std_logic;
SIGNAL \Mux1~129_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \soma~21_combout\ : std_logic;
SIGNAL \soma~22_combout\ : std_logic;
SIGNAL \ShiftLeft1~69_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \ShiftRight0~102_combout\ : std_logic;
SIGNAL \ShiftRight0~103_combout\ : std_logic;
SIGNAL \tmp~4_combout\ : std_logic;
SIGNAL \ShiftRight2~32_combout\ : std_logic;
SIGNAL \tmp~5_combout\ : std_logic;
SIGNAL \tmp~6_combout\ : std_logic;
SIGNAL \tmp~7_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \tmp~8_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \ShiftRight2~33_combout\ : std_logic;
SIGNAL \ShiftRight2~34_combout\ : std_logic;
SIGNAL \ShiftRight2~35_combout\ : std_logic;
SIGNAL \ShiftRight2~36_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux1~135_combout\ : std_logic;
SIGNAL \Mux1~136_combout\ : std_logic;
SIGNAL \Mux1~137_combout\ : std_logic;
SIGNAL \ShiftRight2~37_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \Mux1~139_combout\ : std_logic;
SIGNAL \cout~93_combout\ : std_logic;
SIGNAL \soma~25_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \ShiftLeft1~74_combout\ : std_logic;
SIGNAL \ShiftLeft1~75_combout\ : std_logic;
SIGNAL \ShiftLeft1~77_combout\ : std_logic;
SIGNAL \Mux1~145_combout\ : std_logic;
SIGNAL \cout~95_combout\ : std_logic;
SIGNAL \soma~26_combout\ : std_logic;
SIGNAL \soma~27_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \ShiftRight0~105_combout\ : std_logic;
SIGNAL \ShiftRight0~106_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \tmp~11_combout\ : std_logic;
SIGNAL \tmp~12_combout\ : std_logic;
SIGNAL \tmp~13_combout\ : std_logic;
SIGNAL \tmp~14_combout\ : std_logic;
SIGNAL \tmp~15_combout\ : std_logic;
SIGNAL \ShiftLeft1~78_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \Mux1~147_combout\ : std_logic;
SIGNAL \soma~28_combout\ : std_logic;
SIGNAL \soma~29_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux1~149_combout\ : std_logic;
SIGNAL \Mux1~150_combout\ : std_logic;
SIGNAL \Mux1~151_combout\ : std_logic;
SIGNAL \Mux1~152_combout\ : std_logic;
SIGNAL \Mux1~153_combout\ : std_logic;
SIGNAL \Mux1~155_combout\ : std_logic;
SIGNAL \Mux1~156_combout\ : std_logic;
SIGNAL \Mux1~157_combout\ : std_logic;
SIGNAL \cout~97_combout\ : std_logic;
SIGNAL \soma~30_combout\ : std_logic;
SIGNAL \soma~31_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux1~162_combout\ : std_logic;
SIGNAL \Mux10~13_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \cout~99_combout\ : std_logic;
SIGNAL \Mux1~168_combout\ : std_logic;
SIGNAL \Mux1~169_combout\ : std_logic;
SIGNAL \Mux1~170_combout\ : std_logic;
SIGNAL \soma~34_combout\ : std_logic;
SIGNAL \soma~35_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \ShiftLeft2~27_combout\ : std_logic;
SIGNAL \Mux1~173_combout\ : std_logic;
SIGNAL \Mux1~174_combout\ : std_logic;
SIGNAL \Mux1~175_combout\ : std_logic;
SIGNAL \soma~36_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux1~177_combout\ : std_logic;
SIGNAL \ShiftRight2~42_combout\ : std_logic;
SIGNAL \ShiftRight0~108_combout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \Mux21~11_combout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \Mux23~11_combout\ : std_logic;
SIGNAL \Mux22~11_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux22~12_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \tmp~10_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \tmp~9_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \ShiftRight2~40_combout\ : std_logic;
SIGNAL \Mux1~148_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftLeft1~59_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~104_combout\ : std_logic;
SIGNAL \ShiftLeft2~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft2~6_combout\ : std_logic;
SIGNAL \ShiftLeft1~70_combout\ : std_logic;
SIGNAL \Mux1~138_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Mux29~15_combout\ : std_logic;
SIGNAL \cout~36_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft2~7_combout\ : std_logic;
SIGNAL \Mux1~33_combout\ : std_logic;
SIGNAL \Mux1~42_combout\ : std_logic;
SIGNAL \Mux1~43_combout\ : std_logic;
SIGNAL \Mux1~28_combout\ : std_logic;
SIGNAL \Mux1~27_combout\ : std_logic;
SIGNAL \Mux1~44_combout\ : std_logic;
SIGNAL \ShiftLeft1~83_combout\ : std_logic;
SIGNAL \ShiftLeft1~37_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight1~67_combout\ : std_logic;
SIGNAL \Mux1~39_combout\ : std_logic;
SIGNAL \Mux1~45_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \tmp~1_combout\ : std_logic;
SIGNAL \Mux29~17_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight2~11_combout\ : std_logic;
SIGNAL \ShiftLeft2~5_combout\ : std_logic;
SIGNAL \Mux1~34_combout\ : std_logic;
SIGNAL \Mux1~35_combout\ : std_logic;
SIGNAL \Mux1~36_combout\ : std_logic;
SIGNAL \ShiftLeft1~36_combout\ : std_logic;
SIGNAL \Mux1~29_combout\ : std_logic;
SIGNAL \Mux1~37_combout\ : std_logic;
SIGNAL \Mux29~18_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~39_combout\ : std_logic;
SIGNAL \cout~67_combout\ : std_logic;
SIGNAL \ShiftLeft1~40_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \cout~37_combout\ : std_logic;
SIGNAL \cout~38_combout\ : std_logic;
SIGNAL \soma~4_combout\ : std_logic;
SIGNAL \cout~9_combout\ : std_logic;
SIGNAL \cout~10_combout\ : std_logic;
SIGNAL \soma~5_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \cout~78_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux25~24_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~107_combout\ : std_logic;
SIGNAL \ShiftRight0~109_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Mux1~69_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \Mux1~72_combout\ : std_logic;
SIGNAL \Mux1~77_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \Mux1~78_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~68_combout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft1~52_combout\ : std_logic;
SIGNAL \ShiftLeft1~53_combout\ : std_logic;
SIGNAL \Mux27~12_combout\ : std_logic;
SIGNAL \Mux27~13_combout\ : std_logic;
SIGNAL \Mux27~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \ShiftRight0~92_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \Mux26~10_combout\ : std_logic;
SIGNAL \ShiftLeft1~17_combout\ : std_logic;
SIGNAL \ShiftLeft1~18_combout\ : std_logic;
SIGNAL \Mux26~11_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight2~13_combout\ : std_logic;
SIGNAL \Mux1~82_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \Mux26~12_combout\ : std_logic;
SIGNAL \cout~39_combout\ : std_logic;
SIGNAL \cout~40_combout\ : std_logic;
SIGNAL \cout~11_combout\ : std_logic;
SIGNAL \cout~12_combout\ : std_logic;
SIGNAL \cout~13_combout\ : std_logic;
SIGNAL \Mux25~16_combout\ : std_logic;
SIGNAL \Mux25~17_combout\ : std_logic;
SIGNAL \Mux25~18_combout\ : std_logic;
SIGNAL \Mux25~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Mux25~12_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~93_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \Mux25~11_combout\ : std_logic;
SIGNAL \Mux25~13_combout\ : std_logic;
SIGNAL \Mux25~14_combout\ : std_logic;
SIGNAL \Mux25~15_combout\ : std_logic;
SIGNAL \Mux25~20_combout\ : std_logic;
SIGNAL \ShiftLeft1~21_combout\ : std_logic;
SIGNAL \ShiftLeft1~22_combout\ : std_logic;
SIGNAL \ShiftLeft2~8_combout\ : std_logic;
SIGNAL \Mux1~83_combout\ : std_logic;
SIGNAL \Mux1~84_combout\ : std_logic;
SIGNAL \ShiftRight2~8_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight2~9_combout\ : std_logic;
SIGNAL \Mux1~85_combout\ : std_logic;
SIGNAL \Mux1~86_combout\ : std_logic;
SIGNAL \Mux25~21_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight2~4_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~22_combout\ : std_logic;
SIGNAL \Mux25~23_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \ShiftRight0~96_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftRight0~97_combout\ : std_logic;
SIGNAL \Mux1~54_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \cout~41_combout\ : std_logic;
SIGNAL \cout~42_combout\ : std_logic;
SIGNAL \soma~13_combout\ : std_logic;
SIGNAL \cout~84_combout\ : std_logic;
SIGNAL \cout~85_combout\ : std_logic;
SIGNAL \soma~12_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \ShiftLeft1~60_combout\ : std_logic;
SIGNAL \ShiftLeft2~17_combout\ : std_logic;
SIGNAL \Mux1~101_combout\ : std_logic;
SIGNAL \Mux1~102_combout\ : std_logic;
SIGNAL \Mux1~103_combout\ : std_logic;
SIGNAL \ShiftLeft1~61_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \Mux1~100_combout\ : std_logic;
SIGNAL \Mux1~104_combout\ : std_logic;
SIGNAL \Mux1~99_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \Mux1~105_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \Mux1~107_combout\ : std_logic;
SIGNAL \Mux1~108_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft1~49_combout\ : std_logic;
SIGNAL \ShiftLeft1~64_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \ShiftLeft1~65_combout\ : std_logic;
SIGNAL \Mux1~109_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux23~10_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft1~14_combout\ : std_logic;
SIGNAL \ShiftLeft1~66_combout\ : std_logic;
SIGNAL \ShiftLeft1~85_combout\ : std_logic;
SIGNAL \Mux1~112_combout\ : std_logic;
SIGNAL \Mux1~113_combout\ : std_logic;
SIGNAL \Mux1~110_combout\ : std_logic;
SIGNAL \Mux1~114_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \cout~87_combout\ : std_logic;
SIGNAL \cout~43_combout\ : std_logic;
SIGNAL \cout~44_combout\ : std_logic;
SIGNAL \Mux22~13_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mux22~10_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \ShiftLeft1~63_combout\ : std_logic;
SIGNAL \ShiftLeft1~84_combout\ : std_logic;
SIGNAL \ShiftRight2~7_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \Mux1~94_combout\ : std_logic;
SIGNAL \Mux1~98_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \Mux1~178_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft1~41_combout\ : std_logic;
SIGNAL \ShiftLeft1~42_combout\ : std_logic;
SIGNAL \ShiftLeft1~43_combout\ : std_logic;
SIGNAL \ShiftLeft1~44_combout\ : std_logic;
SIGNAL \Mux1~122_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \cout~7_combout\ : std_logic;
SIGNAL \cout~8_combout\ : std_logic;
SIGNAL \cout~15_combout\ : std_logic;
SIGNAL \cout~16_combout\ : std_logic;
SIGNAL \cout~17_combout\ : std_logic;
SIGNAL \cout~18_combout\ : std_logic;
SIGNAL \cout~19_combout\ : std_logic;
SIGNAL \soma~16_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Mux1~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux1~125_combout\ : std_logic;
SIGNAL \Mux1~179_combout\ : std_logic;
SIGNAL \ShiftLeft1~50_combout\ : std_logic;
SIGNAL \ShiftLeft1~51_combout\ : std_logic;
SIGNAL \ShiftLeft1~54_combout\ : std_logic;
SIGNAL \Mux1~126_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \cout~20_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight2~41_combout\ : std_logic;
SIGNAL \ShiftLeft2~2_combout\ : std_logic;
SIGNAL \ShiftLeft1~16_combout\ : std_logic;
SIGNAL \ShiftLeft2~3_combout\ : std_logic;
SIGNAL \ShiftLeft2~4_combout\ : std_logic;
SIGNAL \Mux1~164_combout\ : std_logic;
SIGNAL \Mux1~165_combout\ : std_logic;
SIGNAL \Mux1~166_combout\ : std_logic;
SIGNAL \Mux1~167_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \ShiftRight2~38_combout\ : std_logic;
SIGNAL \ShiftRight2~39_combout\ : std_logic;
SIGNAL \ShiftLeft1~32_combout\ : std_logic;
SIGNAL \ShiftLeft1~33_combout\ : std_logic;
SIGNAL \ShiftLeft1~71_combout\ : std_logic;
SIGNAL \ShiftLeft2~28_combout\ : std_logic;
SIGNAL \Mux1~140_combout\ : std_logic;
SIGNAL \soma~24_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \ShiftRight2~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft1~46_combout\ : std_logic;
SIGNAL \ShiftLeft1~62_combout\ : std_logic;
SIGNAL \ShiftLeft1~76_combout\ : std_logic;
SIGNAL \ShiftLeft2~25_combout\ : std_logic;
SIGNAL \ShiftLeft2~26_combout\ : std_logic;
SIGNAL \Mux1~146_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \ShiftLeft1~82_combout\ : std_logic;
SIGNAL \ShiftLeft1~81_combout\ : std_logic;
SIGNAL \Mux1~46_combout\ : std_logic;
SIGNAL \Mux1~181_combout\ : std_logic;
SIGNAL \Mux1~176_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \cout~49_combout\ : std_logic;
SIGNAL \cout~50_combout\ : std_logic;
SIGNAL \cout~101_combout\ : std_logic;
SIGNAL \soma~37_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \ShiftLeft1~79_combout\ : std_logic;
SIGNAL \Mux1~154_combout\ : std_logic;
SIGNAL \Mux1~158_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \cout~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \cout~98_combout\ : std_logic;
SIGNAL \cout~23_combout\ : std_logic;
SIGNAL \cout~24_combout\ : std_logic;
SIGNAL \soma~32_combout\ : std_logic;
SIGNAL \cout~52_combout\ : std_logic;
SIGNAL \cout~53_combout\ : std_logic;
SIGNAL \cout~54_combout\ : std_logic;
SIGNAL \soma~33_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux1~50_combout\ : std_logic;
SIGNAL \Mux1~47_combout\ : std_logic;
SIGNAL \ShiftLeft2~14_combout\ : std_logic;
SIGNAL \Mux1~159_combout\ : std_logic;
SIGNAL \Mux1~160_combout\ : std_logic;
SIGNAL \ShiftLeft1~47_combout\ : std_logic;
SIGNAL \ShiftLeft1~48_combout\ : std_logic;
SIGNAL \Mux1~161_combout\ : std_logic;
SIGNAL \Mux1~163_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \cout~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \ShiftLeft1~80_combout\ : std_logic;
SIGNAL \Mux1~171_combout\ : std_logic;
SIGNAL \Mux1~172_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \ShiftLeft1~15_combout\ : std_logic;
SIGNAL \ShiftLeft1~73_combout\ : std_logic;
SIGNAL \Mux1~51_combout\ : std_logic;
SIGNAL \ShiftRight2~24_combout\ : std_logic;
SIGNAL \ShiftRight2~25_combout\ : std_logic;
SIGNAL \Mux1~141_combout\ : std_logic;
SIGNAL \Mux1~142_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft1~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft1~10_combout\ : std_logic;
SIGNAL \ShiftLeft1~12_combout\ : std_logic;
SIGNAL \Mux1~143_combout\ : std_logic;
SIGNAL \Mux1~180_combout\ : std_logic;
SIGNAL \ShiftLeft1~72_combout\ : std_logic;
SIGNAL \Mux1~144_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux10~14_combout\ : std_logic;
SIGNAL \Mux10~15_combout\ : std_logic;
SIGNAL \cout~94_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \cout~72_combout\ : std_logic;
SIGNAL \soma~2_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux8~17_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux1~89_combout\ : std_logic;
SIGNAL \Mux1~90_combout\ : std_logic;
SIGNAL \Mux1~88_combout\ : std_logic;
SIGNAL \ShiftLeft1~45_combout\ : std_logic;
SIGNAL \Mux1~92_combout\ : std_logic;
SIGNAL \Mux1~93_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \cout~27_combout\ : std_logic;
SIGNAL \soma~9_combout\ : std_logic;
SIGNAL \Mux8~13_combout\ : std_logic;
SIGNAL \soma~8_combout\ : std_logic;
SIGNAL \Mux8~14_combout\ : std_logic;
SIGNAL \Mux8~15_combout\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~56_combout\ : std_logic;
SIGNAL \ShiftLeft1~67_combout\ : std_logic;
SIGNAL \Mux1~116_combout\ : std_logic;
SIGNAL \Mux1~91_combout\ : std_logic;
SIGNAL \Mux1~118_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \cout~28_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ShiftLeft1~68_combout\ : std_logic;
SIGNAL \Mux1~130_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \cout~91_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \ShiftRight0~101_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \cout~60_combout\ : std_logic;
SIGNAL \soma~20_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft1~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft1~24_combout\ : std_logic;
SIGNAL \Mux1~133_combout\ : std_logic;
SIGNAL \ShiftRight2~27_combout\ : std_logic;
SIGNAL \Mux1~131_combout\ : std_logic;
SIGNAL \Mux1~132_combout\ : std_logic;
SIGNAL \Mux1~134_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \soma~23_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \cout~92_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux1~56_combout\ : std_logic;
SIGNAL \Mux1~57_combout\ : std_logic;
SIGNAL \Mux1~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Mux1~55_combout\ : std_logic;
SIGNAL \Mux1~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux1~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \cout~31_combout\ : std_logic;
SIGNAL \cout~62_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \cout~73_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \ShiftLeft2~12_combout\ : std_logic;
SIGNAL \ShiftLeft2~13_combout\ : std_logic;
SIGNAL \Mux1~65_combout\ : std_logic;
SIGNAL \Mux1~66_combout\ : std_logic;
SIGNAL \Mux1~67_combout\ : std_logic;
SIGNAL \Mux1~68_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \tmp~2_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \cout~68_combout\ : std_logic;
SIGNAL \cout~63_combout\ : std_logic;
SIGNAL \cout~64_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \ShiftRight2~6_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \soma~1_combout\ : std_logic;
SIGNAL \cout~32_combout\ : std_logic;
SIGNAL \cout~33_combout\ : std_logic;
SIGNAL \soma~0_combout\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Mux1~21_combout\ : std_logic;
SIGNAL \Mux1~22_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Mux1~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Mux1~23_combout\ : std_logic;
SIGNAL \Mux1~24_combout\ : std_logic;
SIGNAL \Mux1~182_combout\ : std_logic;
SIGNAL \ShiftRight2~5_combout\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \Mux1~183_combout\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \Mux1~25_combout\ : std_logic;
SIGNAL \cout~34_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \cout~35_combout\ : std_logic;
SIGNAL \cout~66_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \opcode~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_opcode <= opcode;
ww_A <= A;
ww_B <= B;
Z <= ww_Z;
vai <= ww_vai;
zero <= ww_zero;
ovfl <= ww_ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X33_Y21_N0
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\A~combout\(8) & (!\Add0~15\ & VCC)) # (!\A~combout\(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((!\A~combout\(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X33_Y21_N4
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\A~combout\(10) & (!\Add0~19\ & VCC)) # (!\A~combout\(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((!\A~combout\(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X33_Y21_N16
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\A~combout\(16) & (!\Add0~31\ & VCC)) # (!\A~combout\(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((!\A~combout\(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X33_Y21_N18
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\A~combout\(17) & ((\Add0~33\) # (GND))) # (!\A~combout\(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((\A~combout\(17)) # (!\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X33_Y21_N20
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\A~combout\(18) & (!\Add0~35\ & VCC)) # (!\A~combout\(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((!\A~combout\(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X33_Y21_N22
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\A~combout\(19) & ((\Add0~37\) # (GND))) # (!\A~combout\(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((\A~combout\(19)) # (!\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X33_Y21_N24
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\A~combout\(20) & (!\Add0~39\ & VCC)) # (!\A~combout\(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((!\A~combout\(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X33_Y21_N26
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\A~combout\(21) & ((\Add0~41\) # (GND))) # (!\A~combout\(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((\A~combout\(21)) # (!\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X33_Y21_N28
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\A~combout\(22) & (!\Add0~43\ & VCC)) # (!\A~combout\(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((!\A~combout\(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X33_Y21_N30
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\A~combout\(23) & ((\Add0~45\) # (GND))) # (!\A~combout\(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((\A~combout\(23)) # (!\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X33_Y20_N0
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\A~combout\(24) & (!\Add0~47\ & VCC)) # (!\A~combout\(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((!\A~combout\(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X33_Y20_N6
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\A~combout\(27) & ((\Add0~53\) # (GND))) # (!\A~combout\(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((\A~combout\(27)) # (!\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X33_Y20_N12
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\A~combout\(30) & (!\Add0~59\ & VCC)) # (!\A~combout\(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((!\A~combout\(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X38_Y24_N2
\cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~1_combout\ = (\B~combout\(26)) # (!\A~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(26),
	combout => \cout~1_combout\);

-- Location: LCCOMB_X36_Y22_N0
\cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~2_combout\ = (!\A~combout\(20) & \B~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datac => \B~combout\(20),
	combout => \cout~2_combout\);

-- Location: LCCOMB_X35_Y21_N24
\cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~3_combout\ = (\B~combout\(20)) # (!\A~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(20),
	datac => \B~combout\(20),
	combout => \cout~3_combout\);

-- Location: LCCOMB_X31_Y21_N8
\cout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~4_combout\ = (!\A~combout\(15) & \B~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(15),
	datad => \B~combout\(15),
	combout => \cout~4_combout\);

-- Location: LCCOMB_X30_Y21_N16
\cout~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~5_combout\ = (\B~combout\(15)) # (!\A~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datad => \B~combout\(15),
	combout => \cout~5_combout\);

-- Location: LCCOMB_X30_Y23_N24
\cout~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~6_combout\ = (!\A~combout\(12) & \B~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datac => \B~combout\(12),
	combout => \cout~6_combout\);

-- Location: LCCOMB_X32_Y22_N16
\cout~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~14_combout\ = (\B~combout\(6) & ((\cout~13_combout\) # (!\A~combout\(6)))) # (!\B~combout\(6) & (!\A~combout\(6) & \cout~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \cout~13_combout\,
	combout => \cout~14_combout\);

-- Location: LCCOMB_X30_Y21_N18
\cout~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~21_combout\ = (\cout~5_combout\ & ((\A~combout\(14) & (\B~combout\(14) & \cout~20_combout\)) # (!\A~combout\(14) & ((\B~combout\(14)) # (\cout~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~5_combout\,
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	datad => \cout~20_combout\,
	combout => \cout~21_combout\);

-- Location: LCCOMB_X31_Y21_N10
\cout~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~22_combout\ = (\B~combout\(16) & ((\cout~21_combout\) # ((\cout~4_combout\) # (!\A~combout\(16))))) # (!\B~combout\(16) & (!\A~combout\(16) & ((\cout~21_combout\) # (\cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \cout~21_combout\,
	datac => \cout~4_combout\,
	datad => \A~combout\(16),
	combout => \cout~22_combout\);

-- Location: LCCOMB_X35_Y21_N12
\cout~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~25_combout\ = (\cout~3_combout\ & ((\cout~24_combout\ & ((\B~combout\(19)) # (!\A~combout\(19)))) # (!\cout~24_combout\ & (!\A~combout\(19) & \B~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~3_combout\,
	datab => \cout~24_combout\,
	datac => \A~combout\(19),
	datad => \B~combout\(19),
	combout => \cout~25_combout\);

-- Location: LCCOMB_X36_Y22_N2
\cout~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~26_combout\ = (\B~combout\(21) & ((\cout~25_combout\) # ((\cout~2_combout\) # (!\A~combout\(21))))) # (!\B~combout\(21) & (!\A~combout\(21) & ((\cout~25_combout\) # (\cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~25_combout\,
	datab => \cout~2_combout\,
	datac => \B~combout\(21),
	datad => \A~combout\(21),
	combout => \cout~26_combout\);

-- Location: LCCOMB_X38_Y23_N2
\cout~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~29_combout\ = (\cout~28_combout\ & ((\B~combout\(24)) # (!\A~combout\(24)))) # (!\cout~28_combout\ & (!\A~combout\(24) & \B~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~28_combout\,
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \cout~29_combout\);

-- Location: LCCOMB_X38_Y24_N12
\cout~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~30_combout\ = (\cout~1_combout\ & ((\B~combout\(25) & ((\cout~29_combout\) # (!\A~combout\(25)))) # (!\B~combout\(25) & (\cout~29_combout\ & !\A~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \cout~29_combout\,
	datac => \A~combout\(25),
	datad => \cout~1_combout\,
	combout => \cout~30_combout\);

-- Location: LCCOMB_X31_Y24_N2
\cout~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~45_combout\ = (\B~combout\(10) & ((\A~combout\(10)) # (\cout~44_combout\))) # (!\B~combout\(10) & (\A~combout\(10) & \cout~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datac => \cout~44_combout\,
	combout => \cout~45_combout\);

-- Location: LCCOMB_X30_Y24_N28
\cout~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~46_combout\ = (\A~combout\(11) & ((\B~combout\(11)) # (\cout~45_combout\))) # (!\A~combout\(11) & (\B~combout\(11) & \cout~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datac => \B~combout\(11),
	datad => \cout~45_combout\,
	combout => \cout~46_combout\);

-- Location: LCCOMB_X30_Y24_N30
\cout~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~47_combout\ = (\A~combout\(12) & ((\B~combout\(12)) # (\cout~46_combout\))) # (!\A~combout\(12) & (\B~combout\(12) & \cout~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datac => \B~combout\(12),
	datad => \cout~46_combout\,
	combout => \cout~47_combout\);

-- Location: LCCOMB_X30_Y23_N20
\cout~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~48_combout\ = (\cout~47_combout\ & ((\A~combout\(13)) # (\B~combout\(13)))) # (!\cout~47_combout\ & (\A~combout\(13) & \B~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~47_combout\,
	datac => \A~combout\(13),
	datad => \B~combout\(13),
	combout => \cout~48_combout\);

-- Location: LCCOMB_X31_Y21_N6
\cout~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~51_combout\ = (\B~combout\(16) & ((\A~combout\(16)) # (\cout~50_combout\))) # (!\B~combout\(16) & (\A~combout\(16) & \cout~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datac => \A~combout\(16),
	datad => \cout~50_combout\,
	combout => \cout~51_combout\);

-- Location: LCCOMB_X36_Y22_N4
\cout~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~55_combout\ = (\A~combout\(20) & ((\B~combout\(20)) # (\cout~54_combout\))) # (!\A~combout\(20) & (\B~combout\(20) & \cout~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datac => \cout~54_combout\,
	combout => \cout~55_combout\);

-- Location: LCCOMB_X36_Y22_N22
\cout~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~56_combout\ = (\cout~55_combout\ & ((\B~combout\(21)) # (\A~combout\(21)))) # (!\cout~55_combout\ & (\B~combout\(21) & \A~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~55_combout\,
	datac => \B~combout\(21),
	datad => \A~combout\(21),
	combout => \cout~56_combout\);

-- Location: LCCOMB_X38_Y22_N18
\cout~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~57_combout\ = (\A~combout\(22) & ((\B~combout\(22)) # (\cout~56_combout\))) # (!\A~combout\(22) & (\B~combout\(22) & \cout~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \B~combout\(22),
	datac => \cout~56_combout\,
	combout => \cout~57_combout\);

-- Location: LCCOMB_X38_Y23_N12
\cout~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~58_combout\ = (\cout~57_combout\ & ((\A~combout\(23)) # (\B~combout\(23)))) # (!\cout~57_combout\ & (\A~combout\(23) & \B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~57_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \cout~58_combout\);

-- Location: LCCOMB_X38_Y23_N22
\cout~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~59_combout\ = (\cout~58_combout\ & ((\A~combout\(24)) # (\B~combout\(24)))) # (!\cout~58_combout\ & (\A~combout\(24) & \B~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~58_combout\,
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \cout~59_combout\);

-- Location: LCCOMB_X38_Y24_N24
\cout~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~61_combout\ = (\B~combout\(26) & ((\A~combout\(26)) # (\cout~60_combout\))) # (!\B~combout\(26) & (\A~combout\(26) & \cout~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \A~combout\(26),
	datac => \cout~60_combout\,
	combout => \cout~61_combout\);

-- Location: LCCOMB_X29_Y22_N16
\cout~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~65_combout\ = (\cout~64_combout\ & ((\B~combout\(30)) # (\A~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~64_combout\,
	datac => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \cout~65_combout\);

-- Location: LCCOMB_X30_Y24_N8
\ShiftLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\A~combout\(9)) # ((\A~combout\(11)) # ((\A~combout\(10)) # (\A~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \A~combout\(11),
	datac => \A~combout\(10),
	datad => \A~combout\(12),
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X38_Y23_N8
\ShiftLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\A~combout\(23)) # ((\A~combout\(24)) # ((\A~combout\(22)) # (\A~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \A~combout\(24),
	datac => \A~combout\(22),
	datad => \A~combout\(21),
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X32_Y21_N12
\ShiftRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (!\Add0~38_combout\ & (!\Add0~36_combout\ & (!\Add0~34_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~34_combout\,
	datad => \Add0~40_combout\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X33_Y20_N24
\ShiftRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (!\Add0~46_combout\ & (!\Add0~48_combout\ & (!\Add0~42_combout\ & !\Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~42_combout\,
	datad => \Add0~44_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X35_Y25_N26
\ShiftLeft1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~6_combout\ = (\A~combout\(0) & (\B~combout\(29))) # (!\A~combout\(0) & ((\B~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \B~combout\(29),
	datad => \B~combout\(30),
	combout => \ShiftLeft1~6_combout\);

-- Location: LCCOMB_X35_Y25_N4
\ShiftLeft1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~7_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & (\ShiftLeft0~11_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \ShiftLeft1~6_combout\,
	combout => \ShiftLeft1~7_combout\);

-- Location: LCCOMB_X36_Y28_N16
\ShiftLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\A~combout\(0) & (\B~combout\(23))) # (!\A~combout\(0) & ((\B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(23),
	datad => \B~combout\(24),
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X36_Y28_N4
\ShiftLeft1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~8_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~12_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft1~8_combout\);

-- Location: LCCOMB_X34_Y30_N0
\ShiftLeft1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~9_combout\ = (!\Add0~6_combout\ & ((\ShiftLeft1~7_combout\) # ((\Add0~4_combout\ & \ShiftLeft1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~7_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~8_combout\,
	combout => \ShiftLeft1~9_combout\);

-- Location: LCCOMB_X34_Y30_N6
\ShiftLeft1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~13_combout\ = (!\Add0~8_combout\ & ((\ShiftLeft1~9_combout\) # ((\Add0~6_combout\ & \ShiftLeft1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~9_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftLeft1~12_combout\,
	combout => \ShiftLeft1~13_combout\);

-- Location: LCCOMB_X33_Y22_N8
\ShiftLeft0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\A~combout\(0) & ((\B~combout\(3)))) # (!\A~combout\(0) & (\B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(4),
	datad => \B~combout\(3),
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X33_Y29_N20
\ShiftLeft1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~19_combout\ = (\ShiftLeft1~16_combout\) # ((\ShiftLeft1~18_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~18_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftLeft1~16_combout\,
	combout => \ShiftLeft1~19_combout\);

-- Location: LCCOMB_X30_Y29_N10
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Add0~8_combout\ & ((\Mux1~12_combout\ & ((\ShiftLeft2~4_combout\))) # (!\Mux1~12_combout\ & (\ShiftLeft1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux1~12_combout\,
	datac => \ShiftLeft1~19_combout\,
	datad => \ShiftLeft2~4_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X30_Y29_N20
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\ShiftRight0~15_combout\ & ((\Mux2~3_combout\) # (\ShiftLeft1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \ShiftLeft1~13_combout\,
	datad => \ShiftRight0~15_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X35_Y29_N20
\ShiftLeft0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\A~combout\(2) & ((\A~combout\(1) & ((\ShiftLeft0~14_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftLeft0~15_combout\,
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X36_Y28_N2
\ShiftLeft0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\A~combout\(1) & (\ShiftLeft0~16_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X35_Y29_N22
\ShiftLeft0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\ShiftLeft0~25_combout\) # ((!\A~combout\(2) & \ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftLeft0~26_combout\,
	datac => \ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X35_Y25_N0
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\ShiftRight1~4_combout\ & ((\Mux1~13_combout\) # ((\ShiftLeft0~11_combout\)))) # (!\ShiftRight1~4_combout\ & (!\Mux1~13_combout\ & ((\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \Mux1~13_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \B~combout\(30),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X36_Y28_N20
\ShiftLeft0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\A~combout\(1) & (\ShiftLeft0~12_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \ShiftLeft0~12_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X35_Y25_N18
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & (((\ShiftLeft0~28_combout\)) # (!\Mux1~13_combout\))) # (!\Mux2~7_combout\ & (\Mux1~13_combout\ & (\B~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Mux1~13_combout\,
	datac => \B~combout\(29),
	datad => \ShiftLeft0~28_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X33_Y28_N0
\ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & (!\Add0~2_combout\ & \ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X34_Y25_N10
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\ShiftLeft0~10_combout\ & ((\A~combout\(3) & (\ShiftLeft0~30_combout\)) # (!\A~combout\(3) & ((\ShiftLeft0~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~30_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~33_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X34_Y25_N8
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux10~2_combout\ & (((\Mux10~3_combout\ & \ShiftRight0~16_combout\)))) # (!\Mux10~2_combout\ & ((\Mux2~9_combout\) # ((!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X34_Y25_N26
\Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Mux2~10_combout\ & (((\Mux2~8_combout\) # (\Mux10~1_combout\)))) # (!\Mux2~10_combout\ & (\ShiftLeft0~27_combout\ & ((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~27_combout\,
	datab => \Mux2~8_combout\,
	datac => \Mux2~10_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X35_Y24_N12
\Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\A~combout\(29) & ((!\cout~32_combout\) # (!\B~combout\(29)))) # (!\A~combout\(29) & (!\B~combout\(29) & !\cout~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	datad => \cout~32_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X34_Y26_N16
\ShiftLeft1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~20_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~34_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~34_combout\,
	combout => \ShiftLeft1~20_combout\);

-- Location: LCCOMB_X36_Y29_N24
\ShiftLeft1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~23_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~38_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftLeft0~39_combout\,
	datac => \ShiftLeft0~38_combout\,
	combout => \ShiftLeft1~23_combout\);

-- Location: LCCOMB_X32_Y26_N18
\ShiftLeft1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~25_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~23_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~23_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~24_combout\,
	combout => \ShiftLeft1~25_combout\);

-- Location: LCCOMB_X31_Y25_N12
\ShiftLeft1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~26_combout\ = (\Add0~6_combout\ & ((\Add0~8_combout\ & (\ShiftLeft1~22_combout\)) # (!\Add0~8_combout\ & ((\ShiftLeft1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~22_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftLeft1~25_combout\,
	combout => \ShiftLeft1~26_combout\);

-- Location: LCCOMB_X35_Y28_N26
\ShiftLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\A~combout\(0) & ((\B~combout\(28)))) # (!\A~combout\(0) & (\B~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \B~combout\(28),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X35_Y25_N20
\ShiftLeft1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~27_combout\ = (\A~combout\(0) & ((\B~combout\(30)))) # (!\A~combout\(0) & (\B~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datac => \A~combout\(0),
	datad => \B~combout\(30),
	combout => \ShiftLeft1~27_combout\);

-- Location: LCCOMB_X35_Y25_N6
\ShiftLeft1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~28_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & ((\ShiftLeft0~42_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~27_combout\,
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~42_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftLeft1~28_combout\);

-- Location: LCCOMB_X35_Y28_N30
\ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\A~combout\(0) & ((\B~combout\(26)))) # (!\A~combout\(0) & (\B~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \B~combout\(26),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X35_Y25_N2
\ShiftLeft1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~30_combout\ = (!\Add0~8_combout\ & ((\ShiftLeft1~28_combout\) # ((\Add0~4_combout\ & \ShiftLeft1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~28_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~29_combout\,
	datad => \Add0~8_combout\,
	combout => \ShiftLeft1~30_combout\);

-- Location: LCCOMB_X35_Y26_N26
\ShiftLeft1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~31_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~45_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~45_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft1~31_combout\);

-- Location: LCCOMB_X31_Y25_N30
\ShiftLeft1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~34_combout\ = (!\Add0~6_combout\ & ((\ShiftLeft1~30_combout\) # ((\Add0~8_combout\ & \ShiftLeft1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftLeft1~30_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~33_combout\,
	combout => \ShiftLeft1~34_combout\);

-- Location: LCCOMB_X31_Y25_N24
\ShiftLeft1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~35_combout\ = (\ShiftRight0~15_combout\ & ((\ShiftLeft1~26_combout\) # (\ShiftLeft1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~26_combout\,
	datab => \ShiftRight0~15_combout\,
	datad => \ShiftLeft1~34_combout\,
	combout => \ShiftLeft1~35_combout\);

-- Location: LCCOMB_X29_Y22_N6
\tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = \B~combout\(31) $ (\A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datac => \A~combout\(31),
	combout => \tmp~0_combout\);

-- Location: LCCOMB_X35_Y25_N12
\Mux1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~19_combout\ = (\ShiftRight1~4_combout\ & ((\Mux1~13_combout\) # ((\ShiftLeft0~42_combout\)))) # (!\ShiftRight1~4_combout\ & (!\Mux1~13_combout\ & ((\B~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \Mux1~13_combout\,
	datac => \ShiftLeft0~42_combout\,
	datad => \B~combout\(31),
	combout => \Mux1~19_combout\);

-- Location: LCCOMB_X36_Y26_N8
\ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\A~combout\(2) & ((\ShiftLeft0~46_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X36_Y26_N2
\ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\A~combout\(1) & ((\ShiftLeft0~56_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~57_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~56_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X32_Y28_N10
\ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~19_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight0~20_combout\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X32_Y28_N12
\ShiftRight1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\B~combout\(31) & !\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(31),
	datac => \A~combout\(0),
	combout => \ShiftRight1~7_combout\);

-- Location: LCCOMB_X32_Y28_N14
\ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\Add0~4_combout\ & (((\ShiftRight1~7_combout\ & !\Add0~2_combout\)))) # (!\Add0~4_combout\ & (\ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight1~7_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X32_Y28_N18
\ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~25_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight0~25_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X32_Y24_N24
\ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\Add0~6_combout\ & ((\ShiftRight0~22_combout\))) # (!\Add0~6_combout\ & (\ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~29_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \Add0~6_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X34_Y28_N10
\Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Add0~4_combout\) # (\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X34_Y27_N0
\ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\A~combout\(0) & (\B~combout\(4))) # (!\A~combout\(0) & ((\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \B~combout\(3),
	datac => \A~combout\(0),
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X34_Y28_N28
\Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux29~2_combout\ & (((\ShiftRight0~34_combout\) # (\Mux29~1_combout\)))) # (!\Mux29~2_combout\ & (\ShiftRight0~35_combout\ & ((!\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~34_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X32_Y27_N16
\ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~36_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~36_combout\,
	datac => \Add0~2_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X32_Y27_N20
\ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\Add0~4_combout\ & (\ShiftRight0~38_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight0~41_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X34_Y28_N14
\Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux29~3_combout\ & ((\ShiftRight0~42_combout\) # ((!\Mux29~1_combout\)))) # (!\Mux29~3_combout\ & (((\ShiftRight0~31_combout\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \Mux29~3_combout\,
	datac => \ShiftRight0~31_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X34_Y26_N28
\ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (!\ShiftLeft0~59_combout\ & ((\A~combout\(1) & ((\ShiftLeft0~34_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \ShiftLeft0~34_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X35_Y27_N26
\cout~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~69_combout\ = \A~combout\(3) $ (\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \B~combout\(3),
	combout => \cout~69_combout\);

-- Location: LCCOMB_X35_Y27_N4
\Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\opcode~combout\(0) & ((\Add0~8_combout\) # (!\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X35_Y27_N30
\Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (!\Mux29~5_combout\ & (((!\ShiftLeft0~10_combout\ & !\A~combout\(4))) # (!\Mux29~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(4),
	datac => \Mux29~6_combout\,
	datad => \Mux29~5_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X35_Y27_N16
\Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux29~7_combout\ & ((\Mux29~6_combout\ & (\ShiftLeft0~60_combout\)) # (!\Mux29~6_combout\ & ((\cout~69_combout\))))) # (!\Mux29~7_combout\ & (((!\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~60_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux29~6_combout\,
	datad => \cout~69_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X35_Y24_N0
\Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux29~8_combout\ & (((\Mux29~4_combout\) # (!\Mux29~5_combout\)))) # (!\Mux29~8_combout\ & (\ShiftRight0~30_combout\ & (\Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \ShiftRight0~30_combout\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X34_Y23_N18
\Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\opcode~combout\(0) & (\cout~9_combout\)) # (!\opcode~combout\(0) & ((\cout~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~9_combout\,
	datac => \cout~36_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X34_Y23_N20
\Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = \opcode~combout\(0) $ (((\A~combout\(2) & \opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X34_Y23_N6
\Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\Mux29~11_combout\ & ((\B~combout\(2)) # ((\Mux29~10_combout\) # (!\opcode~combout\(1))))) # (!\Mux29~11_combout\ & (\B~combout\(2) & (\opcode~combout\(1) & \Mux29~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~11_combout\,
	datab => \B~combout\(2),
	datac => \opcode~combout\(1),
	datad => \Mux29~10_combout\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X34_Y23_N16
\Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\opcode~combout\(1) & (\B~combout\(3) $ (\A~combout\(3) $ (\Mux29~12_combout\)))) # (!\opcode~combout\(1) & ((\B~combout\(3) & ((\A~combout\(3)) # (\Mux29~12_combout\))) # (!\B~combout\(3) & (\A~combout\(3) & \Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	datad => \Mux29~12_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X35_Y24_N28
\Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~16_combout\ = (\Mux29~14_combout\ & (\Mux29~15_combout\ & ((\Mux29~9_combout\)))) # (!\Mux29~14_combout\ & (((\Mux29~13_combout\)) # (!\Mux29~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux29~15_combout\,
	datac => \Mux29~13_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~16_combout\);

-- Location: LCCOMB_X31_Y26_N16
\Mux1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~26_combout\ = (!\ShiftLeft0~10_combout\ & ((\A~combout\(3) & (\ShiftRight1~8_combout\)) # (!\A~combout\(3) & ((\ShiftRight1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~8_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~11_combout\,
	combout => \Mux1~26_combout\);

-- Location: LCCOMB_X34_Y27_N8
\Mux1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~31_combout\ = (\ShiftLeft0~59_combout\ & ((\ShiftRight2~8_combout\) # ((\Mux1~30_combout\)))) # (!\ShiftLeft0~59_combout\ & (((\ShiftRight0~35_combout\ & !\Mux1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~8_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \Mux1~30_combout\,
	combout => \Mux1~31_combout\);

-- Location: LCCOMB_X32_Y27_N30
\ShiftRight1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\ShiftRight0~36_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X32_Y27_N18
\ShiftRight1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\ShiftRight1~12_combout\) # ((\ShiftRight2~9_combout\ & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~9_combout\,
	datab => \ShiftRight1~12_combout\,
	datac => \A~combout\(2),
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X34_Y27_N18
\Mux1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~32_combout\ = (\Mux1~31_combout\ & (((\ShiftRight1~13_combout\) # (!\Mux1~30_combout\)))) # (!\Mux1~31_combout\ & (\ShiftRight0~31_combout\ & ((\Mux1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~31_combout\,
	datab => \ShiftRight0~31_combout\,
	datac => \ShiftRight1~13_combout\,
	datad => \Mux1~30_combout\,
	combout => \Mux1~32_combout\);

-- Location: LCCOMB_X30_Y25_N8
\ShiftRight2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~10_combout\ = (\A~combout\(3) & ((\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\ShiftRight2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \ShiftRight2~7_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight2~10_combout\);

-- Location: LCCOMB_X29_Y28_N10
\ShiftRight1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\A~combout\(2) & (\ShiftRight0~45_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~45_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X29_Y28_N4
\ShiftRight1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (!\A~combout\(3) & ((\A~combout\(1) & (\ShiftRight1~14_combout\)) # (!\A~combout\(1) & ((\ShiftRight1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \A~combout\(1),
	datac => \A~combout\(3),
	datad => \ShiftRight1~15_combout\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X33_Y27_N24
\ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\A~combout\(0) & ((\B~combout\(5)))) # (!\A~combout\(0) & (\B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \B~combout\(5),
	datad => \A~combout\(0),
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X33_Y27_N2
\ShiftRight2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~12_combout\ = (\A~combout\(1) & ((\ShiftRight0~50_combout\))) # (!\A~combout\(1) & (\ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~50_combout\,
	combout => \ShiftRight2~12_combout\);

-- Location: LCCOMB_X33_Y27_N12
\Mux1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~40_combout\ = (\ShiftLeft0~59_combout\ & (((\ShiftRight2~12_combout\) # (\Mux1~30_combout\)))) # (!\ShiftLeft0~59_combout\ & (\ShiftRight0~52_combout\ & ((!\Mux1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~52_combout\,
	datab => \ShiftRight2~12_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \Mux1~30_combout\,
	combout => \Mux1~40_combout\);

-- Location: LCCOMB_X30_Y27_N24
\ShiftRight1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\A~combout\(2) & ((\A~combout\(1) & ((\ShiftRight0~53_combout\))) # (!\A~combout\(1) & (\ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X31_Y27_N0
\ShiftRight1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\ShiftRight1~18_combout\) # ((\ShiftRight2~13_combout\ & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~18_combout\,
	datac => \ShiftRight2~13_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X33_Y27_N6
\Mux1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~41_combout\ = (\Mux1~40_combout\ & ((\ShiftRight1~19_combout\) # ((!\Mux1~30_combout\)))) # (!\Mux1~40_combout\ & (((\ShiftRight0~49_combout\ & \Mux1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~40_combout\,
	datab => \ShiftRight1~19_combout\,
	datac => \ShiftRight0~49_combout\,
	datad => \Mux1~30_combout\,
	combout => \Mux1~41_combout\);

-- Location: LCCOMB_X35_Y28_N12
\ShiftRight2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~14_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & ((\ShiftRight0~48_combout\))) # (!\A~combout\(1) & (\ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftRight0~47_combout\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight2~14_combout\);

-- Location: LCCOMB_X35_Y28_N14
\ShiftRight2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~15_combout\ = (\A~combout\(0) & (\B~combout\(31))) # (!\A~combout\(0) & ((\A~combout\(1) & (\B~combout\(31))) # (!\A~combout\(1) & ((\B~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(31),
	datac => \B~combout\(30),
	datad => \A~combout\(1),
	combout => \ShiftRight2~15_combout\);

-- Location: LCCOMB_X35_Y28_N16
\ShiftRight2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~16_combout\ = (\ShiftRight2~14_combout\) # ((\A~combout\(2) & \ShiftRight2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight2~15_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \ShiftRight2~16_combout\);

-- Location: LCCOMB_X31_Y29_N4
\ShiftRight2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~17_combout\ = (\ShiftRight1~16_combout\) # ((\A~combout\(3) & \ShiftRight2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight2~16_combout\,
	combout => \ShiftRight2~17_combout\);

-- Location: LCCOMB_X29_Y24_N12
\cout~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~70_combout\ = (\A~combout\(2)) # (\B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	combout => \cout~70_combout\);

-- Location: LCCOMB_X33_Y28_N10
\ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~48_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X29_Y28_N14
\ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\Add0~2_combout\ & (\ShiftRight0~43_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~43_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X33_Y25_N0
\ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~59_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight0~59_combout\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X30_Y27_N6
\ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~55_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datab => \Add0~2_combout\,
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X34_Y26_N8
\ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (!\ShiftLeft0~59_combout\ & ((\A~combout\(1) & (\cout~67_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \A~combout\(1),
	datac => \cout~67_combout\,
	datad => \ShiftLeft0~22_combout\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X35_Y27_N2
\cout~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~71_combout\ = \B~combout\(2) $ (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(2),
	combout => \cout~71_combout\);

-- Location: LCCOMB_X35_Y27_N12
\Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux29~7_combout\ & ((\Mux29~6_combout\ & (\ShiftLeft0~61_combout\)) # (!\Mux29~6_combout\ & ((\cout~71_combout\))))) # (!\Mux29~7_combout\ & (((!\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~61_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux29~6_combout\,
	datad => \cout~71_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X32_Y26_N2
\ShiftLeft1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~38_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftLeft1~20_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~21_combout\,
	combout => \ShiftLeft1~38_combout\);

-- Location: LCCOMB_X30_Y25_N14
\ShiftRight2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~18_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\ShiftRight1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \B~combout\(31),
	datad => \ShiftRight1~21_combout\,
	combout => \ShiftRight2~18_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Mux1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~48_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~8_combout\))) # (!\A~combout\(31) & (\ShiftRight2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~18_combout\,
	datab => \ShiftLeft2~8_combout\,
	datac => \Mux1~47_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~48_combout\);

-- Location: LCCOMB_X32_Y29_N12
\Mux1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~49_combout\ = (\Mux1~47_combout\ & ((\Mux1~48_combout\ & ((\B~combout\(0)))) # (!\Mux1~48_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~47_combout\,
	datac => \Mux1~48_combout\,
	datad => \B~combout\(0),
	combout => \Mux1~49_combout\);

-- Location: LCCOMB_X32_Y29_N26
\Mux1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~52_combout\ = (\Mux1~50_combout\ & ((\Mux1~51_combout\ & (\ShiftLeft1~25_combout\)) # (!\Mux1~51_combout\ & ((\Mux1~49_combout\))))) # (!\Mux1~50_combout\ & (((!\Mux1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~25_combout\,
	datab => \Mux1~50_combout\,
	datac => \Mux1~51_combout\,
	datad => \Mux1~49_combout\,
	combout => \Mux1~52_combout\);

-- Location: LCCOMB_X32_Y26_N20
\Mux1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~53_combout\ = (\Mux1~52_combout\ & (((\Mux1~177_combout\) # (!\Mux1~46_combout\)))) # (!\Mux1~52_combout\ & (\ShiftLeft1~38_combout\ & ((\Mux1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~52_combout\,
	datab => \ShiftLeft1~38_combout\,
	datac => \Mux1~177_combout\,
	datad => \Mux1~46_combout\,
	combout => \Mux1~53_combout\);

-- Location: LCCOMB_X38_Y22_N24
\soma~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~3_combout\ = \cout~72_combout\ $ (((\cout~56_combout\ & ((\B~combout\(22)) # (\A~combout\(22)))) # (!\cout~56_combout\ & (\B~combout\(22) & \A~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~56_combout\,
	datab => \cout~72_combout\,
	datac => \B~combout\(22),
	datad => \A~combout\(22),
	combout => \soma~3_combout\);

-- Location: LCCOMB_X33_Y26_N2
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\ShiftLeft0~55_combout\ & (!\ShiftLeft0~10_combout\ & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~55_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X36_Y26_N28
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux10~3_combout\ & ((\Mux10~2_combout\ & (\ShiftRight0~68_combout\)) # (!\Mux10~2_combout\ & ((\Mux9~2_combout\))))) # (!\Mux10~3_combout\ & (((!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~68_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux9~2_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X36_Y26_N30
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux10~1_combout\ & (\Mux9~3_combout\)) # (!\Mux10~1_combout\ & ((\Mux9~3_combout\ & (\ShiftLeft0~51_combout\)) # (!\Mux9~3_combout\ & ((\ShiftLeft0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux9~3_combout\,
	datac => \ShiftLeft0~51_combout\,
	datad => \ShiftLeft0~58_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X38_Y22_N16
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\A~combout\(23) & !\B~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~4_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X32_Y25_N0
\ShiftLeft2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~9_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & ((\B~combout\(0)))) # (!\Add0~4_combout\ & (\ShiftLeft1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftLeft1~39_combout\,
	datad => \B~combout\(0),
	combout => \ShiftLeft2~9_combout\);

-- Location: LCCOMB_X32_Y25_N2
\ShiftLeft2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~10_combout\ = (\ShiftLeft2~9_combout\) # ((\ShiftLeft1~43_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~43_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft2~9_combout\,
	combout => \ShiftLeft2~10_combout\);

-- Location: LCCOMB_X29_Y29_N0
\Mux1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~58_combout\ = (\A~combout\(31) & (((\ShiftLeft2~10_combout\) # (\Mux1~47_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~42_combout\ & ((!\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~42_combout\,
	datab => \ShiftLeft2~10_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~47_combout\,
	combout => \Mux1~58_combout\);

-- Location: LCCOMB_X29_Y29_N18
\Mux1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~59_combout\ = (\Mux1~58_combout\ & (((\B~combout\(0)) # (!\Mux1~47_combout\)))) # (!\Mux1~58_combout\ & (\B~combout\(31) & ((\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~58_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~47_combout\,
	combout => \Mux1~59_combout\);

-- Location: LCCOMB_X33_Y28_N26
\ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~6_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~48_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X33_Y24_N8
\ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (!\Add0~6_combout\ & (\ShiftRight0~69_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X35_Y20_N8
\cout~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~74_combout\ = \A~combout\(28) $ (\B~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(28),
	datad => \B~combout\(28),
	combout => \cout~74_combout\);

-- Location: LCCOMB_X30_Y25_N16
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\opcode~combout\(0) & ((\A~combout\(4)) # (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X34_Y24_N30
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~0_combout\ & (((\ShiftRight0~15_combout\ & !\Add0~8_combout\)) # (!\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X34_Y24_N24
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux3~1_combout\ & (\ShiftRight0~70_combout\ & ((\Mux3~2_combout\)))) # (!\Mux3~1_combout\ & (((\cout~74_combout\) # (!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \Mux3~1_combout\,
	datac => \cout~74_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X31_Y28_N26
\Mux1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~62_combout\ = (\ShiftRight1~68_combout\ & (!\ShiftLeft0~10_combout\ & (!\A~combout\(4) & !\ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~68_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~59_combout\,
	combout => \Mux1~62_combout\);

-- Location: LCCOMB_X36_Y29_N16
\ShiftLeft1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~55_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~41_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~43_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~41_combout\,
	combout => \ShiftLeft1~55_combout\);

-- Location: LCCOMB_X34_Y28_N20
\Mux1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~63_combout\ = (\Mux29~2_combout\ & ((\Mux29~1_combout\) # ((\ShiftLeft1~55_combout\)))) # (!\Mux29~2_combout\ & (!\Mux29~1_combout\ & (\ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux29~1_combout\,
	datac => \ShiftLeft0~42_combout\,
	datad => \ShiftLeft1~55_combout\,
	combout => \Mux1~63_combout\);

-- Location: LCCOMB_X36_Y29_N4
\ShiftLeft1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~57_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~39_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~39_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft1~57_combout\);

-- Location: LCCOMB_X34_Y28_N6
\ShiftLeft1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~58_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~56_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~56_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~57_combout\,
	combout => \ShiftLeft1~58_combout\);

-- Location: LCCOMB_X34_Y28_N24
\Mux1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~64_combout\ = (\Mux1~63_combout\ & (((\ShiftLeft1~58_combout\)) # (!\Mux29~1_combout\))) # (!\Mux1~63_combout\ & (\Mux29~1_combout\ & (\ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~63_combout\,
	datab => \Mux29~1_combout\,
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftLeft1~58_combout\,
	combout => \Mux1~64_combout\);

-- Location: LCCOMB_X35_Y26_N6
\ShiftLeft2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~11_combout\ = (\A~combout\(0) & (((\B~combout\(0))))) # (!\A~combout\(0) & ((\Add0~2_combout\ & ((\B~combout\(0)))) # (!\Add0~2_combout\ & (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(1),
	datac => \Add0~2_combout\,
	datad => \B~combout\(0),
	combout => \ShiftLeft2~11_combout\);

-- Location: LCCOMB_X32_Y28_N28
\ShiftRight2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~19_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\ShiftRight1~4_combout\ & (\B~combout\(31))) # (!\ShiftRight1~4_combout\ & ((\ShiftRight0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \ShiftRight1~4_combout\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight2~19_combout\);

-- Location: LCCOMB_X34_Y24_N22
\ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\ShiftLeft0~72_combout\) # ((!\A~combout\(3) & \ShiftLeft0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~72_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~74_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X35_Y28_N10
\ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\A~combout\(1) & ((\ShiftLeft0~41_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~43_combout\,
	datac => \ShiftLeft0~41_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X35_Y28_N20
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux1~30_combout\ & (((\ShiftLeft0~59_combout\)))) # (!\Mux1~30_combout\ & ((\ShiftLeft0~59_combout\ & ((\ShiftLeft0~76_combout\))) # (!\ShiftLeft0~59_combout\ & (\ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~42_combout\,
	datab => \Mux1~30_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \ShiftLeft0~76_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X36_Y29_N6
\ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\A~combout\(2) & ((\A~combout\(1) & ((\ShiftLeft0~48_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~38_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~48_combout\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X34_Y24_N16
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\ShiftLeft0~79_combout\) # (!\Mux1~30_combout\)))) # (!\Mux3~4_combout\ & (\ShiftLeft0~44_combout\ & (\Mux1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~44_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux1~30_combout\,
	datad => \ShiftLeft0~79_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X32_Y23_N24
\ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\ShiftRight0~107_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~107_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X35_Y24_N16
\cout~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~75_combout\ = \A~combout\(29) $ (\B~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	combout => \cout~75_combout\);

-- Location: LCCOMB_X34_Y24_N2
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~1_combout\ & (\ShiftRight0~71_combout\ & ((\Mux3~2_combout\)))) # (!\Mux3~1_combout\ & (((\cout~75_combout\) # (!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~71_combout\,
	datab => \Mux3~1_combout\,
	datac => \cout~75_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X34_Y24_N12
\Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & ((\Mux3~5_combout\) # ((\Mux3~0_combout\)))) # (!\Mux3~6_combout\ & (((!\Mux3~0_combout\ & \ShiftLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~6_combout\,
	datac => \Mux3~0_combout\,
	datad => \ShiftLeft0~75_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X36_Y24_N20
\Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = \opcode~combout\(0) $ (((\opcode~combout\(1) & \A~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \A~combout\(28),
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X30_Y27_N8
\ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\Add0~2_combout\ & (\ShiftRight0~46_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~46_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X33_Y24_N10
\ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~72_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftRight0~73_combout\,
	datad => \ShiftRight0~72_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X33_Y27_N4
\ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~51_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~51_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X33_Y27_N22
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux25~5_combout\ & (((\Mux25~6_combout\)))) # (!\Mux25~5_combout\ & ((\Mux25~6_combout\ & ((\ShiftRight0~75_combout\))) # (!\Mux25~6_combout\ & (\ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \ShiftRight0~76_combout\,
	datac => \Mux25~6_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X29_Y28_N18
\ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~47_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \ShiftRight0~47_combout\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X33_Y24_N20
\ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~78_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftRight0~79_combout\,
	datad => \ShiftRight0~78_combout\,
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X33_Y24_N30
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & (((\ShiftRight0~108_combout\) # (!\Mux25~5_combout\)))) # (!\Mux28~2_combout\ & (\ShiftRight0~74_combout\ & ((\Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \ShiftRight0~108_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X35_Y27_N24
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(3) & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X34_Y26_N20
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & ((\ShiftLeft0~62_combout\) # ((\Mux1~38_combout\ & \ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~38_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \Mux28~4_combout\,
	datad => \ShiftLeft0~62_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X33_Y23_N14
\cout~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~76_combout\ = \B~combout\(4) $ (\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \cout~76_combout\);

-- Location: LCCOMB_X33_Y23_N24
\Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux25~8_combout\ & (\cout~76_combout\ & ((!\Mux25~7_combout\)))) # (!\Mux25~8_combout\ & (((\LessThan0~62_combout\) # (\Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~8_combout\,
	datab => \cout~76_combout\,
	datac => \LessThan0~62_combout\,
	datad => \Mux25~7_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X33_Y23_N10
\Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux28~6_combout\ & (((\Mux28~5_combout\)) # (!\Mux25~24_combout\))) # (!\Mux28~6_combout\ & (\Mux25~24_combout\ & (\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux25~24_combout\,
	datac => \Mux28~3_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X35_Y27_N18
\tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~3_combout\ = (!\A~combout\(4) & !\A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datad => \A~combout\(31),
	combout => \tmp~3_combout\);

-- Location: LCCOMB_X33_Y27_N8
\ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\A~combout\(1) & ((\ShiftRight0~56_combout\))) # (!\A~combout\(1) & (\ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~50_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~56_combout\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X30_Y28_N26
\ShiftRight2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~20_combout\ = (\A~combout\(3) & ((\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \A~combout\(2),
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight2~20_combout\);

-- Location: LCCOMB_X30_Y28_N20
\ShiftRight2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~21_combout\ = (\ShiftRight1~24_combout\) # (\ShiftRight2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~24_combout\,
	datad => \ShiftRight2~20_combout\,
	combout => \ShiftRight2~21_combout\);

-- Location: LCCOMB_X32_Y29_N4
\Mux1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~70_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~14_combout\))) # (!\A~combout\(31) & (\ShiftRight2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~21_combout\,
	datab => \Mux1~33_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~14_combout\,
	combout => \Mux1~70_combout\);

-- Location: LCCOMB_X31_Y27_N12
\Mux1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~71_combout\ = (\Mux1~70_combout\ & ((\B~combout\(0)) # ((!\Mux1~33_combout\)))) # (!\Mux1~70_combout\ & (((\B~combout\(31) & \Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(31),
	datac => \Mux1~70_combout\,
	datad => \Mux1~33_combout\,
	combout => \Mux1~71_combout\);

-- Location: LCCOMB_X31_Y27_N8
\Mux1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~73_combout\ = (\Mux1~72_combout\ & ((\Mux1~71_combout\) # ((\Mux1~69_combout\)))) # (!\Mux1~72_combout\ & (((\ShiftRight1~26_combout\ & !\Mux1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~71_combout\,
	datab => \Mux1~72_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \Mux1~69_combout\,
	combout => \Mux1~73_combout\);

-- Location: LCCOMB_X30_Y27_N12
\ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & (\ShiftRight0~53_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X30_Y27_N16
\ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\ShiftRight1~27_combout\) # ((\A~combout\(1) & \ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~27_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X31_Y27_N2
\Mux1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~74_combout\ = (\Mux1~73_combout\ & ((\ShiftRight1~29_combout\) # ((!\Mux1~69_combout\)))) # (!\Mux1~73_combout\ & (((\ShiftRight1~25_combout\ & \Mux1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \Mux1~73_combout\,
	datac => \ShiftRight1~25_combout\,
	datad => \Mux1~69_combout\,
	combout => \Mux1~74_combout\);

-- Location: LCCOMB_X32_Y27_N8
\ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\Add0~2_combout\ & (\ShiftRight0~37_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~83_combout\);

-- Location: LCCOMB_X34_Y26_N30
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux28~4_combout\ & ((\ShiftLeft0~71_combout\) # ((\ShiftLeft0~35_combout\ & \Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \ShiftLeft0~71_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux1~38_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X33_Y22_N4
\cout~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~77_combout\ = \B~combout\(5) $ (\A~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datac => \A~combout\(5),
	combout => \cout~77_combout\);

-- Location: LCCOMB_X33_Y30_N20
\ShiftLeft2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~15_combout\ = (\Add0~6_combout\ & ((\B~combout\(0)))) # (!\Add0~6_combout\ & (\ShiftLeft2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft2~12_combout\,
	datad => \B~combout\(0),
	combout => \ShiftLeft2~15_combout\);

-- Location: LCCOMB_X31_Y28_N4
\ShiftRight2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~22_combout\ = (\A~combout\(3) & ((\ShiftRight1~4_combout\ & (\B~combout\(31))) # (!\ShiftRight1~4_combout\ & ((\ShiftRight0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(3),
	datac => \ShiftRight1~4_combout\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight2~22_combout\);

-- Location: LCCOMB_X31_Y28_N6
\ShiftRight2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~23_combout\ = (\ShiftRight2~22_combout\) # ((\ShiftRight1~31_combout\ & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~31_combout\,
	datac => \ShiftRight2~22_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight2~23_combout\);

-- Location: LCCOMB_X29_Y29_N20
\Mux1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~75_combout\ = (\Mux1~33_combout\ & (\A~combout\(31))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & (\ShiftLeft2~15_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \A~combout\(31),
	datac => \ShiftLeft2~15_combout\,
	datad => \ShiftRight2~23_combout\,
	combout => \Mux1~75_combout\);

-- Location: LCCOMB_X31_Y27_N20
\Mux1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~76_combout\ = (\Mux1~75_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~75_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~75_combout\,
	datab => \B~combout\(31),
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~76_combout\);

-- Location: LCCOMB_X33_Y25_N24
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux25~6_combout\ & (((\ShiftRight0~65_combout\) # (\Mux25~5_combout\)))) # (!\Mux25~6_combout\ & (\ShiftRight0~63_combout\ & ((!\Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X33_Y25_N20
\ShiftRight0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~91_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~57_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datab => \ShiftRight0~57_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftRight0~91_combout\);

-- Location: LCCOMB_X32_Y22_N0
\cout~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~79_combout\ = \A~combout\(6) $ (\B~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(6),
	datad => \B~combout\(6),
	combout => \cout~79_combout\);

-- Location: LCCOMB_X32_Y22_N4
\soma~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~6_combout\ = \cout~40_combout\ $ (\A~combout\(6) $ (\B~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~40_combout\,
	datac => \A~combout\(6),
	datad => \B~combout\(6),
	combout => \soma~6_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\opcode~combout\(1) & (\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & ((\A~combout\(6)) # (\B~combout\(6)))) # (!\opcode~combout\(0) & (\A~combout\(6) & \B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \A~combout\(6),
	datad => \B~combout\(6),
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X33_Y22_N14
\cout~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~80_combout\ = (\cout~78_combout\ & ((\B~combout\(4)) # (!\A~combout\(4)))) # (!\cout~78_combout\ & (!\A~combout\(4) & \B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~78_combout\,
	datab => \A~combout\(4),
	datac => \B~combout\(4),
	combout => \cout~80_combout\);

-- Location: LCCOMB_X32_Y22_N8
\soma~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~7_combout\ = \cout~79_combout\ $ (((\B~combout\(5) & ((\cout~80_combout\) # (!\A~combout\(5)))) # (!\B~combout\(5) & (!\A~combout\(5) & \cout~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datac => \cout~80_combout\,
	datad => \cout~79_combout\,
	combout => \soma~7_combout\);

-- Location: LCCOMB_X32_Y22_N10
\Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\opcode~combout\(1) & ((\Mux26~6_combout\ & (\soma~7_combout\)) # (!\Mux26~6_combout\ & ((\soma~6_combout\))))) # (!\opcode~combout\(1) & (((\Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \soma~7_combout\,
	datac => \soma~6_combout\,
	datad => \Mux26~6_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X33_Y29_N2
\ShiftLeft2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~16_combout\ = (\Add0~6_combout\ & (\B~combout\(0))) # (!\Add0~6_combout\ & (((\ShiftLeft2~2_combout\) # (\ShiftLeft2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftLeft2~2_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft2~3_combout\,
	combout => \ShiftLeft2~16_combout\);

-- Location: LCCOMB_X29_Y29_N30
\Mux1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~79_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~16_combout\))) # (!\A~combout\(31) & (\ShiftRight2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \ShiftRight2~25_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~16_combout\,
	combout => \Mux1~79_combout\);

-- Location: LCCOMB_X29_Y29_N16
\Mux1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~80_combout\ = (\Mux1~79_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~79_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~79_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~80_combout\);

-- Location: LCCOMB_X31_Y27_N10
\Mux1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~81_combout\ = (\Mux1~72_combout\ & ((\Mux1~80_combout\) # ((\Mux1~69_combout\)))) # (!\Mux1~72_combout\ & (((\ShiftRight2~12_combout\ & !\Mux1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~80_combout\,
	datab => \Mux1~72_combout\,
	datac => \ShiftRight2~12_combout\,
	datad => \Mux1~69_combout\,
	combout => \Mux1~81_combout\);

-- Location: LCCOMB_X34_Y22_N4
\cout~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~81_combout\ = \B~combout\(7) $ (\A~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(7),
	datac => \A~combout\(7),
	combout => \cout~81_combout\);

-- Location: LCCOMB_X30_Y25_N12
\ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\A~combout\(1) & ((\ShiftRight1~41_combout\))) # (!\A~combout\(1) & (\ShiftRight1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \ShiftRight1~35_combout\,
	datad => \ShiftRight1~41_combout\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux26~12_combout\ & (!\Mux27~14_combout\ & (!\Mux28~16_combout\ & !\Mux25~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~12_combout\,
	datab => \Mux27~14_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux25~23_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y27_N20
\Mux1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~87_combout\ = (\ShiftRight0~15_combout\ & \A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~87_combout\);

-- Location: LCCOMB_X30_Y28_N12
\ShiftRight2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~26_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \B~combout\(31),
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight2~26_combout\);

-- Location: LCCOMB_X33_Y24_N0
\ShiftRight0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~94_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftRight0~69_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftRight0~78_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight0~94_combout\);

-- Location: LCCOMB_X35_Y29_N12
\ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\A~combout\(2) & (\ShiftLeft0~20_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X36_Y25_N10
\ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\A~combout\(1) & ((\ShiftLeft0~32_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \ShiftLeft0~80_combout\,
	datad => \ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X36_Y25_N16
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & ((\Mux8~4_combout\) # ((\ShiftLeft0~69_combout\)))) # (!\Mux8~5_combout\ & (!\Mux8~4_combout\ & ((\ShiftLeft0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftLeft0~69_combout\,
	datad => \ShiftLeft0~67_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X34_Y29_N10
\ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\A~combout\(1) & ((\A~combout\(2) & ((\ShiftLeft0~22_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~22_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X34_Y29_N12
\ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\A~combout\(2) & (\ShiftLeft0~23_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X34_Y29_N14
\ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\ShiftLeft0~82_combout\) # ((\ShiftLeft0~83_combout\ & !\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~83_combout\,
	datab => \A~combout\(1),
	datad => \ShiftLeft0~82_combout\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X34_Y21_N2
\ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\A~combout\(3) & (\B~combout\(0) & (!\ShiftRight2~4_combout\))) # (!\A~combout\(3) & (((\ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight2~4_combout\,
	datac => \ShiftLeft0~84_combout\,
	datad => \A~combout\(3),
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X36_Y25_N18
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~4_combout\ & ((\Mux8~6_combout\ & (\ShiftLeft0~85_combout\)) # (!\Mux8~6_combout\ & ((\ShiftLeft0~81_combout\))))) # (!\Mux8~4_combout\ & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~85_combout\,
	datab => \Mux8~4_combout\,
	datac => \Mux8~6_combout\,
	datad => \ShiftLeft0~81_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X36_Y23_N8
\Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & !\ShiftLeft0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~7_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X38_Y23_N10
\cout~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~82_combout\ = \A~combout\(24) $ (\B~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \cout~82_combout\);

-- Location: LCCOMB_X36_Y23_N28
\Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux25~7_combout\ & (((!\Mux25~8_combout\)))) # (!\Mux25~7_combout\ & ((\Mux25~8_combout\ & ((\cout~82_combout\))) # (!\Mux25~8_combout\ & (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \cout~82_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X36_Y23_N22
\Mux8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\Mux8~10_combout\ & (((\Mux8~8_combout\) # (!\Mux8~9_combout\)))) # (!\Mux8~10_combout\ & (\ShiftRight0~94_combout\ & ((\Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~94_combout\,
	datab => \Mux8~10_combout\,
	datac => \Mux8~8_combout\,
	datad => \Mux8~9_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X38_Y23_N20
\Mux8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\Mux25~9_combout\ & (((!\A~combout\(24) & !\B~combout\(24))))) # (!\Mux25~9_combout\ & (\Mux8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~11_combout\,
	datab => \Mux25~9_combout\,
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \Mux8~12_combout\);

-- Location: LCCOMB_X32_Y26_N26
\ShiftLeft2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~18_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & ((\B~combout\(0)))) # (!\Add0~4_combout\ & (\ShiftLeft1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datab => \B~combout\(0),
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft2~18_combout\);

-- Location: LCCOMB_X32_Y26_N28
\ShiftLeft2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~19_combout\ = (\ShiftLeft2~18_combout\) # ((\ShiftLeft1~63_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~63_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft2~18_combout\,
	combout => \ShiftLeft2~19_combout\);

-- Location: LCCOMB_X29_Y29_N28
\Mux1~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~95_combout\ = (\A~combout\(31) & ((\ShiftLeft2~19_combout\) # ((\Mux1~33_combout\)))) # (!\A~combout\(31) & (((\ShiftRight2~27_combout\ & !\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft2~19_combout\,
	datab => \ShiftRight2~27_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~33_combout\,
	combout => \Mux1~95_combout\);

-- Location: LCCOMB_X29_Y29_N22
\Mux1~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~96_combout\ = (\Mux1~95_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~95_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~95_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~96_combout\);

-- Location: LCCOMB_X31_Y26_N10
\Mux1~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~97_combout\ = (\Mux1~27_combout\ & (((\Mux1~28_combout\ & \ShiftRight1~13_combout\)))) # (!\Mux1~27_combout\ & ((\Mux1~96_combout\) # ((!\Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~96_combout\,
	datab => \Mux1~27_combout\,
	datac => \Mux1~28_combout\,
	datad => \ShiftRight1~13_combout\,
	combout => \Mux1~97_combout\);

-- Location: LCCOMB_X30_Y24_N18
\cout~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~83_combout\ = \B~combout\(11) $ (\A~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(11),
	datad => \A~combout\(11),
	combout => \cout~83_combout\);

-- Location: LCCOMB_X31_Y24_N6
\soma~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~10_combout\ = \cout~83_combout\ $ (((\B~combout\(10) & ((\cout~17_combout\) # (!\A~combout\(10)))) # (!\B~combout\(10) & (!\A~combout\(10) & \cout~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datac => \cout~17_combout\,
	datad => \cout~83_combout\,
	combout => \soma~10_combout\);

-- Location: LCCOMB_X31_Y24_N16
\soma~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~11_combout\ = \cout~83_combout\ $ (((\B~combout\(10) & ((\A~combout\(10)) # (\cout~44_combout\))) # (!\B~combout\(10) & (\A~combout\(10) & \cout~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datac => \cout~44_combout\,
	datad => \cout~83_combout\,
	combout => \soma~11_combout\);

-- Location: LCCOMB_X31_Y24_N26
\Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (\soma~10_combout\)) # (!\opcode~combout\(0) & ((\soma~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~10_combout\,
	datab => \opcode~combout\(2),
	datac => \soma~11_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X32_Y24_N20
\ShiftRight0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~95_combout\ = (!\Add0~6_combout\ & \ShiftRight0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~95_combout\);

-- Location: LCCOMB_X32_Y24_N10
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux22~3_combout\ & (\Mux22~2_combout\ & (\ShiftRight0~95_combout\))) # (!\Mux22~3_combout\ & (((\Mux21~11_combout\)) # (!\Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux22~2_combout\,
	datac => \ShiftRight0~95_combout\,
	datad => \Mux21~11_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X31_Y24_N12
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~4_combout\ & ((\ShiftRight0~42_combout\) # ((\Mux1~54_combout\)))) # (!\Mux21~4_combout\ & (((\ShiftRight0~29_combout\ & !\Mux1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \ShiftRight0~29_combout\,
	datac => \Mux21~4_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X31_Y24_N30
\Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\opcode~combout\(2) & ((\Mux21~3_combout\ & (\Mux21~5_combout\)) # (!\Mux21~3_combout\ & ((\cout~83_combout\))))) # (!\opcode~combout\(2) & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \cout~83_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux21~3_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X29_Y28_N8
\ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\A~combout\(1) & (\ShiftRight1~15_combout\)) # (!\A~combout\(1) & ((\ShiftRight1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~39_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X33_Y24_N14
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux22~2_combout\ & ((\Mux22~3_combout\ & ((\ShiftRight0~94_combout\))) # (!\Mux22~3_combout\ & (\Mux24~10_combout\)))) # (!\Mux22~2_combout\ & (!\Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mux24~10_combout\,
	datad => \ShiftRight0~94_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X31_Y20_N20
\cout~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~86_combout\ = \A~combout\(9) $ (\B~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(9),
	datad => \B~combout\(9),
	combout => \cout~86_combout\);

-- Location: LCCOMB_X31_Y20_N22
\soma~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~14_combout\ = \B~combout\(9) $ (\A~combout\(9) $ (((\cout~8_combout\) # (\cout~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datac => \cout~8_combout\,
	datad => \cout~16_combout\,
	combout => \soma~14_combout\);

-- Location: LCCOMB_X31_Y20_N8
\soma~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~15_combout\ = \cout~86_combout\ $ (((\B~combout\(8) & ((\A~combout\(8)) # (\cout~42_combout\))) # (!\B~combout\(8) & (\A~combout\(8) & \cout~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datac => \cout~86_combout\,
	datad => \cout~42_combout\,
	combout => \soma~15_combout\);

-- Location: LCCOMB_X31_Y20_N18
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~14_combout\))) # (!\opcode~combout\(0) & (\soma~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \soma~15_combout\,
	datac => \opcode~combout\(0),
	datad => \soma~14_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X32_Y23_N26
\ShiftRight0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~98_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~87_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~82_combout\,
	datac => \ShiftRight0~87_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~98_combout\);

-- Location: LCCOMB_X32_Y23_N4
\ShiftRight0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~99_combout\ = (\Add0~4_combout\ & (\ShiftRight0~83_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~99_combout\);

-- Location: LCCOMB_X32_Y23_N22
\ShiftRight0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~100_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftRight0~107_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~107_combout\,
	datab => \ShiftRight0~86_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~100_combout\);

-- Location: LCCOMB_X35_Y26_N12
\ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\A~combout\(1) & ((\A~combout\(2) & (\ShiftLeft0~35_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~37_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X36_Y26_N12
\ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\ShiftLeft0~89_combout\) # ((!\A~combout\(1) & \ShiftLeft0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~89_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~86_combout\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X35_Y27_N6
\ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\A~combout\(3) & (((!\ShiftRight1~4_combout\ & \ShiftLeft0~34_combout\)))) # (!\A~combout\(3) & (\ShiftLeft0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~90_combout\,
	datac => \ShiftRight1~4_combout\,
	datad => \ShiftLeft0~34_combout\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux22~2_combout\ & ((\Mux22~3_combout\ & (\ShiftRight0~100_combout\)) # (!\Mux22~3_combout\ & ((\Mux23~11_combout\))))) # (!\Mux22~2_combout\ & (((!\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \ShiftRight0~100_combout\,
	datac => \Mux22~3_combout\,
	datad => \Mux23~11_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~3_combout\ & ((\ShiftRight0~99_combout\) # ((\Mux1~54_combout\)))) # (!\Mux23~3_combout\ & (((!\Mux1~54_combout\ & \ShiftRight0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \ShiftRight0~99_combout\,
	datac => \Mux1~54_combout\,
	datad => \ShiftRight0~98_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X31_Y20_N12
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~2_combout\ & (((\Mux23~4_combout\) # (!\opcode~combout\(2))))) # (!\Mux23~2_combout\ & (\cout~86_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~86_combout\,
	datab => \Mux23~2_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X33_Y26_N16
\ShiftLeft2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~20_combout\ = (\Add0~6_combout\ & ((\ShiftRight0~17_combout\ & (\B~combout\(0))) # (!\ShiftRight0~17_combout\ & ((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~17_combout\,
	datac => \Add0~6_combout\,
	datad => \B~combout\(1),
	combout => \ShiftLeft2~20_combout\);

-- Location: LCCOMB_X32_Y30_N12
\ShiftLeft2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~21_combout\ = (\ShiftLeft2~20_combout\) # (\ShiftLeft1~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftLeft2~20_combout\,
	datad => \ShiftLeft1~64_combout\,
	combout => \ShiftLeft2~21_combout\);

-- Location: LCCOMB_X32_Y28_N26
\ShiftRight2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~28_combout\ = (\A~combout\(1) & ((\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\ShiftRight0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(31),
	datac => \A~combout\(2),
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight2~28_combout\);

-- Location: LCCOMB_X32_Y28_N4
\ShiftRight2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~29_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & (\ShiftRight0~19_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight2~29_combout\);

-- Location: LCCOMB_X32_Y30_N6
\ShiftRight2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~30_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & (((\ShiftRight2~29_combout\) # (\ShiftRight2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \ShiftRight2~29_combout\,
	datad => \ShiftRight2~28_combout\,
	combout => \ShiftRight2~30_combout\);

-- Location: LCCOMB_X32_Y30_N8
\Mux1~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~106_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~21_combout\))) # (!\A~combout\(31) & (\ShiftRight2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~30_combout\,
	datab => \Mux1~33_combout\,
	datac => \ShiftLeft2~21_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~106_combout\);

-- Location: LCCOMB_X33_Y29_N24
\ShiftLeft2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~22_combout\ = (\Add0~4_combout\ & (\B~combout\(0))) # (!\Add0~4_combout\ & ((\Add0~2_combout\ & (\B~combout\(0))) # (!\Add0~2_combout\ & ((\ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~22_combout\,
	combout => \ShiftLeft2~22_combout\);

-- Location: LCCOMB_X31_Y29_N18
\ShiftLeft2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~23_combout\ = (\ShiftLeft1~66_combout\) # ((\ShiftLeft2~22_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft2~22_combout\,
	datac => \ShiftLeft1~66_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft2~23_combout\);

-- Location: LCCOMB_X31_Y29_N12
\ShiftRight2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~31_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\ShiftRight2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datac => \A~combout\(3),
	datad => \ShiftRight2~16_combout\,
	combout => \ShiftRight2~31_combout\);

-- Location: LCCOMB_X31_Y29_N22
\Mux1~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~111_combout\ = (\A~combout\(31) & (((\ShiftLeft2~23_combout\) # (\Mux1~33_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~31_combout\ & ((!\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~31_combout\,
	datab => \ShiftLeft2~23_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~33_combout\,
	combout => \Mux1~111_combout\);

-- Location: LCCOMB_X34_Y29_N16
\ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\A~combout\(1) & (\ShiftLeft0~83_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~83_combout\,
	datab => \A~combout\(1),
	datad => \ShiftLeft0~64_combout\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X36_Y25_N22
\ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\A~combout\(3) & (!\A~combout\(2) & (\ShiftLeft0~100_combout\))) # (!\A~combout\(3) & (((\ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \ShiftLeft0~100_combout\,
	datad => \ShiftLeft0~92_combout\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X32_Y24_N14
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~3_combout\ & (\Mux22~2_combout\ & (\ShiftRight0~101_combout\))) # (!\Mux22~3_combout\ & (((\Mux22~11_combout\)) # (!\Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux22~2_combout\,
	datac => \ShiftRight0~101_combout\,
	datad => \Mux22~11_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X31_Y24_N10
\Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux22~5_combout\ & (((\ShiftRight0~66_combout\) # (\Mux1~54_combout\)))) # (!\Mux22~5_combout\ & (\ShiftRight0~61_combout\ & ((!\Mux1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Mux22~5_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X36_Y26_N6
\ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\A~combout\(1) & (\ShiftLeft0~57_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~57_combout\,
	datac => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X36_Y25_N0
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux8~4_combout\ & (((\ShiftLeft0~95_combout\) # (\Mux8~5_combout\)))) # (!\Mux8~4_combout\ & (\ShiftLeft0~76_combout\ & ((!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~76_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftLeft0~95_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X36_Y23_N0
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\ShiftLeft0~91_combout\)) # (!\Mux8~5_combout\))) # (!\Mux7~0_combout\ & (\Mux8~5_combout\ & ((\ShiftLeft0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux8~5_combout\,
	datac => \ShiftLeft0~91_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X36_Y23_N18
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\ShiftLeft0~10_combout\ & \Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~10_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X38_Y24_N18
\cout~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~88_combout\ = \A~combout\(25) $ (\B~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(25),
	datad => \B~combout\(25),
	combout => \cout~88_combout\);

-- Location: LCCOMB_X36_Y23_N20
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux25~7_combout\ & (((!\Mux25~8_combout\)))) # (!\Mux25~7_combout\ & ((\Mux25~8_combout\ & ((\cout~88_combout\))) # (!\Mux25~8_combout\ & (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \cout~88_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X36_Y23_N14
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux8~9_combout\ & ((\Mux7~3_combout\ & ((\Mux7~2_combout\))) # (!\Mux7~3_combout\ & (\ShiftRight0~100_combout\)))) # (!\Mux8~9_combout\ & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => \ShiftRight0~100_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X38_Y24_N20
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux25~9_combout\ & (((!\A~combout\(25) & !\B~combout\(25))))) # (!\Mux25~9_combout\ & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \Mux7~4_combout\,
	datac => \A~combout\(25),
	datad => \B~combout\(25),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X32_Y30_N18
\Mux1~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~115_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~21_combout\))) # (!\A~combout\(31) & (\ShiftRight2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~30_combout\,
	datab => \Mux1~47_combout\,
	datac => \ShiftLeft2~21_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~115_combout\);

-- Location: LCCOMB_X34_Y30_N24
\Mux1~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~117_combout\ = (\Mux1~91_combout\ & (((\Mux1~88_combout\)))) # (!\Mux1~91_combout\ & ((\Mux1~88_combout\ & ((\ShiftLeft1~57_combout\))) # (!\Mux1~88_combout\ & (\ShiftLeft1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~91_combout\,
	datab => \ShiftLeft1~55_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~57_combout\,
	combout => \Mux1~117_combout\);

-- Location: LCCOMB_X30_Y23_N6
\cout~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~89_combout\ = \A~combout\(13) $ (\B~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(13),
	datad => \B~combout\(13),
	combout => \cout~89_combout\);

-- Location: LCCOMB_X30_Y23_N10
\soma~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~17_combout\ = \cout~89_combout\ $ (((\A~combout\(12) & ((\cout~46_combout\) # (\B~combout\(12)))) # (!\A~combout\(12) & (\cout~46_combout\ & \B~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datab => \cout~46_combout\,
	datac => \B~combout\(12),
	datad => \cout~89_combout\,
	combout => \soma~17_combout\);

-- Location: LCCOMB_X30_Y23_N12
\Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\A~combout\(13) & !\B~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~4_combout\,
	datac => \A~combout\(13),
	datad => \B~combout\(13),
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X29_Y29_N24
\Mux1~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~119_combout\ = (\A~combout\(31) & (((\ShiftLeft2~10_combout\) # (\Mux1~33_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~42_combout\ & ((!\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~42_combout\,
	datab => \A~combout\(31),
	datac => \ShiftLeft2~10_combout\,
	datad => \Mux1~33_combout\,
	combout => \Mux1~119_combout\);

-- Location: LCCOMB_X29_Y29_N26
\Mux1~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~120_combout\ = (\Mux1~119_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~119_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \B~combout\(0),
	datac => \Mux1~119_combout\,
	datad => \Mux1~33_combout\,
	combout => \Mux1~120_combout\);

-- Location: LCCOMB_X30_Y27_N10
\Mux1~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~121_combout\ = (\Mux1~27_combout\ & (((\ShiftRight1~29_combout\ & \Mux1~28_combout\)))) # (!\Mux1~27_combout\ & ((\Mux1~120_combout\) # ((!\Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~27_combout\,
	datab => \Mux1~120_combout\,
	datac => \ShiftRight1~29_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux1~121_combout\);

-- Location: LCCOMB_X30_Y24_N20
\cout~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~90_combout\ = \A~combout\(12) $ (\B~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datac => \B~combout\(12),
	combout => \cout~90_combout\);

-- Location: LCCOMB_X30_Y24_N6
\soma~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~18_combout\ = \cout~90_combout\ $ (((\A~combout\(11) & (\B~combout\(11) & \cout~18_combout\)) # (!\A~combout\(11) & ((\B~combout\(11)) # (\cout~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datac => \cout~90_combout\,
	datad => \cout~18_combout\,
	combout => \soma~18_combout\);

-- Location: LCCOMB_X30_Y24_N0
\soma~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~19_combout\ = \A~combout\(12) $ (\B~combout\(12) $ (\cout~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datac => \B~combout\(12),
	datad => \cout~46_combout\,
	combout => \soma~19_combout\);

-- Location: LCCOMB_X30_Y24_N10
\Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (\soma~18_combout\)) # (!\opcode~combout\(0) & ((\soma~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~18_combout\,
	datab => \soma~19_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X34_Y24_N26
\Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\Mux10~1_combout\ & ((\ShiftLeft0~63_combout\) # ((!\A~combout\(3) & \ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~63_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~65_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X34_Y24_N28
\Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux22~3_combout\ & (\ShiftRight0~70_combout\ & (\Mux22~2_combout\))) # (!\Mux22~3_combout\ & (((\Mux20~2_combout\) # (!\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X33_Y24_N18
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux1~54_combout\ & (((\Mux20~3_combout\)))) # (!\Mux1~54_combout\ & ((\Mux20~3_combout\ & (\ShiftRight0~74_combout\)) # (!\Mux20~3_combout\ & ((\ShiftRight0~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Mux1~54_combout\,
	datac => \ShiftRight0~80_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~1_combout\ & (((\Mux20~4_combout\)) # (!\opcode~combout\(2)))) # (!\Mux20~1_combout\ & (\opcode~combout\(2) & (\cout~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \opcode~combout\(2),
	datac => \cout~90_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X30_Y30_N22
\Mux1~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~123_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & (\ShiftLeft2~13_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \ShiftLeft2~13_combout\,
	datac => \ShiftRight2~19_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~123_combout\);

-- Location: LCCOMB_X30_Y30_N0
\Mux1~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~124_combout\ = (\Mux1~33_combout\ & ((\Mux1~123_combout\ & (\B~combout\(0))) # (!\Mux1~123_combout\ & ((\B~combout\(31)))))) # (!\Mux1~33_combout\ & (((\Mux1~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(31),
	datad => \Mux1~123_combout\,
	combout => \Mux1~124_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux20~8_combout\ & (!\Mux19~8_combout\ & ((\opcode~combout\(3)) # (!\Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux19~7_combout\,
	datac => \Mux20~8_combout\,
	datad => \Mux19~8_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y29_N28
\Mux1~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~127_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & (\ShiftLeft2~23_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~47_combout\,
	datab => \ShiftLeft2~23_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight2~31_combout\,
	combout => \Mux1~127_combout\);

-- Location: LCCOMB_X35_Y26_N30
\Mux1~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~128_combout\ = (\Mux1~47_combout\ & ((\Mux1~127_combout\ & ((\B~combout\(0)))) # (!\Mux1~127_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~47_combout\,
	datab => \B~combout\(31),
	datac => \Mux1~127_combout\,
	datad => \B~combout\(0),
	combout => \Mux1~128_combout\);

-- Location: LCCOMB_X34_Y30_N20
\Mux1~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~129_combout\ = (\Mux1~91_combout\ & ((\Mux1~128_combout\) # ((\Mux1~88_combout\)))) # (!\Mux1~91_combout\ & (((!\Mux1~88_combout\ & \ShiftLeft1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~91_combout\,
	datab => \Mux1~128_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~8_combout\,
	combout => \Mux1~129_combout\);

-- Location: LCCOMB_X35_Y29_N14
\ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & ((\ShiftLeft0~21_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftLeft0~15_combout\,
	datad => \ShiftLeft0~21_combout\,
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X36_Y26_N0
\ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\ShiftLeft0~96_combout\) # ((\A~combout\(1) & \ShiftLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~96_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~80_combout\,
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X36_Y25_N2
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux8~5_combout\ & ((\Mux8~4_combout\) # ((\ShiftLeft0~26_combout\)))) # (!\Mux8~5_combout\ & (!\Mux8~4_combout\ & ((\ShiftLeft0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftLeft0~26_combout\,
	datad => \ShiftLeft0~28_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X36_Y25_N12
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\ShiftLeft0~93_combout\) # (!\Mux8~4_combout\)))) # (!\Mux6~2_combout\ & (\ShiftLeft0~97_combout\ & ((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~97_combout\,
	datab => \Mux6~2_combout\,
	datac => \ShiftLeft0~93_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X36_Y23_N16
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\ShiftLeft0~10_combout\ & \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~10_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X38_Y24_N10
\soma~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~21_combout\ = \cout~91_combout\ $ (((\B~combout\(25) & ((\cout~29_combout\) # (!\A~combout\(25)))) # (!\B~combout\(25) & (\cout~29_combout\ & !\A~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \cout~29_combout\,
	datac => \A~combout\(25),
	datad => \cout~91_combout\,
	combout => \soma~21_combout\);

-- Location: LCCOMB_X38_Y24_N6
\soma~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~22_combout\ = \cout~92_combout\ $ (((\B~combout\(26) & ((\cout~60_combout\) # (\A~combout\(26)))) # (!\B~combout\(26) & (\cout~60_combout\ & \A~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \cout~60_combout\,
	datac => \A~combout\(26),
	datad => \cout~92_combout\,
	combout => \soma~22_combout\);

-- Location: LCCOMB_X32_Y26_N6
\ShiftLeft1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~69_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~32_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~32_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~23_combout\,
	combout => \ShiftLeft1~69_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = \A~combout\(1) $ (((\B~combout\(0) & (\opcode~combout\(0) $ (\A~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X32_Y23_N28
\ShiftRight0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~102_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftRight0~107_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~107_combout\,
	datab => \ShiftRight0~86_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~102_combout\);

-- Location: LCCOMB_X32_Y23_N14
\ShiftRight0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~103_combout\ = (\ShiftRight0~102_combout\) # ((!\Add0~6_combout\ & \ShiftRight0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~102_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftRight0~98_combout\,
	combout => \ShiftRight0~103_combout\);

-- Location: LCCOMB_X32_Y23_N0
\tmp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~4_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftRight0~83_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datab => \ShiftRight0~81_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \tmp~4_combout\);

-- Location: LCCOMB_X34_Y23_N10
\ShiftRight2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~32_combout\ = (\A~combout\(0) & ((\B~combout\(2)))) # (!\A~combout\(0) & (\B~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(2),
	datac => \A~combout\(0),
	combout => \ShiftRight2~32_combout\);

-- Location: LCCOMB_X34_Y27_N26
\tmp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~5_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & ((\ShiftRight0~35_combout\))) # (!\Add0~2_combout\ & (\ShiftRight2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~32_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~35_combout\,
	combout => \tmp~5_combout\);

-- Location: LCCOMB_X32_Y23_N10
\tmp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~6_combout\ = (!\Add0~6_combout\ & ((\tmp~5_combout\) # ((\ShiftRight0~85_combout\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~85_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \tmp~5_combout\,
	combout => \tmp~6_combout\);

-- Location: LCCOMB_X32_Y23_N20
\tmp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~7_combout\ = (\Add0~8_combout\ & (((\ShiftRight0~103_combout\)))) # (!\Add0~8_combout\ & ((\tmp~6_combout\) # ((\tmp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~6_combout\,
	datab => \tmp~4_combout\,
	datac => \ShiftRight0~103_combout\,
	datad => \Add0~8_combout\,
	combout => \tmp~7_combout\);

-- Location: LCCOMB_X35_Y27_N8
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\A~combout\(3) & (!\ShiftLeft0~10_combout\ & (!\ShiftRight1~4_combout\ & \ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~10_combout\,
	datac => \ShiftRight1~4_combout\,
	datad => \ShiftLeft0~34_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X35_Y27_N10
\tmp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~8_combout\ = (\Mux15~0_combout\ & ((\tmp~3_combout\) # ((\tmp~7_combout\ & \Mux1~87_combout\)))) # (!\Mux15~0_combout\ & (\tmp~7_combout\ & (\Mux1~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \tmp~7_combout\,
	datac => \Mux1~87_combout\,
	datad => \tmp~3_combout\,
	combout => \tmp~8_combout\);

-- Location: LCCOMB_X31_Y23_N12
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\A~combout\(1) & !\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \A~combout\(1),
	datac => \Mux10~0_combout\,
	datad => \B~combout\(1),
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X34_Y27_N20
\ShiftRight2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~33_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & ((\ShiftRight0~35_combout\))) # (!\A~combout\(1) & (\ShiftRight2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~32_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~35_combout\,
	combout => \ShiftRight2~33_combout\);

-- Location: LCCOMB_X34_Y27_N22
\ShiftRight2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~34_combout\ = (!\A~combout\(3) & ((\ShiftRight2~33_combout\) # ((\A~combout\(2) & \ShiftRight1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~33_combout\,
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	datad => \ShiftRight1~33_combout\,
	combout => \ShiftRight2~34_combout\);

-- Location: LCCOMB_X32_Y30_N30
\ShiftRight2~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~35_combout\ = (!\A~combout\(4) & ((\ShiftRight2~34_combout\) # ((\A~combout\(3) & \ShiftRight1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~52_combout\,
	datac => \ShiftRight2~34_combout\,
	datad => \A~combout\(4),
	combout => \ShiftRight2~35_combout\);

-- Location: LCCOMB_X32_Y30_N16
\ShiftRight2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~36_combout\ = (\A~combout\(3) & ((\ShiftRight2~28_combout\) # ((\ShiftRight2~29_combout\)))) # (!\A~combout\(3) & (((\ShiftRight1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~28_combout\,
	datab => \ShiftRight2~29_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight1~48_combout\,
	combout => \ShiftRight2~36_combout\);

-- Location: LCCOMB_X32_Y30_N10
\ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\A~combout\(3) & (\ShiftRight1~50_combout\)) # (!\A~combout\(3) & ((\ShiftRight1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~50_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight1~48_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X32_Y30_N28
\Mux1~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~135_combout\ = (\A~combout\(4) & ((\opcode~combout\(0) & ((\ShiftRight2~36_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~55_combout\,
	datab => \opcode~combout\(0),
	datac => \ShiftRight2~36_combout\,
	datad => \A~combout\(4),
	combout => \Mux1~135_combout\);

-- Location: LCCOMB_X31_Y30_N30
\Mux1~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~136_combout\ = (\ShiftLeft0~10_combout\ & (\B~combout\(31))) # (!\ShiftLeft0~10_combout\ & (((\ShiftRight2~35_combout\) # (\Mux1~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftRight2~35_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \Mux1~135_combout\,
	combout => \Mux1~136_combout\);

-- Location: LCCOMB_X31_Y30_N24
\Mux1~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~137_combout\ = (\A~combout\(31) & (\opcode~combout\(0))) # (!\A~combout\(31) & (\Mux1~136_combout\ & ((\opcode~combout\(0)) # (!\ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \opcode~combout\(0),
	datac => \ShiftLeft0~10_combout\,
	datad => \Mux1~136_combout\,
	combout => \Mux1~137_combout\);

-- Location: LCCOMB_X30_Y25_N6
\ShiftRight2~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~37_combout\ = (!\A~combout\(3) & ((\A~combout\(1) & ((\ShiftRight1~41_combout\))) # (!\A~combout\(1) & (\ShiftRight1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(1),
	datac => \ShiftRight1~35_combout\,
	datad => \ShiftRight1~41_combout\,
	combout => \ShiftRight2~37_combout\);

-- Location: LCCOMB_X30_Y25_N4
\ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\A~combout\(3) & (\ShiftRight1~21_combout\ & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~21_combout\,
	datad => \A~combout\(4),
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X30_Y25_N30
\ShiftRight1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\A~combout\(4) & (((!\ShiftRight2~4_combout\ & \B~combout\(31))))) # (!\A~combout\(4) & (\ShiftRight1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~42_combout\,
	datab => \ShiftRight2~4_combout\,
	datac => \B~combout\(31),
	datad => \A~combout\(4),
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X30_Y25_N0
\ShiftRight1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (!\ShiftLeft0~10_combout\ & ((\ShiftRight1~56_combout\) # ((!\A~combout\(3) & \ShiftRight1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~56_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~57_combout\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X30_Y25_N10
\Mux1~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~139_combout\ = (\opcode~combout\(0) & (((\A~combout\(31))))) # (!\opcode~combout\(0) & ((\A~combout\(31) & (\ShiftLeft1~71_combout\)) # (!\A~combout\(31) & ((\ShiftRight1~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~71_combout\,
	datab => \ShiftRight1~58_combout\,
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux1~139_combout\);

-- Location: LCCOMB_X30_Y21_N6
\cout~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~93_combout\ = \A~combout\(15) $ (\B~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datad => \B~combout\(15),
	combout => \cout~93_combout\);

-- Location: LCCOMB_X30_Y21_N10
\soma~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~25_combout\ = \cout~93_combout\ $ (((\A~combout\(14) & ((\cout~48_combout\) # (\B~combout\(14)))) # (!\A~combout\(14) & (\cout~48_combout\ & \B~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~93_combout\,
	datab => \A~combout\(14),
	datac => \cout~48_combout\,
	datad => \B~combout\(14),
	combout => \soma~25_combout\);

-- Location: LCCOMB_X30_Y21_N24
\Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux10~0_combout\) # ((!\A~combout\(15) & (\Mux10~4_combout\ & !\B~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \Mux10~4_combout\,
	datac => \Mux10~0_combout\,
	datad => \B~combout\(15),
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X34_Y29_N2
\ShiftLeft1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~74_combout\ = (\B~combout\(0) & (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft1~74_combout\);

-- Location: LCCOMB_X30_Y30_N10
\ShiftLeft1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~75_combout\ = (!\Add0~6_combout\ & ((\Add0~8_combout\ & ((\ShiftLeft1~74_combout\))) # (!\Add0~8_combout\ & (\ShiftLeft1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~8_combout\,
	datac => \ShiftLeft1~62_combout\,
	datad => \ShiftLeft1~74_combout\,
	combout => \ShiftLeft1~75_combout\);

-- Location: LCCOMB_X30_Y30_N20
\ShiftLeft1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~77_combout\ = (\ShiftRight0~15_combout\ & ((\ShiftLeft1~75_combout\) # ((\ShiftLeft1~76_combout\ & !\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~76_combout\,
	datab => \Add0~8_combout\,
	datac => \ShiftRight0~15_combout\,
	datad => \ShiftLeft1~75_combout\,
	combout => \ShiftLeft1~77_combout\);

-- Location: LCCOMB_X30_Y30_N6
\Mux1~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~145_combout\ = (\opcode~combout\(0) & (((\A~combout\(31))))) # (!\opcode~combout\(0) & ((\A~combout\(31) & (\ShiftLeft1~77_combout\)) # (!\A~combout\(31) & ((\ShiftRight1~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~77_combout\,
	datab => \opcode~combout\(0),
	datac => \ShiftRight1~59_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~145_combout\);

-- Location: LCCOMB_X31_Y21_N30
\cout~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~95_combout\ = \A~combout\(16) $ (\B~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(16),
	datad => \B~combout\(16),
	combout => \cout~95_combout\);

-- Location: LCCOMB_X31_Y21_N0
\soma~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~26_combout\ = \B~combout\(16) $ (\A~combout\(16) $ (((\cout~21_combout\) # (\cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \cout~21_combout\,
	datac => \cout~4_combout\,
	datad => \A~combout\(16),
	combout => \soma~26_combout\);

-- Location: LCCOMB_X31_Y21_N18
\soma~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~27_combout\ = \B~combout\(16) $ (\A~combout\(16) $ (\cout~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datac => \A~combout\(16),
	datad => \cout~50_combout\,
	combout => \soma~27_combout\);

-- Location: LCCOMB_X31_Y21_N4
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~26_combout\))) # (!\opcode~combout\(0) & (\soma~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~27_combout\,
	datab => \opcode~combout\(2),
	datac => \soma~26_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X33_Y24_N24
\ShiftRight0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~105_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftRight0~69_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftRight0~78_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight0~105_combout\);

-- Location: LCCOMB_X33_Y24_N2
\ShiftRight0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~106_combout\ = (\ShiftRight0~105_combout\) # ((!\Add0~6_combout\ & \ShiftRight0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \ShiftRight0~105_combout\,
	datad => \ShiftRight0~96_combout\,
	combout => \ShiftRight0~106_combout\);

-- Location: LCCOMB_X34_Y25_N18
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!\ShiftRight2~4_combout\ & (\B~combout\(0) & (!\ShiftLeft0~10_combout\ & !\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~4_combout\,
	datab => \B~combout\(0),
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(3),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X34_Y25_N12
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux10~3_combout\ & ((\Mux10~2_combout\ & ((\ShiftRight0~106_combout\))) # (!\Mux10~2_combout\ & (\Mux16~1_combout\)))) # (!\Mux10~3_combout\ & (((!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux16~1_combout\,
	datac => \ShiftRight0~106_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X31_Y21_N14
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & ((\ShiftLeft0~81_combout\) # ((\Mux10~1_combout\)))) # (!\Mux16~2_combout\ & (((\ShiftLeft0~84_combout\ & !\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \ShiftLeft0~81_combout\,
	datac => \ShiftLeft0~84_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X31_Y21_N16
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~0_combout\ & (((\Mux16~3_combout\) # (!\opcode~combout\(2))))) # (!\Mux16~0_combout\ & (\cout~95_combout\ & ((\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~95_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux16~3_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X31_Y23_N16
\ShiftRight1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\A~combout\(0) & (\B~combout\(1))) # (!\A~combout\(0) & ((\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X33_Y27_N20
\tmp~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~11_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & ((\ShiftRight0~52_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \tmp~11_combout\);

-- Location: LCCOMB_X33_Y27_N30
\tmp~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~12_combout\ = (!\Add0~6_combout\ & ((\tmp~11_combout\) # ((\ShiftRight0~76_combout\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~11_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight0~76_combout\,
	datad => \Add0~4_combout\,
	combout => \tmp~12_combout\);

-- Location: LCCOMB_X33_Y27_N16
\tmp~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~13_combout\ = (!\Add0~8_combout\ & ((\tmp~12_combout\) # ((\ShiftRight0~97_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight0~97_combout\,
	datac => \Add0~6_combout\,
	datad => \tmp~12_combout\,
	combout => \tmp~13_combout\);

-- Location: LCCOMB_X33_Y27_N10
\tmp~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~14_combout\ = (\Mux1~87_combout\ & ((\tmp~13_combout\) # ((\Add0~8_combout\ & \ShiftRight0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight0~106_combout\,
	datac => \tmp~13_combout\,
	datad => \Mux1~87_combout\,
	combout => \tmp~14_combout\);

-- Location: LCCOMB_X31_Y25_N16
\tmp~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~15_combout\ = (\tmp~14_combout\) # ((!\ShiftRight2~5_combout\ & (\B~combout\(0) & !\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~5_combout\,
	datab => \tmp~14_combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(31),
	combout => \tmp~15_combout\);

-- Location: LCCOMB_X33_Y26_N14
\ShiftLeft1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~78_combout\ = (\B~combout\(0) & (!\ShiftRight0~17_combout\ & (!\Add0~6_combout\ & \ShiftLeft1~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~17_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~59_combout\,
	combout => \ShiftLeft1~78_combout\);

-- Location: LCCOMB_X33_Y26_N0
\ShiftRight1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = (!\ShiftLeft0~10_combout\ & ((\ShiftRight1~64_combout\) # (\ShiftRight1~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~64_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~61_combout\,
	combout => \ShiftRight1~65_combout\);

-- Location: LCCOMB_X33_Y26_N10
\Mux1~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~147_combout\ = (\A~combout\(31) & (((\ShiftLeft1~78_combout\) # (\opcode~combout\(0))))) # (!\A~combout\(31) & (\ShiftRight1~65_combout\ & ((!\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \ShiftRight1~65_combout\,
	datac => \ShiftLeft1~78_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux1~147_combout\);

-- Location: LCCOMB_X35_Y21_N22
\soma~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~28_combout\ = \cout~96_combout\ $ (((\A~combout\(18) & (\B~combout\(18) & \cout~23_combout\)) # (!\A~combout\(18) & ((\B~combout\(18)) # (\cout~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \cout~96_combout\,
	datac => \B~combout\(18),
	datad => \cout~23_combout\,
	combout => \soma~28_combout\);

-- Location: LCCOMB_X35_Y21_N8
\soma~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~29_combout\ = \cout~96_combout\ $ (((\A~combout\(18) & ((\B~combout\(18)) # (\cout~52_combout\))) # (!\A~combout\(18) & (\B~combout\(18) & \cout~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \cout~96_combout\,
	datac => \B~combout\(18),
	datad => \cout~52_combout\,
	combout => \soma~29_combout\);

-- Location: LCCOMB_X35_Y21_N10
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\opcode~combout\(0) & ((\soma~28_combout\) # ((\opcode~combout\(2))))) # (!\opcode~combout\(0) & (((\soma~29_combout\ & !\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \soma~28_combout\,
	datac => \soma~29_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X36_Y26_N20
\Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux10~2_combout\ & (\Mux10~3_combout\ & ((\ShiftRight0~30_combout\)))) # (!\Mux10~2_combout\ & (((\Mux13~11_combout\)) # (!\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux13~11_combout\,
	datad => \ShiftRight0~30_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X35_Y21_N16
\Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\A~combout\(19) & !\B~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux10~0_combout\,
	datac => \A~combout\(19),
	datad => \B~combout\(19),
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X31_Y26_N18
\Mux1~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~149_combout\ = (!\Mux10~1_combout\ & ((\A~combout\(3) & ((\ShiftRight1~8_combout\))) # (!\A~combout\(3) & (\ShiftRight1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~11_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftRight1~8_combout\,
	combout => \Mux1~149_combout\);

-- Location: LCCOMB_X31_Y26_N12
\Mux1~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~150_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~5_combout\))) # (!\A~combout\(31) & (\ShiftRight2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~47_combout\,
	datab => \ShiftRight2~11_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~5_combout\,
	combout => \Mux1~150_combout\);

-- Location: LCCOMB_X31_Y26_N14
\Mux1~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~151_combout\ = (\Mux1~47_combout\ & ((\Mux1~150_combout\ & ((\B~combout\(0)))) # (!\Mux1~150_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \B~combout\(0),
	datac => \Mux1~47_combout\,
	datad => \Mux1~150_combout\,
	combout => \Mux1~151_combout\);

-- Location: LCCOMB_X32_Y26_N8
\Mux1~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~152_combout\ = (\Mux1~51_combout\ & (\ShiftLeft1~69_combout\ & ((\Mux1~50_combout\)))) # (!\Mux1~51_combout\ & (((\Mux1~151_combout\) # (!\Mux1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~69_combout\,
	datab => \Mux1~151_combout\,
	datac => \Mux1~51_combout\,
	datad => \Mux1~50_combout\,
	combout => \Mux1~152_combout\);

-- Location: LCCOMB_X32_Y26_N10
\Mux1~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~153_combout\ = (\Mux1~152_combout\ & ((\Mux1~149_combout\) # ((!\Mux1~46_combout\)))) # (!\Mux1~152_combout\ & (((\ShiftLeft1~36_combout\ & \Mux1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~149_combout\,
	datab => \Mux1~152_combout\,
	datac => \ShiftLeft1~36_combout\,
	datad => \Mux1~46_combout\,
	combout => \Mux1~153_combout\);

-- Location: LCCOMB_X31_Y30_N12
\Mux1~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~155_combout\ = (\A~combout\(31) & (((\ShiftLeft2~7_combout\) # (\Mux1~47_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~17_combout\ & ((!\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~17_combout\,
	datab => \ShiftLeft2~7_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~47_combout\,
	combout => \Mux1~155_combout\);

-- Location: LCCOMB_X31_Y30_N22
\Mux1~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~156_combout\ = (\Mux1~47_combout\ & ((\Mux1~155_combout\ & ((\B~combout\(0)))) # (!\Mux1~155_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~47_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~155_combout\,
	combout => \Mux1~156_combout\);

-- Location: LCCOMB_X31_Y29_N10
\Mux1~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~157_combout\ = (\Mux1~50_combout\ & ((\Mux1~51_combout\ & ((\ShiftLeft1~68_combout\))) # (!\Mux1~51_combout\ & (\Mux1~156_combout\)))) # (!\Mux1~50_combout\ & (((!\Mux1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~50_combout\,
	datab => \Mux1~156_combout\,
	datac => \Mux1~51_combout\,
	datad => \ShiftLeft1~68_combout\,
	combout => \Mux1~157_combout\);

-- Location: LCCOMB_X34_Y21_N28
\cout~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~97_combout\ = \A~combout\(18) $ (\B~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datac => \B~combout\(18),
	combout => \cout~97_combout\);

-- Location: LCCOMB_X34_Y21_N22
\soma~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~30_combout\ = \cout~97_combout\ $ (((\cout~22_combout\ & ((\B~combout\(17)) # (!\A~combout\(17)))) # (!\cout~22_combout\ & (\B~combout\(17) & !\A~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~22_combout\,
	datab => \B~combout\(17),
	datac => \A~combout\(17),
	datad => \cout~97_combout\,
	combout => \soma~30_combout\);

-- Location: LCCOMB_X35_Y21_N4
\soma~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~31_combout\ = \A~combout\(18) $ (\B~combout\(18) $ (\cout~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datac => \B~combout\(18),
	datad => \cout~52_combout\,
	combout => \soma~31_combout\);

-- Location: LCCOMB_X34_Y21_N24
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~30_combout\))) # (!\opcode~combout\(0) & (\soma~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~31_combout\,
	datab => \soma~30_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X34_Y25_N22
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux10~2_combout\ & (\ShiftRight0~62_combout\ & ((\Mux10~3_combout\)))) # (!\Mux10~2_combout\ & (((\Mux14~10_combout\) # (!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux14~10_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X34_Y21_N10
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux10~1_combout\ & (\Mux14~4_combout\)) # (!\Mux10~1_combout\ & ((\Mux14~4_combout\ & ((\ShiftLeft0~97_combout\))) # (!\Mux14~4_combout\ & (\ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux14~4_combout\,
	datac => \ShiftLeft0~92_combout\,
	datad => \ShiftLeft0~97_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X34_Y21_N12
\Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\opcode~combout\(2) & ((\Mux14~3_combout\ & (\Mux14~5_combout\)) # (!\Mux14~3_combout\ & ((\cout~97_combout\))))) # (!\opcode~combout\(2) & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \opcode~combout\(2),
	datac => \Mux14~3_combout\,
	datad => \cout~97_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X32_Y25_N6
\Mux1~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~162_combout\ = (\Mux1~161_combout\ & (((!\Mux10~1_combout\ & \Mux28~12_combout\)))) # (!\Mux1~161_combout\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux1~161_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux28~12_combout\,
	combout => \Mux1~162_combout\);

-- Location: LCCOMB_X34_Y26_N24
\Mux10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~13_combout\ = (\A~combout\(3)) # (\ShiftLeft0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux10~13_combout\);

-- Location: LCCOMB_X34_Y26_N10
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\Mux10~13_combout\ & ((\ShiftLeft0~62_combout\) # ((\Mux1~38_combout\ & \ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~38_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \Mux10~13_combout\,
	datad => \ShiftLeft0~62_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X34_Y25_N16
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux10~3_combout\ & ((\Mux10~2_combout\ & (\ShiftRight0~108_combout\)) # (!\Mux10~2_combout\ & ((\Mux12~2_combout\))))) # (!\Mux10~3_combout\ & (!\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \ShiftRight0~108_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X29_Y28_N22
\ShiftRight1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & (\ShiftRight0~47_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~47_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight1~66_combout\);

-- Location: LCCOMB_X30_Y21_N12
\cout~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~99_combout\ = \A~combout\(14) $ (\B~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	combout => \cout~99_combout\);

-- Location: LCCOMB_X29_Y29_N14
\Mux1~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~168_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & (\ShiftLeft2~15_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft2~15_combout\,
	datab => \Mux1~47_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight2~23_combout\,
	combout => \Mux1~168_combout\);

-- Location: LCCOMB_X32_Y29_N20
\Mux1~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~169_combout\ = (\Mux1~168_combout\ & ((\B~combout\(0)) # ((!\Mux1~47_combout\)))) # (!\Mux1~168_combout\ & (((\B~combout\(31) & \Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Mux1~168_combout\,
	datac => \B~combout\(31),
	datad => \Mux1~47_combout\,
	combout => \Mux1~169_combout\);

-- Location: LCCOMB_X32_Y29_N22
\Mux1~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~170_combout\ = (\Mux1~50_combout\ & ((\Mux1~51_combout\ & ((\ShiftLeft1~58_combout\))) # (!\Mux1~51_combout\ & (\Mux1~169_combout\)))) # (!\Mux1~50_combout\ & (!\Mux1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~50_combout\,
	datab => \Mux1~51_combout\,
	datac => \Mux1~169_combout\,
	datad => \ShiftLeft1~58_combout\,
	combout => \Mux1~170_combout\);

-- Location: LCCOMB_X36_Y22_N16
\soma~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~34_combout\ = \B~combout\(21) $ (\A~combout\(21) $ (((\cout~25_combout\) # (\cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~25_combout\,
	datab => \cout~2_combout\,
	datac => \B~combout\(21),
	datad => \A~combout\(21),
	combout => \soma~34_combout\);

-- Location: LCCOMB_X36_Y22_N18
\soma~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~35_combout\ = \cout~100_combout\ $ (((\A~combout\(20) & ((\B~combout\(20)) # (\cout~54_combout\))) # (!\A~combout\(20) & (\B~combout\(20) & \cout~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datac => \cout~54_combout\,
	datad => \cout~100_combout\,
	combout => \soma~35_combout\);

-- Location: LCCOMB_X36_Y22_N12
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (\soma~34_combout\)) # (!\opcode~combout\(0) & ((\soma~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~34_combout\,
	datab => \soma~35_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X34_Y26_N4
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\Mux10~13_combout\ & ((\ShiftLeft0~71_combout\) # ((\ShiftLeft0~35_combout\ & \Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~13_combout\,
	datab => \ShiftLeft0~71_combout\,
	datac => \ShiftLeft0~35_combout\,
	datad => \Mux1~38_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X36_Y26_N24
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux10~2_combout\ & (\Mux10~3_combout\ & (\ShiftRight0~109_combout\))) # (!\Mux10~2_combout\ & (((\Mux11~2_combout\)) # (!\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~3_combout\,
	datac => \ShiftRight0~109_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X33_Y26_N22
\ShiftLeft2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~27_combout\ = (\ShiftRight0~17_combout\ & (\B~combout\(0))) # (!\ShiftRight0~17_combout\ & ((\Add0~6_combout\ & (\B~combout\(0))) # (!\Add0~6_combout\ & ((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~17_combout\,
	datac => \Add0~6_combout\,
	datad => \B~combout\(1),
	combout => \ShiftLeft2~27_combout\);

-- Location: LCCOMB_X32_Y29_N8
\Mux1~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~173_combout\ = (\A~combout\(31) & (((\ShiftLeft2~27_combout\) # (\Mux1~47_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~36_combout\ & ((!\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~36_combout\,
	datab => \ShiftLeft2~27_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~47_combout\,
	combout => \Mux1~173_combout\);

-- Location: LCCOMB_X32_Y29_N2
\Mux1~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~174_combout\ = (\Mux1~47_combout\ & ((\Mux1~173_combout\ & ((\B~combout\(0)))) # (!\Mux1~173_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~47_combout\,
	datac => \Mux1~173_combout\,
	datad => \B~combout\(0),
	combout => \Mux1~174_combout\);

-- Location: LCCOMB_X32_Y29_N28
\Mux1~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~175_combout\ = (\Mux1~50_combout\ & ((\Mux1~51_combout\ & ((\ShiftLeft1~67_combout\))) # (!\Mux1~51_combout\ & (\Mux1~174_combout\)))) # (!\Mux1~50_combout\ & (((!\Mux1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~50_combout\,
	datab => \Mux1~174_combout\,
	datac => \Mux1~51_combout\,
	datad => \ShiftLeft1~67_combout\,
	combout => \Mux1~175_combout\);

-- Location: LCCOMB_X34_Y21_N20
\soma~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~36_combout\ = \cout~22_combout\ $ (\B~combout\(17) $ (\A~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~22_combout\,
	datab => \B~combout\(17),
	datac => \A~combout\(17),
	combout => \soma~36_combout\);

-- Location: LCCOMB_X36_Y26_N4
\Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux10~2_combout\ & (\Mux10~3_combout\ & (\ShiftRight0~103_combout\))) # (!\Mux10~2_combout\ & (((\Mux15~0_combout\)) # (!\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~3_combout\,
	datac => \ShiftRight0~103_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X36_Y26_N22
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~3_combout\ & (((\Mux10~1_combout\) # (\ShiftLeft0~95_combout\)))) # (!\Mux15~3_combout\ & (\ShiftLeft0~90_combout\ & (!\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~90_combout\,
	datab => \Mux15~3_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~95_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X30_Y25_N22
\Mux1~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~177_combout\ = (\Mux25~4_combout\ & (!\ShiftLeft0~10_combout\ & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~4_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(4),
	combout => \Mux1~177_combout\);

-- Location: LCCOMB_X30_Y28_N2
\ShiftRight2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~42_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \A~combout\(2),
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight2~42_combout\);

-- Location: LCCOMB_X33_Y24_N22
\ShiftRight0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~108_combout\ = (\Add0~6_combout\ & (((!\Add0~4_combout\ & \ShiftRight0~69_combout\)))) # (!\Add0~6_combout\ & (\ShiftRight0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~80_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight0~108_combout\);

-- Location: LCCOMB_X35_Y27_N28
\Mux28~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (!\opcode~combout\(0) & ((\A~combout\(31)) # ((!\ShiftLeft0~10_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux28~17_combout\);

-- Location: LCCOMB_X36_Y25_N26
\Mux21~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~11_combout\ = (!\A~combout\(4) & (\ShiftLeft0~88_combout\ & !\ShiftLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \ShiftLeft0~88_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux21~11_combout\);

-- Location: LCCOMB_X32_Y25_N20
\Mux24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & \ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~85_combout\,
	combout => \Mux24~10_combout\);

-- Location: LCCOMB_X32_Y25_N14
\Mux23~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~11_combout\ = (!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & \ShiftLeft0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~91_combout\,
	combout => \Mux23~11_combout\);

-- Location: LCCOMB_X36_Y25_N20
\Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~11_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(4) & \ShiftLeft0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~93_combout\,
	combout => \Mux22~11_combout\);

-- Location: LCCOMB_X36_Y25_N14
\Mux13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (\ShiftLeft0~54_combout\ & (!\A~combout\(2) & (!\A~combout\(3) & !\ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X34_Y25_N30
\Mux14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (!\A~combout\(3) & (!\ShiftLeft0~10_combout\ & (\ShiftLeft0~100_combout\ & !\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~10_combout\,
	datac => \ShiftLeft0~100_combout\,
	datad => \A~combout\(2),
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X31_Y24_N20
\Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~12_combout\ = \B~combout\(10) $ (\A~combout\(10) $ (((\cout~17_combout\ & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datac => \cout~17_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux22~12_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(16),
	combout => \B~combout\(16));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(3),
	combout => \opcode~combout\(3));

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LCCOMB_X31_Y23_N2
\Mux32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\B~combout\(0) & ((\A~combout\(0) & ((!\opcode~combout\(1)))) # (!\A~combout\(0) & ((\opcode~combout\(0)) # (\opcode~combout\(1)))))) # (!\B~combout\(0) & (\A~combout\(0) & ((\opcode~combout\(0)) # (\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X33_Y23_N8
\tmp~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~10_combout\ = (\B~combout\(0)) # (\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \tmp~10_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: LCCOMB_X33_Y23_N18
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\opcode~combout\(1) & (((\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & ((!\tmp~10_combout\))) # (!\opcode~combout\(0) & (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \opcode~combout\(1),
	datac => \tmp~10_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X33_Y23_N30
\tmp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~9_combout\ = \B~combout\(0) $ (\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \tmp~9_combout\);

-- Location: LCCOMB_X33_Y23_N4
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\ & ((\tmp~15_combout\) # ((!\opcode~combout\(1))))) # (!\Mux32~0_combout\ & (((\opcode~combout\(1) & \tmp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~15_combout\,
	datab => \Mux32~0_combout\,
	datac => \opcode~combout\(1),
	datad => \tmp~9_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X29_Y26_N24
\Mux32~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux32~1_combout\))) # (!\opcode~combout\(2) & (\Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(2),
	datac => \Mux32~2_combout\,
	datad => \Mux32~1_combout\,
	combout => \Mux32~3_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X34_Y23_N2
\ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\A~combout\(0) & ((\B~combout\(3)))) # (!\A~combout\(0) & (\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X33_Y27_N28
\ShiftRight1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & ((\ShiftRight0~52_combout\))) # (!\A~combout\(1) & (\ShiftRight1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~52_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X35_Y26_N10
\ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\A~combout\(0) & ((\B~combout\(7)))) # (!\A~combout\(0) & (\B~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \B~combout\(6),
	datad => \B~combout\(7),
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X33_Y27_N26
\ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\A~combout\(1) & ((\ShiftRight0~51_combout\))) # (!\A~combout\(1) & (\ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~51_combout\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X33_Y27_N14
\ShiftRight1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (!\A~combout\(4) & ((\ShiftRight1~62_combout\) # ((\A~combout\(2) & \ShiftRight1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftRight1~62_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight1~26_combout\,
	combout => \ShiftRight1~63_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X30_Y28_N16
\ShiftRight1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (!\A~combout\(3) & ((\ShiftRight1~63_combout\) # ((\ShiftRight1~45_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \ShiftRight1~63_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(3),
	combout => \ShiftRight1~64_combout\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: LCCOMB_X31_Y21_N2
\ShiftLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\A~combout\(16)) # ((\A~combout\(15)) # ((\A~combout\(13)) # (\A~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \A~combout\(15),
	datac => \A~combout\(13),
	datad => \A~combout\(14),
	combout => \ShiftLeft0~4_combout\);

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: LCCOMB_X33_Y22_N12
\ShiftLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\A~combout\(6)) # ((\A~combout\(5)) # ((\A~combout\(7)) # (\A~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \A~combout\(5),
	datac => \A~combout\(7),
	datad => \A~combout\(8),
	combout => \ShiftLeft0~2_combout\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: LCCOMB_X35_Y21_N2
\ShiftLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\A~combout\(18)) # ((\A~combout\(17)) # ((\A~combout\(20)) # (\A~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \A~combout\(17),
	datac => \A~combout\(20),
	datad => \A~combout\(19),
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X31_Y21_N20
\ShiftLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\ShiftLeft0~3_combout\) # ((\ShiftLeft0~4_combout\) # ((\ShiftLeft0~2_combout\) # (\ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~6_combout\);

-- Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(31),
	combout => \A~combout\(31));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(29),
	combout => \A~combout\(29));

-- Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(30),
	combout => \A~combout\(30));

-- Location: LCCOMB_X33_Y20_N20
\ShiftLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\A~combout\(31)) # ((\A~combout\(29)) # (\A~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	datac => \A~combout\(29),
	datad => \A~combout\(30),
	combout => \ShiftLeft0~9_combout\);

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(27),
	combout => \A~combout\(27));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(25),
	combout => \A~combout\(25));

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(26),
	combout => \A~combout\(26));

-- Location: LCCOMB_X33_Y20_N18
\ShiftLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\A~combout\(28)) # ((\A~combout\(27)) # ((\A~combout\(25)) # (\A~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \A~combout\(27),
	datac => \A~combout\(25),
	datad => \A~combout\(26),
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X33_Y20_N22
\ShiftLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\ShiftLeft0~7_combout\) # ((\ShiftLeft0~6_combout\) # ((\ShiftLeft0~9_combout\) # (\ShiftLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \ShiftLeft0~10_combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(12),
	combout => \B~combout\(12));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(13),
	combout => \B~combout\(13));

-- Location: LCCOMB_X36_Y27_N28
\ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\A~combout\(0) & ((\B~combout\(13)))) # (!\A~combout\(0) & (\B~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(12),
	datac => \B~combout\(13),
	datad => \A~combout\(0),
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X30_Y27_N28
\ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\ShiftRight0~54_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X30_Y27_N14
\ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\ShiftRight1~46_combout\) # ((\ShiftRight1~25_combout\ & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \A~combout\(2),
	datad => \ShiftRight1~46_combout\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X30_Y27_N20
\ShiftRight1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\A~combout\(3) & ((\A~combout\(4) & (\ShiftRight1~44_combout\)) # (!\A~combout\(4) & ((\ShiftRight1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~44_combout\,
	datab => \ShiftRight1~47_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(3),
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X33_Y26_N4
\ShiftRight2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~40_combout\ = (\ShiftLeft0~10_combout\ & (\B~combout\(31))) # (!\ShiftLeft0~10_combout\ & (((\ShiftRight1~64_combout\) # (\ShiftRight1~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftRight1~64_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~61_combout\,
	combout => \ShiftRight2~40_combout\);

-- Location: LCCOMB_X33_Y26_N20
\Mux1~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~148_combout\ = (\Mux1~147_combout\ & (((\B~combout\(0)) # (!\opcode~combout\(0))))) # (!\Mux1~147_combout\ & (\ShiftRight2~40_combout\ & ((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~147_combout\,
	datab => \ShiftRight2~40_combout\,
	datac => \B~combout\(0),
	datad => \opcode~combout\(0),
	combout => \Mux1~148_combout\);

-- Location: LCCOMB_X29_Y26_N10
\Mux32~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Mux32~3_combout\) # ((\opcode~combout\(3) & \Mux1~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux32~3_combout\,
	datad => \Mux1~148_combout\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X31_Y22_N6
\Mux66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = ((!\opcode~combout\(1) & !\opcode~combout\(2))) # (!\opcode~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\opcode~combout\(2) & ((\B~combout\(1) & ((\A~combout\(1)) # (\opcode~combout\(0)))) # (!\B~combout\(1) & (\A~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux31~1_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X31_Y23_N28
\Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\opcode~combout\(0) & (\tmp~8_combout\)) # (!\opcode~combout\(0) & ((\A~combout\(1) $ (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~8_combout\,
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\opcode~combout\(2) & (((\Mux31~5_combout\)))) # (!\opcode~combout\(2) & (\Mux31~0_combout\ $ (((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~5_combout\,
	datac => \opcode~combout\(2),
	datad => \B~combout\(1),
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X31_Y23_N6
\Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\opcode~combout\(1) & (((\Mux31~6_combout\)))) # (!\opcode~combout\(1) & ((\Mux31~2_combout\) # ((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~6_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X33_Y22_N16
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X33_Y22_N18
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A~combout\(1) & ((\Add0~1_cout\) # (GND))) # (!\A~combout\(1) & (!\Add0~1_cout\))
-- \Add0~3\ = CARRY((\A~combout\(1)) # (!\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y22_N20
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\A~combout\(2) & (!\Add0~3\ & VCC)) # (!\A~combout\(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!\A~combout\(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X33_Y22_N22
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A~combout\(3) & ((\Add0~5\) # (GND))) # (!\A~combout\(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((\A~combout\(3)) # (!\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X33_Y22_N24
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\A~combout\(4) & (!\Add0~7\ & VCC)) # (!\A~combout\(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!\A~combout\(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: LCCOMB_X33_Y22_N26
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A~combout\(5) & ((\Add0~9\) # (GND))) # (!\A~combout\(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((\A~combout\(5)) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X33_Y22_N28
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\A~combout\(6) & (!\Add0~11\ & VCC)) # (!\A~combout\(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!\A~combout\(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X33_Y22_N30
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A~combout\(7) & ((\Add0~13\) # (GND))) # (!\A~combout\(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((\A~combout\(7)) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X33_Y21_N2
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\A~combout\(9) & ((\Add0~17\) # (GND))) # (!\A~combout\(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((\A~combout\(9)) # (!\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X33_Y21_N6
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\A~combout\(11) & ((\Add0~21\) # (GND))) # (!\A~combout\(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((\A~combout\(11)) # (!\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X33_Y21_N8
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\A~combout\(12) & (!\Add0~23\ & VCC)) # (!\A~combout\(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((!\A~combout\(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X33_Y21_N10
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\A~combout\(13) & ((\Add0~25\) # (GND))) # (!\A~combout\(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((\A~combout\(13)) # (!\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X33_Y21_N12
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\A~combout\(14) & (!\Add0~27\ & VCC)) # (!\A~combout\(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((!\A~combout\(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X33_Y21_N14
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\A~combout\(15) & ((\Add0~29\) # (GND))) # (!\A~combout\(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((\A~combout\(15)) # (!\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X33_Y20_N2
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\A~combout\(25) & ((\Add0~49\) # (GND))) # (!\A~combout\(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((\A~combout\(25)) # (!\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X33_Y20_N4
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\A~combout\(26) & (!\Add0~51\ & VCC)) # (!\A~combout\(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((!\A~combout\(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X33_Y20_N8
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\A~combout\(28) & (!\Add0~55\ & VCC)) # (!\A~combout\(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((!\A~combout\(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X33_Y20_N10
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\A~combout\(29) & ((\Add0~57\) # (GND))) # (!\A~combout\(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((\A~combout\(29)) # (!\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X33_Y20_N14
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\A~combout\(31) & ((\Add0~61\) # (GND))) # (!\A~combout\(31) & (!\Add0~61\))
-- \Add0~63\ = CARRY((\A~combout\(31)) # (!\Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X33_Y20_N16
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = \A~combout\(31) $ (\Add0~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	cin => \Add0~63\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X33_Y20_N28
\ShiftRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (!\Add0~60_combout\ & (!\Add0~64_combout\ & (!\Add0~62_combout\ & !\Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~64_combout\,
	datac => \Add0~62_combout\,
	datad => \Add0~58_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X32_Y21_N2
\ShiftRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (!\Add0~32_combout\ & (!\Add0~28_combout\ & (!\Add0~26_combout\ & !\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~30_combout\,
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X32_Y21_N0
\ShiftRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (!\Add0~20_combout\ & (!\Add0~18_combout\ & (!\Add0~24_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~22_combout\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X33_Y22_N6
\ShiftRight0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (!\Add0~16_combout\ & (!\Add0~14_combout\ & (!\Add0~12_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X32_Y21_N14
\ShiftRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\ShiftRight0~10_combout\ & (\ShiftRight0~9_combout\ & (\ShiftRight0~8_combout\ & \ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \ShiftRight0~9_combout\,
	datac => \ShiftRight0~8_combout\,
	datad => \ShiftRight0~7_combout\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X33_Y20_N26
\ShiftRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (!\Add0~54_combout\ & (!\Add0~52_combout\ & (!\Add0~56_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add0~52_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~50_combout\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X33_Y20_N30
\ShiftRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\ShiftRight0~12_combout\ & (\ShiftRight0~14_combout\ & (\ShiftRight0~11_combout\ & \ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~14_combout\,
	datac => \ShiftRight0~11_combout\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X32_Y24_N8
\ShiftLeft1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~59_combout\ = (!\Add0~8_combout\ & \ShiftRight0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \ShiftRight0~15_combout\,
	combout => \ShiftLeft1~59_combout\);

-- Location: LCCOMB_X31_Y30_N26
\ShiftRight0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~104_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & (!\Add0~2_combout\ & !\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight0~104_combout\);

-- Location: LCCOMB_X31_Y30_N28
\ShiftLeft2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~24_combout\ = (\ShiftLeft1~59_combout\ & ((\ShiftRight0~104_combout\ & ((\B~combout\(1)))) # (!\ShiftRight0~104_combout\ & (\B~combout\(0))))) # (!\ShiftLeft1~59_combout\ & (\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftLeft1~59_combout\,
	datac => \B~combout\(1),
	datad => \ShiftRight0~104_combout\,
	combout => \ShiftLeft2~24_combout\);

-- Location: LCCOMB_X31_Y23_N0
\ShiftLeft0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\A~combout\(0) & ((\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X34_Y28_N8
\ShiftLeft2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~6_combout\ = (!\Add0~2_combout\ & !\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftLeft2~6_combout\);

-- Location: LCCOMB_X31_Y30_N0
\ShiftLeft1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~70_combout\ = (!\Add0~6_combout\ & (\ShiftLeft1~59_combout\ & (\ShiftLeft0~34_combout\ & \ShiftLeft2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~59_combout\,
	datac => \ShiftLeft0~34_combout\,
	datad => \ShiftLeft2~6_combout\,
	combout => \ShiftLeft1~70_combout\);

-- Location: LCCOMB_X31_Y30_N10
\Mux1~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~138_combout\ = (\Mux1~137_combout\ & ((\ShiftLeft2~24_combout\) # ((!\A~combout\(31))))) # (!\Mux1~137_combout\ & (((\A~combout\(31) & \ShiftLeft1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~137_combout\,
	datab => \ShiftLeft2~24_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft1~70_combout\,
	combout => \Mux1~138_combout\);

-- Location: LCCOMB_X29_Y26_N18
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\opcode~combout\(3) & ((\Mux1~138_combout\))) # (!\opcode~combout\(3) & (\Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux31~3_combout\,
	datad => \Mux1~138_combout\,
	combout => \Mux31~4_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(28),
	combout => \A~combout\(28));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(26),
	combout => \B~combout\(26));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(25),
	combout => \B~combout\(25));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(24),
	combout => \B~combout\(24));

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(20),
	combout => \B~combout\(20));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(19),
	combout => \B~combout\(19));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(11),
	combout => \B~combout\(11));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(10),
	combout => \B~combout\(10));

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(9),
	combout => \B~combout\(9));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X35_Y23_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X35_Y23_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A~combout\(1) & ((!\LessThan0~1_cout\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X35_Y23_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan0~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X35_Y23_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\LessThan0~5_cout\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X35_Y23_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\LessThan0~7_cout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X35_Y23_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A~combout\(5) & ((!\LessThan0~9_cout\) # (!\B~combout\(5)))) # (!\A~combout\(5) & (!\B~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X35_Y23_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B~combout\(6) & ((!\LessThan0~11_cout\) # (!\A~combout\(6)))) # (!\B~combout\(6) & (!\A~combout\(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X35_Y23_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B~combout\(7) & (\A~combout\(7) & !\LessThan0~13_cout\)) # (!\B~combout\(7) & ((\A~combout\(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X35_Y23_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\B~combout\(8) & ((!\LessThan0~15_cout\) # (!\A~combout\(8)))) # (!\B~combout\(8) & (!\A~combout\(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X35_Y23_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\A~combout\(9) & ((!\LessThan0~17_cout\) # (!\B~combout\(9)))) # (!\A~combout\(9) & (!\B~combout\(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \B~combout\(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X35_Y23_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\A~combout\(10) & (\B~combout\(10) & !\LessThan0~19_cout\)) # (!\A~combout\(10) & ((\B~combout\(10)) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \B~combout\(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X35_Y23_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\A~combout\(11) & ((!\LessThan0~21_cout\) # (!\B~combout\(11)))) # (!\A~combout\(11) & (!\B~combout\(11) & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X35_Y23_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\A~combout\(12) & (\B~combout\(12) & !\LessThan0~23_cout\)) # (!\A~combout\(12) & ((\B~combout\(12)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datab => \B~combout\(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X35_Y23_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A~combout\(13) & ((!\LessThan0~25_cout\) # (!\B~combout\(13)))) # (!\A~combout\(13) & (!\B~combout\(13) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X35_Y23_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\B~combout\(14) & ((!\LessThan0~27_cout\) # (!\A~combout\(14)))) # (!\B~combout\(14) & (!\A~combout\(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X35_Y23_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\B~combout\(15) & (\A~combout\(15) & !\LessThan0~29_cout\)) # (!\B~combout\(15) & ((\A~combout\(15)) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datab => \A~combout\(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X35_Y22_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\B~combout\(16) & ((!\LessThan0~31_cout\) # (!\A~combout\(16)))) # (!\B~combout\(16) & (!\A~combout\(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X35_Y22_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\B~combout\(17) & (\A~combout\(17) & !\LessThan0~33_cout\)) # (!\B~combout\(17) & ((\A~combout\(17)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X35_Y22_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B~combout\(18) & ((!\LessThan0~35_cout\) # (!\A~combout\(18)))) # (!\B~combout\(18) & (!\A~combout\(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X35_Y22_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\A~combout\(19) & ((!\LessThan0~37_cout\) # (!\B~combout\(19)))) # (!\A~combout\(19) & (!\B~combout\(19) & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \B~combout\(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X35_Y22_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\A~combout\(20) & (\B~combout\(20) & !\LessThan0~39_cout\)) # (!\A~combout\(20) & ((\B~combout\(20)) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X35_Y22_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\B~combout\(21) & (\A~combout\(21) & !\LessThan0~41_cout\)) # (!\B~combout\(21) & ((\A~combout\(21)) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(21),
	datab => \A~combout\(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X35_Y22_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B~combout\(22) & ((!\LessThan0~43_cout\) # (!\A~combout\(22)))) # (!\B~combout\(22) & (!\A~combout\(22) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X35_Y22_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B~combout\(23) & (\A~combout\(23) & !\LessThan0~45_cout\)) # (!\B~combout\(23) & ((\A~combout\(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X35_Y22_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A~combout\(24) & (\B~combout\(24) & !\LessThan0~47_cout\)) # (!\A~combout\(24) & ((\B~combout\(24)) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X35_Y22_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\A~combout\(25) & ((!\LessThan0~49_cout\) # (!\B~combout\(25)))) # (!\A~combout\(25) & (!\B~combout\(25) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \B~combout\(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X35_Y22_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A~combout\(26) & (\B~combout\(26) & !\LessThan0~51_cout\)) # (!\A~combout\(26) & ((\B~combout\(26)) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X35_Y22_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\B~combout\(27) & (\A~combout\(27) & !\LessThan0~53_cout\)) # (!\B~combout\(27) & ((\A~combout\(27)) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X35_Y22_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\B~combout\(28) & ((!\LessThan0~55_cout\) # (!\A~combout\(28)))) # (!\B~combout\(28) & (!\A~combout\(28) & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \A~combout\(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X35_Y22_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\B~combout\(29) & (\A~combout\(29) & !\LessThan0~57_cout\)) # (!\B~combout\(29) & ((\A~combout\(29)) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \A~combout\(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X35_Y22_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\B~combout\(30) & ((!\LessThan0~59_cout\) # (!\A~combout\(30)))) # (!\B~combout\(30) & (!\A~combout\(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X35_Y22_N30
\LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\B~combout\(31) & (\LessThan0~61_cout\ & \A~combout\(31))) # (!\B~combout\(31) & ((\LessThan0~61_cout\) # (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X31_Y20_N10
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\opcode~combout\(1)) # (!\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X35_Y27_N0
\Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\opcode~combout\(0) & \A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X34_Y22_N2
\Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\opcode~combout\(2) & ((\opcode~combout\(1)) # (\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X35_Y24_N18
\Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~15_combout\ = (\Mux29~0_combout\ & (((\ShiftRight0~15_combout\) # (!\Mux29~14_combout\)) # (!\Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight0~15_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux29~15_combout\);

-- Location: LCCOMB_X31_Y23_N10
\cout~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~36_combout\ = (\B~combout\(1) & ((\A~combout\(1)) # ((\B~combout\(0) & \A~combout\(0))))) # (!\B~combout\(1) & (\B~combout\(0) & (\A~combout\(0) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \cout~36_combout\);

-- Location: LCCOMB_X34_Y23_N12
\Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\opcode~combout\(1) & ((\opcode~combout\(0) & (\cout~9_combout\)) # (!\opcode~combout\(0) & ((\cout~36_combout\))))) # (!\opcode~combout\(1) & (((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~9_combout\,
	datab => \cout~36_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X34_Y23_N22
\Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\opcode~combout\(1) & (\A~combout\(2) $ (\B~combout\(2) $ (\Mux30~7_combout\)))) # (!\opcode~combout\(1) & ((\A~combout\(2) & ((\B~combout\(2)) # (\Mux30~7_combout\))) # (!\A~combout\(2) & (\B~combout\(2) & \Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datac => \opcode~combout\(1),
	datad => \Mux30~7_combout\,
	combout => \Mux30~8_combout\);

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(8),
	combout => \B~combout\(8));

-- Location: LCCOMB_X35_Y26_N16
\ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\A~combout\(0) & (\B~combout\(9))) # (!\A~combout\(0) & ((\B~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(9),
	datac => \B~combout\(8),
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X33_Y27_N0
\ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~50_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~50_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X34_Y28_N0
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Add0~6_combout\) # ((\Add0~2_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X34_Y28_N2
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux29~2_combout\ & ((\ShiftRight0~63_combout\) # ((\Mux29~1_combout\)))) # (!\Mux29~2_combout\ & (((\ShiftRight0~52_combout\ & !\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight0~52_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(17),
	combout => \B~combout\(17));

-- Location: LCCOMB_X36_Y27_N0
\ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\A~combout\(0) & ((\B~combout\(17)))) # (!\A~combout\(0) & (\B~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \B~combout\(17),
	datad => \A~combout\(0),
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X30_Y27_N4
\ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~53_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X33_Y25_N2
\ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~64_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datab => \ShiftRight0~64_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X34_Y28_N12
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\ShiftRight0~66_combout\) # (!\Mux29~1_combout\)))) # (!\Mux30~0_combout\ & (\ShiftRight0~49_combout\ & ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datab => \Mux30~0_combout\,
	datac => \ShiftRight0~66_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~1_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(31),
	combout => \B~combout\(31));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(30),
	combout => \B~combout\(30));

-- Location: LCCOMB_X35_Y28_N0
\ShiftRight0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\A~combout\(0) & (\B~combout\(31))) # (!\A~combout\(0) & ((\B~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(31),
	datac => \B~combout\(30),
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X33_Y28_N20
\ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\Add0~4_combout\ & (((!\Add0~2_combout\ & \ShiftRight0~6_combout\)))) # (!\Add0~4_combout\ & (\ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X33_Y28_N14
\ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\Add0~6_combout\ & ((\ShiftRight0~58_combout\))) # (!\Add0~6_combout\ & (\ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datac => \ShiftRight0~58_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X35_Y27_N22
\Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & ((\Mux30~1_combout\) # ((!\Mux29~5_combout\)))) # (!\Mux30~2_combout\ & (((\ShiftRight0~62_combout\ & \Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Mux30~1_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \Mux29~5_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X35_Y24_N14
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux29~14_combout\ & (\Mux29~15_combout\ & ((\Mux30~3_combout\)))) # (!\Mux29~14_combout\ & (((\Mux30~8_combout\)) # (!\Mux29~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux29~15_combout\,
	datac => \Mux30~8_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X29_Y24_N6
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux29~0_combout\ & (((\Mux30~4_combout\)))) # (!\Mux29~0_combout\ & ((\Mux30~4_combout\ & ((\LessThan0~62_combout\))) # (!\Mux30~4_combout\ & (!\cout~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~70_combout\,
	datab => \LessThan0~62_combout\,
	datac => \Mux29~0_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X34_Y23_N24
\ShiftLeft0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\A~combout\(0) & (\B~combout\(1))) # (!\A~combout\(0) & ((\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(2),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X31_Y30_N8
\ShiftLeft2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~7_combout\ = (\Add0~6_combout\ & (((\B~combout\(0))))) # (!\Add0~6_combout\ & ((\ShiftLeft2~6_combout\ & (\ShiftLeft0~22_combout\)) # (!\ShiftLeft2~6_combout\ & ((\B~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \B~combout\(0),
	datad => \ShiftLeft2~6_combout\,
	combout => \ShiftLeft2~7_combout\);

-- Location: LCCOMB_X32_Y29_N0
\Mux1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~33_combout\ = (\A~combout\(31) & (((\Add0~8_combout\) # (!\ShiftRight0~15_combout\)))) # (!\A~combout\(31) & (\ShiftLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftRight0~15_combout\,
	datac => \A~combout\(31),
	datad => \Add0~8_combout\,
	combout => \Mux1~33_combout\);

-- Location: LCCOMB_X31_Y30_N18
\Mux1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~42_combout\ = (\A~combout\(31) & (((\ShiftLeft2~7_combout\) # (\Mux1~33_combout\)))) # (!\A~combout\(31) & (\ShiftRight2~17_combout\ & ((!\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~17_combout\,
	datab => \ShiftLeft2~7_combout\,
	datac => \A~combout\(31),
	datad => \Mux1~33_combout\,
	combout => \Mux1~42_combout\);

-- Location: LCCOMB_X31_Y30_N4
\Mux1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~43_combout\ = (\Mux1~42_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~42_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~42_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~43_combout\);

-- Location: LCCOMB_X33_Y26_N6
\Mux1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~28_combout\ = (\opcode~combout\(0)) # ((!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & !\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \opcode~combout\(0),
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~28_combout\);

-- Location: LCCOMB_X32_Y24_N26
\Mux1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~27_combout\ = (\A~combout\(31) & (((!\opcode~combout\(0))))) # (!\A~combout\(31) & (!\A~combout\(4) & (!\ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux1~27_combout\);

-- Location: LCCOMB_X31_Y26_N22
\Mux1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~44_combout\ = (\Mux1~28_combout\ & ((\Mux1~27_combout\ & (\Mux1~41_combout\)) # (!\Mux1~27_combout\ & ((\Mux1~43_combout\))))) # (!\Mux1~28_combout\ & (((!\Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~41_combout\,
	datab => \Mux1~43_combout\,
	datac => \Mux1~28_combout\,
	datad => \Mux1~27_combout\,
	combout => \Mux1~44_combout\);

-- Location: LCCOMB_X34_Y29_N4
\ShiftLeft1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~83_combout\ = (\Add0~2_combout\ & (\B~combout\(0) & ((!\A~combout\(0))))) # (!\Add0~2_combout\ & (((\ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~22_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft1~83_combout\);

-- Location: LCCOMB_X31_Y29_N8
\ShiftLeft1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~37_combout\ = (!\Add0~4_combout\ & (\ShiftLeft1~83_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftLeft1~83_combout\,
	datac => \Add0~6_combout\,
	combout => \ShiftLeft1~37_combout\);

-- Location: LCCOMB_X35_Y28_N22
\ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\A~combout\(0) & (\B~combout\(27))) # (!\A~combout\(0) & ((\B~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \B~combout\(26),
	datac => \A~combout\(0),
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X35_Y28_N24
\ShiftRight1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & ((\ShiftRight0~6_combout\))) # (!\A~combout\(2) & (\ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftRight0~6_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight1~17_combout\);

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(28),
	combout => \B~combout\(28));

-- Location: LCCOMB_X35_Y28_N2
\ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\A~combout\(0) & (\B~combout\(29))) # (!\A~combout\(0) & ((\B~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \B~combout\(28),
	datac => \A~combout\(0),
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X35_Y28_N6
\ShiftRight1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~67_combout\ = (\ShiftRight1~17_combout\) # ((!\A~combout\(2) & (\A~combout\(1) & \ShiftRight0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftRight1~17_combout\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight1~67_combout\);

-- Location: LCCOMB_X31_Y29_N2
\Mux1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~39_combout\ = (!\ShiftLeft0~10_combout\ & ((\ShiftRight1~16_combout\) # ((\A~combout\(3) & \ShiftRight1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~67_combout\,
	combout => \Mux1~39_combout\);

-- Location: LCCOMB_X31_Y29_N6
\Mux1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~45_combout\ = (\Mux1~29_combout\ & ((\Mux1~44_combout\ & ((\Mux1~39_combout\))) # (!\Mux1~44_combout\ & (\ShiftLeft1~37_combout\)))) # (!\Mux1~29_combout\ & (\Mux1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~29_combout\,
	datab => \Mux1~44_combout\,
	datac => \ShiftLeft1~37_combout\,
	datad => \Mux1~39_combout\,
	combout => \Mux1~45_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\opcode~combout\(3) & ((\Mux1~45_combout\))) # (!\opcode~combout\(3) & (\Mux30~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux1~45_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X29_Y24_N8
\tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~1_combout\ = (\B~combout\(3)) # (\A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	combout => \tmp~1_combout\);

-- Location: LCCOMB_X29_Y24_N26
\Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~17_combout\ = (\Mux29~16_combout\ & ((\Mux29~0_combout\) # ((\LessThan0~62_combout\)))) # (!\Mux29~16_combout\ & (!\Mux29~0_combout\ & (!\tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~16_combout\,
	datab => \Mux29~0_combout\,
	datac => \tmp~1_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux29~17_combout\);

-- Location: LCCOMB_X36_Y28_N22
\ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\A~combout\(0) & (\B~combout\(20))) # (!\A~combout\(0) & ((\B~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(0),
	datac => \B~combout\(19),
	combout => \ShiftRight0~27_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(23),
	combout => \B~combout\(23));

-- Location: LCCOMB_X36_Y28_N18
\ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\A~combout\(0) & ((\B~combout\(24)))) # (!\A~combout\(0) & (\B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(23),
	datad => \B~combout\(24),
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X33_Y28_N30
\ShiftRight1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\A~combout\(2) & ((\ShiftRight0~24_combout\))) # (!\A~combout\(2) & (\ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight0~27_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X35_Y28_N18
\ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\A~combout\(0) & ((\B~combout\(26)))) # (!\A~combout\(0) & (\B~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(25),
	datac => \B~combout\(26),
	combout => \ShiftRight0~23_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(22),
	combout => \B~combout\(22));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(21),
	combout => \B~combout\(21));

-- Location: LCCOMB_X36_Y28_N28
\ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\A~combout\(0) & (\B~combout\(22))) # (!\A~combout\(0) & ((\B~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(22),
	datad => \B~combout\(21),
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X33_Y28_N28
\ShiftRight1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\A~combout\(2) & (\ShiftRight0~23_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X33_Y28_N16
\ShiftRight1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\A~combout\(1) & ((\ShiftRight1~9_combout\))) # (!\A~combout\(1) & (\ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~10_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~9_combout\,
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X31_Y26_N28
\ShiftRight2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~11_combout\ = (\ShiftRight2~10_combout\) # ((\ShiftRight1~11_combout\ & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~10_combout\,
	datab => \ShiftRight1~11_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight2~11_combout\);

-- Location: LCCOMB_X32_Y26_N24
\ShiftLeft2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~5_combout\ = (\Add0~4_combout\ & (((\B~combout\(0))))) # (!\Add0~4_combout\ & ((\Add0~6_combout\ & ((\B~combout\(0)))) # (!\Add0~6_combout\ & (\ShiftLeft1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datab => \B~combout\(0),
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft2~5_combout\);

-- Location: LCCOMB_X31_Y26_N6
\Mux1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~34_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~5_combout\))) # (!\A~combout\(31) & (\ShiftRight2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \ShiftRight2~11_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~5_combout\,
	combout => \Mux1~34_combout\);

-- Location: LCCOMB_X31_Y26_N8
\Mux1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~35_combout\ = (\Mux1~33_combout\ & ((\Mux1~34_combout\ & ((\B~combout\(0)))) # (!\Mux1~34_combout\ & (\B~combout\(31))))) # (!\Mux1~33_combout\ & (((\Mux1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \B~combout\(0),
	datac => \Mux1~33_combout\,
	datad => \Mux1~34_combout\,
	combout => \Mux1~35_combout\);

-- Location: LCCOMB_X31_Y26_N26
\Mux1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~36_combout\ = (\Mux1~28_combout\ & ((\Mux1~27_combout\ & (\Mux1~32_combout\)) # (!\Mux1~27_combout\ & ((\Mux1~35_combout\))))) # (!\Mux1~28_combout\ & (((!\Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~32_combout\,
	datab => \Mux1~35_combout\,
	datac => \Mux1~28_combout\,
	datad => \Mux1~27_combout\,
	combout => \Mux1~36_combout\);

-- Location: LCCOMB_X32_Y26_N14
\ShiftLeft1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~36_combout\ = (\ShiftLeft1~20_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	combout => \ShiftLeft1~36_combout\);

-- Location: LCCOMB_X31_Y26_N2
\Mux1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~29_combout\ = (!\Mux1~28_combout\ & (((!\Add0~8_combout\ & \ShiftRight0~15_combout\)) # (!\Mux1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight0~15_combout\,
	datac => \Mux1~28_combout\,
	datad => \Mux1~27_combout\,
	combout => \Mux1~29_combout\);

-- Location: LCCOMB_X31_Y26_N20
\Mux1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~37_combout\ = (\Mux1~36_combout\ & ((\Mux1~26_combout\) # ((!\Mux1~29_combout\)))) # (!\Mux1~36_combout\ & (((\ShiftLeft1~36_combout\ & \Mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~26_combout\,
	datab => \Mux1~36_combout\,
	datac => \ShiftLeft1~36_combout\,
	datad => \Mux1~29_combout\,
	combout => \Mux1~37_combout\);

-- Location: LCCOMB_X29_Y24_N10
\Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~18_combout\ = (\opcode~combout\(3) & ((\Mux1~37_combout\))) # (!\opcode~combout\(3) & (\Mux29~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~17_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux1~37_combout\,
	combout => \Mux29~18_combout\);

-- Location: LCCOMB_X36_Y28_N26
\ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\A~combout\(0) & (\B~combout\(23))) # (!\A~combout\(0) & ((\B~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(0),
	datac => \B~combout\(22),
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X29_Y28_N30
\ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\A~combout\(2) & (\ShiftRight0~47_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight0~47_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X29_Y28_N24
\ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (!\A~combout\(3) & ((\A~combout\(1) & ((\ShiftRight1~23_combout\))) # (!\A~combout\(1) & (\ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \A~combout\(3),
	datac => \A~combout\(1),
	datad => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X33_Y28_N24
\ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\A~combout\(1) & ((\ShiftRight0~6_combout\))) # (!\A~combout\(1) & (\ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~48_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X30_Y28_N8
\Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\ShiftRight1~24_combout\) # ((\A~combout\(3) & (!\A~combout\(2) & \ShiftRight1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~24_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight1~22_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X34_Y29_N26
\ShiftLeft1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~39_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~22_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \Add0~2_combout\,
	combout => \ShiftLeft1~39_combout\);

-- Location: LCCOMB_X31_Y23_N20
\cout~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~67_combout\ = (\B~combout\(0) & !\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \cout~67_combout\);

-- Location: LCCOMB_X32_Y25_N16
\ShiftLeft1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~40_combout\ = (\Add0~4_combout\ & (!\Add0~2_combout\ & ((\cout~67_combout\)))) # (!\Add0~4_combout\ & (((\ShiftLeft1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~2_combout\,
	datac => \ShiftLeft1~39_combout\,
	datad => \cout~67_combout\,
	combout => \ShiftLeft1~40_combout\);

-- Location: LCCOMB_X32_Y25_N22
\Mux28~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\A~combout\(31) & ((\ShiftLeft1~40_combout\))) # (!\A~combout\(31) & (\Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~12_combout\,
	datac => \ShiftLeft1~40_combout\,
	datad => \A~combout\(31),
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Mux28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~17_combout\ & (((!\Add0~6_combout\ & \ShiftLeft1~59_combout\)) # (!\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~17_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftLeft1~59_combout\,
	datad => \A~combout\(31),
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Mux28~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux1~74_combout\ & ((\Mux1~28_combout\) # ((\Mux28~13_combout\ & \Mux28~14_combout\)))) # (!\Mux1~74_combout\ & (\Mux28~13_combout\ & (\Mux28~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~74_combout\,
	datab => \Mux28~13_combout\,
	datac => \Mux28~14_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X33_Y23_N26
\Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\opcode~combout\(0) & ((\opcode~combout\(1)) # ((\B~combout\(4)) # (\A~combout\(4))))) # (!\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(4) & \A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X34_Y23_N4
\cout~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~37_combout\ = (\A~combout\(2) & ((\cout~36_combout\) # (\B~combout\(2)))) # (!\A~combout\(2) & (\cout~36_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \cout~36_combout\,
	datac => \B~combout\(2),
	combout => \cout~37_combout\);

-- Location: LCCOMB_X34_Y23_N14
\cout~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~38_combout\ = (\A~combout\(3) & ((\B~combout\(3)) # (\cout~37_combout\))) # (!\A~combout\(3) & (\B~combout\(3) & \cout~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datac => \cout~37_combout\,
	combout => \cout~38_combout\);

-- Location: LCCOMB_X33_Y23_N0
\soma~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~4_combout\ = \B~combout\(4) $ (\cout~38_combout\ $ (\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \cout~38_combout\,
	datad => \A~combout\(4),
	combout => \soma~4_combout\);

-- Location: LCCOMB_X31_Y23_N8
\cout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~9_combout\ = (\B~combout\(1) & (((\B~combout\(0) & !\A~combout\(0))) # (!\A~combout\(1)))) # (!\B~combout\(1) & (\B~combout\(0) & (!\A~combout\(0) & !\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \cout~9_combout\);

-- Location: LCCOMB_X34_Y23_N0
\cout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~10_combout\ = (\A~combout\(2) & (\B~combout\(2) & \cout~9_combout\)) # (!\A~combout\(2) & ((\B~combout\(2)) # (\cout~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \cout~9_combout\,
	combout => \cout~10_combout\);

-- Location: LCCOMB_X34_Y23_N28
\soma~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~5_combout\ = \cout~76_combout\ $ (((\A~combout\(3) & (\B~combout\(3) & \cout~10_combout\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (\cout~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~76_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \cout~10_combout\,
	combout => \soma~5_combout\);

-- Location: LCCOMB_X33_Y23_N28
\Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\opcode~combout\(1) & ((\Mux28~9_combout\ & ((\soma~5_combout\))) # (!\Mux28~9_combout\ & (\soma~4_combout\)))) # (!\opcode~combout\(1) & (\Mux28~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux28~9_combout\,
	datac => \soma~4_combout\,
	datad => \soma~5_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X33_Y23_N20
\Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (!\opcode~combout\(1) & \opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X33_Y23_N6
\Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux25~9_combout\ & (((!\B~combout\(4) & !\A~combout\(4))))) # (!\Mux25~9_combout\ & (\Mux28~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux25~9_combout\,
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux28~8_combout\))) # (!\opcode~combout\(2) & (\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux28~10_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux28~8_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Mux28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Mux28~11_combout\) # ((\opcode~combout\(3) & \Mux28~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux28~15_combout\,
	datac => \Mux28~11_combout\,
	combout => \Mux28~16_combout\);

-- Location: LCCOMB_X34_Y23_N30
\cout~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~78_combout\ = (\A~combout\(3) & (\B~combout\(3) & \cout~10_combout\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (\cout~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \cout~10_combout\,
	combout => \cout~78_combout\);

-- Location: LCCOMB_X34_Y23_N8
\Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\opcode~combout\(0) & (\cout~78_combout\)) # (!\opcode~combout\(0) & ((\cout~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~78_combout\,
	datac => \cout~38_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X30_Y25_N18
\Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = \opcode~combout\(0) $ (((\A~combout\(4) & \opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(4),
	datac => \opcode~combout\(1),
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X31_Y22_N8
\Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\B~combout\(4) & ((\Mux27~7_combout\) # ((\opcode~combout\(1) & \Mux27~6_combout\)))) # (!\B~combout\(4) & (\Mux27~7_combout\ & ((\Mux27~6_combout\) # (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \opcode~combout\(1),
	datac => \Mux27~6_combout\,
	datad => \Mux27~7_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\opcode~combout\(1) & (\A~combout\(5) $ (\Mux27~8_combout\ $ (\B~combout\(5))))) # (!\opcode~combout\(1) & ((\A~combout\(5) & ((\Mux27~8_combout\) # (\B~combout\(5)))) # (!\A~combout\(5) & (\Mux27~8_combout\ & \B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \opcode~combout\(1),
	datac => \Mux27~8_combout\,
	datad => \B~combout\(5),
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X33_Y23_N22
\Mux25~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~24_combout\ = (\opcode~combout\(0) & (\opcode~combout\(1) & ((\ShiftRight0~15_combout\) # (!\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \ShiftRight0~15_combout\,
	datad => \A~combout\(31),
	combout => \Mux25~24_combout\);

-- Location: LCCOMB_X33_Y23_N2
\Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\opcode~combout\(1) & \opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X33_Y23_N12
\Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\opcode~combout\(1) & ((\A~combout\(31)) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datad => \A~combout\(31),
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X36_Y23_N24
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux25~7_combout\ & (((!\Mux25~8_combout\)))) # (!\Mux25~7_combout\ & ((\Mux25~8_combout\ & (\cout~77_combout\)) # (!\Mux25~8_combout\ & ((\LessThan0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~77_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux27~3_combout\);

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(29),
	combout => \B~combout\(29));

-- Location: LCCOMB_X35_Y25_N28
\ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\A~combout\(0) & ((\B~combout\(30)))) # (!\A~combout\(0) & (\B~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \B~combout\(29),
	datad => \B~combout\(30),
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X32_Y28_N6
\ShiftRight0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~107_combout\ = (\Add0~2_combout\ & (\B~combout\(31) & (!\A~combout\(0)))) # (!\Add0~2_combout\ & (((\ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \B~combout\(31),
	datac => \A~combout\(0),
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight0~107_combout\);

-- Location: LCCOMB_X32_Y23_N30
\ShiftRight0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~109_combout\ = (\Add0~6_combout\ & (((\ShiftRight0~107_combout\ & !\Add0~4_combout\)))) # (!\Add0~6_combout\ & (\ShiftRight0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~88_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight0~107_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~109_combout\);

-- Location: LCCOMB_X36_Y27_N16
\ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\A~combout\(0) & (\B~combout\(10))) # (!\A~combout\(0) & ((\B~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \B~combout\(9),
	datad => \A~combout\(0),
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X32_Y27_N12
\ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\Add0~2_combout\ & (\ShiftRight0~40_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~81_combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(18),
	combout => \B~combout\(18));

-- Location: LCCOMB_X35_Y30_N28
\ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\A~combout\(0) & ((\B~combout\(18)))) # (!\A~combout\(0) & (\B~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datac => \A~combout\(0),
	datad => \B~combout\(18),
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X32_Y27_N22
\ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~27_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~36_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X32_Y23_N2
\ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~82_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datab => \ShiftRight0~82_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~84_combout\);

-- Location: LCCOMB_X32_Y24_N22
\Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Add0~8_combout\) # ((!\Add0~6_combout\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X34_Y27_N4
\ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\A~combout\(0) & (\B~combout\(8))) # (!\A~combout\(0) & ((\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datac => \A~combout\(0),
	datad => \B~combout\(7),
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X34_Y27_N2
\ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\A~combout\(0) & (\B~combout\(6))) # (!\A~combout\(0) & ((\B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(0),
	datac => \B~combout\(5),
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X34_Y27_N14
\ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (\Add0~2_combout\ & (\ShiftRight0~33_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~85_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux25~5_combout\ & ((\ShiftRight0~84_combout\) # ((\Mux25~6_combout\)))) # (!\Mux25~5_combout\ & (((!\Mux25~6_combout\ & \ShiftRight0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \ShiftRight0~84_combout\,
	datac => \Mux25~6_combout\,
	datad => \ShiftRight0~85_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X32_Y23_N8
\Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux25~6_combout\ & ((\Mux27~0_combout\ & (\ShiftRight0~109_combout\)) # (!\Mux27~0_combout\ & ((\ShiftRight0~81_combout\))))) # (!\Mux25~6_combout\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \ShiftRight0~109_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X36_Y23_N10
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux25~24_combout\ & ((\Mux27~3_combout\ & (\Mux27~2_combout\)) # (!\Mux27~3_combout\ & ((\Mux27~1_combout\))))) # (!\Mux25~24_combout\ & (((\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux25~24_combout\,
	datac => \Mux27~3_combout\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X31_Y22_N30
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux25~9_combout\ & (!\B~combout\(5) & (!\A~combout\(5)))) # (!\Mux25~9_combout\ & (((\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \Mux27~4_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux27~5_combout\))) # (!\opcode~combout\(2) & (\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux27~9_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux27~5_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X31_Y27_N26
\Mux1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~69_combout\ = (\tmp~3_combout\ & (!\ShiftLeft0~10_combout\ & ((\A~combout\(3)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~3_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(2),
	combout => \Mux1~69_combout\);

-- Location: LCCOMB_X34_Y27_N24
\ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\A~combout\(1) & (\ShiftRight0~33_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X31_Y27_N30
\Mux1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~72_combout\ = (\ShiftLeft0~10_combout\) # ((\A~combout\(31)) # ((\A~combout\(3)) # (\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(31),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \Mux1~72_combout\);

-- Location: LCCOMB_X31_Y27_N14
\Mux1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~77_combout\ = (\Mux1~69_combout\ & ((\ShiftRight1~32_combout\) # ((\Mux1~72_combout\)))) # (!\Mux1~69_combout\ & (((\ShiftRight1~33_combout\ & !\Mux1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datab => \Mux1~69_combout\,
	datac => \ShiftRight1~33_combout\,
	datad => \Mux1~72_combout\,
	combout => \Mux1~77_combout\);

-- Location: LCCOMB_X36_Y27_N4
\ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\A~combout\(0) & (\B~combout\(14))) # (!\A~combout\(0) & ((\B~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datac => \B~combout\(13),
	datad => \A~combout\(0),
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X32_Y27_N28
\ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & (\ShiftRight0~36_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftRight0~36_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X32_Y27_N6
\ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\A~combout\(2) & ((\ShiftRight0~27_combout\))) # (!\A~combout\(2) & (\ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X32_Y27_N0
\ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\ShiftRight1~34_combout\) # ((\A~combout\(1) & \ShiftRight1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftRight1~34_combout\,
	datad => \ShiftRight1~35_combout\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X31_Y27_N16
\Mux1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~78_combout\ = (\Mux1~77_combout\ & (((\ShiftRight1~36_combout\) # (!\Mux1~72_combout\)))) # (!\Mux1~77_combout\ & (\Mux1~76_combout\ & ((\Mux1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~76_combout\,
	datab => \Mux1~77_combout\,
	datac => \ShiftRight1~36_combout\,
	datad => \Mux1~72_combout\,
	combout => \Mux1~78_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(27),
	combout => \B~combout\(27));

-- Location: LCCOMB_X35_Y28_N8
\ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\A~combout\(0) & (\B~combout\(28))) # (!\A~combout\(0) & ((\B~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(28),
	datac => \A~combout\(0),
	datad => \B~combout\(27),
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X31_Y28_N30
\ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\A~combout\(1) & ((\A~combout\(2) & (\ShiftRight0~20_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftRight0~20_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X31_Y28_N8
\ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\ShiftRight1~30_combout\) # ((!\A~combout\(1) & \ShiftRight1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~30_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~9_combout\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X31_Y28_N10
\ShiftRight1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~68_combout\ = (\A~combout\(1) & (\B~combout\(31) & (!\A~combout\(0)))) # (!\A~combout\(1) & (((\ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(1),
	datac => \A~combout\(0),
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight1~68_combout\);

-- Location: LCCOMB_X31_Y28_N18
\Mux27~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (\A~combout\(3) & (!\A~combout\(2) & ((\ShiftRight1~68_combout\)))) # (!\A~combout\(3) & (((\ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datac => \ShiftRight1~31_combout\,
	datad => \ShiftRight1~68_combout\,
	combout => \Mux27~11_combout\);

-- Location: LCCOMB_X34_Y27_N16
\ShiftLeft0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\A~combout\(0) & (\B~combout\(2))) # (!\A~combout\(0) & ((\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(3),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X33_Y22_N10
\ShiftLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\A~combout\(0) & (\B~combout\(4))) # (!\A~combout\(0) & ((\B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(4),
	datac => \B~combout\(5),
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X34_Y26_N14
\ShiftLeft1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~52_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~35_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~35_combout\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft1~52_combout\);

-- Location: LCCOMB_X33_Y30_N26
\ShiftLeft1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~53_combout\ = (\Add0~4_combout\ & (\ShiftLeft0~34_combout\ & ((!\Add0~2_combout\)))) # (!\Add0~4_combout\ & (((\ShiftLeft1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~52_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftLeft1~53_combout\);

-- Location: LCCOMB_X32_Y24_N18
\Mux27~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~12_combout\ = (\A~combout\(31) & ((\ShiftLeft1~53_combout\))) # (!\A~combout\(31) & (\Mux27~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~11_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft1~53_combout\,
	combout => \Mux27~12_combout\);

-- Location: LCCOMB_X31_Y22_N22
\Mux27~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~13_combout\ = (\Mux28~14_combout\ & ((\Mux27~12_combout\) # ((\Mux1~78_combout\ & \Mux1~28_combout\)))) # (!\Mux28~14_combout\ & (\Mux1~78_combout\ & ((\Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~14_combout\,
	datab => \Mux1~78_combout\,
	datac => \Mux27~12_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux27~13_combout\);

-- Location: LCCOMB_X31_Y22_N0
\Mux27~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~14_combout\ = (\Mux27~10_combout\) # ((\opcode~combout\(3) & \Mux27~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux27~10_combout\,
	datad => \Mux27~13_combout\,
	combout => \Mux27~14_combout\);

-- Location: LCCOMB_X34_Y29_N6
\ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (\A~combout\(1) & (\B~combout\(0) & (!\A~combout\(0)))) # (!\A~combout\(1) & (((\ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \ShiftLeft0~22_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X35_Y26_N2
\ShiftLeft0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\A~combout\(0) & ((\B~combout\(5)))) # (!\A~combout\(0) & (\B~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \B~combout\(5),
	datac => \A~combout\(0),
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X34_Y29_N22
\ShiftLeft0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & (\ShiftLeft0~23_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \A~combout\(1),
	datac => \A~combout\(2),
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X34_Y25_N0
\ShiftLeft0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\ShiftLeft0~29_combout\) # ((\A~combout\(2) & \ShiftLeft0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftLeft0~100_combout\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X33_Y25_N18
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(3) & (\ShiftLeft0~30_combout\ & !\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~30_combout\,
	datad => \A~combout\(4),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X36_Y28_N8
\ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\A~combout\(0) & ((\B~combout\(21)))) # (!\A~combout\(0) & (\B~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(20),
	datad => \B~combout\(21),
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X29_Y28_N0
\ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~44_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~44_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X33_Y25_N30
\ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~60_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~64_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight0~60_combout\,
	combout => \ShiftRight0~89_combout\);

-- Location: LCCOMB_X33_Y25_N26
\ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = (\Add0~6_combout\ & (!\Add0~2_combout\ & (!\Add0~4_combout\ & \ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~90_combout\);

-- Location: LCCOMB_X33_Y25_N14
\ShiftRight0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~92_combout\ = (\ShiftRight0~90_combout\) # ((\ShiftRight0~91_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~91_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftRight0~90_combout\,
	combout => \ShiftRight0~92_combout\);

-- Location: LCCOMB_X32_Y24_N28
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Add0~6_combout\) # (\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \Add0~8_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X33_Y25_N8
\Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\ShiftRight0~92_combout\) # (!\Mux25~5_combout\)))) # (!\Mux26~0_combout\ & (\ShiftRight0~89_combout\ & ((\Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ShiftRight0~89_combout\,
	datac => \ShiftRight0~92_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X36_Y23_N4
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux25~8_combout\ & (\cout~79_combout\ & (!\Mux25~7_combout\))) # (!\Mux25~8_combout\ & (((\Mux25~7_combout\) # (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~79_combout\,
	datab => \Mux25~8_combout\,
	datac => \Mux25~7_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X33_Y25_N28
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux25~24_combout\ & ((\Mux26~3_combout\ & (\Mux26~2_combout\)) # (!\Mux26~3_combout\ & ((\Mux26~1_combout\))))) # (!\Mux25~24_combout\ & (((\Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~24_combout\,
	datab => \Mux26~2_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X32_Y22_N2
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux25~9_combout\ & (!\B~combout\(6) & ((!\A~combout\(6))))) # (!\Mux25~9_combout\ & (((\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Mux26~4_combout\,
	datac => \A~combout\(6),
	datad => \Mux25~9_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X31_Y22_N10
\Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux26~5_combout\))) # (!\opcode~combout\(2) & (\Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~7_combout\,
	datab => \Mux26~5_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(3),
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X35_Y28_N4
\ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\A~combout\(0) & (\B~combout\(25))) # (!\A~combout\(0) & ((\B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(25),
	datac => \A~combout\(0),
	datad => \B~combout\(24),
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X29_Y28_N2
\ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\A~combout\(1) & ((\A~combout\(2) & ((\ShiftRight0~48_combout\))) # (!\A~combout\(2) & (\ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~43_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X29_Y28_N12
\ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (!\A~combout\(3) & ((\ShiftRight1~37_combout\) # ((\ShiftRight1~23_combout\ & !\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~23_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~37_combout\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X32_Y28_N0
\Mux26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~10_combout\ = (\ShiftRight1~38_combout\) # ((!\ShiftRight1~4_combout\ & (\ShiftRight0~6_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftRight0~6_combout\,
	datad => \A~combout\(3),
	combout => \Mux26~10_combout\);

-- Location: LCCOMB_X34_Y29_N18
\ShiftLeft1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~17_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~23_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft1~17_combout\);

-- Location: LCCOMB_X33_Y29_N10
\ShiftLeft1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~18_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~83_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~83_combout\,
	datab => \Add0~4_combout\,
	datad => \ShiftLeft1~17_combout\,
	combout => \ShiftLeft1~18_combout\);

-- Location: LCCOMB_X33_Y29_N12
\Mux26~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~11_combout\ = (\Mux28~14_combout\ & ((\A~combout\(31) & ((\ShiftLeft1~18_combout\))) # (!\A~combout\(31) & (\Mux26~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~14_combout\,
	datab => \Mux26~10_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft1~18_combout\,
	combout => \Mux26~11_combout\);

-- Location: LCCOMB_X29_Y28_N6
\ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\A~combout\(2) & ((\ShiftRight0~44_combout\))) # (!\A~combout\(2) & (\ShiftRight0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~53_combout\,
	datad => \ShiftRight0~44_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X35_Y30_N6
\ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\A~combout\(0) & (\B~combout\(19))) # (!\A~combout\(0) & ((\B~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(19),
	datac => \A~combout\(0),
	datad => \B~combout\(18),
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X30_Y27_N30
\ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\A~combout\(2) & ((\ShiftRight0~46_combout\))) # (!\A~combout\(2) & (\ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \A~combout\(2),
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X30_Y27_N18
\ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\A~combout\(1) & (\ShiftRight1~39_combout\)) # (!\A~combout\(1) & ((\ShiftRight1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~39_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X30_Y27_N2
\ShiftRight2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~13_combout\ = (\A~combout\(1) & ((\ShiftRight0~55_combout\))) # (!\A~combout\(1) & (\ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datab => \A~combout\(1),
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight2~13_combout\);

-- Location: LCCOMB_X31_Y27_N28
\Mux1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~82_combout\ = (\Mux1~81_combout\ & ((\ShiftRight1~40_combout\) # ((!\Mux1~69_combout\)))) # (!\Mux1~81_combout\ & (((\ShiftRight2~13_combout\ & \Mux1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~81_combout\,
	datab => \ShiftRight1~40_combout\,
	datac => \ShiftRight2~13_combout\,
	datad => \Mux1~69_combout\,
	combout => \Mux1~82_combout\);

-- Location: LCCOMB_X31_Y27_N6
\Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\Mux1~82_combout\ & ((\opcode~combout\(0)) # ((\tmp~3_combout\ & !\ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~3_combout\,
	datab => \Mux1~82_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X31_Y22_N12
\Mux26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~12_combout\ = (\Mux26~8_combout\) # ((\opcode~combout\(3) & ((\Mux26~11_combout\) # (\Mux26~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~8_combout\,
	datab => \Mux26~11_combout\,
	datac => \Mux26~9_combout\,
	datad => \opcode~combout\(3),
	combout => \Mux26~12_combout\);

-- Location: LCCOMB_X33_Y23_N16
\cout~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~39_combout\ = (\B~combout\(4) & ((\cout~38_combout\) # (\A~combout\(4)))) # (!\B~combout\(4) & (\cout~38_combout\ & \A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \cout~38_combout\,
	datad => \A~combout\(4),
	combout => \cout~39_combout\);

-- Location: LCCOMB_X32_Y22_N20
\cout~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~40_combout\ = (\B~combout\(5) & ((\A~combout\(5)) # (\cout~39_combout\))) # (!\B~combout\(5) & (\A~combout\(5) & \cout~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \cout~39_combout\,
	combout => \cout~40_combout\);

-- Location: LCCOMB_X34_Y23_N26
\cout~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~11_combout\ = (\A~combout\(3) & (\B~combout\(3) & \cout~10_combout\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (\cout~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \cout~10_combout\,
	combout => \cout~11_combout\);

-- Location: LCCOMB_X33_Y22_N0
\cout~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~12_combout\ = (\A~combout\(4) & (\B~combout\(4) & \cout~11_combout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (\cout~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \B~combout\(4),
	datad => \cout~11_combout\,
	combout => \cout~12_combout\);

-- Location: LCCOMB_X33_Y22_N2
\cout~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~13_combout\ = (\B~combout\(5) & ((\cout~12_combout\) # (!\A~combout\(5)))) # (!\B~combout\(5) & (!\A~combout\(5) & \cout~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \cout~12_combout\,
	combout => \cout~13_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Mux25~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~16_combout\ = (\opcode~combout\(0) & ((\cout~13_combout\))) # (!\opcode~combout\(0) & (\cout~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datac => \cout~40_combout\,
	datad => \cout~13_combout\,
	combout => \Mux25~16_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Mux25~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~17_combout\ = \opcode~combout\(0) $ (((\opcode~combout\(1) & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \A~combout\(6),
	datad => \opcode~combout\(0),
	combout => \Mux25~17_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Mux25~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~18_combout\ = (\opcode~combout\(1) & ((\Mux25~16_combout\ & ((\Mux25~17_combout\) # (\B~combout\(6)))) # (!\Mux25~16_combout\ & (\Mux25~17_combout\ & \B~combout\(6))))) # (!\opcode~combout\(1) & (((\Mux25~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux25~16_combout\,
	datac => \Mux25~17_combout\,
	datad => \B~combout\(6),
	combout => \Mux25~18_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Mux25~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~19_combout\ = (\opcode~combout\(1) & (\Mux25~18_combout\ $ (\B~combout\(7) $ (\A~combout\(7))))) # (!\opcode~combout\(1) & ((\Mux25~18_combout\ & ((\B~combout\(7)) # (\A~combout\(7)))) # (!\Mux25~18_combout\ & (\B~combout\(7) & \A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux25~18_combout\,
	datac => \B~combout\(7),
	datad => \A~combout\(7),
	combout => \Mux25~19_combout\);

-- Location: LCCOMB_X34_Y26_N18
\ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\A~combout\(1) & ((\ShiftLeft0~34_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \A~combout\(1),
	datac => \ShiftLeft0~34_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X35_Y26_N20
\ShiftLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\A~combout\(0) & (\B~combout\(6))) # (!\A~combout\(0) & ((\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \B~combout\(6),
	datad => \B~combout\(7),
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X35_Y26_N28
\ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & (\ShiftLeft0~36_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~37_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X35_Y26_N22
\ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\ShiftLeft0~53_combout\) # ((\ShiftLeft0~54_combout\ & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~54_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X33_Y26_N12
\Mux25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~12_combout\ = (!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & (\ShiftLeft0~55_combout\ & !\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftLeft0~10_combout\,
	datac => \ShiftLeft0~55_combout\,
	datad => \A~combout\(3),
	combout => \Mux25~12_combout\);

-- Location: LCCOMB_X33_Y28_N18
\ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~26_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X32_Y27_N26
\ShiftRight0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~93_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~28_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~28_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~93_combout\);

-- Location: LCCOMB_X34_Y27_N30
\ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~32_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X33_Y25_N22
\Mux25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\Mux25~5_combout\ & ((\Mux25~6_combout\) # ((\ShiftRight0~93_combout\)))) # (!\Mux25~5_combout\ & (!\Mux25~6_combout\ & ((\ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \Mux25~6_combout\,
	datac => \ShiftRight0~93_combout\,
	datad => \ShiftRight0~34_combout\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X35_Y25_N10
\ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\A~combout\(0)) # ((\Add0~2_combout\) # (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X32_Y28_N24
\ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\Add0~2_combout\ & (\ShiftRight0~23_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X32_Y28_N2
\ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\Add0~4_combout\ & (\ShiftRight0~21_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight0~25_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X33_Y26_N24
\ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\Add0~6_combout\ & (\B~combout\(31) & (!\ShiftRight0~17_combout\))) # (!\Add0~6_combout\ & (((\ShiftRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Add0~6_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~67_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X32_Y27_N10
\ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~39_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X33_Y25_N16
\Mux25~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~11_combout\ = (\Mux25~6_combout\ & ((\Mux25~10_combout\ & (\ShiftRight0~68_combout\)) # (!\Mux25~10_combout\ & ((\ShiftRight0~41_combout\))))) # (!\Mux25~6_combout\ & (\Mux25~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \Mux25~10_combout\,
	datac => \ShiftRight0~68_combout\,
	datad => \ShiftRight0~41_combout\,
	combout => \Mux25~11_combout\);

-- Location: LCCOMB_X36_Y23_N6
\Mux25~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~13_combout\ = (\Mux25~7_combout\ & (((!\Mux25~8_combout\)))) # (!\Mux25~7_combout\ & ((\Mux25~8_combout\ & (\cout~81_combout\)) # (!\Mux25~8_combout\ & ((\LessThan0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~81_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux25~13_combout\);

-- Location: LCCOMB_X33_Y25_N10
\Mux25~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~14_combout\ = (\Mux25~24_combout\ & ((\Mux25~13_combout\ & (\Mux25~12_combout\)) # (!\Mux25~13_combout\ & ((\Mux25~11_combout\))))) # (!\Mux25~24_combout\ & (((\Mux25~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~24_combout\,
	datab => \Mux25~12_combout\,
	datac => \Mux25~11_combout\,
	datad => \Mux25~13_combout\,
	combout => \Mux25~14_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Mux25~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~15_combout\ = (\Mux25~9_combout\ & (((!\B~combout\(7) & !\A~combout\(7))))) # (!\Mux25~9_combout\ & (\Mux25~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \Mux25~14_combout\,
	datac => \B~combout\(7),
	datad => \A~combout\(7),
	combout => \Mux25~15_combout\);

-- Location: LCCOMB_X31_Y22_N14
\Mux25~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~20_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux25~15_combout\))) # (!\opcode~combout\(2) & (\Mux25~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux25~19_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux25~15_combout\,
	combout => \Mux25~20_combout\);

-- Location: LCCOMB_X35_Y26_N14
\ShiftLeft1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~21_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~36_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~37_combout\,
	combout => \ShiftLeft1~21_combout\);

-- Location: LCCOMB_X32_Y26_N16
\ShiftLeft1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~22_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~20_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~21_combout\,
	combout => \ShiftLeft1~22_combout\);

-- Location: LCCOMB_X31_Y25_N26
\ShiftLeft2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~8_combout\ = (\Add0~6_combout\ & ((\B~combout\(0)))) # (!\Add0~6_combout\ & (\ShiftLeft1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~22_combout\,
	datac => \B~combout\(0),
	combout => \ShiftLeft2~8_combout\);

-- Location: LCCOMB_X31_Y25_N8
\Mux1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~83_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~8_combout\))) # (!\A~combout\(31) & (\ShiftRight2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~18_combout\,
	datab => \ShiftLeft2~8_combout\,
	datac => \Mux1~33_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~83_combout\);

-- Location: LCCOMB_X31_Y25_N2
\Mux1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~84_combout\ = (\Mux1~83_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~83_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~83_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~84_combout\);

-- Location: LCCOMB_X34_Y27_N6
\ShiftRight2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~8_combout\ = (\A~combout\(1) & ((\ShiftRight0~32_combout\))) # (!\A~combout\(1) & (\ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight2~8_combout\);

-- Location: LCCOMB_X36_Y27_N14
\ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\A~combout\(0) & ((\B~combout\(12)))) # (!\A~combout\(0) & (\B~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(11),
	datac => \B~combout\(12),
	datad => \A~combout\(0),
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X32_Y27_N24
\ShiftRight2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~9_combout\ = (\A~combout\(1) & ((\ShiftRight0~39_combout\))) # (!\A~combout\(1) & (\ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \ShiftRight0~40_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight2~9_combout\);

-- Location: LCCOMB_X31_Y27_N24
\Mux1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~85_combout\ = (\Mux1~72_combout\ & (\Mux1~69_combout\)) # (!\Mux1~72_combout\ & ((\Mux1~69_combout\ & ((\ShiftRight2~9_combout\))) # (!\Mux1~69_combout\ & (\ShiftRight2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~72_combout\,
	datab => \Mux1~69_combout\,
	datac => \ShiftRight2~8_combout\,
	datad => \ShiftRight2~9_combout\,
	combout => \Mux1~85_combout\);

-- Location: LCCOMB_X31_Y27_N18
\Mux1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~86_combout\ = (\Mux1~85_combout\ & ((\ShiftRight1~42_combout\) # ((!\Mux1~72_combout\)))) # (!\Mux1~85_combout\ & (((\Mux1~84_combout\ & \Mux1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~42_combout\,
	datab => \Mux1~84_combout\,
	datac => \Mux1~85_combout\,
	datad => \Mux1~72_combout\,
	combout => \Mux1~86_combout\);

-- Location: LCCOMB_X31_Y22_N16
\Mux25~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~21_combout\ = (\Mux1~86_combout\ & \Mux1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~86_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux25~21_combout\);

-- Location: LCCOMB_X32_Y28_N8
\ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & (\ShiftRight0~23_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~23_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X30_Y25_N26
\ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\ShiftRight1~20_combout\) # ((\ShiftRight2~7_combout\ & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~7_combout\,
	datab => \ShiftRight1~20_combout\,
	datac => \A~combout\(2),
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X32_Y28_N16
\ShiftRight2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~4_combout\ = (\A~combout\(2)) # ((\A~combout\(0)) # (\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \ShiftRight2~4_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\A~combout\(3) & (((\B~combout\(31) & !\ShiftRight2~4_combout\)))) # (!\A~combout\(3) & (\ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~21_combout\,
	datac => \B~combout\(31),
	datad => \ShiftRight2~4_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X31_Y25_N20
\Mux25~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~22_combout\ = (\Mux28~14_combout\ & ((\A~combout\(31) & ((\ShiftLeft1~22_combout\))) # (!\A~combout\(31) & (\Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Mux28~14_combout\,
	datac => \Mux25~4_combout\,
	datad => \ShiftLeft1~22_combout\,
	combout => \Mux25~22_combout\);

-- Location: LCCOMB_X31_Y22_N26
\Mux25~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~23_combout\ = (\Mux25~20_combout\) # ((\opcode~combout\(3) & ((\Mux25~21_combout\) # (\Mux25~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux25~20_combout\,
	datac => \Mux25~21_combout\,
	datad => \Mux25~22_combout\,
	combout => \Mux25~23_combout\);

-- Location: LCCOMB_X31_Y24_N28
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\LessThan0~62_combout\ & (\opcode~combout\(2) & !\opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X34_Y22_N24
\Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\opcode~combout\(0) & (\opcode~combout\(2) $ (((\B~combout\(8)) # (\A~combout\(8)))))) # (!\opcode~combout\(0) & (!\opcode~combout\(2) & (\B~combout\(8) & \A~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(0),
	datac => \B~combout\(8),
	datad => \A~combout\(8),
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X29_Y28_N20
\ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\Add0~2_combout\ & (\ShiftRight0~45_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~45_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~44_combout\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X33_Y24_N26
\ShiftRight0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~96_combout\ = (\Add0~4_combout\ & ((\ShiftRight0~79_combout\))) # (!\Add0~4_combout\ & (\ShiftRight0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \ShiftRight0~79_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~96_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(15),
	combout => \B~combout\(15));

-- Location: LCCOMB_X36_Y27_N10
\ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\A~combout\(0) & ((\B~combout\(15)))) # (!\A~combout\(0) & (\B~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(0),
	datad => \B~combout\(15),
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X30_Y27_N26
\ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~54_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~55_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X36_Y27_N30
\ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\A~combout\(0) & ((\B~combout\(11)))) # (!\A~combout\(0) & (\B~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(0),
	datad => \B~combout\(11),
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X33_Y27_N18
\ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~56_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~50_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~56_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X33_Y24_N4
\ShiftRight0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~97_combout\ = (\Add0~4_combout\ & (\ShiftRight0~73_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftRight0~73_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \ShiftRight0~97_combout\);

-- Location: LCCOMB_X33_Y25_N4
\Mux1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~54_combout\ = ((\Add0~8_combout\) # (!\A~combout\(31))) # (!\ShiftRight0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datac => \Add0~8_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~54_combout\);

-- Location: LCCOMB_X33_Y24_N16
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & (((\ShiftRight0~97_combout\) # (\Mux1~54_combout\)))) # (!\Mux24~4_combout\ & (\ShiftRight0~96_combout\ & ((!\Mux1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \ShiftRight0~96_combout\,
	datac => \ShiftRight0~97_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X32_Y22_N6
\cout~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~41_combout\ = (\cout~40_combout\ & ((\A~combout\(6)) # (\B~combout\(6)))) # (!\cout~40_combout\ & (\A~combout\(6) & \B~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~40_combout\,
	datac => \A~combout\(6),
	datad => \B~combout\(6),
	combout => \cout~41_combout\);

-- Location: LCCOMB_X34_Y22_N0
\cout~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~42_combout\ = (\A~combout\(7) & ((\B~combout\(7)) # (\cout~41_combout\))) # (!\A~combout\(7) & (\B~combout\(7) & \cout~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datac => \cout~41_combout\,
	combout => \cout~42_combout\);

-- Location: LCCOMB_X34_Y22_N26
\soma~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~13_combout\ = \A~combout\(8) $ (\B~combout\(8) $ (\cout~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datac => \B~combout\(8),
	datad => \cout~42_combout\,
	combout => \soma~13_combout\);

-- Location: LCCOMB_X34_Y22_N22
\cout~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~84_combout\ = \B~combout\(8) $ (\A~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(8),
	datad => \A~combout\(8),
	combout => \cout~84_combout\);

-- Location: LCCOMB_X32_Y22_N14
\cout~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~85_combout\ = (\B~combout\(6) & ((\cout~13_combout\) # (!\A~combout\(6)))) # (!\B~combout\(6) & (!\A~combout\(6) & \cout~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \cout~13_combout\,
	combout => \cout~85_combout\);

-- Location: LCCOMB_X34_Y22_N16
\soma~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~12_combout\ = \cout~84_combout\ $ (((\A~combout\(7) & (\B~combout\(7) & \cout~85_combout\)) # (!\A~combout\(7) & ((\B~combout\(7)) # (\cout~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \cout~84_combout\,
	datac => \B~combout\(7),
	datad => \cout~85_combout\,
	combout => \soma~12_combout\);

-- Location: LCCOMB_X34_Y22_N20
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~12_combout\))) # (!\opcode~combout\(0) & (\soma~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \soma~13_combout\,
	datac => \soma~12_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X34_Y22_N6
\Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\opcode~combout\(2) & ((\Mux24~3_combout\ & (\Mux24~5_combout\)) # (!\Mux24~3_combout\ & ((\cout~84_combout\))))) # (!\opcode~combout\(2) & (((\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux24~5_combout\,
	datac => \Mux24~3_combout\,
	datad => \cout~84_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X34_Y22_N18
\Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\opcode~combout\(1) & (((\Mux24~6_combout\)))) # (!\opcode~combout\(1) & ((\Mux10~0_combout\) # ((\Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux10~0_combout\,
	datac => \Mux24~7_combout\,
	datad => \Mux24~6_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X32_Y25_N10
\ShiftLeft1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~60_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftLeft1~39_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~41_combout\,
	datab => \ShiftLeft1~39_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft1~60_combout\);

-- Location: LCCOMB_X30_Y30_N4
\ShiftLeft2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~17_combout\ = (\ShiftLeft1~60_combout\) # ((\Add0~6_combout\ & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~60_combout\,
	datac => \B~combout\(0),
	combout => \ShiftLeft2~17_combout\);

-- Location: LCCOMB_X30_Y30_N18
\Mux1~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~101_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~17_combout\))) # (!\A~combout\(31) & (\ShiftRight2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~26_combout\,
	datab => \ShiftLeft2~17_combout\,
	datac => \Mux1~33_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~101_combout\);

-- Location: LCCOMB_X30_Y30_N12
\Mux1~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~102_combout\ = (\Mux1~33_combout\ & ((\Mux1~101_combout\ & (\B~combout\(0))) # (!\Mux1~101_combout\ & ((\B~combout\(31)))))) # (!\Mux1~33_combout\ & (((\Mux1~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(31),
	datad => \Mux1~101_combout\,
	combout => \Mux1~102_combout\);

-- Location: LCCOMB_X30_Y27_N0
\Mux1~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~103_combout\ = (\Mux1~27_combout\ & (((\ShiftRight1~47_combout\ & \Mux1~28_combout\)))) # (!\Mux1~27_combout\ & ((\Mux1~102_combout\) # ((!\Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~27_combout\,
	datab => \Mux1~102_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux1~103_combout\);

-- Location: LCCOMB_X33_Y26_N30
\ShiftLeft1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~61_combout\ = (\ShiftLeft1~60_combout\) # ((\B~combout\(0) & (!\ShiftRight0~17_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~17_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~60_combout\,
	combout => \ShiftLeft1~61_combout\);

-- Location: LCCOMB_X30_Y28_N22
\ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & ((\ShiftRight0~47_combout\))) # (!\A~combout\(1) & (\ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \ShiftRight0~47_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X30_Y28_N0
\ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\ShiftRight1~43_combout\) # ((\A~combout\(2) & \ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~43_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X30_Y28_N6
\Mux1~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~100_combout\ = (!\A~combout\(3) & (!\ShiftLeft0~10_combout\ & \ShiftRight1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight1~44_combout\,
	combout => \Mux1~100_combout\);

-- Location: LCCOMB_X30_Y28_N24
\Mux1~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~104_combout\ = (\Mux1~29_combout\ & ((\Mux1~103_combout\ & ((\Mux1~100_combout\))) # (!\Mux1~103_combout\ & (\ShiftLeft1~61_combout\)))) # (!\Mux1~29_combout\ & (\Mux1~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~29_combout\,
	datab => \Mux1~103_combout\,
	datac => \ShiftLeft1~61_combout\,
	datad => \Mux1~100_combout\,
	combout => \Mux1~104_combout\);

-- Location: LCCOMB_X30_Y29_N12
\Mux1~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~99_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(4) & (!\A~combout\(31) & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(4),
	datac => \A~combout\(31),
	datad => \A~combout\(3),
	combout => \Mux1~99_combout\);

-- Location: LCCOMB_X30_Y28_N10
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & (\ShiftRight1~45_combout\)) # (!\Mux1~99_combout\ & ((\Mux1~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \opcode~combout\(3),
	datac => \Mux1~104_combout\,
	datad => \Mux1~99_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X30_Y26_N12
\Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux24~2_combout\) # ((!\opcode~combout\(3) & \Mux24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux24~8_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~9_combout\);

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: LCCOMB_X31_Y23_N22
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\opcode~combout\(2) & \opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X31_Y20_N24
\Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux10~0_combout\) # ((!\B~combout\(9) & (!\A~combout\(9) & \Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datac => \Mux10~0_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X31_Y20_N30
\Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (!\opcode~combout\(2) & ((\A~combout\(9) & ((\opcode~combout\(0)) # (\B~combout\(9)))) # (!\A~combout\(9) & (\opcode~combout\(0) & \B~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \A~combout\(9),
	datac => \opcode~combout\(0),
	datad => \B~combout\(9),
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X31_Y20_N2
\Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\opcode~combout\(1) & (\Mux23~5_combout\)) # (!\opcode~combout\(1) & (((\Mux23~7_combout\) # (\Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~5_combout\,
	datab => \opcode~combout\(1),
	datac => \Mux23~7_combout\,
	datad => \Mux23~6_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X31_Y28_N24
\ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (!\A~combout\(2) & ((\A~combout\(1) & (\ShiftRight0~20_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \ShiftRight0~20_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X31_Y28_N2
\ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\ShiftRight1~49_combout\) # ((\A~combout\(2) & \ShiftRight1~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight1~49_combout\,
	datad => \ShiftRight1~68_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X32_Y30_N26
\Mux1~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~105_combout\ = (!\A~combout\(3) & (\ShiftRight1~50_combout\ & !\ShiftLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~50_combout\,
	datac => \ShiftLeft0~10_combout\,
	combout => \Mux1~105_combout\);

-- Location: LCCOMB_X36_Y27_N26
\ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\A~combout\(0) & (\B~combout\(16))) # (!\A~combout\(0) & ((\B~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(0),
	datad => \B~combout\(15),
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X32_Y27_N4
\ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\ShiftRight0~37_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \ShiftRight0~37_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X32_Y27_N2
\ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\A~combout\(1) & ((\ShiftRight0~40_combout\))) # (!\A~combout\(1) & (\ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftRight0~32_combout\,
	datad => \ShiftRight0~40_combout\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X32_Y27_N14
\ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\ShiftRight1~51_combout\) # ((!\A~combout\(2) & \ShiftRight1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~51_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight1~32_combout\,
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X32_Y30_N2
\Mux1~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~107_combout\ = (\Mux1~106_combout\ & ((\B~combout\(0)) # ((!\Mux1~33_combout\)))) # (!\Mux1~106_combout\ & (((\B~combout\(31) & \Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~106_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(31),
	datad => \Mux1~33_combout\,
	combout => \Mux1~107_combout\);

-- Location: LCCOMB_X32_Y30_N4
\Mux1~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~108_combout\ = (\Mux1~28_combout\ & ((\Mux1~27_combout\ & (\ShiftRight1~52_combout\)) # (!\Mux1~27_combout\ & ((\Mux1~107_combout\))))) # (!\Mux1~28_combout\ & (((!\Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~28_combout\,
	datab => \ShiftRight1~52_combout\,
	datac => \Mux1~27_combout\,
	datad => \Mux1~107_combout\,
	combout => \Mux1~108_combout\);

-- Location: LCCOMB_X35_Y26_N8
\ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\A~combout\(0) & ((\B~combout\(8)))) # (!\A~combout\(0) & (\B~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(9),
	datac => \B~combout\(8),
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X35_Y26_N4
\ShiftLeft1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~49_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~37_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~37_combout\,
	datab => \ShiftLeft0~45_combout\,
	datac => \Add0~2_combout\,
	combout => \ShiftLeft1~49_combout\);

-- Location: LCCOMB_X33_Y30_N30
\ShiftLeft1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~64_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftLeft1~52_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~52_combout\,
	datad => \ShiftLeft1~49_combout\,
	combout => \ShiftLeft1~64_combout\);

-- Location: LCCOMB_X33_Y30_N18
\ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (!\Add0~4_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X32_Y30_N24
\ShiftLeft1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~65_combout\ = (\ShiftLeft1~64_combout\) # ((!\Add0~2_combout\ & (\ShiftLeft0~34_combout\ & \ShiftRight0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftLeft1~64_combout\,
	datac => \ShiftLeft0~34_combout\,
	datad => \ShiftRight0~77_combout\,
	combout => \ShiftLeft1~65_combout\);

-- Location: LCCOMB_X32_Y30_N22
\Mux1~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~109_combout\ = (\Mux1~29_combout\ & ((\Mux1~108_combout\ & (\Mux1~105_combout\)) # (!\Mux1~108_combout\ & ((\ShiftLeft1~65_combout\))))) # (!\Mux1~29_combout\ & (((\Mux1~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~29_combout\,
	datab => \Mux1~105_combout\,
	datac => \Mux1~108_combout\,
	datad => \ShiftLeft1~65_combout\,
	combout => \Mux1~109_combout\);

-- Location: LCCOMB_X33_Y28_N6
\ShiftRight1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\A~combout\(2) & (\ShiftRight0~26_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~26_combout\,
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X33_Y28_N8
\ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\A~combout\(1) & (\ShiftRight1~10_combout\)) # (!\A~combout\(1) & ((\ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~10_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~41_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X32_Y30_N0
\Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & ((\ShiftRight1~48_combout\))) # (!\Mux1~99_combout\ & (\Mux1~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux1~109_combout\,
	datac => \Mux1~99_combout\,
	datad => \ShiftRight1~48_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X30_Y26_N0
\Mux23~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~10_combout\ = (\Mux23~9_combout\) # ((!\opcode~combout\(3) & \Mux23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux23~8_combout\,
	datad => \Mux23~9_combout\,
	combout => \Mux23~10_combout\);

-- Location: LCCOMB_X29_Y28_N16
\ShiftRight1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\A~combout\(2) & (\ShiftRight0~43_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight0~43_combout\,
	datad => \ShiftRight0~44_combout\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X29_Y28_N26
\ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\A~combout\(1) & ((\ShiftRight1~14_combout\))) # (!\A~combout\(1) & (\ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \A~combout\(1),
	datac => \ShiftRight1~14_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X36_Y27_N2
\ShiftLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\A~combout\(0) & ((\B~combout\(9)))) # (!\A~combout\(0) & (\B~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \B~combout\(9),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X34_Y29_N0
\ShiftLeft1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~14_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~18_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft1~14_combout\);

-- Location: LCCOMB_X33_Y29_N6
\ShiftLeft1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~66_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftLeft1~17_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~14_combout\,
	datad => \ShiftLeft1~17_combout\,
	combout => \ShiftLeft1~66_combout\);

-- Location: LCCOMB_X31_Y29_N30
\ShiftLeft1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~85_combout\ = (\ShiftLeft1~66_combout\) # ((!\Add0~4_combout\ & (\ShiftLeft1~83_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftLeft1~66_combout\,
	datac => \ShiftLeft1~83_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft1~85_combout\);

-- Location: LCCOMB_X31_Y27_N4
\Mux1~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~112_combout\ = (\Mux1~111_combout\ & ((\B~combout\(0)) # ((!\Mux1~33_combout\)))) # (!\Mux1~111_combout\ & (((\B~combout\(31) & \Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~111_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(31),
	datad => \Mux1~33_combout\,
	combout => \Mux1~112_combout\);

-- Location: LCCOMB_X31_Y27_N22
\Mux1~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~113_combout\ = (\Mux1~28_combout\ & ((\Mux1~27_combout\ & (\ShiftRight1~19_combout\)) # (!\Mux1~27_combout\ & ((\Mux1~112_combout\))))) # (!\Mux1~28_combout\ & (((!\Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \Mux1~112_combout\,
	datac => \Mux1~28_combout\,
	datad => \Mux1~27_combout\,
	combout => \Mux1~113_combout\);

-- Location: LCCOMB_X31_Y29_N0
\Mux1~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~110_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(3) & \ShiftRight1~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight1~67_combout\,
	combout => \Mux1~110_combout\);

-- Location: LCCOMB_X31_Y29_N16
\Mux1~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~114_combout\ = (\Mux1~29_combout\ & ((\Mux1~113_combout\ & ((\Mux1~110_combout\))) # (!\Mux1~113_combout\ & (\ShiftLeft1~85_combout\)))) # (!\Mux1~29_combout\ & (((\Mux1~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~29_combout\,
	datab => \ShiftLeft1~85_combout\,
	datac => \Mux1~113_combout\,
	datad => \Mux1~110_combout\,
	combout => \Mux1~114_combout\);

-- Location: LCCOMB_X30_Y26_N8
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & (\ShiftRight1~53_combout\)) # (!\Mux1~99_combout\ & ((\Mux1~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux1~99_combout\,
	datac => \ShiftRight1~53_combout\,
	datad => \Mux1~114_combout\,
	combout => \Mux22~4_combout\);

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: LCCOMB_X31_Y24_N22
\Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\opcode~combout\(0) & (\opcode~combout\(2) $ (((\B~combout\(10)) # (\A~combout\(10)))))) # (!\opcode~combout\(0) & (!\opcode~combout\(2) & (\B~combout\(10) & \A~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(2),
	datac => \B~combout\(10),
	datad => \A~combout\(10),
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X31_Y24_N8
\cout~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~87_combout\ = \B~combout\(10) $ (\A~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datad => \A~combout\(10),
	combout => \cout~87_combout\);

-- Location: LCCOMB_X31_Y20_N6
\cout~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~43_combout\ = (\B~combout\(8) & ((\A~combout\(8)) # (\cout~42_combout\))) # (!\B~combout\(8) & (\A~combout\(8) & \cout~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => \cout~42_combout\,
	combout => \cout~43_combout\);

-- Location: LCCOMB_X31_Y20_N0
\cout~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~44_combout\ = (\B~combout\(9) & ((\A~combout\(9)) # (\cout~43_combout\))) # (!\B~combout\(9) & (\A~combout\(9) & \cout~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datac => \A~combout\(9),
	datad => \cout~43_combout\,
	combout => \cout~44_combout\);

-- Location: LCCOMB_X31_Y24_N14
\Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~13_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & (\Mux22~12_combout\ $ (((\cout~44_combout\ & !\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~12_combout\,
	datab => \opcode~combout\(2),
	datac => \cout~44_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux22~13_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~13_combout\ & ((\Mux22~6_combout\) # ((!\opcode~combout\(2))))) # (!\Mux22~13_combout\ & (((\cout~87_combout\ & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~6_combout\,
	datab => \cout~87_combout\,
	datac => \Mux22~13_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X31_Y24_N0
\Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\opcode~combout\(1) & (((\Mux22~7_combout\)))) # (!\opcode~combout\(1) & ((\Mux22~8_combout\) # ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux22~8_combout\,
	datac => \Mux22~7_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X30_Y26_N18
\Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~10_combout\ = (\Mux22~4_combout\) # ((!\opcode~combout\(3) & \Mux22~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux22~4_combout\,
	datad => \Mux22~9_combout\,
	combout => \Mux22~10_combout\);

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: LCCOMB_X31_Y23_N18
\Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\B~combout\(11)) # (\A~combout\(11)))) # (!\opcode~combout\(0) & (\B~combout\(11) & \A~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \B~combout\(11),
	datac => \opcode~combout\(2),
	datad => \A~combout\(11),
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\B~combout\(11) & !\A~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \B~combout\(11),
	datac => \Mux10~0_combout\,
	datad => \A~combout\(11),
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X31_Y23_N14
\Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\opcode~combout\(1) & (\Mux21~6_combout\)) # (!\opcode~combout\(1) & (((\Mux21~7_combout\) # (\Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~6_combout\,
	datab => \Mux21~7_combout\,
	datac => \Mux21~8_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X32_Y26_N0
\ShiftLeft1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~63_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~21_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~31_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~21_combout\,
	combout => \ShiftLeft1~63_combout\);

-- Location: LCCOMB_X32_Y26_N22
\ShiftLeft1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~84_combout\ = (\Add0~6_combout\ & (\ShiftLeft1~20_combout\ & ((!\Add0~4_combout\)))) # (!\Add0~6_combout\ & (((\ShiftLeft1~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~20_combout\,
	datab => \ShiftLeft1~63_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft1~84_combout\);

-- Location: LCCOMB_X32_Y28_N20
\ShiftRight2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~7_combout\ = (\A~combout\(1) & (\ShiftRight0~19_combout\)) # (!\A~combout\(1) & ((\ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight2~7_combout\);

-- Location: LCCOMB_X32_Y28_N22
\ShiftRight1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\A~combout\(2) & (\ShiftRight1~7_combout\ & ((!\A~combout\(1))))) # (!\A~combout\(2) & (((\ShiftRight2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~7_combout\,
	datab => \A~combout\(2),
	datac => \ShiftRight2~7_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X31_Y26_N0
\Mux1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~94_combout\ = (\ShiftRight1~8_combout\ & (!\ShiftLeft0~10_combout\ & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~8_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(3),
	combout => \Mux1~94_combout\);

-- Location: LCCOMB_X31_Y26_N4
\Mux1~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~98_combout\ = (\Mux1~97_combout\ & (((\Mux1~94_combout\)) # (!\Mux1~29_combout\))) # (!\Mux1~97_combout\ & (\Mux1~29_combout\ & (\ShiftLeft1~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~97_combout\,
	datab => \Mux1~29_combout\,
	datac => \ShiftLeft1~84_combout\,
	datad => \Mux1~94_combout\,
	combout => \Mux1~98_combout\);

-- Location: LCCOMB_X31_Y26_N30
\Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & ((\ShiftRight1~11_combout\))) # (!\Mux1~99_combout\ & (\Mux1~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~99_combout\,
	datab => \Mux1~98_combout\,
	datac => \opcode~combout\(3),
	datad => \ShiftRight1~11_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X30_Y26_N2
\Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = (\Mux21~2_combout\) # ((!\opcode~combout\(3) & \Mux21~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux21~9_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~10_combout\);

-- Location: LCCOMB_X29_Y28_N28
\ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\A~combout\(1) & ((\ShiftRight1~23_combout\))) # (!\A~combout\(1) & (\ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X30_Y28_N4
\Mux1~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~178_combout\ = (!\ShiftLeft0~10_combout\ & (\ShiftRight1~22_combout\ & (!\A~combout\(2) & !\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftRight1~22_combout\,
	datac => \A~combout\(2),
	datad => \A~combout\(3),
	combout => \Mux1~178_combout\);

-- Location: LCCOMB_X35_Y26_N0
\ShiftLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\A~combout\(0) & ((\B~combout\(7)))) # (!\A~combout\(0) & (\B~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \B~combout\(8),
	datad => \B~combout\(7),
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X34_Y29_N28
\ShiftLeft1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~41_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~24_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft1~41_combout\);

-- Location: LCCOMB_X35_Y29_N28
\ShiftLeft1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~42_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~19_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft1~42_combout\);

-- Location: LCCOMB_X32_Y25_N26
\ShiftLeft1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~43_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~41_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \ShiftLeft1~41_combout\,
	datad => \ShiftLeft1~42_combout\,
	combout => \ShiftLeft1~43_combout\);

-- Location: LCCOMB_X32_Y25_N28
\ShiftLeft1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~44_combout\ = (\Add0~6_combout\ & ((\ShiftLeft1~40_combout\))) # (!\Add0~6_combout\ & (\ShiftLeft1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~43_combout\,
	datac => \ShiftLeft1~40_combout\,
	combout => \ShiftLeft1~44_combout\);

-- Location: LCCOMB_X30_Y28_N28
\Mux1~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~122_combout\ = (\Mux1~121_combout\ & ((\Mux1~178_combout\) # ((!\Mux1~29_combout\)))) # (!\Mux1~121_combout\ & (((\Mux1~29_combout\ & \ShiftLeft1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~121_combout\,
	datab => \Mux1~178_combout\,
	datac => \Mux1~29_combout\,
	datad => \ShiftLeft1~44_combout\,
	combout => \Mux1~122_combout\);

-- Location: LCCOMB_X30_Y23_N8
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & (\ShiftRight1~54_combout\)) # (!\Mux1~99_combout\ & ((\Mux1~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \ShiftRight1~54_combout\,
	datac => \Mux1~122_combout\,
	datad => \Mux1~99_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y24_N22
\Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\A~combout\(12) & (!\opcode~combout\(2) & ((\B~combout\(12)) # (\opcode~combout\(0))))) # (!\A~combout\(12) & (\opcode~combout\(0) & (\opcode~combout\(2) $ (\B~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datab => \opcode~combout\(2),
	datac => \B~combout\(12),
	datad => \opcode~combout\(0),
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X30_Y24_N16
\Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\opcode~combout\(1) & (\Mux20~5_combout\)) # (!\opcode~combout\(1) & (((\Mux20~6_combout\) # (\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~5_combout\,
	datab => \Mux20~6_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux10~0_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\Mux20~0_combout\) # ((\Mux20~7_combout\ & !\opcode~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~0_combout\,
	datac => \Mux20~7_combout\,
	datad => \opcode~combout\(3),
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X30_Y23_N2
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (!\opcode~combout\(2) & ((\B~combout\(13) & ((\A~combout\(13)) # (\opcode~combout\(0)))) # (!\B~combout\(13) & (\A~combout\(13) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \opcode~combout\(2),
	datac => \A~combout\(13),
	datad => \opcode~combout\(0),
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X30_Y24_N24
\cout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~7_combout\ = (\B~combout\(12)) # (!\A~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datac => \B~combout\(12),
	combout => \cout~7_combout\);

-- Location: LCCOMB_X31_Y20_N16
\cout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~8_combout\ = (\B~combout\(8) & !\A~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datad => \A~combout\(8),
	combout => \cout~8_combout\);

-- Location: LCCOMB_X32_Y22_N18
\cout~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~15_combout\ = (\cout~14_combout\ & ((\B~combout\(7)) # (!\A~combout\(7)))) # (!\cout~14_combout\ & (!\A~combout\(7) & \B~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~14_combout\,
	datab => \A~combout\(7),
	datac => \B~combout\(7),
	combout => \cout~15_combout\);

-- Location: LCCOMB_X31_Y20_N26
\cout~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~16_combout\ = (\cout~15_combout\ & ((\B~combout\(8)) # (!\A~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => \cout~15_combout\,
	combout => \cout~16_combout\);

-- Location: LCCOMB_X31_Y20_N28
\cout~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~17_combout\ = (\B~combout\(9) & (((\cout~8_combout\) # (\cout~16_combout\)) # (!\A~combout\(9)))) # (!\B~combout\(9) & (!\A~combout\(9) & ((\cout~8_combout\) # (\cout~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datac => \cout~8_combout\,
	datad => \cout~16_combout\,
	combout => \cout~17_combout\);

-- Location: LCCOMB_X31_Y24_N24
\cout~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~18_combout\ = (\B~combout\(10) & ((\cout~17_combout\) # (!\A~combout\(10)))) # (!\B~combout\(10) & (!\A~combout\(10) & \cout~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datac => \cout~17_combout\,
	combout => \cout~18_combout\);

-- Location: LCCOMB_X30_Y24_N26
\cout~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~19_combout\ = (\cout~7_combout\ & ((\A~combout\(11) & (\B~combout\(11) & \cout~18_combout\)) # (!\A~combout\(11) & ((\B~combout\(11)) # (\cout~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datac => \cout~7_combout\,
	datad => \cout~18_combout\,
	combout => \cout~19_combout\);

-- Location: LCCOMB_X30_Y23_N16
\soma~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~16_combout\ = \A~combout\(13) $ (\B~combout\(13) $ (((\cout~6_combout\) # (\cout~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~6_combout\,
	datab => \cout~19_combout\,
	datac => \A~combout\(13),
	datad => \B~combout\(13),
	combout => \soma~16_combout\);

-- Location: LCCOMB_X30_Y23_N28
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~16_combout\))) # (!\opcode~combout\(0) & (\soma~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~17_combout\,
	datab => \opcode~combout\(2),
	datac => \soma~16_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X32_Y28_N30
\ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = (\Add0~2_combout\ & (\ShiftRight0~20_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight0~20_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight0~86_combout\);

-- Location: LCCOMB_X33_Y28_N12
\ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = (\Add0~2_combout\ & ((\ShiftRight0~24_combout\))) # (!\Add0~2_combout\ & (\ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~26_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~87_combout\);

-- Location: LCCOMB_X32_Y23_N6
\ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = (\Add0~4_combout\ & (\ShiftRight0~86_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~86_combout\,
	datac => \ShiftRight0~87_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight0~88_combout\);

-- Location: LCCOMB_X32_Y24_N16
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\A~combout\(31) & ((\Add0~6_combout\) # ((\Add0~8_combout\) # (!\ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Add0~6_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftRight0~15_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X34_Y26_N0
\ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & ((\ShiftLeft0~34_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~34_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X34_Y26_N6
\Mux1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~38_combout\ = (\A~combout\(1) & !\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datad => \A~combout\(2),
	combout => \Mux1~38_combout\);

-- Location: LCCOMB_X34_Y26_N2
\ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\A~combout\(3) & ((\ShiftLeft0~71_combout\) # ((\ShiftLeft0~35_combout\ & \Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~71_combout\,
	datac => \ShiftLeft0~35_combout\,
	datad => \Mux1~38_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X36_Y25_N8
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\A~combout\(4)) # (\ShiftLeft0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(4),
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X36_Y27_N18
\ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\A~combout\(0) & (\B~combout\(10))) # (!\A~combout\(0) & ((\B~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(0),
	datad => \B~combout\(11),
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X35_Y26_N24
\ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\A~combout\(2) & (\ShiftLeft0~37_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftLeft0~37_combout\,
	datad => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X36_Y27_N20
\ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\A~combout\(0) & ((\B~combout\(12)))) # (!\A~combout\(0) & (\B~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(13),
	datac => \B~combout\(12),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X36_Y29_N20
\ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\A~combout\(2) & (\ShiftLeft0~45_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X36_Y26_N16
\ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\A~combout\(1) & (\ShiftLeft0~73_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~73_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~56_combout\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X34_Y24_N14
\Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!\Mux10~1_combout\ & ((\ShiftLeft0~72_combout\) # ((!\A~combout\(3) & \ShiftLeft0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~72_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~74_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X32_Y24_N30
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ((\Add0~8_combout\ & \ShiftRight0~15_combout\)) # (!\A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~15_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X34_Y24_N8
\Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux22~3_combout\ & (\ShiftRight0~71_combout\ & ((\Mux22~2_combout\)))) # (!\Mux22~3_combout\ & (((\Mux19~1_combout\) # (!\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~71_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X30_Y23_N22
\Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux1~54_combout\ & (((\Mux19~2_combout\)))) # (!\Mux1~54_combout\ & ((\Mux19~2_combout\ & ((\ShiftRight0~84_combout\))) # (!\Mux19~2_combout\ & (\ShiftRight0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~54_combout\,
	datab => \ShiftRight0~88_combout\,
	datac => \ShiftRight0~84_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X30_Y23_N0
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~0_combout\ & (((\Mux19~3_combout\) # (!\opcode~combout\(2))))) # (!\Mux19~0_combout\ & (\cout~89_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~89_combout\,
	datab => \Mux19~0_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\opcode~combout\(1) & (((\Mux19~4_combout\)))) # (!\opcode~combout\(1) & ((\Mux19~6_combout\) # ((\Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~6_combout\,
	datab => \Mux19~5_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux19~4_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X31_Y28_N28
\Mux1~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~125_combout\ = (\Mux1~28_combout\ & ((\Mux1~27_combout\ & ((\ShiftRight1~36_combout\))) # (!\Mux1~27_combout\ & (\Mux1~124_combout\)))) # (!\Mux1~28_combout\ & (((!\Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~124_combout\,
	datab => \ShiftRight1~36_combout\,
	datac => \Mux1~28_combout\,
	datad => \Mux1~27_combout\,
	combout => \Mux1~125_combout\);

-- Location: LCCOMB_X31_Y28_N20
\Mux1~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~179_combout\ = (\ShiftRight1~68_combout\ & (!\ShiftLeft0~10_combout\ & (!\A~combout\(3) & !\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~68_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	datad => \A~combout\(2),
	combout => \Mux1~179_combout\);

-- Location: LCCOMB_X36_Y29_N22
\ShiftLeft1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~50_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~46_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~47_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft1~50_combout\);

-- Location: LCCOMB_X33_Y30_N0
\ShiftLeft1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~51_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftLeft1~49_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~49_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~50_combout\,
	combout => \ShiftLeft1~51_combout\);

-- Location: LCCOMB_X33_Y30_N28
\ShiftLeft1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~54_combout\ = (\ShiftLeft1~51_combout\) # ((\Add0~6_combout\ & \ShiftLeft1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~51_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~53_combout\,
	combout => \ShiftLeft1~54_combout\);

-- Location: LCCOMB_X31_Y28_N22
\Mux1~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~126_combout\ = (\Mux1~29_combout\ & ((\Mux1~125_combout\ & (\Mux1~179_combout\)) # (!\Mux1~125_combout\ & ((\ShiftLeft1~54_combout\))))) # (!\Mux1~29_combout\ & (\Mux1~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~29_combout\,
	datab => \Mux1~125_combout\,
	datac => \Mux1~179_combout\,
	datad => \ShiftLeft1~54_combout\,
	combout => \Mux1~126_combout\);

-- Location: LCCOMB_X31_Y28_N16
\Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\opcode~combout\(3) & ((\Mux1~99_combout\ & (\ShiftRight1~31_combout\)) # (!\Mux1~99_combout\ & ((\Mux1~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~99_combout\,
	datab => \opcode~combout\(3),
	datac => \ShiftRight1~31_combout\,
	datad => \Mux1~126_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X30_Y23_N14
\Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\Mux19~8_combout\) # ((!\opcode~combout\(3) & \Mux19~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux19~7_combout\,
	datad => \Mux19~8_combout\,
	combout => \Mux19~9_combout\);

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(14),
	combout => \B~combout\(14));

-- Location: LCCOMB_X30_Y23_N18
\cout~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~20_combout\ = (\A~combout\(13) & (\B~combout\(13) & ((\cout~6_combout\) # (\cout~19_combout\)))) # (!\A~combout\(13) & ((\cout~6_combout\) # ((\cout~19_combout\) # (\B~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~6_combout\,
	datab => \cout~19_combout\,
	datac => \A~combout\(13),
	datad => \B~combout\(13),
	combout => \cout~20_combout\);

-- Location: LCCOMB_X30_Y21_N20
\Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = \A~combout\(14) $ (\B~combout\(14) $ (((\opcode~combout\(0) & \cout~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	datad => \cout~20_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X30_Y21_N14
\Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & (\Mux18~8_combout\ $ (((\cout~48_combout\ & !\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~48_combout\,
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \Mux18~8_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X36_Y27_N12
\ShiftLeft0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\A~combout\(0) & (\B~combout\(11))) # (!\A~combout\(0) & ((\B~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(11),
	datac => \B~combout\(12),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X34_Y29_N24
\ShiftLeft0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\A~combout\(2) & (\ShiftLeft0~18_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X36_Y27_N6
\ShiftLeft0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\A~combout\(0) & ((\B~combout\(13)))) # (!\A~combout\(0) & (\B~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datac => \B~combout\(13),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X35_Y29_N0
\ShiftLeft0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\A~combout\(2) & ((\ShiftLeft0~19_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftLeft0~21_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X35_Y29_N18
\ShiftLeft0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\A~combout\(1) & (\ShiftLeft0~31_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~31_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X34_Y25_N2
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\Mux10~1_combout\ & ((\A~combout\(3) & (\ShiftLeft0~30_combout\)) # (!\A~combout\(3) & ((\ShiftLeft0~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \ShiftLeft0~30_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~33_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X34_Y25_N20
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux22~2_combout\ & ((\Mux22~3_combout\ & (\ShiftRight0~16_combout\)) # (!\Mux22~3_combout\ & ((\Mux18~1_combout\))))) # (!\Mux22~2_combout\ & (((!\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \Mux22~2_combout\,
	datac => \Mux22~3_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X33_Y25_N12
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux1~54_combout\ & (((\Mux18~2_combout\)))) # (!\Mux1~54_combout\ & ((\Mux18~2_combout\ & ((\ShiftRight0~89_combout\))) # (!\Mux18~2_combout\ & (\ShiftRight0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~91_combout\,
	datab => \ShiftRight0~89_combout\,
	datac => \Mux1~54_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X30_Y21_N22
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\opcode~combout\(2) & ((\Mux18~9_combout\ & ((\Mux18~3_combout\))) # (!\Mux18~9_combout\ & (\cout~99_combout\)))) # (!\opcode~combout\(2) & (((\Mux18~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~99_combout\,
	datab => \opcode~combout\(2),
	datac => \Mux18~9_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X30_Y21_N0
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\opcode~combout\(0) & (\opcode~combout\(2) $ (((\A~combout\(14)) # (\B~combout\(14)))))) # (!\opcode~combout\(0) & (\A~combout\(14) & (\B~combout\(14) & !\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	datad => \opcode~combout\(2),
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X30_Y21_N26
\Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\opcode~combout\(1) & (((\Mux18~4_combout\)))) # (!\opcode~combout\(1) & ((\Mux10~0_combout\) # ((\Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux18~4_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X35_Y25_N16
\ShiftRight1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\A~combout\(2)) # (\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	combout => \ShiftRight1~4_combout\);

-- Location: LCCOMB_X30_Y29_N28
\ShiftRight1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (!\A~combout\(3) & (!\ShiftRight1~4_combout\ & (!\ShiftLeft0~10_combout\ & \ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~4_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight1~5_combout\);

-- Location: LCCOMB_X30_Y29_N14
\ShiftRight2~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~41_combout\ = (\A~combout\(3) & (((\B~combout\(31))))) # (!\A~combout\(3) & ((\ShiftRight2~4_combout\ & ((\B~combout\(31)))) # (!\ShiftRight2~4_combout\ & (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(30),
	datac => \B~combout\(31),
	datad => \ShiftRight2~4_combout\,
	combout => \ShiftRight2~41_combout\);

-- Location: LCCOMB_X33_Y29_N30
\ShiftLeft2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~2_combout\ = (\Add0~4_combout\ & ((\Add0~2_combout\ & (\B~combout\(0))) # (!\Add0~2_combout\ & ((\ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~22_combout\,
	combout => \ShiftLeft2~2_combout\);

-- Location: LCCOMB_X33_Y29_N0
\ShiftLeft1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~16_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftLeft1~14_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~15_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~14_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft1~16_combout\);

-- Location: LCCOMB_X34_Y29_N20
\ShiftLeft2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~3_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & (\ShiftLeft0~23_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft2~3_combout\);

-- Location: LCCOMB_X33_Y29_N16
\ShiftLeft2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~4_combout\ = (\ShiftLeft1~16_combout\) # ((\Add0~6_combout\ & ((\ShiftLeft2~2_combout\) # (\ShiftLeft2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft2~2_combout\,
	datac => \ShiftLeft1~16_combout\,
	datad => \ShiftLeft2~3_combout\,
	combout => \ShiftLeft2~4_combout\);

-- Location: LCCOMB_X30_Y29_N24
\Mux1~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~164_combout\ = (\Mux1~33_combout\ & (((\A~combout\(31))))) # (!\Mux1~33_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~4_combout\))) # (!\A~combout\(31) & (\ShiftRight2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~33_combout\,
	datab => \ShiftRight2~41_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~4_combout\,
	combout => \Mux1~164_combout\);

-- Location: LCCOMB_X29_Y29_N12
\Mux1~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~165_combout\ = (\Mux1~164_combout\ & (((\B~combout\(0)) # (!\Mux1~33_combout\)))) # (!\Mux1~164_combout\ & (\B~combout\(31) & ((\Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~164_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~33_combout\,
	combout => \Mux1~165_combout\);

-- Location: LCCOMB_X30_Y27_N22
\Mux1~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~166_combout\ = (\Mux1~27_combout\ & (\ShiftRight1~40_combout\ & ((\Mux1~28_combout\)))) # (!\Mux1~27_combout\ & (((\Mux1~165_combout\) # (!\Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~27_combout\,
	datab => \ShiftRight1~40_combout\,
	datac => \Mux1~165_combout\,
	datad => \Mux1~28_combout\,
	combout => \Mux1~166_combout\);

-- Location: LCCOMB_X30_Y29_N2
\Mux1~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~167_combout\ = (\Mux1~29_combout\ & ((\Mux1~166_combout\ & ((\ShiftRight1~5_combout\))) # (!\Mux1~166_combout\ & (\ShiftLeft1~19_combout\)))) # (!\Mux1~29_combout\ & (((\Mux1~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~19_combout\,
	datab => \ShiftRight1~5_combout\,
	datac => \Mux1~29_combout\,
	datad => \Mux1~166_combout\,
	combout => \Mux1~167_combout\);

-- Location: LCCOMB_X30_Y29_N4
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux1~99_combout\ & ((\ShiftRight1~66_combout\) # ((\ShiftRight1~37_combout\)))) # (!\Mux1~99_combout\ & (((\Mux1~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \ShiftRight1~37_combout\,
	datac => \Mux1~99_combout\,
	datad => \Mux1~167_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y29_N22
\Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\opcode~combout\(3) & ((\Mux18~0_combout\))) # (!\opcode~combout\(3) & (\Mux18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~6_combout\,
	datab => \Mux18~0_combout\,
	datac => \opcode~combout\(3),
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X30_Y25_N24
\ShiftRight2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~38_combout\ = (\A~combout\(3) & ((\ShiftRight1~20_combout\) # ((\ShiftRight2~7_combout\ & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~20_combout\,
	datac => \ShiftRight2~7_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight2~38_combout\);

-- Location: LCCOMB_X30_Y25_N2
\ShiftRight2~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~39_combout\ = (\Mux10~1_combout\ & (((\B~combout\(31))))) # (!\Mux10~1_combout\ & ((\ShiftRight2~37_combout\) # ((\ShiftRight2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~37_combout\,
	datab => \ShiftRight2~38_combout\,
	datac => \B~combout\(31),
	datad => \Mux10~1_combout\,
	combout => \ShiftRight2~39_combout\);

-- Location: LCCOMB_X36_Y29_N28
\ShiftLeft1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~32_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~47_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft1~32_combout\);

-- Location: LCCOMB_X32_Y26_N12
\ShiftLeft1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~33_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~31_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~31_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~32_combout\,
	combout => \ShiftLeft1~33_combout\);

-- Location: LCCOMB_X31_Y25_N6
\ShiftLeft1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~71_combout\ = (\ShiftLeft1~59_combout\ & ((\Add0~6_combout\ & ((\ShiftLeft1~22_combout\))) # (!\Add0~6_combout\ & (\ShiftLeft1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~33_combout\,
	datac => \ShiftLeft1~59_combout\,
	datad => \ShiftLeft1~22_combout\,
	combout => \ShiftLeft1~71_combout\);

-- Location: LCCOMB_X31_Y25_N18
\ShiftLeft2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~28_combout\ = (\ShiftLeft1~71_combout\) # ((\B~combout\(0) & ((\Add0~8_combout\) # (!\ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight0~15_combout\,
	datac => \B~combout\(0),
	datad => \ShiftLeft1~71_combout\,
	combout => \ShiftLeft2~28_combout\);

-- Location: LCCOMB_X30_Y25_N20
\Mux1~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~140_combout\ = (\Mux1~139_combout\ & (((\ShiftLeft2~28_combout\) # (!\opcode~combout\(0))))) # (!\Mux1~139_combout\ & (\ShiftRight2~39_combout\ & (\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~139_combout\,
	datab => \ShiftRight2~39_combout\,
	datac => \opcode~combout\(0),
	datad => \ShiftLeft2~28_combout\,
	combout => \Mux1~140_combout\);

-- Location: LCCOMB_X30_Y21_N8
\soma~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~24_combout\ = \cout~93_combout\ $ (((\A~combout\(14) & (\B~combout\(14) & \cout~20_combout\)) # (!\A~combout\(14) & ((\B~combout\(14)) # (\cout~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~93_combout\,
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	datad => \cout~20_combout\,
	combout => \soma~24_combout\);

-- Location: LCCOMB_X30_Y21_N4
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\opcode~combout\(0) & (((\soma~24_combout\) # (\opcode~combout\(2))))) # (!\opcode~combout\(0) & (\soma~25_combout\ & ((!\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~25_combout\,
	datab => \soma~24_combout\,
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X33_Y26_N18
\Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (!\Mux10~1_combout\ & ((\A~combout\(3) & ((\ShiftLeft0~55_combout\))) # (!\A~combout\(3) & (\ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~55_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X33_Y26_N8
\ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\B~combout\(31) & (!\ShiftRight0~17_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftRight0~17_combout\,
	datac => \Add0~6_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X33_Y24_N12
\Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux22~2_combout\ & ((\Mux22~3_combout\ & ((\ShiftRight0~18_combout\))) # (!\Mux22~3_combout\ & (\Mux17~1_combout\)))) # (!\Mux22~2_combout\ & (((!\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux22~3_combout\,
	datad => \ShiftRight0~18_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X33_Y24_N6
\Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux1~54_combout\ & (((\Mux17~2_combout\)))) # (!\Mux1~54_combout\ & ((\Mux17~2_combout\ & ((\ShiftRight0~93_combout\))) # (!\Mux17~2_combout\ & (\ShiftRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \Mux1~54_combout\,
	datac => \ShiftRight0~93_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X30_Y21_N30
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\opcode~combout\(2) & ((\Mux17~0_combout\ & ((\Mux17~3_combout\))) # (!\Mux17~0_combout\ & (\cout~93_combout\)))) # (!\opcode~combout\(2) & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~93_combout\,
	datab => \opcode~combout\(2),
	datac => \Mux17~0_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X31_Y24_N18
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (!\opcode~combout\(2) & ((\B~combout\(15) & ((\A~combout\(15)) # (\opcode~combout\(0)))) # (!\B~combout\(15) & (\A~combout\(15) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datab => \opcode~combout\(2),
	datac => \A~combout\(15),
	datad => \opcode~combout\(0),
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X30_Y21_N2
\Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\opcode~combout\(1) & (((\Mux17~4_combout\)))) # (!\opcode~combout\(1) & ((\Mux17~6_combout\) # ((\Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~6_combout\,
	datab => \Mux17~4_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux17~5_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X29_Y26_N0
\Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\opcode~combout\(3) & (\Mux1~140_combout\)) # (!\opcode~combout\(3) & ((\Mux17~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux1~140_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X31_Y21_N26
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\B~combout\(16) & (!\opcode~combout\(2) & ((\A~combout\(16)) # (\opcode~combout\(0))))) # (!\B~combout\(16) & (\opcode~combout\(0) & (\opcode~combout\(2) $ (\A~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \opcode~combout\(2),
	datac => \A~combout\(16),
	datad => \opcode~combout\(0),
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X31_Y21_N12
\Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\opcode~combout\(1) & (\Mux16~4_combout\)) # (!\opcode~combout\(1) & (((\Mux16~5_combout\) # (\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~5_combout\,
	datac => \Mux10~0_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X30_Y28_N30
\ShiftRight1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (!\Mux10~1_combout\ & ((\A~combout\(3) & ((\ShiftRight1~44_combout\))) # (!\A~combout\(3) & (\ShiftRight1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \ShiftRight1~44_combout\,
	datac => \A~combout\(3),
	datad => \Mux10~1_combout\,
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X30_Y30_N30
\ShiftRight2~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~43_combout\ = (\ShiftRight1~59_combout\) # ((\B~combout\(31) & ((\ShiftLeft0~10_combout\) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftRight1~59_combout\,
	datac => \B~combout\(31),
	datad => \A~combout\(4),
	combout => \ShiftRight2~43_combout\);

-- Location: LCCOMB_X36_Y27_N8
\ShiftLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\A~combout\(0) & ((\B~combout\(15)))) # (!\A~combout\(0) & (\B~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(0),
	datad => \B~combout\(15),
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X35_Y29_N30
\ShiftLeft1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~46_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~21_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~21_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft1~46_combout\);

-- Location: LCCOMB_X35_Y29_N10
\ShiftLeft1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~62_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~42_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~46_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~42_combout\,
	combout => \ShiftLeft1~62_combout\);

-- Location: LCCOMB_X32_Y25_N4
\ShiftLeft1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~76_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftLeft1~39_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~41_combout\,
	datab => \ShiftLeft1~39_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftLeft1~76_combout\);

-- Location: LCCOMB_X30_Y30_N8
\ShiftLeft2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~25_combout\ = (\ShiftLeft1~76_combout\) # ((!\Add0~6_combout\ & \ShiftLeft1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~62_combout\,
	datad => \ShiftLeft1~76_combout\,
	combout => \ShiftLeft2~25_combout\);

-- Location: LCCOMB_X30_Y30_N2
\ShiftLeft2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~26_combout\ = (\ShiftRight0~15_combout\ & ((\Add0~8_combout\ & ((\B~combout\(0)))) # (!\Add0~8_combout\ & (\ShiftLeft2~25_combout\)))) # (!\ShiftRight0~15_combout\ & (((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftLeft2~25_combout\,
	datac => \B~combout\(0),
	datad => \Add0~8_combout\,
	combout => \ShiftLeft2~26_combout\);

-- Location: LCCOMB_X30_Y30_N28
\Mux1~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~146_combout\ = (\Mux1~145_combout\ & (((\ShiftLeft2~26_combout\) # (!\opcode~combout\(0))))) # (!\Mux1~145_combout\ & (\ShiftRight2~43_combout\ & (\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~145_combout\,
	datab => \ShiftRight2~43_combout\,
	datac => \opcode~combout\(0),
	datad => \ShiftLeft2~26_combout\,
	combout => \Mux1~146_combout\);

-- Location: LCCOMB_X29_Y26_N6
\Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\opcode~combout\(3) & ((\Mux1~146_combout\))) # (!\opcode~combout\(3) & (\Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux16~6_combout\,
	datac => \Mux1~146_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X33_Y30_N4
\ShiftLeft1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~82_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~52_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~52_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~49_combout\,
	combout => \ShiftLeft1~82_combout\);

-- Location: LCCOMB_X33_Y30_N8
\ShiftLeft1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~81_combout\ = (\ShiftLeft0~34_combout\ & (!\Add0~4_combout\ & (!\Add0~6_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftLeft1~81_combout\);

-- Location: LCCOMB_X32_Y29_N18
\Mux1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~46_combout\ = (!\opcode~combout\(0) & (((\ShiftRight0~15_combout\ & \Add0~8_combout\)) # (!\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight0~15_combout\,
	datac => \A~combout\(31),
	datad => \Add0~8_combout\,
	combout => \Mux1~46_combout\);

-- Location: LCCOMB_X32_Y30_N14
\Mux1~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~181_combout\ = (!\Mux10~1_combout\ & ((\A~combout\(3) & (\ShiftRight1~50_combout\)) # (!\A~combout\(3) & ((\ShiftRight1~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \ShiftRight1~50_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight1~48_combout\,
	combout => \Mux1~181_combout\);

-- Location: LCCOMB_X33_Y30_N10
\Mux1~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~176_combout\ = (\Mux1~175_combout\ & (((\Mux1~181_combout\) # (!\Mux1~46_combout\)))) # (!\Mux1~175_combout\ & (\ShiftLeft1~81_combout\ & (\Mux1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~175_combout\,
	datab => \ShiftLeft1~81_combout\,
	datac => \Mux1~46_combout\,
	datad => \Mux1~181_combout\,
	combout => \Mux1~176_combout\);

-- Location: LCCOMB_X33_Y30_N6
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux1~54_combout\ & (((\Mux1~176_combout\)))) # (!\Mux1~54_combout\ & ((\Add0~6_combout\ & (\ShiftLeft1~82_combout\)) # (!\Add0~6_combout\ & ((\Mux1~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~54_combout\,
	datab => \ShiftLeft1~82_combout\,
	datac => \Add0~6_combout\,
	datad => \Mux1~176_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X34_Y21_N4
\Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux10~0_combout\) # ((!\A~combout\(17) & (\Mux10~4_combout\ & !\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \Mux10~4_combout\,
	datac => \B~combout\(17),
	datad => \Mux10~0_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X30_Y21_N28
\cout~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~49_combout\ = (\cout~48_combout\ & ((\A~combout\(14)) # (\B~combout\(14)))) # (!\cout~48_combout\ & (\A~combout\(14) & \B~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~48_combout\,
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	combout => \cout~49_combout\);

-- Location: LCCOMB_X31_Y21_N28
\cout~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~50_combout\ = (\cout~49_combout\ & ((\A~combout\(15)) # (\B~combout\(15)))) # (!\cout~49_combout\ & (\A~combout\(15) & \B~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~49_combout\,
	datac => \A~combout\(15),
	datad => \B~combout\(15),
	combout => \cout~50_combout\);

-- Location: LCCOMB_X34_Y21_N18
\cout~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~101_combout\ = \B~combout\(17) $ (\A~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(17),
	datac => \A~combout\(17),
	combout => \cout~101_combout\);

-- Location: LCCOMB_X31_Y21_N22
\soma~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~37_combout\ = \cout~101_combout\ $ (((\B~combout\(16) & ((\cout~50_combout\) # (\A~combout\(16)))) # (!\B~combout\(16) & (\cout~50_combout\ & \A~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \cout~50_combout\,
	datac => \A~combout\(16),
	datad => \cout~101_combout\,
	combout => \soma~37_combout\);

-- Location: LCCOMB_X34_Y21_N14
\Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (\soma~36_combout\)) # (!\opcode~combout\(0) & ((\soma~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~36_combout\,
	datab => \soma~37_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X34_Y21_N8
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\opcode~combout\(2) & ((\Mux15~2_combout\ & (\Mux15~4_combout\)) # (!\Mux15~2_combout\ & ((\cout~101_combout\))))) # (!\opcode~combout\(2) & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \opcode~combout\(2),
	datac => \Mux15~2_combout\,
	datad => \cout~101_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X34_Y21_N26
\Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!\opcode~combout\(2) & ((\A~combout\(17) & ((\B~combout\(17)) # (\opcode~combout\(0)))) # (!\A~combout\(17) & (\B~combout\(17) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \opcode~combout\(2),
	datac => \B~combout\(17),
	datad => \opcode~combout\(0),
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X34_Y21_N6
\Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\opcode~combout\(1) & (((\Mux15~5_combout\)))) # (!\opcode~combout\(1) & ((\Mux15~7_combout\) # ((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux15~7_combout\,
	datac => \Mux15~5_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X29_Y26_N4
\Mux15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\opcode~combout\(3) & (\Mux15~1_combout\)) # (!\opcode~combout\(3) & ((\Mux15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux15~1_combout\,
	datad => \Mux15~8_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X34_Y21_N30
\Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\A~combout\(18) & (!\opcode~combout\(2) & ((\B~combout\(18)) # (\opcode~combout\(0))))) # (!\A~combout\(18) & (\opcode~combout\(0) & (\opcode~combout\(2) $ (\B~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \opcode~combout\(2),
	datac => \B~combout\(18),
	datad => \opcode~combout\(0),
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X34_Y21_N0
\Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\opcode~combout\(1) & (\Mux14~6_combout\)) # (!\opcode~combout\(1) & (((\Mux10~0_combout\) # (\Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \Mux10~0_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux14~7_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X33_Y29_N28
\ShiftLeft1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~79_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~17_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~14_combout\,
	datad => \ShiftLeft1~17_combout\,
	combout => \ShiftLeft1~79_combout\);

-- Location: LCCOMB_X31_Y29_N24
\Mux1~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~154_combout\ = (!\Mux10~1_combout\ & ((\ShiftRight1~16_combout\) # ((\ShiftRight1~67_combout\ & \A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ShiftRight1~67_combout\,
	datac => \A~combout\(3),
	datad => \Mux10~1_combout\,
	combout => \Mux1~154_combout\);

-- Location: LCCOMB_X31_Y29_N20
\Mux1~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~158_combout\ = (\Mux1~157_combout\ & (((\Mux1~154_combout\) # (!\Mux1~46_combout\)))) # (!\Mux1~157_combout\ & (\ShiftLeft1~37_combout\ & ((\Mux1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~157_combout\,
	datab => \ShiftLeft1~37_combout\,
	datac => \Mux1~154_combout\,
	datad => \Mux1~46_combout\,
	combout => \Mux1~158_combout\);

-- Location: LCCOMB_X33_Y24_N28
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Add0~6_combout\ & ((\Mux1~54_combout\ & ((\Mux1~158_combout\))) # (!\Mux1~54_combout\ & (\ShiftLeft1~79_combout\)))) # (!\Add0~6_combout\ & (((\Mux1~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux1~54_combout\,
	datac => \ShiftLeft1~79_combout\,
	datad => \Mux1~158_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\opcode~combout\(3) & ((\Mux14~2_combout\))) # (!\opcode~combout\(3) & (\Mux14~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux14~8_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X32_Y26_N4
\Mux13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Add0~6_combout\ & ((\Mux1~54_combout\ & (\Mux1~153_combout\)) # (!\Mux1~54_combout\ & ((\ShiftLeft1~63_combout\))))) # (!\Add0~6_combout\ & (\Mux1~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~153_combout\,
	datab => \ShiftLeft1~63_combout\,
	datac => \Add0~6_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X35_Y21_N30
\Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (!\opcode~combout\(2) & ((\B~combout\(19) & ((\A~combout\(19)) # (\opcode~combout\(0)))) # (!\B~combout\(19) & (\A~combout\(19) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \opcode~combout\(2),
	datac => \A~combout\(19),
	datad => \opcode~combout\(0),
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X35_Y21_N28
\cout~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~96_combout\ = \A~combout\(19) $ (\B~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(19),
	datad => \B~combout\(19),
	combout => \cout~96_combout\);

-- Location: LCCOMB_X35_Y30_N18
\ShiftLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\A~combout\(0) & ((\B~combout\(18)))) # (!\A~combout\(0) & (\B~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(19),
	datac => \A~combout\(0),
	datad => \B~combout\(18),
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X36_Y27_N22
\ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\A~combout\(0) & (\B~combout\(14))) # (!\A~combout\(0) & ((\B~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(0),
	datad => \B~combout\(15),
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X36_Y29_N14
\ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & ((\ShiftLeft0~48_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~39_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~48_combout\,
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X36_Y27_N24
\ShiftLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\A~combout\(0) & (\B~combout\(16))) # (!\A~combout\(0) & ((\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \B~combout\(17),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X36_Y29_N12
\ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\A~combout\(2) & ((\ShiftLeft0~47_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftLeft0~38_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X36_Y26_N18
\ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\ShiftLeft0~98_combout\) # ((\A~combout\(1) & \ShiftLeft0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X35_Y26_N18
\ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (\A~combout\(2) & (\ShiftLeft0~36_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~45_combout\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X36_Y26_N10
\ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\A~combout\(1) & (\ShiftLeft0~86_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~86_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~73_combout\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X36_Y26_N14
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & ((\ShiftLeft0~99_combout\) # ((\Mux10~1_combout\)))) # (!\Mux13~3_combout\ & (((!\Mux10~1_combout\ & \ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \ShiftLeft0~99_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~87_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X35_Y21_N20
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~2_combout\ & (((\Mux13~4_combout\) # (!\opcode~combout\(2))))) # (!\Mux13~2_combout\ & (\cout~96_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \cout~96_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X35_Y21_N18
\Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\opcode~combout\(1) & (((\Mux13~5_combout\)))) # (!\opcode~combout\(1) & ((\Mux13~7_combout\) # ((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux13~5_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X29_Y26_N20
\Mux13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\opcode~combout\(3) & (\Mux13~9_combout\)) # (!\opcode~combout\(3) & ((\Mux13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \Mux13~9_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X34_Y22_N12
\cout~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~98_combout\ = \B~combout\(20) $ (\A~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(20),
	datad => \A~combout\(20),
	combout => \cout~98_combout\);

-- Location: LCCOMB_X34_Y21_N16
\cout~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~23_combout\ = (\cout~22_combout\ & ((\B~combout\(17)) # (!\A~combout\(17)))) # (!\cout~22_combout\ & (\B~combout\(17) & !\A~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~22_combout\,
	datab => \B~combout\(17),
	datac => \A~combout\(17),
	combout => \cout~23_combout\);

-- Location: LCCOMB_X35_Y21_N26
\cout~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~24_combout\ = (\A~combout\(18) & (\B~combout\(18) & \cout~23_combout\)) # (!\A~combout\(18) & ((\B~combout\(18)) # (\cout~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datac => \B~combout\(18),
	datad => \cout~23_combout\,
	combout => \cout~24_combout\);

-- Location: LCCOMB_X35_Y21_N6
\soma~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~32_combout\ = \cout~98_combout\ $ (((\B~combout\(19) & ((\cout~24_combout\) # (!\A~combout\(19)))) # (!\B~combout\(19) & (!\A~combout\(19) & \cout~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \cout~98_combout\,
	datac => \A~combout\(19),
	datad => \cout~24_combout\,
	combout => \soma~32_combout\);

-- Location: LCCOMB_X31_Y21_N24
\cout~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~52_combout\ = (\cout~51_combout\ & ((\B~combout\(17)) # (\A~combout\(17)))) # (!\cout~51_combout\ & (\B~combout\(17) & \A~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~51_combout\,
	datac => \B~combout\(17),
	datad => \A~combout\(17),
	combout => \cout~52_combout\);

-- Location: LCCOMB_X35_Y21_N14
\cout~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~53_combout\ = (\A~combout\(18) & ((\B~combout\(18)) # (\cout~52_combout\))) # (!\A~combout\(18) & (\B~combout\(18) & \cout~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datac => \B~combout\(18),
	datad => \cout~52_combout\,
	combout => \cout~53_combout\);

-- Location: LCCOMB_X35_Y21_N0
\cout~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~54_combout\ = (\cout~53_combout\ & ((\A~combout\(19)) # (\B~combout\(19)))) # (!\cout~53_combout\ & (\A~combout\(19) & \B~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~53_combout\,
	datac => \A~combout\(19),
	datad => \B~combout\(19),
	combout => \cout~54_combout\);

-- Location: LCCOMB_X36_Y22_N28
\soma~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~33_combout\ = \A~combout\(20) $ (\B~combout\(20) $ (\cout~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datac => \cout~54_combout\,
	combout => \soma~33_combout\);

-- Location: LCCOMB_X34_Y22_N14
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (\soma~32_combout\)) # (!\opcode~combout\(0) & ((\soma~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \soma~32_combout\,
	datac => \soma~33_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X35_Y29_N4
\ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\ShiftLeft0~21_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftLeft0~21_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X36_Y28_N14
\ShiftLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\A~combout\(0) & ((\B~combout\(19)))) # (!\A~combout\(0) & (\B~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(0),
	datac => \B~combout\(19),
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X35_Y29_N6
\ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\A~combout\(1) & (\ShiftLeft0~15_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \A~combout\(1),
	datac => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X35_Y29_N24
\ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\ShiftLeft0~68_combout\) # ((!\A~combout\(2) & \ShiftLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftLeft0~68_combout\,
	datad => \ShiftLeft0~69_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X34_Y29_N30
\ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\A~combout\(2) & (\ShiftLeft0~24_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X34_Y29_N8
\ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\A~combout\(1) & ((\ShiftLeft0~64_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~31_combout\,
	datab => \ShiftLeft0~64_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X34_Y24_N6
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & ((\ShiftLeft0~70_combout\) # ((\Mux10~1_combout\)))) # (!\Mux12~3_combout\ & (((!\Mux10~1_combout\ & \ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \ShiftLeft0~70_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~65_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X34_Y22_N8
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\opcode~combout\(2) & ((\Mux12~1_combout\ & ((\Mux12~4_combout\))) # (!\Mux12~1_combout\ & (\cout~98_combout\)))) # (!\opcode~combout\(2) & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \cout~98_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X34_Y22_N10
\Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\opcode~combout\(0) & (\opcode~combout\(2) $ (((\B~combout\(20)) # (\A~combout\(20)))))) # (!\opcode~combout\(0) & (!\opcode~combout\(2) & (\B~combout\(20) & \A~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(0),
	datac => \B~combout\(20),
	datad => \A~combout\(20),
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X34_Y22_N28
\Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\opcode~combout\(1) & (((\Mux12~5_combout\)))) # (!\opcode~combout\(1) & ((\Mux10~0_combout\) # ((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux10~0_combout\,
	datac => \Mux12~5_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X32_Y29_N30
\Mux1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~50_combout\ = (\opcode~combout\(0)) # ((\ShiftRight0~15_combout\ & (\A~combout\(31) & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight0~15_combout\,
	datac => \A~combout\(31),
	datad => \Add0~8_combout\,
	combout => \Mux1~50_combout\);

-- Location: LCCOMB_X30_Y30_N16
\Mux1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~47_combout\ = (\A~combout\(31) & (((!\ShiftRight0~15_combout\)))) # (!\A~combout\(31) & ((\ShiftLeft0~10_combout\) # ((\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \A~combout\(4),
	datac => \ShiftRight0~15_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~47_combout\);

-- Location: LCCOMB_X32_Y25_N8
\ShiftLeft2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~14_combout\ = (\Add0~4_combout\ & (((\B~combout\(0))))) # (!\Add0~4_combout\ & ((\Add0~6_combout\ & ((\B~combout\(0)))) # (!\Add0~6_combout\ & (\ShiftLeft1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftLeft1~39_combout\,
	datad => \B~combout\(0),
	combout => \ShiftLeft2~14_combout\);

-- Location: LCCOMB_X32_Y29_N14
\Mux1~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~159_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~14_combout\))) # (!\A~combout\(31) & (\ShiftRight2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~21_combout\,
	datab => \Mux1~47_combout\,
	datac => \A~combout\(31),
	datad => \ShiftLeft2~14_combout\,
	combout => \Mux1~159_combout\);

-- Location: LCCOMB_X32_Y29_N24
\Mux1~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~160_combout\ = (\Mux1~47_combout\ & ((\Mux1~159_combout\ & ((\B~combout\(0)))) # (!\Mux1~159_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~47_combout\,
	datac => \Mux1~159_combout\,
	datad => \B~combout\(0),
	combout => \Mux1~160_combout\);

-- Location: LCCOMB_X35_Y29_N8
\ShiftLeft1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~47_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~15_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft1~47_combout\);

-- Location: LCCOMB_X35_Y29_N26
\ShiftLeft1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~48_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~46_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~46_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~47_combout\,
	combout => \ShiftLeft1~48_combout\);

-- Location: LCCOMB_X32_Y29_N10
\Mux1~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~161_combout\ = (\Mux1~51_combout\ & (\Mux1~50_combout\ & ((\ShiftLeft1~48_combout\)))) # (!\Mux1~51_combout\ & (((\Mux1~160_combout\)) # (!\Mux1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~51_combout\,
	datab => \Mux1~50_combout\,
	datac => \Mux1~160_combout\,
	datad => \ShiftLeft1~48_combout\,
	combout => \Mux1~161_combout\);

-- Location: LCCOMB_X32_Y25_N24
\Mux1~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~163_combout\ = (\Mux1~162_combout\ & (\Mux1~161_combout\)) # (!\Mux1~162_combout\ & ((\Mux1~161_combout\ & ((!\Mux1~46_combout\))) # (!\Mux1~161_combout\ & (\ShiftLeft1~40_combout\ & \Mux1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~162_combout\,
	datab => \Mux1~161_combout\,
	datac => \ShiftLeft1~40_combout\,
	datad => \Mux1~46_combout\,
	combout => \Mux1~163_combout\);

-- Location: LCCOMB_X32_Y25_N18
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Add0~6_combout\ & ((\Mux1~54_combout\ & ((\Mux1~163_combout\))) # (!\Mux1~54_combout\ & (\ShiftLeft1~43_combout\)))) # (!\Add0~6_combout\ & (((\Mux1~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~43_combout\,
	datac => \Mux1~163_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y26_N8
\Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\opcode~combout\(3) & ((\Mux12~0_combout\))) # (!\opcode~combout\(3) & (\Mux12~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux12~7_combout\,
	datac => \Mux12~0_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X36_Y22_N26
\Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux10~0_combout\) # ((\Mux10~4_combout\ & (!\B~combout\(21) & !\A~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux10~0_combout\,
	datac => \B~combout\(21),
	datad => \A~combout\(21),
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X36_Y22_N24
\Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (!\opcode~combout\(2) & ((\A~combout\(21) & ((\B~combout\(21)) # (\opcode~combout\(0)))) # (!\A~combout\(21) & (\B~combout\(21) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \opcode~combout\(2),
	datac => \B~combout\(21),
	datad => \opcode~combout\(0),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X36_Y22_N30
\cout~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~100_combout\ = \A~combout\(21) $ (\B~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datac => \B~combout\(21),
	combout => \cout~100_combout\);

-- Location: LCCOMB_X36_Y28_N6
\ShiftLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\A~combout\(0) & (\B~combout\(20))) # (!\A~combout\(0) & ((\B~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(20),
	datad => \B~combout\(21),
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X36_Y29_N8
\ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\A~combout\(1) & (\ShiftLeft0~39_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~39_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X36_Y29_N10
\ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\ShiftLeft0~77_combout\) # ((\ShiftLeft0~78_combout\ & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~77_combout\,
	datab => \ShiftLeft0~78_combout\,
	datac => \A~combout\(2),
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X36_Y26_N26
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & (((\Mux10~1_combout\) # (\ShiftLeft0~79_combout\)))) # (!\Mux11~3_combout\ & (\ShiftLeft0~74_combout\ & (!\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \ShiftLeft0~74_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftLeft0~79_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X36_Y22_N6
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~1_combout\ & (((\Mux11~4_combout\) # (!\opcode~combout\(2))))) # (!\Mux11~1_combout\ & (\cout~100_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \cout~100_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X36_Y22_N20
\Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\opcode~combout\(1) & (((\Mux11~5_combout\)))) # (!\opcode~combout\(1) & ((\Mux11~7_combout\) # ((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux11~7_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X33_Y30_N2
\ShiftLeft1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~80_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~49_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~49_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~50_combout\,
	combout => \ShiftLeft1~80_combout\);

-- Location: LCCOMB_X32_Y24_N4
\Mux1~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~171_combout\ = (\Mux1~170_combout\ & (\Mux27~11_combout\ & ((!\Mux10~1_combout\)))) # (!\Mux1~170_combout\ & (((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~170_combout\,
	datab => \Mux27~11_combout\,
	datac => \Add0~6_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux1~171_combout\);

-- Location: LCCOMB_X32_Y24_N6
\Mux1~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~172_combout\ = (\Mux1~170_combout\ & (((\Mux1~171_combout\)) # (!\Mux1~46_combout\))) # (!\Mux1~170_combout\ & (\Mux1~46_combout\ & (!\Mux1~171_combout\ & \ShiftLeft1~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~170_combout\,
	datab => \Mux1~46_combout\,
	datac => \Mux1~171_combout\,
	datad => \ShiftLeft1~53_combout\,
	combout => \Mux1~172_combout\);

-- Location: LCCOMB_X33_Y30_N12
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Add0~6_combout\ & ((\Mux1~54_combout\ & ((\Mux1~172_combout\))) # (!\Mux1~54_combout\ & (\ShiftLeft1~80_combout\)))) # (!\Add0~6_combout\ & (((\Mux1~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ShiftLeft1~80_combout\,
	datac => \Mux1~172_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X33_Y30_N22
\Mux11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\opcode~combout\(3) & ((\Mux11~0_combout\))) # (!\opcode~combout\(3) & (\Mux11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux11~8_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X35_Y29_N2
\ShiftLeft1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~15_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~20_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~21_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft1~15_combout\);

-- Location: LCCOMB_X33_Y29_N8
\ShiftLeft1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~73_combout\ = (\Add0~4_combout\ & (\ShiftLeft1~14_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \ShiftLeft1~14_combout\,
	datad => \ShiftLeft1~15_combout\,
	combout => \ShiftLeft1~73_combout\);

-- Location: LCCOMB_X32_Y29_N16
\Mux1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~51_combout\ = (\A~combout\(31) & (((\ShiftRight0~15_combout\ & !\Add0~8_combout\)) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight0~15_combout\,
	datac => \A~combout\(31),
	datad => \Add0~8_combout\,
	combout => \Mux1~51_combout\);

-- Location: LCCOMB_X30_Y29_N0
\ShiftRight2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~24_combout\ = (\A~combout\(3) & ((\ShiftRight2~4_combout\ & ((\B~combout\(31)))) # (!\ShiftRight2~4_combout\ & (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(30),
	datac => \B~combout\(31),
	datad => \ShiftRight2~4_combout\,
	combout => \ShiftRight2~24_combout\);

-- Location: LCCOMB_X30_Y29_N18
\ShiftRight2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~25_combout\ = (\ShiftRight1~38_combout\) # (\ShiftRight2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~38_combout\,
	datad => \ShiftRight2~24_combout\,
	combout => \ShiftRight2~25_combout\);

-- Location: LCCOMB_X29_Y29_N8
\Mux1~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~141_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & (\ShiftLeft2~16_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft2~16_combout\,
	datab => \Mux1~47_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight2~25_combout\,
	combout => \Mux1~141_combout\);

-- Location: LCCOMB_X29_Y29_N2
\Mux1~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~142_combout\ = (\Mux1~141_combout\ & (((\B~combout\(0)) # (!\Mux1~47_combout\)))) # (!\Mux1~141_combout\ & (\B~combout\(31) & ((\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \B~combout\(0),
	datac => \Mux1~141_combout\,
	datad => \Mux1~47_combout\,
	combout => \Mux1~142_combout\);

-- Location: LCCOMB_X36_Y28_N24
\ShiftLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\A~combout\(0) & ((\B~combout\(21)))) # (!\A~combout\(0) & (\B~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(22),
	datad => \B~combout\(21),
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X34_Y30_N26
\ShiftLeft1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~11_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~16_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~17_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft1~11_combout\);

-- Location: LCCOMB_X35_Y30_N16
\ShiftLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\A~combout\(0) & (\B~combout\(17))) # (!\A~combout\(0) & ((\B~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datac => \A~combout\(0),
	datad => \B~combout\(18),
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X35_Y29_N16
\ShiftLeft1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~10_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~14_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \ShiftLeft0~15_combout\,
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft1~10_combout\);

-- Location: LCCOMB_X34_Y30_N12
\ShiftLeft1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~12_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~10_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ShiftLeft1~11_combout\,
	datac => \ShiftLeft1~10_combout\,
	combout => \ShiftLeft1~12_combout\);

-- Location: LCCOMB_X33_Y29_N4
\Mux1~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~143_combout\ = (\Mux1~50_combout\ & ((\Mux1~51_combout\ & ((\ShiftLeft1~12_combout\))) # (!\Mux1~51_combout\ & (\Mux1~142_combout\)))) # (!\Mux1~50_combout\ & (!\Mux1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~50_combout\,
	datab => \Mux1~51_combout\,
	datac => \Mux1~142_combout\,
	datad => \ShiftLeft1~12_combout\,
	combout => \Mux1~143_combout\);

-- Location: LCCOMB_X33_Y29_N14
\Mux1~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~180_combout\ = (!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & \Mux26~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \ShiftLeft0~10_combout\,
	datad => \Mux26~10_combout\,
	combout => \Mux1~180_combout\);

-- Location: LCCOMB_X33_Y29_N18
\ShiftLeft1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~72_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftLeft1~83_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~83_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~17_combout\,
	combout => \ShiftLeft1~72_combout\);

-- Location: LCCOMB_X33_Y29_N22
\Mux1~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~144_combout\ = (\Mux1~46_combout\ & ((\Mux1~143_combout\ & (\Mux1~180_combout\)) # (!\Mux1~143_combout\ & ((\ShiftLeft1~72_combout\))))) # (!\Mux1~46_combout\ & (\Mux1~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~46_combout\,
	datab => \Mux1~143_combout\,
	datac => \Mux1~180_combout\,
	datad => \ShiftLeft1~72_combout\,
	combout => \Mux1~144_combout\);

-- Location: LCCOMB_X33_Y29_N26
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux1~54_combout\ & (((\Mux1~144_combout\)))) # (!\Mux1~54_combout\ & ((\Add0~6_combout\ & (\ShiftLeft1~73_combout\)) # (!\Add0~6_combout\ & ((\Mux1~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~54_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftLeft1~73_combout\,
	datad => \Mux1~144_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X38_Y22_N8
\Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\A~combout\(22) & (!\opcode~combout\(2) & ((\B~combout\(22)) # (\opcode~combout\(0))))) # (!\A~combout\(22) & (\opcode~combout\(0) & (\opcode~combout\(2) $ (\B~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \opcode~combout\(2),
	datac => \B~combout\(22),
	datad => \opcode~combout\(0),
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X38_Y22_N4
\Mux10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~14_combout\ = \B~combout\(22) $ (\A~combout\(22) $ (((\cout~26_combout\ & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~26_combout\,
	datab => \opcode~combout\(0),
	datac => \B~combout\(22),
	datad => \A~combout\(22),
	combout => \Mux10~14_combout\);

-- Location: LCCOMB_X38_Y22_N14
\Mux10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~15_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & (\Mux10~14_combout\ $ (((\cout~56_combout\ & !\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~56_combout\,
	datab => \Mux10~14_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux10~15_combout\);

-- Location: LCCOMB_X38_Y22_N20
\cout~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~94_combout\ = \A~combout\(22) $ (\B~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datac => \B~combout\(22),
	combout => \cout~94_combout\);

-- Location: LCCOMB_X34_Y25_N28
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\A~combout\(31)) # ((!\A~combout\(4) & (!\ShiftLeft0~10_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(31),
	datad => \A~combout\(3),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X34_Y25_N4
\Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (!\ShiftLeft0~10_combout\ & (!\A~combout\(3) & \ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~30_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X34_Y25_N6
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~1_combout\ & (((!\Add0~8_combout\ & \ShiftRight0~15_combout\)) # (!\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux10~2_combout\,
	datac => \ShiftRight0~15_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X34_Y25_N14
\Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~2_combout\ & (\ShiftRight0~92_combout\ & ((\Mux10~3_combout\)))) # (!\Mux10~2_combout\ & (((\Mux10~6_combout\) # (!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~92_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X34_Y25_N24
\Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~7_combout\ & ((\ShiftLeft0~27_combout\) # ((\Mux10~1_combout\)))) # (!\Mux10~7_combout\ & (((\ShiftLeft0~33_combout\ & !\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~27_combout\,
	datab => \ShiftLeft0~33_combout\,
	datac => \Mux10~7_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X38_Y22_N30
\Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\opcode~combout\(2) & ((\Mux10~15_combout\ & ((\Mux10~8_combout\))) # (!\Mux10~15_combout\ & (\cout~94_combout\)))) # (!\opcode~combout\(2) & (\Mux10~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux10~15_combout\,
	datac => \cout~94_combout\,
	datad => \Mux10~8_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X38_Y22_N2
\Mux10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (\opcode~combout\(1) & (((\Mux10~9_combout\)))) # (!\opcode~combout\(1) & ((\Mux10~0_combout\) # ((\Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~10_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux10~9_combout\,
	combout => \Mux10~11_combout\);

-- Location: LCCOMB_X29_Y26_N12
\Mux10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~12_combout\ = (\opcode~combout\(3) & (\Mux10~5_combout\)) # (!\opcode~combout\(3) & ((\Mux10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux10~5_combout\,
	datad => \Mux10~11_combout\,
	combout => \Mux10~12_combout\);

-- Location: LCCOMB_X32_Y26_N30
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Add0~6_combout\ & ((\Mux1~54_combout\ & (\Mux1~53_combout\)) # (!\Mux1~54_combout\ & ((\ShiftLeft1~33_combout\))))) # (!\Add0~6_combout\ & (\Mux1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~53_combout\,
	datab => \ShiftLeft1~33_combout\,
	datac => \Add0~6_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X38_Y22_N22
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (!\opcode~combout\(2) & ((\A~combout\(23) & ((\opcode~combout\(0)) # (\B~combout\(23)))) # (!\A~combout\(23) & (\opcode~combout\(0) & \B~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \B~combout\(23),
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X38_Y22_N28
\cout~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~72_combout\ = \A~combout\(23) $ (\B~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \cout~72_combout\);

-- Location: LCCOMB_X38_Y22_N6
\soma~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~2_combout\ = \cout~72_combout\ $ (((\cout~26_combout\ & ((\B~combout\(22)) # (!\A~combout\(22)))) # (!\cout~26_combout\ & (\B~combout\(22) & !\A~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~26_combout\,
	datab => \cout~72_combout\,
	datac => \B~combout\(22),
	datad => \A~combout\(22),
	combout => \soma~2_combout\);

-- Location: LCCOMB_X38_Y22_N26
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\opcode~combout\(0) & (((\opcode~combout\(2)) # (\soma~2_combout\)))) # (!\opcode~combout\(0) & (\soma~3_combout\ & (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~3_combout\,
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \soma~2_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X38_Y22_N12
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~1_combout\ & ((\Mux9~4_combout\) # ((!\opcode~combout\(2))))) # (!\Mux9~1_combout\ & (((\opcode~combout\(2) & \cout~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Mux9~1_combout\,
	datac => \opcode~combout\(2),
	datad => \cout~72_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X38_Y22_N10
\Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\opcode~combout\(1) & (((\Mux9~5_combout\)))) # (!\opcode~combout\(1) & ((\Mux9~7_combout\) # ((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \Mux9~6_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux9~5_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X29_Y24_N28
\Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\opcode~combout\(3) & (\Mux9~0_combout\)) # (!\opcode~combout\(3) & ((\Mux9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux9~8_combout\,
	datac => \opcode~combout\(3),
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X32_Y29_N6
\Mux8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~17_combout\ = (!\Mux1~50_combout\ & ((\A~combout\(31) & ((\ShiftRight0~15_combout\))) # (!\A~combout\(31) & (\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux1~50_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~15_combout\,
	combout => \Mux8~17_combout\);

-- Location: LCCOMB_X30_Y28_N18
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~17_combout\ & ((\A~combout\(31) & ((\ShiftLeft1~61_combout\))) # (!\A~combout\(31) & (\ShiftRight1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \ShiftRight1~44_combout\,
	datac => \ShiftLeft1~61_combout\,
	datad => \Mux8~17_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X30_Y30_N14
\Mux1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~89_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~17_combout\))) # (!\A~combout\(31) & (\ShiftRight2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~26_combout\,
	datab => \ShiftLeft2~17_combout\,
	datac => \Mux1~47_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~89_combout\);

-- Location: LCCOMB_X30_Y30_N24
\Mux1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~90_combout\ = (\Mux1~47_combout\ & ((\Mux1~89_combout\ & ((\B~combout\(0)))) # (!\Mux1~89_combout\ & (\B~combout\(31))))) # (!\Mux1~47_combout\ & (((\Mux1~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~47_combout\,
	datab => \B~combout\(31),
	datac => \Mux1~89_combout\,
	datad => \B~combout\(0),
	combout => \Mux1~90_combout\);

-- Location: LCCOMB_X34_Y30_N8
\Mux1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~88_combout\ = (!\Mux1~54_combout\ & ((\Add0~6_combout\) # (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \Mux1~54_combout\,
	combout => \Mux1~88_combout\);

-- Location: LCCOMB_X36_Y28_N12
\ShiftLeft1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~45_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~17_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datac => \ShiftLeft0~17_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftLeft1~45_combout\);

-- Location: LCCOMB_X34_Y30_N28
\Mux1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~92_combout\ = (\Mux1~91_combout\ & ((\Mux1~90_combout\) # ((\Mux1~88_combout\)))) # (!\Mux1~91_combout\ & (((!\Mux1~88_combout\ & \ShiftLeft1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~91_combout\,
	datab => \Mux1~90_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~45_combout\,
	combout => \Mux1~92_combout\);

-- Location: LCCOMB_X34_Y30_N14
\Mux1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~93_combout\ = (\Mux1~92_combout\ & ((\ShiftLeft1~62_combout\) # ((!\Mux1~88_combout\)))) # (!\Mux1~92_combout\ & (((\Mux1~88_combout\ & \ShiftLeft1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~62_combout\,
	datab => \Mux1~92_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~47_combout\,
	combout => \Mux1~93_combout\);

-- Location: LCCOMB_X30_Y26_N24
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\opcode~combout\(3) & ((\Mux8~2_combout\) # ((\Mux1~50_combout\ & \Mux1~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux1~50_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux1~93_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X38_Y22_N0
\cout~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~27_combout\ = (\cout~26_combout\ & ((\B~combout\(22)) # (!\A~combout\(22)))) # (!\cout~26_combout\ & (\B~combout\(22) & !\A~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~26_combout\,
	datac => \B~combout\(22),
	datad => \A~combout\(22),
	combout => \cout~27_combout\);

-- Location: LCCOMB_X38_Y23_N26
\soma~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~9_combout\ = \cout~82_combout\ $ (((\cout~27_combout\ & ((\B~combout\(23)) # (!\A~combout\(23)))) # (!\cout~27_combout\ & (!\A~combout\(23) & \B~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~82_combout\,
	datab => \cout~27_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \soma~9_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(24),
	combout => \A~combout\(24));

-- Location: LCCOMB_X38_Y23_N16
\Mux8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~13_combout\ = (\opcode~combout\(0) & ((\opcode~combout\(1)) # ((\A~combout\(24)) # (\B~combout\(24))))) # (!\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(24) & \B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \Mux8~13_combout\);

-- Location: LCCOMB_X38_Y23_N30
\soma~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~8_combout\ = \cout~58_combout\ $ (\A~combout\(24) $ (\B~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~58_combout\,
	datac => \A~combout\(24),
	datad => \B~combout\(24),
	combout => \soma~8_combout\);

-- Location: LCCOMB_X38_Y23_N28
\Mux8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~14_combout\ = (\opcode~combout\(1) & ((\Mux8~13_combout\ & (\soma~9_combout\)) # (!\Mux8~13_combout\ & ((\soma~8_combout\))))) # (!\opcode~combout\(1) & (((\Mux8~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \soma~9_combout\,
	datac => \Mux8~13_combout\,
	datad => \soma~8_combout\,
	combout => \Mux8~14_combout\);

-- Location: LCCOMB_X38_Y23_N6
\Mux8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~15_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & (\Mux8~12_combout\)) # (!\opcode~combout\(2) & ((\Mux8~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~12_combout\,
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(3),
	datad => \Mux8~14_combout\,
	combout => \Mux8~15_combout\);

-- Location: LCCOMB_X30_Y26_N10
\Mux8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~16_combout\ = (\Mux8~3_combout\) # (\Mux8~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~3_combout\,
	datad => \Mux8~15_combout\,
	combout => \Mux8~16_combout\);

-- Location: LCCOMB_X31_Y30_N2
\Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\Mux8~17_combout\ & ((\A~combout\(31) & (\ShiftLeft1~65_combout\)) # (!\A~combout\(31) & ((\ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~65_combout\,
	datab => \ShiftRight1~50_combout\,
	datac => \A~combout\(31),
	datad => \Mux8~17_combout\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X36_Y29_N26
\ShiftLeft1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~56_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~48_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \ShiftLeft0~38_combout\,
	datac => \Add0~2_combout\,
	combout => \ShiftLeft1~56_combout\);

-- Location: LCCOMB_X33_Y30_N24
\ShiftLeft1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~67_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~50_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~56_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~50_combout\,
	combout => \ShiftLeft1~67_combout\);

-- Location: LCCOMB_X32_Y30_N20
\Mux1~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~116_combout\ = (\Mux1~115_combout\ & ((\B~combout\(0)) # ((!\Mux1~47_combout\)))) # (!\Mux1~115_combout\ & (((\B~combout\(31) & \Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~115_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(31),
	datad => \Mux1~47_combout\,
	combout => \Mux1~116_combout\);

-- Location: LCCOMB_X34_Y30_N10
\Mux1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~91_combout\ = (\Add0~8_combout\) # (((\Add0~6_combout\) # (!\A~combout\(31))) # (!\ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight0~15_combout\,
	datac => \Add0~6_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~91_combout\);

-- Location: LCCOMB_X34_Y30_N18
\Mux1~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~118_combout\ = (\Mux1~117_combout\ & ((\ShiftLeft1~67_combout\) # ((!\Mux1~91_combout\)))) # (!\Mux1~117_combout\ & (((\Mux1~116_combout\ & \Mux1~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~117_combout\,
	datab => \ShiftLeft1~67_combout\,
	datac => \Mux1~116_combout\,
	datad => \Mux1~91_combout\,
	combout => \Mux1~118_combout\);

-- Location: LCCOMB_X31_Y30_N16
\Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\Mux1~118_combout\ & ((\opcode~combout\(0)) # ((\A~combout\(31) & \ShiftLeft1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \opcode~combout\(0),
	datac => \ShiftLeft1~59_combout\,
	datad => \Mux1~118_combout\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X38_Y23_N18
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = \opcode~combout\(0) $ (((\opcode~combout\(1) & \A~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \A~combout\(24),
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X38_Y23_N0
\cout~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~28_combout\ = (\cout~27_combout\ & ((\B~combout\(23)) # (!\A~combout\(23)))) # (!\cout~27_combout\ & (!\A~combout\(23) & \B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~27_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \cout~28_combout\);

-- Location: LCCOMB_X38_Y23_N24
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\opcode~combout\(0) & ((\cout~28_combout\))) # (!\opcode~combout\(0) & (\cout~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~58_combout\,
	datab => \cout~28_combout\,
	datac => \opcode~combout\(0),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X38_Y23_N4
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\B~combout\(24) & ((\Mux7~7_combout\) # ((\Mux7~6_combout\ & \opcode~combout\(1))))) # (!\B~combout\(24) & (\Mux7~7_combout\ & ((\Mux7~6_combout\) # (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(24),
	datab => \Mux7~7_combout\,
	datac => \Mux7~6_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X38_Y24_N22
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\opcode~combout\(1) & (\B~combout\(25) $ (\A~combout\(25) $ (\Mux7~8_combout\)))) # (!\opcode~combout\(1) & ((\B~combout\(25) & ((\A~combout\(25)) # (\Mux7~8_combout\))) # (!\B~combout\(25) & (\A~combout\(25) & \Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \opcode~combout\(1),
	datac => \A~combout\(25),
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X38_Y24_N0
\Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & (\Mux7~5_combout\)) # (!\opcode~combout\(2) & ((\Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(3),
	datad => \Mux7~9_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X31_Y30_N20
\Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\Mux7~10_combout\) # ((\opcode~combout\(3) & ((\Mux7~12_combout\) # (\Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux7~12_combout\,
	datac => \Mux7~11_combout\,
	datad => \Mux7~10_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X31_Y29_N26
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\A~combout\(31) & (\ShiftLeft1~85_combout\)) # (!\A~combout\(31) & ((\ShiftRight1~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~85_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~67_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X34_Y30_N30
\ShiftLeft1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~68_combout\ = (\Add0~4_combout\ & ((\ShiftLeft1~15_combout\))) # (!\Add0~4_combout\ & (\ShiftLeft1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft1~10_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftLeft1~15_combout\,
	combout => \ShiftLeft1~68_combout\);

-- Location: LCCOMB_X34_Y30_N16
\Mux1~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~130_combout\ = (\Mux1~129_combout\ & (((\ShiftLeft1~68_combout\) # (!\Mux1~88_combout\)))) # (!\Mux1~129_combout\ & (\ShiftLeft1~11_combout\ & (\Mux1~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~129_combout\,
	datab => \ShiftLeft1~11_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~68_combout\,
	combout => \Mux1~130_combout\);

-- Location: LCCOMB_X31_Y29_N14
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux1~50_combout\ & ((\Mux1~130_combout\) # ((\Mux6~0_combout\ & \Mux8~17_combout\)))) # (!\Mux1~50_combout\ & (\Mux6~0_combout\ & (\Mux8~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~50_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux8~17_combout\,
	datad => \Mux1~130_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X38_Y24_N26
\cout~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~91_combout\ = \B~combout\(26) $ (\A~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(26),
	combout => \cout~91_combout\);

-- Location: LCCOMB_X36_Y23_N2
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux25~7_combout\ & (((!\Mux25~8_combout\)))) # (!\Mux25~7_combout\ & ((\Mux25~8_combout\ & ((\cout~91_combout\))) # (!\Mux25~8_combout\ & (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \cout~91_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X32_Y24_N12
\ShiftRight0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~101_combout\ = (!\Add0~6_combout\ & \ShiftRight0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \ShiftRight0~58_combout\,
	combout => \ShiftRight0~101_combout\);

-- Location: LCCOMB_X36_Y23_N26
\Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux25~7_combout\ & (((\ShiftRight0~15_combout\ & !\Add0~8_combout\)) # (!\Mux25~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~8_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X36_Y23_N12
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~5_combout\ & ((\Mux6~4_combout\) # ((!\Mux8~9_combout\)))) # (!\Mux6~5_combout\ & (((\ShiftRight0~101_combout\ & \Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux6~5_combout\,
	datac => \ShiftRight0~101_combout\,
	datad => \Mux8~9_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X38_Y24_N28
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux25~9_combout\ & (!\A~combout\(26) & ((!\B~combout\(26))))) # (!\Mux25~9_combout\ & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \A~combout\(26),
	datac => \Mux6~6_combout\,
	datad => \B~combout\(26),
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X38_Y24_N8
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\B~combout\(26) & ((\opcode~combout\(0)) # ((!\opcode~combout\(1) & \A~combout\(26))))) # (!\B~combout\(26) & (\opcode~combout\(0) & ((\opcode~combout\(1)) # (\A~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \opcode~combout\(1),
	datac => \A~combout\(26),
	datad => \opcode~combout\(0),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X38_Y24_N14
\cout~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~60_combout\ = (\cout~59_combout\ & ((\A~combout\(25)) # (\B~combout\(25)))) # (!\cout~59_combout\ & (\A~combout\(25) & \B~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~59_combout\,
	datac => \A~combout\(25),
	datad => \B~combout\(25),
	combout => \cout~60_combout\);

-- Location: LCCOMB_X38_Y24_N30
\soma~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~20_combout\ = \B~combout\(26) $ (\A~combout\(26) $ (\cout~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \A~combout\(26),
	datac => \cout~60_combout\,
	combout => \soma~20_combout\);

-- Location: LCCOMB_X38_Y24_N4
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\opcode~combout\(1) & ((\Mux6~8_combout\ & (\soma~21_combout\)) # (!\Mux6~8_combout\ & ((\soma~20_combout\))))) # (!\opcode~combout\(1) & (((\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~21_combout\,
	datab => \opcode~combout\(1),
	datac => \Mux6~8_combout\,
	datad => \soma~20_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X30_Y26_N16
\Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & (\Mux6~7_combout\)) # (!\opcode~combout\(2) & ((\Mux6~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(2),
	datac => \Mux6~7_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\Mux6~10_combout\) # ((\opcode~combout\(3) & \Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux6~1_combout\,
	datac => \Mux6~10_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X31_Y26_N24
\Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\Mux8~17_combout\ & ((\A~combout\(31) & (\ShiftLeft1~84_combout\)) # (!\A~combout\(31) & ((\ShiftRight1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~84_combout\,
	datab => \ShiftRight1~8_combout\,
	datac => \A~combout\(31),
	datad => \Mux8~17_combout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X35_Y28_N28
\ShiftLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\A~combout\(0) & ((\B~combout\(24)))) # (!\A~combout\(0) & (\B~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(25),
	datac => \A~combout\(0),
	datad => \B~combout\(24),
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X35_Y25_N8
\ShiftLeft1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~29_combout\ = (\Add0~2_combout\ & ((\ShiftLeft0~43_combout\))) # (!\Add0~2_combout\ & (\ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~44_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft1~29_combout\);

-- Location: LCCOMB_X36_Y28_N0
\ShiftLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\A~combout\(0) & ((\B~combout\(22)))) # (!\A~combout\(0) & (\B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(0),
	datac => \B~combout\(22),
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X36_Y29_N18
\ShiftLeft1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~24_combout\ = (\Add0~2_combout\ & (\ShiftLeft0~40_combout\)) # (!\Add0~2_combout\ & ((\ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~40_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftLeft0~41_combout\,
	combout => \ShiftLeft1~24_combout\);

-- Location: LCCOMB_X34_Y30_N2
\Mux1~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~133_combout\ = (\Mux1~91_combout\ & (((\Mux1~88_combout\)))) # (!\Mux1~91_combout\ & ((\Mux1~88_combout\ & ((\ShiftLeft1~24_combout\))) # (!\Mux1~88_combout\ & (\ShiftLeft1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~91_combout\,
	datab => \ShiftLeft1~29_combout\,
	datac => \Mux1~88_combout\,
	datad => \ShiftLeft1~24_combout\,
	combout => \Mux1~133_combout\);

-- Location: LCCOMB_X29_Y29_N10
\ShiftRight2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~27_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\ShiftRight2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	datad => \ShiftRight2~7_combout\,
	combout => \ShiftRight2~27_combout\);

-- Location: LCCOMB_X29_Y29_N4
\Mux1~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~131_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & (\ShiftLeft2~19_combout\)) # (!\A~combout\(31) & ((\ShiftRight2~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft2~19_combout\,
	datab => \Mux1~47_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight2~27_combout\,
	combout => \Mux1~131_combout\);

-- Location: LCCOMB_X29_Y29_N6
\Mux1~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~132_combout\ = (\Mux1~131_combout\ & (((\B~combout\(0)) # (!\Mux1~47_combout\)))) # (!\Mux1~131_combout\ & (\B~combout\(31) & ((\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \B~combout\(0),
	datac => \Mux1~131_combout\,
	datad => \Mux1~47_combout\,
	combout => \Mux1~132_combout\);

-- Location: LCCOMB_X34_Y30_N4
\Mux1~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~134_combout\ = (\Mux1~133_combout\ & ((\ShiftLeft1~69_combout\) # ((!\Mux1~91_combout\)))) # (!\Mux1~133_combout\ & (((\Mux1~132_combout\ & \Mux1~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~69_combout\,
	datab => \Mux1~133_combout\,
	datac => \Mux1~132_combout\,
	datad => \Mux1~91_combout\,
	combout => \Mux1~134_combout\);

-- Location: LCCOMB_X31_Y30_N6
\Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux1~134_combout\ & ((\opcode~combout\(0)) # ((\A~combout\(31) & \ShiftLeft1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \ShiftLeft1~59_combout\,
	datac => \opcode~combout\(0),
	datad => \Mux1~134_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X38_Y24_N16
\cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\B~combout\(26) & !\A~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(26),
	combout => \cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N22
\soma~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~23_combout\ = \B~combout\(27) $ (\A~combout\(27) $ (((\cout~30_combout\) # (\cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~30_combout\,
	datab => \cout~0_combout\,
	datac => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \soma~23_combout\);

-- Location: LCCOMB_X36_Y24_N28
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\opcode~combout\(1) & (\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & ((\B~combout\(27)) # (\A~combout\(27)))) # (!\opcode~combout\(0) & (\B~combout\(27) & \A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X36_Y24_N16
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\opcode~combout\(1) & ((\Mux5~6_combout\ & ((\soma~23_combout\))) # (!\Mux5~6_combout\ & (\soma~22_combout\)))) # (!\opcode~combout\(1) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma~22_combout\,
	datab => \soma~23_combout\,
	datac => \opcode~combout\(1),
	datad => \Mux5~6_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X36_Y24_N24
\cout~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~92_combout\ = \B~combout\(27) $ (\A~combout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \cout~92_combout\);

-- Location: LCCOMB_X36_Y23_N30
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux25~8_combout\ & (((!\Mux25~7_combout\ & \cout~92_combout\)))) # (!\Mux25~8_combout\ & ((\LessThan0~62_combout\) # ((\Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Mux25~8_combout\,
	datac => \Mux25~7_combout\,
	datad => \cout~92_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X36_Y25_N4
\ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\A~combout\(3) & (\ShiftLeft0~54_combout\ & (!\A~combout\(2)))) # (!\A~combout\(3) & (((\ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftLeft0~87_combout\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X36_Y29_N0
\ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\A~combout\(1) & (\ShiftLeft0~40_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~40_combout\,
	datad => \ShiftLeft0~41_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X36_Y25_N28
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\A~combout\(4)) # (\A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \A~combout\(3),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X36_Y25_N6
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\A~combout\(4)) # ((\A~combout\(2) & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X36_Y25_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux8~4_combout\ & (((\ShiftLeft0~99_combout\) # (\Mux8~5_combout\)))) # (!\Mux8~4_combout\ & (\ShiftLeft0~52_combout\ & ((!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~52_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftLeft0~99_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X36_Y25_N24
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux8~5_combout\ & ((\Mux5~0_combout\ & (\ShiftLeft0~88_combout\)) # (!\Mux5~0_combout\ & ((\ShiftLeft0~50_combout\))))) # (!\Mux8~5_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \ShiftLeft0~88_combout\,
	datac => \ShiftLeft0~50_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X32_Y24_N0
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & !\ShiftLeft0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~1_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X32_Y24_N2
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((\Mux5~2_combout\) # (!\Mux8~9_combout\)))) # (!\Mux5~3_combout\ & (\ShiftRight0~95_combout\ & (\Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~95_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux8~9_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X36_Y24_N26
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux25~9_combout\ & (((!\B~combout\(27) & !\A~combout\(27))))) # (!\Mux25~9_combout\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \Mux5~4_combout\,
	datac => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X36_Y24_N10
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(2) & ((\Mux5~5_combout\))) # (!\opcode~combout\(2) & (\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(2),
	datac => \Mux5~7_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X30_Y26_N28
\Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\Mux5~8_combout\) # ((\opcode~combout\(3) & ((\Mux5~10_combout\) # (\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux5~10_combout\,
	datac => \Mux5~9_combout\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X36_Y24_N8
\ShiftLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\A~combout\(0) & ((\B~combout\(27)))) # (!\A~combout\(0) & (\B~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(28),
	datac => \B~combout\(27),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X34_Y28_N30
\Mux1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~56_combout\ = (\Mux29~2_combout\ & ((\Mux29~1_combout\) # ((\ShiftLeft1~45_combout\)))) # (!\Mux29~2_combout\ & (!\Mux29~1_combout\ & (\ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux29~1_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \ShiftLeft1~45_combout\,
	combout => \Mux1~56_combout\);

-- Location: LCCOMB_X34_Y28_N16
\Mux1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~57_combout\ = (\Mux29~1_combout\ & ((\Mux1~56_combout\ & ((\ShiftLeft1~48_combout\))) # (!\Mux1~56_combout\ & (\ShiftLeft0~13_combout\)))) # (!\Mux29~1_combout\ & (((\Mux1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \Mux29~1_combout\,
	datac => \ShiftLeft1~48_combout\,
	datad => \Mux1~56_combout\,
	combout => \Mux1~57_combout\);

-- Location: LCCOMB_X34_Y28_N18
\Mux1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~60_combout\ = (\Mux1~51_combout\ & (((\Mux1~57_combout\ & \Mux1~50_combout\)))) # (!\Mux1~51_combout\ & ((\Mux1~59_combout\) # ((!\Mux1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~59_combout\,
	datab => \Mux1~51_combout\,
	datac => \Mux1~57_combout\,
	datad => \Mux1~50_combout\,
	combout => \Mux1~60_combout\);

-- Location: LCCOMB_X34_Y27_N10
\ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\A~combout\(3)) # (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Mux1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~55_combout\ = (\ShiftRight1~22_combout\ & (!\ShiftLeft0~10_combout\ & (!\A~combout\(4) & !\ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~59_combout\,
	combout => \Mux1~55_combout\);

-- Location: LCCOMB_X32_Y25_N12
\Mux1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~61_combout\ = (\Mux1~46_combout\ & ((\Mux1~60_combout\ & ((\Mux1~55_combout\))) # (!\Mux1~60_combout\ & (\ShiftLeft1~44_combout\)))) # (!\Mux1~46_combout\ & (((\Mux1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~46_combout\,
	datab => \ShiftLeft1~44_combout\,
	datac => \Mux1~60_combout\,
	datad => \Mux1~55_combout\,
	combout => \Mux1~61_combout\);

-- Location: LCCOMB_X34_Y26_N26
\ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (!\A~combout\(1) & ((\A~combout\(2) & ((\cout~67_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \A~combout\(2),
	datac => \cout~67_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X34_Y26_N12
\ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\A~combout\(3) & ((\ShiftLeft0~62_combout\) # ((\Mux1~38_combout\ & \ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~38_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~62_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X34_Y24_N0
\ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\ShiftLeft0~63_combout\) # ((!\A~combout\(3) & \ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~63_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X34_Y24_N4
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A~combout\(31)) # (!\opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datac => \opcode~combout\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X34_Y27_N28
\Mux1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~30_combout\ = (\A~combout\(3)) # ((\A~combout\(1) & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	combout => \Mux1~30_combout\);

-- Location: LCCOMB_X36_Y28_N30
\ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\A~combout\(1) & ((\ShiftLeft0~17_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datac => \ShiftLeft0~17_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X34_Y27_N12
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ShiftLeft0~59_combout\ & ((\Mux1~30_combout\) # ((\ShiftLeft0~67_combout\)))) # (!\ShiftLeft0~59_combout\ & (!\Mux1~30_combout\ & (\ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \Mux1~30_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \ShiftLeft0~67_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X36_Y28_N10
\ShiftLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\A~combout\(0) & (\B~combout\(25))) # (!\A~combout\(0) & ((\B~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(0),
	datac => \B~combout\(26),
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X34_Y24_N10
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux1~30_combout\ & ((\Mux4~0_combout\ & (\ShiftLeft0~70_combout\)) # (!\Mux4~0_combout\ & ((\ShiftLeft0~13_combout\))))) # (!\Mux1~30_combout\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~30_combout\,
	datab => \Mux4~0_combout\,
	datac => \ShiftLeft0~70_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X34_Y24_N18
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\Mux3~0_combout\) # (\Mux4~1_combout\)))) # (!\Mux4~2_combout\ & (\ShiftLeft0~66_combout\ & (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \ShiftLeft0~66_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X34_Y24_N20
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux29~0_combout\ & (((\Mux3~0_combout\) # (!\ShiftLeft0~10_combout\)) # (!\Mux29~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux29~14_combout\,
	datac => \Mux3~0_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X36_Y24_N0
\cout~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~31_combout\ = (\B~combout\(27) & ((\cout~30_combout\) # ((\cout~0_combout\) # (!\A~combout\(27))))) # (!\B~combout\(27) & (!\A~combout\(27) & ((\cout~30_combout\) # (\cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~30_combout\,
	datab => \cout~0_combout\,
	datac => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \cout~31_combout\);

-- Location: LCCOMB_X36_Y24_N12
\cout~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~62_combout\ = (\cout~61_combout\ & ((\B~combout\(27)) # (\A~combout\(27)))) # (!\cout~61_combout\ & (\B~combout\(27) & \A~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~61_combout\,
	datab => \B~combout\(27),
	datad => \A~combout\(27),
	combout => \cout~62_combout\);

-- Location: LCCOMB_X36_Y24_N4
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\opcode~combout\(1) & ((\opcode~combout\(0) & (\cout~31_combout\)) # (!\opcode~combout\(0) & ((\cout~62_combout\))))) # (!\opcode~combout\(1) & (((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \cout~31_combout\,
	datac => \opcode~combout\(0),
	datad => \cout~62_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X36_Y24_N6
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\opcode~combout\(1) & (\A~combout\(28) $ (\Mux4~7_combout\ $ (\B~combout\(28))))) # (!\opcode~combout\(1) & ((\A~combout\(28) & ((\Mux4~7_combout\) # (\B~combout\(28)))) # (!\A~combout\(28) & (\Mux4~7_combout\ & \B~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \Mux4~7_combout\,
	datac => \B~combout\(28),
	datad => \opcode~combout\(1),
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X35_Y24_N2
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux29~14_combout\ & (\Mux4~3_combout\ & (\Mux3~3_combout\))) # (!\Mux29~14_combout\ & (((\Mux4~8_combout\) # (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X35_Y24_N8
\cout~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~73_combout\ = (\A~combout\(28)) # (\B~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(28),
	datad => \B~combout\(28),
	combout => \cout~73_combout\);

-- Location: LCCOMB_X35_Y24_N20
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & ((\LessThan0~62_combout\) # ((\Mux29~0_combout\)))) # (!\Mux4~4_combout\ & (((!\cout~73_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Mux4~4_combout\,
	datac => \cout~73_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X31_Y28_N0
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\opcode~combout\(3) & (\Mux1~61_combout\)) # (!\opcode~combout\(3) & ((\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~61_combout\,
	datac => \Mux4~5_combout\,
	datad => \opcode~combout\(3),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X33_Y30_N14
\ShiftLeft2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~12_combout\ = (\Add0~4_combout\ & (\ShiftLeft2~11_combout\)) # (!\Add0~4_combout\ & ((\ShiftLeft1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft2~11_combout\,
	datab => \ShiftLeft1~52_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftLeft2~12_combout\);

-- Location: LCCOMB_X33_Y30_N16
\ShiftLeft2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft2~13_combout\ = (\ShiftLeft1~51_combout\) # ((\ShiftLeft2~12_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft2~12_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftLeft1~51_combout\,
	combout => \ShiftLeft2~13_combout\);

-- Location: LCCOMB_X30_Y30_N26
\Mux1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~65_combout\ = (\Mux1~47_combout\ & (((\A~combout\(31))))) # (!\Mux1~47_combout\ & ((\A~combout\(31) & ((\ShiftLeft2~13_combout\))) # (!\A~combout\(31) & (\ShiftRight2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~19_combout\,
	datab => \ShiftLeft2~13_combout\,
	datac => \Mux1~47_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~65_combout\);

-- Location: LCCOMB_X31_Y30_N14
\Mux1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~66_combout\ = (\Mux1~65_combout\ & (((\B~combout\(0)) # (!\Mux1~47_combout\)))) # (!\Mux1~65_combout\ & (\B~combout\(31) & ((\Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux1~65_combout\,
	datac => \B~combout\(0),
	datad => \Mux1~47_combout\,
	combout => \Mux1~66_combout\);

-- Location: LCCOMB_X34_Y28_N26
\Mux1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~67_combout\ = (\Mux1~51_combout\ & (\Mux1~64_combout\ & ((\Mux1~50_combout\)))) # (!\Mux1~51_combout\ & (((\Mux1~66_combout\) # (!\Mux1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~64_combout\,
	datab => \Mux1~66_combout\,
	datac => \Mux1~51_combout\,
	datad => \Mux1~50_combout\,
	combout => \Mux1~67_combout\);

-- Location: LCCOMB_X31_Y28_N12
\Mux1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~68_combout\ = (\Mux1~46_combout\ & ((\Mux1~67_combout\ & (\Mux1~62_combout\)) # (!\Mux1~67_combout\ & ((\ShiftLeft1~54_combout\))))) # (!\Mux1~46_combout\ & (((\Mux1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~62_combout\,
	datab => \ShiftLeft1~54_combout\,
	datac => \Mux1~46_combout\,
	datad => \Mux1~67_combout\,
	combout => \Mux1~68_combout\);

-- Location: LCCOMB_X36_Y24_N2
\Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\opcode~combout\(0) & ((\cout~31_combout\))) # (!\opcode~combout\(0) & (\cout~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~62_combout\,
	datab => \cout~31_combout\,
	datac => \opcode~combout\(0),
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X36_Y24_N14
\Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~9_combout\ & ((\Mux3~8_combout\) # ((\B~combout\(28)) # (!\opcode~combout\(1))))) # (!\Mux3~9_combout\ & (\Mux3~8_combout\ & (\B~combout\(28) & \opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \Mux3~8_combout\,
	datac => \B~combout\(28),
	datad => \opcode~combout\(1),
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X35_Y24_N10
\Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\opcode~combout\(1) & (\A~combout\(29) $ (\B~combout\(29) $ (\Mux3~10_combout\)))) # (!\opcode~combout\(1) & ((\A~combout\(29) & ((\B~combout\(29)) # (\Mux3~10_combout\))) # (!\A~combout\(29) & (\B~combout\(29) & \Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datac => \Mux3~10_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X35_Y24_N4
\Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Mux29~14_combout\ & (\Mux3~7_combout\ & (\Mux3~3_combout\))) # (!\Mux29~14_combout\ & (((\Mux3~11_combout\) # (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux29~14_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X35_Y24_N30
\tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~2_combout\ = (\A~combout\(29)) # (\B~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	combout => \tmp~2_combout\);

-- Location: LCCOMB_X35_Y24_N22
\Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux29~0_combout\ & (\Mux3~12_combout\)) # (!\Mux29~0_combout\ & ((\Mux3~12_combout\ & (\LessThan0~62_combout\)) # (!\Mux3~12_combout\ & ((!\tmp~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux3~12_combout\,
	datac => \LessThan0~62_combout\,
	datad => \tmp~2_combout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\opcode~combout\(3) & (\Mux1~68_combout\)) # (!\opcode~combout\(3) & ((\Mux3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~68_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux3~13_combout\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X30_Y22_N12
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\opcode~combout\(3) & \opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datad => \opcode~combout\(1),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\opcode~combout\(0) & (\opcode~combout\(2) $ (((\B~combout\(30)) # (\A~combout\(30)))))) # (!\opcode~combout\(0) & (\B~combout\(30) & (!\opcode~combout\(2) & \A~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \B~combout\(30),
	datac => \opcode~combout\(2),
	datad => \A~combout\(30),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y22_N2
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\opcode~combout\(3) & (!\opcode~combout\(1) & ((\Mux2~0_combout\) # (\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux2~0_combout\,
	datac => \Mux10~0_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X30_Y22_N22
\cout~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~68_combout\ = \B~combout\(30) $ (\A~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \cout~68_combout\);

-- Location: LCCOMB_X36_Y24_N30
\cout~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~63_combout\ = (\cout~62_combout\ & ((\B~combout\(28)) # (\A~combout\(28)))) # (!\cout~62_combout\ & (\B~combout\(28) & \A~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~62_combout\,
	datab => \B~combout\(28),
	datac => \A~combout\(28),
	combout => \cout~63_combout\);

-- Location: LCCOMB_X35_Y24_N26
\cout~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~64_combout\ = (\A~combout\(29) & ((\B~combout\(29)) # (\cout~63_combout\))) # (!\A~combout\(29) & (\B~combout\(29) & \cout~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	datad => \cout~63_combout\,
	combout => \cout~64_combout\);

-- Location: LCCOMB_X35_Y24_N6
\Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & (!\Mux2~12_combout\)) # (!\opcode~combout\(0) & ((\cout~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~12_combout\,
	datab => \cout~64_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X30_Y22_N24
\Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Mux2~13_combout\ & ((\opcode~combout\(2) & (\Mux2~11_combout\)) # (!\opcode~combout\(2) & ((!\cout~68_combout\))))) # (!\Mux2~13_combout\ & (((\cout~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~11_combout\,
	datab => \cout~68_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux2~13_combout\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X30_Y29_N26
\ShiftRight2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~6_combout\ = (\ShiftRight2~5_combout\ & ((\B~combout\(31)))) # (!\ShiftRight2~5_combout\ & (\B~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~5_combout\,
	datab => \B~combout\(30),
	datac => \B~combout\(31),
	combout => \ShiftRight2~6_combout\);

-- Location: LCCOMB_X30_Y29_N30
\ShiftRight1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\ShiftRight1~5_combout\ & !\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~5_combout\,
	datad => \A~combout\(4),
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X30_Y29_N8
\Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\opcode~combout\(0) & ((\ShiftRight2~6_combout\) # ((\A~combout\(31))))) # (!\opcode~combout\(0) & (((!\A~combout\(31) & \ShiftRight1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight2~6_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~6_combout\,
	combout => \Mux1~12_combout\);

-- Location: LCCOMB_X31_Y25_N0
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\A~combout\(31) & ((\ShiftRight0~15_combout\) # (!\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~15_combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X30_Y29_N6
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\opcode~combout\(3) & ((\Mux2~2_combout\ & (\Mux2~4_combout\)) # (!\Mux2~2_combout\ & ((\Mux1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux1~12_combout\,
	datac => \Mux2~2_combout\,
	datad => \opcode~combout\(3),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X30_Y22_N10
\Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\Mux2~1_combout\) # ((\Mux2~5_combout\) # ((\Mux2~6_combout\ & \Mux2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~14_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X29_Y22_N26
\soma~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~1_combout\ = \tmp~0_combout\ $ (((\cout~64_combout\ & ((\B~combout\(30)) # (\A~combout\(30)))) # (!\cout~64_combout\ & (\B~combout\(30) & \A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~0_combout\,
	datab => \cout~64_combout\,
	datac => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \soma~1_combout\);

-- Location: LCCOMB_X36_Y24_N18
\cout~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~32_combout\ = (\A~combout\(28) & (\cout~31_combout\ & \B~combout\(28))) # (!\A~combout\(28) & ((\cout~31_combout\) # (\B~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \cout~31_combout\,
	datac => \B~combout\(28),
	combout => \cout~32_combout\);

-- Location: LCCOMB_X35_Y24_N24
\cout~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~33_combout\ = (\A~combout\(29) & (\B~combout\(29) & \cout~32_combout\)) # (!\A~combout\(29) & ((\B~combout\(29)) # (\cout~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	datad => \cout~32_combout\,
	combout => \cout~33_combout\);

-- Location: LCCOMB_X29_Y22_N8
\soma~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = \tmp~0_combout\ $ (((\cout~33_combout\ & ((\B~combout\(30)) # (!\A~combout\(30)))) # (!\cout~33_combout\ & (\B~combout\(30) & !\A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~0_combout\,
	datab => \cout~33_combout\,
	datac => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \soma~0_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Mux1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(0))))) # (!\opcode~combout\(2) & ((\opcode~combout\(0) & ((\soma~0_combout\))) # (!\opcode~combout\(0) & (\soma~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \soma~1_combout\,
	datac => \soma~0_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux1~18_combout\);

-- Location: LCCOMB_X33_Y26_N26
\Mux1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~21_combout\ = (!\ShiftLeft0~10_combout\ & ((\A~combout\(3) & ((\ShiftLeft0~55_combout\))) # (!\A~combout\(3) & (\ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \ShiftLeft0~55_combout\,
	datad => \A~combout\(3),
	combout => \Mux1~21_combout\);

-- Location: LCCOMB_X33_Y26_N28
\Mux1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~22_combout\ = (\Mux10~2_combout\ & (((\ShiftRight0~18_combout\ & \Mux10~3_combout\)))) # (!\Mux10~2_combout\ & ((\Mux1~21_combout\) # ((!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux1~21_combout\,
	datac => \ShiftRight0~18_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux1~22_combout\);

-- Location: LCCOMB_X35_Y25_N30
\Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\A~combout\(2)) # ((\A~combout\(0) & !\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X35_Y25_N14
\ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\A~combout\(1) & ((\ShiftLeft0~43_combout\))) # (!\A~combout\(1) & (\ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~44_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X35_Y25_N24
\Mux1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~20_combout\ = (\Mux1~19_combout\ & (((\ShiftLeft0~52_combout\)) # (!\Mux1~13_combout\))) # (!\Mux1~19_combout\ & (\Mux1~13_combout\ & ((\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~19_combout\,
	datab => \Mux1~13_combout\,
	datac => \ShiftLeft0~52_combout\,
	datad => \B~combout\(30),
	combout => \Mux1~20_combout\);

-- Location: LCCOMB_X36_Y29_N30
\ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\ShiftLeft0~38_combout\)) # (!\A~combout\(1) & ((\ShiftLeft0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \ShiftLeft0~38_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X36_Y29_N2
\ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\ShiftLeft0~49_combout\) # ((!\A~combout\(2) & \ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~49_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X29_Y22_N22
\Mux1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~23_combout\ = (\Mux10~1_combout\ & (\Mux1~22_combout\)) # (!\Mux10~1_combout\ & ((\Mux1~22_combout\ & (\Mux1~20_combout\)) # (!\Mux1~22_combout\ & ((\ShiftLeft0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux1~22_combout\,
	datac => \Mux1~20_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \Mux1~23_combout\);

-- Location: LCCOMB_X29_Y22_N24
\Mux1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~24_combout\ = (\Mux1~18_combout\ & (((\Mux1~23_combout\) # (!\opcode~combout\(2))))) # (!\Mux1~18_combout\ & (\tmp~0_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~0_combout\,
	datab => \Mux1~18_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux1~23_combout\,
	combout => \Mux1~24_combout\);

-- Location: LCCOMB_X31_Y25_N4
\Mux1~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~182_combout\ = (\ShiftLeft1~35_combout\ & (((\A~combout\(31))))) # (!\ShiftLeft1~35_combout\ & (((!\ShiftRight0~15_combout\ & \B~combout\(0))) # (!\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~35_combout\,
	datab => \ShiftRight0~15_combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux1~182_combout\);

-- Location: LCCOMB_X30_Y29_N16
\ShiftRight2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight2~5_combout\ = (\ShiftRight2~4_combout\) # ((\A~combout\(4)) # ((\ShiftLeft0~10_combout\) # (\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~4_combout\,
	datab => \A~combout\(4),
	datac => \ShiftLeft0~10_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight2~5_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Mux1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\A~combout\(31) & (((\opcode~combout\(0))))) # (!\A~combout\(31) & (\B~combout\(31) & ((\opcode~combout\(0)) # (!\ShiftRight2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \opcode~combout\(0),
	datac => \ShiftRight2~5_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~17_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Mux1~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~183_combout\ = (\opcode~combout\(3) & ((\ShiftLeft1~35_combout\ & ((\Mux1~182_combout\) # (\Mux1~17_combout\))) # (!\ShiftLeft1~35_combout\ & (\Mux1~182_combout\ & \Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~35_combout\,
	datab => \Mux1~182_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux1~17_combout\,
	combout => \Mux1~183_combout\);

-- Location: LCCOMB_X36_Y22_N8
\Mux1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (!\opcode~combout\(2) & ((\B~combout\(31) & ((\opcode~combout\(0)) # (\A~combout\(31)))) # (!\B~combout\(31) & (\opcode~combout\(0) & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \A~combout\(31),
	combout => \Mux1~14_combout\);

-- Location: LCCOMB_X36_Y22_N10
\Mux1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\Mux10~0_combout\) # ((!\B~combout\(31) & (\Mux10~4_combout\ & !\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux10~0_combout\,
	datac => \Mux10~4_combout\,
	datad => \A~combout\(31),
	combout => \Mux1~15_combout\);

-- Location: LCCOMB_X30_Y22_N28
\Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (!\opcode~combout\(3) & (!\opcode~combout\(1) & ((\Mux1~14_combout\) # (\Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux1~14_combout\,
	datac => \Mux1~15_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux1~16_combout\);

-- Location: LCCOMB_X30_Y22_N6
\Mux1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~25_combout\ = (\Mux1~183_combout\) # ((\Mux1~16_combout\) # ((\Mux2~6_combout\ & \Mux1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux1~24_combout\,
	datac => \Mux1~183_combout\,
	datad => \Mux1~16_combout\,
	combout => \Mux1~25_combout\);

-- Location: LCCOMB_X29_Y22_N2
\cout~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~34_combout\ = (\cout~33_combout\ & ((\B~combout\(30)) # (!\A~combout\(30)))) # (!\cout~33_combout\ & (\B~combout\(30) & !\A~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cout~33_combout\,
	datac => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \cout~34_combout\);

-- Location: LCCOMB_X29_Y22_N12
\Mux40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\opcode~combout\(0) & ((\B~combout\(31) & ((\cout~34_combout\) # (!\A~combout\(31)))) # (!\B~combout\(31) & (\cout~34_combout\ & !\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \cout~34_combout\,
	datac => \A~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X29_Y22_N14
\cout~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~35_combout\ = (\B~combout\(30) & \A~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(30),
	datad => \A~combout\(30),
	combout => \cout~35_combout\);

-- Location: LCCOMB_X29_Y22_N18
\cout~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~66_combout\ = (\A~combout\(31) & ((\cout~65_combout\) # ((\cout~35_combout\) # (\B~combout\(31))))) # (!\A~combout\(31) & (\B~combout\(31) & ((\cout~65_combout\) # (\cout~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~65_combout\,
	datab => \cout~35_combout\,
	datac => \A~combout\(31),
	datad => \B~combout\(31),
	combout => \cout~66_combout\);

-- Location: LCCOMB_X29_Y22_N0
\Mux40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (!\opcode~combout\(3) & (\opcode~combout\(1) & !\opcode~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Mux40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux40~0_combout\ & ((\Mux40~1_combout\) # ((\cout~66_combout\ & !\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \cout~66_combout\,
	datac => \opcode~combout\(0),
	datad => \Mux40~0_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X29_Y24_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux30~6_combout\ & ((\opcode~combout\(3) & ((!\Mux1~37_combout\))) # (!\opcode~combout\(3) & (!\Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux29~17_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux1~37_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux4~6_combout\ & (!\Mux3~14_combout\ & (\Equal0~0_combout\ & !\Mux9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux3~14_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux9~9_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y26_N26
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!\Mux6~10_combout\ & ((!\opcode~combout\(3)) # (!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~10_combout\,
	datad => \opcode~combout\(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X30_Y26_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux24~9_combout\ & (!\Mux21~10_combout\ & (!\Mux8~3_combout\ & !\Mux8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~9_combout\,
	datab => \Mux21~10_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~15_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y26_N20
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux22~10_combout\ & (!\Mux23~9_combout\ & ((\opcode~combout\(3)) # (!\Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux22~10_combout\,
	datac => \Mux23~8_combout\,
	datad => \Mux23~9_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y26_N14
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & !\Mux7~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Mux7~13_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y26_N26
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux17~8_combout\ & ((\opcode~combout\(3) & ((!\Mux1~138_combout\))) # (!\opcode~combout\(3) & (!\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux17~8_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux1~138_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux14~9_combout\ & ((\opcode~combout\(3) & (!\Mux13~9_combout\)) # (!\opcode~combout\(3) & ((!\Mux13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux14~9_combout\,
	datac => \Mux13~9_combout\,
	datad => \Mux13~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X29_Y26_N2
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Mux18~7_combout\ & (!\Mux12~8_combout\ & !\Mux11~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~7_combout\,
	datac => \Mux12~8_combout\,
	datad => \Mux11~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\Mux32~4_combout\ & (\Equal0~9_combout\ & (!\Mux15~9_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \Mux15~9_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Mux10~12_combout\ & (\Equal0~8_combout\ & (\Equal0~11_combout\ & !\Mux16~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~12_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~11_combout\,
	datad => \Mux16~7_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X30_Y26_N6
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\Mux5~11_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~11_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~12_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X30_Y22_N16
\Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\Mux2~15_combout\ & (\Equal0~1_combout\ & (\Equal0~13_combout\ & !\Mux1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~15_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~13_combout\,
	datad => \Mux1~25_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X29_Y22_N20
\Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (!\opcode~combout\(0) & (\cout~66_combout\ $ (((\cout~65_combout\) # (\cout~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout~65_combout\,
	datab => \cout~66_combout\,
	datac => \cout~35_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X29_Y22_N10
\Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\opcode~combout\(0) & ((\B~combout\(31) & (!\cout~34_combout\ & !\A~combout\(31))) # (!\B~combout\(31) & (\cout~34_combout\ & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \cout~34_combout\,
	datac => \A~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X29_Y22_N30
\Mux41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux40~0_combout\ & ((\Mux41~1_combout\) # (\Mux41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux40~0_combout\,
	datac => \Mux41~1_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~2_combout\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux32~4_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(0));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux31~4_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(1));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux30~6_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(2));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux29~18_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(3));

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux28~16_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(4));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~14_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(5));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~12_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(6));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~23_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(8));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~10_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(9));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~10_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~10_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(11));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~8_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(12));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(13));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~7_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(14));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~8_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(15));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~7_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(16));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(17));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(18));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~10_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(19));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~8_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(20));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(21));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~12_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(22));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~9_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(23));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~16_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(24));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~13_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(25));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~11_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(26));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~11_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(27));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~6_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(28));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~14_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(29));

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~15_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(30));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~25_combout\,
	oe => \Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Z(31));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vai~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vai);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovfl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux41~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovfl);
END structure;


