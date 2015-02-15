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

-- DATE "02/14/2015 20:21:37"

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
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \EXP|Add14~0_combout\ : std_logic;
SIGNAL \EXP|Add8~0_combout\ : std_logic;
SIGNAL \EXP|Add10~2_combout\ : std_logic;
SIGNAL \EXP|Add6~2_combout\ : std_logic;
SIGNAL \EXP|Add3~2_combout\ : std_logic;
SIGNAL \EXP|Add6~4_combout\ : std_logic;
SIGNAL \EXP|Add10~4_combout\ : std_logic;
SIGNAL \EXP|Add14~4_combout\ : std_logic;
SIGNAL \EXP|Add3~4_combout\ : std_logic;
SIGNAL \EXP|Add6~6_combout\ : std_logic;
SIGNAL \EXP|Add10~6_combout\ : std_logic;
SIGNAL \EXP|Add12~6_combout\ : std_logic;
SIGNAL \EXP|Add10~8_combout\ : std_logic;
SIGNAL \EXP|Add3~7\ : std_logic;
SIGNAL \EXP|Add3~8_combout\ : std_logic;
SIGNAL \EXP|Add3~9\ : std_logic;
SIGNAL \EXP|Add12~10_combout\ : std_logic;
SIGNAL \EXP|Add14~10_combout\ : std_logic;
SIGNAL \EXP|Add10~12_combout\ : std_logic;
SIGNAL \EXP|Add3~10_combout\ : std_logic;
SIGNAL \EXP|Add3~11\ : std_logic;
SIGNAL \EXP|Add6~12_combout\ : std_logic;
SIGNAL \EXP|Add14~12_combout\ : std_logic;
SIGNAL \EXP|Add3~12_combout\ : std_logic;
SIGNAL \EXP|Add3~13\ : std_logic;
SIGNAL \EXP|Add6~14_combout\ : std_logic;
SIGNAL \EXP|Add10~14_combout\ : std_logic;
SIGNAL \EXP|Add14~14_combout\ : std_logic;
SIGNAL \EXP|Add3~14_combout\ : std_logic;
SIGNAL \EXP|Add3~15\ : std_logic;
SIGNAL \EXP|Add14~16_combout\ : std_logic;
SIGNAL \EXP|Add3~16_combout\ : std_logic;
SIGNAL \EXP|Add11~2_combout\ : std_logic;
SIGNAL \EXP|Add11~4_combout\ : std_logic;
SIGNAL \EXP|Add11~6_combout\ : std_logic;
SIGNAL \EXP|Add11~8_combout\ : std_logic;
SIGNAL \EXP|Add11~10_combout\ : std_logic;
SIGNAL \EXP|Add11~14_combout\ : std_logic;
SIGNAL \EXP|Add11~20_combout\ : std_logic;
SIGNAL \EXP|Add11~22_combout\ : std_logic;
SIGNAL \EXP|Add11~40_combout\ : std_logic;
SIGNAL \EXP|Add11~44_combout\ : std_logic;
SIGNAL \EXP|Add11~50_combout\ : std_logic;
SIGNAL \EXP|Add11~52_combout\ : std_logic;
SIGNAL \EXP|Add13~4_combout\ : std_logic;
SIGNAL \EXP|Add13~6_combout\ : std_logic;
SIGNAL \EXP|Add13~8_combout\ : std_logic;
SIGNAL \EXP|Add13~14_combout\ : std_logic;
SIGNAL \EXP|Add13~26_combout\ : std_logic;
SIGNAL \EXP|Add13~28_combout\ : std_logic;
SIGNAL \EXP|Add13~30_combout\ : std_logic;
SIGNAL \EXP|Add13~32_combout\ : std_logic;
SIGNAL \EXP|Add13~36_combout\ : std_logic;
SIGNAL \EXP|Add13~42_combout\ : std_logic;
SIGNAL \EXP|Add13~46_combout\ : std_logic;
SIGNAL \EXP|Add13~48_combout\ : std_logic;
SIGNAL \EXP|Add13~50_combout\ : std_logic;
SIGNAL \EXP|Add5~2_combout\ : std_logic;
SIGNAL \EXP|Add5~4_combout\ : std_logic;
SIGNAL \EXP|Add5~6_combout\ : std_logic;
SIGNAL \EXP|Add5~10_combout\ : std_logic;
SIGNAL \EXP|Add5~18_combout\ : std_logic;
SIGNAL \EXP|Add5~22_combout\ : std_logic;
SIGNAL \EXP|Add5~30_combout\ : std_logic;
SIGNAL \EXP|Add5~38_combout\ : std_logic;
SIGNAL \EXP|Add5~42_combout\ : std_logic;
SIGNAL \EXP|Add5~48_combout\ : std_logic;
SIGNAL \EXP|Add7~0_combout\ : std_logic;
SIGNAL \EXP|Add7~4_combout\ : std_logic;
SIGNAL \EXP|Add7~6_combout\ : std_logic;
SIGNAL \EXP|Add7~8_combout\ : std_logic;
SIGNAL \EXP|Add7~48_combout\ : std_logic;
SIGNAL \EXP|Add4~0_combout\ : std_logic;
SIGNAL \EXP|Add4~2_combout\ : std_logic;
SIGNAL \EXP|Add4~12_combout\ : std_logic;
SIGNAL \EXP|Add4~16_combout\ : std_logic;
SIGNAL \EXP|Add4~24_combout\ : std_logic;
SIGNAL \EXP|Add4~26_combout\ : std_logic;
SIGNAL \EXP|Add9~0_combout\ : std_logic;
SIGNAL \EXP|Add9~8_combout\ : std_logic;
SIGNAL \EXP|Add9~10_combout\ : std_logic;
SIGNAL \EXP|Add9~14_combout\ : std_logic;
SIGNAL \EXP|Add9~16_combout\ : std_logic;
SIGNAL \EXP|Add9~24_combout\ : std_logic;
SIGNAL \EXP|Add9~26_combout\ : std_logic;
SIGNAL \EXP|Add9~28_combout\ : std_logic;
SIGNAL \EXP|Add9~32_combout\ : std_logic;
SIGNAL \EXP|Add9~36_combout\ : std_logic;
SIGNAL \EXP|Add9~46_combout\ : std_logic;
SIGNAL \EXP|Add15~12_combout\ : std_logic;
SIGNAL \EXP|Add15~14_combout\ : std_logic;
SIGNAL \EXP|Add15~46_combout\ : std_logic;
SIGNAL \EXP|Add15~52_combout\ : std_logic;
SIGNAL \EXP|Add13~57\ : std_logic;
SIGNAL \EXP|Add11~54_combout\ : std_logic;
SIGNAL \EXP|Add11~56_combout\ : std_logic;
SIGNAL \EXP|Add7~52_combout\ : std_logic;
SIGNAL \EXP|Add7~54_combout\ : std_logic;
SIGNAL \EXP|Add5~50_combout\ : std_logic;
SIGNAL \EXP|Add5~52_combout\ : std_logic;
SIGNAL \EXP|Add15~58_combout\ : std_logic;
SIGNAL \EXP|Add15~63\ : std_logic;
SIGNAL \EXP|Add13~58_combout\ : std_logic;
SIGNAL \EXP|Add15~64_combout\ : std_logic;
SIGNAL \EXP|Add0~2_combout\ : std_logic;
SIGNAL \EXP|Add0~4_combout\ : std_logic;
SIGNAL \EXP|Add0~8_combout\ : std_logic;
SIGNAL \EXP|Add0~12_combout\ : std_logic;
SIGNAL \EXP|Add2~4_combout\ : std_logic;
SIGNAL \EXP|Add2~10_combout\ : std_logic;
SIGNAL \EXP|Add2~14_combout\ : std_logic;
SIGNAL \EXP|Add2~18_combout\ : std_logic;
SIGNAL \EXP|Add2~20_combout\ : std_logic;
SIGNAL \EXP|Add0~18_combout\ : std_logic;
SIGNAL \EXP|Add0~23\ : std_logic;
SIGNAL \EXP|Add0~24_combout\ : std_logic;
SIGNAL \EXP|Add2~24_combout\ : std_logic;
SIGNAL \EXP|LessThan4~0_combout\ : std_logic;
SIGNAL \EXP|LessThan7~11_combout\ : std_logic;
SIGNAL \EXP|LessThan3~6_combout\ : std_logic;
SIGNAL \EXP|LessThan3~7_combout\ : std_logic;
SIGNAL \EXP|rem[-23]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-24]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem~200_combout\ : std_logic;
SIGNAL \EXP|rem~201_combout\ : std_logic;
SIGNAL \EXP|rem~202_combout\ : std_logic;
SIGNAL \EXP|rem[-23]~20_combout\ : std_logic;
SIGNAL \EXP|rem~203_combout\ : std_logic;
SIGNAL \EXP|rem~204_combout\ : std_logic;
SIGNAL \EXP|rem~205_combout\ : std_logic;
SIGNAL \EXP|rem[-24]~24_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[1]~34\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[2]~36\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[3]~37_combout\ : std_logic;
SIGNAL \EXP|Add13~39\ : std_logic;
SIGNAL \EXP|Add13~40_combout\ : std_logic;
SIGNAL \EXP|Add15~51\ : std_logic;
SIGNAL \EXP|Add15~53\ : std_logic;
SIGNAL \EXP|Add15~55\ : std_logic;
SIGNAL \EXP|Add15~56_combout\ : std_logic;
SIGNAL \EXP|LessThan7~14_combout\ : std_logic;
SIGNAL \EXP|LessThan5~1_combout\ : std_logic;
SIGNAL \EXP|Add13~20_combout\ : std_logic;
SIGNAL \EXP|Add13~16_combout\ : std_logic;
SIGNAL \EXP|Add7~1\ : std_logic;
SIGNAL \EXP|Add7~2_combout\ : std_logic;
SIGNAL \EXP|rem[-26]~30_combout\ : std_logic;
SIGNAL \EXP|rem[-29]~42_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~207_combout\ : std_logic;
SIGNAL \EXP|Add15~0_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~48_combout\ : std_logic;
SIGNAL \EXP|Add15~48_combout\ : std_logic;
SIGNAL \EXP|Add11~16_combout\ : std_logic;
SIGNAL \EXP|LessThan5~6_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~41_combout\ : std_logic;
SIGNAL \EXP|Add15~54_combout\ : std_logic;
SIGNAL \EXP|rem[-23]~18_combout\ : std_logic;
SIGNAL \EXP|rem[-23]~19_combout\ : std_logic;
SIGNAL \EXP|rem[-24]~22_combout\ : std_logic;
SIGNAL \EXP|rem[-24]~23_combout\ : std_logic;
SIGNAL \EXP|Add15~9\ : std_logic;
SIGNAL \EXP|Add15~11\ : std_logic;
SIGNAL \EXP|Add15~13\ : std_logic;
SIGNAL \EXP|Add15~15\ : std_logic;
SIGNAL \EXP|Add15~16_combout\ : std_logic;
SIGNAL \EXP|Add13~1\ : std_logic;
SIGNAL \EXP|Add13~3\ : std_logic;
SIGNAL \EXP|Add13~5\ : std_logic;
SIGNAL \EXP|Add13~7\ : std_logic;
SIGNAL \EXP|Add13~9\ : std_logic;
SIGNAL \EXP|Add13~10_combout\ : std_logic;
SIGNAL \EXP|LessThan5~7_combout\ : std_logic;
SIGNAL \EXP|Add9~7\ : std_logic;
SIGNAL \EXP|Add9~9\ : std_logic;
SIGNAL \EXP|Add9~11\ : std_logic;
SIGNAL \EXP|Add9~12_combout\ : std_logic;
SIGNAL \EXP|Add11~12_combout\ : std_logic;
SIGNAL \EXP|rem~184_combout\ : std_logic;
SIGNAL \EXP|e~1_combout\ : std_logic;
SIGNAL \EXP|Add5~1\ : std_logic;
SIGNAL \EXP|Add5~3\ : std_logic;
SIGNAL \EXP|Add5~5\ : std_logic;
SIGNAL \EXP|Add5~7\ : std_logic;
SIGNAL \EXP|Add5~8_combout\ : std_logic;
SIGNAL \EXP|rem[2]~68_combout\ : std_logic;
SIGNAL \EXP|LessThan2~0_combout\ : std_logic;
SIGNAL \EXP|LessThan4~6_combout\ : std_logic;
SIGNAL \EXP|LessThan4~7_combout\ : std_logic;
SIGNAL \EXP|LessThan3~1_combout\ : std_logic;
SIGNAL \EXP|LessThan3~2_combout\ : std_logic;
SIGNAL \EXP|LessThan4~3_combout\ : std_logic;
SIGNAL \EXP|LessThan4~2_combout\ : std_logic;
SIGNAL \EXP|LessThan4~1_combout\ : std_logic;
SIGNAL \EXP|LessThan4~4_combout\ : std_logic;
SIGNAL \EXP|LessThan4~5_combout\ : std_logic;
SIGNAL \EXP|LessThan4~8_combout\ : std_logic;
SIGNAL \EXP|LessThan4~9_combout\ : std_logic;
SIGNAL \EXP|LessThan4~10_combout\ : std_logic;
SIGNAL \EXP|rem~182_combout\ : std_logic;
SIGNAL \EXP|Add15~57\ : std_logic;
SIGNAL \EXP|Add15~59\ : std_logic;
SIGNAL \EXP|Add15~60_combout\ : std_logic;
SIGNAL \EXP|Add13~54_combout\ : std_logic;
SIGNAL \EXP|Add9~23\ : std_logic;
SIGNAL \EXP|Add9~25\ : std_logic;
SIGNAL \EXP|Add9~27\ : std_logic;
SIGNAL \EXP|Add9~29\ : std_logic;
SIGNAL \EXP|Add9~31\ : std_logic;
SIGNAL \EXP|Add9~33\ : std_logic;
SIGNAL \EXP|Add9~35\ : std_logic;
SIGNAL \EXP|Add9~37\ : std_logic;
SIGNAL \EXP|Add9~39\ : std_logic;
SIGNAL \EXP|Add9~41\ : std_logic;
SIGNAL \EXP|Add9~43\ : std_logic;
SIGNAL \EXP|Add9~45\ : std_logic;
SIGNAL \EXP|Add9~47\ : std_logic;
SIGNAL \EXP|Add9~49\ : std_logic;
SIGNAL \EXP|Add9~51\ : std_logic;
SIGNAL \EXP|Add9~53\ : std_logic;
SIGNAL \EXP|Add9~55\ : std_logic;
SIGNAL \EXP|Add9~56_combout\ : std_logic;
SIGNAL \EXP|rem[2]~73_combout\ : std_logic;
SIGNAL \EXP|LessThan2~1_combout\ : std_logic;
SIGNAL \EXP|LessThan2~2_combout\ : std_logic;
SIGNAL \EXP|LessThan2~3_combout\ : std_logic;
SIGNAL \EXP|LessThan8~1_combout\ : std_logic;
SIGNAL \EXP|LessThan6~3_combout\ : std_logic;
SIGNAL \EXP|LessThan0~3_combout\ : std_logic;
SIGNAL \EXP|rem[-31]~50_combout\ : std_logic;
SIGNAL \EXP|rem[-31]~52_combout\ : std_logic;
SIGNAL \EXP|rem[-31]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-31]~51_combout\ : std_logic;
SIGNAL \EXP|LessThan0~0_combout\ : std_logic;
SIGNAL \EXP|LessThan2~4_combout\ : std_logic;
SIGNAL \EXP|LessThan2~5_combout\ : std_logic;
SIGNAL \EXP|LessThan2~6_combout\ : std_logic;
SIGNAL \EXP|LessThan2~7_combout\ : std_logic;
SIGNAL \EXP|Add4~1\ : std_logic;
SIGNAL \EXP|Add4~3\ : std_logic;
SIGNAL \EXP|Add4~5\ : std_logic;
SIGNAL \EXP|Add4~7\ : std_logic;
SIGNAL \EXP|Add4~9\ : std_logic;
SIGNAL \EXP|Add4~11\ : std_logic;
SIGNAL \EXP|Add4~13\ : std_logic;
SIGNAL \EXP|Add4~15\ : std_logic;
SIGNAL \EXP|Add4~17\ : std_logic;
SIGNAL \EXP|Add4~19\ : std_logic;
SIGNAL \EXP|Add4~21\ : std_logic;
SIGNAL \EXP|Add4~23\ : std_logic;
SIGNAL \EXP|Add4~25\ : std_logic;
SIGNAL \EXP|Add4~27\ : std_logic;
SIGNAL \EXP|Add4~29\ : std_logic;
SIGNAL \EXP|Add4~31\ : std_logic;
SIGNAL \EXP|Add4~33\ : std_logic;
SIGNAL \EXP|Add4~35\ : std_logic;
SIGNAL \EXP|Add4~37\ : std_logic;
SIGNAL \EXP|Add4~39\ : std_logic;
SIGNAL \EXP|Add4~41\ : std_logic;
SIGNAL \EXP|Add4~43\ : std_logic;
SIGNAL \EXP|Add4~44_combout\ : std_logic;
SIGNAL \EXP|rem~89_combout\ : std_logic;
SIGNAL \EXP|rem~90_combout\ : std_logic;
SIGNAL \EXP|rem~91_combout\ : std_logic;
SIGNAL \EXP|rem~92_combout\ : std_logic;
SIGNAL \EXP|rem~93_combout\ : std_logic;
SIGNAL \EXP|rem~206_combout\ : std_logic;
SIGNAL \EXP|rem~181_combout\ : std_logic;
SIGNAL \EXP|rem~183_combout\ : std_logic;
SIGNAL \EXP|rem~185_combout\ : std_logic;
SIGNAL \EXP|rem[-22]~16_combout\ : std_logic;
SIGNAL \EXP|rem[-22]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-22]~14_combout\ : std_logic;
SIGNAL \EXP|rem[-22]~15_combout\ : std_logic;
SIGNAL \EXP|Add7~3\ : std_logic;
SIGNAL \EXP|Add7~5\ : std_logic;
SIGNAL \EXP|Add7~7\ : std_logic;
SIGNAL \EXP|Add7~9\ : std_logic;
SIGNAL \EXP|Add7~11\ : std_logic;
SIGNAL \EXP|Add7~13_cout\ : std_logic;
SIGNAL \EXP|Add7~15_cout\ : std_logic;
SIGNAL \EXP|Add7~17_cout\ : std_logic;
SIGNAL \EXP|Add7~19_cout\ : std_logic;
SIGNAL \EXP|Add7~21_cout\ : std_logic;
SIGNAL \EXP|Add7~23_cout\ : std_logic;
SIGNAL \EXP|Add7~25_cout\ : std_logic;
SIGNAL \EXP|Add7~27_cout\ : std_logic;
SIGNAL \EXP|Add7~29_cout\ : std_logic;
SIGNAL \EXP|Add7~31_cout\ : std_logic;
SIGNAL \EXP|Add7~33_cout\ : std_logic;
SIGNAL \EXP|Add7~35_cout\ : std_logic;
SIGNAL \EXP|Add7~37_cout\ : std_logic;
SIGNAL \EXP|Add7~39\ : std_logic;
SIGNAL \EXP|Add7~41\ : std_logic;
SIGNAL \EXP|Add7~43\ : std_logic;
SIGNAL \EXP|Add7~45\ : std_logic;
SIGNAL \EXP|Add7~46_combout\ : std_logic;
SIGNAL \EXP|Add4~38_combout\ : std_logic;
SIGNAL \EXP|rem~79_combout\ : std_logic;
SIGNAL \EXP|Add5~41\ : std_logic;
SIGNAL \EXP|Add5~43\ : std_logic;
SIGNAL \EXP|Add5~45\ : std_logic;
SIGNAL \EXP|Add5~46_combout\ : std_logic;
SIGNAL \EXP|rem~80_combout\ : std_logic;
SIGNAL \EXP|Add9~50_combout\ : std_logic;
SIGNAL \EXP|rem~81_combout\ : std_logic;
SIGNAL \EXP|rem~82_combout\ : std_logic;
SIGNAL \EXP|rem~83_combout\ : std_logic;
SIGNAL \EXP|rem[-3]~regout\ : std_logic;
SIGNAL \EXP|LessThan3~3_combout\ : std_logic;
SIGNAL \EXP|LessThan7~6_combout\ : std_logic;
SIGNAL \EXP|LessThan3~4_combout\ : std_logic;
SIGNAL \EXP|LessThan3~5_combout\ : std_logic;
SIGNAL \EXP|LessThan0~2_combout\ : std_logic;
SIGNAL \EXP|LessThan3~8_combout\ : std_logic;
SIGNAL \EXP|LessThan3~9_combout\ : std_logic;
SIGNAL \EXP|LessThan3~10_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~18_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~25_combout\ : std_logic;
SIGNAL \EXP|Add0~0_combout\ : std_logic;
SIGNAL \EXP|Add4~4_combout\ : std_logic;
SIGNAL \EXP|Add5~9\ : std_logic;
SIGNAL \EXP|Add5~11\ : std_logic;
SIGNAL \EXP|Add5~12_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~26_combout\ : std_logic;
SIGNAL \EXP|rem~152_combout\ : std_logic;
SIGNAL \EXP|rem~153_combout\ : std_logic;
SIGNAL \EXP|rem~154_combout\ : std_logic;
SIGNAL \EXP|rem~155_combout\ : std_logic;
SIGNAL \EXP|rem[-20]~12_combout\ : std_logic;
SIGNAL \EXP|Add15~17\ : std_logic;
SIGNAL \EXP|Add15~19\ : std_logic;
SIGNAL \EXP|Add15~20_combout\ : std_logic;
SIGNAL \EXP|rem[-20]~regout\ : std_logic;
SIGNAL \EXP|Add5~13\ : std_logic;
SIGNAL \EXP|Add5~15\ : std_logic;
SIGNAL \EXP|Add5~17\ : std_logic;
SIGNAL \EXP|Add5~19\ : std_logic;
SIGNAL \EXP|Add5~21\ : std_logic;
SIGNAL \EXP|Add5~23\ : std_logic;
SIGNAL \EXP|Add5~25\ : std_logic;
SIGNAL \EXP|Add5~27\ : std_logic;
SIGNAL \EXP|Add5~29\ : std_logic;
SIGNAL \EXP|Add5~31\ : std_logic;
SIGNAL \EXP|Add5~33\ : std_logic;
SIGNAL \EXP|Add5~35\ : std_logic;
SIGNAL \EXP|Add5~37\ : std_logic;
SIGNAL \EXP|Add5~39\ : std_logic;
SIGNAL \EXP|Add5~40_combout\ : std_logic;
SIGNAL \EXP|Add9~44_combout\ : std_logic;
SIGNAL \EXP|Add7~40_combout\ : std_logic;
SIGNAL \EXP|Add4~32_combout\ : std_logic;
SIGNAL \EXP|rem~109_combout\ : std_logic;
SIGNAL \EXP|rem~110_combout\ : std_logic;
SIGNAL \EXP|rem~111_combout\ : std_logic;
SIGNAL \EXP|rem~112_combout\ : std_logic;
SIGNAL \EXP|rem~113_combout\ : std_logic;
SIGNAL \EXP|rem[-6]~regout\ : std_logic;
SIGNAL \EXP|rem[-30]~57_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~193_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-30]~46_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~47_combout\ : std_logic;
SIGNAL \EXP|Add15~1\ : std_logic;
SIGNAL \EXP|Add15~2_combout\ : std_logic;
SIGNAL \EXP|rem[-29]~44_combout\ : std_logic;
SIGNAL \EXP|rem[-29]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-29]~43_combout\ : std_logic;
SIGNAL \EXP|Add15~3\ : std_logic;
SIGNAL \EXP|Add15~4_combout\ : std_logic;
SIGNAL \EXP|Add11~0_combout\ : std_logic;
SIGNAL \EXP|rem~190_combout\ : std_logic;
SIGNAL \EXP|rem~191_combout\ : std_logic;
SIGNAL \EXP|rem~192_combout\ : std_logic;
SIGNAL \EXP|rem[-28]~40_combout\ : std_logic;
SIGNAL \EXP|rem[-28]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-28]~38_combout\ : std_logic;
SIGNAL \EXP|rem[-28]~39_combout\ : std_logic;
SIGNAL \EXP|Add15~5\ : std_logic;
SIGNAL \EXP|Add15~6_combout\ : std_logic;
SIGNAL \EXP|Add13~0_combout\ : std_logic;
SIGNAL \EXP|Add9~1\ : std_logic;
SIGNAL \EXP|Add9~2_combout\ : std_logic;
SIGNAL \EXP|rem~197_combout\ : std_logic;
SIGNAL \EXP|rem~198_combout\ : std_logic;
SIGNAL \EXP|rem~199_combout\ : std_logic;
SIGNAL \EXP|rem[-27]~36_combout\ : std_logic;
SIGNAL \EXP|rem[-27]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-27]~34_combout\ : std_logic;
SIGNAL \EXP|rem[-27]~35_combout\ : std_logic;
SIGNAL \EXP|Add15~7\ : std_logic;
SIGNAL \EXP|Add15~8_combout\ : std_logic;
SIGNAL \EXP|Add13~2_combout\ : std_logic;
SIGNAL \EXP|Add9~3\ : std_logic;
SIGNAL \EXP|Add9~4_combout\ : std_logic;
SIGNAL \EXP|LessThan5~8_combout\ : std_logic;
SIGNAL \EXP|rem~194_combout\ : std_logic;
SIGNAL \EXP|Add5~0_combout\ : std_logic;
SIGNAL \EXP|rem[-23]~186_combout\ : std_logic;
SIGNAL \EXP|rem~195_combout\ : std_logic;
SIGNAL \EXP|rem~196_combout\ : std_logic;
SIGNAL \EXP|rem[-26]~32_combout\ : std_logic;
SIGNAL \EXP|rem[-26]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-26]~31_combout\ : std_logic;
SIGNAL \EXP|Add9~5\ : std_logic;
SIGNAL \EXP|Add9~6_combout\ : std_logic;
SIGNAL \EXP|rem~187_combout\ : std_logic;
SIGNAL \EXP|rem~188_combout\ : std_logic;
SIGNAL \EXP|rem~189_combout\ : std_logic;
SIGNAL \EXP|Add15~10_combout\ : std_logic;
SIGNAL \EXP|rem[-25]~28_combout\ : std_logic;
SIGNAL \EXP|rem[-25]~_emulated_regout\ : std_logic;
SIGNAL \EXP|rem[-25]~26_combout\ : std_logic;
SIGNAL \EXP|rem[-25]~27_combout\ : std_logic;
SIGNAL \EXP|Add11~1\ : std_logic;
SIGNAL \EXP|Add11~3\ : std_logic;
SIGNAL \EXP|Add11~5\ : std_logic;
SIGNAL \EXP|Add11~7\ : std_logic;
SIGNAL \EXP|Add11~9\ : std_logic;
SIGNAL \EXP|Add11~11\ : std_logic;
SIGNAL \EXP|Add11~13\ : std_logic;
SIGNAL \EXP|Add11~15\ : std_logic;
SIGNAL \EXP|Add11~17\ : std_logic;
SIGNAL \EXP|Add11~18_combout\ : std_logic;
SIGNAL \EXP|Add9~13\ : std_logic;
SIGNAL \EXP|Add9~15\ : std_logic;
SIGNAL \EXP|Add9~17\ : std_logic;
SIGNAL \EXP|Add9~18_combout\ : std_logic;
SIGNAL \EXP|Add2~1_cout\ : std_logic;
SIGNAL \EXP|Add2~3\ : std_logic;
SIGNAL \EXP|Add2~5\ : std_logic;
SIGNAL \EXP|Add2~6_combout\ : std_logic;
SIGNAL \EXP|Add4~6_combout\ : std_logic;
SIGNAL \EXP|Add5~14_combout\ : std_logic;
SIGNAL \EXP|rem~148_combout\ : std_logic;
SIGNAL \EXP|rem~149_combout\ : std_logic;
SIGNAL \EXP|rem~150_combout\ : std_logic;
SIGNAL \EXP|rem~151_combout\ : std_logic;
SIGNAL \EXP|rem[-19]~11_combout\ : std_logic;
SIGNAL \EXP|Add15~21\ : std_logic;
SIGNAL \EXP|Add15~22_combout\ : std_logic;
SIGNAL \EXP|rem[-19]~regout\ : std_logic;
SIGNAL \EXP|Add9~19\ : std_logic;
SIGNAL \EXP|Add9~21\ : std_logic;
SIGNAL \EXP|Add9~22_combout\ : std_logic;
SIGNAL \EXP|Add0~1\ : std_logic;
SIGNAL \EXP|Add0~3\ : std_logic;
SIGNAL \EXP|Add0~5\ : std_logic;
SIGNAL \EXP|Add0~6_combout\ : std_logic;
SIGNAL \EXP|Add4~10_combout\ : std_logic;
SIGNAL \EXP|LessThan3~11_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~24_combout\ : std_logic;
SIGNAL \EXP|rem~177_combout\ : std_logic;
SIGNAL \EXP|rem~178_combout\ : std_logic;
SIGNAL \EXP|rem~179_combout\ : std_logic;
SIGNAL \EXP|rem~180_combout\ : std_logic;
SIGNAL \EXP|rem[-17]~9_combout\ : std_logic;
SIGNAL \EXP|Add15~23\ : std_logic;
SIGNAL \EXP|Add15~25\ : std_logic;
SIGNAL \EXP|Add15~26_combout\ : std_logic;
SIGNAL \EXP|rem[-17]~regout\ : std_logic;
SIGNAL \EXP|LessThan5~0_combout\ : std_logic;
SIGNAL \EXP|LessThan5~2_combout\ : std_logic;
SIGNAL \EXP|LessThan5~3_combout\ : std_logic;
SIGNAL \EXP|LessThan5~4_combout\ : std_logic;
SIGNAL \EXP|LessThan5~5_combout\ : std_logic;
SIGNAL \EXP|rem[2]~72_combout\ : std_logic;
SIGNAL \EXP|Add9~52_combout\ : std_logic;
SIGNAL \EXP|Add4~40_combout\ : std_logic;
SIGNAL \EXP|rem~74_combout\ : std_logic;
SIGNAL \EXP|rem~75_combout\ : std_logic;
SIGNAL \EXP|rem~76_combout\ : std_logic;
SIGNAL \EXP|rem~77_combout\ : std_logic;
SIGNAL \EXP|rem~78_combout\ : std_logic;
SIGNAL \EXP|rem[-2]~regout\ : std_logic;
SIGNAL \EXP|Add13~41\ : std_logic;
SIGNAL \EXP|Add13~43\ : std_logic;
SIGNAL \EXP|Add13~45\ : std_logic;
SIGNAL \EXP|Add13~47\ : std_logic;
SIGNAL \EXP|Add13~49\ : std_logic;
SIGNAL \EXP|Add13~51\ : std_logic;
SIGNAL \EXP|Add13~52_combout\ : std_logic;
SIGNAL \EXP|Add7~47\ : std_logic;
SIGNAL \EXP|Add7~49\ : std_logic;
SIGNAL \EXP|Add7~50_combout\ : std_logic;
SIGNAL \EXP|Add9~54_combout\ : std_logic;
SIGNAL \EXP|Add4~42_combout\ : std_logic;
SIGNAL \EXP|rem~94_combout\ : std_logic;
SIGNAL \EXP|rem~95_combout\ : std_logic;
SIGNAL \EXP|rem~96_combout\ : std_logic;
SIGNAL \EXP|rem~97_combout\ : std_logic;
SIGNAL \EXP|rem~98_combout\ : std_logic;
SIGNAL \EXP|rem[-1]~regout\ : std_logic;
SIGNAL \EXP|Add13~53\ : std_logic;
SIGNAL \EXP|Add13~55\ : std_logic;
SIGNAL \EXP|Add13~56_combout\ : std_logic;
SIGNAL \EXP|Add15~61\ : std_logic;
SIGNAL \EXP|Add15~62_combout\ : std_logic;
SIGNAL \EXP|Add11~49\ : std_logic;
SIGNAL \EXP|Add11~51\ : std_logic;
SIGNAL \EXP|Add11~53\ : std_logic;
SIGNAL \EXP|Add11~55\ : std_logic;
SIGNAL \EXP|Add11~57\ : std_logic;
SIGNAL \EXP|Add11~58_combout\ : std_logic;
SIGNAL \EXP|Add9~57\ : std_logic;
SIGNAL \EXP|Add9~58_combout\ : std_logic;
SIGNAL \EXP|Add5~47\ : std_logic;
SIGNAL \EXP|Add5~49\ : std_logic;
SIGNAL \EXP|Add5~51\ : std_logic;
SIGNAL \EXP|Add5~53\ : std_logic;
SIGNAL \EXP|Add5~54_combout\ : std_logic;
SIGNAL \EXP|Add4~45\ : std_logic;
SIGNAL \EXP|Add4~46_combout\ : std_logic;
SIGNAL \EXP|rem~84_combout\ : std_logic;
SIGNAL \EXP|rem~85_combout\ : std_logic;
SIGNAL \EXP|rem~86_combout\ : std_logic;
SIGNAL \EXP|rem~87_combout\ : std_logic;
SIGNAL \EXP|rem~88_combout\ : std_logic;
SIGNAL \EXP|LessThan3~0_combout\ : std_logic;
SIGNAL \EXP|rem[2]~71_combout\ : std_logic;
SIGNAL \EXP|Add11~35\ : std_logic;
SIGNAL \EXP|Add11~37\ : std_logic;
SIGNAL \EXP|Add11~39\ : std_logic;
SIGNAL \EXP|Add11~41\ : std_logic;
SIGNAL \EXP|Add11~42_combout\ : std_logic;
SIGNAL \EXP|Add7~38_combout\ : std_logic;
SIGNAL \EXP|Add4~30_combout\ : std_logic;
SIGNAL \EXP|rem~127_combout\ : std_logic;
SIGNAL \EXP|rem~128_combout\ : std_logic;
SIGNAL \EXP|Add9~42_combout\ : std_logic;
SIGNAL \EXP|rem~129_combout\ : std_logic;
SIGNAL \EXP|rem~130_combout\ : std_logic;
SIGNAL \EXP|rem~131_combout\ : std_logic;
SIGNAL \EXP|rem[-7]~regout\ : std_logic;
SIGNAL \EXP|LessThan8~6_combout\ : std_logic;
SIGNAL \EXP|LessThan8~0_combout\ : std_logic;
SIGNAL \EXP|LessThan8~2_combout\ : std_logic;
SIGNAL \EXP|LessThan8~3_combout\ : std_logic;
SIGNAL \EXP|LessThan8~4_combout\ : std_logic;
SIGNAL \EXP|LessThan8~5_combout\ : std_logic;
SIGNAL \EXP|LessThan8~7_combout\ : std_logic;
SIGNAL \EXP|LessThan8~8_combout\ : std_logic;
SIGNAL \EXP|rem[2]~70_combout\ : std_logic;
SIGNAL \EXP|Add11~59\ : std_logic;
SIGNAL \EXP|Add11~60_combout\ : std_logic;
SIGNAL \EXP|Add5~55\ : std_logic;
SIGNAL \EXP|Add5~56_combout\ : std_logic;
SIGNAL \EXP|Add7~51\ : std_logic;
SIGNAL \EXP|Add7~53\ : std_logic;
SIGNAL \EXP|Add7~55\ : std_logic;
SIGNAL \EXP|Add7~56_combout\ : std_logic;
SIGNAL \EXP|Add4~47\ : std_logic;
SIGNAL \EXP|Add4~48_combout\ : std_logic;
SIGNAL \EXP|rem~114_combout\ : std_logic;
SIGNAL \EXP|rem~115_combout\ : std_logic;
SIGNAL \EXP|Add9~59\ : std_logic;
SIGNAL \EXP|Add9~60_combout\ : std_logic;
SIGNAL \EXP|rem~116_combout\ : std_logic;
SIGNAL \EXP|rem~117_combout\ : std_logic;
SIGNAL \EXP|rem~118_combout\ : std_logic;
SIGNAL \EXP|rem[-30]~69_combout\ : std_logic;
SIGNAL \EXP|Add15~18_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~17_combout\ : std_logic;
SIGNAL \EXP|Add13~11\ : std_logic;
SIGNAL \EXP|Add13~12_combout\ : std_logic;
SIGNAL \EXP|LessThan7~16_combout\ : std_logic;
SIGNAL \EXP|LessThan7~8_combout\ : std_logic;
SIGNAL \EXP|LessThan7~7_combout\ : std_logic;
SIGNAL \EXP|LessThan7~9_combout\ : std_logic;
SIGNAL \EXP|LessThan7~10_combout\ : std_logic;
SIGNAL \EXP|LessThan7~12_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~16_combout\ : std_logic;
SIGNAL \EXP|Add2~2_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~19_combout\ : std_logic;
SIGNAL \EXP|Add7~10_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~21_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~20_combout\ : std_logic;
SIGNAL \EXP|rem~156_combout\ : std_logic;
SIGNAL \EXP|rem~157_combout\ : std_logic;
SIGNAL \EXP|rem~158_combout\ : std_logic;
SIGNAL \EXP|rem~159_combout\ : std_logic;
SIGNAL \EXP|rem~160_combout\ : std_logic;
SIGNAL \EXP|rem[-21]~regout\ : std_logic;
SIGNAL \EXP|Add13~13\ : std_logic;
SIGNAL \EXP|Add13~15\ : std_logic;
SIGNAL \EXP|Add13~17\ : std_logic;
SIGNAL \EXP|Add13~18_combout\ : std_logic;
SIGNAL \EXP|Add9~20_combout\ : std_logic;
SIGNAL \EXP|Add2~7\ : std_logic;
SIGNAL \EXP|Add2~8_combout\ : std_logic;
SIGNAL \EXP|Add5~16_combout\ : std_logic;
SIGNAL \EXP|Add4~8_combout\ : std_logic;
SIGNAL \EXP|rem~144_combout\ : std_logic;
SIGNAL \EXP|rem~145_combout\ : std_logic;
SIGNAL \EXP|rem~146_combout\ : std_logic;
SIGNAL \EXP|rem~147_combout\ : std_logic;
SIGNAL \EXP|rem[-18]~10_combout\ : std_logic;
SIGNAL \EXP|Add15~24_combout\ : std_logic;
SIGNAL \EXP|rem[-18]~regout\ : std_logic;
SIGNAL \EXP|Add13~19\ : std_logic;
SIGNAL \EXP|Add13~21\ : std_logic;
SIGNAL \EXP|Add13~22_combout\ : std_logic;
SIGNAL \EXP|Add11~19\ : std_logic;
SIGNAL \EXP|Add11~21\ : std_logic;
SIGNAL \EXP|Add11~23\ : std_logic;
SIGNAL \EXP|Add11~24_combout\ : std_logic;
SIGNAL \EXP|Add2~9\ : std_logic;
SIGNAL \EXP|Add2~11\ : std_logic;
SIGNAL \EXP|Add2~12_combout\ : std_logic;
SIGNAL \EXP|Add5~20_combout\ : std_logic;
SIGNAL \EXP|rem~173_combout\ : std_logic;
SIGNAL \EXP|rem~174_combout\ : std_logic;
SIGNAL \EXP|rem~175_combout\ : std_logic;
SIGNAL \EXP|rem~176_combout\ : std_logic;
SIGNAL \EXP|rem[-16]~8_combout\ : std_logic;
SIGNAL \EXP|Add15~27\ : std_logic;
SIGNAL \EXP|Add15~28_combout\ : std_logic;
SIGNAL \EXP|rem[-16]~regout\ : std_logic;
SIGNAL \EXP|Add13~23\ : std_logic;
SIGNAL \EXP|Add13~24_combout\ : std_logic;
SIGNAL \EXP|Add11~25\ : std_logic;
SIGNAL \EXP|Add11~26_combout\ : std_logic;
SIGNAL \EXP|Add0~7\ : std_logic;
SIGNAL \EXP|Add0~9\ : std_logic;
SIGNAL \EXP|Add0~10_combout\ : std_logic;
SIGNAL \EXP|Add4~14_combout\ : std_logic;
SIGNAL \EXP|rem~169_combout\ : std_logic;
SIGNAL \EXP|rem~170_combout\ : std_logic;
SIGNAL \EXP|rem~171_combout\ : std_logic;
SIGNAL \EXP|rem~172_combout\ : std_logic;
SIGNAL \EXP|rem[-15]~7_combout\ : std_logic;
SIGNAL \EXP|Add15~29\ : std_logic;
SIGNAL \EXP|Add15~30_combout\ : std_logic;
SIGNAL \EXP|rem[-15]~regout\ : std_logic;
SIGNAL \EXP|Add11~27\ : std_logic;
SIGNAL \EXP|Add11~28_combout\ : std_logic;
SIGNAL \EXP|Add2~13\ : std_logic;
SIGNAL \EXP|Add2~15\ : std_logic;
SIGNAL \EXP|Add2~16_combout\ : std_logic;
SIGNAL \EXP|Add5~24_combout\ : std_logic;
SIGNAL \EXP|rem~165_combout\ : std_logic;
SIGNAL \EXP|rem~166_combout\ : std_logic;
SIGNAL \EXP|rem~167_combout\ : std_logic;
SIGNAL \EXP|rem~168_combout\ : std_logic;
SIGNAL \EXP|rem[-14]~6_combout\ : std_logic;
SIGNAL \EXP|Add15~31\ : std_logic;
SIGNAL \EXP|Add15~32_combout\ : std_logic;
SIGNAL \EXP|rem[-14]~regout\ : std_logic;
SIGNAL \EXP|Add11~29\ : std_logic;
SIGNAL \EXP|Add11~30_combout\ : std_logic;
SIGNAL \EXP|Add9~30_combout\ : std_logic;
SIGNAL \EXP|Add0~11\ : std_logic;
SIGNAL \EXP|Add0~13\ : std_logic;
SIGNAL \EXP|Add0~14_combout\ : std_logic;
SIGNAL \EXP|Add4~18_combout\ : std_logic;
SIGNAL \EXP|Add5~26_combout\ : std_logic;
SIGNAL \EXP|rem~161_combout\ : std_logic;
SIGNAL \EXP|rem~162_combout\ : std_logic;
SIGNAL \EXP|rem~163_combout\ : std_logic;
SIGNAL \EXP|rem~164_combout\ : std_logic;
SIGNAL \EXP|rem[-13]~5_combout\ : std_logic;
SIGNAL \EXP|Add15~33\ : std_logic;
SIGNAL \EXP|Add15~34_combout\ : std_logic;
SIGNAL \EXP|rem[-13]~regout\ : std_logic;
SIGNAL \EXP|Add11~31\ : std_logic;
SIGNAL \EXP|Add11~32_combout\ : std_logic;
SIGNAL \EXP|Add0~15\ : std_logic;
SIGNAL \EXP|Add0~16_combout\ : std_logic;
SIGNAL \EXP|Add5~28_combout\ : std_logic;
SIGNAL \EXP|Add4~20_combout\ : std_logic;
SIGNAL \EXP|rem~119_combout\ : std_logic;
SIGNAL \EXP|rem~120_combout\ : std_logic;
SIGNAL \EXP|rem~121_combout\ : std_logic;
SIGNAL \EXP|rem~122_combout\ : std_logic;
SIGNAL \EXP|rem[-12]~4_combout\ : std_logic;
SIGNAL \EXP|Add15~35\ : std_logic;
SIGNAL \EXP|Add15~36_combout\ : std_logic;
SIGNAL \EXP|rem[-12]~regout\ : std_logic;
SIGNAL \EXP|Add11~33\ : std_logic;
SIGNAL \EXP|Add11~34_combout\ : std_logic;
SIGNAL \EXP|Add9~34_combout\ : std_logic;
SIGNAL \EXP|Add2~17\ : std_logic;
SIGNAL \EXP|Add2~19\ : std_logic;
SIGNAL \EXP|Add2~21\ : std_logic;
SIGNAL \EXP|Add2~22_combout\ : std_logic;
SIGNAL \EXP|Add4~22_combout\ : std_logic;
SIGNAL \EXP|rem~123_combout\ : std_logic;
SIGNAL \EXP|rem~124_combout\ : std_logic;
SIGNAL \EXP|rem~125_combout\ : std_logic;
SIGNAL \EXP|rem~126_combout\ : std_logic;
SIGNAL \EXP|rem[-11]~3_combout\ : std_logic;
SIGNAL \EXP|Add15~37\ : std_logic;
SIGNAL \EXP|Add15~38_combout\ : std_logic;
SIGNAL \EXP|rem[-11]~regout\ : std_logic;
SIGNAL \EXP|Add13~25\ : std_logic;
SIGNAL \EXP|Add13~27\ : std_logic;
SIGNAL \EXP|Add13~29\ : std_logic;
SIGNAL \EXP|Add13~31\ : std_logic;
SIGNAL \EXP|Add13~33\ : std_logic;
SIGNAL \EXP|Add13~34_combout\ : std_logic;
SIGNAL \EXP|Add11~36_combout\ : std_logic;
SIGNAL \EXP|Add0~17\ : std_logic;
SIGNAL \EXP|Add0~19\ : std_logic;
SIGNAL \EXP|Add0~20_combout\ : std_logic;
SIGNAL \EXP|Add5~32_combout\ : std_logic;
SIGNAL \EXP|rem~140_combout\ : std_logic;
SIGNAL \EXP|rem~141_combout\ : std_logic;
SIGNAL \EXP|rem~142_combout\ : std_logic;
SIGNAL \EXP|rem~143_combout\ : std_logic;
SIGNAL \EXP|rem[-10]~2_combout\ : std_logic;
SIGNAL \EXP|Add15~39\ : std_logic;
SIGNAL \EXP|Add15~40_combout\ : std_logic;
SIGNAL \EXP|rem[-10]~regout\ : std_logic;
SIGNAL \EXP|Add13~35\ : std_logic;
SIGNAL \EXP|Add13~37\ : std_logic;
SIGNAL \EXP|Add13~38_combout\ : std_logic;
SIGNAL \EXP|Add9~40_combout\ : std_logic;
SIGNAL \EXP|Add2~23\ : std_logic;
SIGNAL \EXP|Add2~25\ : std_logic;
SIGNAL \EXP|Add2~27\ : std_logic;
SIGNAL \EXP|Add2~28_combout\ : std_logic;
SIGNAL \EXP|Add4~28_combout\ : std_logic;
SIGNAL \EXP|Add5~36_combout\ : std_logic;
SIGNAL \EXP|rem~132_combout\ : std_logic;
SIGNAL \EXP|rem~133_combout\ : std_logic;
SIGNAL \EXP|rem~134_combout\ : std_logic;
SIGNAL \EXP|rem~135_combout\ : std_logic;
SIGNAL \EXP|rem[-8]~0_combout\ : std_logic;
SIGNAL \EXP|Add15~44_combout\ : std_logic;
SIGNAL \EXP|rem[-8]~regout\ : std_logic;
SIGNAL \EXP|LessThan6~0_combout\ : std_logic;
SIGNAL \EXP|LessThan6~1_combout\ : std_logic;
SIGNAL \EXP|LessThan0~1_combout\ : std_logic;
SIGNAL \EXP|LessThan6~2_combout\ : std_logic;
SIGNAL \EXP|LessThan6~4_combout\ : std_logic;
SIGNAL \EXP|LessThan6~5_combout\ : std_logic;
SIGNAL \EXP|LessThan6~6_combout\ : std_logic;
SIGNAL \EXP|LessThan6~7_combout\ : std_logic;
SIGNAL \EXP|Add11~38_combout\ : std_logic;
SIGNAL \EXP|Add9~38_combout\ : std_logic;
SIGNAL \EXP|Add0~21\ : std_logic;
SIGNAL \EXP|Add0~22_combout\ : std_logic;
SIGNAL \EXP|Add5~34_combout\ : std_logic;
SIGNAL \EXP|rem~136_combout\ : std_logic;
SIGNAL \EXP|Add2~26_combout\ : std_logic;
SIGNAL \EXP|rem~137_combout\ : std_logic;
SIGNAL \EXP|rem~138_combout\ : std_logic;
SIGNAL \EXP|rem~139_combout\ : std_logic;
SIGNAL \EXP|rem[-9]~1_combout\ : std_logic;
SIGNAL \EXP|Add15~41\ : std_logic;
SIGNAL \EXP|Add15~42_combout\ : std_logic;
SIGNAL \EXP|rem[-9]~regout\ : std_logic;
SIGNAL \EXP|Add15~43\ : std_logic;
SIGNAL \EXP|Add15~45\ : std_logic;
SIGNAL \EXP|Add15~47\ : std_logic;
SIGNAL \EXP|Add15~49\ : std_logic;
SIGNAL \EXP|Add15~50_combout\ : std_logic;
SIGNAL \EXP|Add13~44_combout\ : std_logic;
SIGNAL \EXP|Add11~43\ : std_logic;
SIGNAL \EXP|Add11~45\ : std_logic;
SIGNAL \EXP|Add11~46_combout\ : std_logic;
SIGNAL \EXP|Add7~42_combout\ : std_logic;
SIGNAL \EXP|Add4~34_combout\ : std_logic;
SIGNAL \EXP|rem~104_combout\ : std_logic;
SIGNAL \EXP|rem~105_combout\ : std_logic;
SIGNAL \EXP|rem~106_combout\ : std_logic;
SIGNAL \EXP|rem~107_combout\ : std_logic;
SIGNAL \EXP|rem~108_combout\ : std_logic;
SIGNAL \EXP|rem[-5]~regout\ : std_logic;
SIGNAL \EXP|Add11~47\ : std_logic;
SIGNAL \EXP|Add11~48_combout\ : std_logic;
SIGNAL \EXP|Add5~44_combout\ : std_logic;
SIGNAL \EXP|Add9~48_combout\ : std_logic;
SIGNAL \EXP|Add4~36_combout\ : std_logic;
SIGNAL \EXP|rem~99_combout\ : std_logic;
SIGNAL \EXP|Add7~44_combout\ : std_logic;
SIGNAL \EXP|rem~100_combout\ : std_logic;
SIGNAL \EXP|rem~101_combout\ : std_logic;
SIGNAL \EXP|rem~102_combout\ : std_logic;
SIGNAL \EXP|rem~103_combout\ : std_logic;
SIGNAL \EXP|rem[-4]~regout\ : std_logic;
SIGNAL \EXP|LessThan7~15_combout\ : std_logic;
SIGNAL \EXP|LessThan7~13_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-1]~29_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[2]~35_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-5]~13\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~14_combout\ : std_logic;
SIGNAL \EXP|Add14~1\ : std_logic;
SIGNAL \EXP|Add14~2_combout\ : std_logic;
SIGNAL \EXP|Add12~1\ : std_logic;
SIGNAL \EXP|Add12~2_combout\ : std_logic;
SIGNAL \EXP|Add3~0_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~15\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~23\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-2]~27_combout\ : std_logic;
SIGNAL \EXP|Add14~6_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~22_combout\ : std_logic;
SIGNAL \EXP|Add12~4_combout\ : std_logic;
SIGNAL \EXP|Add1~0_combout\ : std_logic;
SIGNAL \EXP|e~9_combout\ : std_logic;
SIGNAL \EXP|e~10_combout\ : std_logic;
SIGNAL \EXP|e~11_combout\ : std_logic;
SIGNAL \EXP|e~12_combout\ : std_logic;
SIGNAL \EXP|e~13_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-3]~regout\ : std_logic;
SIGNAL \EXP|Add1~1\ : std_logic;
SIGNAL \EXP|Add1~2_combout\ : std_logic;
SIGNAL \EXP|e~14_combout\ : std_logic;
SIGNAL \EXP|e~15_combout\ : std_logic;
SIGNAL \EXP|e~16_combout\ : std_logic;
SIGNAL \EXP|e~17_combout\ : std_logic;
SIGNAL \EXP|e~18_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-2]~regout\ : std_logic;
SIGNAL \EXP|Add8~1\ : std_logic;
SIGNAL \EXP|Add8~2_combout\ : std_logic;
SIGNAL \EXP|e~5_combout\ : std_logic;
SIGNAL \EXP|e~6_combout\ : std_logic;
SIGNAL \EXP|e~7_combout\ : std_logic;
SIGNAL \EXP|e~8_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-4]~regout\ : std_logic;
SIGNAL \EXP|Add12~3\ : std_logic;
SIGNAL \EXP|Add12~5\ : std_logic;
SIGNAL \EXP|Add12~7\ : std_logic;
SIGNAL \EXP|Add12~9\ : std_logic;
SIGNAL \EXP|Add12~11\ : std_logic;
SIGNAL \EXP|Add12~13\ : std_logic;
SIGNAL \EXP|Add12~14_combout\ : std_logic;
SIGNAL \EXP|Add1~3\ : std_logic;
SIGNAL \EXP|Add1~5\ : std_logic;
SIGNAL \EXP|Add1~7\ : std_logic;
SIGNAL \EXP|Add1~9\ : std_logic;
SIGNAL \EXP|Add1~10_combout\ : std_logic;
SIGNAL \EXP|e~34_combout\ : std_logic;
SIGNAL \EXP|e~35_combout\ : std_logic;
SIGNAL \EXP|e~36_combout\ : std_logic;
SIGNAL \EXP|e~37_combout\ : std_logic;
SIGNAL \EXP|e~38_combout\ : std_logic;
SIGNAL \EXP|Add14~3\ : std_logic;
SIGNAL \EXP|Add14~5\ : std_logic;
SIGNAL \EXP|Add14~7\ : std_logic;
SIGNAL \EXP|Add14~8_combout\ : std_logic;
SIGNAL \EXP|Add12~8_combout\ : std_logic;
SIGNAL \EXP|Add3~1\ : std_logic;
SIGNAL \EXP|Add3~3\ : std_logic;
SIGNAL \EXP|Add3~5\ : std_logic;
SIGNAL \EXP|Add3~6_combout\ : std_logic;
SIGNAL \EXP|Add1~4_combout\ : std_logic;
SIGNAL \EXP|Add6~1\ : std_logic;
SIGNAL \EXP|Add6~3\ : std_logic;
SIGNAL \EXP|Add6~5\ : std_logic;
SIGNAL \EXP|Add6~7\ : std_logic;
SIGNAL \EXP|Add6~8_combout\ : std_logic;
SIGNAL \EXP|e~19_combout\ : std_logic;
SIGNAL \EXP|e~20_combout\ : std_logic;
SIGNAL \EXP|e~21_combout\ : std_logic;
SIGNAL \EXP|e~22_combout\ : std_logic;
SIGNAL \EXP|e~23_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-1]~regout\ : std_logic;
SIGNAL \EXP|Add10~1\ : std_logic;
SIGNAL \EXP|Add10~3\ : std_logic;
SIGNAL \EXP|Add10~5\ : std_logic;
SIGNAL \EXP|Add10~7\ : std_logic;
SIGNAL \EXP|Add10~9\ : std_logic;
SIGNAL \EXP|Add10~11\ : std_logic;
SIGNAL \EXP|Add10~13\ : std_logic;
SIGNAL \EXP|Add10~15\ : std_logic;
SIGNAL \EXP|Add10~16_combout\ : std_logic;
SIGNAL \EXP|Add12~15\ : std_logic;
SIGNAL \EXP|Add12~16_combout\ : std_logic;
SIGNAL \EXP|Add1~11\ : std_logic;
SIGNAL \EXP|Add1~12_combout\ : std_logic;
SIGNAL \EXP|Add6~9\ : std_logic;
SIGNAL \EXP|Add6~11\ : std_logic;
SIGNAL \EXP|Add6~13\ : std_logic;
SIGNAL \EXP|Add6~15\ : std_logic;
SIGNAL \EXP|Add6~16_combout\ : std_logic;
SIGNAL \EXP|e~39_combout\ : std_logic;
SIGNAL \EXP|e~40_combout\ : std_logic;
SIGNAL \EXP|e~41_combout\ : std_logic;
SIGNAL \EXP|e~42_combout\ : std_logic;
SIGNAL \EXP|e~43_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[3]~38\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[4]~39_combout\ : std_logic;
SIGNAL \EXP|Add14~9\ : std_logic;
SIGNAL \EXP|Add14~11\ : std_logic;
SIGNAL \EXP|Add14~13\ : std_logic;
SIGNAL \EXP|Add14~15\ : std_logic;
SIGNAL \EXP|Add14~17\ : std_logic;
SIGNAL \EXP|Add14~18_combout\ : std_logic;
SIGNAL \EXP|Add12~17\ : std_logic;
SIGNAL \EXP|Add12~18_combout\ : std_logic;
SIGNAL \EXP|Add10~17\ : std_logic;
SIGNAL \EXP|Add10~18_combout\ : std_logic;
SIGNAL \EXP|Add1~13\ : std_logic;
SIGNAL \EXP|Add1~14_combout\ : std_logic;
SIGNAL \EXP|Add6~17\ : std_logic;
SIGNAL \EXP|Add6~18_combout\ : std_logic;
SIGNAL \EXP|e~44_combout\ : std_logic;
SIGNAL \EXP|e~45_combout\ : std_logic;
SIGNAL \EXP|e~46_combout\ : std_logic;
SIGNAL \EXP|e~47_combout\ : std_logic;
SIGNAL \EXP|e~48_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-2]~28\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-1]~30\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[0]~31_combout\ : std_logic;
SIGNAL \EXP|Add10~10_combout\ : std_logic;
SIGNAL \EXP|Add1~6_combout\ : std_logic;
SIGNAL \EXP|Add6~10_combout\ : std_logic;
SIGNAL \EXP|e~24_combout\ : std_logic;
SIGNAL \EXP|e~25_combout\ : std_logic;
SIGNAL \EXP|e~26_combout\ : std_logic;
SIGNAL \EXP|e~27_combout\ : std_logic;
SIGNAL \EXP|e~28_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[0]~32\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[1]~33_combout\ : std_logic;
SIGNAL \EXP|Add12~12_combout\ : std_logic;
SIGNAL \EXP|Add1~8_combout\ : std_logic;
SIGNAL \EXP|e~29_combout\ : std_logic;
SIGNAL \EXP|e~30_combout\ : std_logic;
SIGNAL \EXP|e~31_combout\ : std_logic;
SIGNAL \EXP|e~32_combout\ : std_logic;
SIGNAL \EXP|e~33_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-5]~12_combout\ : std_logic;
SIGNAL \EXP|Add12~0_combout\ : std_logic;
SIGNAL \EXP|e~0_combout\ : std_logic;
SIGNAL \EXP|Add10~0_combout\ : std_logic;
SIGNAL \EXP|Add6~0_combout\ : std_logic;
SIGNAL \EXP|e~2_combout\ : std_logic;
SIGNAL \EXP|e~3_combout\ : std_logic;
SIGNAL \EXP|e~4_combout\ : std_logic;
SIGNAL \EXP|Calculate_Block.e[-5]~regout\ : std_logic;
SIGNAL \EXP|exp[-5]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[-5]~regout\ : std_logic;
SIGNAL \EXP|exp[-4]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[-4]~regout\ : std_logic;
SIGNAL \EXP|exp[-3]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[-3]~regout\ : std_logic;
SIGNAL \EXP|exp[-2]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[-2]~regout\ : std_logic;
SIGNAL \EXP|exp[-1]~regout\ : std_logic;
SIGNAL \EXP|exp[0]~0_combout\ : std_logic;
SIGNAL \EXP|exp[0]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[1]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[2]~feeder_combout\ : std_logic;
SIGNAL \EXP|exp[3]~feeder_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \EXP|rem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EXP|Calculate_Block.e\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EXP|exp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \EXP|ALT_INV_rem[-30]~69_combout\ : std_logic;
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
\EXP|ALT_INV_rem[-30]~69_combout\ <= NOT \EXP|rem[-30]~69_combout\;
\EXP|ALT_INV_exp\(0) <= NOT \EXP|exp\(0);

-- Location: LCCOMB_X38_Y11_N0
\EXP|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~0_combout\ = (\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e\(0) $ (VCC))) # (!\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e\(0) & VCC))
-- \EXP|Add14~1\ = CARRY((\EXP|Calculate_Block.e[-5]~regout\ & \EXP|Calculate_Block.e\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	combout => \EXP|Add14~0_combout\,
	cout => \EXP|Add14~1\);

-- Location: LCCOMB_X35_Y12_N28
\EXP|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~0_combout\ = (\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ & VCC))
-- \EXP|Add8~1\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & \EXP|Calculate_Block.e[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e[-5]~regout\,
	datad => VCC,
	combout => \EXP|Add8~0_combout\,
	cout => \EXP|Add8~1\);

-- Location: LCCOMB_X35_Y13_N6
\EXP|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~2_combout\ = (\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Add10~1\ & VCC)) # (!\EXP|Calculate_Block.e[-1]~regout\ & (!\EXP|Add10~1\)))) # (!\EXP|Calculate_Block.e[-4]~regout\ & 
-- ((\EXP|Calculate_Block.e[-1]~regout\ & (!\EXP|Add10~1\)) # (!\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Add10~1\) # (GND)))))
-- \EXP|Add10~3\ = CARRY((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Calculate_Block.e[-1]~regout\ & !\EXP|Add10~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((!\EXP|Add10~1\) # (!\EXP|Calculate_Block.e[-1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~regout\,
	datab => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add10~1\,
	combout => \EXP|Add10~2_combout\,
	cout => \EXP|Add10~3\);

-- Location: LCCOMB_X37_Y13_N2
\EXP|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~2_combout\ = (\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Add6~1\ & VCC)) # (!\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Add6~1\)))) # (!\EXP|Calculate_Block.e[-3]~regout\ & 
-- ((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Add6~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Add6~1\) # (GND)))))
-- \EXP|Add6~3\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & (!\EXP|Calculate_Block.e[-4]~regout\ & !\EXP|Add6~1\)) # (!\EXP|Calculate_Block.e[-3]~regout\ & ((!\EXP|Add6~1\) # (!\EXP|Calculate_Block.e[-4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add6~1\,
	combout => \EXP|Add6~2_combout\,
	cout => \EXP|Add6~3\);

-- Location: LCCOMB_X35_Y12_N2
\EXP|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~2_combout\ = (\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Add3~1\ & VCC)) # (!\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Add3~1\)))) # (!\EXP|Calculate_Block.e[-3]~regout\ & 
-- ((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Add3~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Add3~1\) # (GND)))))
-- \EXP|Add3~3\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & (!\EXP|Calculate_Block.e[-4]~regout\ & !\EXP|Add3~1\)) # (!\EXP|Calculate_Block.e[-3]~regout\ & ((!\EXP|Add3~1\) # (!\EXP|Calculate_Block.e[-4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add3~1\,
	combout => \EXP|Add3~2_combout\,
	cout => \EXP|Add3~3\);

-- Location: LCCOMB_X37_Y13_N4
\EXP|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~4_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e[-2]~regout\ $ (!\EXP|Add6~3\)))) # (GND)
-- \EXP|Add6~5\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e[-2]~regout\) # (!\EXP|Add6~3\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add6~3\,
	combout => \EXP|Add6~4_combout\,
	cout => \EXP|Add6~5\);

-- Location: LCCOMB_X35_Y13_N8
\EXP|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~4_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e\(0) $ (!\EXP|Add10~3\)))) # (GND)
-- \EXP|Add10~5\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e\(0)) # (!\EXP|Add10~3\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e\(0) & !\EXP|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add10~3\,
	combout => \EXP|Add10~4_combout\,
	cout => \EXP|Add10~5\);

-- Location: LCCOMB_X38_Y11_N4
\EXP|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~4_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e\(2) $ (!\EXP|Add14~3\)))) # (GND)
-- \EXP|Add14~5\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e\(2)) # (!\EXP|Add14~3\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e\(2) & !\EXP|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add14~3\,
	combout => \EXP|Add14~4_combout\,
	cout => \EXP|Add14~5\);

-- Location: LCCOMB_X35_Y12_N4
\EXP|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~4_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e[-2]~regout\ $ (!\EXP|Add3~3\)))) # (GND)
-- \EXP|Add3~5\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e[-2]~regout\) # (!\EXP|Add3~3\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add3~3\,
	combout => \EXP|Add3~4_combout\,
	cout => \EXP|Add3~5\);

-- Location: LCCOMB_X37_Y13_N6
\EXP|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~6_combout\ = (\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Add6~5\ & VCC)) # (!\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add6~5\)))) # (!\EXP|Calculate_Block.e[-1]~regout\ & 
-- ((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add6~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Add6~5\) # (GND)))))
-- \EXP|Add6~7\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & (!\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add6~5\)) # (!\EXP|Calculate_Block.e[-1]~regout\ & ((!\EXP|Add6~5\) # (!\EXP|Calculate_Block.e[-2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add6~5\,
	combout => \EXP|Add6~6_combout\,
	cout => \EXP|Add6~7\);

-- Location: LCCOMB_X35_Y13_N10
\EXP|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~6_combout\ = (\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(1) & (\EXP|Add10~5\ & VCC)) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Add10~5\)))) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(1) & 
-- (!\EXP|Add10~5\)) # (!\EXP|Calculate_Block.e\(1) & ((\EXP|Add10~5\) # (GND)))))
-- \EXP|Add10~7\ = CARRY((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Calculate_Block.e\(1) & !\EXP|Add10~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((!\EXP|Add10~5\) # (!\EXP|Calculate_Block.e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add10~5\,
	combout => \EXP|Add10~6_combout\,
	cout => \EXP|Add10~7\);

-- Location: LCCOMB_X40_Y11_N16
\EXP|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~6_combout\ = (\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(2) & (\EXP|Add12~5\ & VCC)) # (!\EXP|Calculate_Block.e\(2) & (!\EXP|Add12~5\)))) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(2) & 
-- (!\EXP|Add12~5\)) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Add12~5\) # (GND)))))
-- \EXP|Add12~7\ = CARRY((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Calculate_Block.e\(2) & !\EXP|Add12~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((!\EXP|Add12~5\) # (!\EXP|Calculate_Block.e\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add12~5\,
	combout => \EXP|Add12~6_combout\,
	cout => \EXP|Add12~7\);

-- Location: LCCOMB_X35_Y13_N12
\EXP|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~8_combout\ = ((\EXP|Calculate_Block.e\(2) $ (\EXP|Calculate_Block.e[-1]~regout\ $ (!\EXP|Add10~7\)))) # (GND)
-- \EXP|Add10~9\ = CARRY((\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e[-1]~regout\) # (!\EXP|Add10~7\))) # (!\EXP|Calculate_Block.e\(2) & (\EXP|Calculate_Block.e[-1]~regout\ & !\EXP|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add10~7\,
	combout => \EXP|Add10~8_combout\,
	cout => \EXP|Add10~9\);

-- Location: LCCOMB_X35_Y12_N6
\EXP|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~6_combout\ = (\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Add3~5\ & VCC)) # (!\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add3~5\)))) # (!\EXP|Calculate_Block.e[-1]~regout\ & 
-- ((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add3~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Add3~5\) # (GND)))))
-- \EXP|Add3~7\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & (!\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add3~5\)) # (!\EXP|Calculate_Block.e[-1]~regout\ & ((!\EXP|Add3~5\) # (!\EXP|Calculate_Block.e[-2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add3~5\,
	combout => \EXP|Add3~6_combout\,
	cout => \EXP|Add3~7\);

-- Location: LCCOMB_X35_Y12_N8
\EXP|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~8_combout\ = ((\EXP|Calculate_Block.e[-1]~regout\ $ (\EXP|Calculate_Block.e\(0) $ (!\EXP|Add3~7\)))) # (GND)
-- \EXP|Add3~9\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e\(0)) # (!\EXP|Add3~7\))) # (!\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Calculate_Block.e\(0) & !\EXP|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add3~7\,
	combout => \EXP|Add3~8_combout\,
	cout => \EXP|Add3~9\);

-- Location: LCCOMB_X40_Y11_N20
\EXP|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~10_combout\ = (\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(4) & (\EXP|Add12~9\ & VCC)) # (!\EXP|Calculate_Block.e\(4) & (!\EXP|Add12~9\)))) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(4) & (!\EXP|Add12~9\)) # 
-- (!\EXP|Calculate_Block.e\(4) & ((\EXP|Add12~9\) # (GND)))))
-- \EXP|Add12~11\ = CARRY((\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e\(4) & !\EXP|Add12~9\)) # (!\EXP|Calculate_Block.e\(0) & ((!\EXP|Add12~9\) # (!\EXP|Calculate_Block.e\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(0),
	datab => \EXP|Calculate_Block.e\(4),
	datad => VCC,
	cin => \EXP|Add12~9\,
	combout => \EXP|Add12~10_combout\,
	cout => \EXP|Add12~11\);

-- Location: LCCOMB_X38_Y11_N10
\EXP|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~10_combout\ = (\EXP|Calculate_Block.e\(0) & (!\EXP|Add14~9\)) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Add14~9\) # (GND)))
-- \EXP|Add14~11\ = CARRY((!\EXP|Add14~9\) # (!\EXP|Calculate_Block.e\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add14~9\,
	combout => \EXP|Add14~10_combout\,
	cout => \EXP|Add14~11\);

-- Location: LCCOMB_X35_Y13_N16
\EXP|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~12_combout\ = ((\EXP|Calculate_Block.e\(4) $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add10~11\)))) # (GND)
-- \EXP|Add10~13\ = CARRY((\EXP|Calculate_Block.e\(4) & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add10~11\))) # (!\EXP|Calculate_Block.e\(4) & (\EXP|Calculate_Block.e\(1) & !\EXP|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(4),
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add10~11\,
	combout => \EXP|Add10~12_combout\,
	cout => \EXP|Add10~13\);

-- Location: LCCOMB_X35_Y12_N10
\EXP|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~10_combout\ = (\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(1) & (\EXP|Add3~9\ & VCC)) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Add3~9\)))) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(1) & (!\EXP|Add3~9\)) # 
-- (!\EXP|Calculate_Block.e\(1) & ((\EXP|Add3~9\) # (GND)))))
-- \EXP|Add3~11\ = CARRY((\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e\(1) & !\EXP|Add3~9\)) # (!\EXP|Calculate_Block.e\(0) & ((!\EXP|Add3~9\) # (!\EXP|Calculate_Block.e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(0),
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add3~9\,
	combout => \EXP|Add3~10_combout\,
	cout => \EXP|Add3~11\);

-- Location: LCCOMB_X37_Y13_N12
\EXP|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~12_combout\ = ((\EXP|Calculate_Block.e\(2) $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add6~11\)))) # (GND)
-- \EXP|Add6~13\ = CARRY((\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add6~11\))) # (!\EXP|Calculate_Block.e\(2) & (\EXP|Calculate_Block.e\(1) & !\EXP|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add6~11\,
	combout => \EXP|Add6~12_combout\,
	cout => \EXP|Add6~13\);

-- Location: LCCOMB_X38_Y11_N12
\EXP|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~12_combout\ = (\EXP|Calculate_Block.e\(1) & (\EXP|Add14~11\ $ (GND))) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Add14~11\ & VCC))
-- \EXP|Add14~13\ = CARRY((\EXP|Calculate_Block.e\(1) & !\EXP|Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add14~11\,
	combout => \EXP|Add14~12_combout\,
	cout => \EXP|Add14~13\);

-- Location: LCCOMB_X35_Y12_N12
\EXP|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~12_combout\ = ((\EXP|Calculate_Block.e\(2) $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add3~11\)))) # (GND)
-- \EXP|Add3~13\ = CARRY((\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add3~11\))) # (!\EXP|Calculate_Block.e\(2) & (\EXP|Calculate_Block.e\(1) & !\EXP|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add3~11\,
	combout => \EXP|Add3~12_combout\,
	cout => \EXP|Add3~13\);

-- Location: LCCOMB_X37_Y13_N14
\EXP|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~14_combout\ = (\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(3) & (\EXP|Add6~13\ & VCC)) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add6~13\)))) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(3) & (!\EXP|Add6~13\)) # 
-- (!\EXP|Calculate_Block.e\(3) & ((\EXP|Add6~13\) # (GND)))))
-- \EXP|Add6~15\ = CARRY((\EXP|Calculate_Block.e\(2) & (!\EXP|Calculate_Block.e\(3) & !\EXP|Add6~13\)) # (!\EXP|Calculate_Block.e\(2) & ((!\EXP|Add6~13\) # (!\EXP|Calculate_Block.e\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add6~13\,
	combout => \EXP|Add6~14_combout\,
	cout => \EXP|Add6~15\);

-- Location: LCCOMB_X35_Y13_N18
\EXP|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~14_combout\ = (\EXP|Calculate_Block.e\(2) & (!\EXP|Add10~13\)) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Add10~13\) # (GND)))
-- \EXP|Add10~15\ = CARRY((!\EXP|Add10~13\) # (!\EXP|Calculate_Block.e\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add10~13\,
	combout => \EXP|Add10~14_combout\,
	cout => \EXP|Add10~15\);

-- Location: LCCOMB_X38_Y11_N14
\EXP|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~14_combout\ = (\EXP|Calculate_Block.e\(2) & (!\EXP|Add14~13\)) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Add14~13\) # (GND)))
-- \EXP|Add14~15\ = CARRY((!\EXP|Add14~13\) # (!\EXP|Calculate_Block.e\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add14~13\,
	combout => \EXP|Add14~14_combout\,
	cout => \EXP|Add14~15\);

-- Location: LCCOMB_X35_Y12_N14
\EXP|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~14_combout\ = (\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(3) & (\EXP|Add3~13\ & VCC)) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add3~13\)))) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e\(3) & (!\EXP|Add3~13\)) # 
-- (!\EXP|Calculate_Block.e\(3) & ((\EXP|Add3~13\) # (GND)))))
-- \EXP|Add3~15\ = CARRY((\EXP|Calculate_Block.e\(2) & (!\EXP|Calculate_Block.e\(3) & !\EXP|Add3~13\)) # (!\EXP|Calculate_Block.e\(2) & ((!\EXP|Add3~13\) # (!\EXP|Calculate_Block.e\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add3~13\,
	combout => \EXP|Add3~14_combout\,
	cout => \EXP|Add3~15\);

-- Location: LCCOMB_X38_Y11_N16
\EXP|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~16_combout\ = (\EXP|Calculate_Block.e\(3) & (\EXP|Add14~15\ $ (GND))) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add14~15\ & VCC))
-- \EXP|Add14~17\ = CARRY((\EXP|Calculate_Block.e\(3) & !\EXP|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add14~15\,
	combout => \EXP|Add14~16_combout\,
	cout => \EXP|Add14~17\);

-- Location: LCCOMB_X35_Y12_N16
\EXP|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~16_combout\ = \EXP|Calculate_Block.e\(3) $ (\EXP|Add3~15\ $ (!\EXP|Calculate_Block.e\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(3),
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add3~15\,
	combout => \EXP|Add3~16_combout\);

-- Location: LCCOMB_X33_Y12_N4
\EXP|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~2_combout\ = (\EXP|rem[-27]~35_combout\ & (!\EXP|Add11~1\)) # (!\EXP|rem[-27]~35_combout\ & ((\EXP|Add11~1\) # (GND)))
-- \EXP|Add11~3\ = CARRY((!\EXP|Add11~1\) # (!\EXP|rem[-27]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-27]~35_combout\,
	datad => VCC,
	cin => \EXP|Add11~1\,
	combout => \EXP|Add11~2_combout\,
	cout => \EXP|Add11~3\);

-- Location: LCCOMB_X33_Y12_N6
\EXP|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~4_combout\ = (\EXP|rem[-26]~31_combout\ & ((GND) # (!\EXP|Add11~3\))) # (!\EXP|rem[-26]~31_combout\ & (\EXP|Add11~3\ $ (GND)))
-- \EXP|Add11~5\ = CARRY((\EXP|rem[-26]~31_combout\) # (!\EXP|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	cin => \EXP|Add11~3\,
	combout => \EXP|Add11~4_combout\,
	cout => \EXP|Add11~5\);

-- Location: LCCOMB_X33_Y12_N8
\EXP|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~6_combout\ = (\EXP|rem[-25]~27_combout\ & (\EXP|Add11~5\ & VCC)) # (!\EXP|rem[-25]~27_combout\ & (!\EXP|Add11~5\))
-- \EXP|Add11~7\ = CARRY((!\EXP|rem[-25]~27_combout\ & !\EXP|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add11~5\,
	combout => \EXP|Add11~6_combout\,
	cout => \EXP|Add11~7\);

-- Location: LCCOMB_X33_Y12_N10
\EXP|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~8_combout\ = (\EXP|rem[-24]~23_combout\ & ((GND) # (!\EXP|Add11~7\))) # (!\EXP|rem[-24]~23_combout\ & (\EXP|Add11~7\ $ (GND)))
-- \EXP|Add11~9\ = CARRY((\EXP|rem[-24]~23_combout\) # (!\EXP|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add11~7\,
	combout => \EXP|Add11~8_combout\,
	cout => \EXP|Add11~9\);

-- Location: LCCOMB_X33_Y12_N12
\EXP|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~10_combout\ = (\EXP|rem[-23]~19_combout\ & (\EXP|Add11~9\ & VCC)) # (!\EXP|rem[-23]~19_combout\ & (!\EXP|Add11~9\))
-- \EXP|Add11~11\ = CARRY((!\EXP|rem[-23]~19_combout\ & !\EXP|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add11~9\,
	combout => \EXP|Add11~10_combout\,
	cout => \EXP|Add11~11\);

-- Location: LCCOMB_X33_Y12_N16
\EXP|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~14_combout\ = (\EXP|rem[-21]~regout\ & (!\EXP|Add11~13\)) # (!\EXP|rem[-21]~regout\ & ((\EXP|Add11~13\) # (GND)))
-- \EXP|Add11~15\ = CARRY((!\EXP|Add11~13\) # (!\EXP|rem[-21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add11~13\,
	combout => \EXP|Add11~14_combout\,
	cout => \EXP|Add11~15\);

-- Location: LCCOMB_X33_Y12_N22
\EXP|Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~20_combout\ = (\EXP|rem[-18]~regout\ & ((GND) # (!\EXP|Add11~19\))) # (!\EXP|rem[-18]~regout\ & (\EXP|Add11~19\ $ (GND)))
-- \EXP|Add11~21\ = CARRY((\EXP|rem[-18]~regout\) # (!\EXP|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add11~19\,
	combout => \EXP|Add11~20_combout\,
	cout => \EXP|Add11~21\);

-- Location: LCCOMB_X33_Y12_N24
\EXP|Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~22_combout\ = (\EXP|rem[-17]~regout\ & (!\EXP|Add11~21\)) # (!\EXP|rem[-17]~regout\ & ((\EXP|Add11~21\) # (GND)))
-- \EXP|Add11~23\ = CARRY((!\EXP|Add11~21\) # (!\EXP|rem[-17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add11~21\,
	combout => \EXP|Add11~22_combout\,
	cout => \EXP|Add11~23\);

-- Location: LCCOMB_X33_Y11_N10
\EXP|Add11~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~40_combout\ = (\EXP|rem[-8]~regout\ & (\EXP|Add11~39\ $ (GND))) # (!\EXP|rem[-8]~regout\ & (!\EXP|Add11~39\ & VCC))
-- \EXP|Add11~41\ = CARRY((\EXP|rem[-8]~regout\ & !\EXP|Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add11~39\,
	combout => \EXP|Add11~40_combout\,
	cout => \EXP|Add11~41\);

-- Location: LCCOMB_X33_Y11_N14
\EXP|Add11~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~44_combout\ = (\EXP|rem[-6]~regout\ & (\EXP|Add11~43\ $ (GND))) # (!\EXP|rem[-6]~regout\ & (!\EXP|Add11~43\ & VCC))
-- \EXP|Add11~45\ = CARRY((\EXP|rem[-6]~regout\ & !\EXP|Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add11~43\,
	combout => \EXP|Add11~44_combout\,
	cout => \EXP|Add11~45\);

-- Location: LCCOMB_X33_Y11_N20
\EXP|Add11~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~50_combout\ = (\EXP|rem[-3]~regout\ & (\EXP|Add11~49\ & VCC)) # (!\EXP|rem[-3]~regout\ & (!\EXP|Add11~49\))
-- \EXP|Add11~51\ = CARRY((!\EXP|rem[-3]~regout\ & !\EXP|Add11~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add11~49\,
	combout => \EXP|Add11~50_combout\,
	cout => \EXP|Add11~51\);

-- Location: LCCOMB_X33_Y11_N22
\EXP|Add11~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~52_combout\ = (\EXP|rem[-2]~regout\ & ((GND) # (!\EXP|Add11~51\))) # (!\EXP|rem[-2]~regout\ & (\EXP|Add11~51\ $ (GND)))
-- \EXP|Add11~53\ = CARRY((\EXP|rem[-2]~regout\) # (!\EXP|Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add11~51\,
	combout => \EXP|Add11~52_combout\,
	cout => \EXP|Add11~53\);

-- Location: LCCOMB_X38_Y8_N6
\EXP|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~4_combout\ = (\EXP|rem[-25]~27_combout\ & ((GND) # (!\EXP|Add13~3\))) # (!\EXP|rem[-25]~27_combout\ & (\EXP|Add13~3\ $ (GND)))
-- \EXP|Add13~5\ = CARRY((\EXP|rem[-25]~27_combout\) # (!\EXP|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add13~3\,
	combout => \EXP|Add13~4_combout\,
	cout => \EXP|Add13~5\);

-- Location: LCCOMB_X38_Y8_N8
\EXP|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~6_combout\ = (\EXP|rem[-24]~23_combout\ & (!\EXP|Add13~5\)) # (!\EXP|rem[-24]~23_combout\ & ((\EXP|Add13~5\) # (GND)))
-- \EXP|Add13~7\ = CARRY((!\EXP|Add13~5\) # (!\EXP|rem[-24]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add13~5\,
	combout => \EXP|Add13~6_combout\,
	cout => \EXP|Add13~7\);

-- Location: LCCOMB_X38_Y8_N10
\EXP|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~8_combout\ = (\EXP|rem[-23]~19_combout\ & (\EXP|Add13~7\ $ (GND))) # (!\EXP|rem[-23]~19_combout\ & (!\EXP|Add13~7\ & VCC))
-- \EXP|Add13~9\ = CARRY((\EXP|rem[-23]~19_combout\ & !\EXP|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add13~7\,
	combout => \EXP|Add13~8_combout\,
	cout => \EXP|Add13~9\);

-- Location: LCCOMB_X38_Y8_N16
\EXP|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~14_combout\ = (\EXP|rem[-20]~regout\ & (!\EXP|Add13~13\)) # (!\EXP|rem[-20]~regout\ & ((\EXP|Add13~13\) # (GND)))
-- \EXP|Add13~15\ = CARRY((!\EXP|Add13~13\) # (!\EXP|rem[-20]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add13~13\,
	combout => \EXP|Add13~14_combout\,
	cout => \EXP|Add13~15\);

-- Location: LCCOMB_X38_Y8_N28
\EXP|Add13~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~26_combout\ = (\EXP|rem[-14]~regout\ & (\EXP|Add13~25\ & VCC)) # (!\EXP|rem[-14]~regout\ & (!\EXP|Add13~25\))
-- \EXP|Add13~27\ = CARRY((!\EXP|rem[-14]~regout\ & !\EXP|Add13~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add13~25\,
	combout => \EXP|Add13~26_combout\,
	cout => \EXP|Add13~27\);

-- Location: LCCOMB_X38_Y8_N30
\EXP|Add13~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~28_combout\ = (\EXP|rem[-13]~regout\ & ((GND) # (!\EXP|Add13~27\))) # (!\EXP|rem[-13]~regout\ & (\EXP|Add13~27\ $ (GND)))
-- \EXP|Add13~29\ = CARRY((\EXP|rem[-13]~regout\) # (!\EXP|Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add13~27\,
	combout => \EXP|Add13~28_combout\,
	cout => \EXP|Add13~29\);

-- Location: LCCOMB_X38_Y7_N0
\EXP|Add13~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~30_combout\ = (\EXP|rem[-12]~regout\ & (!\EXP|Add13~29\)) # (!\EXP|rem[-12]~regout\ & ((\EXP|Add13~29\) # (GND)))
-- \EXP|Add13~31\ = CARRY((!\EXP|Add13~29\) # (!\EXP|rem[-12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add13~29\,
	combout => \EXP|Add13~30_combout\,
	cout => \EXP|Add13~31\);

-- Location: LCCOMB_X38_Y7_N2
\EXP|Add13~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~32_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|Add13~31\ $ (GND))) # (!\EXP|rem[-11]~regout\ & (!\EXP|Add13~31\ & VCC))
-- \EXP|Add13~33\ = CARRY((\EXP|rem[-11]~regout\ & !\EXP|Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add13~31\,
	combout => \EXP|Add13~32_combout\,
	cout => \EXP|Add13~33\);

-- Location: LCCOMB_X38_Y7_N6
\EXP|Add13~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~36_combout\ = (\EXP|rem[-9]~regout\ & (\EXP|Add13~35\ $ (GND))) # (!\EXP|rem[-9]~regout\ & (!\EXP|Add13~35\ & VCC))
-- \EXP|Add13~37\ = CARRY((\EXP|rem[-9]~regout\ & !\EXP|Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add13~35\,
	combout => \EXP|Add13~36_combout\,
	cout => \EXP|Add13~37\);

-- Location: LCCOMB_X38_Y7_N12
\EXP|Add13~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~42_combout\ = (\EXP|rem[-6]~regout\ & (\EXP|Add13~41\ & VCC)) # (!\EXP|rem[-6]~regout\ & (!\EXP|Add13~41\))
-- \EXP|Add13~43\ = CARRY((!\EXP|rem[-6]~regout\ & !\EXP|Add13~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add13~41\,
	combout => \EXP|Add13~42_combout\,
	cout => \EXP|Add13~43\);

-- Location: LCCOMB_X38_Y7_N16
\EXP|Add13~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~46_combout\ = (\EXP|rem[-4]~regout\ & (\EXP|Add13~45\ & VCC)) # (!\EXP|rem[-4]~regout\ & (!\EXP|Add13~45\))
-- \EXP|Add13~47\ = CARRY((!\EXP|rem[-4]~regout\ & !\EXP|Add13~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add13~45\,
	combout => \EXP|Add13~46_combout\,
	cout => \EXP|Add13~47\);

-- Location: LCCOMB_X38_Y7_N18
\EXP|Add13~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~48_combout\ = (\EXP|rem[-3]~regout\ & ((GND) # (!\EXP|Add13~47\))) # (!\EXP|rem[-3]~regout\ & (\EXP|Add13~47\ $ (GND)))
-- \EXP|Add13~49\ = CARRY((\EXP|rem[-3]~regout\) # (!\EXP|Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add13~47\,
	combout => \EXP|Add13~48_combout\,
	cout => \EXP|Add13~49\);

-- Location: LCCOMB_X38_Y7_N20
\EXP|Add13~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~50_combout\ = (\EXP|rem[-2]~regout\ & (\EXP|Add13~49\ & VCC)) # (!\EXP|rem[-2]~regout\ & (!\EXP|Add13~49\))
-- \EXP|Add13~51\ = CARRY((!\EXP|rem[-2]~regout\ & !\EXP|Add13~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add13~49\,
	combout => \EXP|Add13~50_combout\,
	cout => \EXP|Add13~51\);

-- Location: LCCOMB_X35_Y8_N6
\EXP|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~2_combout\ = (\EXP|rem[-25]~27_combout\ & (!\EXP|Add5~1\)) # (!\EXP|rem[-25]~27_combout\ & ((\EXP|Add5~1\) # (GND)))
-- \EXP|Add5~3\ = CARRY((!\EXP|Add5~1\) # (!\EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add5~1\,
	combout => \EXP|Add5~2_combout\,
	cout => \EXP|Add5~3\);

-- Location: LCCOMB_X35_Y8_N8
\EXP|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~4_combout\ = (\EXP|rem[-24]~23_combout\ & (\EXP|Add5~3\ $ (GND))) # (!\EXP|rem[-24]~23_combout\ & (!\EXP|Add5~3\ & VCC))
-- \EXP|Add5~5\ = CARRY((\EXP|rem[-24]~23_combout\ & !\EXP|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add5~3\,
	combout => \EXP|Add5~4_combout\,
	cout => \EXP|Add5~5\);

-- Location: LCCOMB_X35_Y8_N10
\EXP|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~6_combout\ = (\EXP|rem[-23]~19_combout\ & (!\EXP|Add5~5\)) # (!\EXP|rem[-23]~19_combout\ & ((\EXP|Add5~5\) # (GND)))
-- \EXP|Add5~7\ = CARRY((!\EXP|Add5~5\) # (!\EXP|rem[-23]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add5~5\,
	combout => \EXP|Add5~6_combout\,
	cout => \EXP|Add5~7\);

-- Location: LCCOMB_X35_Y8_N14
\EXP|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~10_combout\ = (\EXP|rem[-21]~regout\ & (\EXP|Add5~9\ & VCC)) # (!\EXP|rem[-21]~regout\ & (!\EXP|Add5~9\))
-- \EXP|Add5~11\ = CARRY((!\EXP|rem[-21]~regout\ & !\EXP|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add5~9\,
	combout => \EXP|Add5~10_combout\,
	cout => \EXP|Add5~11\);

-- Location: LCCOMB_X35_Y8_N22
\EXP|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~18_combout\ = (\EXP|rem[-17]~regout\ & (\EXP|Add5~17\ & VCC)) # (!\EXP|rem[-17]~regout\ & (!\EXP|Add5~17\))
-- \EXP|Add5~19\ = CARRY((!\EXP|rem[-17]~regout\ & !\EXP|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add5~17\,
	combout => \EXP|Add5~18_combout\,
	cout => \EXP|Add5~19\);

-- Location: LCCOMB_X35_Y8_N26
\EXP|Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~22_combout\ = (\EXP|rem[-15]~regout\ & (!\EXP|Add5~21\)) # (!\EXP|rem[-15]~regout\ & ((\EXP|Add5~21\) # (GND)))
-- \EXP|Add5~23\ = CARRY((!\EXP|Add5~21\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add5~21\,
	combout => \EXP|Add5~22_combout\,
	cout => \EXP|Add5~23\);

-- Location: LCCOMB_X35_Y7_N2
\EXP|Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~30_combout\ = (\EXP|rem[-11]~regout\ & (!\EXP|Add5~29\)) # (!\EXP|rem[-11]~regout\ & ((\EXP|Add5~29\) # (GND)))
-- \EXP|Add5~31\ = CARRY((!\EXP|Add5~29\) # (!\EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add5~29\,
	combout => \EXP|Add5~30_combout\,
	cout => \EXP|Add5~31\);

-- Location: LCCOMB_X35_Y7_N10
\EXP|Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~38_combout\ = (\EXP|rem[-7]~regout\ & (!\EXP|Add5~37\)) # (!\EXP|rem[-7]~regout\ & ((\EXP|Add5~37\) # (GND)))
-- \EXP|Add5~39\ = CARRY((!\EXP|Add5~37\) # (!\EXP|rem[-7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add5~37\,
	combout => \EXP|Add5~38_combout\,
	cout => \EXP|Add5~39\);

-- Location: LCCOMB_X35_Y7_N14
\EXP|Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~42_combout\ = (\EXP|rem[-5]~regout\ & (\EXP|Add5~41\ & VCC)) # (!\EXP|rem[-5]~regout\ & (!\EXP|Add5~41\))
-- \EXP|Add5~43\ = CARRY((!\EXP|rem[-5]~regout\ & !\EXP|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add5~41\,
	combout => \EXP|Add5~42_combout\,
	cout => \EXP|Add5~43\);

-- Location: LCCOMB_X35_Y7_N20
\EXP|Add5~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~48_combout\ = (\EXP|rem[-2]~regout\ & ((GND) # (!\EXP|Add5~47\))) # (!\EXP|rem[-2]~regout\ & (\EXP|Add5~47\ $ (GND)))
-- \EXP|Add5~49\ = CARRY((\EXP|rem[-2]~regout\) # (!\EXP|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add5~47\,
	combout => \EXP|Add5~48_combout\,
	cout => \EXP|Add5~49\);

-- Location: LCCOMB_X40_Y9_N4
\EXP|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~0_combout\ = \EXP|rem[-26]~31_combout\ $ (VCC)
-- \EXP|Add7~1\ = CARRY(\EXP|rem[-26]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	combout => \EXP|Add7~0_combout\,
	cout => \EXP|Add7~1\);

-- Location: LCCOMB_X40_Y9_N8
\EXP|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~4_combout\ = (\EXP|rem[-24]~23_combout\ & (\EXP|Add7~3\ $ (GND))) # (!\EXP|rem[-24]~23_combout\ & (!\EXP|Add7~3\ & VCC))
-- \EXP|Add7~5\ = CARRY((\EXP|rem[-24]~23_combout\ & !\EXP|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add7~3\,
	combout => \EXP|Add7~4_combout\,
	cout => \EXP|Add7~5\);

-- Location: LCCOMB_X40_Y9_N10
\EXP|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~6_combout\ = (\EXP|rem[-23]~19_combout\ & (!\EXP|Add7~5\)) # (!\EXP|rem[-23]~19_combout\ & ((\EXP|Add7~5\) # (GND)))
-- \EXP|Add7~7\ = CARRY((!\EXP|Add7~5\) # (!\EXP|rem[-23]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add7~5\,
	combout => \EXP|Add7~6_combout\,
	cout => \EXP|Add7~7\);

-- Location: LCCOMB_X40_Y9_N12
\EXP|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~8_combout\ = (\EXP|rem[-22]~15_combout\ & (\EXP|Add7~7\ $ (GND))) # (!\EXP|rem[-22]~15_combout\ & (!\EXP|Add7~7\ & VCC))
-- \EXP|Add7~9\ = CARRY((\EXP|rem[-22]~15_combout\ & !\EXP|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add7~7\,
	combout => \EXP|Add7~8_combout\,
	cout => \EXP|Add7~9\);

-- Location: LCCOMB_X40_Y8_N20
\EXP|Add7~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~48_combout\ = (\EXP|rem[-2]~regout\ & ((GND) # (!\EXP|Add7~47\))) # (!\EXP|rem[-2]~regout\ & (\EXP|Add7~47\ $ (GND)))
-- \EXP|Add7~49\ = CARRY((\EXP|rem[-2]~regout\) # (!\EXP|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add7~47\,
	combout => \EXP|Add7~48_combout\,
	cout => \EXP|Add7~49\);

-- Location: LCCOMB_X39_Y9_N8
\EXP|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~0_combout\ = \EXP|rem[-22]~15_combout\ $ (VCC)
-- \EXP|Add4~1\ = CARRY(\EXP|rem[-22]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	combout => \EXP|Add4~0_combout\,
	cout => \EXP|Add4~1\);

-- Location: LCCOMB_X39_Y9_N10
\EXP|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~2_combout\ = (\EXP|rem[-21]~regout\ & (!\EXP|Add4~1\)) # (!\EXP|rem[-21]~regout\ & ((\EXP|Add4~1\) # (GND)))
-- \EXP|Add4~3\ = CARRY((!\EXP|Add4~1\) # (!\EXP|rem[-21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add4~1\,
	combout => \EXP|Add4~2_combout\,
	cout => \EXP|Add4~3\);

-- Location: LCCOMB_X39_Y9_N20
\EXP|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~12_combout\ = (\EXP|rem[-16]~regout\ & (\EXP|Add4~11\ $ (GND))) # (!\EXP|rem[-16]~regout\ & (!\EXP|Add4~11\ & VCC))
-- \EXP|Add4~13\ = CARRY((\EXP|rem[-16]~regout\ & !\EXP|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add4~11\,
	combout => \EXP|Add4~12_combout\,
	cout => \EXP|Add4~13\);

-- Location: LCCOMB_X39_Y9_N24
\EXP|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~16_combout\ = (\EXP|rem[-14]~regout\ & ((GND) # (!\EXP|Add4~15\))) # (!\EXP|rem[-14]~regout\ & (\EXP|Add4~15\ $ (GND)))
-- \EXP|Add4~17\ = CARRY((\EXP|rem[-14]~regout\) # (!\EXP|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add4~15\,
	combout => \EXP|Add4~16_combout\,
	cout => \EXP|Add4~17\);

-- Location: LCCOMB_X39_Y8_N0
\EXP|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~24_combout\ = (\EXP|rem[-10]~regout\ & ((GND) # (!\EXP|Add4~23\))) # (!\EXP|rem[-10]~regout\ & (\EXP|Add4~23\ $ (GND)))
-- \EXP|Add4~25\ = CARRY((\EXP|rem[-10]~regout\) # (!\EXP|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add4~23\,
	combout => \EXP|Add4~24_combout\,
	cout => \EXP|Add4~25\);

-- Location: LCCOMB_X39_Y8_N2
\EXP|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~26_combout\ = (\EXP|rem[-9]~regout\ & (!\EXP|Add4~25\)) # (!\EXP|rem[-9]~regout\ & ((\EXP|Add4~25\) # (GND)))
-- \EXP|Add4~27\ = CARRY((!\EXP|Add4~25\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add4~25\,
	combout => \EXP|Add4~26_combout\,
	cout => \EXP|Add4~27\);

-- Location: LCCOMB_X34_Y8_N2
\EXP|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~0_combout\ = \EXP|rem[-28]~39_combout\ $ (VCC)
-- \EXP|Add9~1\ = CARRY(\EXP|rem[-28]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-28]~39_combout\,
	datad => VCC,
	combout => \EXP|Add9~0_combout\,
	cout => \EXP|Add9~1\);

-- Location: LCCOMB_X34_Y8_N10
\EXP|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~8_combout\ = (\EXP|rem[-24]~23_combout\ & (\EXP|Add9~7\ $ (GND))) # (!\EXP|rem[-24]~23_combout\ & (!\EXP|Add9~7\ & VCC))
-- \EXP|Add9~9\ = CARRY((\EXP|rem[-24]~23_combout\ & !\EXP|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add9~7\,
	combout => \EXP|Add9~8_combout\,
	cout => \EXP|Add9~9\);

-- Location: LCCOMB_X34_Y8_N12
\EXP|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~10_combout\ = (\EXP|rem[-23]~19_combout\ & (!\EXP|Add9~9\)) # (!\EXP|rem[-23]~19_combout\ & ((\EXP|Add9~9\) # (GND)))
-- \EXP|Add9~11\ = CARRY((!\EXP|Add9~9\) # (!\EXP|rem[-23]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add9~9\,
	combout => \EXP|Add9~10_combout\,
	cout => \EXP|Add9~11\);

-- Location: LCCOMB_X34_Y8_N16
\EXP|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~14_combout\ = (\EXP|rem[-21]~regout\ & (\EXP|Add9~13\ & VCC)) # (!\EXP|rem[-21]~regout\ & (!\EXP|Add9~13\))
-- \EXP|Add9~15\ = CARRY((!\EXP|rem[-21]~regout\ & !\EXP|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add9~13\,
	combout => \EXP|Add9~14_combout\,
	cout => \EXP|Add9~15\);

-- Location: LCCOMB_X34_Y8_N18
\EXP|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~16_combout\ = (\EXP|rem[-20]~regout\ & ((GND) # (!\EXP|Add9~15\))) # (!\EXP|rem[-20]~regout\ & (\EXP|Add9~15\ $ (GND)))
-- \EXP|Add9~17\ = CARRY((\EXP|rem[-20]~regout\) # (!\EXP|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add9~15\,
	combout => \EXP|Add9~16_combout\,
	cout => \EXP|Add9~17\);

-- Location: LCCOMB_X34_Y8_N26
\EXP|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~24_combout\ = (\EXP|rem[-16]~regout\ & (\EXP|Add9~23\ $ (GND))) # (!\EXP|rem[-16]~regout\ & (!\EXP|Add9~23\ & VCC))
-- \EXP|Add9~25\ = CARRY((\EXP|rem[-16]~regout\ & !\EXP|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add9~23\,
	combout => \EXP|Add9~24_combout\,
	cout => \EXP|Add9~25\);

-- Location: LCCOMB_X34_Y8_N28
\EXP|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~26_combout\ = (\EXP|rem[-15]~regout\ & (!\EXP|Add9~25\)) # (!\EXP|rem[-15]~regout\ & ((\EXP|Add9~25\) # (GND)))
-- \EXP|Add9~27\ = CARRY((!\EXP|Add9~25\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add9~25\,
	combout => \EXP|Add9~26_combout\,
	cout => \EXP|Add9~27\);

-- Location: LCCOMB_X34_Y8_N30
\EXP|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~28_combout\ = (\EXP|rem[-14]~regout\ & ((GND) # (!\EXP|Add9~27\))) # (!\EXP|rem[-14]~regout\ & (\EXP|Add9~27\ $ (GND)))
-- \EXP|Add9~29\ = CARRY((\EXP|rem[-14]~regout\) # (!\EXP|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add9~27\,
	combout => \EXP|Add9~28_combout\,
	cout => \EXP|Add9~29\);

-- Location: LCCOMB_X34_Y7_N2
\EXP|Add9~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~32_combout\ = (\EXP|rem[-12]~regout\ & (\EXP|Add9~31\ $ (GND))) # (!\EXP|rem[-12]~regout\ & (!\EXP|Add9~31\ & VCC))
-- \EXP|Add9~33\ = CARRY((\EXP|rem[-12]~regout\ & !\EXP|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add9~31\,
	combout => \EXP|Add9~32_combout\,
	cout => \EXP|Add9~33\);

-- Location: LCCOMB_X34_Y7_N6
\EXP|Add9~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~36_combout\ = (\EXP|rem[-10]~regout\ & ((GND) # (!\EXP|Add9~35\))) # (!\EXP|rem[-10]~regout\ & (\EXP|Add9~35\ $ (GND)))
-- \EXP|Add9~37\ = CARRY((\EXP|rem[-10]~regout\) # (!\EXP|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add9~35\,
	combout => \EXP|Add9~36_combout\,
	cout => \EXP|Add9~37\);

-- Location: LCCOMB_X34_Y7_N16
\EXP|Add9~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~46_combout\ = (\EXP|rem[-5]~regout\ & (!\EXP|Add9~45\)) # (!\EXP|rem[-5]~regout\ & ((\EXP|Add9~45\) # (GND)))
-- \EXP|Add9~47\ = CARRY((!\EXP|Add9~45\) # (!\EXP|rem[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add9~45\,
	combout => \EXP|Add9~46_combout\,
	cout => \EXP|Add9~47\);

-- Location: LCCOMB_X39_Y13_N28
\EXP|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~12_combout\ = (\EXP|rem[-24]~23_combout\ & ((GND) # (!\EXP|Add15~11\))) # (!\EXP|rem[-24]~23_combout\ & (\EXP|Add15~11\ $ (GND)))
-- \EXP|Add15~13\ = CARRY((\EXP|rem[-24]~23_combout\) # (!\EXP|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datad => VCC,
	cin => \EXP|Add15~11\,
	combout => \EXP|Add15~12_combout\,
	cout => \EXP|Add15~13\);

-- Location: LCCOMB_X39_Y13_N30
\EXP|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~14_combout\ = (\EXP|rem[-23]~19_combout\ & (!\EXP|Add15~13\)) # (!\EXP|rem[-23]~19_combout\ & ((\EXP|Add15~13\) # (GND)))
-- \EXP|Add15~15\ = CARRY((!\EXP|Add15~13\) # (!\EXP|rem[-23]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-23]~19_combout\,
	datad => VCC,
	cin => \EXP|Add15~13\,
	combout => \EXP|Add15~14_combout\,
	cout => \EXP|Add15~15\);

-- Location: LCCOMB_X39_Y12_N30
\EXP|Add15~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~46_combout\ = (\EXP|rem[-7]~regout\ & (\EXP|Add15~45\ & VCC)) # (!\EXP|rem[-7]~regout\ & (!\EXP|Add15~45\))
-- \EXP|Add15~47\ = CARRY((!\EXP|rem[-7]~regout\ & !\EXP|Add15~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add15~45\,
	combout => \EXP|Add15~46_combout\,
	cout => \EXP|Add15~47\);

-- Location: LCCOMB_X39_Y11_N4
\EXP|Add15~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~52_combout\ = (\EXP|rem[-4]~regout\ & ((GND) # (!\EXP|Add15~51\))) # (!\EXP|rem[-4]~regout\ & (\EXP|Add15~51\ $ (GND)))
-- \EXP|Add15~53\ = CARRY((\EXP|rem[-4]~regout\) # (!\EXP|Add15~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add15~51\,
	combout => \EXP|Add15~52_combout\,
	cout => \EXP|Add15~53\);

-- Location: LCCOMB_X38_Y7_N26
\EXP|Add13~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~56_combout\ = (\EXP|rem\(1) & ((GND) # (!\EXP|Add13~55\))) # (!\EXP|rem\(1) & (\EXP|Add13~55\ $ (GND)))
-- \EXP|Add13~57\ = CARRY((\EXP|rem\(1)) # (!\EXP|Add13~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add13~55\,
	combout => \EXP|Add13~56_combout\,
	cout => \EXP|Add13~57\);

-- Location: LCCOMB_X33_Y11_N24
\EXP|Add11~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~54_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add11~53\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add11~53\))
-- \EXP|Add11~55\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add11~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add11~53\,
	combout => \EXP|Add11~54_combout\,
	cout => \EXP|Add11~55\);

-- Location: LCCOMB_X33_Y11_N26
\EXP|Add11~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~56_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add11~55\))) # (!\EXP|rem\(0) & (\EXP|Add11~55\ $ (GND)))
-- \EXP|Add11~57\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add11~55\,
	combout => \EXP|Add11~56_combout\,
	cout => \EXP|Add11~57\);

-- Location: LCCOMB_X40_Y8_N24
\EXP|Add7~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~52_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add7~51\))) # (!\EXP|rem\(0) & (\EXP|Add7~51\ $ (GND)))
-- \EXP|Add7~53\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add7~51\,
	combout => \EXP|Add7~52_combout\,
	cout => \EXP|Add7~53\);

-- Location: LCCOMB_X40_Y8_N26
\EXP|Add7~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~54_combout\ = (\EXP|rem\(1) & (\EXP|Add7~53\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add7~53\))
-- \EXP|Add7~55\ = CARRY((!\EXP|rem\(1) & !\EXP|Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add7~53\,
	combout => \EXP|Add7~54_combout\,
	cout => \EXP|Add7~55\);

-- Location: LCCOMB_X35_Y7_N22
\EXP|Add5~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~50_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add5~49\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add5~49\))
-- \EXP|Add5~51\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add5~49\,
	combout => \EXP|Add5~50_combout\,
	cout => \EXP|Add5~51\);

-- Location: LCCOMB_X35_Y7_N24
\EXP|Add5~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~52_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add5~51\))) # (!\EXP|rem\(0) & (\EXP|Add5~51\ $ (GND)))
-- \EXP|Add5~53\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add5~51\,
	combout => \EXP|Add5~52_combout\,
	cout => \EXP|Add5~53\);

-- Location: LCCOMB_X39_Y11_N10
\EXP|Add15~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~58_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add15~57\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add15~57\))
-- \EXP|Add15~59\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add15~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add15~57\,
	combout => \EXP|Add15~58_combout\,
	cout => \EXP|Add15~59\);

-- Location: LCCOMB_X39_Y11_N14
\EXP|Add15~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~62_combout\ = (\EXP|rem\(1) & (\EXP|Add15~61\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add15~61\))
-- \EXP|Add15~63\ = CARRY((!\EXP|rem\(1) & !\EXP|Add15~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add15~61\,
	combout => \EXP|Add15~62_combout\,
	cout => \EXP|Add15~63\);

-- Location: LCCOMB_X38_Y7_N28
\EXP|Add13~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~58_combout\ = \EXP|rem\(2) $ (!\EXP|Add13~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(2),
	cin => \EXP|Add13~57\,
	combout => \EXP|Add13~58_combout\);

-- Location: LCCOMB_X39_Y11_N16
\EXP|Add15~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~64_combout\ = \EXP|Add15~63\ $ (\EXP|rem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem\(2),
	cin => \EXP|Add15~63\,
	combout => \EXP|Add15~64_combout\);

-- Location: LCCOMB_X36_Y7_N8
\EXP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~2_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add0~1\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add0~1\))
-- \EXP|Add0~3\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add0~1\,
	combout => \EXP|Add0~2_combout\,
	cout => \EXP|Add0~3\);

-- Location: LCCOMB_X36_Y7_N10
\EXP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~4_combout\ = (\EXP|rem[-18]~regout\ & ((GND) # (!\EXP|Add0~3\))) # (!\EXP|rem[-18]~regout\ & (\EXP|Add0~3\ $ (GND)))
-- \EXP|Add0~5\ = CARRY((\EXP|rem[-18]~regout\) # (!\EXP|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add0~3\,
	combout => \EXP|Add0~4_combout\,
	cout => \EXP|Add0~5\);

-- Location: LCCOMB_X36_Y7_N14
\EXP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~8_combout\ = (\EXP|rem[-16]~regout\ & ((GND) # (!\EXP|Add0~7\))) # (!\EXP|rem[-16]~regout\ & (\EXP|Add0~7\ $ (GND)))
-- \EXP|Add0~9\ = CARRY((\EXP|rem[-16]~regout\) # (!\EXP|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add0~7\,
	combout => \EXP|Add0~8_combout\,
	cout => \EXP|Add0~9\);

-- Location: LCCOMB_X36_Y7_N18
\EXP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~12_combout\ = (\EXP|rem[-14]~regout\ & ((GND) # (!\EXP|Add0~11\))) # (!\EXP|rem[-14]~regout\ & (\EXP|Add0~11\ $ (GND)))
-- \EXP|Add0~13\ = CARRY((\EXP|rem[-14]~regout\) # (!\EXP|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add0~11\,
	combout => \EXP|Add0~12_combout\,
	cout => \EXP|Add0~13\);

-- Location: LCCOMB_X33_Y8_N4
\EXP|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~4_combout\ = (\EXP|rem[-20]~regout\ & (\EXP|Add2~3\ $ (GND))) # (!\EXP|rem[-20]~regout\ & (!\EXP|Add2~3\ & VCC))
-- \EXP|Add2~5\ = CARRY((\EXP|rem[-20]~regout\ & !\EXP|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add2~3\,
	combout => \EXP|Add2~4_combout\,
	cout => \EXP|Add2~5\);

-- Location: LCCOMB_X33_Y8_N10
\EXP|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~10_combout\ = (\EXP|rem[-17]~regout\ & (\EXP|Add2~9\ & VCC)) # (!\EXP|rem[-17]~regout\ & (!\EXP|Add2~9\))
-- \EXP|Add2~11\ = CARRY((!\EXP|rem[-17]~regout\ & !\EXP|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add2~9\,
	combout => \EXP|Add2~10_combout\,
	cout => \EXP|Add2~11\);

-- Location: LCCOMB_X33_Y8_N14
\EXP|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~14_combout\ = (\EXP|rem[-15]~regout\ & (!\EXP|Add2~13\)) # (!\EXP|rem[-15]~regout\ & ((\EXP|Add2~13\) # (GND)))
-- \EXP|Add2~15\ = CARRY((!\EXP|Add2~13\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add2~13\,
	combout => \EXP|Add2~14_combout\,
	cout => \EXP|Add2~15\);

-- Location: LCCOMB_X33_Y8_N18
\EXP|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~18_combout\ = (\EXP|rem[-13]~regout\ & (!\EXP|Add2~17\)) # (!\EXP|rem[-13]~regout\ & ((\EXP|Add2~17\) # (GND)))
-- \EXP|Add2~19\ = CARRY((!\EXP|Add2~17\) # (!\EXP|rem[-13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add2~17\,
	combout => \EXP|Add2~18_combout\,
	cout => \EXP|Add2~19\);

-- Location: LCCOMB_X33_Y8_N20
\EXP|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~20_combout\ = (\EXP|rem[-12]~regout\ & (\EXP|Add2~19\ $ (GND))) # (!\EXP|rem[-12]~regout\ & (!\EXP|Add2~19\ & VCC))
-- \EXP|Add2~21\ = CARRY((\EXP|rem[-12]~regout\ & !\EXP|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add2~19\,
	combout => \EXP|Add2~20_combout\,
	cout => \EXP|Add2~21\);

-- Location: LCCOMB_X36_Y7_N24
\EXP|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~18_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|Add0~17\ & VCC)) # (!\EXP|rem[-11]~regout\ & (!\EXP|Add0~17\))
-- \EXP|Add0~19\ = CARRY((!\EXP|rem[-11]~regout\ & !\EXP|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add0~17\,
	combout => \EXP|Add0~18_combout\,
	cout => \EXP|Add0~19\);

-- Location: LCCOMB_X36_Y7_N28
\EXP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~22_combout\ = (\EXP|rem[-9]~regout\ & (\EXP|Add0~21\ & VCC)) # (!\EXP|rem[-9]~regout\ & (!\EXP|Add0~21\))
-- \EXP|Add0~23\ = CARRY((!\EXP|rem[-9]~regout\ & !\EXP|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add0~21\,
	combout => \EXP|Add0~22_combout\,
	cout => \EXP|Add0~23\);

-- Location: LCCOMB_X36_Y7_N30
\EXP|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~24_combout\ = \EXP|Add0~23\ $ (\EXP|rem[-8]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem[-8]~regout\,
	cin => \EXP|Add0~23\,
	combout => \EXP|Add0~24_combout\);

-- Location: LCCOMB_X33_Y8_N24
\EXP|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~24_combout\ = (\EXP|rem[-10]~regout\ & ((GND) # (!\EXP|Add2~23\))) # (!\EXP|rem[-10]~regout\ & (\EXP|Add2~23\ $ (GND)))
-- \EXP|Add2~25\ = CARRY((\EXP|rem[-10]~regout\) # (!\EXP|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add2~23\,
	combout => \EXP|Add2~24_combout\,
	cout => \EXP|Add2~25\);

-- Location: LCCOMB_X37_Y8_N6
\EXP|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~0_combout\ = (!\EXP|rem[-3]~regout\ & !\EXP|rem[-2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-3]~regout\,
	datad => \EXP|rem[-2]~regout\,
	combout => \EXP|LessThan4~0_combout\);

-- Location: LCCOMB_X36_Y7_N0
\EXP|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~11_combout\ = (!\EXP|rem[-13]~regout\ & !\EXP|rem[-14]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-13]~regout\,
	datad => \EXP|rem[-14]~regout\,
	combout => \EXP|LessThan7~11_combout\);

-- Location: LCCOMB_X37_Y9_N16
\EXP|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~6_combout\ = (\EXP|rem[-15]~regout\ & (\EXP|rem[-14]~regout\ & (\EXP|rem[-18]~regout\ & \EXP|LessThan7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datab => \EXP|rem[-14]~regout\,
	datac => \EXP|rem[-18]~regout\,
	datad => \EXP|LessThan7~6_combout\,
	combout => \EXP|LessThan3~6_combout\);

-- Location: LCCOMB_X38_Y9_N24
\EXP|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~7_combout\ = (!\EXP|rem[-20]~regout\ & !\EXP|rem[-19]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => \EXP|rem[-19]~regout\,
	combout => \EXP|LessThan3~7_combout\);

-- Location: LCFF_X37_Y12_N25
\EXP|rem[-23]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-23]~20_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-23]~_emulated_regout\);

-- Location: LCFF_X35_Y9_N11
\EXP|rem[-24]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-24]~24_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-24]~_emulated_regout\);

-- Location: LCCOMB_X36_Y12_N24
\EXP|rem~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~200_combout\ = (\EXP|LessThan6~7_combout\ & (\EXP|Add9~10_combout\ & ((\EXP|LessThan5~8_combout\)))) # (!\EXP|LessThan6~7_combout\ & (((\EXP|Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~10_combout\,
	datab => \EXP|Add11~10_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|rem~200_combout\);

-- Location: LCCOMB_X36_Y12_N18
\EXP|rem~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~201_combout\ = (\EXP|rem~200_combout\ & ((\EXP|Add7~6_combout\) # ((!\EXP|rem[-23]~186_combout\)))) # (!\EXP|rem~200_combout\ & (((\EXP|Add5~6_combout\ & \EXP|rem[-23]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~6_combout\,
	datab => \EXP|Add5~6_combout\,
	datac => \EXP|rem~200_combout\,
	datad => \EXP|rem[-23]~186_combout\,
	combout => \EXP|rem~201_combout\);

-- Location: LCCOMB_X37_Y12_N10
\EXP|rem~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~202_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~201_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add13~8_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~201_combout\,
	combout => \EXP|rem~202_combout\);

-- Location: LCCOMB_X37_Y12_N24
\EXP|rem[-23]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-23]~20_combout\ = \EXP|rem[-23]~18_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~14_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~202_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~18_combout\,
	datab => \EXP|rem[-30]~69_combout\,
	datac => \EXP|Add15~14_combout\,
	datad => \EXP|rem~202_combout\,
	combout => \EXP|rem[-23]~20_combout\);

-- Location: LCCOMB_X34_Y9_N14
\EXP|rem~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~203_combout\ = (\EXP|LessThan6~7_combout\ & (\EXP|Add9~8_combout\ & ((\EXP|LessThan5~8_combout\)))) # (!\EXP|LessThan6~7_combout\ & (((\EXP|Add11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~8_combout\,
	datab => \EXP|Add11~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|LessThan5~8_combout\,
	combout => \EXP|rem~203_combout\);

-- Location: LCCOMB_X34_Y9_N12
\EXP|rem~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~204_combout\ = (\EXP|rem~203_combout\ & ((\EXP|Add7~4_combout\) # ((!\EXP|rem[-23]~186_combout\)))) # (!\EXP|rem~203_combout\ & (((\EXP|Add5~4_combout\ & \EXP|rem[-23]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~4_combout\,
	datab => \EXP|Add5~4_combout\,
	datac => \EXP|rem~203_combout\,
	datad => \EXP|rem[-23]~186_combout\,
	combout => \EXP|rem~204_combout\);

-- Location: LCCOMB_X34_Y9_N18
\EXP|rem~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~205_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~204_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~13_combout\,
	datac => \EXP|Add13~6_combout\,
	datad => \EXP|rem~204_combout\,
	combout => \EXP|rem~205_combout\);

-- Location: LCCOMB_X35_Y9_N10
\EXP|rem[-24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-24]~24_combout\ = \EXP|rem[-24]~22_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~12_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~205_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~12_combout\,
	datab => \EXP|rem[-24]~22_combout\,
	datac => \EXP|rem[-30]~69_combout\,
	datad => \EXP|rem~205_combout\,
	combout => \EXP|rem[-24]~24_combout\);

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

-- Location: LCCOMB_X35_Y11_N18
\EXP|Calculate_Block.e[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[1]~33_combout\ = (\EXP|Calculate_Block.e\(1) & (\EXP|Calculate_Block.e[0]~32\ $ (GND))) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Calculate_Block.e[0]~32\ & VCC))
-- \EXP|Calculate_Block.e[1]~34\ = CARRY((\EXP|Calculate_Block.e\(1) & !\EXP|Calculate_Block.e[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[0]~32\,
	combout => \EXP|Calculate_Block.e[1]~33_combout\,
	cout => \EXP|Calculate_Block.e[1]~34\);

-- Location: LCCOMB_X35_Y11_N20
\EXP|Calculate_Block.e[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[2]~35_combout\ = (\EXP|Calculate_Block.e\(2) & (!\EXP|Calculate_Block.e[1]~34\)) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e[1]~34\) # (GND)))
-- \EXP|Calculate_Block.e[2]~36\ = CARRY((!\EXP|Calculate_Block.e[1]~34\) # (!\EXP|Calculate_Block.e\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[1]~34\,
	combout => \EXP|Calculate_Block.e[2]~35_combout\,
	cout => \EXP|Calculate_Block.e[2]~36\);

-- Location: LCCOMB_X35_Y11_N22
\EXP|Calculate_Block.e[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[3]~37_combout\ = (\EXP|Calculate_Block.e\(3) & (\EXP|Calculate_Block.e[2]~36\ $ (GND))) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Calculate_Block.e[2]~36\ & VCC))
-- \EXP|Calculate_Block.e[3]~38\ = CARRY((\EXP|Calculate_Block.e\(3) & !\EXP|Calculate_Block.e[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[2]~36\,
	combout => \EXP|Calculate_Block.e[3]~37_combout\,
	cout => \EXP|Calculate_Block.e[3]~38\);

-- Location: LCCOMB_X38_Y7_N8
\EXP|Add13~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~38_combout\ = (\EXP|rem[-8]~regout\ & (!\EXP|Add13~37\)) # (!\EXP|rem[-8]~regout\ & ((\EXP|Add13~37\) # (GND)))
-- \EXP|Add13~39\ = CARRY((!\EXP|Add13~37\) # (!\EXP|rem[-8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add13~37\,
	combout => \EXP|Add13~38_combout\,
	cout => \EXP|Add13~39\);

-- Location: LCCOMB_X38_Y7_N10
\EXP|Add13~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~40_combout\ = (\EXP|rem[-7]~regout\ & (\EXP|Add13~39\ $ (GND))) # (!\EXP|rem[-7]~regout\ & (!\EXP|Add13~39\ & VCC))
-- \EXP|Add13~41\ = CARRY((\EXP|rem[-7]~regout\ & !\EXP|Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add13~39\,
	combout => \EXP|Add13~40_combout\,
	cout => \EXP|Add13~41\);

-- Location: LCCOMB_X39_Y11_N2
\EXP|Add15~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~50_combout\ = (\EXP|rem[-5]~regout\ & (\EXP|Add15~49\ & VCC)) # (!\EXP|rem[-5]~regout\ & (!\EXP|Add15~49\))
-- \EXP|Add15~51\ = CARRY((!\EXP|rem[-5]~regout\ & !\EXP|Add15~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add15~49\,
	combout => \EXP|Add15~50_combout\,
	cout => \EXP|Add15~51\);

-- Location: LCCOMB_X39_Y11_N6
\EXP|Add15~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~54_combout\ = (\EXP|rem[-3]~regout\ & (\EXP|Add15~53\ & VCC)) # (!\EXP|rem[-3]~regout\ & (!\EXP|Add15~53\))
-- \EXP|Add15~55\ = CARRY((!\EXP|rem[-3]~regout\ & !\EXP|Add15~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add15~53\,
	combout => \EXP|Add15~54_combout\,
	cout => \EXP|Add15~55\);

-- Location: LCCOMB_X39_Y11_N8
\EXP|Add15~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~56_combout\ = (\EXP|rem[-2]~regout\ & ((GND) # (!\EXP|Add15~55\))) # (!\EXP|rem[-2]~regout\ & (\EXP|Add15~55\ $ (GND)))
-- \EXP|Add15~57\ = CARRY((\EXP|rem[-2]~regout\) # (!\EXP|Add15~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add15~55\,
	combout => \EXP|Add15~56_combout\,
	cout => \EXP|Add15~57\);

-- Location: LCCOMB_X33_Y10_N24
\EXP|LessThan7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~14_combout\ = (!\EXP|rem[-3]~regout\ & (!\EXP|rem[-4]~regout\ & !\EXP|rem[-2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datab => \EXP|rem[-4]~regout\,
	datac => \EXP|rem[-2]~regout\,
	combout => \EXP|LessThan7~14_combout\);

-- Location: LCCOMB_X36_Y8_N16
\EXP|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~1_combout\ = (\EXP|rem[-10]~regout\) # ((\EXP|rem[-9]~regout\) # (\EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datac => \EXP|rem[-9]~regout\,
	datad => \EXP|rem[-11]~regout\,
	combout => \EXP|LessThan5~1_combout\);

-- Location: LCCOMB_X38_Y8_N22
\EXP|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~20_combout\ = (\EXP|rem[-17]~regout\ & ((GND) # (!\EXP|Add13~19\))) # (!\EXP|rem[-17]~regout\ & (\EXP|Add13~19\ $ (GND)))
-- \EXP|Add13~21\ = CARRY((\EXP|rem[-17]~regout\) # (!\EXP|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add13~19\,
	combout => \EXP|Add13~20_combout\,
	cout => \EXP|Add13~21\);

-- Location: LCCOMB_X38_Y8_N18
\EXP|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~16_combout\ = (\EXP|rem[-19]~regout\ & ((GND) # (!\EXP|Add13~15\))) # (!\EXP|rem[-19]~regout\ & (\EXP|Add13~15\ $ (GND)))
-- \EXP|Add13~17\ = CARRY((\EXP|rem[-19]~regout\) # (!\EXP|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add13~15\,
	combout => \EXP|Add13~16_combout\,
	cout => \EXP|Add13~17\);

-- Location: LCCOMB_X40_Y9_N6
\EXP|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~2_combout\ = (\EXP|rem[-25]~27_combout\ & (!\EXP|Add7~1\)) # (!\EXP|rem[-25]~27_combout\ & ((\EXP|Add7~1\) # (GND)))
-- \EXP|Add7~3\ = CARRY((!\EXP|Add7~1\) # (!\EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add7~1\,
	combout => \EXP|Add7~2_combout\,
	cout => \EXP|Add7~3\);

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

-- Location: LCCOMB_X36_Y9_N18
\EXP|rem[-26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-26]~30_combout\ = (\KEY~combout\(0) & ((\SW~combout\(5)))) # (!\KEY~combout\(0) & (\EXP|rem[-26]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-26]~30_combout\,
	datac => \SW~combout\(5),
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-26]~30_combout\);

-- Location: LCCOMB_X36_Y10_N14
\EXP|rem[-29]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-29]~42_combout\ = (\KEY~combout\(0) & (\SW~combout\(2))) # (!\KEY~combout\(0) & ((\EXP|rem[-29]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datac => \EXP|rem[-29]~42_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-29]~42_combout\);

-- Location: LCCOMB_X36_Y10_N20
\EXP|rem[-30]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~207_combout\ = (!\EXP|rem\(0) & (\EXP|LessThan8~8_combout\ & (!\EXP|rem[-1]~regout\ & !\EXP|rem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(0),
	datab => \EXP|LessThan8~8_combout\,
	datac => \EXP|rem[-1]~regout\,
	datad => \EXP|rem\(1),
	combout => \EXP|rem[-30]~207_combout\);

-- Location: LCCOMB_X39_Y13_N16
\EXP|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~0_combout\ = \EXP|rem[-30]~47_combout\ $ (VCC)
-- \EXP|Add15~1\ = CARRY(\EXP|rem[-30]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-30]~47_combout\,
	datad => VCC,
	combout => \EXP|Add15~0_combout\,
	cout => \EXP|Add15~1\);

-- Location: LCCOMB_X36_Y10_N28
\EXP|rem[-30]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~48_combout\ = \EXP|rem[-30]~46_combout\ $ (((\EXP|Add15~0_combout\ & ((\EXP|rem\(2)) # (!\EXP|rem[-30]~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-30]~46_combout\,
	datab => \EXP|rem\(2),
	datac => \EXP|rem[-30]~207_combout\,
	datad => \EXP|Add15~0_combout\,
	combout => \EXP|rem[-30]~48_combout\);

-- Location: LCCOMB_X39_Y11_N0
\EXP|Add15~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~48_combout\ = (\EXP|rem[-6]~regout\ & ((GND) # (!\EXP|Add15~47\))) # (!\EXP|rem[-6]~regout\ & (\EXP|Add15~47\ $ (GND)))
-- \EXP|Add15~49\ = CARRY((\EXP|rem[-6]~regout\) # (!\EXP|Add15~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add15~47\,
	combout => \EXP|Add15~48_combout\,
	cout => \EXP|Add15~49\);

-- Location: LCCOMB_X33_Y12_N18
\EXP|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~16_combout\ = (\EXP|rem[-20]~regout\ & ((GND) # (!\EXP|Add11~15\))) # (!\EXP|rem[-20]~regout\ & (\EXP|Add11~15\ $ (GND)))
-- \EXP|Add11~17\ = CARRY((\EXP|rem[-20]~regout\) # (!\EXP|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add11~15\,
	combout => \EXP|Add11~16_combout\,
	cout => \EXP|Add11~17\);

-- Location: LCCOMB_X39_Y10_N16
\EXP|LessThan5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~6_combout\ = (\EXP|rem[-6]~regout\ & (\EXP|rem[-7]~regout\ & (\EXP|rem[-5]~regout\ & \EXP|rem[-8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datab => \EXP|rem[-7]~regout\,
	datac => \EXP|rem[-5]~regout\,
	datad => \EXP|rem[-8]~regout\,
	combout => \EXP|LessThan5~6_combout\);

-- Location: LCCOMB_X37_Y10_N18
\EXP|Calculate_Block.e[-3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~41_combout\ = (((\EXP|LessThan5~6_combout\ & \EXP|LessThan5~5_combout\)) # (!\EXP|LessThan6~7_combout\)) # (!\EXP|LessThan7~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~15_combout\,
	datab => \EXP|LessThan5~6_combout\,
	datac => \EXP|LessThan5~5_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|Calculate_Block.e[-3]~41_combout\);

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

-- Location: LCCOMB_X37_Y9_N18
\EXP|rem[-23]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-23]~18_combout\ = (\KEY~combout\(0) & (\SW~combout\(8))) # (!\KEY~combout\(0) & ((\EXP|rem[-23]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \KEY~combout\(0),
	datad => \EXP|rem[-23]~18_combout\,
	combout => \EXP|rem[-23]~18_combout\);

-- Location: LCCOMB_X36_Y9_N8
\EXP|rem[-23]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-23]~19_combout\ = (\KEY~combout\(0) & (((\SW~combout\(8))))) # (!\KEY~combout\(0) & (\EXP|rem[-23]~_emulated_regout\ $ (((\EXP|rem[-23]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~_emulated_regout\,
	datab => \SW~combout\(8),
	datac => \KEY~combout\(0),
	datad => \EXP|rem[-23]~18_combout\,
	combout => \EXP|rem[-23]~19_combout\);

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

-- Location: LCCOMB_X35_Y9_N14
\EXP|rem[-24]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-24]~22_combout\ = (\KEY~combout\(0) & (\SW~combout\(7))) # (!\KEY~combout\(0) & ((\EXP|rem[-24]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(7),
	datac => \EXP|rem[-24]~22_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-24]~22_combout\);

-- Location: LCCOMB_X35_Y9_N0
\EXP|rem[-24]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-24]~23_combout\ = (\KEY~combout\(0) & (((\SW~combout\(7))))) # (!\KEY~combout\(0) & (\EXP|rem[-24]~_emulated_regout\ $ (((\EXP|rem[-24]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-24]~_emulated_regout\,
	datab => \SW~combout\(7),
	datac => \EXP|rem[-24]~22_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-24]~23_combout\);

-- Location: LCCOMB_X39_Y13_N24
\EXP|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~8_combout\ = (\EXP|rem[-26]~31_combout\ & ((GND) # (!\EXP|Add15~7\))) # (!\EXP|rem[-26]~31_combout\ & (\EXP|Add15~7\ $ (GND)))
-- \EXP|Add15~9\ = CARRY((\EXP|rem[-26]~31_combout\) # (!\EXP|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	cin => \EXP|Add15~7\,
	combout => \EXP|Add15~8_combout\,
	cout => \EXP|Add15~9\);

-- Location: LCCOMB_X39_Y13_N26
\EXP|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~10_combout\ = (\EXP|rem[-25]~27_combout\ & (!\EXP|Add15~9\)) # (!\EXP|rem[-25]~27_combout\ & ((\EXP|Add15~9\) # (GND)))
-- \EXP|Add15~11\ = CARRY((!\EXP|Add15~9\) # (!\EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add15~9\,
	combout => \EXP|Add15~10_combout\,
	cout => \EXP|Add15~11\);

-- Location: LCCOMB_X39_Y12_N0
\EXP|Add15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~16_combout\ = (\EXP|rem[-22]~15_combout\ & ((GND) # (!\EXP|Add15~15\))) # (!\EXP|rem[-22]~15_combout\ & (\EXP|Add15~15\ $ (GND)))
-- \EXP|Add15~17\ = CARRY((\EXP|rem[-22]~15_combout\) # (!\EXP|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add15~15\,
	combout => \EXP|Add15~16_combout\,
	cout => \EXP|Add15~17\);

-- Location: LCCOMB_X38_Y8_N2
\EXP|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~0_combout\ = \EXP|rem[-27]~35_combout\ $ (VCC)
-- \EXP|Add13~1\ = CARRY(\EXP|rem[-27]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datad => VCC,
	combout => \EXP|Add13~0_combout\,
	cout => \EXP|Add13~1\);

-- Location: LCCOMB_X38_Y8_N4
\EXP|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~2_combout\ = (\EXP|rem[-26]~31_combout\ & (!\EXP|Add13~1\)) # (!\EXP|rem[-26]~31_combout\ & ((\EXP|Add13~1\) # (GND)))
-- \EXP|Add13~3\ = CARRY((!\EXP|Add13~1\) # (!\EXP|rem[-26]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	cin => \EXP|Add13~1\,
	combout => \EXP|Add13~2_combout\,
	cout => \EXP|Add13~3\);

-- Location: LCCOMB_X38_Y8_N12
\EXP|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~10_combout\ = (\EXP|rem[-22]~15_combout\ & (\EXP|Add13~9\ & VCC)) # (!\EXP|rem[-22]~15_combout\ & (!\EXP|Add13~9\))
-- \EXP|Add13~11\ = CARRY((!\EXP|rem[-22]~15_combout\ & !\EXP|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add13~9\,
	combout => \EXP|Add13~10_combout\,
	cout => \EXP|Add13~11\);

-- Location: LCCOMB_X37_Y10_N24
\EXP|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~7_combout\ = (\EXP|LessThan7~15_combout\ & (!\EXP|rem\(2) & ((!\EXP|LessThan5~5_combout\) # (!\EXP|LessThan5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~15_combout\,
	datab => \EXP|LessThan5~6_combout\,
	datac => \EXP|LessThan5~5_combout\,
	datad => \EXP|rem\(2),
	combout => \EXP|LessThan5~7_combout\);

-- Location: LCCOMB_X34_Y8_N8
\EXP|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~6_combout\ = (\EXP|rem[-25]~27_combout\ & (!\EXP|Add9~5\)) # (!\EXP|rem[-25]~27_combout\ & ((\EXP|Add9~5\) # (GND)))
-- \EXP|Add9~7\ = CARRY((!\EXP|Add9~5\) # (!\EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-25]~27_combout\,
	datad => VCC,
	cin => \EXP|Add9~5\,
	combout => \EXP|Add9~6_combout\,
	cout => \EXP|Add9~7\);

-- Location: LCCOMB_X34_Y8_N14
\EXP|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~12_combout\ = (\EXP|rem[-22]~15_combout\ & ((GND) # (!\EXP|Add9~11\))) # (!\EXP|rem[-22]~15_combout\ & (\EXP|Add9~11\ $ (GND)))
-- \EXP|Add9~13\ = CARRY((\EXP|rem[-22]~15_combout\) # (!\EXP|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add9~11\,
	combout => \EXP|Add9~12_combout\,
	cout => \EXP|Add9~13\);

-- Location: LCCOMB_X33_Y12_N14
\EXP|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~12_combout\ = (\EXP|rem[-22]~15_combout\ & (\EXP|Add11~11\ $ (GND))) # (!\EXP|rem[-22]~15_combout\ & (!\EXP|Add11~11\ & VCC))
-- \EXP|Add11~13\ = CARRY((\EXP|rem[-22]~15_combout\ & !\EXP|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add11~11\,
	combout => \EXP|Add11~12_combout\,
	cout => \EXP|Add11~13\);

-- Location: LCCOMB_X36_Y10_N0
\EXP|rem~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~184_combout\ = (\EXP|LessThan6~7_combout\ & (!\EXP|LessThan5~7_combout\ & (\EXP|Add9~12_combout\))) # (!\EXP|LessThan6~7_combout\ & (((\EXP|Add11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|LessThan5~7_combout\,
	datac => \EXP|Add9~12_combout\,
	datad => \EXP|Add11~12_combout\,
	combout => \EXP|rem~184_combout\);

-- Location: LCCOMB_X36_Y9_N20
\EXP|e~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~1_combout\ = (!\EXP|rem\(2) & !\EXP|LessThan3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem\(2),
	datad => \EXP|LessThan3~10_combout\,
	combout => \EXP|e~1_combout\);

-- Location: LCCOMB_X35_Y8_N4
\EXP|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~0_combout\ = \EXP|rem[-26]~31_combout\ $ (VCC)
-- \EXP|Add5~1\ = CARRY(\EXP|rem[-26]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	combout => \EXP|Add5~0_combout\,
	cout => \EXP|Add5~1\);

-- Location: LCCOMB_X35_Y8_N12
\EXP|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~8_combout\ = (\EXP|rem[-22]~15_combout\ & (\EXP|Add5~7\ $ (GND))) # (!\EXP|rem[-22]~15_combout\ & (!\EXP|Add5~7\ & VCC))
-- \EXP|Add5~9\ = CARRY((\EXP|rem[-22]~15_combout\ & !\EXP|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cin => \EXP|Add5~7\,
	combout => \EXP|Add5~8_combout\,
	cout => \EXP|Add5~9\);

-- Location: LCCOMB_X38_Y10_N12
\EXP|rem[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[2]~68_combout\ = (!\EXP|rem\(0) & (!\EXP|rem\(1) & (!\EXP|rem[-1]~regout\ & !\EXP|rem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(0),
	datab => \EXP|rem\(1),
	datac => \EXP|rem[-1]~regout\,
	datad => \EXP|rem\(2),
	combout => \EXP|rem[2]~68_combout\);

-- Location: LCCOMB_X37_Y8_N20
\EXP|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~0_combout\ = (\EXP|rem[-4]~regout\ & \EXP|rem[-5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-4]~regout\,
	datad => \EXP|rem[-5]~regout\,
	combout => \EXP|LessThan2~0_combout\);

-- Location: LCCOMB_X36_Y8_N8
\EXP|LessThan4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~6_combout\ = (\EXP|rem[-8]~regout\) # ((\EXP|rem[-10]~regout\) # (\EXP|rem[-12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datac => \EXP|rem[-10]~regout\,
	datad => \EXP|rem[-12]~regout\,
	combout => \EXP|LessThan4~6_combout\);

-- Location: LCCOMB_X36_Y8_N26
\EXP|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~7_combout\ = (\EXP|rem[-21]~regout\) # ((\EXP|rem[-7]~regout\) # ((\EXP|LessThan4~6_combout\) # (\EXP|rem[-11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-21]~regout\,
	datab => \EXP|rem[-7]~regout\,
	datac => \EXP|LessThan4~6_combout\,
	datad => \EXP|rem[-11]~regout\,
	combout => \EXP|LessThan4~7_combout\);

-- Location: LCCOMB_X36_Y9_N28
\EXP|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~1_combout\ = (\EXP|rem[-24]~23_combout\ & (\EXP|rem[-23]~19_combout\ & \EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-24]~23_combout\,
	datac => \EXP|rem[-23]~19_combout\,
	datad => \EXP|rem[-25]~27_combout\,
	combout => \EXP|LessThan3~1_combout\);

-- Location: LCCOMB_X36_Y9_N26
\EXP|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~2_combout\ = (\EXP|rem[-26]~31_combout\ & (\EXP|rem[-22]~15_combout\ & \EXP|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datac => \EXP|rem[-22]~15_combout\,
	datad => \EXP|LessThan3~1_combout\,
	combout => \EXP|LessThan3~2_combout\);

-- Location: LCCOMB_X36_Y8_N14
\EXP|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~3_combout\ = (\EXP|rem[-12]~regout\) # ((\EXP|rem[-10]~regout\) # (\EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-12]~regout\,
	datab => \EXP|rem[-10]~regout\,
	datad => \EXP|rem[-11]~regout\,
	combout => \EXP|LessThan4~3_combout\);

-- Location: LCCOMB_X35_Y9_N18
\EXP|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~2_combout\ = (\EXP|rem[-14]~regout\ & (\EXP|rem[-13]~regout\ & (\EXP|rem[-18]~regout\ & \EXP|rem[-15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datab => \EXP|rem[-13]~regout\,
	datac => \EXP|rem[-18]~regout\,
	datad => \EXP|rem[-15]~regout\,
	combout => \EXP|LessThan4~2_combout\);

-- Location: LCCOMB_X37_Y9_N8
\EXP|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~1_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|rem[-20]~regout\ & (\EXP|rem[-16]~regout\ & \EXP|rem[-17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-19]~regout\,
	datab => \EXP|rem[-20]~regout\,
	datac => \EXP|rem[-16]~regout\,
	datad => \EXP|rem[-17]~regout\,
	combout => \EXP|LessThan4~1_combout\);

-- Location: LCCOMB_X36_Y8_N12
\EXP|LessThan4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~4_combout\ = (\EXP|LessThan4~3_combout\) # ((\EXP|LessThan4~2_combout\ & \EXP|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan4~3_combout\,
	datac => \EXP|LessThan4~2_combout\,
	datad => \EXP|LessThan4~1_combout\,
	combout => \EXP|LessThan4~4_combout\);

-- Location: LCCOMB_X36_Y8_N22
\EXP|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~5_combout\ = (\EXP|rem[-8]~regout\) # ((\EXP|rem[-7]~regout\) # ((\EXP|rem[-9]~regout\ & \EXP|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-9]~regout\,
	datab => \EXP|rem[-8]~regout\,
	datac => \EXP|rem[-7]~regout\,
	datad => \EXP|LessThan4~4_combout\,
	combout => \EXP|LessThan4~5_combout\);

-- Location: LCCOMB_X36_Y8_N0
\EXP|LessThan4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~8_combout\ = (\EXP|LessThan4~5_combout\ & ((\EXP|LessThan4~7_combout\) # ((!\EXP|LessThan0~2_combout\ & \EXP|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan0~2_combout\,
	datab => \EXP|LessThan4~7_combout\,
	datac => \EXP|LessThan3~2_combout\,
	datad => \EXP|LessThan4~5_combout\,
	combout => \EXP|LessThan4~8_combout\);

-- Location: LCCOMB_X36_Y8_N6
\EXP|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~9_combout\ = ((\EXP|LessThan2~0_combout\ & (\EXP|rem[-6]~regout\ & \EXP|LessThan4~8_combout\))) # (!\EXP|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~0_combout\,
	datab => \EXP|LessThan2~0_combout\,
	datac => \EXP|rem[-6]~regout\,
	datad => \EXP|LessThan4~8_combout\,
	combout => \EXP|LessThan4~9_combout\);

-- Location: LCCOMB_X36_Y10_N22
\EXP|LessThan4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan4~10_combout\ = (\EXP|rem[2]~68_combout\ & !\EXP|LessThan4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[2]~68_combout\,
	datad => \EXP|LessThan4~9_combout\,
	combout => \EXP|LessThan4~10_combout\);

-- Location: LCCOMB_X35_Y9_N16
\EXP|rem~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~182_combout\ = (\EXP|LessThan4~10_combout\ & (((!\EXP|e~1_combout\ & \EXP|Add5~8_combout\)))) # (!\EXP|LessThan4~10_combout\ & (\EXP|Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~8_combout\,
	datab => \EXP|e~1_combout\,
	datac => \EXP|Add5~8_combout\,
	datad => \EXP|LessThan4~10_combout\,
	combout => \EXP|rem~182_combout\);

-- Location: LCCOMB_X39_Y11_N12
\EXP|Add15~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~60_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add15~59\))) # (!\EXP|rem\(0) & (\EXP|Add15~59\ $ (GND)))
-- \EXP|Add15~61\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add15~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add15~59\,
	combout => \EXP|Add15~60_combout\,
	cout => \EXP|Add15~61\);

-- Location: LCCOMB_X38_Y7_N24
\EXP|Add13~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~54_combout\ = (\EXP|rem\(0) & (\EXP|Add13~53\ & VCC)) # (!\EXP|rem\(0) & (!\EXP|Add13~53\))
-- \EXP|Add13~55\ = CARRY((!\EXP|rem\(0) & !\EXP|Add13~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add13~53\,
	combout => \EXP|Add13~54_combout\,
	cout => \EXP|Add13~55\);

-- Location: LCCOMB_X34_Y8_N24
\EXP|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~22_combout\ = (\EXP|rem[-17]~regout\ & (!\EXP|Add9~21\)) # (!\EXP|rem[-17]~regout\ & ((\EXP|Add9~21\) # (GND)))
-- \EXP|Add9~23\ = CARRY((!\EXP|Add9~21\) # (!\EXP|rem[-17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add9~21\,
	combout => \EXP|Add9~22_combout\,
	cout => \EXP|Add9~23\);

-- Location: LCCOMB_X34_Y7_N0
\EXP|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~30_combout\ = (\EXP|rem[-13]~regout\ & (\EXP|Add9~29\ & VCC)) # (!\EXP|rem[-13]~regout\ & (!\EXP|Add9~29\))
-- \EXP|Add9~31\ = CARRY((!\EXP|rem[-13]~regout\ & !\EXP|Add9~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add9~29\,
	combout => \EXP|Add9~30_combout\,
	cout => \EXP|Add9~31\);

-- Location: LCCOMB_X34_Y7_N4
\EXP|Add9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~34_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|Add9~33\ & VCC)) # (!\EXP|rem[-11]~regout\ & (!\EXP|Add9~33\))
-- \EXP|Add9~35\ = CARRY((!\EXP|rem[-11]~regout\ & !\EXP|Add9~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add9~33\,
	combout => \EXP|Add9~34_combout\,
	cout => \EXP|Add9~35\);

-- Location: LCCOMB_X34_Y7_N8
\EXP|Add9~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~38_combout\ = (\EXP|rem[-9]~regout\ & (\EXP|Add9~37\ & VCC)) # (!\EXP|rem[-9]~regout\ & (!\EXP|Add9~37\))
-- \EXP|Add9~39\ = CARRY((!\EXP|rem[-9]~regout\ & !\EXP|Add9~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add9~37\,
	combout => \EXP|Add9~38_combout\,
	cout => \EXP|Add9~39\);

-- Location: LCCOMB_X34_Y7_N10
\EXP|Add9~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~40_combout\ = (\EXP|rem[-8]~regout\ & (\EXP|Add9~39\ $ (GND))) # (!\EXP|rem[-8]~regout\ & (!\EXP|Add9~39\ & VCC))
-- \EXP|Add9~41\ = CARRY((\EXP|rem[-8]~regout\ & !\EXP|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add9~39\,
	combout => \EXP|Add9~40_combout\,
	cout => \EXP|Add9~41\);

-- Location: LCCOMB_X34_Y7_N12
\EXP|Add9~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~42_combout\ = (\EXP|rem[-7]~regout\ & (!\EXP|Add9~41\)) # (!\EXP|rem[-7]~regout\ & ((\EXP|Add9~41\) # (GND)))
-- \EXP|Add9~43\ = CARRY((!\EXP|Add9~41\) # (!\EXP|rem[-7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add9~41\,
	combout => \EXP|Add9~42_combout\,
	cout => \EXP|Add9~43\);

-- Location: LCCOMB_X34_Y7_N14
\EXP|Add9~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~44_combout\ = (\EXP|rem[-6]~regout\ & (\EXP|Add9~43\ $ (GND))) # (!\EXP|rem[-6]~regout\ & (!\EXP|Add9~43\ & VCC))
-- \EXP|Add9~45\ = CARRY((\EXP|rem[-6]~regout\ & !\EXP|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add9~43\,
	combout => \EXP|Add9~44_combout\,
	cout => \EXP|Add9~45\);

-- Location: LCCOMB_X34_Y7_N18
\EXP|Add9~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~48_combout\ = (\EXP|rem[-4]~regout\ & ((GND) # (!\EXP|Add9~47\))) # (!\EXP|rem[-4]~regout\ & (\EXP|Add9~47\ $ (GND)))
-- \EXP|Add9~49\ = CARRY((\EXP|rem[-4]~regout\) # (!\EXP|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add9~47\,
	combout => \EXP|Add9~48_combout\,
	cout => \EXP|Add9~49\);

-- Location: LCCOMB_X34_Y7_N20
\EXP|Add9~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~50_combout\ = (\EXP|rem[-3]~regout\ & (\EXP|Add9~49\ & VCC)) # (!\EXP|rem[-3]~regout\ & (!\EXP|Add9~49\))
-- \EXP|Add9~51\ = CARRY((!\EXP|rem[-3]~regout\ & !\EXP|Add9~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add9~49\,
	combout => \EXP|Add9~50_combout\,
	cout => \EXP|Add9~51\);

-- Location: LCCOMB_X34_Y7_N22
\EXP|Add9~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~52_combout\ = (\EXP|rem[-2]~regout\ & ((GND) # (!\EXP|Add9~51\))) # (!\EXP|rem[-2]~regout\ & (\EXP|Add9~51\ $ (GND)))
-- \EXP|Add9~53\ = CARRY((\EXP|rem[-2]~regout\) # (!\EXP|Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add9~51\,
	combout => \EXP|Add9~52_combout\,
	cout => \EXP|Add9~53\);

-- Location: LCCOMB_X34_Y7_N24
\EXP|Add9~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~54_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add9~53\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add9~53\))
-- \EXP|Add9~55\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add9~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add9~53\,
	combout => \EXP|Add9~54_combout\,
	cout => \EXP|Add9~55\);

-- Location: LCCOMB_X34_Y7_N26
\EXP|Add9~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~56_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add9~55\))) # (!\EXP|rem\(0) & (\EXP|Add9~55\ $ (GND)))
-- \EXP|Add9~57\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add9~55\,
	combout => \EXP|Add9~56_combout\,
	cout => \EXP|Add9~57\);

-- Location: LCCOMB_X37_Y10_N22
\EXP|rem[2]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[2]~73_combout\ = (((\EXP|LessThan5~6_combout\ & \EXP|LessThan5~5_combout\)) # (!\EXP|LessThan4~10_combout\)) # (!\EXP|LessThan7~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~15_combout\,
	datab => \EXP|LessThan5~6_combout\,
	datac => \EXP|LessThan5~5_combout\,
	datad => \EXP|LessThan4~10_combout\,
	combout => \EXP|rem[2]~73_combout\);

-- Location: LCCOMB_X36_Y8_N18
\EXP|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~1_combout\ = (\EXP|rem[-8]~regout\) # ((\EXP|rem[-7]~regout\) # ((\EXP|rem[-10]~regout\ & \EXP|rem[-9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-10]~regout\,
	datab => \EXP|rem[-8]~regout\,
	datac => \EXP|rem[-9]~regout\,
	datad => \EXP|rem[-7]~regout\,
	combout => \EXP|LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y8_N0
\EXP|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~2_combout\ = (\EXP|rem[-3]~regout\) # ((\EXP|LessThan2~0_combout\ & ((\EXP|rem[-6]~regout\) # (\EXP|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datab => \EXP|rem[-3]~regout\,
	datac => \EXP|LessThan2~0_combout\,
	datad => \EXP|LessThan2~1_combout\,
	combout => \EXP|LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y9_N28
\EXP|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~3_combout\ = (\EXP|rem[-14]~regout\) # (\EXP|rem[-15]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-14]~regout\,
	datad => \EXP|rem[-15]~regout\,
	combout => \EXP|LessThan2~3_combout\);

-- Location: LCCOMB_X38_Y9_N18
\EXP|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~1_combout\ = (!\EXP|rem[-20]~regout\ & (!\EXP|rem[-19]~regout\ & !\EXP|rem[-18]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datab => \EXP|rem[-19]~regout\,
	datad => \EXP|rem[-18]~regout\,
	combout => \EXP|LessThan8~1_combout\);

-- Location: LCCOMB_X36_Y9_N14
\EXP|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~3_combout\ = (\EXP|rem[-22]~15_combout\ & \EXP|rem[-21]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-22]~15_combout\,
	datad => \EXP|rem[-21]~regout\,
	combout => \EXP|LessThan6~3_combout\);

-- Location: LCCOMB_X36_Y9_N10
\EXP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~3_combout\ = (\EXP|rem[-26]~31_combout\) # ((\EXP|rem[-23]~19_combout\) # ((\EXP|rem[-24]~23_combout\) # (\EXP|rem[-25]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datab => \EXP|rem[-23]~19_combout\,
	datac => \EXP|rem[-24]~23_combout\,
	datad => \EXP|rem[-25]~27_combout\,
	combout => \EXP|LessThan0~3_combout\);

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

-- Location: LCCOMB_X36_Y10_N30
\EXP|rem[-31]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-31]~50_combout\ = (\KEY~combout\(0) & ((\SW~combout\(0)))) # (!\KEY~combout\(0) & (\EXP|rem[-31]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-31]~50_combout\,
	datac => \SW~combout\(0),
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-31]~50_combout\);

-- Location: LCCOMB_X36_Y10_N8
\EXP|rem[-31]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-31]~52_combout\ = \EXP|rem[-31]~50_combout\ $ (((\EXP|rem[-31]~51_combout\ & ((!\EXP|LessThan8~8_combout\) # (!\EXP|rem[2]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-31]~51_combout\,
	datab => \EXP|rem[-31]~50_combout\,
	datac => \EXP|rem[2]~68_combout\,
	datad => \EXP|LessThan8~8_combout\,
	combout => \EXP|rem[-31]~52_combout\);

-- Location: LCFF_X36_Y10_N9
\EXP|rem[-31]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-31]~52_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-31]~_emulated_regout\);

-- Location: LCCOMB_X36_Y10_N10
\EXP|rem[-31]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-31]~51_combout\ = (\KEY~combout\(0) & (\SW~combout\(0))) # (!\KEY~combout\(0) & ((\EXP|rem[-31]~_emulated_regout\ $ (\EXP|rem[-31]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \EXP|rem[-31]~_emulated_regout\,
	datac => \KEY~combout\(0),
	datad => \EXP|rem[-31]~50_combout\,
	combout => \EXP|rem[-31]~51_combout\);

-- Location: LCCOMB_X36_Y9_N0
\EXP|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~0_combout\ = (\EXP|rem[-29]~43_combout\) # ((\EXP|rem[-31]~51_combout\) # ((\EXP|rem[-28]~39_combout\) # (\EXP|rem[-30]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-29]~43_combout\,
	datab => \EXP|rem[-31]~51_combout\,
	datac => \EXP|rem[-28]~39_combout\,
	datad => \EXP|rem[-30]~47_combout\,
	combout => \EXP|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y9_N24
\EXP|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~4_combout\ = (\EXP|LessThan6~3_combout\ & ((\EXP|rem[-27]~35_combout\) # ((\EXP|LessThan0~3_combout\) # (\EXP|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datab => \EXP|LessThan6~3_combout\,
	datac => \EXP|LessThan0~3_combout\,
	datad => \EXP|LessThan0~0_combout\,
	combout => \EXP|LessThan2~4_combout\);

-- Location: LCCOMB_X37_Y9_N10
\EXP|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~5_combout\ = (\EXP|rem[-16]~regout\ & (((\EXP|rem[-17]~regout\) # (\EXP|LessThan2~4_combout\)) # (!\EXP|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-16]~regout\,
	datab => \EXP|LessThan8~1_combout\,
	datac => \EXP|rem[-17]~regout\,
	datad => \EXP|LessThan2~4_combout\,
	combout => \EXP|LessThan2~5_combout\);

-- Location: LCCOMB_X37_Y9_N0
\EXP|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~6_combout\ = (\EXP|LessThan8~6_combout\ & (\EXP|rem[-9]~regout\ & ((\EXP|LessThan2~3_combout\) # (\EXP|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~6_combout\,
	datab => \EXP|LessThan2~3_combout\,
	datac => \EXP|rem[-9]~regout\,
	datad => \EXP|LessThan2~5_combout\,
	combout => \EXP|LessThan2~6_combout\);

-- Location: LCCOMB_X37_Y9_N22
\EXP|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan2~7_combout\ = (\EXP|rem[-2]~regout\ & ((\EXP|LessThan2~2_combout\) # ((\EXP|LessThan2~0_combout\ & \EXP|LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan2~0_combout\,
	datab => \EXP|LessThan2~2_combout\,
	datac => \EXP|rem[-2]~regout\,
	datad => \EXP|LessThan2~6_combout\,
	combout => \EXP|LessThan2~7_combout\);

-- Location: LCCOMB_X39_Y9_N12
\EXP|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~4_combout\ = (\EXP|rem[-20]~regout\ & ((GND) # (!\EXP|Add4~3\))) # (!\EXP|rem[-20]~regout\ & (\EXP|Add4~3\ $ (GND)))
-- \EXP|Add4~5\ = CARRY((\EXP|rem[-20]~regout\) # (!\EXP|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add4~3\,
	combout => \EXP|Add4~4_combout\,
	cout => \EXP|Add4~5\);

-- Location: LCCOMB_X39_Y9_N14
\EXP|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~6_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add4~5\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add4~5\))
-- \EXP|Add4~7\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add4~5\,
	combout => \EXP|Add4~6_combout\,
	cout => \EXP|Add4~7\);

-- Location: LCCOMB_X39_Y9_N16
\EXP|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~8_combout\ = (\EXP|rem[-18]~regout\ & ((GND) # (!\EXP|Add4~7\))) # (!\EXP|rem[-18]~regout\ & (\EXP|Add4~7\ $ (GND)))
-- \EXP|Add4~9\ = CARRY((\EXP|rem[-18]~regout\) # (!\EXP|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add4~7\,
	combout => \EXP|Add4~8_combout\,
	cout => \EXP|Add4~9\);

-- Location: LCCOMB_X39_Y9_N18
\EXP|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~10_combout\ = (\EXP|rem[-17]~regout\ & (\EXP|Add4~9\ & VCC)) # (!\EXP|rem[-17]~regout\ & (!\EXP|Add4~9\))
-- \EXP|Add4~11\ = CARRY((!\EXP|rem[-17]~regout\ & !\EXP|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add4~9\,
	combout => \EXP|Add4~10_combout\,
	cout => \EXP|Add4~11\);

-- Location: LCCOMB_X39_Y9_N22
\EXP|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~14_combout\ = (\EXP|rem[-15]~regout\ & (\EXP|Add4~13\ & VCC)) # (!\EXP|rem[-15]~regout\ & (!\EXP|Add4~13\))
-- \EXP|Add4~15\ = CARRY((!\EXP|rem[-15]~regout\ & !\EXP|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add4~13\,
	combout => \EXP|Add4~14_combout\,
	cout => \EXP|Add4~15\);

-- Location: LCCOMB_X39_Y9_N26
\EXP|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~18_combout\ = (\EXP|rem[-13]~regout\ & (!\EXP|Add4~17\)) # (!\EXP|rem[-13]~regout\ & ((\EXP|Add4~17\) # (GND)))
-- \EXP|Add4~19\ = CARRY((!\EXP|Add4~17\) # (!\EXP|rem[-13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add4~17\,
	combout => \EXP|Add4~18_combout\,
	cout => \EXP|Add4~19\);

-- Location: LCCOMB_X39_Y9_N28
\EXP|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~20_combout\ = (\EXP|rem[-12]~regout\ & (\EXP|Add4~19\ $ (GND))) # (!\EXP|rem[-12]~regout\ & (!\EXP|Add4~19\ & VCC))
-- \EXP|Add4~21\ = CARRY((\EXP|rem[-12]~regout\ & !\EXP|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add4~19\,
	combout => \EXP|Add4~20_combout\,
	cout => \EXP|Add4~21\);

-- Location: LCCOMB_X39_Y9_N30
\EXP|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~22_combout\ = (\EXP|rem[-11]~regout\ & (!\EXP|Add4~21\)) # (!\EXP|rem[-11]~regout\ & ((\EXP|Add4~21\) # (GND)))
-- \EXP|Add4~23\ = CARRY((!\EXP|Add4~21\) # (!\EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add4~21\,
	combout => \EXP|Add4~22_combout\,
	cout => \EXP|Add4~23\);

-- Location: LCCOMB_X39_Y8_N4
\EXP|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~28_combout\ = (\EXP|rem[-8]~regout\ & ((GND) # (!\EXP|Add4~27\))) # (!\EXP|rem[-8]~regout\ & (\EXP|Add4~27\ $ (GND)))
-- \EXP|Add4~29\ = CARRY((\EXP|rem[-8]~regout\) # (!\EXP|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add4~27\,
	combout => \EXP|Add4~28_combout\,
	cout => \EXP|Add4~29\);

-- Location: LCCOMB_X39_Y8_N6
\EXP|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~30_combout\ = (\EXP|rem[-7]~regout\ & (\EXP|Add4~29\ & VCC)) # (!\EXP|rem[-7]~regout\ & (!\EXP|Add4~29\))
-- \EXP|Add4~31\ = CARRY((!\EXP|rem[-7]~regout\ & !\EXP|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add4~29\,
	combout => \EXP|Add4~30_combout\,
	cout => \EXP|Add4~31\);

-- Location: LCCOMB_X39_Y8_N8
\EXP|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~32_combout\ = (\EXP|rem[-6]~regout\ & ((GND) # (!\EXP|Add4~31\))) # (!\EXP|rem[-6]~regout\ & (\EXP|Add4~31\ $ (GND)))
-- \EXP|Add4~33\ = CARRY((\EXP|rem[-6]~regout\) # (!\EXP|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add4~31\,
	combout => \EXP|Add4~32_combout\,
	cout => \EXP|Add4~33\);

-- Location: LCCOMB_X39_Y8_N10
\EXP|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~34_combout\ = (\EXP|rem[-5]~regout\ & (!\EXP|Add4~33\)) # (!\EXP|rem[-5]~regout\ & ((\EXP|Add4~33\) # (GND)))
-- \EXP|Add4~35\ = CARRY((!\EXP|Add4~33\) # (!\EXP|rem[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add4~33\,
	combout => \EXP|Add4~34_combout\,
	cout => \EXP|Add4~35\);

-- Location: LCCOMB_X39_Y8_N12
\EXP|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~36_combout\ = (\EXP|rem[-4]~regout\ & (\EXP|Add4~35\ $ (GND))) # (!\EXP|rem[-4]~regout\ & (!\EXP|Add4~35\ & VCC))
-- \EXP|Add4~37\ = CARRY((\EXP|rem[-4]~regout\ & !\EXP|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add4~35\,
	combout => \EXP|Add4~36_combout\,
	cout => \EXP|Add4~37\);

-- Location: LCCOMB_X39_Y8_N14
\EXP|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~38_combout\ = (\EXP|rem[-3]~regout\ & (\EXP|Add4~37\ & VCC)) # (!\EXP|rem[-3]~regout\ & (!\EXP|Add4~37\))
-- \EXP|Add4~39\ = CARRY((!\EXP|rem[-3]~regout\ & !\EXP|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add4~37\,
	combout => \EXP|Add4~38_combout\,
	cout => \EXP|Add4~39\);

-- Location: LCCOMB_X39_Y8_N16
\EXP|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~40_combout\ = (\EXP|rem[-2]~regout\ & (\EXP|Add4~39\ $ (GND))) # (!\EXP|rem[-2]~regout\ & (!\EXP|Add4~39\ & VCC))
-- \EXP|Add4~41\ = CARRY((\EXP|rem[-2]~regout\ & !\EXP|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add4~39\,
	combout => \EXP|Add4~40_combout\,
	cout => \EXP|Add4~41\);

-- Location: LCCOMB_X39_Y8_N18
\EXP|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~42_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add4~41\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add4~41\))
-- \EXP|Add4~43\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add4~41\,
	combout => \EXP|Add4~42_combout\,
	cout => \EXP|Add4~43\);

-- Location: LCCOMB_X39_Y8_N20
\EXP|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~44_combout\ = (\EXP|rem\(0) & ((GND) # (!\EXP|Add4~43\))) # (!\EXP|rem\(0) & (\EXP|Add4~43\ $ (GND)))
-- \EXP|Add4~45\ = CARRY((\EXP|rem\(0)) # (!\EXP|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(0),
	datad => VCC,
	cin => \EXP|Add4~43\,
	combout => \EXP|Add4~44_combout\,
	cout => \EXP|Add4~45\);

-- Location: LCCOMB_X38_Y9_N16
\EXP|rem~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~89_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~44_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(7))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~68_combout\,
	datab => \EXP|LessThan2~7_combout\,
	datac => \SW~combout\(7),
	datad => \EXP|Add4~44_combout\,
	combout => \EXP|rem~89_combout\);

-- Location: LCCOMB_X39_Y7_N22
\EXP|rem~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~90_combout\ = (\EXP|rem[2]~72_combout\ & (((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & ((\EXP|rem[2]~73_combout\ & (\EXP|Add7~52_combout\)) # (!\EXP|rem[2]~73_combout\ & ((\EXP|rem~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~52_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|rem[2]~73_combout\,
	datad => \EXP|rem~89_combout\,
	combout => \EXP|rem~90_combout\);

-- Location: LCCOMB_X39_Y7_N12
\EXP|rem~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~91_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem~90_combout\ & ((\EXP|Add9~56_combout\))) # (!\EXP|rem~90_combout\ & (\EXP|Add5~52_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~52_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|Add9~56_combout\,
	datad => \EXP|rem~90_combout\,
	combout => \EXP|rem~91_combout\);

-- Location: LCCOMB_X39_Y7_N2
\EXP|rem~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~92_combout\ = (\EXP|rem[2]~70_combout\ & (((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem[2]~71_combout\ & (\EXP|Add13~54_combout\)) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~70_combout\,
	datab => \EXP|Add13~54_combout\,
	datac => \EXP|rem[2]~71_combout\,
	datad => \EXP|rem~91_combout\,
	combout => \EXP|rem~92_combout\);

-- Location: LCCOMB_X39_Y7_N0
\EXP|rem~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~93_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|rem~92_combout\ & ((\EXP|Add15~60_combout\))) # (!\EXP|rem~92_combout\ & (\EXP|Add11~56_combout\)))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~56_combout\,
	datab => \EXP|Add15~60_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem~92_combout\,
	combout => \EXP|rem~93_combout\);

-- Location: LCFF_X39_Y7_N1
\EXP|rem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~93_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem\(0));

-- Location: LCCOMB_X34_Y9_N20
\EXP|rem~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~206_combout\ = (!\EXP|rem\(1) & (!\EXP|rem\(0) & (!\EXP|LessThan2~7_combout\ & !\EXP|rem[-1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(1),
	datab => \EXP|rem\(0),
	datac => \EXP|LessThan2~7_combout\,
	datad => \EXP|rem[-1]~regout\,
	combout => \EXP|rem~206_combout\);

-- Location: LCCOMB_X35_Y9_N30
\EXP|rem~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~181_combout\ = (\EXP|Add4~0_combout\ & (\EXP|e~1_combout\ & (!\EXP|rem~206_combout\ & \EXP|LessThan4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~0_combout\,
	datab => \EXP|e~1_combout\,
	datac => \EXP|rem~206_combout\,
	datad => \EXP|LessThan4~10_combout\,
	combout => \EXP|rem~181_combout\);

-- Location: LCCOMB_X35_Y9_N2
\EXP|rem~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~183_combout\ = (\EXP|LessThan5~7_combout\ & (\EXP|LessThan6~7_combout\ & ((\EXP|rem~182_combout\) # (\EXP|rem~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~7_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|rem~182_combout\,
	datad => \EXP|rem~181_combout\,
	combout => \EXP|rem~183_combout\);

-- Location: LCCOMB_X35_Y9_N24
\EXP|rem~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~185_combout\ = (\EXP|LessThan7~13_combout\ & (((\EXP|rem~184_combout\) # (\EXP|rem~183_combout\)))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~10_combout\,
	datac => \EXP|rem~184_combout\,
	datad => \EXP|rem~183_combout\,
	combout => \EXP|rem~185_combout\);

-- Location: LCCOMB_X36_Y9_N30
\EXP|rem[-22]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-22]~16_combout\ = \EXP|rem[-22]~14_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~16_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~14_combout\,
	datab => \EXP|Add15~16_combout\,
	datac => \EXP|rem[-30]~69_combout\,
	datad => \EXP|rem~185_combout\,
	combout => \EXP|rem[-22]~16_combout\);

-- Location: LCFF_X36_Y9_N31
\EXP|rem[-22]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-22]~16_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-22]~_emulated_regout\);

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

-- Location: LCCOMB_X35_Y9_N4
\EXP|rem[-22]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-22]~14_combout\ = (\KEY~combout\(0) & (\SW~combout\(9))) # (!\KEY~combout\(0) & ((\EXP|rem[-22]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \EXP|rem[-22]~14_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-22]~14_combout\);

-- Location: LCCOMB_X36_Y9_N4
\EXP|rem[-22]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-22]~15_combout\ = (\KEY~combout\(0) & (\SW~combout\(9))) # (!\KEY~combout\(0) & ((\EXP|rem[-22]~_emulated_regout\ $ (\EXP|rem[-22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|rem[-22]~_emulated_regout\,
	datac => \EXP|rem[-22]~14_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-22]~15_combout\);

-- Location: LCCOMB_X40_Y9_N14
\EXP|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~10_combout\ = (\EXP|rem[-21]~regout\ & (\EXP|Add7~9\ & VCC)) # (!\EXP|rem[-21]~regout\ & (!\EXP|Add7~9\))
-- \EXP|Add7~11\ = CARRY((!\EXP|rem[-21]~regout\ & !\EXP|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add7~9\,
	combout => \EXP|Add7~10_combout\,
	cout => \EXP|Add7~11\);

-- Location: LCCOMB_X40_Y9_N16
\EXP|Add7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~13_cout\ = CARRY((\EXP|rem[-20]~regout\ & !\EXP|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add7~11\,
	cout => \EXP|Add7~13_cout\);

-- Location: LCCOMB_X40_Y9_N18
\EXP|Add7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~15_cout\ = CARRY((!\EXP|Add7~13_cout\) # (!\EXP|rem[-19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add7~13_cout\,
	cout => \EXP|Add7~15_cout\);

-- Location: LCCOMB_X40_Y9_N20
\EXP|Add7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~17_cout\ = CARRY((\EXP|rem[-18]~regout\ & !\EXP|Add7~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add7~15_cout\,
	cout => \EXP|Add7~17_cout\);

-- Location: LCCOMB_X40_Y9_N22
\EXP|Add7~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~19_cout\ = CARRY((!\EXP|Add7~17_cout\) # (!\EXP|rem[-17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add7~17_cout\,
	cout => \EXP|Add7~19_cout\);

-- Location: LCCOMB_X40_Y9_N24
\EXP|Add7~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~21_cout\ = CARRY((\EXP|rem[-16]~regout\ & !\EXP|Add7~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add7~19_cout\,
	cout => \EXP|Add7~21_cout\);

-- Location: LCCOMB_X40_Y9_N26
\EXP|Add7~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~23_cout\ = CARRY((!\EXP|Add7~21_cout\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add7~21_cout\,
	cout => \EXP|Add7~23_cout\);

-- Location: LCCOMB_X40_Y9_N28
\EXP|Add7~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~25_cout\ = CARRY((\EXP|rem[-14]~regout\ & !\EXP|Add7~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add7~23_cout\,
	cout => \EXP|Add7~25_cout\);

-- Location: LCCOMB_X40_Y9_N30
\EXP|Add7~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~27_cout\ = CARRY((!\EXP|Add7~25_cout\) # (!\EXP|rem[-13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add7~25_cout\,
	cout => \EXP|Add7~27_cout\);

-- Location: LCCOMB_X40_Y8_N0
\EXP|Add7~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~29_cout\ = CARRY((\EXP|rem[-12]~regout\) # (!\EXP|Add7~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add7~27_cout\,
	cout => \EXP|Add7~29_cout\);

-- Location: LCCOMB_X40_Y8_N2
\EXP|Add7~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~31_cout\ = CARRY((!\EXP|rem[-11]~regout\ & !\EXP|Add7~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add7~29_cout\,
	cout => \EXP|Add7~31_cout\);

-- Location: LCCOMB_X40_Y8_N4
\EXP|Add7~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~33_cout\ = CARRY((\EXP|rem[-10]~regout\) # (!\EXP|Add7~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add7~31_cout\,
	cout => \EXP|Add7~33_cout\);

-- Location: LCCOMB_X40_Y8_N6
\EXP|Add7~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~35_cout\ = CARRY((!\EXP|Add7~33_cout\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add7~33_cout\,
	cout => \EXP|Add7~35_cout\);

-- Location: LCCOMB_X40_Y8_N8
\EXP|Add7~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~37_cout\ = CARRY((\EXP|rem[-8]~regout\) # (!\EXP|Add7~35_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add7~35_cout\,
	cout => \EXP|Add7~37_cout\);

-- Location: LCCOMB_X40_Y8_N10
\EXP|Add7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~38_combout\ = (\EXP|rem[-7]~regout\ & (\EXP|Add7~37_cout\ & VCC)) # (!\EXP|rem[-7]~regout\ & (!\EXP|Add7~37_cout\))
-- \EXP|Add7~39\ = CARRY((!\EXP|rem[-7]~regout\ & !\EXP|Add7~37_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add7~37_cout\,
	combout => \EXP|Add7~38_combout\,
	cout => \EXP|Add7~39\);

-- Location: LCCOMB_X40_Y8_N12
\EXP|Add7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~40_combout\ = (\EXP|rem[-6]~regout\ & (\EXP|Add7~39\ $ (GND))) # (!\EXP|rem[-6]~regout\ & (!\EXP|Add7~39\ & VCC))
-- \EXP|Add7~41\ = CARRY((\EXP|rem[-6]~regout\ & !\EXP|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add7~39\,
	combout => \EXP|Add7~40_combout\,
	cout => \EXP|Add7~41\);

-- Location: LCCOMB_X40_Y8_N14
\EXP|Add7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~42_combout\ = (\EXP|rem[-5]~regout\ & (!\EXP|Add7~41\)) # (!\EXP|rem[-5]~regout\ & ((\EXP|Add7~41\) # (GND)))
-- \EXP|Add7~43\ = CARRY((!\EXP|Add7~41\) # (!\EXP|rem[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add7~41\,
	combout => \EXP|Add7~42_combout\,
	cout => \EXP|Add7~43\);

-- Location: LCCOMB_X40_Y8_N16
\EXP|Add7~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~44_combout\ = (\EXP|rem[-4]~regout\ & (\EXP|Add7~43\ $ (GND))) # (!\EXP|rem[-4]~regout\ & (!\EXP|Add7~43\ & VCC))
-- \EXP|Add7~45\ = CARRY((\EXP|rem[-4]~regout\ & !\EXP|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add7~43\,
	combout => \EXP|Add7~44_combout\,
	cout => \EXP|Add7~45\);

-- Location: LCCOMB_X40_Y8_N18
\EXP|Add7~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~46_combout\ = (\EXP|rem[-3]~regout\ & (\EXP|Add7~45\ & VCC)) # (!\EXP|rem[-3]~regout\ & (!\EXP|Add7~45\))
-- \EXP|Add7~47\ = CARRY((!\EXP|rem[-3]~regout\ & !\EXP|Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add7~45\,
	combout => \EXP|Add7~46_combout\,
	cout => \EXP|Add7~47\);

-- Location: LCCOMB_X37_Y8_N2
\EXP|rem~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~79_combout\ = (\EXP|LessThan2~7_combout\ & (((\EXP|Add4~38_combout\)))) # (!\EXP|LessThan2~7_combout\ & ((\EXP|rem[2]~68_combout\ & (\SW~combout\(4))) # (!\EXP|rem[2]~68_combout\ & ((\EXP|Add4~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \EXP|LessThan2~7_combout\,
	datac => \EXP|rem[2]~68_combout\,
	datad => \EXP|Add4~38_combout\,
	combout => \EXP|rem~79_combout\);

-- Location: LCCOMB_X35_Y7_N12
\EXP|Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~40_combout\ = (\EXP|rem[-6]~regout\ & ((GND) # (!\EXP|Add5~39\))) # (!\EXP|rem[-6]~regout\ & (\EXP|Add5~39\ $ (GND)))
-- \EXP|Add5~41\ = CARRY((\EXP|rem[-6]~regout\) # (!\EXP|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-6]~regout\,
	datad => VCC,
	cin => \EXP|Add5~39\,
	combout => \EXP|Add5~40_combout\,
	cout => \EXP|Add5~41\);

-- Location: LCCOMB_X35_Y7_N16
\EXP|Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~44_combout\ = (\EXP|rem[-4]~regout\ & (\EXP|Add5~43\ $ (GND))) # (!\EXP|rem[-4]~regout\ & (!\EXP|Add5~43\ & VCC))
-- \EXP|Add5~45\ = CARRY((\EXP|rem[-4]~regout\ & !\EXP|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add5~43\,
	combout => \EXP|Add5~44_combout\,
	cout => \EXP|Add5~45\);

-- Location: LCCOMB_X35_Y7_N18
\EXP|Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~46_combout\ = (\EXP|rem[-3]~regout\ & (!\EXP|Add5~45\)) # (!\EXP|rem[-3]~regout\ & ((\EXP|Add5~45\) # (GND)))
-- \EXP|Add5~47\ = CARRY((!\EXP|Add5~45\) # (!\EXP|rem[-3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add5~45\,
	combout => \EXP|Add5~46_combout\,
	cout => \EXP|Add5~47\);

-- Location: LCCOMB_X37_Y8_N16
\EXP|rem~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~80_combout\ = (\EXP|rem[2]~72_combout\ & (((\EXP|Add5~46_combout\) # (\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & (\EXP|rem~79_combout\ & ((!\EXP|rem[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|rem~79_combout\,
	datac => \EXP|Add5~46_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~80_combout\);

-- Location: LCCOMB_X37_Y8_N18
\EXP|rem~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~81_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem~80_combout\ & ((\EXP|Add9~50_combout\))) # (!\EXP|rem~80_combout\ & (\EXP|Add7~46_combout\)))) # (!\EXP|rem[2]~73_combout\ & (((\EXP|rem~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~73_combout\,
	datab => \EXP|Add7~46_combout\,
	datac => \EXP|rem~80_combout\,
	datad => \EXP|Add9~50_combout\,
	combout => \EXP|rem~81_combout\);

-- Location: LCCOMB_X37_Y8_N24
\EXP|rem~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~82_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|Add11~50_combout\) # ((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~81_combout\ & !\EXP|rem[2]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~50_combout\,
	datab => \EXP|rem~81_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem[2]~71_combout\,
	combout => \EXP|rem~82_combout\);

-- Location: LCCOMB_X37_Y8_N8
\EXP|rem~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~83_combout\ = (\EXP|rem~82_combout\ & (((\EXP|Add15~54_combout\) # (!\EXP|rem[2]~71_combout\)))) # (!\EXP|rem~82_combout\ & (\EXP|Add13~48_combout\ & ((\EXP|rem[2]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~48_combout\,
	datab => \EXP|Add15~54_combout\,
	datac => \EXP|rem~82_combout\,
	datad => \EXP|rem[2]~71_combout\,
	combout => \EXP|rem~83_combout\);

-- Location: LCFF_X37_Y8_N9
\EXP|rem[-3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~83_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-3]~regout\);

-- Location: LCCOMB_X37_Y8_N30
\EXP|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~3_combout\ = (\EXP|rem[-3]~regout\ & \EXP|rem[-4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-3]~regout\,
	datac => \EXP|rem[-4]~regout\,
	combout => \EXP|LessThan3~3_combout\);

-- Location: LCCOMB_X37_Y9_N26
\EXP|LessThan7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~6_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|LessThan6~0_combout\ & \EXP|rem[-7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-11]~regout\,
	datac => \EXP|LessThan6~0_combout\,
	datad => \EXP|rem[-7]~regout\,
	combout => \EXP|LessThan7~6_combout\);

-- Location: LCCOMB_X34_Y12_N30
\EXP|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~4_combout\ = (\EXP|rem[-15]~regout\ & (\EXP|rem[-14]~regout\ & ((\EXP|rem[-16]~regout\) # (\EXP|rem[-17]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datab => \EXP|rem[-16]~regout\,
	datac => \EXP|rem[-17]~regout\,
	datad => \EXP|rem[-14]~regout\,
	combout => \EXP|LessThan3~4_combout\);

-- Location: LCCOMB_X37_Y9_N14
\EXP|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~5_combout\ = (\EXP|LessThan7~6_combout\ & ((\EXP|rem[-13]~regout\) # ((\EXP|rem[-12]~regout\) # (\EXP|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datab => \EXP|LessThan7~6_combout\,
	datac => \EXP|rem[-12]~regout\,
	datad => \EXP|LessThan3~4_combout\,
	combout => \EXP|LessThan3~5_combout\);

-- Location: LCCOMB_X36_Y9_N16
\EXP|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~2_combout\ = (!\EXP|rem[-27]~35_combout\ & !\EXP|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datad => \EXP|LessThan0~0_combout\,
	combout => \EXP|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y9_N22
\EXP|LessThan3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~8_combout\ = ((\EXP|rem[-21]~regout\) # ((!\EXP|LessThan0~2_combout\ & \EXP|LessThan3~2_combout\))) # (!\EXP|LessThan3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan3~7_combout\,
	datab => \EXP|rem[-21]~regout\,
	datac => \EXP|LessThan0~2_combout\,
	datad => \EXP|LessThan3~2_combout\,
	combout => \EXP|LessThan3~8_combout\);

-- Location: LCCOMB_X37_Y9_N2
\EXP|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~9_combout\ = (\EXP|rem[-30]~57_combout\ & (!\EXP|LessThan3~5_combout\ & ((!\EXP|LessThan3~8_combout\) # (!\EXP|LessThan3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan3~6_combout\,
	datab => \EXP|rem[-30]~57_combout\,
	datac => \EXP|LessThan3~5_combout\,
	datad => \EXP|LessThan3~8_combout\,
	combout => \EXP|LessThan3~9_combout\);

-- Location: LCCOMB_X37_Y9_N20
\EXP|LessThan3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~10_combout\ = (\EXP|rem[-2]~regout\) # (((\EXP|LessThan3~3_combout\ & !\EXP|LessThan3~9_combout\)) # (!\EXP|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-2]~regout\,
	datab => \EXP|LessThan3~3_combout\,
	datac => \EXP|LessThan3~0_combout\,
	datad => \EXP|LessThan3~9_combout\,
	combout => \EXP|LessThan3~10_combout\);

-- Location: LCCOMB_X37_Y9_N28
\EXP|Calculate_Block.e[-3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~18_combout\ = (!\EXP|rem\(2) & (\EXP|LessThan3~0_combout\ & !\EXP|LessThan2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	datac => \EXP|LessThan3~0_combout\,
	datad => \EXP|LessThan2~7_combout\,
	combout => \EXP|Calculate_Block.e[-3]~18_combout\);

-- Location: LCCOMB_X37_Y9_N6
\EXP|Calculate_Block.e[-3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~25_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (!\EXP|LessThan3~10_combout\ & \EXP|Calculate_Block.e[-3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datac => \EXP|LessThan3~10_combout\,
	datad => \EXP|Calculate_Block.e[-3]~18_combout\,
	combout => \EXP|Calculate_Block.e[-3]~25_combout\);

-- Location: LCCOMB_X36_Y7_N6
\EXP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~0_combout\ = \EXP|rem[-20]~regout\ $ (VCC)
-- \EXP|Add0~1\ = CARRY(\EXP|rem[-20]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-20]~regout\,
	datad => VCC,
	combout => \EXP|Add0~0_combout\,
	cout => \EXP|Add0~1\);

-- Location: LCCOMB_X35_Y8_N16
\EXP|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~12_combout\ = (\EXP|rem[-20]~regout\ & ((GND) # (!\EXP|Add5~11\))) # (!\EXP|rem[-20]~regout\ & (\EXP|Add5~11\ $ (GND)))
-- \EXP|Add5~13\ = CARRY((\EXP|rem[-20]~regout\) # (!\EXP|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add5~11\,
	combout => \EXP|Add5~12_combout\,
	cout => \EXP|Add5~13\);

-- Location: LCCOMB_X37_Y9_N24
\EXP|Calculate_Block.e[-3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~26_combout\ = ((\EXP|LessThan3~10_combout\) # (\EXP|LessThan2~7_combout\)) # (!\EXP|rem[2]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|LessThan3~10_combout\,
	datad => \EXP|LessThan2~7_combout\,
	combout => \EXP|Calculate_Block.e[-3]~26_combout\);

-- Location: LCCOMB_X38_Y9_N10
\EXP|rem~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~152_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~12_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~4_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Add4~4_combout\,
	datac => \EXP|Add5~12_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~152_combout\);

-- Location: LCCOMB_X38_Y9_N20
\EXP|rem~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~153_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~152_combout\ & (\EXP|Add2~4_combout\)) # (!\EXP|rem~152_combout\ & ((\EXP|Add0~0_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~4_combout\,
	datab => \EXP|Calculate_Block.e[-3]~25_combout\,
	datac => \EXP|Add0~0_combout\,
	datad => \EXP|rem~152_combout\,
	combout => \EXP|rem~153_combout\);

-- Location: LCCOMB_X38_Y9_N22
\EXP|rem~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~154_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~153_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~8_combout\,
	datac => \EXP|rem~153_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|rem~154_combout\);

-- Location: LCCOMB_X38_Y9_N28
\EXP|rem~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~155_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|rem~154_combout\ & ((\EXP|Add11~16_combout\))) # (!\EXP|rem~154_combout\ & (\EXP|Add9~16_combout\)))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|rem~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~16_combout\,
	datab => \EXP|Add11~16_combout\,
	datac => \EXP|Calculate_Block.e[-3]~41_combout\,
	datad => \EXP|rem~154_combout\,
	combout => \EXP|rem~155_combout\);

-- Location: LCCOMB_X38_Y9_N12
\EXP|rem[-20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-20]~12_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~155_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~14_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~155_combout\,
	combout => \EXP|rem[-20]~12_combout\);

-- Location: LCCOMB_X39_Y12_N2
\EXP|Add15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~18_combout\ = (\EXP|rem[-21]~regout\ & (!\EXP|Add15~17\)) # (!\EXP|rem[-21]~regout\ & ((\EXP|Add15~17\) # (GND)))
-- \EXP|Add15~19\ = CARRY((!\EXP|Add15~17\) # (!\EXP|rem[-21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add15~17\,
	combout => \EXP|Add15~18_combout\,
	cout => \EXP|Add15~19\);

-- Location: LCCOMB_X39_Y12_N4
\EXP|Add15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~20_combout\ = (\EXP|rem[-20]~regout\ & ((GND) # (!\EXP|Add15~19\))) # (!\EXP|rem[-20]~regout\ & (\EXP|Add15~19\ $ (GND)))
-- \EXP|Add15~21\ = CARRY((\EXP|rem[-20]~regout\) # (!\EXP|Add15~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-20]~regout\,
	datad => VCC,
	cin => \EXP|Add15~19\,
	combout => \EXP|Add15~20_combout\,
	cout => \EXP|Add15~21\);

-- Location: LCFF_X38_Y9_N13
\EXP|rem[-20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-20]~12_combout\,
	sdata => \EXP|Add15~20_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-20]~regout\);

-- Location: LCCOMB_X35_Y8_N18
\EXP|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~14_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add5~13\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add5~13\))
-- \EXP|Add5~15\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add5~13\,
	combout => \EXP|Add5~14_combout\,
	cout => \EXP|Add5~15\);

-- Location: LCCOMB_X35_Y8_N20
\EXP|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~16_combout\ = (\EXP|rem[-18]~regout\ & (\EXP|Add5~15\ $ (GND))) # (!\EXP|rem[-18]~regout\ & (!\EXP|Add5~15\ & VCC))
-- \EXP|Add5~17\ = CARRY((\EXP|rem[-18]~regout\ & !\EXP|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add5~15\,
	combout => \EXP|Add5~16_combout\,
	cout => \EXP|Add5~17\);

-- Location: LCCOMB_X35_Y8_N24
\EXP|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~20_combout\ = (\EXP|rem[-16]~regout\ & ((GND) # (!\EXP|Add5~19\))) # (!\EXP|rem[-16]~regout\ & (\EXP|Add5~19\ $ (GND)))
-- \EXP|Add5~21\ = CARRY((\EXP|rem[-16]~regout\) # (!\EXP|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add5~19\,
	combout => \EXP|Add5~20_combout\,
	cout => \EXP|Add5~21\);

-- Location: LCCOMB_X35_Y8_N28
\EXP|Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~24_combout\ = (\EXP|rem[-14]~regout\ & (\EXP|Add5~23\ $ (GND))) # (!\EXP|rem[-14]~regout\ & (!\EXP|Add5~23\ & VCC))
-- \EXP|Add5~25\ = CARRY((\EXP|rem[-14]~regout\ & !\EXP|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add5~23\,
	combout => \EXP|Add5~24_combout\,
	cout => \EXP|Add5~25\);

-- Location: LCCOMB_X35_Y8_N30
\EXP|Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~26_combout\ = (\EXP|rem[-13]~regout\ & (\EXP|Add5~25\ & VCC)) # (!\EXP|rem[-13]~regout\ & (!\EXP|Add5~25\))
-- \EXP|Add5~27\ = CARRY((!\EXP|rem[-13]~regout\ & !\EXP|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add5~25\,
	combout => \EXP|Add5~26_combout\,
	cout => \EXP|Add5~27\);

-- Location: LCCOMB_X35_Y7_N0
\EXP|Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~28_combout\ = (\EXP|rem[-12]~regout\ & ((GND) # (!\EXP|Add5~27\))) # (!\EXP|rem[-12]~regout\ & (\EXP|Add5~27\ $ (GND)))
-- \EXP|Add5~29\ = CARRY((\EXP|rem[-12]~regout\) # (!\EXP|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add5~27\,
	combout => \EXP|Add5~28_combout\,
	cout => \EXP|Add5~29\);

-- Location: LCCOMB_X35_Y7_N4
\EXP|Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~32_combout\ = (\EXP|rem[-10]~regout\ & (\EXP|Add5~31\ $ (GND))) # (!\EXP|rem[-10]~regout\ & (!\EXP|Add5~31\ & VCC))
-- \EXP|Add5~33\ = CARRY((\EXP|rem[-10]~regout\ & !\EXP|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add5~31\,
	combout => \EXP|Add5~32_combout\,
	cout => \EXP|Add5~33\);

-- Location: LCCOMB_X35_Y7_N6
\EXP|Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~34_combout\ = (\EXP|rem[-9]~regout\ & (!\EXP|Add5~33\)) # (!\EXP|rem[-9]~regout\ & ((\EXP|Add5~33\) # (GND)))
-- \EXP|Add5~35\ = CARRY((!\EXP|Add5~33\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add5~33\,
	combout => \EXP|Add5~34_combout\,
	cout => \EXP|Add5~35\);

-- Location: LCCOMB_X35_Y7_N8
\EXP|Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~36_combout\ = (\EXP|rem[-8]~regout\ & (\EXP|Add5~35\ $ (GND))) # (!\EXP|rem[-8]~regout\ & (!\EXP|Add5~35\ & VCC))
-- \EXP|Add5~37\ = CARRY((\EXP|rem[-8]~regout\ & !\EXP|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add5~35\,
	combout => \EXP|Add5~36_combout\,
	cout => \EXP|Add5~37\);

-- Location: LCCOMB_X37_Y10_N8
\EXP|rem~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~109_combout\ = (\EXP|LessThan2~7_combout\ & (((\EXP|Add4~32_combout\)))) # (!\EXP|LessThan2~7_combout\ & ((\EXP|rem[2]~68_combout\ & (\SW~combout\(1))) # (!\EXP|rem[2]~68_combout\ & ((\EXP|Add4~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \EXP|LessThan2~7_combout\,
	datac => \EXP|rem[2]~68_combout\,
	datad => \EXP|Add4~32_combout\,
	combout => \EXP|rem~109_combout\);

-- Location: LCCOMB_X37_Y10_N26
\EXP|rem~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~110_combout\ = (\EXP|rem[2]~72_combout\ & (((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & ((\EXP|rem[2]~73_combout\ & (\EXP|Add7~40_combout\)) # (!\EXP|rem[2]~73_combout\ & ((\EXP|rem~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|Add7~40_combout\,
	datac => \EXP|rem~109_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~110_combout\);

-- Location: LCCOMB_X37_Y10_N20
\EXP|rem~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~111_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem~110_combout\ & ((\EXP|Add9~44_combout\))) # (!\EXP|rem~110_combout\ & (\EXP|Add5~40_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|Add5~40_combout\,
	datac => \EXP|Add9~44_combout\,
	datad => \EXP|rem~110_combout\,
	combout => \EXP|rem~111_combout\);

-- Location: LCCOMB_X37_Y8_N26
\EXP|rem~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~112_combout\ = (\EXP|rem[2]~70_combout\ & (((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem[2]~71_combout\ & (\EXP|Add13~42_combout\)) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~42_combout\,
	datab => \EXP|rem[2]~70_combout\,
	datac => \EXP|rem~111_combout\,
	datad => \EXP|rem[2]~71_combout\,
	combout => \EXP|rem~112_combout\);

-- Location: LCCOMB_X37_Y8_N10
\EXP|rem~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~113_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|rem~112_combout\ & ((\EXP|Add15~48_combout\))) # (!\EXP|rem~112_combout\ & (\EXP|Add11~44_combout\)))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~44_combout\,
	datab => \EXP|Add15~48_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem~112_combout\,
	combout => \EXP|rem~113_combout\);

-- Location: LCFF_X37_Y8_N11
\EXP|rem[-6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~113_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-6]~regout\);

-- Location: LCCOMB_X35_Y10_N16
\EXP|rem[-30]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~57_combout\ = (!\EXP|rem[-5]~regout\ & !\EXP|rem[-6]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-5]~regout\,
	datad => \EXP|rem[-6]~regout\,
	combout => \EXP|rem[-30]~57_combout\);

-- Location: LCCOMB_X36_Y10_N2
\EXP|rem[-30]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~193_combout\ = (\EXP|rem[-30]~69_combout\) # ((!\EXP|LessThan7~12_combout\ & (\EXP|rem[-30]~57_combout\ & !\EXP|rem[-4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~12_combout\,
	datab => \EXP|rem[-30]~57_combout\,
	datac => \EXP|rem[-4]~regout\,
	datad => \EXP|rem[-30]~69_combout\,
	combout => \EXP|rem[-30]~193_combout\);

-- Location: LCFF_X36_Y10_N29
\EXP|rem[-30]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-30]~48_combout\,
	aclr => \KEY~combout\(0),
	ena => \EXP|rem[-30]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-30]~_emulated_regout\);

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

-- Location: LCCOMB_X36_Y10_N16
\EXP|rem[-30]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~46_combout\ = (\KEY~combout\(0) & (\SW~combout\(1))) # (!\KEY~combout\(0) & ((\EXP|rem[-30]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \EXP|rem[-30]~46_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-30]~46_combout\);

-- Location: LCCOMB_X36_Y10_N18
\EXP|rem[-30]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~47_combout\ = (\KEY~combout\(0) & (\SW~combout\(1))) # (!\KEY~combout\(0) & ((\EXP|rem[-30]~_emulated_regout\ $ (\EXP|rem[-30]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \EXP|rem[-30]~_emulated_regout\,
	datac => \EXP|rem[-30]~46_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-30]~47_combout\);

-- Location: LCCOMB_X39_Y13_N18
\EXP|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~2_combout\ = (\EXP|rem[-29]~43_combout\ & (!\EXP|Add15~1\)) # (!\EXP|rem[-29]~43_combout\ & ((\EXP|Add15~1\) # (GND)))
-- \EXP|Add15~3\ = CARRY((!\EXP|Add15~1\) # (!\EXP|rem[-29]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-29]~43_combout\,
	datad => VCC,
	cin => \EXP|Add15~1\,
	combout => \EXP|Add15~2_combout\,
	cout => \EXP|Add15~3\);

-- Location: LCCOMB_X36_Y10_N4
\EXP|rem[-29]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-29]~44_combout\ = \EXP|rem[-29]~42_combout\ $ (((\EXP|Add15~2_combout\ & ((\EXP|rem\(2)) # (!\EXP|rem[-30]~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	datab => \EXP|rem[-29]~42_combout\,
	datac => \EXP|rem[-30]~207_combout\,
	datad => \EXP|Add15~2_combout\,
	combout => \EXP|rem[-29]~44_combout\);

-- Location: LCFF_X36_Y10_N5
\EXP|rem[-29]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-29]~44_combout\,
	aclr => \KEY~combout\(0),
	ena => \EXP|rem[-30]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-29]~_emulated_regout\);

-- Location: LCCOMB_X36_Y10_N26
\EXP|rem[-29]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-29]~43_combout\ = (\KEY~combout\(0) & (\SW~combout\(2))) # (!\KEY~combout\(0) & ((\EXP|rem[-29]~_emulated_regout\ $ (\EXP|rem[-29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \EXP|rem[-29]~_emulated_regout\,
	datac => \EXP|rem[-29]~42_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-29]~43_combout\);

-- Location: LCCOMB_X39_Y13_N20
\EXP|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~4_combout\ = (\EXP|rem[-28]~39_combout\ & ((GND) # (!\EXP|Add15~3\))) # (!\EXP|rem[-28]~39_combout\ & (\EXP|Add15~3\ $ (GND)))
-- \EXP|Add15~5\ = CARRY((\EXP|rem[-28]~39_combout\) # (!\EXP|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-28]~39_combout\,
	datad => VCC,
	cin => \EXP|Add15~3\,
	combout => \EXP|Add15~4_combout\,
	cout => \EXP|Add15~5\);

-- Location: LCCOMB_X33_Y12_N2
\EXP|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~0_combout\ = \EXP|rem[-28]~39_combout\ $ (VCC)
-- \EXP|Add11~1\ = CARRY(\EXP|rem[-28]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-28]~39_combout\,
	datad => VCC,
	combout => \EXP|Add11~0_combout\,
	cout => \EXP|Add11~1\);

-- Location: LCCOMB_X34_Y10_N8
\EXP|rem~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~190_combout\ = (\EXP|LessThan6~7_combout\ & (\EXP|Add9~0_combout\ & ((!\EXP|LessThan5~7_combout\)))) # (!\EXP|LessThan6~7_combout\ & (((\EXP|Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~0_combout\,
	datab => \EXP|Add11~0_combout\,
	datac => \EXP|LessThan5~7_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|rem~190_combout\);

-- Location: LCCOMB_X34_Y10_N6
\EXP|rem~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~191_combout\ = ((\EXP|LessThan4~9_combout\ & (\EXP|LessThan6~7_combout\ & \EXP|LessThan5~7_combout\))) # (!\EXP|LessThan7~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~9_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan5~7_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem~191_combout\);

-- Location: LCCOMB_X34_Y10_N24
\EXP|rem~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~192_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~190_combout\) # ((\EXP|rem[-28]~39_combout\ & \EXP|rem~191_combout\)))) # (!\EXP|LessThan7~13_combout\ & (((\EXP|rem[-28]~39_combout\ & \EXP|rem~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|rem~190_combout\,
	datac => \EXP|rem[-28]~39_combout\,
	datad => \EXP|rem~191_combout\,
	combout => \EXP|rem~192_combout\);

-- Location: LCCOMB_X34_Y10_N14
\EXP|rem[-28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-28]~40_combout\ = \EXP|rem[-28]~38_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~4_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~192_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-28]~38_combout\,
	datab => \EXP|Add15~4_combout\,
	datac => \EXP|rem[-30]~69_combout\,
	datad => \EXP|rem~192_combout\,
	combout => \EXP|rem[-28]~40_combout\);

-- Location: LCFF_X34_Y10_N15
\EXP|rem[-28]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-28]~40_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-28]~_emulated_regout\);

-- Location: LCCOMB_X34_Y10_N4
\EXP|rem[-28]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-28]~38_combout\ = (\KEY~combout\(0) & (\SW~combout\(3))) # (!\KEY~combout\(0) & ((\EXP|rem[-28]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \EXP|rem[-28]~38_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-28]~38_combout\);

-- Location: LCCOMB_X34_Y10_N16
\EXP|rem[-28]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-28]~39_combout\ = (\KEY~combout\(0) & (\SW~combout\(3))) # (!\KEY~combout\(0) & ((\EXP|rem[-28]~_emulated_regout\ $ (\EXP|rem[-28]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \EXP|rem[-28]~_emulated_regout\,
	datac => \EXP|rem[-28]~38_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-28]~39_combout\);

-- Location: LCCOMB_X39_Y13_N22
\EXP|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~6_combout\ = (\EXP|rem[-27]~35_combout\ & (\EXP|Add15~5\ & VCC)) # (!\EXP|rem[-27]~35_combout\ & (!\EXP|Add15~5\))
-- \EXP|Add15~7\ = CARRY((!\EXP|rem[-27]~35_combout\ & !\EXP|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-27]~35_combout\,
	datad => VCC,
	cin => \EXP|Add15~5\,
	combout => \EXP|Add15~6_combout\,
	cout => \EXP|Add15~7\);

-- Location: LCCOMB_X34_Y8_N4
\EXP|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~2_combout\ = (\EXP|rem[-27]~35_combout\ & (!\EXP|Add9~1\)) # (!\EXP|rem[-27]~35_combout\ & ((\EXP|Add9~1\) # (GND)))
-- \EXP|Add9~3\ = CARRY((!\EXP|Add9~1\) # (!\EXP|rem[-27]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datad => VCC,
	cin => \EXP|Add9~1\,
	combout => \EXP|Add9~2_combout\,
	cout => \EXP|Add9~3\);

-- Location: LCCOMB_X33_Y9_N8
\EXP|rem~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~197_combout\ = (\EXP|LessThan5~7_combout\ & (\EXP|rem[-27]~35_combout\ & (\EXP|LessThan4~9_combout\))) # (!\EXP|LessThan5~7_combout\ & (((\EXP|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datab => \EXP|LessThan4~9_combout\,
	datac => \EXP|Add9~2_combout\,
	datad => \EXP|LessThan5~7_combout\,
	combout => \EXP|rem~197_combout\);

-- Location: LCCOMB_X33_Y9_N14
\EXP|rem~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~198_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|LessThan6~7_combout\ & ((\EXP|rem~197_combout\))) # (!\EXP|LessThan6~7_combout\ & (\EXP|Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~2_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|rem~197_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem~198_combout\);

-- Location: LCCOMB_X33_Y9_N4
\EXP|rem~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~199_combout\ = (\EXP|rem~198_combout\) # ((\EXP|Add13~0_combout\ & !\EXP|LessThan7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add13~0_combout\,
	datac => \EXP|rem~198_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem~199_combout\);

-- Location: LCCOMB_X33_Y9_N30
\EXP|rem[-27]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-27]~36_combout\ = \EXP|rem[-27]~34_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~6_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~199_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~34_combout\,
	datab => \EXP|Add15~6_combout\,
	datac => \EXP|rem~199_combout\,
	datad => \EXP|rem[-30]~69_combout\,
	combout => \EXP|rem[-27]~36_combout\);

-- Location: LCFF_X33_Y9_N31
\EXP|rem[-27]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-27]~36_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-27]~_emulated_regout\);

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

-- Location: LCCOMB_X35_Y9_N20
\EXP|rem[-27]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-27]~34_combout\ = (\KEY~combout\(0) & (\SW~combout\(4))) # (!\KEY~combout\(0) & ((\EXP|rem[-27]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \EXP|rem[-27]~34_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-27]~34_combout\);

-- Location: LCCOMB_X36_Y9_N6
\EXP|rem[-27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-27]~35_combout\ = (\KEY~combout\(0) & (\SW~combout\(4))) # (!\KEY~combout\(0) & ((\EXP|rem[-27]~_emulated_regout\ $ (\EXP|rem[-27]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \EXP|rem[-27]~_emulated_regout\,
	datac => \EXP|rem[-27]~34_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-27]~35_combout\);

-- Location: LCCOMB_X34_Y8_N6
\EXP|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~4_combout\ = (\EXP|rem[-26]~31_combout\ & ((GND) # (!\EXP|Add9~3\))) # (!\EXP|rem[-26]~31_combout\ & (\EXP|Add9~3\ $ (GND)))
-- \EXP|Add9~5\ = CARRY((\EXP|rem[-26]~31_combout\) # (!\EXP|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-26]~31_combout\,
	datad => VCC,
	cin => \EXP|Add9~3\,
	combout => \EXP|Add9~4_combout\,
	cout => \EXP|Add9~5\);

-- Location: LCCOMB_X37_Y10_N6
\EXP|LessThan5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~8_combout\ = ((\EXP|LessThan5~6_combout\ & \EXP|LessThan5~5_combout\)) # (!\EXP|LessThan7~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~15_combout\,
	datab => \EXP|LessThan5~6_combout\,
	datac => \EXP|LessThan5~5_combout\,
	combout => \EXP|LessThan5~8_combout\);

-- Location: LCCOMB_X34_Y10_N2
\EXP|rem~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~194_combout\ = (\EXP|LessThan6~7_combout\ & (((\EXP|Add9~4_combout\ & \EXP|LessThan5~8_combout\)))) # (!\EXP|LessThan6~7_combout\ & (\EXP|Add11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~4_combout\,
	datab => \EXP|Add9~4_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|rem~194_combout\);

-- Location: LCCOMB_X35_Y10_N18
\EXP|rem[-23]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-23]~186_combout\ = (\EXP|LessThan6~7_combout\ & (\EXP|LessThan3~10_combout\ & !\EXP|LessThan5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan3~10_combout\,
	datad => \EXP|LessThan5~8_combout\,
	combout => \EXP|rem[-23]~186_combout\);

-- Location: LCCOMB_X34_Y10_N20
\EXP|rem~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~195_combout\ = (\EXP|rem~194_combout\ & ((\EXP|Add7~0_combout\) # ((!\EXP|rem[-23]~186_combout\)))) # (!\EXP|rem~194_combout\ & (((\EXP|Add5~0_combout\ & \EXP|rem[-23]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~0_combout\,
	datab => \EXP|rem~194_combout\,
	datac => \EXP|Add5~0_combout\,
	datad => \EXP|rem[-23]~186_combout\,
	combout => \EXP|rem~195_combout\);

-- Location: LCCOMB_X34_Y10_N10
\EXP|rem~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~196_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~195_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add13~2_combout\,
	datac => \EXP|rem~195_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem~196_combout\);

-- Location: LCCOMB_X34_Y10_N22
\EXP|rem[-26]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-26]~32_combout\ = \EXP|rem[-26]~30_combout\ $ (((\EXP|rem[-30]~69_combout\ & (\EXP|Add15~8_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~30_combout\,
	datab => \EXP|Add15~8_combout\,
	datac => \EXP|rem[-30]~69_combout\,
	datad => \EXP|rem~196_combout\,
	combout => \EXP|rem[-26]~32_combout\);

-- Location: LCFF_X34_Y10_N23
\EXP|rem[-26]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-26]~32_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-26]~_emulated_regout\);

-- Location: LCCOMB_X36_Y9_N12
\EXP|rem[-26]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-26]~31_combout\ = (\KEY~combout\(0) & (\SW~combout\(5))) # (!\KEY~combout\(0) & ((\EXP|rem[-26]~30_combout\ $ (\EXP|rem[-26]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \EXP|rem[-26]~30_combout\,
	datac => \KEY~combout\(0),
	datad => \EXP|rem[-26]~_emulated_regout\,
	combout => \EXP|rem[-26]~31_combout\);

-- Location: LCCOMB_X35_Y10_N8
\EXP|rem~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~187_combout\ = (\EXP|LessThan6~7_combout\ & (((\EXP|Add9~6_combout\ & \EXP|LessThan5~8_combout\)))) # (!\EXP|LessThan6~7_combout\ & (\EXP|Add11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~6_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add9~6_combout\,
	datad => \EXP|LessThan5~8_combout\,
	combout => \EXP|rem~187_combout\);

-- Location: LCCOMB_X35_Y10_N14
\EXP|rem~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~188_combout\ = (\EXP|rem~187_combout\ & (((\EXP|Add7~2_combout\) # (!\EXP|rem[-23]~186_combout\)))) # (!\EXP|rem~187_combout\ & (\EXP|Add5~2_combout\ & ((\EXP|rem[-23]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~2_combout\,
	datab => \EXP|Add7~2_combout\,
	datac => \EXP|rem~187_combout\,
	datad => \EXP|rem[-23]~186_combout\,
	combout => \EXP|rem~188_combout\);

-- Location: LCCOMB_X35_Y10_N24
\EXP|rem~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~189_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~188_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~4_combout\,
	datac => \EXP|rem~188_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem~189_combout\);

-- Location: LCCOMB_X35_Y10_N12
\EXP|rem[-25]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-25]~28_combout\ = \EXP|rem[-25]~26_combout\ $ (((\EXP|rem[-30]~69_combout\ & ((\EXP|Add15~10_combout\))) # (!\EXP|rem[-30]~69_combout\ & (\EXP|rem~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-25]~26_combout\,
	datab => \EXP|rem[-30]~69_combout\,
	datac => \EXP|rem~189_combout\,
	datad => \EXP|Add15~10_combout\,
	combout => \EXP|rem[-25]~28_combout\);

-- Location: LCFF_X35_Y10_N13
\EXP|rem[-25]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-25]~28_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-25]~_emulated_regout\);

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

-- Location: LCCOMB_X35_Y9_N6
\EXP|rem[-25]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-25]~26_combout\ = (\KEY~combout\(0) & ((\SW~combout\(6)))) # (!\KEY~combout\(0) & (\EXP|rem[-25]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-25]~26_combout\,
	datac => \SW~combout\(6),
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-25]~26_combout\);

-- Location: LCCOMB_X36_Y9_N2
\EXP|rem[-25]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-25]~27_combout\ = (\KEY~combout\(0) & (\SW~combout\(6))) # (!\KEY~combout\(0) & ((\EXP|rem[-25]~_emulated_regout\ $ (\EXP|rem[-25]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \EXP|rem[-25]~_emulated_regout\,
	datac => \EXP|rem[-25]~26_combout\,
	datad => \KEY~combout\(0),
	combout => \EXP|rem[-25]~27_combout\);

-- Location: LCCOMB_X33_Y12_N20
\EXP|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~18_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add11~17\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add11~17\))
-- \EXP|Add11~19\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add11~17\,
	combout => \EXP|Add11~18_combout\,
	cout => \EXP|Add11~19\);

-- Location: LCCOMB_X34_Y8_N20
\EXP|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~18_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add9~17\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add9~17\))
-- \EXP|Add9~19\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add9~17\,
	combout => \EXP|Add9~18_combout\,
	cout => \EXP|Add9~19\);

-- Location: LCCOMB_X33_Y8_N0
\EXP|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~1_cout\ = CARRY(\EXP|rem[-22]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datad => VCC,
	cout => \EXP|Add2~1_cout\);

-- Location: LCCOMB_X33_Y8_N2
\EXP|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~2_combout\ = (\EXP|rem[-21]~regout\ & (\EXP|Add2~1_cout\ & VCC)) # (!\EXP|rem[-21]~regout\ & (!\EXP|Add2~1_cout\))
-- \EXP|Add2~3\ = CARRY((!\EXP|rem[-21]~regout\ & !\EXP|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add2~1_cout\,
	combout => \EXP|Add2~2_combout\,
	cout => \EXP|Add2~3\);

-- Location: LCCOMB_X33_Y8_N6
\EXP|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~6_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add2~5\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add2~5\))
-- \EXP|Add2~7\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add2~5\,
	combout => \EXP|Add2~6_combout\,
	cout => \EXP|Add2~7\);

-- Location: LCCOMB_X38_Y9_N4
\EXP|rem~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~148_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~14_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~6_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Add4~6_combout\,
	datac => \EXP|Add5~14_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~148_combout\);

-- Location: LCCOMB_X37_Y12_N30
\EXP|rem~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~149_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~148_combout\ & ((\EXP|Add2~6_combout\))) # (!\EXP|rem~148_combout\ & (\EXP|Add0~2_combout\)))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~2_combout\,
	datab => \EXP|Calculate_Block.e[-3]~25_combout\,
	datac => \EXP|Add2~6_combout\,
	datad => \EXP|rem~148_combout\,
	combout => \EXP|rem~149_combout\);

-- Location: LCCOMB_X37_Y12_N0
\EXP|rem~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~150_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~18_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~149_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~8_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add9~18_combout\,
	datad => \EXP|rem~149_combout\,
	combout => \EXP|rem~150_combout\);

-- Location: LCCOMB_X37_Y12_N22
\EXP|rem~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~151_combout\ = (\EXP|rem~150_combout\ & ((\EXP|LessThan6~7_combout\) # (\EXP|Add11~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add11~18_combout\,
	datad => \EXP|rem~150_combout\,
	combout => \EXP|rem~151_combout\);

-- Location: LCCOMB_X37_Y12_N18
\EXP|rem[-19]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-19]~11_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~151_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~16_combout\,
	datad => \EXP|rem~151_combout\,
	combout => \EXP|rem[-19]~11_combout\);

-- Location: LCCOMB_X39_Y12_N6
\EXP|Add15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~22_combout\ = (\EXP|rem[-19]~regout\ & (\EXP|Add15~21\ & VCC)) # (!\EXP|rem[-19]~regout\ & (!\EXP|Add15~21\))
-- \EXP|Add15~23\ = CARRY((!\EXP|rem[-19]~regout\ & !\EXP|Add15~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-19]~regout\,
	datad => VCC,
	cin => \EXP|Add15~21\,
	combout => \EXP|Add15~22_combout\,
	cout => \EXP|Add15~23\);

-- Location: LCFF_X37_Y12_N19
\EXP|rem[-19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-19]~11_combout\,
	sdata => \EXP|Add15~22_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-19]~regout\);

-- Location: LCCOMB_X34_Y8_N22
\EXP|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~20_combout\ = (\EXP|rem[-18]~regout\ & ((GND) # (!\EXP|Add9~19\))) # (!\EXP|rem[-18]~regout\ & (\EXP|Add9~19\ $ (GND)))
-- \EXP|Add9~21\ = CARRY((\EXP|rem[-18]~regout\) # (!\EXP|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add9~19\,
	combout => \EXP|Add9~20_combout\,
	cout => \EXP|Add9~21\);

-- Location: LCCOMB_X36_Y7_N12
\EXP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~6_combout\ = (\EXP|rem[-17]~regout\ & (\EXP|Add0~5\ & VCC)) # (!\EXP|rem[-17]~regout\ & (!\EXP|Add0~5\))
-- \EXP|Add0~7\ = CARRY((!\EXP|rem[-17]~regout\ & !\EXP|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add0~5\,
	combout => \EXP|Add0~6_combout\,
	cout => \EXP|Add0~7\);

-- Location: LCCOMB_X37_Y9_N30
\EXP|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~11_combout\ = (\EXP|LessThan3~5_combout\) # (((\EXP|LessThan3~6_combout\ & \EXP|LessThan3~8_combout\)) # (!\EXP|rem[-30]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan3~6_combout\,
	datab => \EXP|LessThan3~5_combout\,
	datac => \EXP|rem[-30]~57_combout\,
	datad => \EXP|LessThan3~8_combout\,
	combout => \EXP|LessThan3~11_combout\);

-- Location: LCCOMB_X37_Y9_N12
\EXP|Calculate_Block.e[-3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~24_combout\ = (\EXP|rem[-2]~regout\) # (((\EXP|LessThan3~3_combout\ & \EXP|LessThan3~11_combout\)) # (!\EXP|rem[2]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-2]~regout\,
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|LessThan3~3_combout\,
	datad => \EXP|LessThan3~11_combout\,
	combout => \EXP|Calculate_Block.e[-3]~24_combout\);

-- Location: LCCOMB_X38_Y12_N2
\EXP|rem~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~177_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add5~18_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add4~10_combout\ & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~18_combout\,
	datab => \EXP|Add4~10_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~177_combout\);

-- Location: LCCOMB_X38_Y12_N12
\EXP|rem~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~178_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~177_combout\ & (\EXP|Add2~10_combout\)) # (!\EXP|rem~177_combout\ & ((\EXP|Add0~6_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~10_combout\,
	datab => \EXP|Add0~6_combout\,
	datac => \EXP|Calculate_Block.e[-3]~25_combout\,
	datad => \EXP|rem~177_combout\,
	combout => \EXP|rem~178_combout\);

-- Location: LCCOMB_X38_Y12_N6
\EXP|rem~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~179_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~22_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~178_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|Add9~22_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~178_combout\,
	combout => \EXP|rem~179_combout\);

-- Location: LCCOMB_X34_Y12_N28
\EXP|rem~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~180_combout\ = (\EXP|rem~179_combout\ & ((\EXP|Add11~22_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~22_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|rem~179_combout\,
	combout => \EXP|rem~180_combout\);

-- Location: LCCOMB_X34_Y12_N8
\EXP|rem[-17]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-17]~9_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~180_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~20_combout\,
	datad => \EXP|rem~180_combout\,
	combout => \EXP|rem[-17]~9_combout\);

-- Location: LCCOMB_X39_Y12_N8
\EXP|Add15~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~24_combout\ = (\EXP|rem[-18]~regout\ & ((GND) # (!\EXP|Add15~23\))) # (!\EXP|rem[-18]~regout\ & (\EXP|Add15~23\ $ (GND)))
-- \EXP|Add15~25\ = CARRY((\EXP|rem[-18]~regout\) # (!\EXP|Add15~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add15~23\,
	combout => \EXP|Add15~24_combout\,
	cout => \EXP|Add15~25\);

-- Location: LCCOMB_X39_Y12_N10
\EXP|Add15~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~26_combout\ = (\EXP|rem[-17]~regout\ & (\EXP|Add15~25\ & VCC)) # (!\EXP|rem[-17]~regout\ & (!\EXP|Add15~25\))
-- \EXP|Add15~27\ = CARRY((!\EXP|rem[-17]~regout\ & !\EXP|Add15~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-17]~regout\,
	datad => VCC,
	cin => \EXP|Add15~25\,
	combout => \EXP|Add15~26_combout\,
	cout => \EXP|Add15~27\);

-- Location: LCFF_X34_Y12_N9
\EXP|rem[-17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-17]~9_combout\,
	sdata => \EXP|Add15~26_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-17]~regout\);

-- Location: LCCOMB_X36_Y10_N12
\EXP|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~0_combout\ = (\EXP|rem[-27]~35_combout\ & ((\EXP|rem[-31]~51_combout\) # ((\EXP|rem[-30]~47_combout\) # (\EXP|rem[-29]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-31]~51_combout\,
	datab => \EXP|rem[-30]~47_combout\,
	datac => \EXP|rem[-29]~43_combout\,
	datad => \EXP|rem[-27]~35_combout\,
	combout => \EXP|LessThan5~0_combout\);

-- Location: LCCOMB_X37_Y10_N12
\EXP|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~2_combout\ = (\EXP|LessThan3~1_combout\ & ((\EXP|rem[-26]~31_combout\) # ((\EXP|rem[-28]~39_combout\ & \EXP|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-26]~31_combout\,
	datab => \EXP|rem[-28]~39_combout\,
	datac => \EXP|LessThan3~1_combout\,
	datad => \EXP|LessThan5~0_combout\,
	combout => \EXP|LessThan5~2_combout\);

-- Location: LCCOMB_X37_Y10_N30
\EXP|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~3_combout\ = (\EXP|rem[-22]~15_combout\) # ((\EXP|rem[-21]~regout\) # ((\EXP|LessThan5~2_combout\) # (!\EXP|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datab => \EXP|rem[-21]~regout\,
	datac => \EXP|LessThan8~1_combout\,
	datad => \EXP|LessThan5~2_combout\,
	combout => \EXP|LessThan5~3_combout\);

-- Location: LCCOMB_X37_Y10_N28
\EXP|LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~4_combout\ = (\EXP|rem[-16]~regout\ & (\EXP|rem[-17]~regout\ & (\EXP|rem[-15]~regout\ & \EXP|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-16]~regout\,
	datab => \EXP|rem[-17]~regout\,
	datac => \EXP|rem[-15]~regout\,
	datad => \EXP|LessThan5~3_combout\,
	combout => \EXP|LessThan5~4_combout\);

-- Location: LCCOMB_X37_Y10_N14
\EXP|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan5~5_combout\ = (\EXP|LessThan5~1_combout\) # ((\EXP|rem[-12]~regout\ & ((\EXP|LessThan5~4_combout\) # (!\EXP|LessThan7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~11_combout\,
	datab => \EXP|rem[-12]~regout\,
	datac => \EXP|LessThan5~1_combout\,
	datad => \EXP|LessThan5~4_combout\,
	combout => \EXP|LessThan5~5_combout\);

-- Location: LCCOMB_X37_Y10_N16
\EXP|rem[2]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[2]~72_combout\ = (((\EXP|LessThan5~5_combout\ & \EXP|LessThan5~6_combout\)) # (!\EXP|LessThan7~14_combout\)) # (!\EXP|rem[2]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~68_combout\,
	datab => \EXP|LessThan7~14_combout\,
	datac => \EXP|LessThan5~5_combout\,
	datad => \EXP|LessThan5~6_combout\,
	combout => \EXP|rem[2]~72_combout\);

-- Location: LCCOMB_X38_Y9_N6
\EXP|rem~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~74_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~40_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(5))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~68_combout\,
	datab => \EXP|LessThan2~7_combout\,
	datac => \SW~combout\(5),
	datad => \EXP|Add4~40_combout\,
	combout => \EXP|rem~74_combout\);

-- Location: LCCOMB_X39_Y7_N10
\EXP|rem~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~75_combout\ = (\EXP|rem[2]~72_combout\ & (((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & ((\EXP|rem[2]~73_combout\ & (\EXP|Add7~48_combout\)) # (!\EXP|rem[2]~73_combout\ & ((\EXP|rem~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~48_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|rem~74_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~75_combout\);

-- Location: LCCOMB_X39_Y7_N24
\EXP|rem~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~76_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem~75_combout\ & ((\EXP|Add9~52_combout\))) # (!\EXP|rem~75_combout\ & (\EXP|Add5~48_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~48_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|Add9~52_combout\,
	datad => \EXP|rem~75_combout\,
	combout => \EXP|rem~76_combout\);

-- Location: LCCOMB_X39_Y11_N28
\EXP|rem~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~77_combout\ = (\EXP|rem[2]~71_combout\ & ((\EXP|Add13~50_combout\) # ((\EXP|rem[2]~70_combout\)))) # (!\EXP|rem[2]~71_combout\ & (((!\EXP|rem[2]~70_combout\ & \EXP|rem~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~50_combout\,
	datab => \EXP|rem[2]~71_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem~76_combout\,
	combout => \EXP|rem~77_combout\);

-- Location: LCCOMB_X39_Y11_N26
\EXP|rem~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~78_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|rem~77_combout\ & ((\EXP|Add15~56_combout\))) # (!\EXP|rem~77_combout\ & (\EXP|Add11~52_combout\)))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~52_combout\,
	datab => \EXP|rem[2]~70_combout\,
	datac => \EXP|Add15~56_combout\,
	datad => \EXP|rem~77_combout\,
	combout => \EXP|rem~78_combout\);

-- Location: LCFF_X39_Y11_N27
\EXP|rem[-2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~78_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-2]~regout\);

-- Location: LCCOMB_X38_Y7_N14
\EXP|Add13~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~44_combout\ = (\EXP|rem[-5]~regout\ & ((GND) # (!\EXP|Add13~43\))) # (!\EXP|rem[-5]~regout\ & (\EXP|Add13~43\ $ (GND)))
-- \EXP|Add13~45\ = CARRY((\EXP|rem[-5]~regout\) # (!\EXP|Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add13~43\,
	combout => \EXP|Add13~44_combout\,
	cout => \EXP|Add13~45\);

-- Location: LCCOMB_X38_Y7_N22
\EXP|Add13~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~52_combout\ = (\EXP|rem[-1]~regout\ & ((GND) # (!\EXP|Add13~51\))) # (!\EXP|rem[-1]~regout\ & (\EXP|Add13~51\ $ (GND)))
-- \EXP|Add13~53\ = CARRY((\EXP|rem[-1]~regout\) # (!\EXP|Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add13~51\,
	combout => \EXP|Add13~52_combout\,
	cout => \EXP|Add13~53\);

-- Location: LCCOMB_X40_Y8_N22
\EXP|Add7~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~50_combout\ = (\EXP|rem[-1]~regout\ & (\EXP|Add7~49\ & VCC)) # (!\EXP|rem[-1]~regout\ & (!\EXP|Add7~49\))
-- \EXP|Add7~51\ = CARRY((!\EXP|rem[-1]~regout\ & !\EXP|Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add7~49\,
	combout => \EXP|Add7~50_combout\,
	cout => \EXP|Add7~51\);

-- Location: LCCOMB_X38_Y10_N28
\EXP|rem~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~94_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~42_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(6))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~68_combout\,
	datab => \SW~combout\(6),
	datac => \EXP|LessThan2~7_combout\,
	datad => \EXP|Add4~42_combout\,
	combout => \EXP|rem~94_combout\);

-- Location: LCCOMB_X39_Y10_N18
\EXP|rem~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~95_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|Add5~50_combout\) # ((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((!\EXP|rem[2]~73_combout\ & \EXP|rem~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~50_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|rem[2]~73_combout\,
	datad => \EXP|rem~94_combout\,
	combout => \EXP|rem~95_combout\);

-- Location: LCCOMB_X39_Y10_N12
\EXP|rem~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~96_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem~95_combout\ & ((\EXP|Add9~54_combout\))) # (!\EXP|rem~95_combout\ & (\EXP|Add7~50_combout\)))) # (!\EXP|rem[2]~73_combout\ & (((\EXP|rem~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~73_combout\,
	datab => \EXP|Add7~50_combout\,
	datac => \EXP|Add9~54_combout\,
	datad => \EXP|rem~95_combout\,
	combout => \EXP|rem~96_combout\);

-- Location: LCCOMB_X39_Y10_N22
\EXP|rem~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~97_combout\ = (\EXP|rem[2]~71_combout\ & (((\EXP|rem[2]~70_combout\)))) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem[2]~70_combout\ & (\EXP|Add11~54_combout\)) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~54_combout\,
	datab => \EXP|rem[2]~71_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem~96_combout\,
	combout => \EXP|rem~97_combout\);

-- Location: LCCOMB_X39_Y10_N8
\EXP|rem~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~98_combout\ = (\EXP|rem[2]~71_combout\ & ((\EXP|rem~97_combout\ & (\EXP|Add15~58_combout\)) # (!\EXP|rem~97_combout\ & ((\EXP|Add13~52_combout\))))) # (!\EXP|rem[2]~71_combout\ & (((\EXP|rem~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~58_combout\,
	datab => \EXP|rem[2]~71_combout\,
	datac => \EXP|Add13~52_combout\,
	datad => \EXP|rem~97_combout\,
	combout => \EXP|rem~98_combout\);

-- Location: LCFF_X39_Y10_N9
\EXP|rem[-1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~98_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-1]~regout\);

-- Location: LCCOMB_X33_Y11_N18
\EXP|Add11~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~48_combout\ = (\EXP|rem[-4]~regout\ & ((GND) # (!\EXP|Add11~47\))) # (!\EXP|rem[-4]~regout\ & (\EXP|Add11~47\ $ (GND)))
-- \EXP|Add11~49\ = CARRY((\EXP|rem[-4]~regout\) # (!\EXP|Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add11~47\,
	combout => \EXP|Add11~48_combout\,
	cout => \EXP|Add11~49\);

-- Location: LCCOMB_X33_Y11_N28
\EXP|Add11~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~58_combout\ = (\EXP|rem\(1) & (\EXP|Add11~57\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add11~57\))
-- \EXP|Add11~59\ = CARRY((!\EXP|rem\(1) & !\EXP|Add11~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add11~57\,
	combout => \EXP|Add11~58_combout\,
	cout => \EXP|Add11~59\);

-- Location: LCCOMB_X34_Y7_N28
\EXP|Add9~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~58_combout\ = (\EXP|rem\(1) & (\EXP|Add9~57\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add9~57\))
-- \EXP|Add9~59\ = CARRY((!\EXP|rem\(1) & !\EXP|Add9~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add9~57\,
	combout => \EXP|Add9~58_combout\,
	cout => \EXP|Add9~59\);

-- Location: LCCOMB_X35_Y7_N26
\EXP|Add5~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~54_combout\ = (\EXP|rem\(1) & (\EXP|Add5~53\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add5~53\))
-- \EXP|Add5~55\ = CARRY((!\EXP|rem\(1) & !\EXP|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add5~53\,
	combout => \EXP|Add5~54_combout\,
	cout => \EXP|Add5~55\);

-- Location: LCCOMB_X39_Y8_N22
\EXP|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~46_combout\ = (\EXP|rem\(1) & (\EXP|Add4~45\ & VCC)) # (!\EXP|rem\(1) & (!\EXP|Add4~45\))
-- \EXP|Add4~47\ = CARRY((!\EXP|rem\(1) & !\EXP|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(1),
	datad => VCC,
	cin => \EXP|Add4~45\,
	combout => \EXP|Add4~46_combout\,
	cout => \EXP|Add4~47\);

-- Location: LCCOMB_X37_Y7_N26
\EXP|rem~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~84_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~46_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(8))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|LessThan2~7_combout\,
	datad => \EXP|Add4~46_combout\,
	combout => \EXP|rem~84_combout\);

-- Location: LCCOMB_X37_Y10_N0
\EXP|rem~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~85_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem[2]~73_combout\) # ((\EXP|Add5~54_combout\)))) # (!\EXP|rem[2]~72_combout\ & (!\EXP|rem[2]~73_combout\ & ((\EXP|rem~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|rem[2]~73_combout\,
	datac => \EXP|Add5~54_combout\,
	datad => \EXP|rem~84_combout\,
	combout => \EXP|rem~85_combout\);

-- Location: LCCOMB_X37_Y10_N10
\EXP|rem~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~86_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem~85_combout\ & ((\EXP|Add9~58_combout\))) # (!\EXP|rem~85_combout\ & (\EXP|Add7~54_combout\)))) # (!\EXP|rem[2]~73_combout\ & (((\EXP|rem~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add7~54_combout\,
	datab => \EXP|rem[2]~73_combout\,
	datac => \EXP|Add9~58_combout\,
	datad => \EXP|rem~85_combout\,
	combout => \EXP|rem~86_combout\);

-- Location: LCCOMB_X38_Y10_N2
\EXP|rem~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~87_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|Add11~58_combout\) # ((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & (((!\EXP|rem[2]~71_combout\ & \EXP|rem~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~70_combout\,
	datab => \EXP|Add11~58_combout\,
	datac => \EXP|rem[2]~71_combout\,
	datad => \EXP|rem~86_combout\,
	combout => \EXP|rem~87_combout\);

-- Location: LCCOMB_X38_Y10_N8
\EXP|rem~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~88_combout\ = (\EXP|rem[2]~71_combout\ & ((\EXP|rem~87_combout\ & ((\EXP|Add15~62_combout\))) # (!\EXP|rem~87_combout\ & (\EXP|Add13~56_combout\)))) # (!\EXP|rem[2]~71_combout\ & (((\EXP|rem~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~71_combout\,
	datab => \EXP|Add13~56_combout\,
	datac => \EXP|Add15~62_combout\,
	datad => \EXP|rem~87_combout\,
	combout => \EXP|rem~88_combout\);

-- Location: LCFF_X38_Y10_N9
\EXP|rem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~88_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem\(1));

-- Location: LCCOMB_X38_Y10_N22
\EXP|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan3~0_combout\ = (!\EXP|rem\(1) & (!\EXP|rem[-1]~regout\ & !\EXP|rem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(1),
	datac => \EXP|rem[-1]~regout\,
	datad => \EXP|rem\(0),
	combout => \EXP|LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y10_N24
\EXP|rem[2]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[2]~71_combout\ = ((!\EXP|LessThan7~13_combout\) # (!\EXP|LessThan8~8_combout\)) # (!\EXP|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan3~0_combout\,
	datac => \EXP|LessThan8~8_combout\,
	datad => \EXP|LessThan7~13_combout\,
	combout => \EXP|rem[2]~71_combout\);

-- Location: LCCOMB_X33_Y11_N4
\EXP|Add11~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~34_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|Add11~33\ & VCC)) # (!\EXP|rem[-11]~regout\ & (!\EXP|Add11~33\))
-- \EXP|Add11~35\ = CARRY((!\EXP|rem[-11]~regout\ & !\EXP|Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add11~33\,
	combout => \EXP|Add11~34_combout\,
	cout => \EXP|Add11~35\);

-- Location: LCCOMB_X33_Y11_N6
\EXP|Add11~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~36_combout\ = (\EXP|rem[-10]~regout\ & (\EXP|Add11~35\ $ (GND))) # (!\EXP|rem[-10]~regout\ & (!\EXP|Add11~35\ & VCC))
-- \EXP|Add11~37\ = CARRY((\EXP|rem[-10]~regout\ & !\EXP|Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add11~35\,
	combout => \EXP|Add11~36_combout\,
	cout => \EXP|Add11~37\);

-- Location: LCCOMB_X33_Y11_N8
\EXP|Add11~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~38_combout\ = (\EXP|rem[-9]~regout\ & (!\EXP|Add11~37\)) # (!\EXP|rem[-9]~regout\ & ((\EXP|Add11~37\) # (GND)))
-- \EXP|Add11~39\ = CARRY((!\EXP|Add11~37\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add11~37\,
	combout => \EXP|Add11~38_combout\,
	cout => \EXP|Add11~39\);

-- Location: LCCOMB_X33_Y11_N12
\EXP|Add11~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~42_combout\ = (\EXP|rem[-7]~regout\ & (!\EXP|Add11~41\)) # (!\EXP|rem[-7]~regout\ & ((\EXP|Add11~41\) # (GND)))
-- \EXP|Add11~43\ = CARRY((!\EXP|Add11~41\) # (!\EXP|rem[-7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-7]~regout\,
	datad => VCC,
	cin => \EXP|Add11~41\,
	combout => \EXP|Add11~42_combout\,
	cout => \EXP|Add11~43\);

-- Location: LCCOMB_X38_Y10_N4
\EXP|rem~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~127_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~30_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(0))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|LessThan2~7_combout\,
	datad => \EXP|Add4~30_combout\,
	combout => \EXP|rem~127_combout\);

-- Location: LCCOMB_X38_Y10_N14
\EXP|rem~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~128_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|Add5~38_combout\) # ((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~127_combout\ & !\EXP|rem[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~38_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|rem~127_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~128_combout\);

-- Location: LCCOMB_X38_Y10_N20
\EXP|rem~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~129_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem~128_combout\ & ((\EXP|Add9~42_combout\))) # (!\EXP|rem~128_combout\ & (\EXP|Add7~38_combout\)))) # (!\EXP|rem[2]~73_combout\ & (((\EXP|rem~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~73_combout\,
	datab => \EXP|Add7~38_combout\,
	datac => \EXP|rem~128_combout\,
	datad => \EXP|Add9~42_combout\,
	combout => \EXP|rem~129_combout\);

-- Location: LCCOMB_X38_Y10_N18
\EXP|rem~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~130_combout\ = (\EXP|rem[2]~71_combout\ & (((\EXP|rem[2]~70_combout\)))) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem[2]~70_combout\ & (\EXP|Add11~42_combout\)) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~71_combout\,
	datab => \EXP|Add11~42_combout\,
	datac => \EXP|rem~129_combout\,
	datad => \EXP|rem[2]~70_combout\,
	combout => \EXP|rem~130_combout\);

-- Location: LCCOMB_X38_Y10_N6
\EXP|rem~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~131_combout\ = (\EXP|rem[2]~71_combout\ & ((\EXP|rem~130_combout\ & (\EXP|Add15~46_combout\)) # (!\EXP|rem~130_combout\ & ((\EXP|Add13~40_combout\))))) # (!\EXP|rem[2]~71_combout\ & (((\EXP|rem~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~46_combout\,
	datab => \EXP|Add13~40_combout\,
	datac => \EXP|rem[2]~71_combout\,
	datad => \EXP|rem~130_combout\,
	combout => \EXP|rem~131_combout\);

-- Location: LCFF_X38_Y10_N7
\EXP|rem[-7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~131_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-7]~regout\);

-- Location: LCCOMB_X33_Y9_N24
\EXP|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~6_combout\ = (\EXP|rem[-13]~regout\ & (\EXP|rem[-12]~regout\ & \EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datac => \EXP|rem[-12]~regout\,
	datad => \EXP|rem[-11]~regout\,
	combout => \EXP|LessThan8~6_combout\);

-- Location: LCCOMB_X35_Y10_N4
\EXP|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~0_combout\ = (!\EXP|rem[-15]~regout\ & (!\EXP|rem[-16]~regout\ & !\EXP|rem[-17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datac => \EXP|rem[-16]~regout\,
	datad => \EXP|rem[-17]~regout\,
	combout => \EXP|LessThan8~0_combout\);

-- Location: LCCOMB_X36_Y10_N24
\EXP|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~2_combout\ = (\EXP|rem[-26]~31_combout\) # ((\EXP|rem[-31]~51_combout\ & (\EXP|rem[-30]~47_combout\ & \EXP|rem[-29]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-31]~51_combout\,
	datab => \EXP|rem[-30]~47_combout\,
	datac => \EXP|rem[-26]~31_combout\,
	datad => \EXP|rem[-29]~43_combout\,
	combout => \EXP|LessThan8~2_combout\);

-- Location: LCCOMB_X34_Y10_N12
\EXP|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~3_combout\ = (\EXP|rem[-25]~27_combout\ & ((\EXP|rem[-28]~39_combout\) # ((\EXP|rem[-27]~35_combout\) # (\EXP|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-28]~39_combout\,
	datab => \EXP|rem[-25]~27_combout\,
	datac => \EXP|rem[-27]~35_combout\,
	datad => \EXP|LessThan8~2_combout\,
	combout => \EXP|LessThan8~3_combout\);

-- Location: LCCOMB_X34_Y10_N18
\EXP|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~4_combout\ = (\EXP|rem[-22]~15_combout\) # ((\EXP|rem[-23]~19_combout\ & ((\EXP|rem[-24]~23_combout\) # (\EXP|LessThan8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-23]~19_combout\,
	datab => \EXP|rem[-24]~23_combout\,
	datac => \EXP|rem[-22]~15_combout\,
	datad => \EXP|LessThan8~3_combout\,
	combout => \EXP|LessThan8~4_combout\);

-- Location: LCCOMB_X34_Y10_N28
\EXP|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~5_combout\ = (((\EXP|rem[-21]~regout\ & \EXP|LessThan8~4_combout\)) # (!\EXP|LessThan8~1_combout\)) # (!\EXP|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-21]~regout\,
	datab => \EXP|LessThan8~0_combout\,
	datac => \EXP|LessThan8~1_combout\,
	datad => \EXP|LessThan8~4_combout\,
	combout => \EXP|LessThan8~5_combout\);

-- Location: LCCOMB_X33_Y10_N2
\EXP|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~7_combout\ = (\EXP|LessThan6~0_combout\ & (\EXP|LessThan8~6_combout\ & (\EXP|rem[-14]~regout\ & \EXP|LessThan8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~0_combout\,
	datab => \EXP|LessThan8~6_combout\,
	datac => \EXP|rem[-14]~regout\,
	datad => \EXP|LessThan8~5_combout\,
	combout => \EXP|LessThan8~7_combout\);

-- Location: LCCOMB_X33_Y10_N20
\EXP|LessThan8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan8~8_combout\ = (\EXP|rem[-30]~57_combout\ & (!\EXP|rem[-7]~regout\ & (\EXP|LessThan7~14_combout\ & !\EXP|LessThan8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-30]~57_combout\,
	datab => \EXP|rem[-7]~regout\,
	datac => \EXP|LessThan7~14_combout\,
	datad => \EXP|LessThan8~7_combout\,
	combout => \EXP|LessThan8~8_combout\);

-- Location: LCCOMB_X38_Y10_N30
\EXP|rem[2]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[2]~70_combout\ = (!\EXP|rem[2]~68_combout\) # (!\EXP|LessThan8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|LessThan8~8_combout\,
	datad => \EXP|rem[2]~68_combout\,
	combout => \EXP|rem[2]~70_combout\);

-- Location: LCCOMB_X33_Y11_N30
\EXP|Add11~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~60_combout\ = \EXP|Add11~59\ $ (\EXP|rem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem\(2),
	cin => \EXP|Add11~59\,
	combout => \EXP|Add11~60_combout\);

-- Location: LCCOMB_X35_Y7_N28
\EXP|Add5~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add5~56_combout\ = \EXP|rem\(2) $ (\EXP|Add5~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	cin => \EXP|Add5~55\,
	combout => \EXP|Add5~56_combout\);

-- Location: LCCOMB_X40_Y8_N28
\EXP|Add7~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add7~56_combout\ = \EXP|Add7~55\ $ (\EXP|rem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem\(2),
	cin => \EXP|Add7~55\,
	combout => \EXP|Add7~56_combout\);

-- Location: LCCOMB_X39_Y8_N24
\EXP|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add4~48_combout\ = \EXP|rem\(2) $ (\EXP|Add4~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	cin => \EXP|Add4~47\,
	combout => \EXP|Add4~48_combout\);

-- Location: LCCOMB_X39_Y10_N10
\EXP|rem~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~114_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~48_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(9))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|Add4~48_combout\,
	datad => \EXP|LessThan2~7_combout\,
	combout => \EXP|rem~114_combout\);

-- Location: LCCOMB_X39_Y10_N24
\EXP|rem~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~115_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem[2]~72_combout\) # ((\EXP|Add7~56_combout\)))) # (!\EXP|rem[2]~73_combout\ & (!\EXP|rem[2]~72_combout\ & ((\EXP|rem~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~73_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|Add7~56_combout\,
	datad => \EXP|rem~114_combout\,
	combout => \EXP|rem~115_combout\);

-- Location: LCCOMB_X34_Y7_N30
\EXP|Add9~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add9~60_combout\ = \EXP|Add9~59\ $ (\EXP|rem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem\(2),
	cin => \EXP|Add9~59\,
	combout => \EXP|Add9~60_combout\);

-- Location: LCCOMB_X39_Y10_N14
\EXP|rem~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~116_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem~115_combout\ & ((\EXP|Add9~60_combout\))) # (!\EXP|rem~115_combout\ & (\EXP|Add5~56_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|Add5~56_combout\,
	datac => \EXP|rem~115_combout\,
	datad => \EXP|Add9~60_combout\,
	combout => \EXP|rem~116_combout\);

-- Location: LCCOMB_X39_Y10_N28
\EXP|rem~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~117_combout\ = (\EXP|rem[2]~70_combout\ & (((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem[2]~71_combout\ & (\EXP|Add13~58_combout\)) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~58_combout\,
	datab => \EXP|rem[2]~70_combout\,
	datac => \EXP|rem~116_combout\,
	datad => \EXP|rem[2]~71_combout\,
	combout => \EXP|rem~117_combout\);

-- Location: LCCOMB_X39_Y10_N30
\EXP|rem~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~118_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|rem~117_combout\ & (\EXP|Add15~64_combout\)) # (!\EXP|rem~117_combout\ & ((\EXP|Add11~60_combout\))))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~64_combout\,
	datab => \EXP|rem[2]~70_combout\,
	datac => \EXP|Add11~60_combout\,
	datad => \EXP|rem~117_combout\,
	combout => \EXP|rem~118_combout\);

-- Location: LCFF_X39_Y10_N31
\EXP|rem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~118_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem\(2));

-- Location: LCCOMB_X36_Y10_N6
\EXP|rem[-30]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-30]~69_combout\ = (\EXP|rem\(2)) # ((!\EXP|LessThan8~8_combout\) # (!\EXP|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem\(2),
	datac => \EXP|LessThan3~0_combout\,
	datad => \EXP|LessThan8~8_combout\,
	combout => \EXP|rem[-30]~69_combout\);

-- Location: LCCOMB_X36_Y11_N26
\EXP|Calculate_Block.e[-4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~17_combout\ = (\EXP|LessThan7~12_combout\) # (((!\EXP|LessThan6~7_combout\) # (!\EXP|rem[-30]~57_combout\)) # (!\EXP|LessThan7~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~12_combout\,
	datab => \EXP|LessThan7~15_combout\,
	datac => \EXP|rem[-30]~57_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|Calculate_Block.e[-4]~17_combout\);

-- Location: LCCOMB_X38_Y8_N14
\EXP|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~12_combout\ = (\EXP|rem[-21]~regout\ & ((GND) # (!\EXP|Add13~11\))) # (!\EXP|rem[-21]~regout\ & (\EXP|Add13~11\ $ (GND)))
-- \EXP|Add13~13\ = CARRY((\EXP|rem[-21]~regout\) # (!\EXP|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-21]~regout\,
	datad => VCC,
	cin => \EXP|Add13~11\,
	combout => \EXP|Add13~12_combout\,
	cout => \EXP|Add13~13\);

-- Location: LCCOMB_X35_Y9_N22
\EXP|LessThan7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~16_combout\ = (\EXP|rem[-14]~regout\) # ((\EXP|rem[-13]~regout\) # (!\EXP|LessThan8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datab => \EXP|rem[-13]~regout\,
	datad => \EXP|LessThan8~0_combout\,
	combout => \EXP|LessThan7~16_combout\);

-- Location: LCCOMB_X35_Y10_N26
\EXP|LessThan7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~8_combout\ = (\EXP|rem[-23]~19_combout\ & \EXP|rem[-24]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|rem[-23]~19_combout\,
	datad => \EXP|rem[-24]~23_combout\,
	combout => \EXP|LessThan7~8_combout\);

-- Location: LCCOMB_X37_Y11_N4
\EXP|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~7_combout\ = (\EXP|rem[-25]~27_combout\) # ((\EXP|rem[-27]~35_combout\ & (\EXP|LessThan0~0_combout\ & \EXP|rem[-26]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-27]~35_combout\,
	datab => \EXP|rem[-25]~27_combout\,
	datac => \EXP|LessThan0~0_combout\,
	datad => \EXP|rem[-26]~31_combout\,
	combout => \EXP|LessThan7~7_combout\);

-- Location: LCCOMB_X36_Y11_N2
\EXP|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~9_combout\ = (\EXP|rem[-22]~15_combout\) # ((\EXP|rem[-21]~regout\) # ((\EXP|LessThan7~8_combout\ & \EXP|LessThan7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-22]~15_combout\,
	datab => \EXP|rem[-21]~regout\,
	datac => \EXP|LessThan7~8_combout\,
	datad => \EXP|LessThan7~7_combout\,
	combout => \EXP|LessThan7~9_combout\);

-- Location: LCCOMB_X36_Y11_N0
\EXP|LessThan7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~10_combout\ = (\EXP|rem[-18]~regout\ & ((\EXP|rem[-19]~regout\) # ((\EXP|rem[-20]~regout\ & \EXP|LessThan7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-18]~regout\,
	datab => \EXP|rem[-19]~regout\,
	datac => \EXP|rem[-20]~regout\,
	datad => \EXP|LessThan7~9_combout\,
	combout => \EXP|LessThan7~10_combout\);

-- Location: LCCOMB_X36_Y11_N6
\EXP|LessThan7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~12_combout\ = (\EXP|rem[-12]~regout\ & (\EXP|LessThan7~6_combout\ & ((\EXP|LessThan7~16_combout\) # (\EXP|LessThan7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-12]~regout\,
	datab => \EXP|LessThan7~16_combout\,
	datac => \EXP|LessThan7~6_combout\,
	datad => \EXP|LessThan7~10_combout\,
	combout => \EXP|LessThan7~12_combout\);

-- Location: LCCOMB_X36_Y11_N16
\EXP|Calculate_Block.e[-4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~16_combout\ = (((\EXP|LessThan7~12_combout\) # (!\EXP|rem[-30]~57_combout\)) # (!\EXP|LessThan7~14_combout\)) # (!\EXP|rem[2]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~68_combout\,
	datab => \EXP|LessThan7~14_combout\,
	datac => \EXP|rem[-30]~57_combout\,
	datad => \EXP|LessThan7~12_combout\,
	combout => \EXP|Calculate_Block.e[-4]~16_combout\);

-- Location: LCCOMB_X36_Y11_N20
\EXP|Calculate_Block.e[-4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~19_combout\ = (!\EXP|LessThan4~9_combout\ & (\EXP|rem[2]~68_combout\ & (!\EXP|Calculate_Block.e[-3]~18_combout\ & !\EXP|LessThan3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~9_combout\,
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|Calculate_Block.e[-3]~18_combout\,
	datad => \EXP|LessThan3~10_combout\,
	combout => \EXP|Calculate_Block.e[-4]~19_combout\);

-- Location: LCCOMB_X36_Y11_N8
\EXP|Calculate_Block.e[-4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~21_combout\ = (\EXP|LessThan4~9_combout\) # (((\EXP|LessThan2~7_combout\ & !\EXP|LessThan3~10_combout\)) # (!\EXP|rem[2]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~9_combout\,
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|LessThan2~7_combout\,
	datad => \EXP|LessThan3~10_combout\,
	combout => \EXP|Calculate_Block.e[-4]~21_combout\);

-- Location: LCCOMB_X36_Y11_N22
\EXP|Calculate_Block.e[-4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~20_combout\ = (!\EXP|LessThan4~9_combout\ & (\EXP|rem[2]~68_combout\ & !\EXP|LessThan3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan4~9_combout\,
	datab => \EXP|rem[2]~68_combout\,
	datad => \EXP|LessThan3~10_combout\,
	combout => \EXP|Calculate_Block.e[-4]~20_combout\);

-- Location: LCCOMB_X36_Y11_N28
\EXP|rem~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~156_combout\ = (\EXP|Calculate_Block.e[-4]~21_combout\ & (((\EXP|Add7~10_combout\) # (\EXP|Calculate_Block.e[-4]~20_combout\)))) # (!\EXP|Calculate_Block.e[-4]~21_combout\ & (\EXP|Add5~10_combout\ & ((!\EXP|Calculate_Block.e[-4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~10_combout\,
	datab => \EXP|Add7~10_combout\,
	datac => \EXP|Calculate_Block.e[-4]~21_combout\,
	datad => \EXP|Calculate_Block.e[-4]~20_combout\,
	combout => \EXP|rem~156_combout\);

-- Location: LCCOMB_X36_Y11_N30
\EXP|rem~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~157_combout\ = (\EXP|Calculate_Block.e[-4]~19_combout\ & ((\EXP|rem~156_combout\ & (\EXP|Add4~2_combout\)) # (!\EXP|rem~156_combout\ & ((\EXP|Add2~2_combout\))))) # (!\EXP|Calculate_Block.e[-4]~19_combout\ & (((\EXP|rem~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~2_combout\,
	datab => \EXP|Add2~2_combout\,
	datac => \EXP|Calculate_Block.e[-4]~19_combout\,
	datad => \EXP|rem~156_combout\,
	combout => \EXP|rem~157_combout\);

-- Location: LCCOMB_X36_Y11_N12
\EXP|rem~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~158_combout\ = (\EXP|Calculate_Block.e[-4]~17_combout\ & (((\EXP|Calculate_Block.e[-4]~16_combout\)))) # (!\EXP|Calculate_Block.e[-4]~17_combout\ & ((\EXP|Calculate_Block.e[-4]~16_combout\ & (\EXP|Add9~14_combout\)) # 
-- (!\EXP|Calculate_Block.e[-4]~16_combout\ & ((\EXP|rem~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~14_combout\,
	datab => \EXP|Calculate_Block.e[-4]~17_combout\,
	datac => \EXP|Calculate_Block.e[-4]~16_combout\,
	datad => \EXP|rem~157_combout\,
	combout => \EXP|rem~158_combout\);

-- Location: LCCOMB_X36_Y11_N18
\EXP|rem~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~159_combout\ = (\EXP|Calculate_Block.e[-4]~17_combout\ & ((\EXP|rem~158_combout\ & ((\EXP|Add13~12_combout\))) # (!\EXP|rem~158_combout\ & (\EXP|Add11~14_combout\)))) # (!\EXP|Calculate_Block.e[-4]~17_combout\ & (((\EXP|rem~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~14_combout\,
	datab => \EXP|Calculate_Block.e[-4]~17_combout\,
	datac => \EXP|Add13~12_combout\,
	datad => \EXP|rem~158_combout\,
	combout => \EXP|rem~159_combout\);

-- Location: LCCOMB_X36_Y11_N4
\EXP|rem~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~160_combout\ = (\EXP|rem[-30]~69_combout\ & (\EXP|Add15~18_combout\)) # (!\EXP|rem[-30]~69_combout\ & ((\EXP|rem~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-30]~69_combout\,
	datac => \EXP|Add15~18_combout\,
	datad => \EXP|rem~159_combout\,
	combout => \EXP|rem~160_combout\);

-- Location: LCFF_X36_Y11_N5
\EXP|rem[-21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~160_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-21]~regout\);

-- Location: LCCOMB_X38_Y8_N20
\EXP|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~18_combout\ = (\EXP|rem[-18]~regout\ & (!\EXP|Add13~17\)) # (!\EXP|rem[-18]~regout\ & ((\EXP|Add13~17\) # (GND)))
-- \EXP|Add13~19\ = CARRY((!\EXP|Add13~17\) # (!\EXP|rem[-18]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add13~17\,
	combout => \EXP|Add13~18_combout\,
	cout => \EXP|Add13~19\);

-- Location: LCCOMB_X33_Y8_N8
\EXP|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~8_combout\ = (\EXP|rem[-18]~regout\ & (\EXP|Add2~7\ $ (GND))) # (!\EXP|rem[-18]~regout\ & (!\EXP|Add2~7\ & VCC))
-- \EXP|Add2~9\ = CARRY((\EXP|rem[-18]~regout\ & !\EXP|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-18]~regout\,
	datad => VCC,
	cin => \EXP|Add2~7\,
	combout => \EXP|Add2~8_combout\,
	cout => \EXP|Add2~9\);

-- Location: LCCOMB_X38_Y9_N30
\EXP|rem~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~144_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add5~16_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add4~8_combout\ & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Add5~16_combout\,
	datac => \EXP|Add4~8_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~144_combout\);

-- Location: LCCOMB_X39_Y9_N2
\EXP|rem~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~145_combout\ = (\EXP|rem~144_combout\ & (((\EXP|Add2~8_combout\) # (!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~144_combout\ & (\EXP|Add0~4_combout\ & ((\EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~4_combout\,
	datab => \EXP|Add2~8_combout\,
	datac => \EXP|rem~144_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~145_combout\);

-- Location: LCCOMB_X39_Y9_N0
\EXP|rem~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~146_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~145_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~145_combout\,
	combout => \EXP|rem~146_combout\);

-- Location: LCCOMB_X39_Y9_N6
\EXP|rem~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~147_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|rem~146_combout\ & (\EXP|Add11~20_combout\)) # (!\EXP|rem~146_combout\ & ((\EXP|Add9~20_combout\))))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|rem~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~20_combout\,
	datab => \EXP|Add9~20_combout\,
	datac => \EXP|Calculate_Block.e[-3]~41_combout\,
	datad => \EXP|rem~146_combout\,
	combout => \EXP|rem~147_combout\);

-- Location: LCCOMB_X39_Y9_N4
\EXP|rem[-18]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-18]~10_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~147_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~18_combout\,
	datad => \EXP|rem~147_combout\,
	combout => \EXP|rem[-18]~10_combout\);

-- Location: LCFF_X39_Y9_N5
\EXP|rem[-18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-18]~10_combout\,
	sdata => \EXP|Add15~24_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-18]~regout\);

-- Location: LCCOMB_X38_Y8_N24
\EXP|Add13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~22_combout\ = (\EXP|rem[-16]~regout\ & (\EXP|Add13~21\ & VCC)) # (!\EXP|rem[-16]~regout\ & (!\EXP|Add13~21\))
-- \EXP|Add13~23\ = CARRY((!\EXP|rem[-16]~regout\ & !\EXP|Add13~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add13~21\,
	combout => \EXP|Add13~22_combout\,
	cout => \EXP|Add13~23\);

-- Location: LCCOMB_X33_Y12_N26
\EXP|Add11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~24_combout\ = (\EXP|rem[-16]~regout\ & ((GND) # (!\EXP|Add11~23\))) # (!\EXP|rem[-16]~regout\ & (\EXP|Add11~23\ $ (GND)))
-- \EXP|Add11~25\ = CARRY((\EXP|rem[-16]~regout\) # (!\EXP|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add11~23\,
	combout => \EXP|Add11~24_combout\,
	cout => \EXP|Add11~25\);

-- Location: LCCOMB_X33_Y8_N12
\EXP|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~12_combout\ = (\EXP|rem[-16]~regout\ & (\EXP|Add2~11\ $ (GND))) # (!\EXP|rem[-16]~regout\ & (!\EXP|Add2~11\ & VCC))
-- \EXP|Add2~13\ = CARRY((\EXP|rem[-16]~regout\ & !\EXP|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add2~11\,
	combout => \EXP|Add2~12_combout\,
	cout => \EXP|Add2~13\);

-- Location: LCCOMB_X34_Y12_N16
\EXP|rem~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~173_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~20_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~12_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~12_combout\,
	datab => \EXP|Add5~20_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~173_combout\);

-- Location: LCCOMB_X34_Y12_N6
\EXP|rem~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~174_combout\ = (\EXP|rem~173_combout\ & (((\EXP|Add2~12_combout\) # (!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~173_combout\ & (\EXP|Add0~8_combout\ & ((\EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~8_combout\,
	datab => \EXP|Add2~12_combout\,
	datac => \EXP|rem~173_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~174_combout\);

-- Location: LCCOMB_X34_Y12_N4
\EXP|rem~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~175_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~174_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~174_combout\,
	combout => \EXP|rem~175_combout\);

-- Location: LCCOMB_X34_Y12_N2
\EXP|rem~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~176_combout\ = (\EXP|rem~175_combout\ & (((\EXP|Add11~24_combout\) # (!\EXP|Calculate_Block.e[-3]~41_combout\)))) # (!\EXP|rem~175_combout\ & (\EXP|Add9~24_combout\ & ((\EXP|Calculate_Block.e[-3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~24_combout\,
	datab => \EXP|Add11~24_combout\,
	datac => \EXP|rem~175_combout\,
	datad => \EXP|Calculate_Block.e[-3]~41_combout\,
	combout => \EXP|rem~176_combout\);

-- Location: LCCOMB_X34_Y12_N26
\EXP|rem[-16]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-16]~8_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~176_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~22_combout\,
	datad => \EXP|rem~176_combout\,
	combout => \EXP|rem[-16]~8_combout\);

-- Location: LCCOMB_X39_Y12_N12
\EXP|Add15~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~28_combout\ = (\EXP|rem[-16]~regout\ & ((GND) # (!\EXP|Add15~27\))) # (!\EXP|rem[-16]~regout\ & (\EXP|Add15~27\ $ (GND)))
-- \EXP|Add15~29\ = CARRY((\EXP|rem[-16]~regout\) # (!\EXP|Add15~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-16]~regout\,
	datad => VCC,
	cin => \EXP|Add15~27\,
	combout => \EXP|Add15~28_combout\,
	cout => \EXP|Add15~29\);

-- Location: LCFF_X34_Y12_N27
\EXP|rem[-16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-16]~8_combout\,
	sdata => \EXP|Add15~28_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-16]~regout\);

-- Location: LCCOMB_X38_Y8_N26
\EXP|Add13~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~24_combout\ = (\EXP|rem[-15]~regout\ & ((GND) # (!\EXP|Add13~23\))) # (!\EXP|rem[-15]~regout\ & (\EXP|Add13~23\ $ (GND)))
-- \EXP|Add13~25\ = CARRY((\EXP|rem[-15]~regout\) # (!\EXP|Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add13~23\,
	combout => \EXP|Add13~24_combout\,
	cout => \EXP|Add13~25\);

-- Location: LCCOMB_X33_Y12_N28
\EXP|Add11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~26_combout\ = (\EXP|rem[-15]~regout\ & (!\EXP|Add11~25\)) # (!\EXP|rem[-15]~regout\ & ((\EXP|Add11~25\) # (GND)))
-- \EXP|Add11~27\ = CARRY((!\EXP|Add11~25\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add11~25\,
	combout => \EXP|Add11~26_combout\,
	cout => \EXP|Add11~27\);

-- Location: LCCOMB_X36_Y7_N16
\EXP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~10_combout\ = (\EXP|rem[-15]~regout\ & (!\EXP|Add0~9\)) # (!\EXP|rem[-15]~regout\ & ((\EXP|Add0~9\) # (GND)))
-- \EXP|Add0~11\ = CARRY((!\EXP|Add0~9\) # (!\EXP|rem[-15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add0~9\,
	combout => \EXP|Add0~10_combout\,
	cout => \EXP|Add0~11\);

-- Location: LCCOMB_X34_Y12_N20
\EXP|rem~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~169_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add5~22_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add4~14_combout\ & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~22_combout\,
	datab => \EXP|Add4~14_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~169_combout\);

-- Location: LCCOMB_X34_Y12_N10
\EXP|rem~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~170_combout\ = (\EXP|rem~169_combout\ & ((\EXP|Add2~14_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~169_combout\ & (((\EXP|Add0~10_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~14_combout\,
	datab => \EXP|Add0~10_combout\,
	datac => \EXP|rem~169_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~170_combout\);

-- Location: LCCOMB_X34_Y12_N24
\EXP|rem~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~171_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~26_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~170_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~26_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~170_combout\,
	combout => \EXP|rem~171_combout\);

-- Location: LCCOMB_X34_Y12_N22
\EXP|rem~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~172_combout\ = (\EXP|rem~171_combout\ & ((\EXP|Add11~26_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~26_combout\,
	datac => \EXP|rem~171_combout\,
	datad => \EXP|LessThan6~7_combout\,
	combout => \EXP|rem~172_combout\);

-- Location: LCCOMB_X34_Y12_N12
\EXP|rem[-15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-15]~7_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~172_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~24_combout\,
	datad => \EXP|rem~172_combout\,
	combout => \EXP|rem[-15]~7_combout\);

-- Location: LCCOMB_X39_Y12_N14
\EXP|Add15~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~30_combout\ = (\EXP|rem[-15]~regout\ & (\EXP|Add15~29\ & VCC)) # (!\EXP|rem[-15]~regout\ & (!\EXP|Add15~29\))
-- \EXP|Add15~31\ = CARRY((!\EXP|rem[-15]~regout\ & !\EXP|Add15~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datad => VCC,
	cin => \EXP|Add15~29\,
	combout => \EXP|Add15~30_combout\,
	cout => \EXP|Add15~31\);

-- Location: LCFF_X34_Y12_N13
\EXP|rem[-15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-15]~7_combout\,
	sdata => \EXP|Add15~30_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-15]~regout\);

-- Location: LCCOMB_X33_Y12_N30
\EXP|Add11~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~28_combout\ = (\EXP|rem[-14]~regout\ & ((GND) # (!\EXP|Add11~27\))) # (!\EXP|rem[-14]~regout\ & (\EXP|Add11~27\ $ (GND)))
-- \EXP|Add11~29\ = CARRY((\EXP|rem[-14]~regout\) # (!\EXP|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add11~27\,
	combout => \EXP|Add11~28_combout\,
	cout => \EXP|Add11~29\);

-- Location: LCCOMB_X33_Y8_N16
\EXP|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~16_combout\ = (\EXP|rem[-14]~regout\ & (\EXP|Add2~15\ $ (GND))) # (!\EXP|rem[-14]~regout\ & (!\EXP|Add2~15\ & VCC))
-- \EXP|Add2~17\ = CARRY((\EXP|rem[-14]~regout\ & !\EXP|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add2~15\,
	combout => \EXP|Add2~16_combout\,
	cout => \EXP|Add2~17\);

-- Location: LCCOMB_X36_Y12_N14
\EXP|rem~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~165_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~24_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~16_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~16_combout\,
	datab => \EXP|Add5~24_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~165_combout\);

-- Location: LCCOMB_X36_Y12_N12
\EXP|rem~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~166_combout\ = (\EXP|rem~165_combout\ & (((\EXP|Add2~16_combout\) # (!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~165_combout\ & (\EXP|Add0~12_combout\ & ((\EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~12_combout\,
	datab => \EXP|Add2~16_combout\,
	datac => \EXP|rem~165_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~166_combout\);

-- Location: LCCOMB_X36_Y12_N30
\EXP|rem~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~167_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~166_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~166_combout\,
	combout => \EXP|rem~167_combout\);

-- Location: LCCOMB_X35_Y12_N22
\EXP|rem~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~168_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|rem~167_combout\ & ((\EXP|Add11~28_combout\))) # (!\EXP|rem~167_combout\ & (\EXP|Add9~28_combout\)))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|rem~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~28_combout\,
	datab => \EXP|Add11~28_combout\,
	datac => \EXP|Calculate_Block.e[-3]~41_combout\,
	datad => \EXP|rem~167_combout\,
	combout => \EXP|rem~168_combout\);

-- Location: LCCOMB_X34_Y9_N30
\EXP|rem[-14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-14]~6_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~168_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~26_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~168_combout\,
	combout => \EXP|rem[-14]~6_combout\);

-- Location: LCCOMB_X39_Y12_N16
\EXP|Add15~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~32_combout\ = (\EXP|rem[-14]~regout\ & (\EXP|Add15~31\ $ (GND))) # (!\EXP|rem[-14]~regout\ & (!\EXP|Add15~31\ & VCC))
-- \EXP|Add15~33\ = CARRY((\EXP|rem[-14]~regout\ & !\EXP|Add15~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-14]~regout\,
	datad => VCC,
	cin => \EXP|Add15~31\,
	combout => \EXP|Add15~32_combout\,
	cout => \EXP|Add15~33\);

-- Location: LCFF_X34_Y9_N31
\EXP|rem[-14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-14]~6_combout\,
	sdata => \EXP|Add15~32_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-14]~regout\);

-- Location: LCCOMB_X33_Y11_N0
\EXP|Add11~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~30_combout\ = (\EXP|rem[-13]~regout\ & (\EXP|Add11~29\ & VCC)) # (!\EXP|rem[-13]~regout\ & (!\EXP|Add11~29\))
-- \EXP|Add11~31\ = CARRY((!\EXP|rem[-13]~regout\ & !\EXP|Add11~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add11~29\,
	combout => \EXP|Add11~30_combout\,
	cout => \EXP|Add11~31\);

-- Location: LCCOMB_X36_Y7_N20
\EXP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~14_combout\ = (\EXP|rem[-13]~regout\ & (\EXP|Add0~13\ & VCC)) # (!\EXP|rem[-13]~regout\ & (!\EXP|Add0~13\))
-- \EXP|Add0~15\ = CARRY((!\EXP|rem[-13]~regout\ & !\EXP|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add0~13\,
	combout => \EXP|Add0~14_combout\,
	cout => \EXP|Add0~15\);

-- Location: LCCOMB_X34_Y9_N26
\EXP|rem~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~161_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~26_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~18_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Add4~18_combout\,
	datac => \EXP|Add5~26_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~161_combout\);

-- Location: LCCOMB_X34_Y9_N24
\EXP|rem~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~162_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~161_combout\ & (\EXP|Add2~18_combout\)) # (!\EXP|rem~161_combout\ & ((\EXP|Add0~14_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~18_combout\,
	datab => \EXP|Add0~14_combout\,
	datac => \EXP|Calculate_Block.e[-3]~25_combout\,
	datad => \EXP|rem~161_combout\,
	combout => \EXP|rem~162_combout\);

-- Location: LCCOMB_X34_Y9_N22
\EXP|rem~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~163_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~30_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~162_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|Add9~30_combout\,
	datac => \EXP|rem~162_combout\,
	datad => \EXP|LessThan5~8_combout\,
	combout => \EXP|rem~163_combout\);

-- Location: LCCOMB_X34_Y9_N0
\EXP|rem~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~164_combout\ = (\EXP|rem~163_combout\ & ((\EXP|Add11~30_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add11~30_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|rem~163_combout\,
	combout => \EXP|rem~164_combout\);

-- Location: LCCOMB_X34_Y9_N16
\EXP|rem[-13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-13]~5_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~164_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~28_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~164_combout\,
	combout => \EXP|rem[-13]~5_combout\);

-- Location: LCCOMB_X39_Y12_N18
\EXP|Add15~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~34_combout\ = (\EXP|rem[-13]~regout\ & (!\EXP|Add15~33\)) # (!\EXP|rem[-13]~regout\ & ((\EXP|Add15~33\) # (GND)))
-- \EXP|Add15~35\ = CARRY((!\EXP|Add15~33\) # (!\EXP|rem[-13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-13]~regout\,
	datad => VCC,
	cin => \EXP|Add15~33\,
	combout => \EXP|Add15~34_combout\,
	cout => \EXP|Add15~35\);

-- Location: LCFF_X34_Y9_N17
\EXP|rem[-13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-13]~5_combout\,
	sdata => \EXP|Add15~34_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-13]~regout\);

-- Location: LCCOMB_X33_Y11_N2
\EXP|Add11~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~32_combout\ = (\EXP|rem[-12]~regout\ & ((GND) # (!\EXP|Add11~31\))) # (!\EXP|rem[-12]~regout\ & (\EXP|Add11~31\ $ (GND)))
-- \EXP|Add11~33\ = CARRY((\EXP|rem[-12]~regout\) # (!\EXP|Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add11~31\,
	combout => \EXP|Add11~32_combout\,
	cout => \EXP|Add11~33\);

-- Location: LCCOMB_X36_Y7_N22
\EXP|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~16_combout\ = (\EXP|rem[-12]~regout\ & ((GND) # (!\EXP|Add0~15\))) # (!\EXP|rem[-12]~regout\ & (\EXP|Add0~15\ $ (GND)))
-- \EXP|Add0~17\ = CARRY((\EXP|rem[-12]~regout\) # (!\EXP|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add0~15\,
	combout => \EXP|Add0~16_combout\,
	cout => \EXP|Add0~17\);

-- Location: LCCOMB_X33_Y9_N6
\EXP|rem~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~119_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add5~28_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Calculate_Block.e[-3]~26_combout\ & \EXP|Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Add5~28_combout\,
	datac => \EXP|Calculate_Block.e[-3]~26_combout\,
	datad => \EXP|Add4~20_combout\,
	combout => \EXP|rem~119_combout\);

-- Location: LCCOMB_X33_Y9_N28
\EXP|rem~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~120_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~119_combout\ & (\EXP|Add2~20_combout\)) # (!\EXP|rem~119_combout\ & ((\EXP|Add0~16_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~20_combout\,
	datab => \EXP|Add0~16_combout\,
	datac => \EXP|Calculate_Block.e[-3]~25_combout\,
	datad => \EXP|rem~119_combout\,
	combout => \EXP|rem~120_combout\);

-- Location: LCCOMB_X33_Y9_N18
\EXP|rem~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~121_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~120_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~120_combout\,
	combout => \EXP|rem~121_combout\);

-- Location: LCCOMB_X33_Y9_N12
\EXP|rem~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~122_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|rem~121_combout\ & ((\EXP|Add11~32_combout\))) # (!\EXP|rem~121_combout\ & (\EXP|Add9~32_combout\)))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|rem~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~32_combout\,
	datab => \EXP|Add11~32_combout\,
	datac => \EXP|Calculate_Block.e[-3]~41_combout\,
	datad => \EXP|rem~121_combout\,
	combout => \EXP|rem~122_combout\);

-- Location: LCCOMB_X33_Y9_N16
\EXP|rem[-12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-12]~4_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~122_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~30_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~122_combout\,
	combout => \EXP|rem[-12]~4_combout\);

-- Location: LCCOMB_X39_Y12_N20
\EXP|Add15~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~36_combout\ = (\EXP|rem[-12]~regout\ & (\EXP|Add15~35\ $ (GND))) # (!\EXP|rem[-12]~regout\ & (!\EXP|Add15~35\ & VCC))
-- \EXP|Add15~37\ = CARRY((\EXP|rem[-12]~regout\ & !\EXP|Add15~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-12]~regout\,
	datad => VCC,
	cin => \EXP|Add15~35\,
	combout => \EXP|Add15~36_combout\,
	cout => \EXP|Add15~37\);

-- Location: LCFF_X33_Y9_N17
\EXP|rem[-12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-12]~4_combout\,
	sdata => \EXP|Add15~36_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-12]~regout\);

-- Location: LCCOMB_X33_Y8_N22
\EXP|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~22_combout\ = (\EXP|rem[-11]~regout\ & (\EXP|Add2~21\ & VCC)) # (!\EXP|rem[-11]~regout\ & (!\EXP|Add2~21\))
-- \EXP|Add2~23\ = CARRY((!\EXP|rem[-11]~regout\ & !\EXP|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add2~21\,
	combout => \EXP|Add2~22_combout\,
	cout => \EXP|Add2~23\);

-- Location: LCCOMB_X34_Y11_N24
\EXP|rem~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~123_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add5~30_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add4~22_combout\ & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~30_combout\,
	datab => \EXP|Add4~22_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~123_combout\);

-- Location: LCCOMB_X34_Y11_N18
\EXP|rem~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~124_combout\ = (\EXP|rem~123_combout\ & (((\EXP|Add2~22_combout\) # (!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~123_combout\ & (\EXP|Add0~18_combout\ & ((\EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~18_combout\,
	datab => \EXP|Add2~22_combout\,
	datac => \EXP|rem~123_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~124_combout\);

-- Location: LCCOMB_X34_Y11_N12
\EXP|rem~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~125_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~34_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~124_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|Add9~34_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|rem~124_combout\,
	combout => \EXP|rem~125_combout\);

-- Location: LCCOMB_X34_Y11_N26
\EXP|rem~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~126_combout\ = (\EXP|rem~125_combout\ & ((\EXP|LessThan6~7_combout\) # (\EXP|Add11~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add11~34_combout\,
	datad => \EXP|rem~125_combout\,
	combout => \EXP|rem~126_combout\);

-- Location: LCCOMB_X33_Y9_N26
\EXP|rem[-11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-11]~3_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~126_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~32_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~126_combout\,
	combout => \EXP|rem[-11]~3_combout\);

-- Location: LCCOMB_X39_Y12_N22
\EXP|Add15~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~38_combout\ = (\EXP|rem[-11]~regout\ & (!\EXP|Add15~37\)) # (!\EXP|rem[-11]~regout\ & ((\EXP|Add15~37\) # (GND)))
-- \EXP|Add15~39\ = CARRY((!\EXP|Add15~37\) # (!\EXP|rem[-11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-11]~regout\,
	datad => VCC,
	cin => \EXP|Add15~37\,
	combout => \EXP|Add15~38_combout\,
	cout => \EXP|Add15~39\);

-- Location: LCFF_X33_Y9_N27
\EXP|rem[-11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-11]~3_combout\,
	sdata => \EXP|Add15~38_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-11]~regout\);

-- Location: LCCOMB_X38_Y7_N4
\EXP|Add13~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add13~34_combout\ = (\EXP|rem[-10]~regout\ & (!\EXP|Add13~33\)) # (!\EXP|rem[-10]~regout\ & ((\EXP|Add13~33\) # (GND)))
-- \EXP|Add13~35\ = CARRY((!\EXP|Add13~33\) # (!\EXP|rem[-10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add13~33\,
	combout => \EXP|Add13~34_combout\,
	cout => \EXP|Add13~35\);

-- Location: LCCOMB_X36_Y7_N26
\EXP|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add0~20_combout\ = (\EXP|rem[-10]~regout\ & ((GND) # (!\EXP|Add0~19\))) # (!\EXP|rem[-10]~regout\ & (\EXP|Add0~19\ $ (GND)))
-- \EXP|Add0~21\ = CARRY((\EXP|rem[-10]~regout\) # (!\EXP|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add0~19\,
	combout => \EXP|Add0~20_combout\,
	cout => \EXP|Add0~21\);

-- Location: LCCOMB_X36_Y8_N24
\EXP|rem~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~140_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~32_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~24_combout\ & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~24_combout\,
	datab => \EXP|Calculate_Block.e[-3]~24_combout\,
	datac => \EXP|Add5~32_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|rem~140_combout\);

-- Location: LCCOMB_X36_Y8_N10
\EXP|rem~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~141_combout\ = (\EXP|rem~140_combout\ & ((\EXP|Add2~24_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|rem~140_combout\ & (((\EXP|Add0~20_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add2~24_combout\,
	datab => \EXP|Add0~20_combout\,
	datac => \EXP|rem~140_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|rem~141_combout\);

-- Location: LCCOMB_X36_Y8_N4
\EXP|rem~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~142_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~141_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|rem~141_combout\,
	combout => \EXP|rem~142_combout\);

-- Location: LCCOMB_X36_Y8_N30
\EXP|rem~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~143_combout\ = (\EXP|rem~142_combout\ & (((\EXP|Add11~36_combout\) # (!\EXP|Calculate_Block.e[-3]~41_combout\)))) # (!\EXP|rem~142_combout\ & (\EXP|Add9~36_combout\ & ((\EXP|Calculate_Block.e[-3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~36_combout\,
	datab => \EXP|Add11~36_combout\,
	datac => \EXP|rem~142_combout\,
	datad => \EXP|Calculate_Block.e[-3]~41_combout\,
	combout => \EXP|rem~143_combout\);

-- Location: LCCOMB_X36_Y8_N28
\EXP|rem[-10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-10]~2_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~143_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~34_combout\,
	datad => \EXP|rem~143_combout\,
	combout => \EXP|rem[-10]~2_combout\);

-- Location: LCCOMB_X39_Y12_N24
\EXP|Add15~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~40_combout\ = (\EXP|rem[-10]~regout\ & (\EXP|Add15~39\ $ (GND))) # (!\EXP|rem[-10]~regout\ & (!\EXP|Add15~39\ & VCC))
-- \EXP|Add15~41\ = CARRY((\EXP|rem[-10]~regout\ & !\EXP|Add15~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-10]~regout\,
	datad => VCC,
	cin => \EXP|Add15~39\,
	combout => \EXP|Add15~40_combout\,
	cout => \EXP|Add15~41\);

-- Location: LCFF_X36_Y8_N29
\EXP|rem[-10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-10]~2_combout\,
	sdata => \EXP|Add15~40_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-10]~regout\);

-- Location: LCCOMB_X33_Y8_N26
\EXP|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~26_combout\ = (\EXP|rem[-9]~regout\ & (!\EXP|Add2~25\)) # (!\EXP|rem[-9]~regout\ & ((\EXP|Add2~25\) # (GND)))
-- \EXP|Add2~27\ = CARRY((!\EXP|Add2~25\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add2~25\,
	combout => \EXP|Add2~26_combout\,
	cout => \EXP|Add2~27\);

-- Location: LCCOMB_X33_Y8_N28
\EXP|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add2~28_combout\ = \EXP|Add2~27\ $ (\EXP|rem[-8]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|rem[-8]~regout\,
	cin => \EXP|Add2~27\,
	combout => \EXP|Add2~28_combout\);

-- Location: LCCOMB_X37_Y12_N6
\EXP|rem~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~132_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~36_combout\)) # (!\EXP|Calculate_Block.e[-3]~26_combout\))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Calculate_Block.e[-3]~26_combout\ & (\EXP|Add4~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~24_combout\,
	datab => \EXP|Calculate_Block.e[-3]~26_combout\,
	datac => \EXP|Add4~28_combout\,
	datad => \EXP|Add5~36_combout\,
	combout => \EXP|rem~132_combout\);

-- Location: LCCOMB_X37_Y12_N28
\EXP|rem~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~133_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~132_combout\ & ((\EXP|Add2~28_combout\))) # (!\EXP|rem~132_combout\ & (\EXP|Add0~24_combout\)))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add0~24_combout\,
	datab => \EXP|Calculate_Block.e[-3]~25_combout\,
	datac => \EXP|Add2~28_combout\,
	datad => \EXP|rem~132_combout\,
	combout => \EXP|rem~133_combout\);

-- Location: LCCOMB_X37_Y12_N26
\EXP|rem~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~134_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|rem~133_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|rem~133_combout\,
	combout => \EXP|rem~134_combout\);

-- Location: LCCOMB_X37_Y12_N12
\EXP|rem~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~135_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|rem~134_combout\ & (\EXP|Add11~40_combout\)) # (!\EXP|rem~134_combout\ & ((\EXP|Add9~40_combout\))))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|rem~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add11~40_combout\,
	datab => \EXP|Add9~40_combout\,
	datac => \EXP|Calculate_Block.e[-3]~41_combout\,
	datad => \EXP|rem~134_combout\,
	combout => \EXP|rem~135_combout\);

-- Location: LCCOMB_X37_Y12_N16
\EXP|rem[-8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-8]~0_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~135_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan7~13_combout\,
	datab => \EXP|Add13~38_combout\,
	datad => \EXP|rem~135_combout\,
	combout => \EXP|rem[-8]~0_combout\);

-- Location: LCCOMB_X39_Y12_N28
\EXP|Add15~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~44_combout\ = (\EXP|rem[-8]~regout\ & (\EXP|Add15~43\ $ (GND))) # (!\EXP|rem[-8]~regout\ & (!\EXP|Add15~43\ & VCC))
-- \EXP|Add15~45\ = CARRY((\EXP|rem[-8]~regout\ & !\EXP|Add15~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-8]~regout\,
	datad => VCC,
	cin => \EXP|Add15~43\,
	combout => \EXP|Add15~44_combout\,
	cout => \EXP|Add15~45\);

-- Location: LCFF_X37_Y12_N17
\EXP|rem[-8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-8]~0_combout\,
	sdata => \EXP|Add15~44_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-8]~regout\);

-- Location: LCCOMB_X37_Y9_N4
\EXP|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~0_combout\ = (\EXP|rem[-8]~regout\ & (\EXP|rem[-9]~regout\ & \EXP|rem[-10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-8]~regout\,
	datac => \EXP|rem[-9]~regout\,
	datad => \EXP|rem[-10]~regout\,
	combout => \EXP|LessThan6~0_combout\);

-- Location: LCCOMB_X35_Y8_N0
\EXP|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~1_combout\ = (\EXP|rem[-11]~regout\) # ((\EXP|rem[-13]~regout\) # ((\EXP|rem[-14]~regout\) # (\EXP|rem[-12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-11]~regout\,
	datab => \EXP|rem[-13]~regout\,
	datac => \EXP|rem[-14]~regout\,
	datad => \EXP|rem[-12]~regout\,
	combout => \EXP|LessThan6~1_combout\);

-- Location: LCCOMB_X35_Y10_N20
\EXP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan0~1_combout\ = (!\EXP|rem[-24]~23_combout\ & (!\EXP|rem[-23]~19_combout\ & !\EXP|rem[-25]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-24]~23_combout\,
	datac => \EXP|rem[-23]~19_combout\,
	datad => \EXP|rem[-25]~27_combout\,
	combout => \EXP|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y10_N30
\EXP|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~2_combout\ = (\EXP|rem[-26]~31_combout\) # (((\EXP|rem[-28]~39_combout\ & \EXP|LessThan5~0_combout\)) # (!\EXP|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-28]~39_combout\,
	datab => \EXP|rem[-26]~31_combout\,
	datac => \EXP|LessThan0~1_combout\,
	datad => \EXP|LessThan5~0_combout\,
	combout => \EXP|LessThan6~2_combout\);

-- Location: LCCOMB_X35_Y10_N0
\EXP|LessThan6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~4_combout\ = (\EXP|rem[-17]~regout\ & (((\EXP|LessThan6~3_combout\ & \EXP|LessThan6~2_combout\)) # (!\EXP|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan8~1_combout\,
	datab => \EXP|rem[-17]~regout\,
	datac => \EXP|LessThan6~3_combout\,
	datad => \EXP|LessThan6~2_combout\,
	combout => \EXP|LessThan6~4_combout\);

-- Location: LCCOMB_X35_Y10_N6
\EXP|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~5_combout\ = (\EXP|LessThan6~1_combout\) # ((\EXP|rem[-15]~regout\ & ((\EXP|rem[-16]~regout\) # (\EXP|LessThan6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-15]~regout\,
	datab => \EXP|rem[-16]~regout\,
	datac => \EXP|LessThan6~1_combout\,
	datad => \EXP|LessThan6~4_combout\,
	combout => \EXP|LessThan6~5_combout\);

-- Location: LCCOMB_X35_Y10_N28
\EXP|LessThan6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~6_combout\ = (\EXP|rem[-7]~regout\ & (\EXP|LessThan6~0_combout\ & (\EXP|rem[-6]~regout\ & \EXP|LessThan6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-7]~regout\,
	datab => \EXP|LessThan6~0_combout\,
	datac => \EXP|rem[-6]~regout\,
	datad => \EXP|LessThan6~5_combout\,
	combout => \EXP|LessThan6~6_combout\);

-- Location: LCCOMB_X35_Y10_N22
\EXP|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan6~7_combout\ = (!\EXP|rem\(2) & (!\EXP|rem[-5]~regout\ & (\EXP|LessThan7~15_combout\ & !\EXP|LessThan6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	datab => \EXP|rem[-5]~regout\,
	datac => \EXP|LessThan7~15_combout\,
	datad => \EXP|LessThan6~6_combout\,
	combout => \EXP|LessThan6~7_combout\);

-- Location: LCCOMB_X38_Y8_N0
\EXP|rem~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~136_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add5~34_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add4~26_combout\ & (\EXP|Calculate_Block.e[-3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add4~26_combout\,
	datab => \EXP|Calculate_Block.e[-3]~24_combout\,
	datac => \EXP|Calculate_Block.e[-3]~26_combout\,
	datad => \EXP|Add5~34_combout\,
	combout => \EXP|rem~136_combout\);

-- Location: LCCOMB_X37_Y7_N12
\EXP|rem~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~137_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|rem~136_combout\ & ((\EXP|Add2~26_combout\))) # (!\EXP|rem~136_combout\ & (\EXP|Add0~22_combout\)))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|rem~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~25_combout\,
	datab => \EXP|Add0~22_combout\,
	datac => \EXP|rem~136_combout\,
	datad => \EXP|Add2~26_combout\,
	combout => \EXP|rem~137_combout\);

-- Location: LCCOMB_X37_Y7_N2
\EXP|rem~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~138_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add9~38_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|rem~137_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~8_combout\,
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add9~38_combout\,
	datad => \EXP|rem~137_combout\,
	combout => \EXP|rem~138_combout\);

-- Location: LCCOMB_X37_Y7_N28
\EXP|rem~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~139_combout\ = (\EXP|rem~138_combout\ & ((\EXP|LessThan6~7_combout\) # (\EXP|Add11~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan6~7_combout\,
	datac => \EXP|Add11~38_combout\,
	datad => \EXP|rem~138_combout\,
	combout => \EXP|rem~139_combout\);

-- Location: LCCOMB_X37_Y7_N24
\EXP|rem[-9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem[-9]~1_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|rem~139_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add13~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~36_combout\,
	datab => \EXP|LessThan7~13_combout\,
	datad => \EXP|rem~139_combout\,
	combout => \EXP|rem[-9]~1_combout\);

-- Location: LCCOMB_X39_Y12_N26
\EXP|Add15~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add15~42_combout\ = (\EXP|rem[-9]~regout\ & (!\EXP|Add15~41\)) # (!\EXP|rem[-9]~regout\ & ((\EXP|Add15~41\) # (GND)))
-- \EXP|Add15~43\ = CARRY((!\EXP|Add15~41\) # (!\EXP|rem[-9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-9]~regout\,
	datad => VCC,
	cin => \EXP|Add15~41\,
	combout => \EXP|Add15~42_combout\,
	cout => \EXP|Add15~43\);

-- Location: LCFF_X37_Y7_N25
\EXP|rem[-9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem[-9]~1_combout\,
	sdata => \EXP|Add15~42_combout\,
	aclr => \KEY~combout\(0),
	sload => \EXP|rem[-30]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-9]~regout\);

-- Location: LCCOMB_X33_Y11_N16
\EXP|Add11~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add11~46_combout\ = (\EXP|rem[-5]~regout\ & (\EXP|Add11~45\ & VCC)) # (!\EXP|rem[-5]~regout\ & (!\EXP|Add11~45\))
-- \EXP|Add11~47\ = CARRY((!\EXP|rem[-5]~regout\ & !\EXP|Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|rem[-5]~regout\,
	datad => VCC,
	cin => \EXP|Add11~45\,
	combout => \EXP|Add11~46_combout\,
	cout => \EXP|Add11~47\);

-- Location: LCCOMB_X39_Y10_N0
\EXP|rem~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~104_combout\ = (\EXP|rem[2]~68_combout\ & ((\EXP|LessThan2~7_combout\ & ((\EXP|Add4~34_combout\))) # (!\EXP|LessThan2~7_combout\ & (\SW~combout\(2))))) # (!\EXP|rem[2]~68_combout\ & (((\EXP|Add4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \EXP|rem[2]~68_combout\,
	datac => \EXP|Add4~34_combout\,
	datad => \EXP|LessThan2~7_combout\,
	combout => \EXP|rem~104_combout\);

-- Location: LCCOMB_X38_Y10_N26
\EXP|rem~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~105_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|Add5~42_combout\) # ((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~104_combout\ & !\EXP|rem[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add5~42_combout\,
	datab => \EXP|rem[2]~72_combout\,
	datac => \EXP|rem~104_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~105_combout\);

-- Location: LCCOMB_X38_Y10_N16
\EXP|rem~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~106_combout\ = (\EXP|rem[2]~73_combout\ & ((\EXP|rem~105_combout\ & (\EXP|Add9~46_combout\)) # (!\EXP|rem~105_combout\ & ((\EXP|Add7~42_combout\))))) # (!\EXP|rem[2]~73_combout\ & (((\EXP|rem~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add9~46_combout\,
	datab => \EXP|rem[2]~73_combout\,
	datac => \EXP|Add7~42_combout\,
	datad => \EXP|rem~105_combout\,
	combout => \EXP|rem~106_combout\);

-- Location: LCCOMB_X38_Y10_N10
\EXP|rem~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~107_combout\ = (\EXP|rem[2]~71_combout\ & (((\EXP|rem[2]~70_combout\)))) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem[2]~70_combout\ & (\EXP|Add11~46_combout\)) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~71_combout\,
	datab => \EXP|Add11~46_combout\,
	datac => \EXP|rem~106_combout\,
	datad => \EXP|rem[2]~70_combout\,
	combout => \EXP|rem~107_combout\);

-- Location: LCCOMB_X38_Y10_N0
\EXP|rem~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~108_combout\ = (\EXP|rem[2]~71_combout\ & ((\EXP|rem~107_combout\ & (\EXP|Add15~50_combout\)) # (!\EXP|rem~107_combout\ & ((\EXP|Add13~44_combout\))))) # (!\EXP|rem[2]~71_combout\ & (((\EXP|rem~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~71_combout\,
	datab => \EXP|Add15~50_combout\,
	datac => \EXP|Add13~44_combout\,
	datad => \EXP|rem~107_combout\,
	combout => \EXP|rem~108_combout\);

-- Location: LCFF_X38_Y10_N1
\EXP|rem[-5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~108_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-5]~regout\);

-- Location: LCCOMB_X37_Y8_N22
\EXP|rem~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~99_combout\ = (\EXP|LessThan2~7_combout\ & (((\EXP|Add4~36_combout\)))) # (!\EXP|LessThan2~7_combout\ & ((\EXP|rem[2]~68_combout\ & (\SW~combout\(3))) # (!\EXP|rem[2]~68_combout\ & ((\EXP|Add4~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \EXP|LessThan2~7_combout\,
	datac => \EXP|rem[2]~68_combout\,
	datad => \EXP|Add4~36_combout\,
	combout => \EXP|rem~99_combout\);

-- Location: LCCOMB_X37_Y8_N12
\EXP|rem~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~100_combout\ = (\EXP|rem[2]~72_combout\ & (((\EXP|rem[2]~73_combout\)))) # (!\EXP|rem[2]~72_combout\ & ((\EXP|rem[2]~73_combout\ & ((\EXP|Add7~44_combout\))) # (!\EXP|rem[2]~73_combout\ & (\EXP|rem~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|rem~99_combout\,
	datac => \EXP|Add7~44_combout\,
	datad => \EXP|rem[2]~73_combout\,
	combout => \EXP|rem~100_combout\);

-- Location: LCCOMB_X37_Y8_N14
\EXP|rem~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~101_combout\ = (\EXP|rem[2]~72_combout\ & ((\EXP|rem~100_combout\ & ((\EXP|Add9~48_combout\))) # (!\EXP|rem~100_combout\ & (\EXP|Add5~44_combout\)))) # (!\EXP|rem[2]~72_combout\ & (((\EXP|rem~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[2]~72_combout\,
	datab => \EXP|Add5~44_combout\,
	datac => \EXP|Add9~48_combout\,
	datad => \EXP|rem~100_combout\,
	combout => \EXP|rem~101_combout\);

-- Location: LCCOMB_X37_Y8_N28
\EXP|rem~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~102_combout\ = (\EXP|rem[2]~70_combout\ & (((\EXP|rem[2]~71_combout\)))) # (!\EXP|rem[2]~70_combout\ & ((\EXP|rem[2]~71_combout\ & (\EXP|Add13~46_combout\)) # (!\EXP|rem[2]~71_combout\ & ((\EXP|rem~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add13~46_combout\,
	datab => \EXP|rem[2]~70_combout\,
	datac => \EXP|rem~101_combout\,
	datad => \EXP|rem[2]~71_combout\,
	combout => \EXP|rem~102_combout\);

-- Location: LCCOMB_X37_Y8_N4
\EXP|rem~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|rem~103_combout\ = (\EXP|rem[2]~70_combout\ & ((\EXP|rem~102_combout\ & (\EXP|Add15~52_combout\)) # (!\EXP|rem~102_combout\ & ((\EXP|Add11~48_combout\))))) # (!\EXP|rem[2]~70_combout\ & (((\EXP|rem~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add15~52_combout\,
	datab => \EXP|Add11~48_combout\,
	datac => \EXP|rem[2]~70_combout\,
	datad => \EXP|rem~102_combout\,
	combout => \EXP|rem~103_combout\);

-- Location: LCFF_X37_Y8_N5
\EXP|rem[-4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|rem~103_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|rem[-4]~regout\);

-- Location: LCCOMB_X33_Y10_N18
\EXP|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~15_combout\ = (!\EXP|rem[-3]~regout\ & (!\EXP|rem[-4]~regout\ & (!\EXP|rem[-2]~regout\ & \EXP|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem[-3]~regout\,
	datab => \EXP|rem[-4]~regout\,
	datac => \EXP|rem[-2]~regout\,
	datad => \EXP|LessThan3~0_combout\,
	combout => \EXP|LessThan7~15_combout\);

-- Location: LCCOMB_X35_Y10_N10
\EXP|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|LessThan7~13_combout\ = (!\EXP|rem\(2) & (\EXP|LessThan7~15_combout\ & (\EXP|rem[-30]~57_combout\ & !\EXP|LessThan7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|rem\(2),
	datab => \EXP|LessThan7~15_combout\,
	datac => \EXP|rem[-30]~57_combout\,
	datad => \EXP|LessThan7~12_combout\,
	combout => \EXP|LessThan7~13_combout\);

-- Location: LCCOMB_X35_Y11_N14
\EXP|Calculate_Block.e[-1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-1]~29_combout\ = (\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Calculate_Block.e[-2]~28\ $ (GND))) # (!\EXP|Calculate_Block.e[-1]~regout\ & (!\EXP|Calculate_Block.e[-2]~28\ & VCC))
-- \EXP|Calculate_Block.e[-1]~30\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & !\EXP|Calculate_Block.e[-2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	cin => \EXP|Calculate_Block.e[-2]~28\,
	combout => \EXP|Calculate_Block.e[-1]~29_combout\,
	cout => \EXP|Calculate_Block.e[-1]~30\);

-- Location: LCCOMB_X35_Y11_N6
\EXP|Calculate_Block.e[-5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-5]~12_combout\ = (\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e\(1) $ (VCC))) # (!\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e\(1) & VCC))
-- \EXP|Calculate_Block.e[-5]~13\ = CARRY((\EXP|Calculate_Block.e[-5]~regout\ & \EXP|Calculate_Block.e\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	combout => \EXP|Calculate_Block.e[-5]~12_combout\,
	cout => \EXP|Calculate_Block.e[-5]~13\);

-- Location: LCCOMB_X35_Y11_N8
\EXP|Calculate_Block.e[-4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-4]~14_combout\ = (\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Calculate_Block.e[-5]~13\ & VCC)) # (!\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Calculate_Block.e[-5]~13\)))) # 
-- (!\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Calculate_Block.e[-5]~13\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Calculate_Block.e[-5]~13\) # (GND)))))
-- \EXP|Calculate_Block.e[-4]~15\ = CARRY((\EXP|Calculate_Block.e\(2) & (!\EXP|Calculate_Block.e[-4]~regout\ & !\EXP|Calculate_Block.e[-5]~13\)) # (!\EXP|Calculate_Block.e\(2) & ((!\EXP|Calculate_Block.e[-5]~13\) # (!\EXP|Calculate_Block.e[-4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datad => VCC,
	cin => \EXP|Calculate_Block.e[-5]~13\,
	combout => \EXP|Calculate_Block.e[-4]~14_combout\,
	cout => \EXP|Calculate_Block.e[-4]~15\);

-- Location: LCCOMB_X38_Y11_N2
\EXP|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~2_combout\ = (\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Calculate_Block.e\(1) & (\EXP|Add14~1\ & VCC)) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Add14~1\)))) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Calculate_Block.e\(1) & 
-- (!\EXP|Add14~1\)) # (!\EXP|Calculate_Block.e\(1) & ((\EXP|Add14~1\) # (GND)))))
-- \EXP|Add14~3\ = CARRY((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Calculate_Block.e\(1) & !\EXP|Add14~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((!\EXP|Add14~1\) # (!\EXP|Calculate_Block.e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~regout\,
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add14~1\,
	combout => \EXP|Add14~2_combout\,
	cout => \EXP|Add14~3\);

-- Location: LCCOMB_X40_Y11_N10
\EXP|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~0_combout\ = (\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-1]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-1]~regout\ & VCC))
-- \EXP|Add12~1\ = CARRY((\EXP|Calculate_Block.e[-5]~regout\ & \EXP|Calculate_Block.e[-1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	combout => \EXP|Add12~0_combout\,
	cout => \EXP|Add12~1\);

-- Location: LCCOMB_X40_Y11_N12
\EXP|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~2_combout\ = (\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Add12~1\ & VCC)) # (!\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Add12~1\)))) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e[-4]~regout\ & 
-- (!\EXP|Add12~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Add12~1\) # (GND)))))
-- \EXP|Add12~3\ = CARRY((\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e[-4]~regout\ & !\EXP|Add12~1\)) # (!\EXP|Calculate_Block.e\(0) & ((!\EXP|Add12~1\) # (!\EXP|Calculate_Block.e[-4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(0),
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datad => VCC,
	cin => \EXP|Add12~1\,
	combout => \EXP|Add12~2_combout\,
	cout => \EXP|Add12~3\);

-- Location: LCCOMB_X35_Y12_N0
\EXP|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add3~0_combout\ = (\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-4]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ & VCC))
-- \EXP|Add3~1\ = CARRY((\EXP|Calculate_Block.e[-4]~regout\ & \EXP|Calculate_Block.e[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~regout\,
	datab => \EXP|Calculate_Block.e[-5]~regout\,
	datad => VCC,
	combout => \EXP|Add3~0_combout\,
	cout => \EXP|Add3~1\);

-- Location: LCCOMB_X35_Y11_N10
\EXP|Calculate_Block.e[-3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-3]~22_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e\(3) $ (!\EXP|Calculate_Block.e[-4]~15\)))) # (GND)
-- \EXP|Calculate_Block.e[-3]~23\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e\(3)) # (!\EXP|Calculate_Block.e[-4]~15\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e\(3) & !\EXP|Calculate_Block.e[-4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[-4]~15\,
	combout => \EXP|Calculate_Block.e[-3]~22_combout\,
	cout => \EXP|Calculate_Block.e[-3]~23\);

-- Location: LCCOMB_X35_Y11_N12
\EXP|Calculate_Block.e[-2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[-2]~27_combout\ = (\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(4) & (\EXP|Calculate_Block.e[-3]~23\ & VCC)) # (!\EXP|Calculate_Block.e\(4) & (!\EXP|Calculate_Block.e[-3]~23\)))) # 
-- (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(4) & (!\EXP|Calculate_Block.e[-3]~23\)) # (!\EXP|Calculate_Block.e\(4) & ((\EXP|Calculate_Block.e[-3]~23\) # (GND)))))
-- \EXP|Calculate_Block.e[-2]~28\ = CARRY((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Calculate_Block.e\(4) & !\EXP|Calculate_Block.e[-3]~23\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((!\EXP|Calculate_Block.e[-3]~23\) # (!\EXP|Calculate_Block.e\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Calculate_Block.e\(4),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[-3]~23\,
	combout => \EXP|Calculate_Block.e[-2]~27_combout\,
	cout => \EXP|Calculate_Block.e[-2]~28\);

-- Location: LCCOMB_X38_Y11_N6
\EXP|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~6_combout\ = (\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(3) & (\EXP|Add14~5\ & VCC)) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add14~5\)))) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Calculate_Block.e\(3) & 
-- (!\EXP|Add14~5\)) # (!\EXP|Calculate_Block.e\(3) & ((\EXP|Add14~5\) # (GND)))))
-- \EXP|Add14~7\ = CARRY((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Calculate_Block.e\(3) & !\EXP|Add14~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((!\EXP|Add14~5\) # (!\EXP|Calculate_Block.e\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add14~5\,
	combout => \EXP|Add14~6_combout\,
	cout => \EXP|Add14~7\);

-- Location: LCCOMB_X40_Y11_N14
\EXP|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~4_combout\ = ((\EXP|Calculate_Block.e[-3]~regout\ $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add12~3\)))) # (GND)
-- \EXP|Add12~5\ = CARRY((\EXP|Calculate_Block.e[-3]~regout\ & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add12~3\))) # (!\EXP|Calculate_Block.e[-3]~regout\ & (\EXP|Calculate_Block.e\(1) & !\EXP|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~regout\,
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add12~3\,
	combout => \EXP|Add12~4_combout\,
	cout => \EXP|Add12~5\);

-- Location: LCCOMB_X36_Y13_N0
\EXP|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~0_combout\ = (\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-3]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-3]~regout\ & VCC))
-- \EXP|Add1~1\ = CARRY((\EXP|Calculate_Block.e[-5]~regout\ & \EXP|Calculate_Block.e[-3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Calculate_Block.e[-3]~regout\,
	datad => VCC,
	combout => \EXP|Add1~0_combout\,
	cout => \EXP|Add1~1\);

-- Location: LCCOMB_X37_Y11_N14
\EXP|e~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~9_combout\ = (\EXP|Calculate_Block.e[-3]~26_combout\ & ((\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Add6~4_combout\)) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Calculate_Block.e[-4]~regout\))))) # 
-- (!\EXP|Calculate_Block.e[-3]~26_combout\ & (((\EXP|Calculate_Block.e[-3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add6~4_combout\,
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datac => \EXP|Calculate_Block.e[-3]~26_combout\,
	datad => \EXP|Calculate_Block.e[-3]~24_combout\,
	combout => \EXP|e~9_combout\);

-- Location: LCCOMB_X37_Y11_N28
\EXP|e~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~10_combout\ = (\EXP|e~9_combout\ & ((\EXP|Add3~2_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|e~9_combout\ & (((\EXP|Add1~0_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~2_combout\,
	datab => \EXP|Add1~0_combout\,
	datac => \EXP|e~9_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|e~10_combout\);

-- Location: LCCOMB_X37_Y11_N10
\EXP|e~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~11_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add10~4_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|e~10_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~4_combout\,
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~10_combout\,
	combout => \EXP|e~11_combout\);

-- Location: LCCOMB_X37_Y11_N12
\EXP|e~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~12_combout\ = (\EXP|e~11_combout\ & ((\EXP|Add12~4_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add12~4_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~11_combout\,
	combout => \EXP|e~12_combout\);

-- Location: LCCOMB_X37_Y11_N6
\EXP|e~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~13_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~12_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~4_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~12_combout\,
	combout => \EXP|e~13_combout\);

-- Location: LCFF_X35_Y11_N11
\EXP|Calculate_Block.e[-3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[-3]~22_combout\,
	sdata => \EXP|e~13_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e[-3]~regout\);

-- Location: LCCOMB_X36_Y13_N2
\EXP|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~2_combout\ = (\EXP|Calculate_Block.e[-4]~regout\ & ((\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Add1~1\ & VCC)) # (!\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add1~1\)))) # (!\EXP|Calculate_Block.e[-4]~regout\ & 
-- ((\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add1~1\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Add1~1\) # (GND)))))
-- \EXP|Add1~3\ = CARRY((\EXP|Calculate_Block.e[-4]~regout\ & (!\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add1~1\)) # (!\EXP|Calculate_Block.e[-4]~regout\ & ((!\EXP|Add1~1\) # (!\EXP|Calculate_Block.e[-2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~regout\,
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add1~1\,
	combout => \EXP|Add1~2_combout\,
	cout => \EXP|Add1~3\);

-- Location: LCCOMB_X36_Y13_N16
\EXP|e~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~14_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add6~6_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Calculate_Block.e[-3]~regout\ & 
-- \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add6~6_combout\,
	datab => \EXP|Calculate_Block.e[-3]~regout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|e~14_combout\);

-- Location: LCCOMB_X36_Y13_N18
\EXP|e~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~15_combout\ = (\EXP|e~14_combout\ & ((\EXP|Add3~4_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|e~14_combout\ & (((\EXP|Add1~2_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~4_combout\,
	datab => \EXP|Add1~2_combout\,
	datac => \EXP|e~14_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|e~15_combout\);

-- Location: LCCOMB_X36_Y13_N28
\EXP|e~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~16_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add10~6_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|e~15_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~6_combout\,
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~15_combout\,
	combout => \EXP|e~16_combout\);

-- Location: LCCOMB_X36_Y13_N30
\EXP|e~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~17_combout\ = (\EXP|e~16_combout\ & ((\EXP|Add12~6_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add12~6_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~16_combout\,
	combout => \EXP|e~17_combout\);

-- Location: LCCOMB_X36_Y13_N24
\EXP|e~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~18_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~17_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add14~6_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~17_combout\,
	combout => \EXP|e~18_combout\);

-- Location: LCFF_X35_Y11_N13
\EXP|Calculate_Block.e[-2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[-2]~27_combout\,
	sdata => \EXP|e~18_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e[-2]~regout\);

-- Location: LCCOMB_X35_Y12_N30
\EXP|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add8~2_combout\ = \EXP|Calculate_Block.e[-4]~regout\ $ (\EXP|Add8~1\ $ (\EXP|Calculate_Block.e[-2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~regout\,
	datad => \EXP|Calculate_Block.e[-2]~regout\,
	cin => \EXP|Add8~1\,
	combout => \EXP|Add8~2_combout\);

-- Location: LCCOMB_X36_Y11_N10
\EXP|e~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~5_combout\ = (\EXP|Calculate_Block.e[-4]~21_combout\ & (((\EXP|Add8~2_combout\) # (\EXP|Calculate_Block.e[-4]~20_combout\)))) # (!\EXP|Calculate_Block.e[-4]~21_combout\ & (\EXP|Add6~2_combout\ & ((!\EXP|Calculate_Block.e[-4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add6~2_combout\,
	datab => \EXP|Add8~2_combout\,
	datac => \EXP|Calculate_Block.e[-4]~21_combout\,
	datad => \EXP|Calculate_Block.e[-4]~20_combout\,
	combout => \EXP|e~5_combout\);

-- Location: LCCOMB_X35_Y11_N0
\EXP|e~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~6_combout\ = (\EXP|e~5_combout\ & ((\EXP|Calculate_Block.e[-5]~regout\) # ((!\EXP|Calculate_Block.e[-4]~19_combout\)))) # (!\EXP|e~5_combout\ & (((\EXP|Add3~0_combout\ & \EXP|Calculate_Block.e[-4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Add3~0_combout\,
	datac => \EXP|e~5_combout\,
	datad => \EXP|Calculate_Block.e[-4]~19_combout\,
	combout => \EXP|e~6_combout\);

-- Location: LCCOMB_X35_Y11_N26
\EXP|e~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~7_combout\ = (\EXP|Calculate_Block.e[-4]~16_combout\ & (((\EXP|Calculate_Block.e[-4]~17_combout\)))) # (!\EXP|Calculate_Block.e[-4]~16_combout\ & ((\EXP|Calculate_Block.e[-4]~17_combout\ & (\EXP|Add12~2_combout\)) # 
-- (!\EXP|Calculate_Block.e[-4]~17_combout\ & ((\EXP|e~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-4]~16_combout\,
	datab => \EXP|Add12~2_combout\,
	datac => \EXP|Calculate_Block.e[-4]~17_combout\,
	datad => \EXP|e~6_combout\,
	combout => \EXP|e~7_combout\);

-- Location: LCCOMB_X35_Y11_N4
\EXP|e~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~8_combout\ = (\EXP|Calculate_Block.e[-4]~16_combout\ & ((\EXP|e~7_combout\ & ((\EXP|Add14~2_combout\))) # (!\EXP|e~7_combout\ & (\EXP|Add10~2_combout\)))) # (!\EXP|Calculate_Block.e[-4]~16_combout\ & (((\EXP|e~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~2_combout\,
	datab => \EXP|Add14~2_combout\,
	datac => \EXP|Calculate_Block.e[-4]~16_combout\,
	datad => \EXP|e~7_combout\,
	combout => \EXP|e~8_combout\);

-- Location: LCFF_X35_Y11_N9
\EXP|Calculate_Block.e[-4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[-4]~14_combout\,
	sdata => \EXP|e~8_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e[-4]~regout\);

-- Location: LCCOMB_X40_Y11_N18
\EXP|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~8_combout\ = ((\EXP|Calculate_Block.e\(3) $ (\EXP|Calculate_Block.e[-1]~regout\ $ (!\EXP|Add12~7\)))) # (GND)
-- \EXP|Add12~9\ = CARRY((\EXP|Calculate_Block.e\(3) & ((\EXP|Calculate_Block.e[-1]~regout\) # (!\EXP|Add12~7\))) # (!\EXP|Calculate_Block.e\(3) & (\EXP|Calculate_Block.e[-1]~regout\ & !\EXP|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datab => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add12~7\,
	combout => \EXP|Add12~8_combout\,
	cout => \EXP|Add12~9\);

-- Location: LCCOMB_X40_Y11_N22
\EXP|Add12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~12_combout\ = (\EXP|Calculate_Block.e\(1) & (\EXP|Add12~11\ $ (GND))) # (!\EXP|Calculate_Block.e\(1) & (!\EXP|Add12~11\ & VCC))
-- \EXP|Add12~13\ = CARRY((\EXP|Calculate_Block.e\(1) & !\EXP|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add12~11\,
	combout => \EXP|Add12~12_combout\,
	cout => \EXP|Add12~13\);

-- Location: LCCOMB_X40_Y11_N24
\EXP|Add12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~14_combout\ = (\EXP|Calculate_Block.e\(2) & (!\EXP|Add12~13\)) # (!\EXP|Calculate_Block.e\(2) & ((\EXP|Add12~13\) # (GND)))
-- \EXP|Add12~15\ = CARRY((!\EXP|Add12~13\) # (!\EXP|Calculate_Block.e\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add12~13\,
	combout => \EXP|Add12~14_combout\,
	cout => \EXP|Add12~15\);

-- Location: LCCOMB_X36_Y13_N4
\EXP|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~4_combout\ = ((\EXP|Calculate_Block.e[-1]~regout\ $ (\EXP|Calculate_Block.e[-3]~regout\ $ (!\EXP|Add1~3\)))) # (GND)
-- \EXP|Add1~5\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e[-3]~regout\) # (!\EXP|Add1~3\))) # (!\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Calculate_Block.e[-3]~regout\ & !\EXP|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e[-3]~regout\,
	datad => VCC,
	cin => \EXP|Add1~3\,
	combout => \EXP|Add1~4_combout\,
	cout => \EXP|Add1~5\);

-- Location: LCCOMB_X36_Y13_N6
\EXP|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~6_combout\ = (\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Add1~5\ & VCC)) # (!\EXP|Calculate_Block.e[-2]~regout\ & (!\EXP|Add1~5\)))) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e[-2]~regout\ & 
-- (!\EXP|Add1~5\)) # (!\EXP|Calculate_Block.e[-2]~regout\ & ((\EXP|Add1~5\) # (GND)))))
-- \EXP|Add1~7\ = CARRY((\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e[-2]~regout\ & !\EXP|Add1~5\)) # (!\EXP|Calculate_Block.e\(0) & ((!\EXP|Add1~5\) # (!\EXP|Calculate_Block.e[-2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(0),
	datab => \EXP|Calculate_Block.e[-2]~regout\,
	datad => VCC,
	cin => \EXP|Add1~5\,
	combout => \EXP|Add1~6_combout\,
	cout => \EXP|Add1~7\);

-- Location: LCCOMB_X36_Y13_N8
\EXP|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~8_combout\ = ((\EXP|Calculate_Block.e[-1]~regout\ $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add1~7\)))) # (GND)
-- \EXP|Add1~9\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add1~7\))) # (!\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Calculate_Block.e\(1) & !\EXP|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add1~7\,
	combout => \EXP|Add1~8_combout\,
	cout => \EXP|Add1~9\);

-- Location: LCCOMB_X36_Y13_N10
\EXP|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~10_combout\ = (\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(2) & (\EXP|Add1~9\ & VCC)) # (!\EXP|Calculate_Block.e\(2) & (!\EXP|Add1~9\)))) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e\(2) & (!\EXP|Add1~9\)) # 
-- (!\EXP|Calculate_Block.e\(2) & ((\EXP|Add1~9\) # (GND)))))
-- \EXP|Add1~11\ = CARRY((\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e\(2) & !\EXP|Add1~9\)) # (!\EXP|Calculate_Block.e\(0) & ((!\EXP|Add1~9\) # (!\EXP|Calculate_Block.e\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(0),
	datab => \EXP|Calculate_Block.e\(2),
	datad => VCC,
	cin => \EXP|Add1~9\,
	combout => \EXP|Add1~10_combout\,
	cout => \EXP|Add1~11\);

-- Location: LCCOMB_X38_Y12_N0
\EXP|e~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~34_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add6~14_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Calculate_Block.e\(1) & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add6~14_combout\,
	datab => \EXP|Calculate_Block.e\(1),
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|e~34_combout\);

-- Location: LCCOMB_X38_Y12_N10
\EXP|e~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~35_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|e~34_combout\ & (\EXP|Add3~12_combout\)) # (!\EXP|e~34_combout\ & ((\EXP|Add1~10_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|e~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~12_combout\,
	datab => \EXP|Add1~10_combout\,
	datac => \EXP|Calculate_Block.e[-3]~25_combout\,
	datad => \EXP|e~34_combout\,
	combout => \EXP|e~35_combout\);

-- Location: LCCOMB_X38_Y12_N24
\EXP|e~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~36_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add10~14_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|e~35_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~14_combout\,
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~35_combout\,
	combout => \EXP|e~36_combout\);

-- Location: LCCOMB_X37_Y12_N20
\EXP|e~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~37_combout\ = (\EXP|e~36_combout\ & ((\EXP|Add12~14_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add12~14_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~36_combout\,
	combout => \EXP|e~37_combout\);

-- Location: LCCOMB_X36_Y12_N16
\EXP|e~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~38_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~37_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~14_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~37_combout\,
	combout => \EXP|e~38_combout\);

-- Location: LCFF_X35_Y11_N21
\EXP|Calculate_Block.e[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[2]~35_combout\,
	sdata => \EXP|e~38_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e\(2));

-- Location: LCCOMB_X38_Y11_N8
\EXP|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~8_combout\ = ((\EXP|Calculate_Block.e\(4) $ (\EXP|Calculate_Block.e[-1]~regout\ $ (!\EXP|Add14~7\)))) # (GND)
-- \EXP|Add14~9\ = CARRY((\EXP|Calculate_Block.e\(4) & ((\EXP|Calculate_Block.e[-1]~regout\) # (!\EXP|Add14~7\))) # (!\EXP|Calculate_Block.e\(4) & (\EXP|Calculate_Block.e[-1]~regout\ & !\EXP|Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(4),
	datab => \EXP|Calculate_Block.e[-1]~regout\,
	datad => VCC,
	cin => \EXP|Add14~7\,
	combout => \EXP|Add14~8_combout\,
	cout => \EXP|Add14~9\);

-- Location: LCCOMB_X37_Y13_N0
\EXP|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~0_combout\ = (\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-4]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-5]~regout\ & (\EXP|Calculate_Block.e[-4]~regout\ & VCC))
-- \EXP|Add6~1\ = CARRY((\EXP|Calculate_Block.e[-5]~regout\ & \EXP|Calculate_Block.e[-4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-5]~regout\,
	datab => \EXP|Calculate_Block.e[-4]~regout\,
	datad => VCC,
	combout => \EXP|Add6~0_combout\,
	cout => \EXP|Add6~1\);

-- Location: LCCOMB_X37_Y13_N8
\EXP|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~8_combout\ = ((\EXP|Calculate_Block.e[-1]~regout\ $ (\EXP|Calculate_Block.e\(0) $ (!\EXP|Add6~7\)))) # (GND)
-- \EXP|Add6~9\ = CARRY((\EXP|Calculate_Block.e[-1]~regout\ & ((\EXP|Calculate_Block.e\(0)) # (!\EXP|Add6~7\))) # (!\EXP|Calculate_Block.e[-1]~regout\ & (\EXP|Calculate_Block.e\(0) & !\EXP|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add6~7\,
	combout => \EXP|Add6~8_combout\,
	cout => \EXP|Add6~9\);

-- Location: LCCOMB_X37_Y13_N28
\EXP|e~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~19_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add6~8_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Calculate_Block.e[-2]~regout\ & 
-- ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Add6~8_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|e~19_combout\);

-- Location: LCCOMB_X36_Y13_N26
\EXP|e~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~20_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|e~19_combout\ & (\EXP|Add3~6_combout\)) # (!\EXP|e~19_combout\ & ((\EXP|Add1~4_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|e~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~25_combout\,
	datab => \EXP|Add3~6_combout\,
	datac => \EXP|Add1~4_combout\,
	datad => \EXP|e~19_combout\,
	combout => \EXP|e~20_combout\);

-- Location: LCCOMB_X36_Y13_N20
\EXP|e~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~21_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|e~20_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~20_combout\,
	combout => \EXP|e~21_combout\);

-- Location: LCCOMB_X36_Y13_N22
\EXP|e~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~22_combout\ = (\EXP|e~21_combout\ & (((\EXP|Add12~8_combout\) # (!\EXP|Calculate_Block.e[-3]~41_combout\)))) # (!\EXP|e~21_combout\ & (\EXP|Add10~8_combout\ & ((\EXP|Calculate_Block.e[-3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~8_combout\,
	datab => \EXP|Add12~8_combout\,
	datac => \EXP|e~21_combout\,
	datad => \EXP|Calculate_Block.e[-3]~41_combout\,
	combout => \EXP|e~22_combout\);

-- Location: LCCOMB_X35_Y11_N30
\EXP|e~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~23_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~22_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan7~13_combout\,
	datac => \EXP|Add14~8_combout\,
	datad => \EXP|e~22_combout\,
	combout => \EXP|e~23_combout\);

-- Location: LCFF_X35_Y11_N15
\EXP|Calculate_Block.e[-1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[-1]~29_combout\,
	sdata => \EXP|e~23_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e[-1]~regout\);

-- Location: LCCOMB_X35_Y13_N4
\EXP|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~0_combout\ = (\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ $ (VCC))) # (!\EXP|Calculate_Block.e[-2]~regout\ & (\EXP|Calculate_Block.e[-5]~regout\ & VCC))
-- \EXP|Add10~1\ = CARRY((\EXP|Calculate_Block.e[-2]~regout\ & \EXP|Calculate_Block.e[-5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-2]~regout\,
	datab => \EXP|Calculate_Block.e[-5]~regout\,
	datad => VCC,
	combout => \EXP|Add10~0_combout\,
	cout => \EXP|Add10~1\);

-- Location: LCCOMB_X35_Y13_N14
\EXP|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~10_combout\ = (\EXP|Calculate_Block.e\(3) & ((\EXP|Calculate_Block.e\(0) & (\EXP|Add10~9\ & VCC)) # (!\EXP|Calculate_Block.e\(0) & (!\EXP|Add10~9\)))) # (!\EXP|Calculate_Block.e\(3) & ((\EXP|Calculate_Block.e\(0) & (!\EXP|Add10~9\)) # 
-- (!\EXP|Calculate_Block.e\(0) & ((\EXP|Add10~9\) # (GND)))))
-- \EXP|Add10~11\ = CARRY((\EXP|Calculate_Block.e\(3) & (!\EXP|Calculate_Block.e\(0) & !\EXP|Add10~9\)) # (!\EXP|Calculate_Block.e\(3) & ((!\EXP|Add10~9\) # (!\EXP|Calculate_Block.e\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add10~9\,
	combout => \EXP|Add10~10_combout\,
	cout => \EXP|Add10~11\);

-- Location: LCCOMB_X35_Y13_N20
\EXP|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~16_combout\ = (\EXP|Calculate_Block.e\(3) & (\EXP|Add10~15\ $ (GND))) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add10~15\ & VCC))
-- \EXP|Add10~17\ = CARRY((\EXP|Calculate_Block.e\(3) & !\EXP|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add10~15\,
	combout => \EXP|Add10~16_combout\,
	cout => \EXP|Add10~17\);

-- Location: LCCOMB_X40_Y11_N26
\EXP|Add12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~16_combout\ = (\EXP|Calculate_Block.e\(3) & (\EXP|Add12~15\ $ (GND))) # (!\EXP|Calculate_Block.e\(3) & (!\EXP|Add12~15\ & VCC))
-- \EXP|Add12~17\ = CARRY((\EXP|Calculate_Block.e\(3) & !\EXP|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datad => VCC,
	cin => \EXP|Add12~15\,
	combout => \EXP|Add12~16_combout\,
	cout => \EXP|Add12~17\);

-- Location: LCCOMB_X36_Y13_N12
\EXP|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~12_combout\ = ((\EXP|Calculate_Block.e\(3) $ (\EXP|Calculate_Block.e\(1) $ (!\EXP|Add1~11\)))) # (GND)
-- \EXP|Add1~13\ = CARRY((\EXP|Calculate_Block.e\(3) & ((\EXP|Calculate_Block.e\(1)) # (!\EXP|Add1~11\))) # (!\EXP|Calculate_Block.e\(3) & (\EXP|Calculate_Block.e\(1) & !\EXP|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datab => \EXP|Calculate_Block.e\(1),
	datad => VCC,
	cin => \EXP|Add1~11\,
	combout => \EXP|Add1~12_combout\,
	cout => \EXP|Add1~13\);

-- Location: LCCOMB_X37_Y13_N10
\EXP|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~10_combout\ = (\EXP|Calculate_Block.e\(1) & ((\EXP|Calculate_Block.e\(0) & (\EXP|Add6~9\ & VCC)) # (!\EXP|Calculate_Block.e\(0) & (!\EXP|Add6~9\)))) # (!\EXP|Calculate_Block.e\(1) & ((\EXP|Calculate_Block.e\(0) & (!\EXP|Add6~9\)) # 
-- (!\EXP|Calculate_Block.e\(0) & ((\EXP|Add6~9\) # (GND)))))
-- \EXP|Add6~11\ = CARRY((\EXP|Calculate_Block.e\(1) & (!\EXP|Calculate_Block.e\(0) & !\EXP|Add6~9\)) # (!\EXP|Calculate_Block.e\(1) & ((!\EXP|Add6~9\) # (!\EXP|Calculate_Block.e\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(1),
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Add6~9\,
	combout => \EXP|Add6~10_combout\,
	cout => \EXP|Add6~11\);

-- Location: LCCOMB_X37_Y13_N16
\EXP|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~16_combout\ = ((\EXP|Calculate_Block.e\(3) $ (\EXP|Calculate_Block.e\(4) $ (!\EXP|Add6~15\)))) # (GND)
-- \EXP|Add6~17\ = CARRY((\EXP|Calculate_Block.e\(3) & ((\EXP|Calculate_Block.e\(4)) # (!\EXP|Add6~15\))) # (!\EXP|Calculate_Block.e\(3) & (\EXP|Calculate_Block.e\(4) & !\EXP|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datab => \EXP|Calculate_Block.e\(4),
	datad => VCC,
	cin => \EXP|Add6~15\,
	combout => \EXP|Add6~16_combout\,
	cout => \EXP|Add6~17\);

-- Location: LCCOMB_X36_Y12_N6
\EXP|e~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~39_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Add6~16_combout\) # (!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Calculate_Block.e\(2) & ((\EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(2),
	datab => \EXP|Add6~16_combout\,
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|e~39_combout\);

-- Location: LCCOMB_X36_Y12_N0
\EXP|e~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~40_combout\ = (\EXP|Calculate_Block.e[-3]~25_combout\ & ((\EXP|e~39_combout\ & (\EXP|Add3~14_combout\)) # (!\EXP|e~39_combout\ & ((\EXP|Add1~12_combout\))))) # (!\EXP|Calculate_Block.e[-3]~25_combout\ & (((\EXP|e~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~14_combout\,
	datab => \EXP|Add1~12_combout\,
	datac => \EXP|Calculate_Block.e[-3]~25_combout\,
	datad => \EXP|e~39_combout\,
	combout => \EXP|e~40_combout\);

-- Location: LCCOMB_X36_Y12_N22
\EXP|e~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~41_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|e~40_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~40_combout\,
	combout => \EXP|e~41_combout\);

-- Location: LCCOMB_X36_Y12_N8
\EXP|e~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~42_combout\ = (\EXP|Calculate_Block.e[-3]~41_combout\ & ((\EXP|e~41_combout\ & ((\EXP|Add12~16_combout\))) # (!\EXP|e~41_combout\ & (\EXP|Add10~16_combout\)))) # (!\EXP|Calculate_Block.e[-3]~41_combout\ & (((\EXP|e~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-3]~41_combout\,
	datab => \EXP|Add10~16_combout\,
	datac => \EXP|Add12~16_combout\,
	datad => \EXP|e~41_combout\,
	combout => \EXP|e~42_combout\);

-- Location: LCCOMB_X35_Y11_N2
\EXP|e~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~43_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~42_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~16_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~42_combout\,
	combout => \EXP|e~43_combout\);

-- Location: LCFF_X35_Y11_N23
\EXP|Calculate_Block.e[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[3]~37_combout\,
	sdata => \EXP|e~43_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e\(3));

-- Location: LCCOMB_X35_Y11_N24
\EXP|Calculate_Block.e[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[4]~39_combout\ = \EXP|Calculate_Block.e[3]~38\ $ (\EXP|Calculate_Block.e\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Calculate_Block.e[3]~38\,
	combout => \EXP|Calculate_Block.e[4]~39_combout\);

-- Location: LCCOMB_X38_Y11_N18
\EXP|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add14~18_combout\ = \EXP|Calculate_Block.e\(4) $ (\EXP|Add14~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add14~17\,
	combout => \EXP|Add14~18_combout\);

-- Location: LCCOMB_X40_Y11_N28
\EXP|Add12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add12~18_combout\ = \EXP|Add12~17\ $ (\EXP|Calculate_Block.e\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add12~17\,
	combout => \EXP|Add12~18_combout\);

-- Location: LCCOMB_X35_Y13_N22
\EXP|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add10~18_combout\ = \EXP|Add10~17\ $ (\EXP|Calculate_Block.e\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add10~17\,
	combout => \EXP|Add10~18_combout\);

-- Location: LCCOMB_X36_Y13_N14
\EXP|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add1~14_combout\ = \EXP|Calculate_Block.e\(2) $ (\EXP|Add1~13\ $ (\EXP|Calculate_Block.e\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(2),
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add1~13\,
	combout => \EXP|Add1~14_combout\);

-- Location: LCCOMB_X37_Y13_N18
\EXP|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Add6~18_combout\ = \EXP|Add6~17\ $ (\EXP|Calculate_Block.e\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(4),
	cin => \EXP|Add6~17\,
	combout => \EXP|Add6~18_combout\);

-- Location: LCCOMB_X37_Y11_N20
\EXP|e~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~44_combout\ = (\EXP|Calculate_Block.e[-3]~26_combout\ & ((\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add6~18_combout\))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Calculate_Block.e\(3))))) # (!\EXP|Calculate_Block.e[-3]~26_combout\ & 
-- (((\EXP|Calculate_Block.e[-3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e\(3),
	datab => \EXP|Add6~18_combout\,
	datac => \EXP|Calculate_Block.e[-3]~26_combout\,
	datad => \EXP|Calculate_Block.e[-3]~24_combout\,
	combout => \EXP|e~44_combout\);

-- Location: LCCOMB_X37_Y11_N26
\EXP|e~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~45_combout\ = (\EXP|e~44_combout\ & ((\EXP|Add3~16_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|e~44_combout\ & (((\EXP|Add1~14_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~16_combout\,
	datab => \EXP|Add1~14_combout\,
	datac => \EXP|e~44_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|e~45_combout\);

-- Location: LCCOMB_X34_Y11_N6
\EXP|e~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~46_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add10~18_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|e~45_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|Add10~18_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|e~45_combout\,
	combout => \EXP|e~46_combout\);

-- Location: LCCOMB_X34_Y11_N0
\EXP|e~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~47_combout\ = (\EXP|e~46_combout\ & ((\EXP|Add12~18_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add12~18_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~46_combout\,
	combout => \EXP|e~47_combout\);

-- Location: LCCOMB_X34_Y11_N30
\EXP|e~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~48_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~47_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Add14~18_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~47_combout\,
	combout => \EXP|e~48_combout\);

-- Location: LCFF_X35_Y11_N25
\EXP|Calculate_Block.e[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[4]~39_combout\,
	sdata => \EXP|e~48_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e\(4));

-- Location: LCCOMB_X35_Y11_N16
\EXP|Calculate_Block.e[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|Calculate_Block.e[0]~31_combout\ = (\EXP|Calculate_Block.e\(0) & (!\EXP|Calculate_Block.e[-1]~30\)) # (!\EXP|Calculate_Block.e\(0) & ((\EXP|Calculate_Block.e[-1]~30\) # (GND)))
-- \EXP|Calculate_Block.e[0]~32\ = CARRY((!\EXP|Calculate_Block.e[-1]~30\) # (!\EXP|Calculate_Block.e\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EXP|Calculate_Block.e\(0),
	datad => VCC,
	cin => \EXP|Calculate_Block.e[-1]~30\,
	combout => \EXP|Calculate_Block.e[0]~31_combout\,
	cout => \EXP|Calculate_Block.e[0]~32\);

-- Location: LCCOMB_X37_Y11_N24
\EXP|e~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~24_combout\ = (\EXP|Calculate_Block.e[-3]~26_combout\ & ((\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add6~10_combout\))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (\EXP|Calculate_Block.e[-1]~regout\)))) # 
-- (!\EXP|Calculate_Block.e[-3]~26_combout\ & (((!\EXP|Calculate_Block.e[-3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Calculate_Block.e[-1]~regout\,
	datab => \EXP|Add6~10_combout\,
	datac => \EXP|Calculate_Block.e[-3]~26_combout\,
	datad => \EXP|Calculate_Block.e[-3]~24_combout\,
	combout => \EXP|e~24_combout\);

-- Location: LCCOMB_X37_Y11_N22
\EXP|e~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~25_combout\ = (\EXP|e~24_combout\ & (((\EXP|Add1~6_combout\) # (!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|e~24_combout\ & (\EXP|Add3~8_combout\ & ((\EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~8_combout\,
	datab => \EXP|Add1~6_combout\,
	datac => \EXP|e~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|e~25_combout\);

-- Location: LCCOMB_X34_Y11_N28
\EXP|e~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~26_combout\ = ((\EXP|LessThan5~8_combout\ & (\EXP|Add10~10_combout\)) # (!\EXP|LessThan5~8_combout\ & ((\EXP|e~25_combout\)))) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan6~7_combout\,
	datab => \EXP|Add10~10_combout\,
	datac => \EXP|LessThan5~8_combout\,
	datad => \EXP|e~25_combout\,
	combout => \EXP|e~26_combout\);

-- Location: LCCOMB_X34_Y11_N2
\EXP|e~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~27_combout\ = (\EXP|e~26_combout\ & ((\EXP|Add12~10_combout\) # (\EXP|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add12~10_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~26_combout\,
	combout => \EXP|e~27_combout\);

-- Location: LCCOMB_X34_Y11_N4
\EXP|e~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~28_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~27_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~10_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~27_combout\,
	combout => \EXP|e~28_combout\);

-- Location: LCFF_X35_Y11_N17
\EXP|Calculate_Block.e[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[0]~31_combout\,
	sdata => \EXP|e~28_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e\(0));

-- Location: LCCOMB_X36_Y12_N4
\EXP|e~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~29_combout\ = (\EXP|Calculate_Block.e[-3]~24_combout\ & ((\EXP|Add6~12_combout\) # ((!\EXP|Calculate_Block.e[-3]~26_combout\)))) # (!\EXP|Calculate_Block.e[-3]~24_combout\ & (((\EXP|Calculate_Block.e\(0) & \EXP|Calculate_Block.e[-3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add6~12_combout\,
	datab => \EXP|Calculate_Block.e\(0),
	datac => \EXP|Calculate_Block.e[-3]~24_combout\,
	datad => \EXP|Calculate_Block.e[-3]~26_combout\,
	combout => \EXP|e~29_combout\);

-- Location: LCCOMB_X36_Y12_N26
\EXP|e~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~30_combout\ = (\EXP|e~29_combout\ & ((\EXP|Add3~10_combout\) # ((!\EXP|Calculate_Block.e[-3]~25_combout\)))) # (!\EXP|e~29_combout\ & (((\EXP|Add1~8_combout\ & \EXP|Calculate_Block.e[-3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add3~10_combout\,
	datab => \EXP|Add1~8_combout\,
	datac => \EXP|e~29_combout\,
	datad => \EXP|Calculate_Block.e[-3]~25_combout\,
	combout => \EXP|e~30_combout\);

-- Location: LCCOMB_X36_Y12_N20
\EXP|e~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~31_combout\ = ((!\EXP|LessThan5~8_combout\ & \EXP|e~30_combout\)) # (!\EXP|LessThan6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXP|LessThan5~8_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~30_combout\,
	combout => \EXP|e~31_combout\);

-- Location: LCCOMB_X36_Y12_N10
\EXP|e~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~32_combout\ = (\EXP|e~31_combout\ & (((\EXP|Add12~12_combout\) # (!\EXP|Calculate_Block.e[-3]~41_combout\)))) # (!\EXP|e~31_combout\ & (\EXP|Add10~12_combout\ & ((\EXP|Calculate_Block.e[-3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add10~12_combout\,
	datab => \EXP|Add12~12_combout\,
	datac => \EXP|e~31_combout\,
	datad => \EXP|Calculate_Block.e[-3]~41_combout\,
	combout => \EXP|e~32_combout\);

-- Location: LCCOMB_X35_Y11_N28
\EXP|e~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~33_combout\ = (\EXP|LessThan7~13_combout\ & ((\EXP|e~32_combout\))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~12_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~32_combout\,
	combout => \EXP|e~33_combout\);

-- Location: LCFF_X35_Y11_N19
\EXP|Calculate_Block.e[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[1]~33_combout\,
	sdata => \EXP|e~33_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e\(1));

-- Location: LCCOMB_X35_Y9_N28
\EXP|e~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~0_combout\ = (!\EXP|LessThan6~7_combout\ & \EXP|Add12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|Add12~0_combout\,
	combout => \EXP|e~0_combout\);

-- Location: LCCOMB_X35_Y9_N12
\EXP|e~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~2_combout\ = (\EXP|LessThan4~10_combout\ & (((!\EXP|e~1_combout\ & \EXP|Add6~0_combout\)))) # (!\EXP|LessThan4~10_combout\ & (\EXP|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add8~0_combout\,
	datab => \EXP|e~1_combout\,
	datac => \EXP|Add6~0_combout\,
	datad => \EXP|LessThan4~10_combout\,
	combout => \EXP|e~2_combout\);

-- Location: LCCOMB_X35_Y9_N26
\EXP|e~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~3_combout\ = (\EXP|LessThan6~7_combout\ & ((\EXP|LessThan5~7_combout\ & ((\EXP|e~2_combout\))) # (!\EXP|LessThan5~7_combout\ & (\EXP|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|LessThan5~7_combout\,
	datab => \EXP|Add10~0_combout\,
	datac => \EXP|LessThan6~7_combout\,
	datad => \EXP|e~2_combout\,
	combout => \EXP|e~3_combout\);

-- Location: LCCOMB_X35_Y9_N8
\EXP|e~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|e~4_combout\ = (\EXP|LessThan7~13_combout\ & (((\EXP|e~0_combout\) # (\EXP|e~3_combout\)))) # (!\EXP|LessThan7~13_combout\ & (\EXP|Add14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXP|Add14~0_combout\,
	datab => \EXP|e~0_combout\,
	datac => \EXP|LessThan7~13_combout\,
	datad => \EXP|e~3_combout\,
	combout => \EXP|e~4_combout\);

-- Location: LCFF_X35_Y11_N7
\EXP|Calculate_Block.e[-5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|Calculate_Block.e[-5]~12_combout\,
	sdata => \EXP|e~4_combout\,
	sload => \EXP|ALT_INV_rem[-30]~69_combout\,
	ena => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|Calculate_Block.e[-5]~regout\);

-- Location: LCCOMB_X49_Y10_N0
\EXP|exp[-5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-5]~feeder_combout\ = \EXP|Calculate_Block.e[-5]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e[-5]~regout\,
	combout => \EXP|exp[-5]~feeder_combout\);

-- Location: LCFF_X49_Y10_N1
\EXP|exp[-5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-5]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-5]~regout\);

-- Location: LCCOMB_X44_Y10_N0
\EXP|exp[-4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-4]~feeder_combout\ = \EXP|Calculate_Block.e[-4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e[-4]~regout\,
	combout => \EXP|exp[-4]~feeder_combout\);

-- Location: LCFF_X44_Y10_N1
\EXP|exp[-4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-4]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-4]~regout\);

-- Location: LCCOMB_X44_Y10_N2
\EXP|exp[-3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-3]~feeder_combout\ = \EXP|Calculate_Block.e[-3]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e[-3]~regout\,
	combout => \EXP|exp[-3]~feeder_combout\);

-- Location: LCFF_X44_Y10_N3
\EXP|exp[-3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-3]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-3]~regout\);

-- Location: LCCOMB_X46_Y10_N20
\EXP|exp[-2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[-2]~feeder_combout\ = \EXP|Calculate_Block.e[-2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e[-2]~regout\,
	combout => \EXP|exp[-2]~feeder_combout\);

-- Location: LCFF_X46_Y10_N21
\EXP|exp[-2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[-2]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-2]~regout\);

-- Location: LCFF_X44_Y10_N13
\EXP|exp[-1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \EXP|Calculate_Block.e[-1]~regout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp[-1]~regout\);

-- Location: LCCOMB_X40_Y10_N12
\EXP|exp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[0]~0_combout\ = !\EXP|Calculate_Block.e\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(0),
	combout => \EXP|exp[0]~0_combout\);

-- Location: LCCOMB_X44_Y10_N22
\EXP|exp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[0]~feeder_combout\ = \EXP|exp[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|exp[0]~0_combout\,
	combout => \EXP|exp[0]~feeder_combout\);

-- Location: LCFF_X44_Y10_N23
\EXP|exp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[0]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(0));

-- Location: LCCOMB_X42_Y10_N16
\EXP|exp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[1]~feeder_combout\ = \EXP|Calculate_Block.e\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(1),
	combout => \EXP|exp[1]~feeder_combout\);

-- Location: LCFF_X42_Y10_N17
\EXP|exp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[1]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(1));

-- Location: LCCOMB_X44_Y10_N16
\EXP|exp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[2]~feeder_combout\ = \EXP|Calculate_Block.e\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(2),
	combout => \EXP|exp[2]~feeder_combout\);

-- Location: LCFF_X44_Y10_N17
\EXP|exp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[2]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(2));

-- Location: LCCOMB_X49_Y10_N18
\EXP|exp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EXP|exp[3]~feeder_combout\ = \EXP|Calculate_Block.e\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EXP|Calculate_Block.e\(3),
	combout => \EXP|exp[3]~feeder_combout\);

-- Location: LCFF_X49_Y10_N19
\EXP|exp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \EXP|exp[3]~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXP|exp\(3));

-- Location: LCFF_X46_Y10_N7
\EXP|exp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \EXP|Calculate_Block.e\(4),
	aclr => \KEY~combout\(0),
	sload => VCC,
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


