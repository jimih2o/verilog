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

-- DATE "02/16/2015 14:42:14"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hwexpo IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END hwexpo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hwexpo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXP|Add0~10_combout\ : std_logic;
SIGNAL \EXP|Add0~12_combout\ : std_logic;
SIGNAL \EXP|Add0~16_combout\ : std_logic;
SIGNAL \EXP|Add2~8_combout\ : std_logic;
SIGNAL \EXP|Add2~12_combout\ : std_logic;
SIGNAL \EXP|Add2~20_combout\ : std_logic;
SIGNAL \EXP|Add2~22_combout\ : std_logic;
SIGNAL \EXP|Add3~2_combout\ : std_logic;
SIGNAL \EXP|Add3~4_combout\ : std_logic;
SIGNAL \EXP|Add3~24_combout\ : std_logic;
SIGNAL \EXP|Add3~26_combout\ : std_logic;
SIGNAL \EXP|Add3~28_combout\ : std_logic;
SIGNAL \EXP|Add8~2_combout\ : std_logic;
SIGNAL \EXP|Add8~4_combout\ : std_logic;
SIGNAL \EXP|Add4~0_combout\ : std_logic;
SIGNAL \EXP|Add4~2_combout\ : std_logic;
SIGNAL \EXP|Add4~22_combout\ : std_logic;
SIGNAL \EXP|Add4~42_combout\ : std_logic;
SIGNAL \EXP|Add7~0_combout\ : std_logic;
SIGNAL \EXP|Add7~6_combout\ : std_logic;
SIGNAL \EXP|Add7~8_combout\ : std_logic;
SIGNAL \EXP|Add7~12_combout\ : std_logic;
SIGNAL \EXP|Add7~22_combout\ : std_logic;
SIGNAL \EXP|Add7~26_combout\ : std_logic;
SIGNAL \EXP|Add7~28_combout\ : std_logic;
SIGNAL \EXP|Add7~32_combout\ : std_logic;
SIGNAL \EXP|Add7~34_combout\ : std_logic;
SIGNAL \EXP|Add7~42_combout\ : std_logic;
SIGNAL \EXP|Add11~12_combout\ : std_logic;
SIGNAL \EXP|Add11~14_combout\ : std_logic;
SIGNAL \EXP|Add15~14_combout\ : std_logic;
SIGNAL \EXP|Add10~16_combout\ : std_logic;
SIGNAL \EXP|Add10~38_combout\ : std_logic;
SIGNAL \EXP|Add10~42_combout\ : std_logic;
SIGNAL \EXP|Add14~0_combout\ : std_logic;
SIGNAL \EXP|Add14~2_combout\ : std_logic;
SIGNAL \EXP|Add14~4_combout\ : std_logic;
SIGNAL \EXP|Add14~6_combout\ : std_logic;
SIGNAL \EXP|Add14~8_combout\ : std_logic;
SIGNAL \EXP|Add14~14_combout\ : std_logic;
SIGNAL \EXP|Add14~16_combout\ : std_logic;
SIGNAL \EXP|Add14~24_combout\ : std_logic;
SIGNAL \EXP|Add14~28_combout\ : std_logic;
SIGNAL \EXP|Add16~0_combout\ : std_logic;
SIGNAL \EXP|Add16~2_combout\ : std_logic;
SIGNAL \EXP|Add16~4_combout\ : std_logic;
SIGNAL \EXP|Add16~6_combout\ : std_logic;
SIGNAL \EXP|Add16~8_combout\ : std_logic;
SIGNAL \EXP|Add16~10_combout\ : std_logic;
SIGNAL \EXP|Add16~12_combout\ : std_logic;
SIGNAL \EXP|Add16~14_combout\ : std_logic;
SIGNAL \EXP|Add16~16_combout\ : std_logic;
SIGNAL \EXP|Add16~18_combout\ : std_logic;
SIGNAL \EXP|Add16~20_combout\ : std_logic;
SIGNAL \EXP|Add16~22_combout\ : std_logic;
SIGNAL \EXP|Add16~24_combout\ : std_logic;
SIGNAL \EXP|Add16~26_combout\ : std_logic;
SIGNAL \EXP|Add16~28_combout\ : std_logic;
SIGNAL \EXP|Add16~30_combout\ : std_logic;
SIGNAL \EXP|Add16~32_combout\ : std_logic;
SIGNAL \EXP|Add16~42_combout\ : std_logic;
SIGNAL \EXP|Add16~44_combout\ : std_logic;
SIGNAL \EXP|Add16~52_combout\ : std_logic;
SIGNAL \EXP|Add16~54_combout\ : std_logic;
SIGNAL \EXP|Add17~21_combout\ : std_logic;
SIGNAL \EXP|LessThan0~0_combout\ : std_logic;
SIGNAL \EXP|LessThan0~1_combout\ : std_logic;
SIGNAL \EXP|LessThan1~2_combout\ : std_logic;
SIGNAL \EXP|LessThan1~3_combout\ : std_logic;
SIGNAL \EXP|rem~23_combout\ : std_logic;
SIGNAL \EXP|LessThan2~0_combout\ : std_logic;
SIGNAL \EXP|rem~36_combout\ : std_logic;
SIGNAL \EXP|rem~44_combout\ : std_logic;
SIGNAL \EXP|rem~45_combout\ : std_logic;
SIGNAL \EXP|LessThan3~7_combout\ : std_logic;
SIGNAL \EXP|rem~48_combout\ : std_logic;
SIGNAL \EXP|rem~50_combout\ : std_logic;
SIGNAL \EXP|rem~52_combout\ : std_logic;
SIGNAL \EXP|rem~56_combout\ : std_logic;
SIGNAL \EXP|LessThan4~3_combout\ : std_logic;
SIGNAL \EXP|LessThan4~4_combout\ : std_logic;
SIGNAL \EXP|rem~64_combout\ : std_logic;
SIGNAL \EXP|LessThan4~5_combout\ : std_logic;
SIGNAL \EXP|rem~68_combout\ : std_logic;
SIGNAL \EXP|Add8~16_combout\ : std_logic;
SIGNAL \EXP|rem~79_combout\ : std_logic;
SIGNAL \EXP|LessThan5~1_combout\ : std_logic;
SIGNAL \EXP|LessThan5~2_combout\ : std_logic;
SIGNAL \EXP|rem~83_combout\ : std_logic;
SIGNAL \EXP|rem~88_combout\ : std_logic;
SIGNAL \EXP|Add11~20_combout\ : std_logic;
SIGNAL \EXP|e~13_combout\ : std_logic;
SIGNAL \EXP|rem~105_combout\ : std_logic;
SIGNAL \EXP|LessThan6~8_combout\ : std_logic;
SIGNAL \EXP|LessThan6~9_combout\ : std_logic;
SIGNAL \EXP|LessThan6~11_combout\ : std_logic;
SIGNAL \EXP|LessThan7~1_combout\ : std_logic;
SIGNAL \EXP|LessThan7~2_combout\ : std_logic;
SIGNAL \EXP|rem~116_combout\ : std_logic;
SIGNAL \EXP|rem~121_combout\ : std_logic;
SIGNAL \EXP|LessThan7~5_combout\ : std_logic;
SIGNAL \EXP|LessThan7~6_combout\ : std_logic;
SIGNAL \EXP|rem~125_combout\ : std_logic;
SIGNAL \EXP|rem~128_combout\ : std_logic;
SIGNAL \EXP|LessThan8~0_combout\ : std_logic;
SIGNAL \EXP|LessThan8~1_combout\ : std_logic;
SIGNAL \EXP|LessThan8~2_combout\ : std_logic;
SIGNAL \EXP|LessThan8~3_combout\ : std_logic;
SIGNAL \EXP|rem~132_combout\ : std_logic;
SIGNAL \EXP|rem~133_combout\ : std_logic;
SIGNAL \EXP|rem~135_combout\ : std_logic;
SIGNAL \EXP|LessThan8~5_combout\ : std_logic;
SIGNAL \EXP|LessThan8~6_combout\ : std_logic;
SIGNAL \EXP|LessThan8~8_combout\ : std_logic;
SIGNAL \EXP|LessThan8~9_combout\ : std_logic;
SIGNAL \EXP|LessThan8~10_combout\ : std_logic;
SIGNAL \EXP|LessThan8~11_combout\ : std_logic;
SIGNAL \EXP|LessThan8~12_combout\ : std_logic;
SIGNAL \EXP|LessThan8~13_combout\ : std_logic;
SIGNAL \EXP|rem~136_combout\ : std_logic;
SIGNAL \EXP|e~15_combout\ : std_logic;
SIGNAL \EXP|LessThan6~16_combout\ : std_logic;
SIGNAL \EXP|rem~140_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \EXP|LessThan0~2_combout\ : std_logic;
SIGNAL \EXP|rem~16_combout\ : std_logic;
SIGNAL \EXP|rem~15_combout\ : std_logic;
SIGNAL \EXP|Add0~1\ : std_logic;
SIGNAL \EXP|Add0~3\ : std_logic;
SIGNAL \EXP|Add0~5\ : std_logic;
SIGNAL \EXP|Add0~7\ : std_logic;
SIGNAL \EXP|Add0~8_combout\ : std_logic;
SIGNAL \EXP|rem~12_combout\ : std_logic;
SIGNAL \EXP|Add0~6_combout\ : std_logic;
SIGNAL \EXP|rem~14_combout\ : std_logic;
SIGNAL \EXP|Add0~4_combout\ : std_logic;
SIGNAL \EXP|rem~13_combout\ : std_logic;
SIGNAL \EXP|Add0~2_combout\ : std_logic;
SIGNAL \EXP|rem~17_combout\ : std_logic;
SIGNAL \EXP|Add0~0_combout\ : std_logic;
SIGNAL \EXP|rem~18_combout\ : std_logic;
SIGNAL \EXP|Add2~1_cout\ : std_logic;
SIGNAL \EXP|Add2~3_cout\ : std_logic;
SIGNAL \EXP|Add2~5_cout\ : std_logic;
SIGNAL \EXP|Add2~7\ : std_logic;
SIGNAL \EXP|Add2~9\ : std_logic;
SIGNAL \EXP|Add2~11\ : std_logic;
SIGNAL \EXP|Add2~13\ : std_logic;
SIGNAL \EXP|Add2~15\ : std_logic;
SIGNAL \EXP|Add2~17\ : std_logic;
SIGNAL \EXP|Add2~18_combout\ : std_logic;
SIGNAL \EXP|Add0~9\ : std_logic;
SIGNAL \EXP|Add0~11\ : std_logic;
SIGNAL \EXP|Add0~13\ : std_logic;
SIGNAL \EXP|Add0~15\ : std_logic;
SIGNAL \EXP|Add0~17\ : std_logic;
SIGNAL \EXP|Add0~18_combout\ : std_logic;
SIGNAL \EXP|rem~22_combout\ : std_logic;
SIGNAL \EXP|rem~10_combout\ : std_logic;
SIGNAL \EXP|Add0~14_combout\ : std_logic;
SIGNAL \EXP|rem~11_combout\ : std_logic;
SIGNAL \EXP|LessThan1~4_combout\ : std_logic;
SIGNAL \EXP|LessThan1~5_combout\ : std_logic;
SIGNAL \EXP|rem~25_combout\ : std_logic;
SIGNAL \EXP|Add2~14_combout\ : std_logic;
SIGNAL \EXP|LessThan1~7_combout\ : std_logic;
SIGNAL \EXP|LessThan2~3_combout\ : std_logic;
SIGNAL \EXP|Add2~6_combout\ : std_logic;
SIGNAL \EXP|LessThan1~6_combout\ : std_logic;
SIGNAL \EXP|LessThan2~1_combout\ : std_logic;
SIGNAL \EXP|rem~27_combout\ : std_logic;
SIGNAL \EXP|rem~28_combout\ : std_logic;
SIGNAL \EXP|LessThan2~2_combout\ : std_logic;
SIGNAL \EXP|LessThan0~3_combout\ : std_logic;
SIGNAL \EXP|Add2~19\ : std_logic;
SIGNAL \EXP|Add2~21\ : std_logic;
SIGNAL \EXP|Add2~23\ : std_logic;
SIGNAL \EXP|Add2~24_combout\ : std_logic;
SIGNAL \EXP|rem~19_combout\ : std_logic;
SIGNAL \EXP|rem~20_combout\ : std_logic;
SIGNAL \EXP|rem~21_combout\ : std_logic;
SIGNAL \EXP|LessThan2~4_combout\ : std_logic;
SIGNAL \EXP|rem~31_combout\ : std_logic;
SIGNAL \EXP|rem~40_combout\ : std_logic;
SIGNAL \EXP|Add3~1_cout\ : std_logic;
SIGNAL \EXP|Add3~3\ : std_logic;
SIGNAL \EXP|Add3~5\ : std_logic;
SIGNAL \EXP|Add3~7\ : std_logic;
SIGNAL \EXP|Add3~9\ : std_logic;
SIGNAL \EXP|Add3~11\ : std_logic;
SIGNAL \EXP|Add3~13\ : std_logic;
SIGNAL \EXP|Add3~15\ : std_logic;
SIGNAL \EXP|Add3~17\ : std_logic;
SIGNAL \EXP|Add3~19\ : std_logic;
SIGNAL \EXP|Add3~20_combout\ : std_logic;
SIGNAL \EXP|rem~39_combout\ : std_logic;
SIGNAL \EXP|LessThan3~0_combout\ : std_logic;
SIGNAL \EXP|Add2~16_combout\ : std_logic;
SIGNAL \EXP|rem~26_combout\ : std_logic;
SIGNAL \EXP|rem~30_combout\ : std_logic;
SIGNAL \EXP|Add2~10_combout\ : std_logic;
SIGNAL \EXP|rem~29_combout\ : std_logic;
SIGNAL \EXP|Add3~21\ : std_logic;
SIGNAL \EXP|Add3~23\ : std_logic;
SIGNAL \EXP|Add3~25\ : std_logic;
SIGNAL \EXP|Add3~27\ : std_logic;
SIGNAL \EXP|Add3~29\ : std_logic;
SIGNAL \EXP|Add3~31\ : std_logic;
SIGNAL \EXP|Add3~33\ : std_logic;
SIGNAL \EXP|Add3~35\ : std_logic;
SIGNAL \EXP|Add3~37\ : std_logic;
SIGNAL \EXP|Add3~38_combout\ : std_logic;
SIGNAL \EXP|rem~24_combout\ : std_logic;
SIGNAL \EXP|Add3~39\ : std_logic;
SIGNAL \EXP|Add3~40_combout\ : std_logic;
SIGNAL \EXP|rem~37_combout\ : std_logic;
SIGNAL \EXP|Add3~41\ : std_logic;
SIGNAL \EXP|Add3~42_combout\ : std_logic;
SIGNAL \EXP|Add3~43\ : std_logic;
SIGNAL \EXP|Add3~44_combout\ : std_logic;
SIGNAL \EXP|rem~38_combout\ : std_logic;
SIGNAL \EXP|Add3~6_combout\ : std_logic;
SIGNAL \EXP|rem~43_combout\ : std_logic;
SIGNAL \EXP|Add3~16_combout\ : std_logic;
SIGNAL \EXP|Add3~18_combout\ : std_logic;
SIGNAL \EXP|Add3~12_combout\ : std_logic;
SIGNAL \EXP|rem~42_combout\ : std_logic;
SIGNAL \EXP|Add3~14_combout\ : std_logic;
SIGNAL \EXP|Add3~10_combout\ : std_logic;
SIGNAL \EXP|Add3~8_combout\ : std_logic;
SIGNAL \EXP|LessThan3~4_combout\ : std_logic;
SIGNAL \EXP|LessThan3~5_combout\ : std_logic;
SIGNAL \EXP|LessThan3~6_combout\ : std_logic;
SIGNAL \EXP|LessThan3~1_combout\ : std_logic;
SIGNAL \EXP|Add3~22_combout\ : std_logic;
SIGNAL \EXP|LessThan3~2_combout\ : std_logic;
SIGNAL \EXP|Add3~36_combout\ : std_logic;
SIGNAL \EXP|LessThan3~3_combout\ : std_logic;
SIGNAL \EXP|LessThan3~8_combout\ : std_logic;
SIGNAL \EXP|rem~46_combout\ : std_logic;
SIGNAL \EXP|rem~137_combout\ : std_logic;
SIGNAL \EXP|rem~138_combout\ : std_logic;
SIGNAL \EXP|rem~139_combout\ : std_logic;
SIGNAL \EXP|rem~49_combout\ : std_logic;
SIGNAL \EXP|Add4~1\ : std_logic;
SIGNAL \EXP|Add4~3\ : std_logic;
SIGNAL \EXP|Add4~5\ : std_logic;
SIGNAL \EXP|Add4~7\ : std_logic;
SIGNAL \EXP|Add4~9\ : std_logic;
SIGNAL \EXP|Add4~11\ : std_logic;
SIGNAL \EXP|Add4~13\ : std_logic;
SIGNAL \EXP|Add4~15\ : std_logic;
SIGNAL \EXP|Add4~17\ : std_logic;
SIGNAL \EXP|Add4~18_combout\ : std_logic;
SIGNAL \EXP|rem~69_combout\ : std_logic;
SIGNAL \EXP|Add4~16_combout\ : std_logic;
SIGNAL \EXP|rem~63_combout\ : std_logic;
SIGNAL \EXP|Add4~14_combout\ : std_logic;
SIGNAL \EXP|rem~62_combout\ : std_logic;
SIGNAL \EXP|Add4~12_combout\ : std_logic;
SIGNAL \EXP|rem~61_combout\ : std_logic;
SIGNAL \EXP|Add4~8_combout\ : std_logic;
SIGNAL \EXP|rem~59_combout\ : std_logic;
SIGNAL \EXP|Add4~6_combout\ : std_logic;
SIGNAL \EXP|rem~58_combout\ : std_logic;
SIGNAL \EXP|Add4~4_combout\ : std_logic;
SIGNAL \EXP|rem~57_combout\ : std_logic;
SIGNAL \EXP|Add7~1\ : std_logic;
SIGNAL \EXP|Add7~3\ : std_logic;
SIGNAL \EXP|Add7~5\ : std_logic;
SIGNAL \EXP|Add7~7\ : std_logic;
SIGNAL \EXP|Add7~9\ : std_logic;
SIGNAL \EXP|Add7~11\ : std_logic;
SIGNAL \EXP|Add7~13\ : std_logic;
SIGNAL \EXP|Add7~15\ : std_logic;
SIGNAL \EXP|Add7~17\ : std_logic;
SIGNAL \EXP|Add7~18_combout\ : std_logic;
SIGNAL \EXP|rem~81_combout\ : std_logic;
SIGNAL \EXP|rem~47_combout\ : std_logic;
SIGNAL \EXP|Add4~19\ : std_logic;
SIGNAL \EXP|Add4~21\ : std_logic;
SIGNAL \EXP|Add4~23\ : std_logic;
SIGNAL \EXP|Add4~24_combout\ : std_logic;
SIGNAL \EXP|rem~65_combout\ : std_logic;
SIGNAL \EXP|Add4~20_combout\ : std_logic;
SIGNAL \EXP|rem~70_combout\ : std_logic;
SIGNAL \EXP|rem~41_combout\ : std_logic;
SIGNAL \EXP|Add4~25\ : std_logic;
SIGNAL \EXP|Add4~27\ : std_logic;
SIGNAL \EXP|Add4~28_combout\ : std_logic;
SIGNAL \EXP|rem~67_combout\ : std_logic;
SIGNAL \EXP|Add4~26_combout\ : std_logic;
SIGNAL \EXP|rem~66_combout\ : std_logic;
SIGNAL \EXP|LessThan4~6_combout\ : std_logic;
SIGNAL \EXP|LessThan4~7_combout\ : std_logic;
SIGNAL \EXP|rem~33_combout\ : std_logic;
SIGNAL \EXP|Add3~34_combout\ : std_logic;
SIGNAL \EXP|rem~32_combout\ : std_logic;
SIGNAL \EXP|Add3~32_combout\ : std_logic;
SIGNAL \EXP|rem~35_combout\ : std_logic;
SIGNAL \EXP|Add3~30_combout\ : std_logic;
SIGNAL \EXP|rem~34_combout\ : std_logic;
SIGNAL \EXP|Add4~29\ : std_logic;
SIGNAL \EXP|Add4~31\ : std_logic;
SIGNAL \EXP|Add4~33\ : std_logic;
SIGNAL \EXP|Add4~35\ : std_logic;
SIGNAL \EXP|Add4~37\ : std_logic;
SIGNAL \EXP|Add4~38_combout\ : std_logic;
SIGNAL \EXP|Add4~39\ : std_logic;
SIGNAL \EXP|Add4~40_combout\ : std_logic;
SIGNAL \EXP|LessThan4~0_combout\ : std_logic;
SIGNAL \EXP|Add4~41\ : std_logic;
SIGNAL \EXP|Add4~43\ : std_logic;
SIGNAL \EXP|Add4~44_combout\ : std_logic;
SIGNAL \EXP|LessThan4~1_combout\ : std_logic;
SIGNAL \EXP|Add4~32_combout\ : std_logic;
SIGNAL \EXP|rem~55_combout\ : std_logic;
SIGNAL \EXP|Add4~30_combout\ : std_logic;
SIGNAL \EXP|rem~54_combout\ : std_logic;
SIGNAL \EXP|LessThan4~2_combout\ : std_logic;
SIGNAL \EXP|LessThan4~8_combout\ : std_logic;
SIGNAL \EXP|Add7~4_combout\ : std_logic;
SIGNAL \EXP|rem~90_combout\ : std_logic;
SIGNAL \EXP|Add7~2_combout\ : std_logic;
SIGNAL \EXP|rem~89_combout\ : std_logic;
SIGNAL \EXP|rem~91_combout\ : std_logic;
SIGNAL \EXP|LessThan5~4_combout\ : std_logic;
SIGNAL \EXP|Add7~19\ : std_logic;
SIGNAL \EXP|Add7~21\ : std_logic;
SIGNAL \EXP|Add7~23\ : std_logic;
SIGNAL \EXP|Add7~25\ : std_logic;
SIGNAL \EXP|Add7~27\ : std_logic;
SIGNAL \EXP|Add7~29\ : std_logic;
SIGNAL \EXP|Add7~30_combout\ : std_logic;
SIGNAL \EXP|rem~76_combout\ : std_logic;
SIGNAL \EXP|rem~77_combout\ : std_logic;
SIGNAL \EXP|rem~74_combout\ : std_logic;
SIGNAL \EXP|LessThan5~0_combout\ : std_logic;
SIGNAL \EXP|LessThan5~5_combout\ : std_logic;
SIGNAL \EXP|Add4~36_combout\ : std_logic;
SIGNAL \EXP|rem~51_combout\ : std_logic;
SIGNAL \EXP|Add4~34_combout\ : std_logic;
SIGNAL \EXP|rem~53_combout\ : std_logic;
SIGNAL \EXP|Add7~31\ : std_logic;
SIGNAL \EXP|Add7~33\ : std_logic;
SIGNAL \EXP|Add7~35\ : std_logic;
SIGNAL \EXP|Add7~37\ : std_logic;
SIGNAL \EXP|Add7~39\ : std_logic;
SIGNAL \EXP|Add7~41\ : std_logic;
SIGNAL \EXP|Add7~43\ : std_logic;
SIGNAL \EXP|Add7~44_combout\ : std_logic;
SIGNAL \EXP|Add7~38_combout\ : std_logic;
SIGNAL \EXP|Add7~40_combout\ : std_logic;
SIGNAL \EXP|rem~72_combout\ : std_logic;
SIGNAL \EXP|Add7~36_combout\ : std_logic;
SIGNAL \EXP|rem~73_combout\ : std_logic;
SIGNAL \EXP|rem~86_combout\ : std_logic;
SIGNAL \EXP|rem~84_combout\ : std_logic;
SIGNAL \EXP|Add7~10_combout\ : std_logic;
SIGNAL \EXP|Add4~10_combout\ : std_logic;
SIGNAL \EXP|rem~60_combout\ : std_logic;
SIGNAL \EXP|rem~85_combout\ : std_logic;
SIGNAL \EXP|LessThan5~3_combout\ : std_logic;
SIGNAL \EXP|rem~92_combout\ : std_logic;
SIGNAL \EXP|e~10_combout\ : std_logic;
SIGNAL \EXP|e~16_combout\ : std_logic;
SIGNAL \EXP|e~14_combout\ : std_logic;
SIGNAL \EXP|e~8_combout\ : std_logic;
SIGNAL \EXP|Add5~3\ : std_logic;
SIGNAL \EXP|Add5~5\ : std_logic;
SIGNAL \EXP|Add5~7\ : std_logic;
SIGNAL \EXP|Add5~9\ : std_logic;
SIGNAL \EXP|Add5~13_combout\ : std_logic;
SIGNAL \EXP|Add5~15_combout\ : std_logic;
SIGNAL \EXP|Add5~4_combout\ : std_logic;
SIGNAL \EXP|Add5~16_combout\ : std_logic;
SIGNAL \EXP|Add5~2_combout\ : std_logic;
SIGNAL \EXP|Add5~12_combout\ : std_logic;
SIGNAL \EXP|e~9_combout\ : std_logic;
SIGNAL \EXP|Add8~3\ : std_logic;
SIGNAL \EXP|Add8~5\ : std_logic;
SIGNAL \EXP|Add8~7\ : std_logic;
SIGNAL \EXP|Add8~10\ : std_logic;
SIGNAL \EXP|Add8~11_combout\ : std_logic;
SIGNAL \EXP|Add5~8_combout\ : std_logic;
SIGNAL \EXP|Add5~10_combout\ : std_logic;
SIGNAL \EXP|Add8~17_combout\ : std_logic;
SIGNAL \EXP|Add8~9_combout\ : std_logic;
SIGNAL \EXP|Add5~6_combout\ : std_logic;
SIGNAL \EXP|Add5~11_combout\ : std_logic;
SIGNAL \EXP|Add8~18_combout\ : std_logic;
SIGNAL \EXP|Add8~6_combout\ : std_logic;
SIGNAL \EXP|Add8~8_combout\ : std_logic;
SIGNAL \EXP|e~11_combout\ : std_logic;
SIGNAL \EXP|Add11~1\ : std_logic;
SIGNAL \EXP|Add11~3\ : std_logic;
SIGNAL \EXP|Add11~5\ : std_logic;
SIGNAL \EXP|Add11~6_combout\ : std_logic;
SIGNAL \EXP|Add11~11_combout\ : std_logic;
SIGNAL \EXP|Add10~1\ : std_logic;
SIGNAL \EXP|Add10~3\ : std_logic;
SIGNAL \EXP|Add10~5\ : std_logic;
SIGNAL \EXP|Add10~7\ : std_logic;
SIGNAL \EXP|Add10~9\ : std_logic;
SIGNAL \EXP|Add10~11\ : std_logic;
SIGNAL \EXP|Add10~13\ : std_logic;
SIGNAL \EXP|Add10~14_combout\ : std_logic;
SIGNAL \EXP|rem~101_combout\ : std_logic;
SIGNAL \EXP|Add10~10_combout\ : std_logic;
SIGNAL \EXP|LessThan6~10_combout\ : std_logic;
SIGNAL \EXP|Add10~8_combout\ : std_logic;
SIGNAL \EXP|rem~106_combout\ : std_logic;
SIGNAL \EXP|Add7~24_combout\ : std_logic;
SIGNAL \EXP|rem~80_combout\ : std_logic;
SIGNAL \EXP|Add7~20_combout\ : std_logic;
SIGNAL \EXP|rem~78_combout\ : std_logic;
SIGNAL \EXP|Add7~16_combout\ : std_logic;
SIGNAL \EXP|rem~93_combout\ : std_logic;
SIGNAL \EXP|Add10~15\ : std_logic;
SIGNAL \EXP|Add10~17\ : std_logic;
SIGNAL \EXP|Add10~19\ : std_logic;
SIGNAL \EXP|Add10~21\ : std_logic;
SIGNAL \EXP|Add10~23\ : std_logic;
SIGNAL \EXP|Add10~25\ : std_logic;
SIGNAL \EXP|Add10~27\ : std_logic;
SIGNAL \EXP|Add10~29\ : std_logic;
SIGNAL \EXP|Add10~31\ : std_logic;
SIGNAL \EXP|Add10~32_combout\ : std_logic;
SIGNAL \EXP|rem~94_combout\ : std_logic;
SIGNAL \EXP|rem~87_combout\ : std_logic;
SIGNAL \EXP|Add10~0_combout\ : std_logic;
SIGNAL \EXP|LessThan6~12_combout\ : std_logic;
SIGNAL \EXP|Add10~2_combout\ : std_logic;
SIGNAL \EXP|rem~109_combout\ : std_logic;
SIGNAL \EXP|Add10~4_combout\ : std_logic;
SIGNAL \EXP|rem~107_combout\ : std_logic;
SIGNAL \EXP|LessThan6~13_combout\ : std_logic;
SIGNAL \EXP|LessThan6~14_combout\ : std_logic;
SIGNAL \EXP|Add10~20_combout\ : std_logic;
SIGNAL \EXP|rem~103_combout\ : std_logic;
SIGNAL \EXP|Add10~22_combout\ : std_logic;
SIGNAL \EXP|LessThan6~6_combout\ : std_logic;
SIGNAL \EXP|Add10~28_combout\ : std_logic;
SIGNAL \EXP|rem~97_combout\ : std_logic;
SIGNAL \EXP|rem~75_combout\ : std_logic;
SIGNAL \EXP|Add10~30_combout\ : std_logic;
SIGNAL \EXP|rem~98_combout\ : std_logic;
SIGNAL \EXP|Add10~24_combout\ : std_logic;
SIGNAL \EXP|rem~95_combout\ : std_logic;
SIGNAL \EXP|LessThan6~4_combout\ : std_logic;
SIGNAL \EXP|Add10~12_combout\ : std_logic;
SIGNAL \EXP|rem~102_combout\ : std_logic;
SIGNAL \EXP|Add10~18_combout\ : std_logic;
SIGNAL \EXP|rem~100_combout\ : std_logic;
SIGNAL \EXP|Add7~14_combout\ : std_logic;
SIGNAL \EXP|rem~82_combout\ : std_logic;
SIGNAL \EXP|rem~99_combout\ : std_logic;
SIGNAL \EXP|LessThan6~5_combout\ : std_logic;
SIGNAL \EXP|LessThan6~7_combout\ : std_logic;
SIGNAL \EXP|LessThan6~15_combout\ : std_logic;
SIGNAL \EXP|Add15~19_combout\ : std_logic;
SIGNAL \EXP|Add17~0_combout\ : std_logic;
SIGNAL \EXP|Add8~19_combout\ : std_logic;
SIGNAL \EXP|Add11~4_combout\ : std_logic;
SIGNAL \EXP|Add11~19_combout\ : std_logic;
SIGNAL \EXP|Add15~4_combout\ : std_logic;
SIGNAL \EXP|e~17_combout\ : std_logic;
SIGNAL \EXP|Add15~33_combout\ : std_logic;
SIGNAL \EXP|Add17~15_combout\ : std_logic;
SIGNAL \EXP|exp[-5]~10_combout\ : std_logic;
SIGNAL \EXP|Add10~26_combout\ : std_logic;
SIGNAL \EXP|rem~96_combout\ : std_logic;
SIGNAL \EXP|rem~110_combout\ : std_logic;
SIGNAL \EXP|rem~111_combout\ : std_logic;
SIGNAL \EXP|Add10~6_combout\ : std_logic;
SIGNAL \EXP|rem~108_combout\ : std_logic;
SIGNAL \EXP|LessThan6~17_combout\ : std_logic;
SIGNAL \EXP|Add14~1\ : std_logic;
SIGNAL \EXP|Add14~3\ : std_logic;
SIGNAL \EXP|Add14~5\ : std_logic;
SIGNAL \EXP|Add14~7\ : std_logic;
SIGNAL \EXP|Add14~9\ : std_logic;
SIGNAL \EXP|Add14~11\ : std_logic;
SIGNAL \EXP|Add14~13\ : std_logic;
SIGNAL \EXP|Add14~15\ : std_logic;
SIGNAL \EXP|Add14~17\ : std_logic;
SIGNAL \EXP|Add14~19\ : std_logic;
SIGNAL \EXP|Add14~21\ : std_logic;
SIGNAL \EXP|Add14~23\ : std_logic;
SIGNAL \EXP|Add14~25\ : std_logic;
SIGNAL \EXP|Add14~26_combout\ : std_logic;
SIGNAL \EXP|rem~117_combout\ : std_logic;
SIGNAL \EXP|Add14~18_combout\ : std_logic;
SIGNAL \EXP|rem~126_combout\ : std_logic;
SIGNAL \EXP|Add14~10_combout\ : std_logic;
SIGNAL \EXP|rem~123_combout\ : std_logic;
SIGNAL \EXP|rem~120_combout\ : std_logic;
SIGNAL \EXP|rem~119_combout\ : std_logic;
SIGNAL \EXP|rem~134_combout\ : std_logic;
SIGNAL \EXP|Add16~1\ : std_logic;
SIGNAL \EXP|Add16~3\ : std_logic;
SIGNAL \EXP|Add16~5\ : std_logic;
SIGNAL \EXP|Add16~7\ : std_logic;
SIGNAL \EXP|Add16~9\ : std_logic;
SIGNAL \EXP|Add16~11\ : std_logic;
SIGNAL \EXP|Add16~13\ : std_logic;
SIGNAL \EXP|Add16~15\ : std_logic;
SIGNAL \EXP|Add16~17\ : std_logic;
SIGNAL \EXP|Add16~19\ : std_logic;
SIGNAL \EXP|Add16~21\ : std_logic;
SIGNAL \EXP|Add16~23\ : std_logic;
SIGNAL \EXP|Add16~25\ : std_logic;
SIGNAL \EXP|Add16~27\ : std_logic;
SIGNAL \EXP|Add16~29\ : std_logic;
SIGNAL \EXP|Add16~31\ : std_logic;
SIGNAL \EXP|Add16~33\ : std_logic;
SIGNAL \EXP|Add16~35\ : std_logic;
SIGNAL \EXP|Add16~37\ : std_logic;
SIGNAL \EXP|Add16~38_combout\ : std_logic;
SIGNAL \EXP|Add16~36_combout\ : std_logic;
SIGNAL \EXP|Add16~34_combout\ : std_logic;
SIGNAL \EXP|LessThan8~14_combout\ : std_logic;
SIGNAL \EXP|Add14~27\ : std_logic;
SIGNAL \EXP|Add14~29\ : std_logic;
SIGNAL \EXP|Add14~30_combout\ : std_logic;
SIGNAL \EXP|rem~118_combout\ : std_logic;
SIGNAL \EXP|Add16~39\ : std_logic;
SIGNAL \EXP|Add16~40_combout\ : std_logic;
SIGNAL \EXP|Add14~31\ : std_logic;
SIGNAL \EXP|Add14~32_combout\ : std_logic;
SIGNAL \EXP|LessThan7~0_combout\ : std_logic;
SIGNAL \EXP|Add14~20_combout\ : std_logic;
SIGNAL \EXP|rem~114_combout\ : std_logic;
SIGNAL \EXP|Add14~22_combout\ : std_logic;
SIGNAL \EXP|rem~115_combout\ : std_logic;
SIGNAL \EXP|LessThan7~3_combout\ : std_logic;
SIGNAL \EXP|LessThan7~4_combout\ : std_logic;
SIGNAL \EXP|rem~122_combout\ : std_logic;
SIGNAL \EXP|Add14~12_combout\ : std_logic;
SIGNAL \EXP|rem~124_combout\ : std_logic;
SIGNAL \EXP|LessThan7~7_combout\ : std_logic;
SIGNAL \EXP|rem~127_combout\ : std_logic;
SIGNAL \EXP|LessThan7~8_combout\ : std_logic;
SIGNAL \EXP|LessThan7~9_combout\ : std_logic;
SIGNAL \EXP|LessThan7~10_combout\ : std_logic;
SIGNAL \EXP|LessThan8~15_combout\ : std_logic;
SIGNAL \EXP|rem~71_combout\ : std_logic;
SIGNAL \EXP|Add10~33\ : std_logic;
SIGNAL \EXP|Add10~35\ : std_logic;
SIGNAL \EXP|Add10~36_combout\ : std_logic;
SIGNAL \EXP|rem~113_combout\ : std_logic;
SIGNAL \EXP|Add10~34_combout\ : std_logic;
SIGNAL \EXP|rem~112_combout\ : std_logic;
SIGNAL \EXP|Add14~33\ : std_logic;
SIGNAL \EXP|Add14~35\ : std_logic;
SIGNAL \EXP|Add14~37\ : std_logic;
SIGNAL \EXP|Add14~38_combout\ : std_logic;
SIGNAL \EXP|rem~129_combout\ : std_logic;
SIGNAL \EXP|Add14~36_combout\ : std_logic;
SIGNAL \EXP|rem~130_combout\ : std_logic;
SIGNAL \EXP|Add14~34_combout\ : std_logic;
SIGNAL \EXP|rem~131_combout\ : std_logic;
SIGNAL \EXP|Add16~41\ : std_logic;
SIGNAL \EXP|Add16~43\ : std_logic;
SIGNAL \EXP|Add16~45\ : std_logic;
SIGNAL \EXP|Add16~47\ : std_logic;
SIGNAL \EXP|Add16~48_combout\ : std_logic;
SIGNAL \EXP|Add16~46_combout\ : std_logic;
SIGNAL \EXP|LessThan8~7_combout\ : std_logic;
SIGNAL \EXP|rem~104_combout\ : std_logic;
SIGNAL \EXP|Add10~37\ : std_logic;
SIGNAL \EXP|Add10~39\ : std_logic;
SIGNAL \EXP|Add10~41\ : std_logic;
SIGNAL \EXP|Add10~43\ : std_logic;
SIGNAL \EXP|Add10~45\ : std_logic;
SIGNAL \EXP|Add10~46_combout\ : std_logic;
SIGNAL \EXP|Add10~44_combout\ : std_logic;
SIGNAL \EXP|Add10~40_combout\ : std_logic;
SIGNAL \EXP|Add14~39\ : std_logic;
SIGNAL \EXP|Add14~41\ : std_logic;
SIGNAL \EXP|Add14~43\ : std_logic;
SIGNAL \EXP|Add14~45\ : std_logic;
SIGNAL \EXP|Add14~46_combout\ : std_logic;
SIGNAL \EXP|Add14~44_combout\ : std_logic;
SIGNAL \EXP|Add14~42_combout\ : std_logic;
SIGNAL \EXP|Add14~40_combout\ : std_logic;
SIGNAL \EXP|Add16~49\ : std_logic;
SIGNAL \EXP|Add16~51\ : std_logic;
SIGNAL \EXP|Add16~53\ : std_logic;
SIGNAL \EXP|Add16~55\ : std_logic;
SIGNAL \EXP|Add16~56_combout\ : std_logic;
SIGNAL \EXP|Add16~50_combout\ : std_logic;
SIGNAL \EXP|LessThan8~4_combout\ : std_logic;
SIGNAL \EXP|LessThan8~16_combout\ : std_logic;
SIGNAL \EXP|exp[-5]~regout\ : std_logic;
SIGNAL \EXP|Add8~12\ : std_logic;
SIGNAL \EXP|Add8~13_combout\ : std_logic;
SIGNAL \EXP|Add8~15_combout\ : std_logic;
SIGNAL \EXP|Add11~7\ : std_logic;
SIGNAL \EXP|Add11~9\ : std_logic;
SIGNAL \EXP|Add11~13\ : std_logic;
SIGNAL \EXP|Add11~15\ : std_logic;
SIGNAL \EXP|Add11~16_combout\ : std_logic;
SIGNAL \EXP|Add11~18_combout\ : std_logic;
SIGNAL \EXP|Add11~2_combout\ : std_logic;
SIGNAL \EXP|Add11~21_combout\ : std_logic;
SIGNAL \EXP|Add11~8_combout\ : std_logic;
SIGNAL \EXP|Add11~10_combout\ : std_logic;
SIGNAL \EXP|e~12_combout\ : std_logic;
SIGNAL \EXP|Add15~5\ : std_logic;
SIGNAL \EXP|Add15~7\ : std_logic;
SIGNAL \EXP|Add15~9\ : std_logic;
SIGNAL \EXP|Add15~11\ : std_logic;
SIGNAL \EXP|Add15~13\ : std_logic;
SIGNAL \EXP|Add15~15\ : std_logic;
SIGNAL \EXP|Add15~17\ : std_logic;
SIGNAL \EXP|Add15~21_combout\ : std_logic;
SIGNAL \EXP|Add11~22_combout\ : std_logic;
SIGNAL \EXP|Add15~31_combout\ : std_logic;
SIGNAL \EXP|Add15~16_combout\ : std_logic;
SIGNAL \EXP|Add15~18_combout\ : std_logic;
SIGNAL \EXP|Add15~12_combout\ : std_logic;
SIGNAL \EXP|Add15~20_combout\ : std_logic;
SIGNAL \EXP|Add15~22\ : std_logic;
SIGNAL \EXP|Add15~23_combout\ : std_logic;
SIGNAL \EXP|Add15~29_combout\ : std_logic;
SIGNAL \EXP|Add17~1\ : std_logic;
SIGNAL \EXP|Add17~3\ : std_logic;
SIGNAL \EXP|Add17~5\ : std_logic;
SIGNAL \EXP|Add17~7\ : std_logic;
SIGNAL \EXP|Add17~9\ : std_logic;
SIGNAL \EXP|Add17~11\ : std_logic;
SIGNAL \EXP|Add17~13\ : std_logic;
SIGNAL \EXP|Add17~17_combout\ : std_logic;
SIGNAL \EXP|Add17~19_combout\ : std_logic;
SIGNAL \EXP|exp[-5]~11\ : std_logic;
SIGNAL \EXP|exp[-4]~12_combout\ : std_logic;
SIGNAL \EXP|Add15~6_combout\ : std_logic;
SIGNAL \EXP|Add15~32_combout\ : std_logic;
SIGNAL \EXP|Add17~2_combout\ : std_logic;
SIGNAL \EXP|Add17~16_combout\ : std_logic;
SIGNAL \EXP|exp[-4]~regout\ : std_logic;
SIGNAL \EXP|Add17~23_combout\ : std_logic;
SIGNAL \EXP|exp[-4]~13\ : std_logic;
SIGNAL \EXP|exp[-3]~14_combout\ : std_logic;
SIGNAL \EXP|Add17~4_combout\ : std_logic;
SIGNAL \EXP|Add15~8_combout\ : std_logic;
SIGNAL \EXP|Add11~0_combout\ : std_logic;
SIGNAL \EXP|Add11~23_combout\ : std_logic;
SIGNAL \EXP|Add15~30_combout\ : std_logic;
SIGNAL \EXP|Add17~20_combout\ : std_logic;
SIGNAL \EXP|exp[-3]~regout\ : std_logic;
SIGNAL \EXP|Add15~10_combout\ : std_logic;
SIGNAL \EXP|Add15~28_combout\ : std_logic;
SIGNAL \EXP|Add17~6_combout\ : std_logic;
SIGNAL \EXP|Add17~24_combout\ : std_logic;
SIGNAL \EXP|exp[-3]~15\ : std_logic;
SIGNAL \EXP|exp[-2]~16_combout\ : std_logic;
SIGNAL \EXP|exp[-2]~regout\ : std_logic;
SIGNAL \EXP|exp[-2]~17\ : std_logic;
SIGNAL \EXP|exp[-1]~18_combout\ : std_logic;
SIGNAL \EXP|Add17~8_combout\ : std_logic;
SIGNAL \EXP|Add17~28_combout\ : std_logic;
SIGNAL \EXP|exp[-1]~regout\ : std_logic;
SIGNAL \EXP|exp[-1]~19\ : std_logic;
SIGNAL \EXP|exp[0]~20_combout\ : std_logic;
SIGNAL \EXP|Add17~10_combout\ : std_logic;
SIGNAL \EXP|Add17~29_combout\ : std_logic;
SIGNAL \EXP|Add17~29_wirecell_combout\ : std_logic;
SIGNAL \EXP|exp[0]~21\ : std_logic;
SIGNAL \EXP|exp[1]~22_combout\ : std_logic;
SIGNAL \EXP|Add17~12_combout\ : std_logic;
SIGNAL \EXP|Add17~14_combout\ : std_logic;
SIGNAL \EXP|exp[1]~23\ : std_logic;
SIGNAL \EXP|exp[2]~24_combout\ : std_logic;
SIGNAL \EXP|exp[2]~25\ : std_logic;
SIGNAL \EXP|exp[3]~26_combout\ : std_logic;
SIGNAL \EXP|exp[3]~27\ : std_logic;
SIGNAL \EXP|exp[4]~28_combout\ : std_logic;
SIGNAL \EXP|Add15~24\ : std_logic;
SIGNAL \EXP|Add15~25_combout\ : std_logic;
SIGNAL \EXP|Add15~27_combout\ : std_logic;
SIGNAL \EXP|Add17~18\ : std_logic;
SIGNAL \EXP|Add17~22\ : std_logic;
SIGNAL \EXP|Add17~25_combout\ : std_logic;
SIGNAL \EXP|Add17~27_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \EXP|exp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \EXP|ALT_INV_exp\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\EXP|ALT_INV_exp\(0) <= NOT \EXP|exp\(0);

-- Location: LCCOMB_X20_Y18_N10
\EXP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~10_combout\ = (\SW~combout\(5) & (\EXP|Add0~9\ & VCC)) # (!\SW~combout\(5) & (!\EXP|Add0~9\))
-- \EXP|Add0~11\ = CARRY((!\SW~combout\(5) & !\EXP|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datad => VCC,
	cin => \EXP|Add0~9\,
	combout => \EXP|Add0~10_combout\,
	cout => \EXP|Add0~11\);

-- Location: LCCOMB_X20_Y18_N12
\EXP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~12_combout\ = (\SW~combout\(6) & (\EXP|Add0~11\ $ (GND))) # (!\SW~combout\(6) & (!\EXP|Add0~11\ & VCC))
-- \EXP|Add0~13\ = CARRY((\SW~combout\(6) & !\EXP|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(6),
	datad => VCC,
	cin => \EXP|Add0~11\,
	combout => \EXP|Add0~12_combout\,
	cout => \EXP|Add0~13\);

-- Location: LCCOMB_X20_Y18_N16
\EXP|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~16_combout\ = (\SW~combout\(8) & ((GND) # (!\EXP|Add0~15\))) # (!\SW~combout\(8) & (\EXP|Add0~15\ $ (GND)))
-- \EXP|Add0~17\ = CARRY((\SW~combout\(8)) # (!\EXP|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datad => VCC,
	cin => \EXP|Add0~15\,
	combout => \EXP|Add0~16_combout\,
	cout => \EXP|Add0~17\);

-- Location: LCCOMB_X21_Y18_N8
\EXP|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~8_combout\ = (\EXP|rem~17_combout\ & ((GND) # (!\EXP|Add2~7\))) # (!\EXP|rem~17_combout\ & (\EXP|Add2~7\ $ (GND)))
-- \EXP|Add2~9\ = CARRY((\EXP|rem~17_combout\) # (!\EXP|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~17_combout\,
	datad => VCC,
	cin => \EXP|Add2~7\,
	combout => \EXP|Add2~8_combout\,
	cout => \EXP|Add2~9\);

-- Location: LCCOMB_X21_Y18_N12
\EXP|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~12_combout\ = (\EXP|rem~14_combout\ & (\EXP|Add2~11\ $ (GND))) # (!\EXP|rem~14_combout\ & (!\EXP|Add2~11\ & VCC))
-- \EXP|Add2~13\ = CARRY((\EXP|rem~14_combout\ & !\EXP|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~14_combout\,
	datad => VCC,
	cin => \EXP|Add2~11\,
	combout => \EXP|Add2~12_combout\,
	cout => \EXP|Add2~13\);

-- Location: LCCOMB_X21_Y18_N20
\EXP|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~20_combout\ = (\EXP|rem~11_combout\ & (\EXP|Add2~19\ $ (GND))) # (!\EXP|rem~11_combout\ & (!\EXP|Add2~19\ & VCC))
-- \EXP|Add2~21\ = CARRY((\EXP|rem~11_combout\ & !\EXP|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~11_combout\,
	datad => VCC,
	cin => \EXP|Add2~19\,
	combout => \EXP|Add2~20_combout\,
	cout => \EXP|Add2~21\);

-- Location: LCCOMB_X21_Y18_N22
\EXP|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~22_combout\ = (\EXP|Add0~16_combout\ & ((\EXP|LessThan0~3_combout\ & (\EXP|Add2~21\ & VCC)) # (!\EXP|LessThan0~3_combout\ & (!\EXP|Add2~21\)))) # (!\EXP|Add0~16_combout\ & (((!\EXP|Add2~21\))))
-- \EXP|Add2~23\ = CARRY((!\EXP|Add2~21\ & ((!\EXP|LessThan0~3_combout\) # (!\EXP|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~16_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add2~21\,
	combout => \EXP|Add2~22_combout\,
	cout => \EXP|Add2~23\);

-- Location: LCCOMB_X22_Y20_N12
\EXP|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~2_combout\ = (\EXP|Add3~1_cout\ & (((\EXP|LessThan0~2_combout\) # (\SW~combout\(9))))) # (!\EXP|Add3~1_cout\ & (!\EXP|LessThan0~2_combout\ & (!\SW~combout\(9))))
-- \EXP|Add3~3\ = CARRY((!\EXP|LessThan0~2_combout\ & (!\SW~combout\(9) & !\EXP|Add3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add3~1_cout\,
	combout => \EXP|Add3~2_combout\,
	cout => \EXP|Add3~3\);

-- Location: LCCOMB_X22_Y20_N14
\EXP|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~4_combout\ = (\EXP|Add3~3\ & (\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\ $ (VCC)))) # (!\EXP|Add3~3\ & ((\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\)) # (GND)))
-- \EXP|Add3~5\ = CARRY((\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\)) # (!\EXP|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~3\,
	combout => \EXP|Add3~4_combout\,
	cout => \EXP|Add3~5\);

-- Location: LCCOMB_X22_Y19_N2
\EXP|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~24_combout\ = (\EXP|Add3~23\ & (\EXP|LessThan0~3_combout\ & (!\EXP|LessThan1~7_combout\ & VCC))) # (!\EXP|Add3~23\ & ((((\EXP|LessThan0~3_combout\ & !\EXP|LessThan1~7_combout\)))))
-- \EXP|Add3~25\ = CARRY((\EXP|LessThan0~3_combout\ & (!\EXP|LessThan1~7_combout\ & !\EXP|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|LessThan1~7_combout\,
	datad => VCC,
	cin => \EXP|Add3~23\,
	combout => \EXP|Add3~24_combout\,
	cout => \EXP|Add3~25\);

-- Location: LCCOMB_X22_Y19_N4
\EXP|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~26_combout\ = (\EXP|rem~31_combout\ & (\EXP|Add3~25\ & VCC)) # (!\EXP|rem~31_combout\ & (!\EXP|Add3~25\))
-- \EXP|Add3~27\ = CARRY((!\EXP|rem~31_combout\ & !\EXP|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~31_combout\,
	datad => VCC,
	cin => \EXP|Add3~25\,
	combout => \EXP|Add3~26_combout\,
	cout => \EXP|Add3~27\);

-- Location: LCCOMB_X22_Y19_N6
\EXP|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~28_combout\ = (\EXP|rem~28_combout\ & ((GND) # (!\EXP|Add3~27\))) # (!\EXP|rem~28_combout\ & (\EXP|Add3~27\ $ (GND)))
-- \EXP|Add3~29\ = CARRY((\EXP|rem~28_combout\) # (!\EXP|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~28_combout\,
	datad => VCC,
	cin => \EXP|Add3~27\,
	combout => \EXP|Add3~28_combout\,
	cout => \EXP|Add3~29\);

-- Location: LCCOMB_X24_Y15_N18
\EXP|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~2_combout\ = (\EXP|Add5~16_combout\ & (\EXP|e~9_combout\ $ (GND))) # (!\EXP|Add5~16_combout\ & (!\EXP|e~9_combout\ & VCC))
-- \EXP|Add8~3\ = CARRY((\EXP|Add5~16_combout\ & !\EXP|e~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~16_combout\,
	datab => \EXP|e~9_combout\,
	datad => VCC,
	combout => \EXP|Add8~2_combout\,
	cout => \EXP|Add8~3\);

-- Location: LCCOMB_X24_Y15_N20
\EXP|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~4_combout\ = (\EXP|Add5~11_combout\ & ((\EXP|Add5~12_combout\ & (\EXP|Add8~3\ & VCC)) # (!\EXP|Add5~12_combout\ & (!\EXP|Add8~3\)))) # (!\EXP|Add5~11_combout\ & ((\EXP|Add5~12_combout\ & (!\EXP|Add8~3\)) # (!\EXP|Add5~12_combout\ & 
-- ((\EXP|Add8~3\) # (GND)))))
-- \EXP|Add8~5\ = CARRY((\EXP|Add5~11_combout\ & (!\EXP|Add5~12_combout\ & !\EXP|Add8~3\)) # (!\EXP|Add5~11_combout\ & ((!\EXP|Add8~3\) # (!\EXP|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~11_combout\,
	datab => \EXP|Add5~12_combout\,
	datad => VCC,
	cin => \EXP|Add8~3\,
	combout => \EXP|Add8~4_combout\,
	cout => \EXP|Add8~5\);

-- Location: LCCOMB_X24_Y20_N10
\EXP|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~0_combout\ = (((!\EXP|LessThan2~4_combout\ & \EXP|LessThan1~7_combout\)))
-- \EXP|Add4~1\ = CARRY((!\EXP|LessThan2~4_combout\ & \EXP|LessThan1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datab => \EXP|LessThan1~7_combout\,
	datad => VCC,
	combout => \EXP|Add4~0_combout\,
	cout => \EXP|Add4~1\);

-- Location: LCCOMB_X24_Y20_N12
\EXP|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~2_combout\ = (\EXP|rem~136_combout\ & (\EXP|Add4~1\ & VCC)) # (!\EXP|rem~136_combout\ & (!\EXP|Add4~1\))
-- \EXP|Add4~3\ = CARRY((!\EXP|rem~136_combout\ & !\EXP|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~136_combout\,
	datad => VCC,
	cin => \EXP|Add4~1\,
	combout => \EXP|Add4~2_combout\,
	cout => \EXP|Add4~3\);

-- Location: LCCOMB_X24_Y19_N0
\EXP|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~22_combout\ = (\EXP|rem~48_combout\ & (!\EXP|Add4~21\)) # (!\EXP|rem~48_combout\ & ((\EXP|Add4~21\) # (GND)))
-- \EXP|Add4~23\ = CARRY((!\EXP|Add4~21\) # (!\EXP|rem~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~48_combout\,
	datad => VCC,
	cin => \EXP|Add4~21\,
	combout => \EXP|Add4~22_combout\,
	cout => \EXP|Add4~23\);

-- Location: LCCOMB_X24_Y19_N20
\EXP|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~42_combout\ = (\EXP|Add3~42_combout\ & ((\EXP|LessThan2~4_combout\ & (\EXP|Add4~41\ & VCC)) # (!\EXP|LessThan2~4_combout\ & (!\EXP|Add4~41\)))) # (!\EXP|Add3~42_combout\ & (((!\EXP|Add4~41\))))
-- \EXP|Add4~43\ = CARRY((!\EXP|Add4~41\ & ((!\EXP|LessThan2~4_combout\) # (!\EXP|Add3~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~42_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datad => VCC,
	cin => \EXP|Add4~41\,
	combout => \EXP|Add4~42_combout\,
	cout => \EXP|Add4~43\);

-- Location: LCCOMB_X24_Y17_N10
\EXP|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~0_combout\ = \EXP|rem~64_combout\ $ (VCC)
-- \EXP|Add7~1\ = CARRY(\EXP|rem~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~64_combout\,
	datad => VCC,
	combout => \EXP|Add7~0_combout\,
	cout => \EXP|Add7~1\);

-- Location: LCCOMB_X24_Y17_N16
\EXP|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~6_combout\ = (\EXP|rem~58_combout\ & (!\EXP|Add7~5\)) # (!\EXP|rem~58_combout\ & ((\EXP|Add7~5\) # (GND)))
-- \EXP|Add7~7\ = CARRY((!\EXP|Add7~5\) # (!\EXP|rem~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~58_combout\,
	datad => VCC,
	cin => \EXP|Add7~5\,
	combout => \EXP|Add7~6_combout\,
	cout => \EXP|Add7~7\);

-- Location: LCCOMB_X24_Y17_N18
\EXP|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~8_combout\ = (\EXP|rem~59_combout\ & (\EXP|Add7~7\ $ (GND))) # (!\EXP|rem~59_combout\ & (!\EXP|Add7~7\ & VCC))
-- \EXP|Add7~9\ = CARRY((\EXP|rem~59_combout\ & !\EXP|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~59_combout\,
	datad => VCC,
	cin => \EXP|Add7~7\,
	combout => \EXP|Add7~8_combout\,
	cout => \EXP|Add7~9\);

-- Location: LCCOMB_X24_Y17_N22
\EXP|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~12_combout\ = (\EXP|rem~61_combout\ & (\EXP|Add7~11\ $ (GND))) # (!\EXP|rem~61_combout\ & (!\EXP|Add7~11\ & VCC))
-- \EXP|Add7~13\ = CARRY((\EXP|rem~61_combout\ & !\EXP|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~61_combout\,
	datad => VCC,
	cin => \EXP|Add7~11\,
	combout => \EXP|Add7~12_combout\,
	cout => \EXP|Add7~13\);

-- Location: LCCOMB_X24_Y16_N0
\EXP|Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~22_combout\ = (\EXP|rem~68_combout\ & (\EXP|Add7~21\ & VCC)) # (!\EXP|rem~68_combout\ & (!\EXP|Add7~21\))
-- \EXP|Add7~23\ = CARRY((!\EXP|rem~68_combout\ & !\EXP|Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~68_combout\,
	datad => VCC,
	cin => \EXP|Add7~21\,
	combout => \EXP|Add7~22_combout\,
	cout => \EXP|Add7~23\);

-- Location: LCCOMB_X24_Y16_N4
\EXP|Add7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~26_combout\ = (\EXP|rem~66_combout\ & (\EXP|Add7~25\ & VCC)) # (!\EXP|rem~66_combout\ & (!\EXP|Add7~25\))
-- \EXP|Add7~27\ = CARRY((!\EXP|rem~66_combout\ & !\EXP|Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~66_combout\,
	datad => VCC,
	cin => \EXP|Add7~25\,
	combout => \EXP|Add7~26_combout\,
	cout => \EXP|Add7~27\);

-- Location: LCCOMB_X24_Y16_N6
\EXP|Add7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~28_combout\ = (\EXP|rem~67_combout\ & ((GND) # (!\EXP|Add7~27\))) # (!\EXP|rem~67_combout\ & (\EXP|Add7~27\ $ (GND)))
-- \EXP|Add7~29\ = CARRY((\EXP|rem~67_combout\) # (!\EXP|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~67_combout\,
	datad => VCC,
	cin => \EXP|Add7~27\,
	combout => \EXP|Add7~28_combout\,
	cout => \EXP|Add7~29\);

-- Location: LCCOMB_X24_Y16_N10
\EXP|Add7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~32_combout\ = (\EXP|rem~55_combout\ & (\EXP|Add7~31\ $ (GND))) # (!\EXP|rem~55_combout\ & (!\EXP|Add7~31\ & VCC))
-- \EXP|Add7~33\ = CARRY((\EXP|rem~55_combout\ & !\EXP|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~55_combout\,
	datad => VCC,
	cin => \EXP|Add7~31\,
	combout => \EXP|Add7~32_combout\,
	cout => \EXP|Add7~33\);

-- Location: LCCOMB_X24_Y16_N12
\EXP|Add7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~34_combout\ = (\EXP|rem~53_combout\ & (!\EXP|Add7~33\)) # (!\EXP|rem~53_combout\ & ((\EXP|Add7~33\) # (GND)))
-- \EXP|Add7~35\ = CARRY((!\EXP|Add7~33\) # (!\EXP|rem~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~53_combout\,
	datad => VCC,
	cin => \EXP|Add7~33\,
	combout => \EXP|Add7~34_combout\,
	cout => \EXP|Add7~35\);

-- Location: LCCOMB_X24_Y16_N20
\EXP|Add7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~42_combout\ = (\EXP|Add4~42_combout\ & ((\EXP|rem~46_combout\ & (\EXP|Add7~41\ & VCC)) # (!\EXP|rem~46_combout\ & (!\EXP|Add7~41\)))) # (!\EXP|Add4~42_combout\ & (((!\EXP|Add7~41\))))
-- \EXP|Add7~43\ = CARRY((!\EXP|Add7~41\ & ((!\EXP|rem~46_combout\) # (!\EXP|Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~42_combout\,
	datab => \EXP|rem~46_combout\,
	datad => VCC,
	cin => \EXP|Add7~41\,
	combout => \EXP|Add7~42_combout\,
	cout => \EXP|Add7~43\);

-- Location: LCCOMB_X24_Y14_N24
\EXP|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~12_combout\ = (\EXP|Add8~18_combout\ & (!\EXP|Add11~9\)) # (!\EXP|Add8~18_combout\ & ((\EXP|Add11~9\) # (GND)))
-- \EXP|Add11~13\ = CARRY((!\EXP|Add11~9\) # (!\EXP|Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add8~18_combout\,
	datad => VCC,
	cin => \EXP|Add11~9\,
	combout => \EXP|Add11~12_combout\,
	cout => \EXP|Add11~13\);

-- Location: LCCOMB_X24_Y14_N26
\EXP|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~14_combout\ = (\EXP|Add8~17_combout\ & (\EXP|Add11~13\ $ (GND))) # (!\EXP|Add8~17_combout\ & (!\EXP|Add11~13\ & VCC))
-- \EXP|Add11~15\ = CARRY((\EXP|Add8~17_combout\ & !\EXP|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add8~17_combout\,
	datad => VCC,
	cin => \EXP|Add11~13\,
	combout => \EXP|Add11~14_combout\,
	cout => \EXP|Add11~15\);

-- Location: LCCOMB_X25_Y14_N10
\EXP|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~14_combout\ = (\EXP|Add11~11_combout\ & ((\EXP|Add11~18_combout\ & (\EXP|Add15~13\ & VCC)) # (!\EXP|Add11~18_combout\ & (!\EXP|Add15~13\)))) # (!\EXP|Add11~11_combout\ & ((\EXP|Add11~18_combout\ & (!\EXP|Add15~13\)) # (!\EXP|Add11~18_combout\ & 
-- ((\EXP|Add15~13\) # (GND)))))
-- \EXP|Add15~15\ = CARRY((\EXP|Add11~11_combout\ & (!\EXP|Add11~18_combout\ & !\EXP|Add15~13\)) # (!\EXP|Add11~11_combout\ & ((!\EXP|Add15~13\) # (!\EXP|Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~11_combout\,
	datab => \EXP|Add11~18_combout\,
	datad => VCC,
	cin => \EXP|Add15~13\,
	combout => \EXP|Add15~14_combout\,
	cout => \EXP|Add15~15\);

-- Location: LCCOMB_X25_Y17_N24
\EXP|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~16_combout\ = (\EXP|rem~82_combout\ & ((GND) # (!\EXP|Add10~15\))) # (!\EXP|rem~82_combout\ & (\EXP|Add10~15\ $ (GND)))
-- \EXP|Add10~17\ = CARRY((\EXP|rem~82_combout\) # (!\EXP|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~82_combout\,
	datad => VCC,
	cin => \EXP|Add10~15\,
	combout => \EXP|Add10~16_combout\,
	cout => \EXP|Add10~17\);

-- Location: LCCOMB_X25_Y16_N14
\EXP|Add10~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~38_combout\ = (\EXP|rem~104_combout\ & (\EXP|Add10~37\ & VCC)) # (!\EXP|rem~104_combout\ & (!\EXP|Add10~37\))
-- \EXP|Add10~39\ = CARRY((!\EXP|rem~104_combout\ & !\EXP|Add10~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~104_combout\,
	datad => VCC,
	cin => \EXP|Add10~37\,
	combout => \EXP|Add10~38_combout\,
	cout => \EXP|Add10~39\);

-- Location: LCCOMB_X25_Y16_N18
\EXP|Add10~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~42_combout\ = (\EXP|Add7~40_combout\ & ((\EXP|LessThan4~8_combout\ & (\EXP|Add10~41\ & VCC)) # (!\EXP|LessThan4~8_combout\ & (!\EXP|Add10~41\)))) # (!\EXP|Add7~40_combout\ & (((!\EXP|Add10~41\))))
-- \EXP|Add10~43\ = CARRY((!\EXP|Add10~41\ & ((!\EXP|LessThan4~8_combout\) # (!\EXP|Add7~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~40_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => VCC,
	cin => \EXP|Add10~41\,
	combout => \EXP|Add10~42_combout\,
	cout => \EXP|Add10~43\);

-- Location: LCCOMB_X22_Y16_N8
\EXP|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~0_combout\ = (\EXP|rem~140_combout\ & (\EXP|LessThan6~17_combout\ $ (VCC))) # (!\EXP|rem~140_combout\ & (\EXP|LessThan6~17_combout\ & VCC))
-- \EXP|Add14~1\ = CARRY((\EXP|rem~140_combout\ & \EXP|LessThan6~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~140_combout\,
	datab => \EXP|LessThan6~17_combout\,
	datad => VCC,
	combout => \EXP|Add14~0_combout\,
	cout => \EXP|Add14~1\);

-- Location: LCCOMB_X22_Y16_N10
\EXP|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~2_combout\ = (\EXP|rem~109_combout\ & (!\EXP|Add14~1\)) # (!\EXP|rem~109_combout\ & ((\EXP|Add14~1\) # (GND)))
-- \EXP|Add14~3\ = CARRY((!\EXP|Add14~1\) # (!\EXP|rem~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~109_combout\,
	datad => VCC,
	cin => \EXP|Add14~1\,
	combout => \EXP|Add14~2_combout\,
	cout => \EXP|Add14~3\);

-- Location: LCCOMB_X22_Y16_N12
\EXP|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~4_combout\ = (\EXP|rem~107_combout\ & ((GND) # (!\EXP|Add14~3\))) # (!\EXP|rem~107_combout\ & (\EXP|Add14~3\ $ (GND)))
-- \EXP|Add14~5\ = CARRY((\EXP|rem~107_combout\) # (!\EXP|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~107_combout\,
	datad => VCC,
	cin => \EXP|Add14~3\,
	combout => \EXP|Add14~4_combout\,
	cout => \EXP|Add14~5\);

-- Location: LCCOMB_X22_Y16_N14
\EXP|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~6_combout\ = (\EXP|rem~108_combout\ & (\EXP|Add14~5\ & VCC)) # (!\EXP|rem~108_combout\ & (!\EXP|Add14~5\))
-- \EXP|Add14~7\ = CARRY((!\EXP|rem~108_combout\ & !\EXP|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~108_combout\,
	datad => VCC,
	cin => \EXP|Add14~5\,
	combout => \EXP|Add14~6_combout\,
	cout => \EXP|Add14~7\);

-- Location: LCCOMB_X22_Y16_N16
\EXP|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~8_combout\ = (\EXP|rem~106_combout\ & ((GND) # (!\EXP|Add14~7\))) # (!\EXP|rem~106_combout\ & (\EXP|Add14~7\ $ (GND)))
-- \EXP|Add14~9\ = CARRY((\EXP|rem~106_combout\) # (!\EXP|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~106_combout\,
	datad => VCC,
	cin => \EXP|Add14~7\,
	combout => \EXP|Add14~8_combout\,
	cout => \EXP|Add14~9\);

-- Location: LCCOMB_X22_Y16_N22
\EXP|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~14_combout\ = (\EXP|rem~101_combout\ & (!\EXP|Add14~13\)) # (!\EXP|rem~101_combout\ & ((\EXP|Add14~13\) # (GND)))
-- \EXP|Add14~15\ = CARRY((!\EXP|Add14~13\) # (!\EXP|rem~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~101_combout\,
	datad => VCC,
	cin => \EXP|Add14~13\,
	combout => \EXP|Add14~14_combout\,
	cout => \EXP|Add14~15\);

-- Location: LCCOMB_X22_Y16_N24
\EXP|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~16_combout\ = (\EXP|rem~99_combout\ & ((GND) # (!\EXP|Add14~15\))) # (!\EXP|rem~99_combout\ & (\EXP|Add14~15\ $ (GND)))
-- \EXP|Add14~17\ = CARRY((\EXP|rem~99_combout\) # (!\EXP|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~99_combout\,
	datad => VCC,
	cin => \EXP|Add14~15\,
	combout => \EXP|Add14~16_combout\,
	cout => \EXP|Add14~17\);

-- Location: LCCOMB_X22_Y15_N0
\EXP|Add14~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~24_combout\ = (\EXP|rem~95_combout\ & (\EXP|Add14~23\ $ (GND))) # (!\EXP|rem~95_combout\ & (!\EXP|Add14~23\ & VCC))
-- \EXP|Add14~25\ = CARRY((\EXP|rem~95_combout\ & !\EXP|Add14~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~95_combout\,
	datad => VCC,
	cin => \EXP|Add14~23\,
	combout => \EXP|Add14~24_combout\,
	cout => \EXP|Add14~25\);

-- Location: LCCOMB_X22_Y15_N4
\EXP|Add14~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~28_combout\ = (\EXP|rem~97_combout\ & (\EXP|Add14~27\ $ (GND))) # (!\EXP|rem~97_combout\ & (!\EXP|Add14~27\ & VCC))
-- \EXP|Add14~29\ = CARRY((\EXP|rem~97_combout\ & !\EXP|Add14~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~97_combout\,
	datad => VCC,
	cin => \EXP|Add14~27\,
	combout => \EXP|Add14~28_combout\,
	cout => \EXP|Add14~29\);

-- Location: LCCOMB_X23_Y14_N4
\EXP|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~0_combout\ = (((\EXP|rem~92_combout\ & \EXP|LessThan6~15_combout\)))
-- \EXP|Add16~1\ = CARRY((\EXP|rem~92_combout\ & \EXP|LessThan6~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datad => VCC,
	combout => \EXP|Add16~0_combout\,
	cout => \EXP|Add16~1\);

-- Location: LCCOMB_X23_Y14_N6
\EXP|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~2_combout\ = (\EXP|Add16~1\ & (\EXP|rem~135_combout\ $ ((!\EXP|LessThan6~15_combout\)))) # (!\EXP|Add16~1\ & ((\EXP|rem~135_combout\ $ (\EXP|LessThan6~15_combout\)) # (GND)))
-- \EXP|Add16~3\ = CARRY((\EXP|rem~135_combout\ $ (!\EXP|LessThan6~15_combout\)) # (!\EXP|Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~135_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datad => VCC,
	cin => \EXP|Add16~1\,
	combout => \EXP|Add16~2_combout\,
	cout => \EXP|Add16~3\);

-- Location: LCCOMB_X23_Y14_N8
\EXP|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~4_combout\ = (\EXP|rem~134_combout\ & ((GND) # (!\EXP|Add16~3\))) # (!\EXP|rem~134_combout\ & (\EXP|Add16~3\ $ (GND)))
-- \EXP|Add16~5\ = CARRY((\EXP|rem~134_combout\) # (!\EXP|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~134_combout\,
	datad => VCC,
	cin => \EXP|Add16~3\,
	combout => \EXP|Add16~4_combout\,
	cout => \EXP|Add16~5\);

-- Location: LCCOMB_X23_Y14_N10
\EXP|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~6_combout\ = (\EXP|Add16~5\ & (((\EXP|LessThan6~17_combout\)) # (!\EXP|LessThan6~15_combout\))) # (!\EXP|Add16~5\ & (((\EXP|LessThan6~15_combout\ & !\EXP|LessThan6~17_combout\)) # (GND)))
-- \EXP|Add16~7\ = CARRY(((\EXP|LessThan6~17_combout\) # (!\EXP|Add16~5\)) # (!\EXP|LessThan6~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|LessThan6~17_combout\,
	datad => VCC,
	cin => \EXP|Add16~5\,
	combout => \EXP|Add16~6_combout\,
	cout => \EXP|Add16~7\);

-- Location: LCCOMB_X23_Y14_N12
\EXP|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~8_combout\ = (\EXP|Add16~7\ & (\EXP|LessThan6~15_combout\ & (!\EXP|LessThan6~17_combout\ & VCC))) # (!\EXP|Add16~7\ & ((((\EXP|LessThan6~15_combout\ & !\EXP|LessThan6~17_combout\)))))
-- \EXP|Add16~9\ = CARRY((\EXP|LessThan6~15_combout\ & (!\EXP|LessThan6~17_combout\ & !\EXP|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|LessThan6~17_combout\,
	datad => VCC,
	cin => \EXP|Add16~7\,
	combout => \EXP|Add16~8_combout\,
	cout => \EXP|Add16~9\);

-- Location: LCCOMB_X23_Y14_N14
\EXP|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~10_combout\ = (\EXP|rem~133_combout\ & (\EXP|Add16~9\ & VCC)) # (!\EXP|rem~133_combout\ & (!\EXP|Add16~9\))
-- \EXP|Add16~11\ = CARRY((!\EXP|rem~133_combout\ & !\EXP|Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~133_combout\,
	datad => VCC,
	cin => \EXP|Add16~9\,
	combout => \EXP|Add16~10_combout\,
	cout => \EXP|Add16~11\);

-- Location: LCCOMB_X23_Y14_N16
\EXP|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~12_combout\ = (\EXP|rem~121_combout\ & ((GND) # (!\EXP|Add16~11\))) # (!\EXP|rem~121_combout\ & (\EXP|Add16~11\ $ (GND)))
-- \EXP|Add16~13\ = CARRY((\EXP|rem~121_combout\) # (!\EXP|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~121_combout\,
	datad => VCC,
	cin => \EXP|Add16~11\,
	combout => \EXP|Add16~12_combout\,
	cout => \EXP|Add16~13\);

-- Location: LCCOMB_X23_Y14_N18
\EXP|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~14_combout\ = (\EXP|rem~119_combout\ & (!\EXP|Add16~13\)) # (!\EXP|rem~119_combout\ & ((\EXP|Add16~13\) # (GND)))
-- \EXP|Add16~15\ = CARRY((!\EXP|Add16~13\) # (!\EXP|rem~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~119_combout\,
	datad => VCC,
	cin => \EXP|Add16~13\,
	combout => \EXP|Add16~14_combout\,
	cout => \EXP|Add16~15\);

-- Location: LCCOMB_X23_Y14_N20
\EXP|Add16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~16_combout\ = (\EXP|rem~127_combout\ & ((GND) # (!\EXP|Add16~15\))) # (!\EXP|rem~127_combout\ & (\EXP|Add16~15\ $ (GND)))
-- \EXP|Add16~17\ = CARRY((\EXP|rem~127_combout\) # (!\EXP|Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~127_combout\,
	datad => VCC,
	cin => \EXP|Add16~15\,
	combout => \EXP|Add16~16_combout\,
	cout => \EXP|Add16~17\);

-- Location: LCCOMB_X23_Y14_N22
\EXP|Add16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~18_combout\ = (\EXP|rem~120_combout\ & (!\EXP|Add16~17\)) # (!\EXP|rem~120_combout\ & ((\EXP|Add16~17\) # (GND)))
-- \EXP|Add16~19\ = CARRY((!\EXP|Add16~17\) # (!\EXP|rem~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~120_combout\,
	datad => VCC,
	cin => \EXP|Add16~17\,
	combout => \EXP|Add16~18_combout\,
	cout => \EXP|Add16~19\);

-- Location: LCCOMB_X23_Y14_N24
\EXP|Add16~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~20_combout\ = (\EXP|rem~123_combout\ & ((GND) # (!\EXP|Add16~19\))) # (!\EXP|rem~123_combout\ & (\EXP|Add16~19\ $ (GND)))
-- \EXP|Add16~21\ = CARRY((\EXP|rem~123_combout\) # (!\EXP|Add16~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~123_combout\,
	datad => VCC,
	cin => \EXP|Add16~19\,
	combout => \EXP|Add16~20_combout\,
	cout => \EXP|Add16~21\);

-- Location: LCCOMB_X23_Y14_N26
\EXP|Add16~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~22_combout\ = (\EXP|rem~124_combout\ & (\EXP|Add16~21\ & VCC)) # (!\EXP|rem~124_combout\ & (!\EXP|Add16~21\))
-- \EXP|Add16~23\ = CARRY((!\EXP|rem~124_combout\ & !\EXP|Add16~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~124_combout\,
	datad => VCC,
	cin => \EXP|Add16~21\,
	combout => \EXP|Add16~22_combout\,
	cout => \EXP|Add16~23\);

-- Location: LCCOMB_X23_Y14_N28
\EXP|Add16~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~24_combout\ = (\EXP|rem~125_combout\ & ((GND) # (!\EXP|Add16~23\))) # (!\EXP|rem~125_combout\ & (\EXP|Add16~23\ $ (GND)))
-- \EXP|Add16~25\ = CARRY((\EXP|rem~125_combout\) # (!\EXP|Add16~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~125_combout\,
	datad => VCC,
	cin => \EXP|Add16~23\,
	combout => \EXP|Add16~24_combout\,
	cout => \EXP|Add16~25\);

-- Location: LCCOMB_X23_Y14_N30
\EXP|Add16~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~26_combout\ = (\EXP|rem~122_combout\ & (\EXP|Add16~25\ & VCC)) # (!\EXP|rem~122_combout\ & (!\EXP|Add16~25\))
-- \EXP|Add16~27\ = CARRY((!\EXP|rem~122_combout\ & !\EXP|Add16~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~122_combout\,
	datad => VCC,
	cin => \EXP|Add16~25\,
	combout => \EXP|Add16~26_combout\,
	cout => \EXP|Add16~27\);

-- Location: LCCOMB_X23_Y13_N0
\EXP|Add16~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~28_combout\ = (\EXP|rem~126_combout\ & ((GND) # (!\EXP|Add16~27\))) # (!\EXP|rem~126_combout\ & (\EXP|Add16~27\ $ (GND)))
-- \EXP|Add16~29\ = CARRY((\EXP|rem~126_combout\) # (!\EXP|Add16~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~126_combout\,
	datad => VCC,
	cin => \EXP|Add16~27\,
	combout => \EXP|Add16~28_combout\,
	cout => \EXP|Add16~29\);

-- Location: LCCOMB_X23_Y13_N2
\EXP|Add16~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~30_combout\ = (\EXP|rem~114_combout\ & (!\EXP|Add16~29\)) # (!\EXP|rem~114_combout\ & ((\EXP|Add16~29\) # (GND)))
-- \EXP|Add16~31\ = CARRY((!\EXP|Add16~29\) # (!\EXP|rem~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~114_combout\,
	datad => VCC,
	cin => \EXP|Add16~29\,
	combout => \EXP|Add16~30_combout\,
	cout => \EXP|Add16~31\);

-- Location: LCCOMB_X23_Y13_N4
\EXP|Add16~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~32_combout\ = (\EXP|rem~115_combout\ & (\EXP|Add16~31\ $ (GND))) # (!\EXP|rem~115_combout\ & (!\EXP|Add16~31\ & VCC))
-- \EXP|Add16~33\ = CARRY((\EXP|rem~115_combout\ & !\EXP|Add16~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~115_combout\,
	datad => VCC,
	cin => \EXP|Add16~31\,
	combout => \EXP|Add16~32_combout\,
	cout => \EXP|Add16~33\);

-- Location: LCCOMB_X23_Y13_N14
\EXP|Add16~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~42_combout\ = (\EXP|rem~132_combout\ & (\EXP|Add16~41\ & VCC)) # (!\EXP|rem~132_combout\ & (!\EXP|Add16~41\))
-- \EXP|Add16~43\ = CARRY((!\EXP|rem~132_combout\ & !\EXP|Add16~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~132_combout\,
	datad => VCC,
	cin => \EXP|Add16~41\,
	combout => \EXP|Add16~42_combout\,
	cout => \EXP|Add16~43\);

-- Location: LCCOMB_X23_Y13_N16
\EXP|Add16~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~44_combout\ = (\EXP|rem~131_combout\ & ((GND) # (!\EXP|Add16~43\))) # (!\EXP|rem~131_combout\ & (\EXP|Add16~43\ $ (GND)))
-- \EXP|Add16~45\ = CARRY((\EXP|rem~131_combout\) # (!\EXP|Add16~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~131_combout\,
	datad => VCC,
	cin => \EXP|Add16~43\,
	combout => \EXP|Add16~44_combout\,
	cout => \EXP|Add16~45\);

-- Location: LCCOMB_X23_Y13_N24
\EXP|Add16~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~52_combout\ = (\EXP|Add16~51\ & ((((\EXP|LessThan6~15_combout\ & \EXP|Add14~42_combout\))))) # (!\EXP|Add16~51\ & (((\EXP|LessThan6~15_combout\ & \EXP|Add14~42_combout\)) # (GND)))
-- \EXP|Add16~53\ = CARRY(((\EXP|LessThan6~15_combout\ & \EXP|Add14~42_combout\)) # (!\EXP|Add16~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|Add14~42_combout\,
	datad => VCC,
	cin => \EXP|Add16~51\,
	combout => \EXP|Add16~52_combout\,
	cout => \EXP|Add16~53\);

-- Location: LCCOMB_X23_Y13_N26
\EXP|Add16~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~54_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~44_combout\ & (\EXP|Add16~53\ & VCC)) # (!\EXP|Add14~44_combout\ & (!\EXP|Add16~53\)))) # (!\EXP|LessThan6~15_combout\ & (((!\EXP|Add16~53\))))
-- \EXP|Add16~55\ = CARRY((!\EXP|Add16~53\ & ((!\EXP|Add14~44_combout\) # (!\EXP|LessThan6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|Add14~44_combout\,
	datad => VCC,
	cin => \EXP|Add16~53\,
	combout => \EXP|Add16~54_combout\,
	cout => \EXP|Add16~55\);

-- Location: LCCOMB_X25_Y13_N16
\EXP|Add17~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~21_combout\ = (\EXP|Add15~29_combout\ & (\EXP|Add17~18\ $ (GND))) # (!\EXP|Add15~29_combout\ & (!\EXP|Add17~18\ & VCC))
-- \EXP|Add17~22\ = CARRY((\EXP|Add15~29_combout\ & !\EXP|Add17~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add15~29_combout\,
	datad => VCC,
	cin => \EXP|Add17~18\,
	combout => \EXP|Add17~21_combout\,
	cout => \EXP|Add17~22\);

-- Location: LCCOMB_X21_Y17_N8
\EXP|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~0_combout\ = (\SW~combout\(1) & (\SW~combout\(0) & (\SW~combout\(3) & \SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \EXP|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\EXP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~1_combout\ = (\SW~combout\(4)) # ((\EXP|LessThan0~0_combout\) # (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datac => \EXP|LessThan0~0_combout\,
	datad => \SW~combout\(5),
	combout => \EXP|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y17_N18
\EXP|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~2_combout\ = (\EXP|LessThan0~2_combout\) # ((\SW~combout\(0)) # ((\SW~combout\(9)) # (\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(9),
	datad => \SW~combout\(1),
	combout => \EXP|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y17_N20
\EXP|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~3_combout\ = (\EXP|rem~12_combout\) # ((\EXP|LessThan1~2_combout\ & (\EXP|rem~14_combout\ & \EXP|rem~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~12_combout\,
	datab => \EXP|LessThan1~2_combout\,
	datac => \EXP|rem~14_combout\,
	datad => \EXP|rem~13_combout\,
	combout => \EXP|LessThan1~3_combout\);

-- Location: LCCOMB_X22_Y18_N8
\EXP|rem~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~23_combout\ = (\EXP|Add2~22_combout\ & ((\EXP|rem~22_combout\) # (\EXP|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~22_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~23_combout\);

-- Location: LCCOMB_X22_Y18_N24
\EXP|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~0_combout\ = (\EXP|rem~23_combout\) # ((\EXP|rem~24_combout\) # ((\EXP|rem~25_combout\ & \EXP|rem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~25_combout\,
	datab => \EXP|rem~26_combout\,
	datac => \EXP|rem~23_combout\,
	datad => \EXP|rem~24_combout\,
	combout => \EXP|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\EXP|rem~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~36_combout\ = (\EXP|rem~33_combout\ & (\EXP|rem~32_combout\ & ((\EXP|rem~34_combout\) # (\EXP|rem~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~34_combout\,
	datab => \EXP|rem~33_combout\,
	datac => \EXP|rem~32_combout\,
	datad => \EXP|rem~35_combout\,
	combout => \EXP|rem~36_combout\);

-- Location: LCCOMB_X23_Y20_N8
\EXP|rem~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~44_combout\ = (\EXP|LessThan2~4_combout\ & \EXP|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add3~14_combout\,
	combout => \EXP|rem~44_combout\);

-- Location: LCCOMB_X22_Y20_N6
\EXP|rem~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~45_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~4_combout\)))) # (!\EXP|LessThan2~4_combout\ & (\EXP|LessThan1~7_combout\ $ (((\EXP|LessThan0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add3~4_combout\,
	datad => \EXP|LessThan0~3_combout\,
	combout => \EXP|rem~45_combout\);

-- Location: LCCOMB_X23_Y20_N26
\EXP|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~7_combout\ = (\EXP|rem~42_combout\ & (\EXP|rem~44_combout\ & ((\EXP|rem~45_combout\) # (\EXP|rem~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~45_combout\,
	datab => \EXP|rem~42_combout\,
	datac => \EXP|rem~44_combout\,
	datad => \EXP|rem~136_combout\,
	combout => \EXP|LessThan3~7_combout\);

-- Location: LCCOMB_X23_Y18_N6
\EXP|rem~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~48_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~22_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\EXP|LessThan0~3_combout\) # ((\EXP|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|Add3~22_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|rem~48_combout\);

-- Location: LCCOMB_X23_Y20_N14
\EXP|rem~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~50_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~8_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\EXP|LessThan0~3_combout\) # ((\EXP|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan1~7_combout\,
	datad => \EXP|Add3~8_combout\,
	combout => \EXP|rem~50_combout\);

-- Location: LCCOMB_X22_Y19_N30
\EXP|rem~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~52_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~38_combout\)) # (!\EXP|LessThan2~4_combout\ & ((\EXP|rem~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add3~38_combout\,
	datad => \EXP|rem~25_combout\,
	combout => \EXP|rem~52_combout\);

-- Location: LCCOMB_X23_Y20_N0
\EXP|rem~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~56_combout\ = (\EXP|rem~46_combout\ & (\EXP|Add4~2_combout\)) # (!\EXP|rem~46_combout\ & ((\EXP|rem~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add4~2_combout\,
	datad => \EXP|rem~136_combout\,
	combout => \EXP|rem~56_combout\);

-- Location: LCCOMB_X24_Y17_N0
\EXP|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~3_combout\ = (\EXP|rem~56_combout\ & (\EXP|rem~58_combout\ & (\EXP|rem~59_combout\ & \EXP|rem~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~56_combout\,
	datab => \EXP|rem~58_combout\,
	datac => \EXP|rem~59_combout\,
	datad => \EXP|rem~57_combout\,
	combout => \EXP|LessThan4~3_combout\);

-- Location: LCCOMB_X23_Y17_N0
\EXP|LessThan4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~4_combout\ = (\EXP|rem~63_combout\ & (\EXP|rem~62_combout\ & (\EXP|rem~61_combout\ & \EXP|rem~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~63_combout\,
	datab => \EXP|rem~62_combout\,
	datac => \EXP|rem~61_combout\,
	datad => \EXP|rem~60_combout\,
	combout => \EXP|LessThan4~4_combout\);

-- Location: LCCOMB_X23_Y18_N24
\EXP|rem~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~64_combout\ = (\EXP|rem~46_combout\ & (((\EXP|Add4~0_combout\)))) # (!\EXP|rem~46_combout\ & (\EXP|LessThan1~7_combout\ & (!\EXP|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|LessThan1~7_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add4~0_combout\,
	combout => \EXP|rem~64_combout\);

-- Location: LCCOMB_X24_Y18_N10
\EXP|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~5_combout\ = (\EXP|rem~64_combout\ & (\EXP|rem~65_combout\ & (\EXP|LessThan4~4_combout\ & \EXP|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~64_combout\,
	datab => \EXP|rem~65_combout\,
	datac => \EXP|LessThan4~4_combout\,
	datad => \EXP|LessThan4~3_combout\,
	combout => \EXP|LessThan4~5_combout\);

-- Location: LCCOMB_X23_Y18_N14
\EXP|rem~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~68_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~22_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~48_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~22_combout\,
	combout => \EXP|rem~68_combout\);

-- Location: LCCOMB_X24_Y15_N6
\EXP|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~16_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add8~4_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~4_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datac => \EXP|Add5~12_combout\,
	combout => \EXP|Add8~16_combout\);

-- Location: LCCOMB_X24_Y16_N30
\EXP|rem~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~79_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~22_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add7~22_combout\,
	datac => \EXP|rem~68_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~79_combout\);

-- Location: LCCOMB_X23_Y15_N8
\EXP|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~1_combout\ = (\EXP|rem~79_combout\) # ((\EXP|rem~78_combout\) # (\EXP|rem~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~79_combout\,
	datac => \EXP|rem~78_combout\,
	datad => \EXP|rem~80_combout\,
	combout => \EXP|LessThan5~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\EXP|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~2_combout\ = (\EXP|rem~82_combout\) # ((\EXP|LessThan4~8_combout\ & (\EXP|Add7~16_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|rem~82_combout\,
	datac => \EXP|Add7~16_combout\,
	datad => \EXP|rem~63_combout\,
	combout => \EXP|LessThan5~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\EXP|rem~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~83_combout\ = (\EXP|LessThan5~0_combout\ & ((\EXP|LessThan5~1_combout\) # ((\EXP|LessThan5~2_combout\ & \EXP|rem~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~1_combout\,
	datab => \EXP|LessThan5~0_combout\,
	datac => \EXP|LessThan5~2_combout\,
	datad => \EXP|rem~81_combout\,
	combout => \EXP|rem~83_combout\);

-- Location: LCCOMB_X24_Y17_N2
\EXP|rem~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~88_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add7~0_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|rem~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~64_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => \EXP|Add7~0_combout\,
	combout => \EXP|rem~88_combout\);

-- Location: LCCOMB_X24_Y14_N0
\EXP|Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~20_combout\ = (\EXP|rem~92_combout\ & (\EXP|Add11~14_combout\)) # (!\EXP|rem~92_combout\ & ((\EXP|Add8~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~14_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add8~17_combout\,
	combout => \EXP|Add11~20_combout\);

-- Location: LCCOMB_X24_Y13_N4
\EXP|e~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~13_combout\ = (\EXP|rem~92_combout\ & \EXP|e~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem~92_combout\,
	datad => \EXP|e~17_combout\,
	combout => \EXP|e~13_combout\);

-- Location: LCCOMB_X24_Y13_N16
\EXP|rem~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~105_combout\ = (\EXP|rem~92_combout\ & \EXP|Add10~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datac => \EXP|Add10~38_combout\,
	combout => \EXP|rem~105_combout\);

-- Location: LCCOMB_X25_Y16_N24
\EXP|LessThan6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~8_combout\ = (\EXP|Add10~44_combout\) # ((\EXP|Add10~40_combout\) # (\EXP|Add10~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~44_combout\,
	datac => \EXP|Add10~40_combout\,
	datad => \EXP|Add10~46_combout\,
	combout => \EXP|LessThan6~8_combout\);

-- Location: LCCOMB_X25_Y16_N26
\EXP|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~9_combout\ = (\EXP|Add10~34_combout\) # ((\EXP|Add10~42_combout\) # ((\EXP|LessThan6~8_combout\) # (\EXP|Add10~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~34_combout\,
	datab => \EXP|Add10~42_combout\,
	datac => \EXP|LessThan6~8_combout\,
	datad => \EXP|Add10~36_combout\,
	combout => \EXP|LessThan6~9_combout\);

-- Location: LCCOMB_X23_Y17_N24
\EXP|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~11_combout\ = (!\EXP|rem~46_combout\ & !\EXP|LessThan4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|LessThan6~11_combout\);

-- Location: LCCOMB_X22_Y15_N26
\EXP|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~1_combout\ = (\EXP|Add14~44_combout\) # ((\EXP|Add14~42_combout\) # ((\EXP|Add14~40_combout\) # (\EXP|Add14~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~44_combout\,
	datab => \EXP|Add14~42_combout\,
	datac => \EXP|Add14~40_combout\,
	datad => \EXP|Add14~46_combout\,
	combout => \EXP|LessThan7~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\EXP|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~2_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~36_combout\) # ((\EXP|Add14~38_combout\) # (\EXP|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~36_combout\,
	datab => \EXP|Add14~38_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|LessThan7~1_combout\,
	combout => \EXP|LessThan7~2_combout\);

-- Location: LCCOMB_X23_Y15_N6
\EXP|rem~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~116_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~24_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~24_combout\,
	datad => \EXP|rem~95_combout\,
	combout => \EXP|rem~116_combout\);

-- Location: LCCOMB_X23_Y16_N20
\EXP|rem~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~121_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~2_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~2_combout\,
	datac => \EXP|rem~109_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~121_combout\);

-- Location: LCCOMB_X23_Y17_N6
\EXP|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~5_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~0_combout\) # ((!\EXP|LessThan6~17_combout\)))) # (!\EXP|LessThan6~15_combout\ & (((\EXP|rem~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~0_combout\,
	datab => \EXP|rem~140_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|LessThan6~17_combout\,
	combout => \EXP|LessThan7~5_combout\);

-- Location: LCCOMB_X23_Y16_N6
\EXP|LessThan7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~6_combout\ = (\EXP|rem~119_combout\ & (\EXP|rem~120_combout\ & ((\EXP|rem~121_combout\) # (\EXP|LessThan7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~121_combout\,
	datab => \EXP|rem~119_combout\,
	datac => \EXP|rem~120_combout\,
	datad => \EXP|LessThan7~5_combout\,
	combout => \EXP|LessThan7~6_combout\);

-- Location: LCCOMB_X23_Y16_N18
\EXP|rem~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~125_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~14_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|rem~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~101_combout\,
	datab => \EXP|Add14~14_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~125_combout\);

-- Location: LCCOMB_X23_Y16_N22
\EXP|rem~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~128_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~28_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~28_combout\,
	datad => \EXP|rem~97_combout\,
	combout => \EXP|rem~128_combout\);

-- Location: LCCOMB_X23_Y16_N8
\EXP|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~0_combout\ = (\EXP|rem~123_combout\) # ((\EXP|rem~124_combout\) # ((\EXP|rem~125_combout\) # (\EXP|rem~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~123_combout\,
	datab => \EXP|rem~124_combout\,
	datac => \EXP|rem~125_combout\,
	datad => \EXP|rem~119_combout\,
	combout => \EXP|LessThan8~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\EXP|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~1_combout\ = (\EXP|rem~127_combout\) # ((\EXP|rem~120_combout\) # ((\EXP|rem~121_combout\ & \EXP|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~121_combout\,
	datab => \EXP|rem~127_combout\,
	datac => \EXP|rem~120_combout\,
	datad => \EXP|LessThan7~5_combout\,
	combout => \EXP|LessThan8~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\EXP|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~2_combout\ = (\EXP|LessThan7~3_combout\ & (\EXP|rem~128_combout\ & ((\EXP|LessThan8~1_combout\) # (\EXP|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~1_combout\,
	datab => \EXP|LessThan8~0_combout\,
	datac => \EXP|LessThan7~3_combout\,
	datad => \EXP|rem~128_combout\,
	combout => \EXP|LessThan8~2_combout\);

-- Location: LCCOMB_X23_Y16_N14
\EXP|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~3_combout\ = (\EXP|rem~118_combout\) # ((\EXP|LessThan8~2_combout\ & (\EXP|rem~122_combout\ & \EXP|rem~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~2_combout\,
	datab => \EXP|rem~118_combout\,
	datac => \EXP|rem~122_combout\,
	datad => \EXP|rem~126_combout\,
	combout => \EXP|LessThan8~3_combout\);

-- Location: LCCOMB_X22_Y15_N30
\EXP|rem~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~132_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~32_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~32_combout\,
	datad => \EXP|rem~94_combout\,
	combout => \EXP|rem~132_combout\);

-- Location: LCCOMB_X23_Y17_N18
\EXP|rem~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~133_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~0_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~0_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~140_combout\,
	combout => \EXP|rem~133_combout\);

-- Location: LCCOMB_X24_Y15_N8
\EXP|rem~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~135_combout\ = \EXP|LessThan4~8_combout\ $ (\EXP|rem~46_combout\ $ (\EXP|rem~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan4~8_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|rem~135_combout\);

-- Location: LCCOMB_X22_Y13_N18
\EXP|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~5_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add16~42_combout\) # (\EXP|Add16~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add16~42_combout\,
	datac => \EXP|Add16~44_combout\,
	datad => \EXP|LessThan7~10_combout\,
	combout => \EXP|LessThan8~5_combout\);

-- Location: LCCOMB_X22_Y13_N12
\EXP|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~6_combout\ = (\EXP|LessThan8~5_combout\) # ((\EXP|LessThan7~10_combout\ & ((\EXP|Add16~52_combout\) # (\EXP|Add16~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~52_combout\,
	datab => \EXP|LessThan8~5_combout\,
	datac => \EXP|Add16~54_combout\,
	datad => \EXP|LessThan7~10_combout\,
	combout => \EXP|LessThan8~6_combout\);

-- Location: LCCOMB_X23_Y14_N0
\EXP|LessThan8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~8_combout\ = (\EXP|Add16~22_combout\) # ((\EXP|Add16~18_combout\) # ((\EXP|Add16~20_combout\) # (\EXP|Add16~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~22_combout\,
	datab => \EXP|Add16~18_combout\,
	datac => \EXP|Add16~20_combout\,
	datad => \EXP|Add16~24_combout\,
	combout => \EXP|LessThan8~8_combout\);

-- Location: LCCOMB_X23_Y15_N30
\EXP|LessThan8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~9_combout\ = (\EXP|Add16~2_combout\) # ((\EXP|Add16~0_combout\) # (\EXP|rem~92_combout\ $ (\EXP|LessThan6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~2_combout\,
	datab => \EXP|Add16~0_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|LessThan8~9_combout\);

-- Location: LCCOMB_X23_Y15_N16
\EXP|LessThan8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~10_combout\ = (\EXP|Add16~6_combout\) # ((\EXP|Add16~4_combout\ & \EXP|LessThan8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~4_combout\,
	datab => \EXP|LessThan8~9_combout\,
	datad => \EXP|Add16~6_combout\,
	combout => \EXP|LessThan8~10_combout\);

-- Location: LCCOMB_X23_Y15_N26
\EXP|LessThan8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~11_combout\ = (\EXP|Add16~12_combout\ & ((\EXP|Add16~10_combout\) # ((\EXP|Add16~8_combout\ & \EXP|LessThan8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~12_combout\,
	datab => \EXP|Add16~8_combout\,
	datac => \EXP|LessThan8~10_combout\,
	datad => \EXP|Add16~10_combout\,
	combout => \EXP|LessThan8~11_combout\);

-- Location: LCCOMB_X23_Y14_N2
\EXP|LessThan8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~12_combout\ = (\EXP|LessThan8~11_combout\) # ((\EXP|Add16~14_combout\) # ((\EXP|Add16~16_combout\) # (\EXP|LessThan8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~11_combout\,
	datab => \EXP|Add16~14_combout\,
	datac => \EXP|Add16~16_combout\,
	datad => \EXP|LessThan8~8_combout\,
	combout => \EXP|LessThan8~12_combout\);

-- Location: LCCOMB_X23_Y13_N30
\EXP|LessThan8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~13_combout\ = (\EXP|Add16~26_combout\ & (\EXP|Add16~30_combout\ & (\EXP|Add16~32_combout\ & \EXP|Add16~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add16~26_combout\,
	datab => \EXP|Add16~30_combout\,
	datac => \EXP|Add16~32_combout\,
	datad => \EXP|Add16~28_combout\,
	combout => \EXP|LessThan8~13_combout\);

-- Location: LCCOMB_X23_Y20_N30
\EXP|rem~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~136_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~2_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\SW~combout\(9)) # ((\EXP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add3~2_combout\,
	combout => \EXP|rem~136_combout\);

-- Location: LCCOMB_X25_Y15_N10
\EXP|e~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~15_combout\ = (\EXP|LessThan0~2_combout\ & (((\EXP|LessThan1~7_combout\) # (\EXP|LessThan2~4_combout\)))) # (!\EXP|LessThan0~2_combout\ & (\SW~combout\(9) & ((\EXP|LessThan1~7_combout\) # (\EXP|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan1~7_combout\,
	datad => \EXP|LessThan2~4_combout\,
	combout => \EXP|e~15_combout\);

-- Location: LCCOMB_X25_Y16_N30
\EXP|LessThan6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~16_combout\ = (\EXP|rem~92_combout\ & (((\EXP|Add10~38_combout\) # (\EXP|LessThan6~9_combout\)))) # (!\EXP|rem~92_combout\ & (\EXP|rem~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|rem~77_combout\,
	datac => \EXP|Add10~38_combout\,
	datad => \EXP|LessThan6~9_combout\,
	combout => \EXP|LessThan6~16_combout\);

-- Location: LCCOMB_X23_Y17_N30
\EXP|rem~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~140_combout\ = (\EXP|rem~92_combout\ & (((\EXP|Add10~0_combout\)))) # (!\EXP|rem~92_combout\ & (\EXP|LessThan1~7_combout\ $ ((\EXP|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~0_combout\,
	combout => \EXP|rem~140_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X20_Y18_N20
\EXP|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~2_combout\ = (\SW~combout\(8)) # ((\EXP|LessThan0~1_combout\ & (\SW~combout\(7) & \SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~1_combout\,
	datab => \SW~combout\(7),
	datac => \SW~combout\(8),
	datad => \SW~combout\(6),
	combout => \EXP|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y18_N26
\EXP|rem~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~16_combout\ = (\SW~combout\(9) & (\EXP|Add0~12_combout\)) # (!\SW~combout\(9) & ((\EXP|LessThan0~2_combout\ & (\EXP|Add0~12_combout\)) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~12_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	datad => \SW~combout\(6),
	combout => \EXP|rem~16_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X20_Y18_N24
\EXP|rem~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~15_combout\ = (\SW~combout\(9) & (\EXP|Add0~10_combout\)) # (!\SW~combout\(9) & ((\EXP|LessThan0~2_combout\ & (\EXP|Add0~10_combout\)) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~10_combout\,
	datab => \SW~combout\(9),
	datac => \SW~combout\(5),
	datad => \EXP|LessThan0~2_combout\,
	combout => \EXP|rem~15_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X20_Y18_N0
\EXP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~0_combout\ = \SW~combout\(0) $ (VCC)
-- \EXP|Add0~1\ = CARRY(\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => VCC,
	combout => \EXP|Add0~0_combout\,
	cout => \EXP|Add0~1\);

-- Location: LCCOMB_X20_Y18_N2
\EXP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~2_combout\ = (\SW~combout\(1) & (!\EXP|Add0~1\)) # (!\SW~combout\(1) & ((\EXP|Add0~1\) # (GND)))
-- \EXP|Add0~3\ = CARRY((!\EXP|Add0~1\) # (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datad => VCC,
	cin => \EXP|Add0~1\,
	combout => \EXP|Add0~2_combout\,
	cout => \EXP|Add0~3\);

-- Location: LCCOMB_X20_Y18_N4
\EXP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~4_combout\ = (\SW~combout\(2) & (\EXP|Add0~3\ $ (GND))) # (!\SW~combout\(2) & (!\EXP|Add0~3\ & VCC))
-- \EXP|Add0~5\ = CARRY((\SW~combout\(2) & !\EXP|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datad => VCC,
	cin => \EXP|Add0~3\,
	combout => \EXP|Add0~4_combout\,
	cout => \EXP|Add0~5\);

-- Location: LCCOMB_X20_Y18_N6
\EXP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~6_combout\ = (\SW~combout\(3) & (!\EXP|Add0~5\)) # (!\SW~combout\(3) & ((\EXP|Add0~5\) # (GND)))
-- \EXP|Add0~7\ = CARRY((!\EXP|Add0~5\) # (!\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(3),
	datad => VCC,
	cin => \EXP|Add0~5\,
	combout => \EXP|Add0~6_combout\,
	cout => \EXP|Add0~7\);

-- Location: LCCOMB_X20_Y18_N8
\EXP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~8_combout\ = (\SW~combout\(4) & ((GND) # (!\EXP|Add0~7\))) # (!\SW~combout\(4) & (\EXP|Add0~7\ $ (GND)))
-- \EXP|Add0~9\ = CARRY((\SW~combout\(4)) # (!\EXP|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datad => VCC,
	cin => \EXP|Add0~7\,
	combout => \EXP|Add0~8_combout\,
	cout => \EXP|Add0~9\);

-- Location: LCCOMB_X21_Y17_N12
\EXP|rem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~12_combout\ = (\SW~combout\(9) & (((\EXP|Add0~8_combout\)))) # (!\SW~combout\(9) & ((\EXP|LessThan0~2_combout\ & ((\EXP|Add0~8_combout\))) # (!\EXP|LessThan0~2_combout\ & (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add0~8_combout\,
	combout => \EXP|rem~12_combout\);

-- Location: LCCOMB_X21_Y17_N0
\EXP|rem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~14_combout\ = (\SW~combout\(9) & (((\EXP|Add0~6_combout\)))) # (!\SW~combout\(9) & ((\EXP|LessThan0~2_combout\ & ((\EXP|Add0~6_combout\))) # (!\EXP|LessThan0~2_combout\ & (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add0~6_combout\,
	combout => \EXP|rem~14_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X21_Y17_N22
\EXP|rem~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~13_combout\ = (\EXP|LessThan0~2_combout\ & (\EXP|Add0~4_combout\)) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(9) & (\EXP|Add0~4_combout\)) # (!\SW~combout\(9) & ((\SW~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \EXP|Add0~4_combout\,
	datac => \SW~combout\(9),
	datad => \SW~combout\(2),
	combout => \EXP|rem~13_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X20_Y18_N28
\EXP|rem~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~17_combout\ = (\EXP|LessThan0~2_combout\ & (\EXP|Add0~2_combout\)) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(9) & (\EXP|Add0~2_combout\)) # (!\SW~combout\(9) & ((\SW~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \EXP|Add0~2_combout\,
	datac => \SW~combout\(9),
	datad => \SW~combout\(1),
	combout => \EXP|rem~17_combout\);

-- Location: LCCOMB_X20_Y18_N22
\EXP|rem~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~18_combout\ = (\SW~combout\(9) & (\EXP|Add0~0_combout\)) # (!\SW~combout\(9) & ((\EXP|LessThan0~2_combout\ & (\EXP|Add0~0_combout\)) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|Add0~0_combout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \SW~combout\(0),
	combout => \EXP|rem~18_combout\);

-- Location: LCCOMB_X21_Y18_N0
\EXP|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~1_cout\ = CARRY((\EXP|LessThan0~2_combout\) # (\SW~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cout => \EXP|Add2~1_cout\);

-- Location: LCCOMB_X21_Y18_N2
\EXP|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~3_cout\ = CARRY((!\EXP|LessThan0~2_combout\ & (!\SW~combout\(9) & !\EXP|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add2~1_cout\,
	cout => \EXP|Add2~3_cout\);

-- Location: LCCOMB_X21_Y18_N4
\EXP|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~5_cout\ = CARRY((!\EXP|Add2~3_cout\ & ((\EXP|LessThan0~2_combout\) # (\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add2~3_cout\,
	cout => \EXP|Add2~5_cout\);

-- Location: LCCOMB_X21_Y18_N6
\EXP|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~6_combout\ = (\EXP|rem~18_combout\ & (\EXP|Add2~5_cout\ & VCC)) # (!\EXP|rem~18_combout\ & (!\EXP|Add2~5_cout\))
-- \EXP|Add2~7\ = CARRY((!\EXP|rem~18_combout\ & !\EXP|Add2~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~18_combout\,
	datad => VCC,
	cin => \EXP|Add2~5_cout\,
	combout => \EXP|Add2~6_combout\,
	cout => \EXP|Add2~7\);

-- Location: LCCOMB_X21_Y18_N10
\EXP|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~10_combout\ = (\EXP|rem~13_combout\ & (!\EXP|Add2~9\)) # (!\EXP|rem~13_combout\ & ((\EXP|Add2~9\) # (GND)))
-- \EXP|Add2~11\ = CARRY((!\EXP|Add2~9\) # (!\EXP|rem~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~13_combout\,
	datad => VCC,
	cin => \EXP|Add2~9\,
	combout => \EXP|Add2~10_combout\,
	cout => \EXP|Add2~11\);

-- Location: LCCOMB_X21_Y18_N14
\EXP|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~14_combout\ = (\EXP|rem~12_combout\ & (\EXP|Add2~13\ & VCC)) # (!\EXP|rem~12_combout\ & (!\EXP|Add2~13\))
-- \EXP|Add2~15\ = CARRY((!\EXP|rem~12_combout\ & !\EXP|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~12_combout\,
	datad => VCC,
	cin => \EXP|Add2~13\,
	combout => \EXP|Add2~14_combout\,
	cout => \EXP|Add2~15\);

-- Location: LCCOMB_X21_Y18_N16
\EXP|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~16_combout\ = (\EXP|rem~15_combout\ & ((GND) # (!\EXP|Add2~15\))) # (!\EXP|rem~15_combout\ & (\EXP|Add2~15\ $ (GND)))
-- \EXP|Add2~17\ = CARRY((\EXP|rem~15_combout\) # (!\EXP|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~15_combout\,
	datad => VCC,
	cin => \EXP|Add2~15\,
	combout => \EXP|Add2~16_combout\,
	cout => \EXP|Add2~17\);

-- Location: LCCOMB_X21_Y18_N18
\EXP|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~18_combout\ = (\EXP|rem~16_combout\ & (\EXP|Add2~17\ & VCC)) # (!\EXP|rem~16_combout\ & (!\EXP|Add2~17\))
-- \EXP|Add2~19\ = CARRY((!\EXP|rem~16_combout\ & !\EXP|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~16_combout\,
	datad => VCC,
	cin => \EXP|Add2~17\,
	combout => \EXP|Add2~18_combout\,
	cout => \EXP|Add2~19\);

-- Location: LCCOMB_X20_Y18_N14
\EXP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~14_combout\ = (\SW~combout\(7) & (!\EXP|Add0~13\)) # (!\SW~combout\(7) & ((\EXP|Add0~13\) # (GND)))
-- \EXP|Add0~15\ = CARRY((!\EXP|Add0~13\) # (!\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(7),
	datad => VCC,
	cin => \EXP|Add0~13\,
	combout => \EXP|Add0~14_combout\,
	cout => \EXP|Add0~15\);

-- Location: LCCOMB_X20_Y18_N18
\EXP|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~18_combout\ = \EXP|Add0~17\ $ (!\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	cin => \EXP|Add0~17\,
	combout => \EXP|Add0~18_combout\);

-- Location: LCCOMB_X22_Y20_N8
\EXP|rem~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~22_combout\ = (\EXP|Add0~18_combout\ & ((\EXP|LessThan0~2_combout\) # (\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datac => \SW~combout\(9),
	datad => \EXP|Add0~18_combout\,
	combout => \EXP|rem~22_combout\);

-- Location: LCCOMB_X21_Y18_N26
\EXP|rem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~10_combout\ = (\EXP|Add0~16_combout\ & ((\SW~combout\(9)) # (\EXP|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~16_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	combout => \EXP|rem~10_combout\);

-- Location: LCCOMB_X20_Y18_N30
\EXP|rem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~11_combout\ = (\EXP|LessThan0~2_combout\ & (((\EXP|Add0~14_combout\)))) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(9) & (\EXP|Add0~14_combout\)) # (!\SW~combout\(9) & ((\SW~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|Add0~14_combout\,
	datad => \SW~combout\(7),
	combout => \EXP|rem~11_combout\);

-- Location: LCCOMB_X22_Y18_N0
\EXP|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~4_combout\ = (\EXP|rem~15_combout\) # (\EXP|rem~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~15_combout\,
	datac => \EXP|rem~16_combout\,
	combout => \EXP|LessThan1~4_combout\);

-- Location: LCCOMB_X22_Y18_N10
\EXP|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~5_combout\ = (\EXP|rem~10_combout\) # ((\EXP|rem~11_combout\ & ((\EXP|LessThan1~3_combout\) # (\EXP|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~3_combout\,
	datab => \EXP|rem~10_combout\,
	datac => \EXP|rem~11_combout\,
	datad => \EXP|LessThan1~4_combout\,
	combout => \EXP|LessThan1~5_combout\);

-- Location: LCCOMB_X22_Y18_N12
\EXP|rem~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~25_combout\ = (\EXP|rem~22_combout\ & (((\EXP|Add2~18_combout\)))) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & ((\EXP|Add2~18_combout\))) # (!\EXP|LessThan1~5_combout\ & (\EXP|rem~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~16_combout\,
	datab => \EXP|Add2~18_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~25_combout\);

-- Location: LCCOMB_X22_Y20_N0
\EXP|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~7_combout\ = (\EXP|LessThan1~5_combout\) # ((\EXP|Add0~18_combout\ & ((\EXP|LessThan0~2_combout\) # (\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \EXP|LessThan1~5_combout\,
	datac => \SW~combout\(9),
	datad => \EXP|Add0~18_combout\,
	combout => \EXP|LessThan1~7_combout\);

-- Location: LCCOMB_X21_Y17_N24
\EXP|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~3_combout\ = (\EXP|rem~25_combout\ & ((\EXP|LessThan1~7_combout\ & ((\EXP|Add2~14_combout\))) # (!\EXP|LessThan1~7_combout\ & (\EXP|rem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~12_combout\,
	datab => \EXP|rem~25_combout\,
	datac => \EXP|Add2~14_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|LessThan2~3_combout\);

-- Location: LCCOMB_X21_Y17_N14
\EXP|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan1~6_combout\ = (!\SW~combout\(9) & (!\EXP|LessThan0~2_combout\ & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	datad => \SW~combout\(0),
	combout => \EXP|LessThan1~6_combout\);

-- Location: LCCOMB_X22_Y18_N14
\EXP|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~1_combout\ = (\EXP|LessThan1~5_combout\ & (\EXP|Add2~6_combout\)) # (!\EXP|LessThan1~5_combout\ & ((\EXP|rem~22_combout\ & (\EXP|Add2~6_combout\)) # (!\EXP|rem~22_combout\ & ((!\EXP|LessThan1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~5_combout\,
	datab => \EXP|Add2~6_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~6_combout\,
	combout => \EXP|LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y18_N30
\EXP|rem~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~27_combout\ = (\EXP|LessThan1~5_combout\ & (\EXP|Add2~12_combout\)) # (!\EXP|LessThan1~5_combout\ & ((\EXP|rem~22_combout\ & (\EXP|Add2~12_combout\)) # (!\EXP|rem~22_combout\ & ((\EXP|rem~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~12_combout\,
	datab => \EXP|rem~14_combout\,
	datac => \EXP|LessThan1~5_combout\,
	datad => \EXP|rem~22_combout\,
	combout => \EXP|rem~27_combout\);

-- Location: LCCOMB_X22_Y18_N26
\EXP|rem~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~28_combout\ = (\EXP|rem~22_combout\ & (\EXP|Add2~8_combout\)) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & (\EXP|Add2~8_combout\)) # (!\EXP|LessThan1~5_combout\ & ((\EXP|rem~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~8_combout\,
	datab => \EXP|rem~17_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~28_combout\);

-- Location: LCCOMB_X22_Y18_N16
\EXP|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~2_combout\ = (\EXP|rem~27_combout\ & ((\EXP|rem~29_combout\) # ((\EXP|LessThan2~1_combout\) # (\EXP|rem~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~29_combout\,
	datab => \EXP|LessThan2~1_combout\,
	datac => \EXP|rem~27_combout\,
	datad => \EXP|rem~28_combout\,
	combout => \EXP|LessThan2~2_combout\);

-- Location: LCCOMB_X23_Y20_N24
\EXP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~3_combout\ = (\SW~combout\(9)) # (\EXP|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	combout => \EXP|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y18_N24
\EXP|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~24_combout\ = \EXP|Add2~23\ $ (((\EXP|Add0~18_combout\ & \EXP|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add0~18_combout\,
	datad => \EXP|LessThan0~3_combout\,
	cin => \EXP|Add2~23\,
	combout => \EXP|Add2~24_combout\);

-- Location: LCCOMB_X21_Y18_N28
\EXP|rem~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~19_combout\ = (\EXP|Add0~16_combout\ & ((\SW~combout\(9)) # ((\EXP|LessThan0~2_combout\)))) # (!\EXP|Add0~16_combout\ & (\EXP|Add0~18_combout\ & ((\SW~combout\(9)) # (\EXP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~16_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add0~18_combout\,
	combout => \EXP|rem~19_combout\);

-- Location: LCCOMB_X22_Y18_N4
\EXP|rem~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~20_combout\ = (\EXP|rem~19_combout\) # ((\EXP|rem~11_combout\ & ((\EXP|LessThan1~3_combout\) # (\EXP|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~3_combout\,
	datab => \EXP|rem~19_combout\,
	datac => \EXP|rem~11_combout\,
	datad => \EXP|LessThan1~4_combout\,
	combout => \EXP|rem~20_combout\);

-- Location: LCCOMB_X22_Y18_N6
\EXP|rem~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~21_combout\ = (\EXP|Add2~24_combout\ & \EXP|rem~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add2~24_combout\,
	datac => \EXP|rem~20_combout\,
	combout => \EXP|rem~21_combout\);

-- Location: LCCOMB_X22_Y18_N18
\EXP|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~4_combout\ = (\EXP|LessThan2~0_combout\) # ((\EXP|rem~21_combout\) # ((\EXP|LessThan2~3_combout\ & \EXP|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~0_combout\,
	datab => \EXP|LessThan2~3_combout\,
	datac => \EXP|LessThan2~2_combout\,
	datad => \EXP|rem~21_combout\,
	combout => \EXP|LessThan2~4_combout\);

-- Location: LCCOMB_X22_Y18_N30
\EXP|rem~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~31_combout\ = (\EXP|rem~22_combout\ & (((\EXP|Add2~6_combout\)))) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & ((\EXP|Add2~6_combout\))) # (!\EXP|LessThan1~5_combout\ & (\EXP|rem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~18_combout\,
	datab => \EXP|Add2~6_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~31_combout\);

-- Location: LCCOMB_X23_Y18_N18
\EXP|rem~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~40_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~26_combout\)) # (!\EXP|LessThan2~4_combout\ & ((\EXP|rem~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~26_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~31_combout\,
	combout => \EXP|rem~40_combout\);

-- Location: LCCOMB_X22_Y20_N10
\EXP|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~1_cout\ = CARRY((\EXP|rem~22_combout\) # (\EXP|LessThan1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~22_combout\,
	datab => \EXP|LessThan1~5_combout\,
	datad => VCC,
	cout => \EXP|Add3~1_cout\);

-- Location: LCCOMB_X22_Y20_N16
\EXP|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~6_combout\ = (\EXP|LessThan1~7_combout\ & (((!\EXP|Add3~5\)))) # (!\EXP|LessThan1~7_combout\ & ((\EXP|LessThan0~3_combout\ & (\EXP|Add3~5\ & VCC)) # (!\EXP|LessThan0~3_combout\ & (!\EXP|Add3~5\))))
-- \EXP|Add3~7\ = CARRY((!\EXP|Add3~5\ & ((\EXP|LessThan1~7_combout\) # (!\EXP|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~5\,
	combout => \EXP|Add3~6_combout\,
	cout => \EXP|Add3~7\);

-- Location: LCCOMB_X22_Y20_N18
\EXP|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~8_combout\ = (\EXP|Add3~7\ & ((((\EXP|LessThan1~7_combout\) # (\EXP|LessThan0~3_combout\))))) # (!\EXP|Add3~7\ & ((\EXP|LessThan1~7_combout\) # ((\EXP|LessThan0~3_combout\) # (GND))))
-- \EXP|Add3~9\ = CARRY((\EXP|LessThan1~7_combout\) # ((\EXP|LessThan0~3_combout\) # (!\EXP|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~7\,
	combout => \EXP|Add3~8_combout\,
	cout => \EXP|Add3~9\);

-- Location: LCCOMB_X22_Y20_N20
\EXP|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~10_combout\ = (\EXP|Add3~9\ & ((\EXP|LessThan1~7_combout\) # ((!\EXP|LessThan0~3_combout\)))) # (!\EXP|Add3~9\ & (((!\EXP|LessThan1~7_combout\ & \EXP|LessThan0~3_combout\)) # (GND)))
-- \EXP|Add3~11\ = CARRY((\EXP|LessThan1~7_combout\) # ((!\EXP|Add3~9\) # (!\EXP|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~9\,
	combout => \EXP|Add3~10_combout\,
	cout => \EXP|Add3~11\);

-- Location: LCCOMB_X22_Y20_N22
\EXP|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~12_combout\ = (\EXP|Add3~11\ & ((((\EXP|LessThan1~7_combout\ & \EXP|LessThan0~3_combout\))))) # (!\EXP|Add3~11\ & (((\EXP|LessThan1~7_combout\ & \EXP|LessThan0~3_combout\)) # (GND)))
-- \EXP|Add3~13\ = CARRY(((\EXP|LessThan1~7_combout\ & \EXP|LessThan0~3_combout\)) # (!\EXP|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~11\,
	combout => \EXP|Add3~12_combout\,
	cout => \EXP|Add3~13\);

-- Location: LCCOMB_X22_Y20_N24
\EXP|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~14_combout\ = (\EXP|Add3~13\ & (((\EXP|LessThan0~2_combout\) # (\SW~combout\(9))))) # (!\EXP|Add3~13\ & (!\EXP|LessThan0~2_combout\ & (!\SW~combout\(9))))
-- \EXP|Add3~15\ = CARRY((!\EXP|LessThan0~2_combout\ & (!\SW~combout\(9) & !\EXP|Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add3~13\,
	combout => \EXP|Add3~14_combout\,
	cout => \EXP|Add3~15\);

-- Location: LCCOMB_X22_Y20_N26
\EXP|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~16_combout\ = (\EXP|Add3~15\ & (((\EXP|LessThan0~2_combout\) # (\SW~combout\(9))))) # (!\EXP|Add3~15\ & ((((\EXP|LessThan0~2_combout\) # (\SW~combout\(9))))))
-- \EXP|Add3~17\ = CARRY((!\EXP|Add3~15\ & ((\EXP|LessThan0~2_combout\) # (\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add3~15\,
	combout => \EXP|Add3~16_combout\,
	cout => \EXP|Add3~17\);

-- Location: LCCOMB_X22_Y20_N28
\EXP|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~18_combout\ = (\EXP|LessThan0~2_combout\ & (((!\EXP|Add3~17\)))) # (!\EXP|LessThan0~2_combout\ & ((\SW~combout\(9) & (!\EXP|Add3~17\)) # (!\SW~combout\(9) & ((\EXP|Add3~17\) # (GND)))))
-- \EXP|Add3~19\ = CARRY(((!\EXP|LessThan0~2_combout\ & !\SW~combout\(9))) # (!\EXP|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \EXP|Add3~17\,
	combout => \EXP|Add3~18_combout\,
	cout => \EXP|Add3~19\);

-- Location: LCCOMB_X22_Y20_N30
\EXP|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~20_combout\ = (\EXP|Add3~19\ & ((\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\)))) # (!\EXP|Add3~19\ & (\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\ $ (VCC))))
-- \EXP|Add3~21\ = CARRY((!\EXP|Add3~19\ & (\EXP|LessThan1~7_combout\ $ (\EXP|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan0~3_combout\,
	datad => VCC,
	cin => \EXP|Add3~19\,
	combout => \EXP|Add3~20_combout\,
	cout => \EXP|Add3~21\);

-- Location: LCCOMB_X23_Y18_N0
\EXP|rem~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~39_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~20_combout\)))) # (!\EXP|LessThan2~4_combout\ & (\EXP|LessThan0~3_combout\ $ (((\EXP|LessThan1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add3~20_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|rem~39_combout\);

-- Location: LCCOMB_X23_Y18_N22
\EXP|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~0_combout\ = (\EXP|rem~41_combout\ & (\EXP|rem~40_combout\ & \EXP|rem~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~41_combout\,
	datab => \EXP|rem~40_combout\,
	datad => \EXP|rem~39_combout\,
	combout => \EXP|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\EXP|rem~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~26_combout\ = (\EXP|rem~22_combout\ & (((\EXP|Add2~16_combout\)))) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & ((\EXP|Add2~16_combout\))) # (!\EXP|LessThan1~5_combout\ & (\EXP|rem~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~15_combout\,
	datab => \EXP|Add2~16_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~26_combout\);

-- Location: LCCOMB_X22_Y18_N28
\EXP|rem~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~30_combout\ = (\EXP|rem~22_combout\ & (((\EXP|Add2~14_combout\)))) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & ((\EXP|Add2~14_combout\))) # (!\EXP|LessThan1~5_combout\ & (\EXP|rem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~12_combout\,
	datab => \EXP|Add2~14_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~30_combout\);

-- Location: LCCOMB_X22_Y18_N20
\EXP|rem~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~29_combout\ = (\EXP|rem~22_combout\ & (((\EXP|Add2~10_combout\)))) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & ((\EXP|Add2~10_combout\))) # (!\EXP|LessThan1~5_combout\ & (\EXP|rem~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~13_combout\,
	datab => \EXP|Add2~10_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~29_combout\);

-- Location: LCCOMB_X22_Y19_N0
\EXP|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~22_combout\ = (\EXP|Add3~21\ & (((\EXP|LessThan0~3_combout\) # (\EXP|LessThan1~7_combout\)))) # (!\EXP|Add3~21\ & (!\EXP|LessThan0~3_combout\ & (!\EXP|LessThan1~7_combout\)))
-- \EXP|Add3~23\ = CARRY((!\EXP|LessThan0~3_combout\ & (!\EXP|LessThan1~7_combout\ & !\EXP|Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|LessThan1~7_combout\,
	datad => VCC,
	cin => \EXP|Add3~21\,
	combout => \EXP|Add3~22_combout\,
	cout => \EXP|Add3~23\);

-- Location: LCCOMB_X22_Y19_N8
\EXP|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~30_combout\ = (\EXP|rem~29_combout\ & (\EXP|Add3~29\ & VCC)) # (!\EXP|rem~29_combout\ & (!\EXP|Add3~29\))
-- \EXP|Add3~31\ = CARRY((!\EXP|rem~29_combout\ & !\EXP|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~29_combout\,
	datad => VCC,
	cin => \EXP|Add3~29\,
	combout => \EXP|Add3~30_combout\,
	cout => \EXP|Add3~31\);

-- Location: LCCOMB_X22_Y19_N10
\EXP|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~32_combout\ = (\EXP|rem~27_combout\ & (\EXP|Add3~31\ $ (GND))) # (!\EXP|rem~27_combout\ & (!\EXP|Add3~31\ & VCC))
-- \EXP|Add3~33\ = CARRY((\EXP|rem~27_combout\ & !\EXP|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~27_combout\,
	datad => VCC,
	cin => \EXP|Add3~31\,
	combout => \EXP|Add3~32_combout\,
	cout => \EXP|Add3~33\);

-- Location: LCCOMB_X22_Y19_N12
\EXP|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~34_combout\ = (\EXP|rem~30_combout\ & (!\EXP|Add3~33\)) # (!\EXP|rem~30_combout\ & ((\EXP|Add3~33\) # (GND)))
-- \EXP|Add3~35\ = CARRY((!\EXP|Add3~33\) # (!\EXP|rem~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~30_combout\,
	datad => VCC,
	cin => \EXP|Add3~33\,
	combout => \EXP|Add3~34_combout\,
	cout => \EXP|Add3~35\);

-- Location: LCCOMB_X22_Y19_N14
\EXP|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~36_combout\ = (\EXP|rem~26_combout\ & ((GND) # (!\EXP|Add3~35\))) # (!\EXP|rem~26_combout\ & (\EXP|Add3~35\ $ (GND)))
-- \EXP|Add3~37\ = CARRY((\EXP|rem~26_combout\) # (!\EXP|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~26_combout\,
	datad => VCC,
	cin => \EXP|Add3~35\,
	combout => \EXP|Add3~36_combout\,
	cout => \EXP|Add3~37\);

-- Location: LCCOMB_X22_Y19_N16
\EXP|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~38_combout\ = (\EXP|rem~25_combout\ & (!\EXP|Add3~37\)) # (!\EXP|rem~25_combout\ & ((\EXP|Add3~37\) # (GND)))
-- \EXP|Add3~39\ = CARRY((!\EXP|Add3~37\) # (!\EXP|rem~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~25_combout\,
	datad => VCC,
	cin => \EXP|Add3~37\,
	combout => \EXP|Add3~38_combout\,
	cout => \EXP|Add3~39\);

-- Location: LCCOMB_X22_Y18_N2
\EXP|rem~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~24_combout\ = (\EXP|rem~22_combout\ & (\EXP|Add2~20_combout\)) # (!\EXP|rem~22_combout\ & ((\EXP|LessThan1~5_combout\ & (\EXP|Add2~20_combout\)) # (!\EXP|LessThan1~5_combout\ & ((\EXP|rem~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~20_combout\,
	datab => \EXP|rem~11_combout\,
	datac => \EXP|rem~22_combout\,
	datad => \EXP|LessThan1~5_combout\,
	combout => \EXP|rem~24_combout\);

-- Location: LCCOMB_X22_Y19_N18
\EXP|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~40_combout\ = (\EXP|rem~24_combout\ & ((GND) # (!\EXP|Add3~39\))) # (!\EXP|rem~24_combout\ & (\EXP|Add3~39\ $ (GND)))
-- \EXP|Add3~41\ = CARRY((\EXP|rem~24_combout\) # (!\EXP|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~24_combout\,
	datad => VCC,
	cin => \EXP|Add3~39\,
	combout => \EXP|Add3~40_combout\,
	cout => \EXP|Add3~41\);

-- Location: LCCOMB_X22_Y19_N26
\EXP|rem~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~37_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~38_combout\) # (\EXP|Add3~40_combout\)))) # (!\EXP|LessThan2~4_combout\ & (\EXP|rem~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~25_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add3~38_combout\,
	datad => \EXP|Add3~40_combout\,
	combout => \EXP|rem~37_combout\);

-- Location: LCCOMB_X22_Y19_N20
\EXP|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~42_combout\ = (\EXP|Add2~22_combout\ & ((\EXP|LessThan1~7_combout\ & (\EXP|Add3~41\ & VCC)) # (!\EXP|LessThan1~7_combout\ & (!\EXP|Add3~41\)))) # (!\EXP|Add2~22_combout\ & (((!\EXP|Add3~41\))))
-- \EXP|Add3~43\ = CARRY((!\EXP|Add3~41\ & ((!\EXP|LessThan1~7_combout\) # (!\EXP|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~22_combout\,
	datab => \EXP|LessThan1~7_combout\,
	datad => VCC,
	cin => \EXP|Add3~41\,
	combout => \EXP|Add3~42_combout\,
	cout => \EXP|Add3~43\);

-- Location: LCCOMB_X22_Y19_N22
\EXP|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~44_combout\ = \EXP|Add3~43\ $ (((\EXP|Add2~24_combout\ & \EXP|rem~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~24_combout\,
	datad => \EXP|rem~20_combout\,
	cin => \EXP|Add3~43\,
	combout => \EXP|Add3~44_combout\);

-- Location: LCCOMB_X22_Y19_N28
\EXP|rem~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~38_combout\ = (\EXP|rem~37_combout\) # ((\EXP|LessThan2~4_combout\ & ((\EXP|Add3~42_combout\) # (\EXP|Add3~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datab => \EXP|rem~37_combout\,
	datac => \EXP|Add3~42_combout\,
	datad => \EXP|Add3~44_combout\,
	combout => \EXP|rem~38_combout\);

-- Location: LCCOMB_X22_Y20_N4
\EXP|rem~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~43_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~6_combout\)))) # (!\EXP|LessThan2~4_combout\ & (!\EXP|LessThan1~7_combout\ & ((\EXP|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add3~6_combout\,
	datad => \EXP|LessThan0~3_combout\,
	combout => \EXP|rem~43_combout\);

-- Location: LCCOMB_X22_Y20_N2
\EXP|rem~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~42_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~12_combout\)))) # (!\EXP|LessThan2~4_combout\ & (\EXP|LessThan1~7_combout\ & ((\EXP|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|Add3~12_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|LessThan0~3_combout\,
	combout => \EXP|rem~42_combout\);

-- Location: LCCOMB_X23_Y20_N10
\EXP|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~4_combout\ = (\EXP|Add3~14_combout\ & ((\EXP|Add3~10_combout\) # (\EXP|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add3~14_combout\,
	datac => \EXP|Add3~10_combout\,
	datad => \EXP|Add3~8_combout\,
	combout => \EXP|LessThan3~4_combout\);

-- Location: LCCOMB_X23_Y20_N20
\EXP|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~5_combout\ = (\EXP|Add3~18_combout\) # ((\EXP|rem~42_combout\ & \EXP|LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add3~18_combout\,
	datac => \EXP|rem~42_combout\,
	datad => \EXP|LessThan3~4_combout\,
	combout => \EXP|LessThan3~5_combout\);

-- Location: LCCOMB_X23_Y20_N22
\EXP|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~6_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~16_combout\) # (\EXP|LessThan3~5_combout\)))) # (!\EXP|LessThan2~4_combout\ & (\EXP|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datab => \EXP|Add3~16_combout\,
	datac => \EXP|LessThan3~5_combout\,
	datad => \EXP|LessThan2~4_combout\,
	combout => \EXP|LessThan3~6_combout\);

-- Location: LCCOMB_X23_Y18_N8
\EXP|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~1_combout\ = (!\EXP|LessThan1~7_combout\ & (\EXP|rem~30_combout\ & (\EXP|LessThan0~3_combout\ & \EXP|rem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|rem~30_combout\,
	datac => \EXP|LessThan0~3_combout\,
	datad => \EXP|rem~26_combout\,
	combout => \EXP|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y18_N10
\EXP|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~2_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~24_combout\ & ((\EXP|Add3~22_combout\)))) # (!\EXP|LessThan2~4_combout\ & (((\EXP|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~24_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan3~1_combout\,
	datad => \EXP|Add3~22_combout\,
	combout => \EXP|LessThan3~2_combout\);

-- Location: LCCOMB_X23_Y19_N0
\EXP|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~3_combout\ = (\EXP|LessThan3~2_combout\ & (((\EXP|Add3~34_combout\ & \EXP|Add3~36_combout\)) # (!\EXP|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~34_combout\,
	datab => \EXP|LessThan3~2_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add3~36_combout\,
	combout => \EXP|LessThan3~3_combout\);

-- Location: LCCOMB_X23_Y19_N2
\EXP|LessThan3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~8_combout\ = (\EXP|LessThan3~3_combout\ & ((\EXP|LessThan3~6_combout\) # ((\EXP|LessThan3~7_combout\ & \EXP|rem~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan3~7_combout\,
	datab => \EXP|rem~43_combout\,
	datac => \EXP|LessThan3~6_combout\,
	datad => \EXP|LessThan3~3_combout\,
	combout => \EXP|LessThan3~8_combout\);

-- Location: LCCOMB_X23_Y19_N20
\EXP|rem~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~46_combout\ = (\EXP|rem~36_combout\) # ((\EXP|rem~38_combout\) # ((\EXP|LessThan3~0_combout\ & \EXP|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~36_combout\,
	datab => \EXP|LessThan3~0_combout\,
	datac => \EXP|rem~38_combout\,
	datad => \EXP|LessThan3~8_combout\,
	combout => \EXP|rem~46_combout\);

-- Location: LCCOMB_X23_Y20_N16
\EXP|rem~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~137_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~18_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\SW~combout\(9)) # ((\EXP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add3~18_combout\,
	combout => \EXP|rem~137_combout\);

-- Location: LCCOMB_X23_Y20_N18
\EXP|rem~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~138_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~16_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\SW~combout\(9)) # ((\EXP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add3~16_combout\,
	combout => \EXP|rem~138_combout\);

-- Location: LCCOMB_X23_Y20_N28
\EXP|rem~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~139_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|Add3~14_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\SW~combout\(9)) # ((\EXP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|Add3~14_combout\,
	combout => \EXP|rem~139_combout\);

-- Location: LCCOMB_X23_Y20_N4
\EXP|rem~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~49_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~10_combout\)) # (!\EXP|LessThan2~4_combout\ & (((\EXP|LessThan0~3_combout\ & !\EXP|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~10_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~3_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|rem~49_combout\);

-- Location: LCCOMB_X24_Y20_N14
\EXP|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~4_combout\ = (\EXP|rem~45_combout\ & ((GND) # (!\EXP|Add4~3\))) # (!\EXP|rem~45_combout\ & (\EXP|Add4~3\ $ (GND)))
-- \EXP|Add4~5\ = CARRY((\EXP|rem~45_combout\) # (!\EXP|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~45_combout\,
	datad => VCC,
	cin => \EXP|Add4~3\,
	combout => \EXP|Add4~4_combout\,
	cout => \EXP|Add4~5\);

-- Location: LCCOMB_X24_Y20_N16
\EXP|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~6_combout\ = (\EXP|rem~43_combout\ & (!\EXP|Add4~5\)) # (!\EXP|rem~43_combout\ & ((\EXP|Add4~5\) # (GND)))
-- \EXP|Add4~7\ = CARRY((!\EXP|Add4~5\) # (!\EXP|rem~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~43_combout\,
	datad => VCC,
	cin => \EXP|Add4~5\,
	combout => \EXP|Add4~6_combout\,
	cout => \EXP|Add4~7\);

-- Location: LCCOMB_X24_Y20_N18
\EXP|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~8_combout\ = (\EXP|rem~50_combout\ & ((GND) # (!\EXP|Add4~7\))) # (!\EXP|rem~50_combout\ & (\EXP|Add4~7\ $ (GND)))
-- \EXP|Add4~9\ = CARRY((\EXP|rem~50_combout\) # (!\EXP|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~50_combout\,
	datad => VCC,
	cin => \EXP|Add4~7\,
	combout => \EXP|Add4~8_combout\,
	cout => \EXP|Add4~9\);

-- Location: LCCOMB_X24_Y20_N20
\EXP|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~10_combout\ = (\EXP|rem~49_combout\ & (\EXP|Add4~9\ & VCC)) # (!\EXP|rem~49_combout\ & (!\EXP|Add4~9\))
-- \EXP|Add4~11\ = CARRY((!\EXP|rem~49_combout\ & !\EXP|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~49_combout\,
	datad => VCC,
	cin => \EXP|Add4~9\,
	combout => \EXP|Add4~10_combout\,
	cout => \EXP|Add4~11\);

-- Location: LCCOMB_X24_Y20_N22
\EXP|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~12_combout\ = (\EXP|rem~42_combout\ & (\EXP|Add4~11\ $ (GND))) # (!\EXP|rem~42_combout\ & (!\EXP|Add4~11\ & VCC))
-- \EXP|Add4~13\ = CARRY((\EXP|rem~42_combout\ & !\EXP|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~42_combout\,
	datad => VCC,
	cin => \EXP|Add4~11\,
	combout => \EXP|Add4~12_combout\,
	cout => \EXP|Add4~13\);

-- Location: LCCOMB_X24_Y20_N24
\EXP|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~14_combout\ = (\EXP|rem~139_combout\ & (!\EXP|Add4~13\)) # (!\EXP|rem~139_combout\ & ((\EXP|Add4~13\) # (GND)))
-- \EXP|Add4~15\ = CARRY((!\EXP|Add4~13\) # (!\EXP|rem~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~139_combout\,
	datad => VCC,
	cin => \EXP|Add4~13\,
	combout => \EXP|Add4~14_combout\,
	cout => \EXP|Add4~15\);

-- Location: LCCOMB_X24_Y20_N26
\EXP|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~16_combout\ = (\EXP|rem~138_combout\ & ((GND) # (!\EXP|Add4~15\))) # (!\EXP|rem~138_combout\ & (\EXP|Add4~15\ $ (GND)))
-- \EXP|Add4~17\ = CARRY((\EXP|rem~138_combout\) # (!\EXP|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~138_combout\,
	datad => VCC,
	cin => \EXP|Add4~15\,
	combout => \EXP|Add4~16_combout\,
	cout => \EXP|Add4~17\);

-- Location: LCCOMB_X24_Y20_N28
\EXP|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~18_combout\ = (\EXP|rem~137_combout\ & (\EXP|Add4~17\ & VCC)) # (!\EXP|rem~137_combout\ & (!\EXP|Add4~17\))
-- \EXP|Add4~19\ = CARRY((!\EXP|rem~137_combout\ & !\EXP|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~137_combout\,
	datad => VCC,
	cin => \EXP|Add4~17\,
	combout => \EXP|Add4~18_combout\,
	cout => \EXP|Add4~19\);

-- Location: LCCOMB_X23_Y20_N12
\EXP|rem~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~69_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~18_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~137_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~18_combout\,
	combout => \EXP|rem~69_combout\);

-- Location: LCCOMB_X24_Y20_N8
\EXP|rem~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~63_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~16_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~138_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~16_combout\,
	combout => \EXP|rem~63_combout\);

-- Location: LCCOMB_X24_Y20_N6
\EXP|rem~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~62_combout\ = (\EXP|rem~46_combout\ & (\EXP|Add4~14_combout\)) # (!\EXP|rem~46_combout\ & ((\EXP|rem~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add4~14_combout\,
	datad => \EXP|rem~139_combout\,
	combout => \EXP|rem~62_combout\);

-- Location: LCCOMB_X24_Y20_N4
\EXP|rem~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~61_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~12_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|rem~42_combout\,
	datad => \EXP|Add4~12_combout\,
	combout => \EXP|rem~61_combout\);

-- Location: LCCOMB_X24_Y20_N2
\EXP|rem~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~59_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~8_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~50_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~8_combout\,
	combout => \EXP|rem~59_combout\);

-- Location: LCCOMB_X23_Y19_N12
\EXP|rem~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~58_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~6_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~43_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~6_combout\,
	combout => \EXP|rem~58_combout\);

-- Location: LCCOMB_X24_Y20_N0
\EXP|rem~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~57_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~4_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~45_combout\,
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add4~4_combout\,
	combout => \EXP|rem~57_combout\);

-- Location: LCCOMB_X24_Y17_N12
\EXP|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~2_combout\ = (\EXP|rem~56_combout\ & (!\EXP|Add7~1\)) # (!\EXP|rem~56_combout\ & ((\EXP|Add7~1\) # (GND)))
-- \EXP|Add7~3\ = CARRY((!\EXP|Add7~1\) # (!\EXP|rem~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~56_combout\,
	datad => VCC,
	cin => \EXP|Add7~1\,
	combout => \EXP|Add7~2_combout\,
	cout => \EXP|Add7~3\);

-- Location: LCCOMB_X24_Y17_N14
\EXP|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~4_combout\ = (\EXP|rem~57_combout\ & (\EXP|Add7~3\ $ (GND))) # (!\EXP|rem~57_combout\ & (!\EXP|Add7~3\ & VCC))
-- \EXP|Add7~5\ = CARRY((\EXP|rem~57_combout\ & !\EXP|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~57_combout\,
	datad => VCC,
	cin => \EXP|Add7~3\,
	combout => \EXP|Add7~4_combout\,
	cout => \EXP|Add7~5\);

-- Location: LCCOMB_X24_Y17_N20
\EXP|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~10_combout\ = (\EXP|rem~60_combout\ & (!\EXP|Add7~9\)) # (!\EXP|rem~60_combout\ & ((\EXP|Add7~9\) # (GND)))
-- \EXP|Add7~11\ = CARRY((!\EXP|Add7~9\) # (!\EXP|rem~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~60_combout\,
	datad => VCC,
	cin => \EXP|Add7~9\,
	combout => \EXP|Add7~10_combout\,
	cout => \EXP|Add7~11\);

-- Location: LCCOMB_X24_Y17_N24
\EXP|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~14_combout\ = (\EXP|rem~62_combout\ & (!\EXP|Add7~13\)) # (!\EXP|rem~62_combout\ & ((\EXP|Add7~13\) # (GND)))
-- \EXP|Add7~15\ = CARRY((!\EXP|Add7~13\) # (!\EXP|rem~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~62_combout\,
	datad => VCC,
	cin => \EXP|Add7~13\,
	combout => \EXP|Add7~14_combout\,
	cout => \EXP|Add7~15\);

-- Location: LCCOMB_X24_Y17_N26
\EXP|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~16_combout\ = (\EXP|rem~63_combout\ & (\EXP|Add7~15\ $ (GND))) # (!\EXP|rem~63_combout\ & (!\EXP|Add7~15\ & VCC))
-- \EXP|Add7~17\ = CARRY((\EXP|rem~63_combout\ & !\EXP|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~63_combout\,
	datad => VCC,
	cin => \EXP|Add7~15\,
	combout => \EXP|Add7~16_combout\,
	cout => \EXP|Add7~17\);

-- Location: LCCOMB_X24_Y17_N28
\EXP|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~18_combout\ = (\EXP|rem~69_combout\ & (\EXP|Add7~17\ & VCC)) # (!\EXP|rem~69_combout\ & (!\EXP|Add7~17\))
-- \EXP|Add7~19\ = CARRY((!\EXP|rem~69_combout\ & !\EXP|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~69_combout\,
	datad => VCC,
	cin => \EXP|Add7~17\,
	combout => \EXP|Add7~18_combout\,
	cout => \EXP|Add7~19\);

-- Location: LCCOMB_X24_Y18_N22
\EXP|rem~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~81_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~18_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|Add7~18_combout\,
	datac => \EXP|rem~69_combout\,
	combout => \EXP|rem~81_combout\);

-- Location: LCCOMB_X23_Y18_N28
\EXP|rem~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~47_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~24_combout\)) # (!\EXP|LessThan2~4_combout\ & (((\EXP|LessThan0~3_combout\ & !\EXP|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~24_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|LessThan0~3_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|rem~47_combout\);

-- Location: LCCOMB_X24_Y20_N30
\EXP|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~20_combout\ = (\EXP|rem~39_combout\ & (\EXP|Add4~19\ $ (GND))) # (!\EXP|rem~39_combout\ & (!\EXP|Add4~19\ & VCC))
-- \EXP|Add4~21\ = CARRY((\EXP|rem~39_combout\ & !\EXP|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~39_combout\,
	datad => VCC,
	cin => \EXP|Add4~19\,
	combout => \EXP|Add4~20_combout\,
	cout => \EXP|Add4~21\);

-- Location: LCCOMB_X24_Y19_N2
\EXP|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~24_combout\ = (\EXP|rem~47_combout\ & (\EXP|Add4~23\ $ (GND))) # (!\EXP|rem~47_combout\ & (!\EXP|Add4~23\ & VCC))
-- \EXP|Add4~25\ = CARRY((\EXP|rem~47_combout\ & !\EXP|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~47_combout\,
	datad => VCC,
	cin => \EXP|Add4~23\,
	combout => \EXP|Add4~24_combout\,
	cout => \EXP|Add4~25\);

-- Location: LCCOMB_X23_Y18_N26
\EXP|rem~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~65_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~24_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|rem~47_combout\,
	datac => \EXP|Add4~24_combout\,
	combout => \EXP|rem~65_combout\);

-- Location: LCCOMB_X23_Y18_N16
\EXP|rem~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~70_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~20_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~39_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~20_combout\,
	combout => \EXP|rem~70_combout\);

-- Location: LCCOMB_X23_Y18_N12
\EXP|rem~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~41_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~28_combout\)) # (!\EXP|LessThan2~4_combout\ & ((\EXP|rem~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~28_combout\,
	datab => \EXP|rem~28_combout\,
	datac => \EXP|LessThan2~4_combout\,
	combout => \EXP|rem~41_combout\);

-- Location: LCCOMB_X24_Y19_N4
\EXP|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~26_combout\ = (\EXP|rem~40_combout\ & (!\EXP|Add4~25\)) # (!\EXP|rem~40_combout\ & ((\EXP|Add4~25\) # (GND)))
-- \EXP|Add4~27\ = CARRY((!\EXP|Add4~25\) # (!\EXP|rem~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~40_combout\,
	datad => VCC,
	cin => \EXP|Add4~25\,
	combout => \EXP|Add4~26_combout\,
	cout => \EXP|Add4~27\);

-- Location: LCCOMB_X24_Y19_N6
\EXP|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~28_combout\ = (\EXP|rem~41_combout\ & (\EXP|Add4~27\ $ (GND))) # (!\EXP|rem~41_combout\ & (!\EXP|Add4~27\ & VCC))
-- \EXP|Add4~29\ = CARRY((\EXP|rem~41_combout\ & !\EXP|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~41_combout\,
	datad => VCC,
	cin => \EXP|Add4~27\,
	combout => \EXP|Add4~28_combout\,
	cout => \EXP|Add4~29\);

-- Location: LCCOMB_X23_Y18_N4
\EXP|rem~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~67_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~28_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~41_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~28_combout\,
	combout => \EXP|rem~67_combout\);

-- Location: LCCOMB_X24_Y19_N30
\EXP|rem~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~66_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~26_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~40_combout\,
	datab => \EXP|Add4~26_combout\,
	datac => \EXP|rem~46_combout\,
	combout => \EXP|rem~66_combout\);

-- Location: LCCOMB_X24_Y18_N12
\EXP|LessThan4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~6_combout\ = (\EXP|rem~67_combout\) # ((\EXP|rem~66_combout\) # ((\EXP|rem~68_combout\ & \EXP|rem~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~68_combout\,
	datab => \EXP|rem~67_combout\,
	datac => \EXP|rem~66_combout\,
	datad => \EXP|rem~65_combout\,
	combout => \EXP|LessThan4~6_combout\);

-- Location: LCCOMB_X24_Y18_N30
\EXP|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~7_combout\ = (\EXP|LessThan4~6_combout\) # ((\EXP|rem~65_combout\ & ((\EXP|rem~69_combout\) # (\EXP|rem~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~69_combout\,
	datab => \EXP|rem~65_combout\,
	datac => \EXP|rem~70_combout\,
	datad => \EXP|LessThan4~6_combout\,
	combout => \EXP|LessThan4~7_combout\);

-- Location: LCCOMB_X23_Y19_N18
\EXP|rem~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~33_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|Add3~36_combout\)) # (!\EXP|LessThan2~4_combout\ & ((\EXP|rem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~36_combout\,
	datab => \EXP|rem~26_combout\,
	datac => \EXP|LessThan2~4_combout\,
	combout => \EXP|rem~33_combout\);

-- Location: LCCOMB_X23_Y19_N16
\EXP|rem~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~32_combout\ = (\EXP|LessThan2~4_combout\ & ((\EXP|Add3~34_combout\))) # (!\EXP|LessThan2~4_combout\ & (\EXP|rem~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~30_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add3~34_combout\,
	combout => \EXP|rem~32_combout\);

-- Location: LCCOMB_X22_Y19_N24
\EXP|rem~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~35_combout\ = (\EXP|LessThan2~4_combout\ & ((\EXP|Add3~32_combout\))) # (!\EXP|LessThan2~4_combout\ & (\EXP|rem~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~27_combout\,
	datad => \EXP|Add3~32_combout\,
	combout => \EXP|rem~35_combout\);

-- Location: LCCOMB_X23_Y19_N28
\EXP|rem~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~34_combout\ = (\EXP|LessThan2~4_combout\ & ((\EXP|Add3~30_combout\))) # (!\EXP|LessThan2~4_combout\ & (\EXP|rem~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datab => \EXP|rem~29_combout\,
	datac => \EXP|Add3~30_combout\,
	combout => \EXP|rem~34_combout\);

-- Location: LCCOMB_X24_Y19_N8
\EXP|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~30_combout\ = (\EXP|rem~34_combout\ & (\EXP|Add4~29\ & VCC)) # (!\EXP|rem~34_combout\ & (!\EXP|Add4~29\))
-- \EXP|Add4~31\ = CARRY((!\EXP|rem~34_combout\ & !\EXP|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~34_combout\,
	datad => VCC,
	cin => \EXP|Add4~29\,
	combout => \EXP|Add4~30_combout\,
	cout => \EXP|Add4~31\);

-- Location: LCCOMB_X24_Y19_N10
\EXP|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~32_combout\ = (\EXP|rem~35_combout\ & ((GND) # (!\EXP|Add4~31\))) # (!\EXP|rem~35_combout\ & (\EXP|Add4~31\ $ (GND)))
-- \EXP|Add4~33\ = CARRY((\EXP|rem~35_combout\) # (!\EXP|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~35_combout\,
	datad => VCC,
	cin => \EXP|Add4~31\,
	combout => \EXP|Add4~32_combout\,
	cout => \EXP|Add4~33\);

-- Location: LCCOMB_X24_Y19_N12
\EXP|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~34_combout\ = (\EXP|rem~32_combout\ & (!\EXP|Add4~33\)) # (!\EXP|rem~32_combout\ & ((\EXP|Add4~33\) # (GND)))
-- \EXP|Add4~35\ = CARRY((!\EXP|Add4~33\) # (!\EXP|rem~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~32_combout\,
	datad => VCC,
	cin => \EXP|Add4~33\,
	combout => \EXP|Add4~34_combout\,
	cout => \EXP|Add4~35\);

-- Location: LCCOMB_X24_Y19_N14
\EXP|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~36_combout\ = (\EXP|rem~33_combout\ & (\EXP|Add4~35\ $ (GND))) # (!\EXP|rem~33_combout\ & (!\EXP|Add4~35\ & VCC))
-- \EXP|Add4~37\ = CARRY((\EXP|rem~33_combout\ & !\EXP|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~33_combout\,
	datad => VCC,
	cin => \EXP|Add4~35\,
	combout => \EXP|Add4~36_combout\,
	cout => \EXP|Add4~37\);

-- Location: LCCOMB_X24_Y19_N16
\EXP|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~38_combout\ = (\EXP|rem~52_combout\ & (\EXP|Add4~37\ & VCC)) # (!\EXP|rem~52_combout\ & (!\EXP|Add4~37\))
-- \EXP|Add4~39\ = CARRY((!\EXP|rem~52_combout\ & !\EXP|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~52_combout\,
	datad => VCC,
	cin => \EXP|Add4~37\,
	combout => \EXP|Add4~38_combout\,
	cout => \EXP|Add4~39\);

-- Location: LCCOMB_X24_Y19_N18
\EXP|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~40_combout\ = (\EXP|Add4~39\ & ((((\EXP|Add3~40_combout\ & \EXP|LessThan2~4_combout\))))) # (!\EXP|Add4~39\ & (((\EXP|Add3~40_combout\ & \EXP|LessThan2~4_combout\)) # (GND)))
-- \EXP|Add4~41\ = CARRY(((\EXP|Add3~40_combout\ & \EXP|LessThan2~4_combout\)) # (!\EXP|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~40_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datad => VCC,
	cin => \EXP|Add4~39\,
	combout => \EXP|Add4~40_combout\,
	cout => \EXP|Add4~41\);

-- Location: LCCOMB_X24_Y19_N26
\EXP|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~0_combout\ = (\EXP|Add4~42_combout\) # ((\EXP|Add4~38_combout\) # (\EXP|Add4~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~42_combout\,
	datac => \EXP|Add4~38_combout\,
	datad => \EXP|Add4~40_combout\,
	combout => \EXP|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\EXP|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~44_combout\ = \EXP|Add4~43\ $ (((\EXP|LessThan2~4_combout\ & \EXP|Add3~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add3~44_combout\,
	cin => \EXP|Add4~43\,
	combout => \EXP|Add4~44_combout\);

-- Location: LCCOMB_X24_Y19_N28
\EXP|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~1_combout\ = (\EXP|rem~51_combout\) # ((\EXP|rem~46_combout\ & ((\EXP|LessThan4~0_combout\) # (\EXP|Add4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~51_combout\,
	datab => \EXP|LessThan4~0_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~44_combout\,
	combout => \EXP|LessThan4~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\EXP|rem~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~55_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~32_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|rem~35_combout\,
	datac => \EXP|Add4~32_combout\,
	combout => \EXP|rem~55_combout\);

-- Location: LCCOMB_X23_Y19_N8
\EXP|rem~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~54_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~30_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|rem~34_combout\,
	datac => \EXP|Add4~30_combout\,
	combout => \EXP|rem~54_combout\);

-- Location: LCCOMB_X24_Y18_N0
\EXP|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~2_combout\ = (\EXP|rem~53_combout\ & (\EXP|rem~55_combout\ & \EXP|rem~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~53_combout\,
	datab => \EXP|rem~55_combout\,
	datad => \EXP|rem~54_combout\,
	combout => \EXP|LessThan4~2_combout\);

-- Location: LCCOMB_X24_Y18_N16
\EXP|LessThan4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~8_combout\ = (\EXP|LessThan4~1_combout\) # ((\EXP|LessThan4~2_combout\ & ((\EXP|LessThan4~5_combout\) # (\EXP|LessThan4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~5_combout\,
	datab => \EXP|LessThan4~7_combout\,
	datac => \EXP|LessThan4~1_combout\,
	datad => \EXP|LessThan4~2_combout\,
	combout => \EXP|LessThan4~8_combout\);

-- Location: LCCOMB_X24_Y17_N6
\EXP|rem~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~90_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add7~4_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|rem~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~57_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datac => \EXP|Add7~4_combout\,
	combout => \EXP|rem~90_combout\);

-- Location: LCCOMB_X24_Y17_N4
\EXP|rem~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~89_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add7~2_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|rem~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~56_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => \EXP|Add7~2_combout\,
	combout => \EXP|rem~89_combout\);

-- Location: LCCOMB_X24_Y17_N8
\EXP|rem~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~91_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~6_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~6_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => \EXP|rem~58_combout\,
	combout => \EXP|rem~91_combout\);

-- Location: LCCOMB_X25_Y17_N0
\EXP|LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~4_combout\ = (\EXP|rem~88_combout\) # ((\EXP|rem~90_combout\) # ((\EXP|rem~89_combout\) # (\EXP|rem~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~88_combout\,
	datab => \EXP|rem~90_combout\,
	datac => \EXP|rem~89_combout\,
	datad => \EXP|rem~91_combout\,
	combout => \EXP|LessThan5~4_combout\);

-- Location: LCCOMB_X24_Y17_N30
\EXP|Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~20_combout\ = (\EXP|rem~70_combout\ & ((GND) # (!\EXP|Add7~19\))) # (!\EXP|rem~70_combout\ & (\EXP|Add7~19\ $ (GND)))
-- \EXP|Add7~21\ = CARRY((\EXP|rem~70_combout\) # (!\EXP|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~70_combout\,
	datad => VCC,
	cin => \EXP|Add7~19\,
	combout => \EXP|Add7~20_combout\,
	cout => \EXP|Add7~21\);

-- Location: LCCOMB_X24_Y16_N2
\EXP|Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~24_combout\ = (\EXP|rem~65_combout\ & (\EXP|Add7~23\ $ (GND))) # (!\EXP|rem~65_combout\ & (!\EXP|Add7~23\ & VCC))
-- \EXP|Add7~25\ = CARRY((\EXP|rem~65_combout\ & !\EXP|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~65_combout\,
	datad => VCC,
	cin => \EXP|Add7~23\,
	combout => \EXP|Add7~24_combout\,
	cout => \EXP|Add7~25\);

-- Location: LCCOMB_X24_Y16_N8
\EXP|Add7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~30_combout\ = (\EXP|rem~54_combout\ & (!\EXP|Add7~29\)) # (!\EXP|rem~54_combout\ & ((\EXP|Add7~29\) # (GND)))
-- \EXP|Add7~31\ = CARRY((!\EXP|Add7~29\) # (!\EXP|rem~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~54_combout\,
	datad => VCC,
	cin => \EXP|Add7~29\,
	combout => \EXP|Add7~30_combout\,
	cout => \EXP|Add7~31\);

-- Location: LCCOMB_X24_Y18_N14
\EXP|rem~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~76_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~30_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|Add7~30_combout\,
	datad => \EXP|rem~54_combout\,
	combout => \EXP|rem~76_combout\);

-- Location: LCCOMB_X24_Y18_N8
\EXP|rem~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~77_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~32_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~32_combout\,
	datab => \EXP|rem~55_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~77_combout\);

-- Location: LCCOMB_X24_Y18_N18
\EXP|rem~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~74_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~26_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~26_combout\,
	datab => \EXP|rem~66_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~74_combout\);

-- Location: LCCOMB_X24_Y18_N26
\EXP|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~0_combout\ = (\EXP|rem~75_combout\ & (\EXP|rem~76_combout\ & (\EXP|rem~77_combout\ & \EXP|rem~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~75_combout\,
	datab => \EXP|rem~76_combout\,
	datac => \EXP|rem~77_combout\,
	datad => \EXP|rem~74_combout\,
	combout => \EXP|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\EXP|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~5_combout\ = (\EXP|rem~81_combout\ & (\EXP|LessThan5~0_combout\ & ((\EXP|rem~87_combout\) # (\EXP|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~87_combout\,
	datab => \EXP|rem~81_combout\,
	datac => \EXP|LessThan5~4_combout\,
	datad => \EXP|LessThan5~0_combout\,
	combout => \EXP|LessThan5~5_combout\);

-- Location: LCCOMB_X24_Y19_N24
\EXP|rem~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~51_combout\ = (\EXP|rem~46_combout\ & (\EXP|Add4~36_combout\)) # (!\EXP|rem~46_combout\ & ((\EXP|rem~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datac => \EXP|Add4~36_combout\,
	datad => \EXP|rem~33_combout\,
	combout => \EXP|rem~51_combout\);

-- Location: LCCOMB_X23_Y19_N30
\EXP|rem~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~53_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~34_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~32_combout\,
	datab => \EXP|Add4~34_combout\,
	datac => \EXP|rem~46_combout\,
	combout => \EXP|rem~53_combout\);

-- Location: LCCOMB_X24_Y16_N14
\EXP|Add7~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~36_combout\ = (\EXP|rem~51_combout\ & ((GND) # (!\EXP|Add7~35\))) # (!\EXP|rem~51_combout\ & (\EXP|Add7~35\ $ (GND)))
-- \EXP|Add7~37\ = CARRY((\EXP|rem~51_combout\) # (!\EXP|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~51_combout\,
	datad => VCC,
	cin => \EXP|Add7~35\,
	combout => \EXP|Add7~36_combout\,
	cout => \EXP|Add7~37\);

-- Location: LCCOMB_X24_Y16_N16
\EXP|Add7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~38_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~38_combout\ & (\EXP|Add7~37\ & VCC)) # (!\EXP|Add4~38_combout\ & (!\EXP|Add7~37\)))) # (!\EXP|rem~46_combout\ & (((!\EXP|Add7~37\))))
-- \EXP|Add7~39\ = CARRY((!\EXP|Add7~37\ & ((!\EXP|Add4~38_combout\) # (!\EXP|rem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|Add4~38_combout\,
	datad => VCC,
	cin => \EXP|Add7~37\,
	combout => \EXP|Add7~38_combout\,
	cout => \EXP|Add7~39\);

-- Location: LCCOMB_X24_Y16_N18
\EXP|Add7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~40_combout\ = (\EXP|Add7~39\ & ((((\EXP|Add4~40_combout\ & \EXP|rem~46_combout\))))) # (!\EXP|Add7~39\ & (((\EXP|Add4~40_combout\ & \EXP|rem~46_combout\)) # (GND)))
-- \EXP|Add7~41\ = CARRY(((\EXP|Add4~40_combout\ & \EXP|rem~46_combout\)) # (!\EXP|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~40_combout\,
	datab => \EXP|rem~46_combout\,
	datad => VCC,
	cin => \EXP|Add7~39\,
	combout => \EXP|Add7~40_combout\,
	cout => \EXP|Add7~41\);

-- Location: LCCOMB_X24_Y16_N22
\EXP|Add7~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~44_combout\ = \EXP|Add7~43\ $ (((\EXP|rem~46_combout\ & \EXP|Add4~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datad => \EXP|Add4~44_combout\,
	cin => \EXP|Add7~43\,
	combout => \EXP|Add7~44_combout\);

-- Location: LCCOMB_X24_Y16_N26
\EXP|rem~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~72_combout\ = (\EXP|Add7~42_combout\) # ((\EXP|Add7~44_combout\) # ((\EXP|Add7~38_combout\) # (\EXP|Add7~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~42_combout\,
	datab => \EXP|Add7~44_combout\,
	datac => \EXP|Add7~38_combout\,
	datad => \EXP|Add7~40_combout\,
	combout => \EXP|rem~72_combout\);

-- Location: LCCOMB_X24_Y16_N28
\EXP|rem~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~73_combout\ = (\EXP|rem~71_combout\) # ((\EXP|LessThan4~8_combout\ & ((\EXP|rem~72_combout\) # (\EXP|Add7~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~71_combout\,
	datab => \EXP|rem~72_combout\,
	datac => \EXP|Add7~36_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~73_combout\);

-- Location: LCCOMB_X22_Y17_N12
\EXP|rem~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~86_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~12_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~12_combout\,
	datab => \EXP|rem~61_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~86_combout\);

-- Location: LCCOMB_X22_Y17_N18
\EXP|rem~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~84_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~8_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~8_combout\,
	datab => \EXP|rem~59_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~84_combout\);

-- Location: LCCOMB_X23_Y20_N2
\EXP|rem~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~60_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add4~10_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|rem~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~49_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|Add4~10_combout\,
	combout => \EXP|rem~60_combout\);

-- Location: LCCOMB_X23_Y17_N22
\EXP|rem~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~85_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~10_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datac => \EXP|Add7~10_combout\,
	datad => \EXP|rem~60_combout\,
	combout => \EXP|rem~85_combout\);

-- Location: LCCOMB_X24_Y18_N2
\EXP|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~3_combout\ = (\EXP|rem~86_combout\ & (\EXP|rem~84_combout\ & \EXP|rem~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~86_combout\,
	datac => \EXP|rem~84_combout\,
	datad => \EXP|rem~85_combout\,
	combout => \EXP|LessThan5~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\EXP|rem~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~92_combout\ = (\EXP|rem~83_combout\) # ((\EXP|rem~73_combout\) # ((\EXP|LessThan5~5_combout\ & \EXP|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~83_combout\,
	datab => \EXP|LessThan5~5_combout\,
	datac => \EXP|rem~73_combout\,
	datad => \EXP|LessThan5~3_combout\,
	combout => \EXP|rem~92_combout\);

-- Location: LCCOMB_X25_Y15_N0
\EXP|e~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~10_combout\ = (\EXP|LessThan1~7_combout\ & \EXP|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datac => \EXP|LessThan2~4_combout\,
	combout => \EXP|e~10_combout\);

-- Location: LCCOMB_X25_Y15_N28
\EXP|e~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~16_combout\ = (\EXP|LessThan1~7_combout\ & (\EXP|LessThan2~4_combout\ & ((\EXP|LessThan0~2_combout\) # (\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan1~7_combout\,
	datad => \EXP|LessThan2~4_combout\,
	combout => \EXP|e~16_combout\);

-- Location: LCCOMB_X25_Y15_N12
\EXP|e~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~14_combout\ = (\EXP|LessThan2~4_combout\ & (((\EXP|LessThan1~7_combout\)))) # (!\EXP|LessThan2~4_combout\ & ((\EXP|LessThan0~2_combout\) # ((\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \SW~combout\(9),
	datac => \EXP|LessThan1~7_combout\,
	datad => \EXP|LessThan2~4_combout\,
	combout => \EXP|e~14_combout\);

-- Location: LCCOMB_X25_Y15_N8
\EXP|e~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~8_combout\ = (\EXP|LessThan1~7_combout\) # (\EXP|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datac => \EXP|LessThan2~4_combout\,
	combout => \EXP|e~8_combout\);

-- Location: LCCOMB_X25_Y15_N16
\EXP|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~2_combout\ = (\EXP|LessThan2~4_combout\ & (\EXP|e~8_combout\ & VCC)) # (!\EXP|LessThan2~4_combout\ & (\EXP|e~8_combout\ $ (VCC)))
-- \EXP|Add5~3\ = CARRY((!\EXP|LessThan2~4_combout\ & \EXP|e~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datab => \EXP|e~8_combout\,
	datad => VCC,
	combout => \EXP|Add5~2_combout\,
	cout => \EXP|Add5~3\);

-- Location: LCCOMB_X25_Y15_N18
\EXP|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~4_combout\ = (\EXP|e~14_combout\ & ((\EXP|e~8_combout\ & (\EXP|Add5~3\ & VCC)) # (!\EXP|e~8_combout\ & (!\EXP|Add5~3\)))) # (!\EXP|e~14_combout\ & ((\EXP|e~8_combout\ & (!\EXP|Add5~3\)) # (!\EXP|e~8_combout\ & ((\EXP|Add5~3\) # (GND)))))
-- \EXP|Add5~5\ = CARRY((\EXP|e~14_combout\ & (!\EXP|e~8_combout\ & !\EXP|Add5~3\)) # (!\EXP|e~14_combout\ & ((!\EXP|Add5~3\) # (!\EXP|e~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~14_combout\,
	datab => \EXP|e~8_combout\,
	datad => VCC,
	cin => \EXP|Add5~3\,
	combout => \EXP|Add5~4_combout\,
	cout => \EXP|Add5~5\);

-- Location: LCCOMB_X25_Y15_N20
\EXP|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~6_combout\ = ((\EXP|e~15_combout\ $ (\EXP|e~14_combout\ $ (!\EXP|Add5~5\)))) # (GND)
-- \EXP|Add5~7\ = CARRY((\EXP|e~15_combout\ & ((\EXP|e~14_combout\) # (!\EXP|Add5~5\))) # (!\EXP|e~15_combout\ & (\EXP|e~14_combout\ & !\EXP|Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~15_combout\,
	datab => \EXP|e~14_combout\,
	datad => VCC,
	cin => \EXP|Add5~5\,
	combout => \EXP|Add5~6_combout\,
	cout => \EXP|Add5~7\);

-- Location: LCCOMB_X25_Y15_N22
\EXP|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~8_combout\ = (\EXP|e~15_combout\ & ((\EXP|e~16_combout\ & (\EXP|Add5~7\ & VCC)) # (!\EXP|e~16_combout\ & (!\EXP|Add5~7\)))) # (!\EXP|e~15_combout\ & ((\EXP|e~16_combout\ & (!\EXP|Add5~7\)) # (!\EXP|e~16_combout\ & ((\EXP|Add5~7\) # (GND)))))
-- \EXP|Add5~9\ = CARRY((\EXP|e~15_combout\ & (!\EXP|e~16_combout\ & !\EXP|Add5~7\)) # (!\EXP|e~15_combout\ & ((!\EXP|Add5~7\) # (!\EXP|e~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~15_combout\,
	datab => \EXP|e~16_combout\,
	datad => VCC,
	cin => \EXP|Add5~7\,
	combout => \EXP|Add5~8_combout\,
	cout => \EXP|Add5~9\);

-- Location: LCCOMB_X25_Y15_N24
\EXP|Add5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~13_combout\ = \EXP|Add5~9\ $ (((!\EXP|e~10_combout\) # (!\EXP|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~3_combout\,
	datad => \EXP|e~10_combout\,
	cin => \EXP|Add5~9\,
	combout => \EXP|Add5~13_combout\);

-- Location: LCCOMB_X25_Y15_N2
\EXP|Add5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~15_combout\ = (\EXP|rem~46_combout\ & (\EXP|Add5~13_combout\)) # (!\EXP|rem~46_combout\ & ((\EXP|e~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add5~13_combout\,
	datad => \EXP|e~16_combout\,
	combout => \EXP|Add5~15_combout\);

-- Location: LCCOMB_X25_Y15_N6
\EXP|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~16_combout\ = (\EXP|rem~46_combout\ & (((\EXP|Add5~4_combout\)))) # (!\EXP|rem~46_combout\ & ((\EXP|LessThan1~7_combout\) # ((\EXP|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|rem~46_combout\,
	datac => \EXP|LessThan2~4_combout\,
	datad => \EXP|Add5~4_combout\,
	combout => \EXP|Add5~16_combout\);

-- Location: LCCOMB_X25_Y15_N14
\EXP|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~12_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add5~2_combout\))) # (!\EXP|rem~46_combout\ & (!\EXP|LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datac => \EXP|Add5~2_combout\,
	datad => \EXP|rem~46_combout\,
	combout => \EXP|Add5~12_combout\);

-- Location: LCCOMB_X24_Y15_N0
\EXP|e~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~9_combout\ = (\EXP|LessThan2~4_combout\) # (!\EXP|rem~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~46_combout\,
	combout => \EXP|e~9_combout\);

-- Location: LCCOMB_X24_Y15_N22
\EXP|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~6_combout\ = ((\EXP|Add5~10_combout\ $ (\EXP|Add5~16_combout\ $ (!\EXP|Add8~5\)))) # (GND)
-- \EXP|Add8~7\ = CARRY((\EXP|Add5~10_combout\ & ((\EXP|Add5~16_combout\) # (!\EXP|Add8~5\))) # (!\EXP|Add5~10_combout\ & (\EXP|Add5~16_combout\ & !\EXP|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~10_combout\,
	datab => \EXP|Add5~16_combout\,
	datad => VCC,
	cin => \EXP|Add8~5\,
	combout => \EXP|Add8~6_combout\,
	cout => \EXP|Add8~7\);

-- Location: LCCOMB_X24_Y15_N24
\EXP|Add8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~9_combout\ = (\EXP|Add5~11_combout\ & ((\EXP|Add5~15_combout\ & (\EXP|Add8~7\ & VCC)) # (!\EXP|Add5~15_combout\ & (!\EXP|Add8~7\)))) # (!\EXP|Add5~11_combout\ & ((\EXP|Add5~15_combout\ & (!\EXP|Add8~7\)) # (!\EXP|Add5~15_combout\ & 
-- ((\EXP|Add8~7\) # (GND)))))
-- \EXP|Add8~10\ = CARRY((\EXP|Add5~11_combout\ & (!\EXP|Add5~15_combout\ & !\EXP|Add8~7\)) # (!\EXP|Add5~11_combout\ & ((!\EXP|Add8~7\) # (!\EXP|Add5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~11_combout\,
	datab => \EXP|Add5~15_combout\,
	datad => VCC,
	cin => \EXP|Add8~7\,
	combout => \EXP|Add8~9_combout\,
	cout => \EXP|Add8~10\);

-- Location: LCCOMB_X24_Y15_N26
\EXP|Add8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~11_combout\ = (\EXP|Add5~10_combout\ & (\EXP|Add8~10\ $ (GND))) # (!\EXP|Add5~10_combout\ & (!\EXP|Add8~10\ & VCC))
-- \EXP|Add8~12\ = CARRY((\EXP|Add5~10_combout\ & !\EXP|Add8~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~10_combout\,
	datad => VCC,
	cin => \EXP|Add8~10\,
	combout => \EXP|Add8~11_combout\,
	cout => \EXP|Add8~12\);

-- Location: LCCOMB_X25_Y15_N26
\EXP|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~10_combout\ = (\EXP|rem~46_combout\ & ((\EXP|Add5~8_combout\))) # (!\EXP|rem~46_combout\ & (\EXP|e~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~15_combout\,
	datab => \EXP|rem~46_combout\,
	datad => \EXP|Add5~8_combout\,
	combout => \EXP|Add5~10_combout\);

-- Location: LCCOMB_X24_Y15_N16
\EXP|Add8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~17_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add8~11_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add8~11_combout\,
	datac => \EXP|Add5~10_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|Add8~17_combout\);

-- Location: LCCOMB_X25_Y15_N4
\EXP|Add5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~11_combout\ = (\EXP|rem~46_combout\ & (\EXP|Add5~6_combout\)) # (!\EXP|rem~46_combout\ & ((\EXP|e~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add5~6_combout\,
	datad => \EXP|e~14_combout\,
	combout => \EXP|Add5~11_combout\);

-- Location: LCCOMB_X24_Y15_N2
\EXP|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~18_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add8~9_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|Add5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan4~8_combout\,
	datac => \EXP|Add8~9_combout\,
	datad => \EXP|Add5~11_combout\,
	combout => \EXP|Add8~18_combout\);

-- Location: LCCOMB_X24_Y15_N10
\EXP|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~8_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add8~6_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~16_combout\,
	datab => \EXP|Add8~6_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|Add8~8_combout\);

-- Location: LCCOMB_X24_Y15_N4
\EXP|e~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~11_combout\ = (\EXP|LessThan2~4_combout\) # ((!\EXP|LessThan4~8_combout\) # (!\EXP|rem~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|e~11_combout\);

-- Location: LCCOMB_X24_Y14_N14
\EXP|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~0_combout\ = (\EXP|Add8~16_combout\ & (\EXP|e~11_combout\ $ (GND))) # (!\EXP|Add8~16_combout\ & (!\EXP|e~11_combout\ & VCC))
-- \EXP|Add11~1\ = CARRY((\EXP|Add8~16_combout\ & !\EXP|e~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~16_combout\,
	datab => \EXP|e~11_combout\,
	datad => VCC,
	combout => \EXP|Add11~0_combout\,
	cout => \EXP|Add11~1\);

-- Location: LCCOMB_X24_Y14_N16
\EXP|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~2_combout\ = (\EXP|e~17_combout\ & ((\EXP|Add8~8_combout\ & (\EXP|Add11~1\ & VCC)) # (!\EXP|Add8~8_combout\ & (!\EXP|Add11~1\)))) # (!\EXP|e~17_combout\ & ((\EXP|Add8~8_combout\ & (!\EXP|Add11~1\)) # (!\EXP|Add8~8_combout\ & ((\EXP|Add11~1\) # 
-- (GND)))))
-- \EXP|Add11~3\ = CARRY((\EXP|e~17_combout\ & (!\EXP|Add8~8_combout\ & !\EXP|Add11~1\)) # (!\EXP|e~17_combout\ & ((!\EXP|Add11~1\) # (!\EXP|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~17_combout\,
	datab => \EXP|Add8~8_combout\,
	datad => VCC,
	cin => \EXP|Add11~1\,
	combout => \EXP|Add11~2_combout\,
	cout => \EXP|Add11~3\);

-- Location: LCCOMB_X24_Y14_N18
\EXP|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~4_combout\ = ((\EXP|Add8~19_combout\ $ (\EXP|Add8~18_combout\ $ (!\EXP|Add11~3\)))) # (GND)
-- \EXP|Add11~5\ = CARRY((\EXP|Add8~19_combout\ & ((\EXP|Add8~18_combout\) # (!\EXP|Add11~3\))) # (!\EXP|Add8~19_combout\ & (\EXP|Add8~18_combout\ & !\EXP|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~19_combout\,
	datab => \EXP|Add8~18_combout\,
	datad => VCC,
	cin => \EXP|Add11~3\,
	combout => \EXP|Add11~4_combout\,
	cout => \EXP|Add11~5\);

-- Location: LCCOMB_X24_Y14_N20
\EXP|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~6_combout\ = (\EXP|Add8~16_combout\ & ((\EXP|Add8~17_combout\ & (\EXP|Add11~5\ & VCC)) # (!\EXP|Add8~17_combout\ & (!\EXP|Add11~5\)))) # (!\EXP|Add8~16_combout\ & ((\EXP|Add8~17_combout\ & (!\EXP|Add11~5\)) # (!\EXP|Add8~17_combout\ & 
-- ((\EXP|Add11~5\) # (GND)))))
-- \EXP|Add11~7\ = CARRY((\EXP|Add8~16_combout\ & (!\EXP|Add8~17_combout\ & !\EXP|Add11~5\)) # (!\EXP|Add8~16_combout\ & ((!\EXP|Add11~5\) # (!\EXP|Add8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~16_combout\,
	datab => \EXP|Add8~17_combout\,
	datad => VCC,
	cin => \EXP|Add11~5\,
	combout => \EXP|Add11~6_combout\,
	cout => \EXP|Add11~7\);

-- Location: LCCOMB_X24_Y14_N2
\EXP|Add11~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~11_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add11~6_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|Add8~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~16_combout\,
	datab => \EXP|rem~92_combout\,
	datac => \EXP|Add11~6_combout\,
	combout => \EXP|Add11~11_combout\);

-- Location: LCCOMB_X25_Y17_N8
\EXP|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~0_combout\ = \EXP|LessThan1~7_combout\ $ (\EXP|LessThan2~4_combout\ $ (VCC))
-- \EXP|Add10~1\ = CARRY(\EXP|LessThan1~7_combout\ $ (\EXP|LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan1~7_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datad => VCC,
	combout => \EXP|Add10~0_combout\,
	cout => \EXP|Add10~1\);

-- Location: LCCOMB_X25_Y17_N10
\EXP|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~2_combout\ = (\EXP|rem~88_combout\ & (\EXP|Add10~1\ & VCC)) # (!\EXP|rem~88_combout\ & (!\EXP|Add10~1\))
-- \EXP|Add10~3\ = CARRY((!\EXP|rem~88_combout\ & !\EXP|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~88_combout\,
	datad => VCC,
	cin => \EXP|Add10~1\,
	combout => \EXP|Add10~2_combout\,
	cout => \EXP|Add10~3\);

-- Location: LCCOMB_X25_Y17_N12
\EXP|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~4_combout\ = (\EXP|rem~89_combout\ & ((GND) # (!\EXP|Add10~3\))) # (!\EXP|rem~89_combout\ & (\EXP|Add10~3\ $ (GND)))
-- \EXP|Add10~5\ = CARRY((\EXP|rem~89_combout\) # (!\EXP|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~89_combout\,
	datad => VCC,
	cin => \EXP|Add10~3\,
	combout => \EXP|Add10~4_combout\,
	cout => \EXP|Add10~5\);

-- Location: LCCOMB_X25_Y17_N14
\EXP|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~6_combout\ = (\EXP|rem~90_combout\ & (\EXP|Add10~5\ & VCC)) # (!\EXP|rem~90_combout\ & (!\EXP|Add10~5\))
-- \EXP|Add10~7\ = CARRY((!\EXP|rem~90_combout\ & !\EXP|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~90_combout\,
	datad => VCC,
	cin => \EXP|Add10~5\,
	combout => \EXP|Add10~6_combout\,
	cout => \EXP|Add10~7\);

-- Location: LCCOMB_X25_Y17_N16
\EXP|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~8_combout\ = (\EXP|rem~91_combout\ & ((GND) # (!\EXP|Add10~7\))) # (!\EXP|rem~91_combout\ & (\EXP|Add10~7\ $ (GND)))
-- \EXP|Add10~9\ = CARRY((\EXP|rem~91_combout\) # (!\EXP|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~91_combout\,
	datad => VCC,
	cin => \EXP|Add10~7\,
	combout => \EXP|Add10~8_combout\,
	cout => \EXP|Add10~9\);

-- Location: LCCOMB_X25_Y17_N18
\EXP|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~10_combout\ = (\EXP|rem~84_combout\ & (!\EXP|Add10~9\)) # (!\EXP|rem~84_combout\ & ((\EXP|Add10~9\) # (GND)))
-- \EXP|Add10~11\ = CARRY((!\EXP|Add10~9\) # (!\EXP|rem~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~84_combout\,
	datad => VCC,
	cin => \EXP|Add10~9\,
	combout => \EXP|Add10~10_combout\,
	cout => \EXP|Add10~11\);

-- Location: LCCOMB_X25_Y17_N20
\EXP|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~12_combout\ = (\EXP|rem~85_combout\ & (\EXP|Add10~11\ $ (GND))) # (!\EXP|rem~85_combout\ & (!\EXP|Add10~11\ & VCC))
-- \EXP|Add10~13\ = CARRY((\EXP|rem~85_combout\ & !\EXP|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~85_combout\,
	datad => VCC,
	cin => \EXP|Add10~11\,
	combout => \EXP|Add10~12_combout\,
	cout => \EXP|Add10~13\);

-- Location: LCCOMB_X25_Y17_N22
\EXP|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~14_combout\ = (\EXP|rem~86_combout\ & (!\EXP|Add10~13\)) # (!\EXP|rem~86_combout\ & ((\EXP|Add10~13\) # (GND)))
-- \EXP|Add10~15\ = CARRY((!\EXP|Add10~13\) # (!\EXP|rem~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~86_combout\,
	datad => VCC,
	cin => \EXP|Add10~13\,
	combout => \EXP|Add10~14_combout\,
	cout => \EXP|Add10~15\);

-- Location: LCCOMB_X22_Y17_N24
\EXP|rem~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~101_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~14_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~86_combout\,
	datab => \EXP|Add10~14_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|rem~101_combout\);

-- Location: LCCOMB_X22_Y17_N2
\EXP|LessThan6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~10_combout\ = (\EXP|rem~101_combout\ & ((\EXP|rem~92_combout\ & ((\EXP|Add10~10_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|rem~84_combout\,
	datac => \EXP|rem~101_combout\,
	datad => \EXP|Add10~10_combout\,
	combout => \EXP|LessThan6~10_combout\);

-- Location: LCCOMB_X22_Y17_N28
\EXP|rem~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~106_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~8_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datac => \EXP|rem~91_combout\,
	datad => \EXP|Add10~8_combout\,
	combout => \EXP|rem~106_combout\);

-- Location: LCCOMB_X24_Y18_N20
\EXP|rem~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~80_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add7~24_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|rem~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|rem~65_combout\,
	datac => \EXP|Add7~24_combout\,
	combout => \EXP|rem~80_combout\);

-- Location: LCCOMB_X22_Y17_N8
\EXP|rem~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~78_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add7~20_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|rem~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~70_combout\,
	datab => \EXP|Add7~20_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~78_combout\);

-- Location: LCCOMB_X23_Y17_N10
\EXP|rem~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~93_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~16_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datac => \EXP|Add7~16_combout\,
	datad => \EXP|rem~63_combout\,
	combout => \EXP|rem~93_combout\);

-- Location: LCCOMB_X25_Y17_N26
\EXP|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~18_combout\ = (\EXP|rem~93_combout\ & (\EXP|Add10~17\ & VCC)) # (!\EXP|rem~93_combout\ & (!\EXP|Add10~17\))
-- \EXP|Add10~19\ = CARRY((!\EXP|rem~93_combout\ & !\EXP|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~93_combout\,
	datad => VCC,
	cin => \EXP|Add10~17\,
	combout => \EXP|Add10~18_combout\,
	cout => \EXP|Add10~19\);

-- Location: LCCOMB_X25_Y17_N28
\EXP|Add10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~20_combout\ = (\EXP|rem~81_combout\ & (\EXP|Add10~19\ $ (GND))) # (!\EXP|rem~81_combout\ & (!\EXP|Add10~19\ & VCC))
-- \EXP|Add10~21\ = CARRY((\EXP|rem~81_combout\ & !\EXP|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~81_combout\,
	datad => VCC,
	cin => \EXP|Add10~19\,
	combout => \EXP|Add10~20_combout\,
	cout => \EXP|Add10~21\);

-- Location: LCCOMB_X25_Y17_N30
\EXP|Add10~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~22_combout\ = (\EXP|rem~78_combout\ & (\EXP|Add10~21\ & VCC)) # (!\EXP|rem~78_combout\ & (!\EXP|Add10~21\))
-- \EXP|Add10~23\ = CARRY((!\EXP|rem~78_combout\ & !\EXP|Add10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~78_combout\,
	datad => VCC,
	cin => \EXP|Add10~21\,
	combout => \EXP|Add10~22_combout\,
	cout => \EXP|Add10~23\);

-- Location: LCCOMB_X25_Y16_N0
\EXP|Add10~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~24_combout\ = (\EXP|rem~79_combout\ & ((GND) # (!\EXP|Add10~23\))) # (!\EXP|rem~79_combout\ & (\EXP|Add10~23\ $ (GND)))
-- \EXP|Add10~25\ = CARRY((\EXP|rem~79_combout\) # (!\EXP|Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~79_combout\,
	datad => VCC,
	cin => \EXP|Add10~23\,
	combout => \EXP|Add10~24_combout\,
	cout => \EXP|Add10~25\);

-- Location: LCCOMB_X25_Y16_N2
\EXP|Add10~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~26_combout\ = (\EXP|rem~80_combout\ & (\EXP|Add10~25\ & VCC)) # (!\EXP|rem~80_combout\ & (!\EXP|Add10~25\))
-- \EXP|Add10~27\ = CARRY((!\EXP|rem~80_combout\ & !\EXP|Add10~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~80_combout\,
	datad => VCC,
	cin => \EXP|Add10~25\,
	combout => \EXP|Add10~26_combout\,
	cout => \EXP|Add10~27\);

-- Location: LCCOMB_X25_Y16_N4
\EXP|Add10~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~28_combout\ = (\EXP|rem~74_combout\ & (\EXP|Add10~27\ $ (GND))) # (!\EXP|rem~74_combout\ & (!\EXP|Add10~27\ & VCC))
-- \EXP|Add10~29\ = CARRY((\EXP|rem~74_combout\ & !\EXP|Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~74_combout\,
	datad => VCC,
	cin => \EXP|Add10~27\,
	combout => \EXP|Add10~28_combout\,
	cout => \EXP|Add10~29\);

-- Location: LCCOMB_X25_Y16_N6
\EXP|Add10~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~30_combout\ = (\EXP|rem~75_combout\ & (!\EXP|Add10~29\)) # (!\EXP|rem~75_combout\ & ((\EXP|Add10~29\) # (GND)))
-- \EXP|Add10~31\ = CARRY((!\EXP|Add10~29\) # (!\EXP|rem~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~75_combout\,
	datad => VCC,
	cin => \EXP|Add10~29\,
	combout => \EXP|Add10~30_combout\,
	cout => \EXP|Add10~31\);

-- Location: LCCOMB_X25_Y16_N8
\EXP|Add10~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~32_combout\ = (\EXP|rem~76_combout\ & (\EXP|Add10~31\ $ (GND))) # (!\EXP|rem~76_combout\ & (!\EXP|Add10~31\ & VCC))
-- \EXP|Add10~33\ = CARRY((\EXP|rem~76_combout\ & !\EXP|Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~76_combout\,
	datad => VCC,
	cin => \EXP|Add10~31\,
	combout => \EXP|Add10~32_combout\,
	cout => \EXP|Add10~33\);

-- Location: LCCOMB_X22_Y17_N22
\EXP|rem~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~94_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~32_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|rem~76_combout\,
	datad => \EXP|Add10~32_combout\,
	combout => \EXP|rem~94_combout\);

-- Location: LCCOMB_X23_Y17_N8
\EXP|rem~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~87_combout\ = \EXP|LessThan2~4_combout\ $ (\EXP|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan2~4_combout\,
	datad => \EXP|LessThan1~7_combout\,
	combout => \EXP|rem~87_combout\);

-- Location: LCCOMB_X23_Y17_N26
\EXP|LessThan6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~12_combout\ = (\EXP|rem~92_combout\ & (((\EXP|Add10~0_combout\)))) # (!\EXP|rem~92_combout\ & (!\EXP|LessThan6~11_combout\ & (\EXP|rem~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~11_combout\,
	datab => \EXP|rem~87_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~0_combout\,
	combout => \EXP|LessThan6~12_combout\);

-- Location: LCCOMB_X25_Y17_N6
\EXP|rem~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~109_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~2_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~88_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~2_combout\,
	combout => \EXP|rem~109_combout\);

-- Location: LCCOMB_X25_Y17_N2
\EXP|rem~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~107_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~4_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~89_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~4_combout\,
	combout => \EXP|rem~107_combout\);

-- Location: LCCOMB_X23_Y17_N4
\EXP|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~13_combout\ = (\EXP|rem~108_combout\) # ((\EXP|rem~107_combout\) # ((\EXP|LessThan6~12_combout\ & \EXP|rem~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~108_combout\,
	datab => \EXP|LessThan6~12_combout\,
	datac => \EXP|rem~109_combout\,
	datad => \EXP|rem~107_combout\,
	combout => \EXP|LessThan6~13_combout\);

-- Location: LCCOMB_X22_Y17_N14
\EXP|LessThan6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~14_combout\ = (\EXP|LessThan6~4_combout\ & (\EXP|rem~94_combout\ & ((\EXP|rem~106_combout\) # (\EXP|LessThan6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~4_combout\,
	datab => \EXP|rem~106_combout\,
	datac => \EXP|rem~94_combout\,
	datad => \EXP|LessThan6~13_combout\,
	combout => \EXP|LessThan6~14_combout\);

-- Location: LCCOMB_X22_Y17_N26
\EXP|rem~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~103_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~20_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datac => \EXP|rem~81_combout\,
	datad => \EXP|Add10~20_combout\,
	combout => \EXP|rem~103_combout\);

-- Location: LCCOMB_X22_Y17_N4
\EXP|LessThan6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~6_combout\ = (\EXP|rem~103_combout\) # ((\EXP|rem~92_combout\ & ((\EXP|Add10~22_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~78_combout\,
	datab => \EXP|rem~103_combout\,
	datac => \EXP|Add10~22_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|LessThan6~6_combout\);

-- Location: LCCOMB_X23_Y15_N22
\EXP|rem~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~97_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~28_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~74_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~28_combout\,
	combout => \EXP|rem~97_combout\);

-- Location: LCCOMB_X24_Y18_N28
\EXP|rem~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~75_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~28_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~28_combout\,
	datab => \EXP|rem~67_combout\,
	datac => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~75_combout\);

-- Location: LCCOMB_X23_Y15_N24
\EXP|rem~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~98_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~30_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~75_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~30_combout\,
	combout => \EXP|rem~98_combout\);

-- Location: LCCOMB_X23_Y15_N10
\EXP|rem~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~95_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~24_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~79_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~24_combout\,
	combout => \EXP|rem~95_combout\);

-- Location: LCCOMB_X23_Y15_N18
\EXP|LessThan6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~4_combout\ = (\EXP|rem~96_combout\ & (\EXP|rem~97_combout\ & (\EXP|rem~98_combout\ & \EXP|rem~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~96_combout\,
	datab => \EXP|rem~97_combout\,
	datac => \EXP|rem~98_combout\,
	datad => \EXP|rem~95_combout\,
	combout => \EXP|LessThan6~4_combout\);

-- Location: LCCOMB_X23_Y17_N14
\EXP|rem~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~102_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~12_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~85_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~12_combout\,
	combout => \EXP|rem~102_combout\);

-- Location: LCCOMB_X24_Y13_N22
\EXP|rem~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~100_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~18_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~93_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~18_combout\,
	combout => \EXP|rem~100_combout\);

-- Location: LCCOMB_X23_Y17_N2
\EXP|rem~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~82_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~14_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|Add7~14_combout\,
	datad => \EXP|rem~62_combout\,
	combout => \EXP|rem~82_combout\);

-- Location: LCCOMB_X23_Y17_N20
\EXP|rem~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~99_combout\ = (\EXP|rem~92_combout\ & (\EXP|Add10~16_combout\)) # (!\EXP|rem~92_combout\ & ((\EXP|rem~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~16_combout\,
	datab => \EXP|rem~82_combout\,
	datac => \EXP|rem~92_combout\,
	combout => \EXP|rem~99_combout\);

-- Location: LCCOMB_X22_Y16_N0
\EXP|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~5_combout\ = (\EXP|rem~100_combout\) # ((\EXP|rem~99_combout\) # ((\EXP|rem~101_combout\ & \EXP|rem~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~101_combout\,
	datab => \EXP|rem~102_combout\,
	datac => \EXP|rem~100_combout\,
	datad => \EXP|rem~99_combout\,
	combout => \EXP|LessThan6~5_combout\);

-- Location: LCCOMB_X22_Y17_N30
\EXP|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~7_combout\ = (\EXP|rem~94_combout\ & (\EXP|LessThan6~4_combout\ & ((\EXP|LessThan6~6_combout\) # (\EXP|LessThan6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~94_combout\,
	datab => \EXP|LessThan6~6_combout\,
	datac => \EXP|LessThan6~4_combout\,
	datad => \EXP|LessThan6~5_combout\,
	combout => \EXP|LessThan6~7_combout\);

-- Location: LCCOMB_X22_Y17_N0
\EXP|LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~15_combout\ = (\EXP|LessThan6~16_combout\) # ((\EXP|LessThan6~7_combout\) # ((\EXP|LessThan6~10_combout\ & \EXP|LessThan6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~16_combout\,
	datab => \EXP|LessThan6~10_combout\,
	datac => \EXP|LessThan6~14_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|LessThan6~15_combout\);

-- Location: LCCOMB_X24_Y13_N26
\EXP|Add15~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~19_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add15~14_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|Add11~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~14_combout\,
	datab => \EXP|Add11~11_combout\,
	datac => \EXP|LessThan6~15_combout\,
	combout => \EXP|Add15~19_combout\);

-- Location: LCCOMB_X25_Y13_N0
\EXP|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~0_combout\ = (\EXP|Add15~33_combout\ & (\EXP|Add15~19_combout\ $ (VCC))) # (!\EXP|Add15~33_combout\ & (\EXP|Add15~19_combout\ & VCC))
-- \EXP|Add17~1\ = CARRY((\EXP|Add15~33_combout\ & \EXP|Add15~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~33_combout\,
	datab => \EXP|Add15~19_combout\,
	datad => VCC,
	combout => \EXP|Add17~0_combout\,
	cout => \EXP|Add17~1\);

-- Location: LCCOMB_X24_Y15_N30
\EXP|Add8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~19_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add8~2_combout\)) # (!\EXP|LessThan4~8_combout\ & (((!\EXP|LessThan2~4_combout\ & \EXP|rem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~2_combout\,
	datab => \EXP|LessThan2~4_combout\,
	datac => \EXP|rem~46_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|Add8~19_combout\);

-- Location: LCCOMB_X24_Y14_N6
\EXP|Add11~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~19_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add11~4_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|Add8~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add8~19_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add11~4_combout\,
	combout => \EXP|Add11~19_combout\);

-- Location: LCCOMB_X25_Y14_N0
\EXP|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~4_combout\ = (\EXP|e~13_combout\ & (\EXP|Add11~19_combout\ $ (VCC))) # (!\EXP|e~13_combout\ & (\EXP|Add11~19_combout\ & VCC))
-- \EXP|Add15~5\ = CARRY((\EXP|e~13_combout\ & \EXP|Add11~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~13_combout\,
	datab => \EXP|Add11~19_combout\,
	datad => VCC,
	combout => \EXP|Add15~4_combout\,
	cout => \EXP|Add15~5\);

-- Location: LCCOMB_X25_Y15_N30
\EXP|e~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~17_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|rem~46_combout\ & ((\EXP|Add5~2_combout\))) # (!\EXP|rem~46_combout\ & (!\EXP|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~4_combout\,
	datab => \EXP|rem~46_combout\,
	datac => \EXP|Add5~2_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|e~17_combout\);

-- Location: LCCOMB_X24_Y13_N10
\EXP|Add15~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~33_combout\ = (\EXP|LessThan6~15_combout\ & (((\EXP|Add15~4_combout\)))) # (!\EXP|LessThan6~15_combout\ & (\EXP|rem~92_combout\ & ((\EXP|e~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|Add15~4_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|e~17_combout\,
	combout => \EXP|Add15~33_combout\);

-- Location: LCCOMB_X24_Y13_N18
\EXP|Add17~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~15_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~0_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add17~0_combout\,
	datad => \EXP|Add15~33_combout\,
	combout => \EXP|Add17~15_combout\);

-- Location: LCCOMB_X25_Y10_N6
\EXP|exp[-5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-5]~10_combout\ = (\EXP|Add17~14_combout\ & (\EXP|Add17~15_combout\ $ (VCC))) # (!\EXP|Add17~14_combout\ & (\EXP|Add17~15_combout\ & VCC))
-- \EXP|exp[-5]~11\ = CARRY((\EXP|Add17~14_combout\ & \EXP|Add17~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~14_combout\,
	datab => \EXP|Add17~15_combout\,
	datad => VCC,
	combout => \EXP|exp[-5]~10_combout\,
	cout => \EXP|exp[-5]~11\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X23_Y15_N12
\EXP|rem~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~96_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~26_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~80_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~26_combout\,
	combout => \EXP|rem~96_combout\);

-- Location: LCCOMB_X22_Y17_N10
\EXP|rem~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~110_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~22_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~78_combout\,
	datac => \EXP|Add10~22_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|rem~110_combout\);

-- Location: LCCOMB_X22_Y17_N20
\EXP|rem~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~111_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~10_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|rem~84_combout\,
	datad => \EXP|Add10~10_combout\,
	combout => \EXP|rem~111_combout\);

-- Location: LCCOMB_X25_Y17_N4
\EXP|rem~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~108_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~6_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|rem~90_combout\,
	datac => \EXP|Add10~6_combout\,
	combout => \EXP|rem~108_combout\);

-- Location: LCCOMB_X23_Y17_N12
\EXP|LessThan6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~17_combout\ = (\EXP|LessThan4~8_combout\) # ((\EXP|rem~46_combout\) # (\EXP|rem~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~8_combout\,
	datab => \EXP|rem~46_combout\,
	datac => \EXP|rem~92_combout\,
	combout => \EXP|LessThan6~17_combout\);

-- Location: LCCOMB_X22_Y16_N18
\EXP|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~10_combout\ = (\EXP|rem~111_combout\ & (!\EXP|Add14~9\)) # (!\EXP|rem~111_combout\ & ((\EXP|Add14~9\) # (GND)))
-- \EXP|Add14~11\ = CARRY((!\EXP|Add14~9\) # (!\EXP|rem~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~111_combout\,
	datad => VCC,
	cin => \EXP|Add14~9\,
	combout => \EXP|Add14~10_combout\,
	cout => \EXP|Add14~11\);

-- Location: LCCOMB_X22_Y16_N20
\EXP|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~12_combout\ = (\EXP|rem~102_combout\ & ((GND) # (!\EXP|Add14~11\))) # (!\EXP|rem~102_combout\ & (\EXP|Add14~11\ $ (GND)))
-- \EXP|Add14~13\ = CARRY((\EXP|rem~102_combout\) # (!\EXP|Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~102_combout\,
	datad => VCC,
	cin => \EXP|Add14~11\,
	combout => \EXP|Add14~12_combout\,
	cout => \EXP|Add14~13\);

-- Location: LCCOMB_X22_Y16_N26
\EXP|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~18_combout\ = (\EXP|rem~100_combout\ & (\EXP|Add14~17\ & VCC)) # (!\EXP|rem~100_combout\ & (!\EXP|Add14~17\))
-- \EXP|Add14~19\ = CARRY((!\EXP|rem~100_combout\ & !\EXP|Add14~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~100_combout\,
	datad => VCC,
	cin => \EXP|Add14~17\,
	combout => \EXP|Add14~18_combout\,
	cout => \EXP|Add14~19\);

-- Location: LCCOMB_X22_Y16_N28
\EXP|Add14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~20_combout\ = (\EXP|rem~103_combout\ & ((GND) # (!\EXP|Add14~19\))) # (!\EXP|rem~103_combout\ & (\EXP|Add14~19\ $ (GND)))
-- \EXP|Add14~21\ = CARRY((\EXP|rem~103_combout\) # (!\EXP|Add14~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~103_combout\,
	datad => VCC,
	cin => \EXP|Add14~19\,
	combout => \EXP|Add14~20_combout\,
	cout => \EXP|Add14~21\);

-- Location: LCCOMB_X22_Y16_N30
\EXP|Add14~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~22_combout\ = (\EXP|rem~110_combout\ & (\EXP|Add14~21\ & VCC)) # (!\EXP|rem~110_combout\ & (!\EXP|Add14~21\))
-- \EXP|Add14~23\ = CARRY((!\EXP|rem~110_combout\ & !\EXP|Add14~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~110_combout\,
	datad => VCC,
	cin => \EXP|Add14~21\,
	combout => \EXP|Add14~22_combout\,
	cout => \EXP|Add14~23\);

-- Location: LCCOMB_X22_Y15_N2
\EXP|Add14~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~26_combout\ = (\EXP|rem~96_combout\ & (!\EXP|Add14~25\)) # (!\EXP|rem~96_combout\ & ((\EXP|Add14~25\) # (GND)))
-- \EXP|Add14~27\ = CARRY((!\EXP|Add14~25\) # (!\EXP|rem~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~96_combout\,
	datad => VCC,
	cin => \EXP|Add14~25\,
	combout => \EXP|Add14~26_combout\,
	cout => \EXP|Add14~27\);

-- Location: LCCOMB_X23_Y15_N0
\EXP|rem~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~117_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~26_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~26_combout\,
	datad => \EXP|rem~96_combout\,
	combout => \EXP|rem~117_combout\);

-- Location: LCCOMB_X24_Y13_N0
\EXP|rem~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~126_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~18_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~18_combout\,
	datad => \EXP|rem~100_combout\,
	combout => \EXP|rem~126_combout\);

-- Location: LCCOMB_X22_Y17_N6
\EXP|rem~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~123_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~10_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|rem~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~111_combout\,
	datab => \EXP|Add14~10_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~123_combout\);

-- Location: LCCOMB_X22_Y16_N4
\EXP|rem~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~120_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~8_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~8_combout\,
	datac => \EXP|rem~106_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~120_combout\);

-- Location: LCCOMB_X23_Y16_N26
\EXP|rem~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~119_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~4_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~4_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~107_combout\,
	combout => \EXP|rem~119_combout\);

-- Location: LCCOMB_X24_Y15_N14
\EXP|rem~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~134_combout\ = (\EXP|rem~46_combout\ & ((\EXP|LessThan4~8_combout\ & ((\EXP|rem~92_combout\) # (!\EXP|LessThan6~15_combout\))) # (!\EXP|LessThan4~8_combout\ & (!\EXP|LessThan6~15_combout\ & \EXP|rem~92_combout\)))) # (!\EXP|rem~46_combout\ & 
-- ((\EXP|LessThan4~8_combout\ & (!\EXP|LessThan6~15_combout\ & \EXP|rem~92_combout\)) # (!\EXP|LessThan4~8_combout\ & (\EXP|LessThan6~15_combout\ & !\EXP|rem~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~46_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|rem~134_combout\);

-- Location: LCCOMB_X23_Y13_N6
\EXP|Add16~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~34_combout\ = (\EXP|rem~116_combout\ & (!\EXP|Add16~33\)) # (!\EXP|rem~116_combout\ & ((\EXP|Add16~33\) # (GND)))
-- \EXP|Add16~35\ = CARRY((!\EXP|Add16~33\) # (!\EXP|rem~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~116_combout\,
	datad => VCC,
	cin => \EXP|Add16~33\,
	combout => \EXP|Add16~34_combout\,
	cout => \EXP|Add16~35\);

-- Location: LCCOMB_X23_Y13_N8
\EXP|Add16~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~36_combout\ = (\EXP|rem~117_combout\ & (\EXP|Add16~35\ $ (GND))) # (!\EXP|rem~117_combout\ & (!\EXP|Add16~35\ & VCC))
-- \EXP|Add16~37\ = CARRY((\EXP|rem~117_combout\ & !\EXP|Add16~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~117_combout\,
	datad => VCC,
	cin => \EXP|Add16~35\,
	combout => \EXP|Add16~36_combout\,
	cout => \EXP|Add16~37\);

-- Location: LCCOMB_X23_Y13_N10
\EXP|Add16~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~38_combout\ = (\EXP|rem~128_combout\ & (!\EXP|Add16~37\)) # (!\EXP|rem~128_combout\ & ((\EXP|Add16~37\) # (GND)))
-- \EXP|Add16~39\ = CARRY((!\EXP|Add16~37\) # (!\EXP|rem~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~128_combout\,
	datad => VCC,
	cin => \EXP|Add16~37\,
	combout => \EXP|Add16~38_combout\,
	cout => \EXP|Add16~39\);

-- Location: LCCOMB_X22_Y13_N8
\EXP|LessThan8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~14_combout\ = (\EXP|LessThan8~13_combout\ & (\EXP|Add16~38_combout\ & (\EXP|Add16~36_combout\ & \EXP|Add16~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~13_combout\,
	datab => \EXP|Add16~38_combout\,
	datac => \EXP|Add16~36_combout\,
	datad => \EXP|Add16~34_combout\,
	combout => \EXP|LessThan8~14_combout\);

-- Location: LCCOMB_X22_Y15_N6
\EXP|Add14~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~30_combout\ = (\EXP|rem~98_combout\ & (!\EXP|Add14~29\)) # (!\EXP|rem~98_combout\ & ((\EXP|Add14~29\) # (GND)))
-- \EXP|Add14~31\ = CARRY((!\EXP|Add14~29\) # (!\EXP|rem~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~98_combout\,
	datad => VCC,
	cin => \EXP|Add14~29\,
	combout => \EXP|Add14~30_combout\,
	cout => \EXP|Add14~31\);

-- Location: LCCOMB_X23_Y15_N28
\EXP|rem~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~118_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~30_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|rem~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~98_combout\,
	datac => \EXP|Add14~30_combout\,
	datad => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~118_combout\);

-- Location: LCCOMB_X23_Y13_N12
\EXP|Add16~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~40_combout\ = (\EXP|rem~118_combout\ & (\EXP|Add16~39\ $ (GND))) # (!\EXP|rem~118_combout\ & (!\EXP|Add16~39\ & VCC))
-- \EXP|Add16~41\ = CARRY((\EXP|rem~118_combout\ & !\EXP|Add16~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~118_combout\,
	datad => VCC,
	cin => \EXP|Add16~39\,
	combout => \EXP|Add16~40_combout\,
	cout => \EXP|Add16~41\);

-- Location: LCCOMB_X22_Y15_N8
\EXP|Add14~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~32_combout\ = (\EXP|rem~94_combout\ & (\EXP|Add14~31\ $ (GND))) # (!\EXP|rem~94_combout\ & (!\EXP|Add14~31\ & VCC))
-- \EXP|Add14~33\ = CARRY((\EXP|rem~94_combout\ & !\EXP|Add14~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~94_combout\,
	datad => VCC,
	cin => \EXP|Add14~31\,
	combout => \EXP|Add14~32_combout\,
	cout => \EXP|Add14~33\);

-- Location: LCCOMB_X22_Y15_N24
\EXP|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~0_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~34_combout\) # ((\EXP|Add14~32_combout\)))) # (!\EXP|LessThan6~15_combout\ & (((\EXP|rem~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~34_combout\,
	datab => \EXP|Add14~32_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~94_combout\,
	combout => \EXP|LessThan7~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\EXP|rem~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~114_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~20_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~20_combout\,
	datad => \EXP|rem~103_combout\,
	combout => \EXP|rem~114_combout\);

-- Location: LCCOMB_X22_Y16_N2
\EXP|rem~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~115_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~22_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~22_combout\,
	datad => \EXP|rem~110_combout\,
	combout => \EXP|rem~115_combout\);

-- Location: LCCOMB_X23_Y15_N2
\EXP|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~3_combout\ = (\EXP|rem~116_combout\ & (\EXP|rem~114_combout\ & (\EXP|rem~115_combout\ & \EXP|rem~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~116_combout\,
	datab => \EXP|rem~114_combout\,
	datac => \EXP|rem~115_combout\,
	datad => \EXP|rem~117_combout\,
	combout => \EXP|LessThan7~3_combout\);

-- Location: LCCOMB_X23_Y16_N24
\EXP|LessThan7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~4_combout\ = (\EXP|LessThan7~3_combout\ & ((\EXP|LessThan6~15_combout\ & (\EXP|Add14~28_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~28_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|LessThan7~3_combout\,
	datad => \EXP|rem~97_combout\,
	combout => \EXP|LessThan7~4_combout\);

-- Location: LCCOMB_X22_Y16_N6
\EXP|rem~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~122_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~16_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~16_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~99_combout\,
	combout => \EXP|rem~122_combout\);

-- Location: LCCOMB_X23_Y16_N0
\EXP|rem~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~124_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~12_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~12_combout\,
	datad => \EXP|rem~102_combout\,
	combout => \EXP|rem~124_combout\);

-- Location: LCCOMB_X23_Y16_N4
\EXP|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~7_combout\ = (\EXP|rem~125_combout\) # ((\EXP|rem~123_combout\) # ((\EXP|rem~122_combout\) # (\EXP|rem~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~125_combout\,
	datab => \EXP|rem~123_combout\,
	datac => \EXP|rem~122_combout\,
	datad => \EXP|rem~124_combout\,
	combout => \EXP|LessThan7~7_combout\);

-- Location: LCCOMB_X23_Y16_N30
\EXP|rem~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~127_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add14~6_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|rem~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~6_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datad => \EXP|rem~108_combout\,
	combout => \EXP|rem~127_combout\);

-- Location: LCCOMB_X23_Y16_N16
\EXP|LessThan7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~8_combout\ = (\EXP|rem~126_combout\) # ((\EXP|rem~127_combout\ & \EXP|rem~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~127_combout\,
	datac => \EXP|rem~120_combout\,
	datad => \EXP|rem~126_combout\,
	combout => \EXP|LessThan7~8_combout\);

-- Location: LCCOMB_X23_Y16_N2
\EXP|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~9_combout\ = (\EXP|rem~118_combout\ & ((\EXP|LessThan7~6_combout\) # ((\EXP|LessThan7~7_combout\) # (\EXP|LessThan7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~6_combout\,
	datab => \EXP|LessThan7~7_combout\,
	datac => \EXP|LessThan7~8_combout\,
	datad => \EXP|rem~118_combout\,
	combout => \EXP|LessThan7~9_combout\);

-- Location: LCCOMB_X23_Y16_N28
\EXP|LessThan7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~10_combout\ = (\EXP|LessThan7~2_combout\) # ((\EXP|LessThan7~0_combout\) # ((\EXP|LessThan7~4_combout\ & \EXP|LessThan7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~2_combout\,
	datab => \EXP|LessThan7~0_combout\,
	datac => \EXP|LessThan7~4_combout\,
	datad => \EXP|LessThan7~9_combout\,
	combout => \EXP|LessThan7~10_combout\);

-- Location: LCCOMB_X22_Y13_N2
\EXP|LessThan8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~15_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add16~40_combout\) # ((\EXP|LessThan8~12_combout\ & \EXP|LessThan8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~12_combout\,
	datab => \EXP|LessThan8~14_combout\,
	datac => \EXP|Add16~40_combout\,
	datad => \EXP|LessThan7~10_combout\,
	combout => \EXP|LessThan8~15_combout\);

-- Location: LCCOMB_X24_Y16_N24
\EXP|rem~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~71_combout\ = (\EXP|LessThan4~8_combout\ & (\EXP|Add7~34_combout\)) # (!\EXP|LessThan4~8_combout\ & ((\EXP|rem~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~34_combout\,
	datab => \EXP|rem~53_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|rem~71_combout\);

-- Location: LCCOMB_X25_Y16_N10
\EXP|Add10~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~34_combout\ = (\EXP|rem~77_combout\ & (!\EXP|Add10~33\)) # (!\EXP|rem~77_combout\ & ((\EXP|Add10~33\) # (GND)))
-- \EXP|Add10~35\ = CARRY((!\EXP|Add10~33\) # (!\EXP|rem~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~77_combout\,
	datad => VCC,
	cin => \EXP|Add10~33\,
	combout => \EXP|Add10~34_combout\,
	cout => \EXP|Add10~35\);

-- Location: LCCOMB_X25_Y16_N12
\EXP|Add10~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~36_combout\ = (\EXP|rem~71_combout\ & ((GND) # (!\EXP|Add10~35\))) # (!\EXP|rem~71_combout\ & (\EXP|Add10~35\ $ (GND)))
-- \EXP|Add10~37\ = CARRY((\EXP|rem~71_combout\) # (!\EXP|Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~71_combout\,
	datad => VCC,
	cin => \EXP|Add10~35\,
	combout => \EXP|Add10~36_combout\,
	cout => \EXP|Add10~37\);

-- Location: LCCOMB_X24_Y13_N6
\EXP|rem~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~113_combout\ = (\EXP|rem~92_combout\ & \EXP|Add10~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datac => \EXP|Add10~36_combout\,
	combout => \EXP|rem~113_combout\);

-- Location: LCCOMB_X25_Y16_N28
\EXP|rem~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~112_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add10~34_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|rem~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~77_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add10~34_combout\,
	combout => \EXP|rem~112_combout\);

-- Location: LCCOMB_X22_Y15_N10
\EXP|Add14~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~34_combout\ = (\EXP|rem~112_combout\ & (\EXP|Add14~33\ & VCC)) # (!\EXP|rem~112_combout\ & (!\EXP|Add14~33\))
-- \EXP|Add14~35\ = CARRY((!\EXP|rem~112_combout\ & !\EXP|Add14~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~112_combout\,
	datad => VCC,
	cin => \EXP|Add14~33\,
	combout => \EXP|Add14~34_combout\,
	cout => \EXP|Add14~35\);

-- Location: LCCOMB_X22_Y15_N12
\EXP|Add14~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~36_combout\ = (\EXP|rem~113_combout\ & ((GND) # (!\EXP|Add14~35\))) # (!\EXP|rem~113_combout\ & (\EXP|Add14~35\ $ (GND)))
-- \EXP|Add14~37\ = CARRY((\EXP|rem~113_combout\) # (!\EXP|Add14~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~113_combout\,
	datad => VCC,
	cin => \EXP|Add14~35\,
	combout => \EXP|Add14~36_combout\,
	cout => \EXP|Add14~37\);

-- Location: LCCOMB_X22_Y15_N14
\EXP|Add14~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~38_combout\ = (\EXP|rem~105_combout\ & (\EXP|Add14~37\ & VCC)) # (!\EXP|rem~105_combout\ & (!\EXP|Add14~37\))
-- \EXP|Add14~39\ = CARRY((!\EXP|rem~105_combout\ & !\EXP|Add14~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~105_combout\,
	datad => VCC,
	cin => \EXP|Add14~37\,
	combout => \EXP|Add14~38_combout\,
	cout => \EXP|Add14~39\);

-- Location: LCCOMB_X24_Y13_N20
\EXP|rem~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~129_combout\ = (\EXP|Add14~38_combout\ & \EXP|LessThan6~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add14~38_combout\,
	datac => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~129_combout\);

-- Location: LCCOMB_X23_Y17_N16
\EXP|rem~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~130_combout\ = (\EXP|LessThan6~15_combout\ & \EXP|Add14~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add14~36_combout\,
	combout => \EXP|rem~130_combout\);

-- Location: LCCOMB_X24_Y13_N30
\EXP|rem~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~131_combout\ = (\EXP|Add14~34_combout\ & \EXP|LessThan6~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add14~34_combout\,
	datac => \EXP|LessThan6~15_combout\,
	combout => \EXP|rem~131_combout\);

-- Location: LCCOMB_X23_Y13_N18
\EXP|Add16~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~46_combout\ = (\EXP|rem~130_combout\ & (\EXP|Add16~45\ & VCC)) # (!\EXP|rem~130_combout\ & (!\EXP|Add16~45\))
-- \EXP|Add16~47\ = CARRY((!\EXP|rem~130_combout\ & !\EXP|Add16~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~130_combout\,
	datad => VCC,
	cin => \EXP|Add16~45\,
	combout => \EXP|Add16~46_combout\,
	cout => \EXP|Add16~47\);

-- Location: LCCOMB_X23_Y13_N20
\EXP|Add16~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~48_combout\ = (\EXP|rem~129_combout\ & ((GND) # (!\EXP|Add16~47\))) # (!\EXP|rem~129_combout\ & (\EXP|Add16~47\ $ (GND)))
-- \EXP|Add16~49\ = CARRY((\EXP|rem~129_combout\) # (!\EXP|Add16~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem~129_combout\,
	datad => VCC,
	cin => \EXP|Add16~47\,
	combout => \EXP|Add16~48_combout\,
	cout => \EXP|Add16~49\);

-- Location: LCCOMB_X22_Y13_N6
\EXP|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~7_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add16~48_combout\) # (\EXP|Add16~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add16~48_combout\,
	datac => \EXP|LessThan7~10_combout\,
	datad => \EXP|Add16~46_combout\,
	combout => \EXP|LessThan8~7_combout\);

-- Location: LCCOMB_X22_Y17_N16
\EXP|rem~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~104_combout\ = (\EXP|LessThan4~8_combout\ & \EXP|Add7~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|LessThan4~8_combout\,
	datad => \EXP|Add7~36_combout\,
	combout => \EXP|rem~104_combout\);

-- Location: LCCOMB_X25_Y16_N16
\EXP|Add10~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~40_combout\ = (\EXP|Add10~39\ & ((((\EXP|Add7~38_combout\ & \EXP|LessThan4~8_combout\))))) # (!\EXP|Add10~39\ & (((\EXP|Add7~38_combout\ & \EXP|LessThan4~8_combout\)) # (GND)))
-- \EXP|Add10~41\ = CARRY(((\EXP|Add7~38_combout\ & \EXP|LessThan4~8_combout\)) # (!\EXP|Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~38_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => VCC,
	cin => \EXP|Add10~39\,
	combout => \EXP|Add10~40_combout\,
	cout => \EXP|Add10~41\);

-- Location: LCCOMB_X25_Y16_N20
\EXP|Add10~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~44_combout\ = (\EXP|Add10~43\ & ((((\EXP|Add7~42_combout\ & \EXP|LessThan4~8_combout\))))) # (!\EXP|Add10~43\ & (((\EXP|Add7~42_combout\ & \EXP|LessThan4~8_combout\)) # (GND)))
-- \EXP|Add10~45\ = CARRY(((\EXP|Add7~42_combout\ & \EXP|LessThan4~8_combout\)) # (!\EXP|Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~42_combout\,
	datab => \EXP|LessThan4~8_combout\,
	datad => VCC,
	cin => \EXP|Add10~43\,
	combout => \EXP|Add10~44_combout\,
	cout => \EXP|Add10~45\);

-- Location: LCCOMB_X25_Y16_N22
\EXP|Add10~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~46_combout\ = \EXP|Add10~45\ $ (((!\EXP|LessThan4~8_combout\) # (!\EXP|Add7~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add7~44_combout\,
	datad => \EXP|LessThan4~8_combout\,
	cin => \EXP|Add10~45\,
	combout => \EXP|Add10~46_combout\);

-- Location: LCCOMB_X22_Y15_N16
\EXP|Add14~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~40_combout\ = (\EXP|Add14~39\ & ((((\EXP|rem~92_combout\ & \EXP|Add10~40_combout\))))) # (!\EXP|Add14~39\ & (((\EXP|rem~92_combout\ & \EXP|Add10~40_combout\)) # (GND)))
-- \EXP|Add14~41\ = CARRY(((\EXP|rem~92_combout\ & \EXP|Add10~40_combout\)) # (!\EXP|Add14~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|Add10~40_combout\,
	datad => VCC,
	cin => \EXP|Add14~39\,
	combout => \EXP|Add14~40_combout\,
	cout => \EXP|Add14~41\);

-- Location: LCCOMB_X22_Y15_N18
\EXP|Add14~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~42_combout\ = (\EXP|Add10~42_combout\ & ((\EXP|rem~92_combout\ & (\EXP|Add14~41\ & VCC)) # (!\EXP|rem~92_combout\ & (!\EXP|Add14~41\)))) # (!\EXP|Add10~42_combout\ & (((!\EXP|Add14~41\))))
-- \EXP|Add14~43\ = CARRY((!\EXP|Add14~41\ & ((!\EXP|rem~92_combout\) # (!\EXP|Add10~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~42_combout\,
	datab => \EXP|rem~92_combout\,
	datad => VCC,
	cin => \EXP|Add14~41\,
	combout => \EXP|Add14~42_combout\,
	cout => \EXP|Add14~43\);

-- Location: LCCOMB_X22_Y15_N20
\EXP|Add14~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~44_combout\ = (\EXP|Add14~43\ & ((((\EXP|rem~92_combout\ & \EXP|Add10~44_combout\))))) # (!\EXP|Add14~43\ & (((\EXP|rem~92_combout\ & \EXP|Add10~44_combout\)) # (GND)))
-- \EXP|Add14~45\ = CARRY(((\EXP|rem~92_combout\ & \EXP|Add10~44_combout\)) # (!\EXP|Add14~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datab => \EXP|Add10~44_combout\,
	datad => VCC,
	cin => \EXP|Add14~43\,
	combout => \EXP|Add14~44_combout\,
	cout => \EXP|Add14~45\);

-- Location: LCCOMB_X22_Y15_N22
\EXP|Add14~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~46_combout\ = \EXP|Add14~45\ $ (((!\EXP|Add10~46_combout\) # (!\EXP|rem~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datad => \EXP|Add10~46_combout\,
	cin => \EXP|Add14~45\,
	combout => \EXP|Add14~46_combout\);

-- Location: LCCOMB_X23_Y13_N22
\EXP|Add16~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~50_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add14~40_combout\ & (\EXP|Add16~49\ & VCC)) # (!\EXP|Add14~40_combout\ & (!\EXP|Add16~49\)))) # (!\EXP|LessThan6~15_combout\ & (((!\EXP|Add16~49\))))
-- \EXP|Add16~51\ = CARRY((!\EXP|Add16~49\ & ((!\EXP|Add14~40_combout\) # (!\EXP|LessThan6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|Add14~40_combout\,
	datad => VCC,
	cin => \EXP|Add16~49\,
	combout => \EXP|Add16~50_combout\,
	cout => \EXP|Add16~51\);

-- Location: LCCOMB_X23_Y13_N28
\EXP|Add16~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add16~56_combout\ = \EXP|Add16~55\ $ (((\EXP|Add14~46_combout\ & \EXP|LessThan6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add14~46_combout\,
	datad => \EXP|LessThan6~15_combout\,
	cin => \EXP|Add16~55\,
	combout => \EXP|Add16~56_combout\);

-- Location: LCCOMB_X22_Y13_N0
\EXP|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~4_combout\ = (\EXP|LessThan7~10_combout\ & (((\EXP|Add16~56_combout\) # (\EXP|Add16~50_combout\)))) # (!\EXP|LessThan7~10_combout\ & (\EXP|LessThan8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~3_combout\,
	datab => \EXP|Add16~56_combout\,
	datac => \EXP|Add16~50_combout\,
	datad => \EXP|LessThan7~10_combout\,
	combout => \EXP|LessThan8~4_combout\);

-- Location: LCCOMB_X22_Y13_N20
\EXP|LessThan8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~16_combout\ = (!\EXP|LessThan8~6_combout\ & (!\EXP|LessThan8~15_combout\ & (!\EXP|LessThan8~7_combout\ & !\EXP|LessThan8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~6_combout\,
	datab => \EXP|LessThan8~15_combout\,
	datac => \EXP|LessThan8~7_combout\,
	datad => \EXP|LessThan8~4_combout\,
	combout => \EXP|LessThan8~16_combout\);

-- Location: LCFF_X25_Y10_N7
\EXP|exp[-5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-5]~10_combout\,
	sdata => \EXP|Add17~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-5]~regout\);

-- Location: LCCOMB_X24_Y15_N28
\EXP|Add8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~13_combout\ = \EXP|Add8~12\ $ (\EXP|Add5~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Add5~15_combout\,
	cin => \EXP|Add8~12\,
	combout => \EXP|Add8~13_combout\);

-- Location: LCCOMB_X24_Y15_N12
\EXP|Add8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~15_combout\ = (\EXP|LessThan4~8_combout\ & ((\EXP|Add8~13_combout\))) # (!\EXP|LessThan4~8_combout\ & (\EXP|Add5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~15_combout\,
	datab => \EXP|Add8~13_combout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|Add8~15_combout\);

-- Location: LCCOMB_X24_Y14_N22
\EXP|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~8_combout\ = ((\EXP|Add8~15_combout\ $ (\EXP|Add8~8_combout\ $ (!\EXP|Add11~7\)))) # (GND)
-- \EXP|Add11~9\ = CARRY((\EXP|Add8~15_combout\ & ((\EXP|Add8~8_combout\) # (!\EXP|Add11~7\))) # (!\EXP|Add8~15_combout\ & (\EXP|Add8~8_combout\ & !\EXP|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~15_combout\,
	datab => \EXP|Add8~8_combout\,
	datad => VCC,
	cin => \EXP|Add11~7\,
	combout => \EXP|Add11~8_combout\,
	cout => \EXP|Add11~9\);

-- Location: LCCOMB_X24_Y14_N28
\EXP|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~16_combout\ = \EXP|Add11~15\ $ (\EXP|Add8~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Add8~15_combout\,
	cin => \EXP|Add11~15\,
	combout => \EXP|Add11~16_combout\);

-- Location: LCCOMB_X24_Y14_N4
\EXP|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~18_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add11~16_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|Add8~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~15_combout\,
	datab => \EXP|Add11~16_combout\,
	datac => \EXP|rem~92_combout\,
	combout => \EXP|Add11~18_combout\);

-- Location: LCCOMB_X24_Y13_N24
\EXP|Add11~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~21_combout\ = (\EXP|rem~92_combout\ & (\EXP|Add11~2_combout\)) # (!\EXP|rem~92_combout\ & ((\EXP|e~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~2_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|e~17_combout\,
	combout => \EXP|Add11~21_combout\);

-- Location: LCCOMB_X24_Y14_N8
\EXP|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~10_combout\ = (\EXP|rem~92_combout\ & (\EXP|Add11~8_combout\)) # (!\EXP|rem~92_combout\ & ((\EXP|Add8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~8_combout\,
	datac => \EXP|rem~92_combout\,
	datad => \EXP|Add8~8_combout\,
	combout => \EXP|Add11~10_combout\);

-- Location: LCCOMB_X24_Y13_N2
\EXP|e~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~12_combout\ = (\EXP|rem~92_combout\ & \EXP|Add8~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem~92_combout\,
	datac => \EXP|Add8~19_combout\,
	combout => \EXP|e~12_combout\);

-- Location: LCCOMB_X25_Y14_N2
\EXP|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~6_combout\ = (\EXP|Add11~11_combout\ & ((\EXP|e~12_combout\ & (\EXP|Add15~5\ & VCC)) # (!\EXP|e~12_combout\ & (!\EXP|Add15~5\)))) # (!\EXP|Add11~11_combout\ & ((\EXP|e~12_combout\ & (!\EXP|Add15~5\)) # (!\EXP|e~12_combout\ & ((\EXP|Add15~5\) # 
-- (GND)))))
-- \EXP|Add15~7\ = CARRY((\EXP|Add11~11_combout\ & (!\EXP|e~12_combout\ & !\EXP|Add15~5\)) # (!\EXP|Add11~11_combout\ & ((!\EXP|Add15~5\) # (!\EXP|e~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~11_combout\,
	datab => \EXP|e~12_combout\,
	datad => VCC,
	cin => \EXP|Add15~5\,
	combout => \EXP|Add15~6_combout\,
	cout => \EXP|Add15~7\);

-- Location: LCCOMB_X25_Y14_N4
\EXP|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~8_combout\ = ((\EXP|Add11~23_combout\ $ (\EXP|Add11~10_combout\ $ (!\EXP|Add15~7\)))) # (GND)
-- \EXP|Add15~9\ = CARRY((\EXP|Add11~23_combout\ & ((\EXP|Add11~10_combout\) # (!\EXP|Add15~7\))) # (!\EXP|Add11~23_combout\ & (\EXP|Add11~10_combout\ & !\EXP|Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~23_combout\,
	datab => \EXP|Add11~10_combout\,
	datad => VCC,
	cin => \EXP|Add15~7\,
	combout => \EXP|Add15~8_combout\,
	cout => \EXP|Add15~9\);

-- Location: LCCOMB_X25_Y14_N6
\EXP|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~10_combout\ = (\EXP|Add11~22_combout\ & ((\EXP|Add11~21_combout\ & (\EXP|Add15~9\ & VCC)) # (!\EXP|Add11~21_combout\ & (!\EXP|Add15~9\)))) # (!\EXP|Add11~22_combout\ & ((\EXP|Add11~21_combout\ & (!\EXP|Add15~9\)) # (!\EXP|Add11~21_combout\ & 
-- ((\EXP|Add15~9\) # (GND)))))
-- \EXP|Add15~11\ = CARRY((\EXP|Add11~22_combout\ & (!\EXP|Add11~21_combout\ & !\EXP|Add15~9\)) # (!\EXP|Add11~22_combout\ & ((!\EXP|Add15~9\) # (!\EXP|Add11~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~22_combout\,
	datab => \EXP|Add11~21_combout\,
	datad => VCC,
	cin => \EXP|Add15~9\,
	combout => \EXP|Add15~10_combout\,
	cout => \EXP|Add15~11\);

-- Location: LCCOMB_X25_Y14_N8
\EXP|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~12_combout\ = ((\EXP|Add11~20_combout\ $ (\EXP|Add11~19_combout\ $ (!\EXP|Add15~11\)))) # (GND)
-- \EXP|Add15~13\ = CARRY((\EXP|Add11~20_combout\ & ((\EXP|Add11~19_combout\) # (!\EXP|Add15~11\))) # (!\EXP|Add11~20_combout\ & (\EXP|Add11~19_combout\ & !\EXP|Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~20_combout\,
	datab => \EXP|Add11~19_combout\,
	datad => VCC,
	cin => \EXP|Add15~11\,
	combout => \EXP|Add15~12_combout\,
	cout => \EXP|Add15~13\);

-- Location: LCCOMB_X25_Y14_N12
\EXP|Add15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~16_combout\ = (\EXP|Add11~10_combout\ & (\EXP|Add15~15\ $ (GND))) # (!\EXP|Add11~10_combout\ & (!\EXP|Add15~15\ & VCC))
-- \EXP|Add15~17\ = CARRY((\EXP|Add11~10_combout\ & !\EXP|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~10_combout\,
	datad => VCC,
	cin => \EXP|Add15~15\,
	combout => \EXP|Add15~16_combout\,
	cout => \EXP|Add15~17\);

-- Location: LCCOMB_X25_Y14_N14
\EXP|Add15~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~21_combout\ = (\EXP|Add11~22_combout\ & (!\EXP|Add15~17\)) # (!\EXP|Add11~22_combout\ & ((\EXP|Add15~17\) # (GND)))
-- \EXP|Add15~22\ = CARRY((!\EXP|Add15~17\) # (!\EXP|Add11~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~22_combout\,
	datad => VCC,
	cin => \EXP|Add15~17\,
	combout => \EXP|Add15~21_combout\,
	cout => \EXP|Add15~22\);

-- Location: LCCOMB_X24_Y14_N10
\EXP|Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~22_combout\ = (\EXP|rem~92_combout\ & (\EXP|Add11~12_combout\)) # (!\EXP|rem~92_combout\ & ((\EXP|Add8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~12_combout\,
	datab => \EXP|Add8~18_combout\,
	datac => \EXP|rem~92_combout\,
	combout => \EXP|Add11~22_combout\);

-- Location: LCCOMB_X25_Y14_N30
\EXP|Add15~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~31_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add15~21_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|Add11~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add15~21_combout\,
	datad => \EXP|Add11~22_combout\,
	combout => \EXP|Add15~31_combout\);

-- Location: LCCOMB_X25_Y14_N20
\EXP|Add15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~18_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add15~16_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|Add11~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~10_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|Add15~16_combout\,
	combout => \EXP|Add15~18_combout\);

-- Location: LCCOMB_X25_Y14_N22
\EXP|Add15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~20_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add15~12_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|Add11~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~19_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|Add15~12_combout\,
	combout => \EXP|Add15~20_combout\);

-- Location: LCCOMB_X25_Y14_N16
\EXP|Add15~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~23_combout\ = (\EXP|Add11~20_combout\ & (\EXP|Add15~22\ $ (GND))) # (!\EXP|Add11~20_combout\ & (!\EXP|Add15~22\ & VCC))
-- \EXP|Add15~24\ = CARRY((\EXP|Add11~20_combout\ & !\EXP|Add15~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~20_combout\,
	datad => VCC,
	cin => \EXP|Add15~22\,
	combout => \EXP|Add15~23_combout\,
	cout => \EXP|Add15~24\);

-- Location: LCCOMB_X25_Y14_N26
\EXP|Add15~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~29_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add15~23_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|Add11~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~20_combout\,
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add15~23_combout\,
	combout => \EXP|Add15~29_combout\);

-- Location: LCCOMB_X25_Y13_N2
\EXP|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~2_combout\ = (\EXP|Add15~32_combout\ & ((\EXP|Add15~18_combout\ & (\EXP|Add17~1\ & VCC)) # (!\EXP|Add15~18_combout\ & (!\EXP|Add17~1\)))) # (!\EXP|Add15~32_combout\ & ((\EXP|Add15~18_combout\ & (!\EXP|Add17~1\)) # (!\EXP|Add15~18_combout\ & 
-- ((\EXP|Add17~1\) # (GND)))))
-- \EXP|Add17~3\ = CARRY((\EXP|Add15~32_combout\ & (!\EXP|Add15~18_combout\ & !\EXP|Add17~1\)) # (!\EXP|Add15~32_combout\ & ((!\EXP|Add17~1\) # (!\EXP|Add15~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~32_combout\,
	datab => \EXP|Add15~18_combout\,
	datad => VCC,
	cin => \EXP|Add17~1\,
	combout => \EXP|Add17~2_combout\,
	cout => \EXP|Add17~3\);

-- Location: LCCOMB_X25_Y13_N4
\EXP|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~4_combout\ = ((\EXP|Add15~30_combout\ $ (\EXP|Add15~31_combout\ $ (!\EXP|Add17~3\)))) # (GND)
-- \EXP|Add17~5\ = CARRY((\EXP|Add15~30_combout\ & ((\EXP|Add15~31_combout\) # (!\EXP|Add17~3\))) # (!\EXP|Add15~30_combout\ & (\EXP|Add15~31_combout\ & !\EXP|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~30_combout\,
	datab => \EXP|Add15~31_combout\,
	datad => VCC,
	cin => \EXP|Add17~3\,
	combout => \EXP|Add17~4_combout\,
	cout => \EXP|Add17~5\);

-- Location: LCCOMB_X25_Y13_N6
\EXP|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~6_combout\ = (\EXP|Add15~28_combout\ & ((\EXP|Add15~29_combout\ & (\EXP|Add17~5\ & VCC)) # (!\EXP|Add15~29_combout\ & (!\EXP|Add17~5\)))) # (!\EXP|Add15~28_combout\ & ((\EXP|Add15~29_combout\ & (!\EXP|Add17~5\)) # (!\EXP|Add15~29_combout\ & 
-- ((\EXP|Add17~5\) # (GND)))))
-- \EXP|Add17~7\ = CARRY((\EXP|Add15~28_combout\ & (!\EXP|Add15~29_combout\ & !\EXP|Add17~5\)) # (!\EXP|Add15~28_combout\ & ((!\EXP|Add17~5\) # (!\EXP|Add15~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~28_combout\,
	datab => \EXP|Add15~29_combout\,
	datad => VCC,
	cin => \EXP|Add17~5\,
	combout => \EXP|Add17~6_combout\,
	cout => \EXP|Add17~7\);

-- Location: LCCOMB_X25_Y13_N8
\EXP|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~8_combout\ = ((\EXP|Add15~27_combout\ $ (\EXP|Add15~20_combout\ $ (!\EXP|Add17~7\)))) # (GND)
-- \EXP|Add17~9\ = CARRY((\EXP|Add15~27_combout\ & ((\EXP|Add15~20_combout\) # (!\EXP|Add17~7\))) # (!\EXP|Add15~27_combout\ & (\EXP|Add15~20_combout\ & !\EXP|Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~27_combout\,
	datab => \EXP|Add15~20_combout\,
	datad => VCC,
	cin => \EXP|Add17~7\,
	combout => \EXP|Add17~8_combout\,
	cout => \EXP|Add17~9\);

-- Location: LCCOMB_X25_Y13_N10
\EXP|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~10_combout\ = (\EXP|Add15~19_combout\ & (!\EXP|Add17~9\)) # (!\EXP|Add15~19_combout\ & ((\EXP|Add17~9\) # (GND)))
-- \EXP|Add17~11\ = CARRY((!\EXP|Add17~9\) # (!\EXP|Add15~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add15~19_combout\,
	datad => VCC,
	cin => \EXP|Add17~9\,
	combout => \EXP|Add17~10_combout\,
	cout => \EXP|Add17~11\);

-- Location: LCCOMB_X25_Y13_N12
\EXP|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~12_combout\ = (\EXP|Add15~18_combout\ & (\EXP|Add17~11\ $ (GND))) # (!\EXP|Add15~18_combout\ & (!\EXP|Add17~11\ & VCC))
-- \EXP|Add17~13\ = CARRY((\EXP|Add15~18_combout\ & !\EXP|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add15~18_combout\,
	datad => VCC,
	cin => \EXP|Add17~11\,
	combout => \EXP|Add17~12_combout\,
	cout => \EXP|Add17~13\);

-- Location: LCCOMB_X25_Y13_N14
\EXP|Add17~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~17_combout\ = (\EXP|Add15~31_combout\ & (!\EXP|Add17~13\)) # (!\EXP|Add15~31_combout\ & ((\EXP|Add17~13\) # (GND)))
-- \EXP|Add17~18\ = CARRY((!\EXP|Add17~13\) # (!\EXP|Add15~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add15~31_combout\,
	datad => VCC,
	cin => \EXP|Add17~13\,
	combout => \EXP|Add17~17_combout\,
	cout => \EXP|Add17~18\);

-- Location: LCCOMB_X25_Y13_N24
\EXP|Add17~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~19_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~17_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add17~17_combout\,
	datad => \EXP|Add15~31_combout\,
	combout => \EXP|Add17~19_combout\);

-- Location: LCCOMB_X25_Y10_N8
\EXP|exp[-4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-4]~12_combout\ = (\EXP|Add17~16_combout\ & ((\EXP|Add17~19_combout\ & (\EXP|exp[-5]~11\ & VCC)) # (!\EXP|Add17~19_combout\ & (!\EXP|exp[-5]~11\)))) # (!\EXP|Add17~16_combout\ & ((\EXP|Add17~19_combout\ & (!\EXP|exp[-5]~11\)) # 
-- (!\EXP|Add17~19_combout\ & ((\EXP|exp[-5]~11\) # (GND)))))
-- \EXP|exp[-4]~13\ = CARRY((\EXP|Add17~16_combout\ & (!\EXP|Add17~19_combout\ & !\EXP|exp[-5]~11\)) # (!\EXP|Add17~16_combout\ & ((!\EXP|exp[-5]~11\) # (!\EXP|Add17~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~16_combout\,
	datab => \EXP|Add17~19_combout\,
	datad => VCC,
	cin => \EXP|exp[-5]~11\,
	combout => \EXP|exp[-4]~12_combout\,
	cout => \EXP|exp[-4]~13\);

-- Location: LCCOMB_X24_Y14_N30
\EXP|Add15~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~32_combout\ = (\EXP|LessThan6~15_combout\ & (((\EXP|Add15~6_combout\)))) # (!\EXP|LessThan6~15_combout\ & (\EXP|rem~92_combout\ & (\EXP|Add8~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~15_combout\,
	datab => \EXP|rem~92_combout\,
	datac => \EXP|Add8~19_combout\,
	datad => \EXP|Add15~6_combout\,
	combout => \EXP|Add15~32_combout\);

-- Location: LCCOMB_X25_Y13_N22
\EXP|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~16_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add17~2_combout\))) # (!\EXP|LessThan7~10_combout\ & (\EXP|Add15~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add15~32_combout\,
	datad => \EXP|Add17~2_combout\,
	combout => \EXP|Add17~16_combout\);

-- Location: LCFF_X25_Y10_N9
\EXP|exp[-4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-4]~12_combout\,
	sdata => \EXP|Add17~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-4]~regout\);

-- Location: LCCOMB_X25_Y13_N26
\EXP|Add17~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~23_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~21_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~21_combout\,
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add15~29_combout\,
	combout => \EXP|Add17~23_combout\);

-- Location: LCCOMB_X25_Y10_N10
\EXP|exp[-3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-3]~14_combout\ = ((\EXP|Add17~20_combout\ $ (\EXP|Add17~23_combout\ $ (!\EXP|exp[-4]~13\)))) # (GND)
-- \EXP|exp[-3]~15\ = CARRY((\EXP|Add17~20_combout\ & ((\EXP|Add17~23_combout\) # (!\EXP|exp[-4]~13\))) # (!\EXP|Add17~20_combout\ & (\EXP|Add17~23_combout\ & !\EXP|exp[-4]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~20_combout\,
	datab => \EXP|Add17~23_combout\,
	datad => VCC,
	cin => \EXP|exp[-4]~13\,
	combout => \EXP|exp[-3]~14_combout\,
	cout => \EXP|exp[-3]~15\);

-- Location: LCCOMB_X24_Y14_N12
\EXP|Add11~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~23_combout\ = (\EXP|rem~92_combout\ & ((\EXP|Add11~0_combout\))) # (!\EXP|rem~92_combout\ & (!\EXP|e~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|e~11_combout\,
	datab => \EXP|Add11~0_combout\,
	datac => \EXP|rem~92_combout\,
	combout => \EXP|Add11~23_combout\);

-- Location: LCCOMB_X25_Y14_N28
\EXP|Add15~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~30_combout\ = (\EXP|LessThan6~15_combout\ & (\EXP|Add15~8_combout\)) # (!\EXP|LessThan6~15_combout\ & ((\EXP|Add11~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add15~8_combout\,
	datad => \EXP|Add11~23_combout\,
	combout => \EXP|Add15~30_combout\);

-- Location: LCCOMB_X25_Y10_N0
\EXP|Add17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~20_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~4_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add17~4_combout\,
	datad => \EXP|Add15~30_combout\,
	combout => \EXP|Add17~20_combout\);

-- Location: LCFF_X25_Y10_N11
\EXP|exp[-3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-3]~14_combout\,
	sdata => \EXP|Add17~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-3]~regout\);

-- Location: LCCOMB_X24_Y13_N28
\EXP|Add15~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~28_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add15~10_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|Add11~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~21_combout\,
	datac => \EXP|LessThan6~15_combout\,
	datad => \EXP|Add15~10_combout\,
	combout => \EXP|Add15~28_combout\);

-- Location: LCCOMB_X25_Y10_N26
\EXP|Add17~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~24_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add17~6_combout\))) # (!\EXP|LessThan7~10_combout\ & (\EXP|Add15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~10_combout\,
	datab => \EXP|Add15~28_combout\,
	datad => \EXP|Add17~6_combout\,
	combout => \EXP|Add17~24_combout\);

-- Location: LCCOMB_X25_Y10_N12
\EXP|exp[-2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-2]~16_combout\ = (\EXP|Add17~27_combout\ & ((\EXP|Add17~24_combout\ & (\EXP|exp[-3]~15\ & VCC)) # (!\EXP|Add17~24_combout\ & (!\EXP|exp[-3]~15\)))) # (!\EXP|Add17~27_combout\ & ((\EXP|Add17~24_combout\ & (!\EXP|exp[-3]~15\)) # 
-- (!\EXP|Add17~24_combout\ & ((\EXP|exp[-3]~15\) # (GND)))))
-- \EXP|exp[-2]~17\ = CARRY((\EXP|Add17~27_combout\ & (!\EXP|Add17~24_combout\ & !\EXP|exp[-3]~15\)) # (!\EXP|Add17~27_combout\ & ((!\EXP|exp[-3]~15\) # (!\EXP|Add17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~27_combout\,
	datab => \EXP|Add17~24_combout\,
	datad => VCC,
	cin => \EXP|exp[-3]~15\,
	combout => \EXP|exp[-2]~16_combout\,
	cout => \EXP|exp[-2]~17\);

-- Location: LCFF_X25_Y10_N13
\EXP|exp[-2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-2]~16_combout\,
	sdata => \EXP|Add17~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-2]~regout\);

-- Location: LCCOMB_X25_Y10_N14
\EXP|exp[-1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-1]~18_combout\ = (\EXP|Add17~28_combout\ & (\EXP|exp[-2]~17\ $ (GND))) # (!\EXP|Add17~28_combout\ & (!\EXP|exp[-2]~17\ & VCC))
-- \EXP|exp[-1]~19\ = CARRY((\EXP|Add17~28_combout\ & !\EXP|exp[-2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~28_combout\,
	datad => VCC,
	cin => \EXP|exp[-2]~17\,
	combout => \EXP|exp[-1]~18_combout\,
	cout => \EXP|exp[-1]~19\);

-- Location: LCCOMB_X25_Y13_N30
\EXP|Add17~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~28_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~8_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add17~8_combout\,
	datad => \EXP|Add15~20_combout\,
	combout => \EXP|Add17~28_combout\);

-- Location: LCFF_X25_Y10_N15
\EXP|exp[-1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-1]~18_combout\,
	sdata => \EXP|Add17~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-1]~regout\);

-- Location: LCCOMB_X25_Y10_N16
\EXP|exp[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[0]~20_combout\ = (\EXP|Add17~29_combout\ & (\EXP|exp[-1]~19\ $ (GND))) # (!\EXP|Add17~29_combout\ & ((GND) # (!\EXP|exp[-1]~19\)))
-- \EXP|exp[0]~21\ = CARRY((!\EXP|exp[-1]~19\) # (!\EXP|Add17~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~29_combout\,
	datad => VCC,
	cin => \EXP|exp[-1]~19\,
	combout => \EXP|exp[0]~20_combout\,
	cout => \EXP|exp[0]~21\);

-- Location: LCCOMB_X24_Y13_N8
\EXP|Add17~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~29_combout\ = (\EXP|LessThan7~10_combout\ & (\EXP|Add17~10_combout\)) # (!\EXP|LessThan7~10_combout\ & ((\EXP|Add15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add17~10_combout\,
	datad => \EXP|Add15~19_combout\,
	combout => \EXP|Add17~29_combout\);

-- Location: LCCOMB_X25_Y10_N4
\EXP|Add17~29_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~29_wirecell_combout\ = !\EXP|Add17~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Add17~29_combout\,
	combout => \EXP|Add17~29_wirecell_combout\);

-- Location: LCFF_X25_Y10_N17
\EXP|exp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[0]~20_combout\,
	sdata => \EXP|Add17~29_wirecell_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(0));

-- Location: LCCOMB_X25_Y10_N18
\EXP|exp[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[1]~22_combout\ = (\EXP|Add17~14_combout\ & (\EXP|exp[0]~21\ $ (GND))) # (!\EXP|Add17~14_combout\ & (!\EXP|exp[0]~21\ & VCC))
-- \EXP|exp[1]~23\ = CARRY((\EXP|Add17~14_combout\ & !\EXP|exp[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~14_combout\,
	datad => VCC,
	cin => \EXP|exp[0]~21\,
	combout => \EXP|exp[1]~22_combout\,
	cout => \EXP|exp[1]~23\);

-- Location: LCCOMB_X25_Y13_N28
\EXP|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~14_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add17~12_combout\))) # (!\EXP|LessThan7~10_combout\ & (\EXP|Add15~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add15~18_combout\,
	datad => \EXP|Add17~12_combout\,
	combout => \EXP|Add17~14_combout\);

-- Location: LCFF_X25_Y10_N19
\EXP|exp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[1]~22_combout\,
	sdata => \EXP|Add17~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(1));

-- Location: LCCOMB_X25_Y10_N20
\EXP|exp[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[2]~24_combout\ = (\EXP|Add17~19_combout\ & (!\EXP|exp[1]~23\)) # (!\EXP|Add17~19_combout\ & ((\EXP|exp[1]~23\) # (GND)))
-- \EXP|exp[2]~25\ = CARRY((!\EXP|exp[1]~23\) # (!\EXP|Add17~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add17~19_combout\,
	datad => VCC,
	cin => \EXP|exp[1]~23\,
	combout => \EXP|exp[2]~24_combout\,
	cout => \EXP|exp[2]~25\);

-- Location: LCFF_X25_Y10_N21
\EXP|exp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[2]~24_combout\,
	sdata => \EXP|Add17~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(2));

-- Location: LCCOMB_X25_Y10_N22
\EXP|exp[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[3]~26_combout\ = (\EXP|Add17~23_combout\ & (\EXP|exp[2]~25\ $ (GND))) # (!\EXP|Add17~23_combout\ & (!\EXP|exp[2]~25\ & VCC))
-- \EXP|exp[3]~27\ = CARRY((\EXP|Add17~23_combout\ & !\EXP|exp[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add17~23_combout\,
	datad => VCC,
	cin => \EXP|exp[2]~25\,
	combout => \EXP|exp[3]~26_combout\,
	cout => \EXP|exp[3]~27\);

-- Location: LCFF_X25_Y10_N23
\EXP|exp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[3]~26_combout\,
	sdata => \EXP|Add17~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(3));

-- Location: LCCOMB_X25_Y10_N24
\EXP|exp[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[4]~28_combout\ = \EXP|Add17~27_combout\ $ (\EXP|exp[3]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add17~27_combout\,
	cin => \EXP|exp[3]~27\,
	combout => \EXP|exp[4]~28_combout\);

-- Location: LCCOMB_X25_Y14_N18
\EXP|Add15~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~25_combout\ = \EXP|Add11~18_combout\ $ (\EXP|Add15~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~18_combout\,
	cin => \EXP|Add15~24\,
	combout => \EXP|Add15~25_combout\);

-- Location: LCCOMB_X25_Y14_N24
\EXP|Add15~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~27_combout\ = (\EXP|LessThan6~15_combout\ & ((\EXP|Add15~25_combout\))) # (!\EXP|LessThan6~15_combout\ & (\EXP|Add11~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~15_combout\,
	datac => \EXP|Add11~18_combout\,
	datad => \EXP|Add15~25_combout\,
	combout => \EXP|Add15~27_combout\);

-- Location: LCCOMB_X25_Y13_N18
\EXP|Add17~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~25_combout\ = \EXP|Add15~27_combout\ $ (\EXP|Add17~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~27_combout\,
	cin => \EXP|Add17~22\,
	combout => \EXP|Add17~25_combout\);

-- Location: LCCOMB_X25_Y13_N20
\EXP|Add17~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add17~27_combout\ = (\EXP|LessThan7~10_combout\ & ((\EXP|Add17~25_combout\))) # (!\EXP|LessThan7~10_combout\ & (\EXP|Add15~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~10_combout\,
	datac => \EXP|Add15~27_combout\,
	datad => \EXP|Add17~25_combout\,
	combout => \EXP|Add17~27_combout\);

-- Location: LCFF_X25_Y10_N25
\EXP|exp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[4]~28_combout\,
	sdata => \EXP|Add17~27_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \EXP|LessThan8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(4));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \EXP|exp[-5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \EXP|exp[-4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \EXP|exp[-3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \EXP|exp[-2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \EXP|exp[-1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \EXP|ALT_INV_exp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \EXP|exp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \EXP|exp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => \EXP|exp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \EXP|exp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


