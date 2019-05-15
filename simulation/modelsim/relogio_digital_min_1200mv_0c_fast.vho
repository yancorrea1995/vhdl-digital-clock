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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/24/2017 16:07:48"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	relogio_digital IS
    PORT (
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX3_D : OUT std_logic_vector(6 DOWNTO 0);
	LedRelogio : OUT STD.STANDARD.bit;
	LedDespertador : OUT STD.STANDARD.bit;
	LedCronometro : OUT STD.STANDARD.bit;
	LedAlarme : OUT STD.STANDARD.bit;
	LedAlarmeDisparado1 : OUT STD.STANDARD.bit;
	LedAlarmeDisparado2 : OUT STD.STANDARD.bit;
	LedAlarmeDisparado3 : OUT STD.STANDARD.bit;
	LedAlarmeDisparado4 : OUT STD.STANDARD.bit;
	Buzzer : INOUT std_logic;
	PontoLCD : INOUT std_logic;
	CLOCK_50 : IN std_logic;
	UPminuto : IN std_logic;
	UPhora : IN std_logic;
	Modo : IN std_logic;
	Alarme : IN std_logic
	);
END relogio_digital;

-- Design Ports Information
-- HEX0_D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedRelogio	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedDespertador	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedCronometro	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedAlarme	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedAlarmeDisparado1	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedAlarmeDisparado2	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedAlarmeDisparado3	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedAlarmeDisparado4	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buzzer	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PontoLCD	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alarme	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPminuto	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Modo	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPhora	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relogio_digital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LedRelogio : std_logic;
SIGNAL ww_LedDespertador : std_logic;
SIGNAL ww_LedCronometro : std_logic;
SIGNAL ww_LedAlarme : std_logic;
SIGNAL ww_LedAlarmeDisparado1 : std_logic;
SIGNAL ww_LedAlarmeDisparado2 : std_logic;
SIGNAL ww_LedAlarmeDisparado3 : std_logic;
SIGNAL ww_LedAlarmeDisparado4 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_UPminuto : std_logic;
SIGNAL ww_UPhora : std_logic;
SIGNAL ww_Modo : std_logic;
SIGNAL ww_Alarme : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Buzzer~input_o\ : std_logic;
SIGNAL \PontoLCD~input_o\ : std_logic;
SIGNAL \Buzzer~output_o\ : std_logic;
SIGNAL \PontoLCD~output_o\ : std_logic;
SIGNAL \HEX0_D[0]~output_o\ : std_logic;
SIGNAL \HEX0_D[1]~output_o\ : std_logic;
SIGNAL \HEX0_D[2]~output_o\ : std_logic;
SIGNAL \HEX0_D[3]~output_o\ : std_logic;
SIGNAL \HEX0_D[4]~output_o\ : std_logic;
SIGNAL \HEX0_D[5]~output_o\ : std_logic;
SIGNAL \HEX0_D[6]~output_o\ : std_logic;
SIGNAL \HEX1_D[0]~output_o\ : std_logic;
SIGNAL \HEX1_D[1]~output_o\ : std_logic;
SIGNAL \HEX1_D[2]~output_o\ : std_logic;
SIGNAL \HEX1_D[3]~output_o\ : std_logic;
SIGNAL \HEX1_D[4]~output_o\ : std_logic;
SIGNAL \HEX1_D[5]~output_o\ : std_logic;
SIGNAL \HEX1_D[6]~output_o\ : std_logic;
SIGNAL \HEX2_D[0]~output_o\ : std_logic;
SIGNAL \HEX2_D[1]~output_o\ : std_logic;
SIGNAL \HEX2_D[2]~output_o\ : std_logic;
SIGNAL \HEX2_D[3]~output_o\ : std_logic;
SIGNAL \HEX2_D[4]~output_o\ : std_logic;
SIGNAL \HEX2_D[5]~output_o\ : std_logic;
SIGNAL \HEX2_D[6]~output_o\ : std_logic;
SIGNAL \HEX3_D[0]~output_o\ : std_logic;
SIGNAL \HEX3_D[1]~output_o\ : std_logic;
SIGNAL \HEX3_D[2]~output_o\ : std_logic;
SIGNAL \HEX3_D[3]~output_o\ : std_logic;
SIGNAL \HEX3_D[4]~output_o\ : std_logic;
SIGNAL \HEX3_D[5]~output_o\ : std_logic;
SIGNAL \HEX3_D[6]~output_o\ : std_logic;
SIGNAL \LedRelogio~output_o\ : std_logic;
SIGNAL \LedDespertador~output_o\ : std_logic;
SIGNAL \LedCronometro~output_o\ : std_logic;
SIGNAL \LedAlarme~output_o\ : std_logic;
SIGNAL \LedAlarmeDisparado1~output_o\ : std_logic;
SIGNAL \LedAlarmeDisparado2~output_o\ : std_logic;
SIGNAL \LedAlarmeDisparado3~output_o\ : std_logic;
SIGNAL \LedAlarmeDisparado4~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \contBuzzer~12_combout\ : std_logic;
SIGNAL \Alarme~input_o\ : std_logic;
SIGNAL \DHH0[0]~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ModoAtual[0]~1_combout\ : std_logic;
SIGNAL \Modo~input_o\ : std_logic;
SIGNAL \contModo[0]~24_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \contModo[0]~25\ : std_logic;
SIGNAL \contModo[1]~26_combout\ : std_logic;
SIGNAL \contModo[1]~27\ : std_logic;
SIGNAL \contModo[2]~28_combout\ : std_logic;
SIGNAL \contModo[2]~29\ : std_logic;
SIGNAL \contModo[3]~30_combout\ : std_logic;
SIGNAL \contModo[3]~31\ : std_logic;
SIGNAL \contModo[4]~32_combout\ : std_logic;
SIGNAL \contModo[4]~33\ : std_logic;
SIGNAL \contModo[5]~34_combout\ : std_logic;
SIGNAL \contModo[5]~35\ : std_logic;
SIGNAL \contModo[6]~36_combout\ : std_logic;
SIGNAL \contModo[6]~37\ : std_logic;
SIGNAL \contModo[7]~38_combout\ : std_logic;
SIGNAL \contModo[7]~39\ : std_logic;
SIGNAL \contModo[8]~40_combout\ : std_logic;
SIGNAL \contModo[8]~41\ : std_logic;
SIGNAL \contModo[9]~42_combout\ : std_logic;
SIGNAL \contModo[9]~43\ : std_logic;
SIGNAL \contModo[10]~44_combout\ : std_logic;
SIGNAL \contModo[10]~45\ : std_logic;
SIGNAL \contModo[11]~46_combout\ : std_logic;
SIGNAL \contModo[11]~47\ : std_logic;
SIGNAL \contModo[12]~48_combout\ : std_logic;
SIGNAL \contModo[12]~49\ : std_logic;
SIGNAL \contModo[13]~50_combout\ : std_logic;
SIGNAL \contModo[13]~51\ : std_logic;
SIGNAL \contModo[14]~52_combout\ : std_logic;
SIGNAL \contModo[14]~53\ : std_logic;
SIGNAL \contModo[15]~54_combout\ : std_logic;
SIGNAL \contModo[15]~55\ : std_logic;
SIGNAL \contModo[16]~56_combout\ : std_logic;
SIGNAL \contModo[16]~57\ : std_logic;
SIGNAL \contModo[17]~58_combout\ : std_logic;
SIGNAL \contModo[17]~59\ : std_logic;
SIGNAL \contModo[18]~60_combout\ : std_logic;
SIGNAL \contModo[18]~61\ : std_logic;
SIGNAL \contModo[19]~62_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \contModo[19]~63\ : std_logic;
SIGNAL \contModo[20]~64_combout\ : std_logic;
SIGNAL \contModo[20]~65\ : std_logic;
SIGNAL \contModo[21]~66_combout\ : std_logic;
SIGNAL \contModo[21]~67\ : std_logic;
SIGNAL \contModo[22]~68_combout\ : std_logic;
SIGNAL \contModo[22]~69\ : std_logic;
SIGNAL \contModo[23]~70_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \lastModo~0_combout\ : std_logic;
SIGNAL \lastModo~q\ : std_logic;
SIGNAL \ModoAtual[1]~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \ModoAtual[1]~feeder_combout\ : std_logic;
SIGNAL \contHora[0]~24_combout\ : std_logic;
SIGNAL \UPhora~input_o\ : std_logic;
SIGNAL \contHora[17]~59\ : std_logic;
SIGNAL \contHora[18]~60_combout\ : std_logic;
SIGNAL \contHora[18]~61\ : std_logic;
SIGNAL \contHora[19]~62_combout\ : std_logic;
SIGNAL \contHora[19]~63\ : std_logic;
SIGNAL \contHora[20]~64_combout\ : std_logic;
SIGNAL \contHora[20]~65\ : std_logic;
SIGNAL \contHora[21]~66_combout\ : std_logic;
SIGNAL \contHora[21]~67\ : std_logic;
SIGNAL \contHora[22]~68_combout\ : std_logic;
SIGNAL \contHora[22]~69\ : std_logic;
SIGNAL \contHora[23]~70_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \lastHora~0_combout\ : std_logic;
SIGNAL \lastHora~q\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \contHora[0]~25\ : std_logic;
SIGNAL \contHora[1]~26_combout\ : std_logic;
SIGNAL \contHora[1]~27\ : std_logic;
SIGNAL \contHora[2]~28_combout\ : std_logic;
SIGNAL \contHora[2]~29\ : std_logic;
SIGNAL \contHora[3]~30_combout\ : std_logic;
SIGNAL \contHora[3]~31\ : std_logic;
SIGNAL \contHora[4]~32_combout\ : std_logic;
SIGNAL \contHora[4]~33\ : std_logic;
SIGNAL \contHora[5]~34_combout\ : std_logic;
SIGNAL \contHora[5]~35\ : std_logic;
SIGNAL \contHora[6]~36_combout\ : std_logic;
SIGNAL \contHora[6]~37\ : std_logic;
SIGNAL \contHora[7]~38_combout\ : std_logic;
SIGNAL \contHora[7]~39\ : std_logic;
SIGNAL \contHora[8]~40_combout\ : std_logic;
SIGNAL \contHora[8]~41\ : std_logic;
SIGNAL \contHora[9]~42_combout\ : std_logic;
SIGNAL \contHora[9]~43\ : std_logic;
SIGNAL \contHora[10]~44_combout\ : std_logic;
SIGNAL \contHora[10]~45\ : std_logic;
SIGNAL \contHora[11]~46_combout\ : std_logic;
SIGNAL \contHora[11]~47\ : std_logic;
SIGNAL \contHora[12]~48_combout\ : std_logic;
SIGNAL \contHora[12]~49\ : std_logic;
SIGNAL \contHora[13]~50_combout\ : std_logic;
SIGNAL \contHora[13]~51\ : std_logic;
SIGNAL \contHora[14]~52_combout\ : std_logic;
SIGNAL \contHora[14]~53\ : std_logic;
SIGNAL \contHora[15]~54_combout\ : std_logic;
SIGNAL \contHora[15]~55\ : std_logic;
SIGNAL \contHora[16]~56_combout\ : std_logic;
SIGNAL \contHora[16]~57\ : std_logic;
SIGNAL \contHora[17]~58_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \DHH0[3]~2_combout\ : std_logic;
SIGNAL \DHH0[3]~3_combout\ : std_logic;
SIGNAL \DHH0[3]~4_combout\ : std_logic;
SIGNAL \DHH0~8_combout\ : std_logic;
SIGNAL \DHH0~5_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \DHH0[3]~6_combout\ : std_logic;
SIGNAL \DHH0~7_combout\ : std_logic;
SIGNAL \DHH1[1]~2_combout\ : std_logic;
SIGNAL \DHH1[0]~3_combout\ : std_logic;
SIGNAL \DHH1[0]~5_combout\ : std_logic;
SIGNAL \DHH1[1]~4_combout\ : std_logic;
SIGNAL \HH0[0]~12_combout\ : std_logic;
SIGNAL \SS0[0]~6_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \TEMPORAL~15_combout\ : std_logic;
SIGNAL \Add12~25\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \TEMPORAL~14_combout\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \TEMPORAL~13_combout\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \TEMPORAL~12_combout\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \Add12~33\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \TEMPORAL~11_combout\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \Add12~37\ : std_logic;
SIGNAL \Add12~38_combout\ : std_logic;
SIGNAL \TEMPORAL~10_combout\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \TEMPORAL~21_combout\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \TEMPORAL~20_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~44_combout\ : std_logic;
SIGNAL \TEMPORAL~19_combout\ : std_logic;
SIGNAL \Add12~45\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \TEMPORAL~18_combout\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add12~49\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \TEMPORAL~17_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \TEMPORAL~16_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \SS0[2]~12_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \UPminuto~input_o\ : std_logic;
SIGNAL \contMinuto[0]~24_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \contMinuto[0]~25\ : std_logic;
SIGNAL \contMinuto[1]~26_combout\ : std_logic;
SIGNAL \contMinuto[1]~27\ : std_logic;
SIGNAL \contMinuto[2]~28_combout\ : std_logic;
SIGNAL \contMinuto[2]~29\ : std_logic;
SIGNAL \contMinuto[3]~30_combout\ : std_logic;
SIGNAL \contMinuto[3]~31\ : std_logic;
SIGNAL \contMinuto[4]~32_combout\ : std_logic;
SIGNAL \contMinuto[4]~33\ : std_logic;
SIGNAL \contMinuto[5]~34_combout\ : std_logic;
SIGNAL \contMinuto[5]~35\ : std_logic;
SIGNAL \contMinuto[6]~36_combout\ : std_logic;
SIGNAL \contMinuto[6]~37\ : std_logic;
SIGNAL \contMinuto[7]~38_combout\ : std_logic;
SIGNAL \contMinuto[7]~39\ : std_logic;
SIGNAL \contMinuto[8]~40_combout\ : std_logic;
SIGNAL \contMinuto[8]~41\ : std_logic;
SIGNAL \contMinuto[9]~42_combout\ : std_logic;
SIGNAL \contMinuto[9]~43\ : std_logic;
SIGNAL \contMinuto[10]~44_combout\ : std_logic;
SIGNAL \contMinuto[10]~45\ : std_logic;
SIGNAL \contMinuto[11]~46_combout\ : std_logic;
SIGNAL \contMinuto[11]~47\ : std_logic;
SIGNAL \contMinuto[12]~48_combout\ : std_logic;
SIGNAL \contMinuto[12]~49\ : std_logic;
SIGNAL \contMinuto[13]~50_combout\ : std_logic;
SIGNAL \contMinuto[13]~51\ : std_logic;
SIGNAL \contMinuto[14]~52_combout\ : std_logic;
SIGNAL \contMinuto[14]~53\ : std_logic;
SIGNAL \contMinuto[15]~54_combout\ : std_logic;
SIGNAL \contMinuto[15]~55\ : std_logic;
SIGNAL \contMinuto[16]~56_combout\ : std_logic;
SIGNAL \contMinuto[16]~57\ : std_logic;
SIGNAL \contMinuto[17]~58_combout\ : std_logic;
SIGNAL \contMinuto[17]~59\ : std_logic;
SIGNAL \contMinuto[18]~60_combout\ : std_logic;
SIGNAL \contMinuto[18]~61\ : std_logic;
SIGNAL \contMinuto[19]~62_combout\ : std_logic;
SIGNAL \contMinuto[19]~63\ : std_logic;
SIGNAL \contMinuto[20]~64_combout\ : std_logic;
SIGNAL \contMinuto[20]~65\ : std_logic;
SIGNAL \contMinuto[21]~66_combout\ : std_logic;
SIGNAL \contMinuto[21]~67\ : std_logic;
SIGNAL \contMinuto[22]~68_combout\ : std_logic;
SIGNAL \contMinuto[22]~69\ : std_logic;
SIGNAL \contMinuto[23]~70_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Equal12~7_combout\ : std_logic;
SIGNAL \lastMinuto~0_combout\ : std_logic;
SIGNAL \lastMinuto~q\ : std_logic;
SIGNAL \DMM0[3]~2_combout\ : std_logic;
SIGNAL \SS0[2]~13_combout\ : std_logic;
SIGNAL \SS0[0]~7\ : std_logic;
SIGNAL \SS0[1]~8_combout\ : std_logic;
SIGNAL \SS0[1]~9\ : std_logic;
SIGNAL \SS0[2]~10_combout\ : std_logic;
SIGNAL \SS0[2]~11\ : std_logic;
SIGNAL \SS0[3]~14_combout\ : std_logic;
SIGNAL \SS0[3]~15\ : std_logic;
SIGNAL \SS0[4]~16_combout\ : std_logic;
SIGNAL \SS0[4]~17\ : std_logic;
SIGNAL \SS0[5]~18_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \MM0[0]~4_combout\ : std_logic;
SIGNAL \MM0[1]~0_combout\ : std_logic;
SIGNAL \MM0[2]~2_combout\ : std_logic;
SIGNAL \MM0~3_combout\ : std_logic;
SIGNAL \MM0~1_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \MM1[0]~4_combout\ : std_logic;
SIGNAL \MM1[1]~0_combout\ : std_logic;
SIGNAL \MM1[1]~1_combout\ : std_logic;
SIGNAL \MM1~2_combout\ : std_logic;
SIGNAL \MM1~3_combout\ : std_logic;
SIGNAL \HH0[2]~4_combout\ : std_logic;
SIGNAL \HH0[2]~5_combout\ : std_logic;
SIGNAL \HH0[2]~10_combout\ : std_logic;
SIGNAL \HH0~11_combout\ : std_logic;
SIGNAL \HH0[2]~8_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \HH0~9_combout\ : std_logic;
SIGNAL \HH1[0]~0_combout\ : std_logic;
SIGNAL \HH1[1]~3_combout\ : std_logic;
SIGNAL \HH0[2]~6_combout\ : std_logic;
SIGNAL \HH0~7_combout\ : std_logic;
SIGNAL \HH1[1]~1_combout\ : std_logic;
SIGNAL \HH1[0]~2_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~0_combout\ : std_logic;
SIGNAL \DMM1[0]~5_combout\ : std_logic;
SIGNAL \DMM0[0]~7_combout\ : std_logic;
SIGNAL \DMM0[3]~6_combout\ : std_logic;
SIGNAL \DMM0~3_combout\ : std_logic;
SIGNAL \DMM0[2]~4_combout\ : std_logic;
SIGNAL \DMM0~5_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \DMM1[2]~4_combout\ : std_logic;
SIGNAL \DMM1~3_combout\ : std_logic;
SIGNAL \DMM1~2_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~1_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~3_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~2_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~4_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~5_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~6_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~7_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~8_combout\ : std_logic;
SIGNAL \LedAlarmeDisparado1~reg0_q\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add19~13\ : std_logic;
SIGNAL \Add19~14_combout\ : std_logic;
SIGNAL \contBuzzer~11_combout\ : std_logic;
SIGNAL \Equal28~8_combout\ : std_logic;
SIGNAL \Add19~15\ : std_logic;
SIGNAL \Add19~16_combout\ : std_logic;
SIGNAL \Add19~17\ : std_logic;
SIGNAL \Add19~18_combout\ : std_logic;
SIGNAL \Add19~19\ : std_logic;
SIGNAL \Add19~20_combout\ : std_logic;
SIGNAL \Add19~21\ : std_logic;
SIGNAL \Add19~22_combout\ : std_logic;
SIGNAL \Add19~23\ : std_logic;
SIGNAL \Add19~24_combout\ : std_logic;
SIGNAL \contBuzzer~10_combout\ : std_logic;
SIGNAL \Add19~25\ : std_logic;
SIGNAL \Add19~26_combout\ : std_logic;
SIGNAL \contBuzzer~9_combout\ : std_logic;
SIGNAL \Add19~27\ : std_logic;
SIGNAL \Add19~28_combout\ : std_logic;
SIGNAL \contBuzzer~8_combout\ : std_logic;
SIGNAL \Add19~29\ : std_logic;
SIGNAL \Add19~30_combout\ : std_logic;
SIGNAL \contBuzzer~7_combout\ : std_logic;
SIGNAL \Equal28~5_combout\ : std_logic;
SIGNAL \Equal28~6_combout\ : std_logic;
SIGNAL \Equal28~7_combout\ : std_logic;
SIGNAL \Equal28~9_combout\ : std_logic;
SIGNAL \Add19~31\ : std_logic;
SIGNAL \Add19~32_combout\ : std_logic;
SIGNAL \Add19~33\ : std_logic;
SIGNAL \Add19~34_combout\ : std_logic;
SIGNAL \contBuzzer~6_combout\ : std_logic;
SIGNAL \Add19~35\ : std_logic;
SIGNAL \Add19~36_combout\ : std_logic;
SIGNAL \Add19~37\ : std_logic;
SIGNAL \Add19~38_combout\ : std_logic;
SIGNAL \contBuzzer~5_combout\ : std_logic;
SIGNAL \Add19~39\ : std_logic;
SIGNAL \Add19~40_combout\ : std_logic;
SIGNAL \contBuzzer~4_combout\ : std_logic;
SIGNAL \Add19~41\ : std_logic;
SIGNAL \Add19~42_combout\ : std_logic;
SIGNAL \contBuzzer~3_combout\ : std_logic;
SIGNAL \Add19~43\ : std_logic;
SIGNAL \Add19~44_combout\ : std_logic;
SIGNAL \contBuzzer~2_combout\ : std_logic;
SIGNAL \Add19~45\ : std_logic;
SIGNAL \Add19~46_combout\ : std_logic;
SIGNAL \contBuzzer~1_combout\ : std_logic;
SIGNAL \Equal28~2_combout\ : std_logic;
SIGNAL \Add19~47\ : std_logic;
SIGNAL \Add19~48_combout\ : std_logic;
SIGNAL \Add19~49\ : std_logic;
SIGNAL \Add19~50_combout\ : std_logic;
SIGNAL \contBuzzer~0_combout\ : std_logic;
SIGNAL \Add19~51\ : std_logic;
SIGNAL \Add19~52_combout\ : std_logic;
SIGNAL \Add19~53\ : std_logic;
SIGNAL \Add19~54_combout\ : std_logic;
SIGNAL \Add19~55\ : std_logic;
SIGNAL \Add19~56_combout\ : std_logic;
SIGNAL \Add19~57\ : std_logic;
SIGNAL \Add19~58_combout\ : std_logic;
SIGNAL \Add19~59\ : std_logic;
SIGNAL \Add19~60_combout\ : std_logic;
SIGNAL \Add19~61\ : std_logic;
SIGNAL \Add19~62_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \Equal28~3_combout\ : std_logic;
SIGNAL \Equal28~1_combout\ : std_logic;
SIGNAL \Equal28~4_combout\ : std_logic;
SIGNAL \Equal28~10_combout\ : std_logic;
SIGNAL \Buzzer~2_combout\ : std_logic;
SIGNAL \Buzzer~reg0_q\ : std_logic;
SIGNAL \PontoLCD~2_combout\ : std_logic;
SIGNAL \PontoLCD~reg0_q\ : std_logic;
SIGNAL \LCD0[2]~2_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add14~25\ : std_logic;
SIGNAL \Add14~26_combout\ : std_logic;
SIGNAL \contCron~4_combout\ : std_logic;
SIGNAL \Add14~27\ : std_logic;
SIGNAL \Add14~28_combout\ : std_logic;
SIGNAL \contCron[14]~feeder_combout\ : std_logic;
SIGNAL \Add14~29\ : std_logic;
SIGNAL \Add14~30_combout\ : std_logic;
SIGNAL \contCron~3_combout\ : std_logic;
SIGNAL \Add14~31\ : std_logic;
SIGNAL \Add14~32_combout\ : std_logic;
SIGNAL \contCron~2_combout\ : std_logic;
SIGNAL \Add14~33\ : std_logic;
SIGNAL \Add14~34_combout\ : std_logic;
SIGNAL \contCron~1_combout\ : std_logic;
SIGNAL \Add14~35\ : std_logic;
SIGNAL \Add14~36_combout\ : std_logic;
SIGNAL \contCron~0_combout\ : std_logic;
SIGNAL \Add14~37\ : std_logic;
SIGNAL \Add14~38_combout\ : std_logic;
SIGNAL \Add14~39\ : std_logic;
SIGNAL \Add14~40_combout\ : std_logic;
SIGNAL \Add14~41\ : std_logic;
SIGNAL \Add14~42_combout\ : std_logic;
SIGNAL \Add14~43\ : std_logic;
SIGNAL \Add14~44_combout\ : std_logic;
SIGNAL \Add14~45\ : std_logic;
SIGNAL \Add14~46_combout\ : std_logic;
SIGNAL \Add14~47\ : std_logic;
SIGNAL \Add14~48_combout\ : std_logic;
SIGNAL \Add14~49\ : std_logic;
SIGNAL \Add14~50_combout\ : std_logic;
SIGNAL \Add14~51\ : std_logic;
SIGNAL \Add14~52_combout\ : std_logic;
SIGNAL \Add14~53\ : std_logic;
SIGNAL \Add14~54_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \Equal19~2_combout\ : std_logic;
SIGNAL \Add14~55\ : std_logic;
SIGNAL \Add14~56_combout\ : std_logic;
SIGNAL \Add14~57\ : std_logic;
SIGNAL \Add14~58_combout\ : std_logic;
SIGNAL \Add14~59\ : std_logic;
SIGNAL \Add14~60_combout\ : std_logic;
SIGNAL \Add14~61\ : std_logic;
SIGNAL \Add14~62_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal19~3_combout\ : std_logic;
SIGNAL \Equal19~4_combout\ : std_logic;
SIGNAL \contCron~7_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \contCron~6_combout\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add14~15\ : std_logic;
SIGNAL \Add14~16_combout\ : std_logic;
SIGNAL \contCron~5_combout\ : std_logic;
SIGNAL \Add14~17\ : std_logic;
SIGNAL \Add14~18_combout\ : std_logic;
SIGNAL \Add14~19\ : std_logic;
SIGNAL \Add14~20_combout\ : std_logic;
SIGNAL \Add14~21\ : std_logic;
SIGNAL \Add14~22_combout\ : std_logic;
SIGNAL \Add14~23\ : std_logic;
SIGNAL \Add14~24_combout\ : std_logic;
SIGNAL \contCron[12]~feeder_combout\ : std_logic;
SIGNAL \Equal19~5_combout\ : std_logic;
SIGNAL \Equal19~6_combout\ : std_logic;
SIGNAL \Equal19~7_combout\ : std_logic;
SIGNAL \Equal19~8_combout\ : std_logic;
SIGNAL \Equal19~9_combout\ : std_logic;
SIGNAL \CMM0~3_combout\ : std_logic;
SIGNAL \CMM0~4_combout\ : std_logic;
SIGNAL \Equal19~10_combout\ : std_logic;
SIGNAL \CMM0[0]~2_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \CMM0~5_combout\ : std_logic;
SIGNAL \start~3_combout\ : std_logic;
SIGNAL \CMM1[2]~0_combout\ : std_logic;
SIGNAL \CMM1~1_combout\ : std_logic;
SIGNAL \CMM1[2]~2_combout\ : std_logic;
SIGNAL \CMM1~3_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \CMM1~4_combout\ : std_logic;
SIGNAL \Add16~1_combout\ : std_logic;
SIGNAL \CMM1~5_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \CHH0~2_combout\ : std_logic;
SIGNAL \CHH0[3]~3_combout\ : std_logic;
SIGNAL \CHH0[3]~4_combout\ : std_logic;
SIGNAL \CHH0~5_combout\ : std_logic;
SIGNAL \CHH0~7_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \CHH0~6_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \CHH1~2_combout\ : std_logic;
SIGNAL \CHH1[0]~3_combout\ : std_logic;
SIGNAL \CHH1[0]~4_combout\ : std_logic;
SIGNAL \CHH1~5_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \CHH1~7_combout\ : std_logic;
SIGNAL \CHH1~6_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \start~1_combout\ : std_logic;
SIGNAL \start~2_combout\ : std_logic;
SIGNAL \start~4_combout\ : std_logic;
SIGNAL \start~q\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \CMM0~6_combout\ : std_logic;
SIGNAL \LCD0[1]~1_combout\ : std_logic;
SIGNAL \LCD0[3]~3_combout\ : std_logic;
SIGNAL \LCD0[0]~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LCD1[2]~2_combout\ : std_logic;
SIGNAL \LCD1~3_combout\ : std_logic;
SIGNAL \LCD1[0]~0_combout\ : std_logic;
SIGNAL \LCD1[1]~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LCD2[0]~0_combout\ : std_logic;
SIGNAL \LCD2[3]~3_combout\ : std_logic;
SIGNAL \LCD2[2]~2_combout\ : std_logic;
SIGNAL \LCD2[1]~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \LCD3~2_combout\ : std_logic;
SIGNAL \LCD3[1]~1_combout\ : std_logic;
SIGNAL \LCD3~3_combout\ : std_logic;
SIGNAL \LCD3[0]~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \LedRelogio~0_combout\ : std_logic;
SIGNAL \LedRelogio~reg0_q\ : std_logic;
SIGNAL \LedDespertador~reg0feeder_combout\ : std_logic;
SIGNAL \LedDespertador~reg0_q\ : std_logic;
SIGNAL \LedCronometro~reg0_q\ : std_logic;
SIGNAL \LedAlarme~reg0feeder_combout\ : std_logic;
SIGNAL \LedAlarme~reg0_q\ : std_logic;
SIGNAL LCD3 : std_logic_vector(3 DOWNTO 0);
SIGNAL LCD2 : std_logic_vector(3 DOWNTO 0);
SIGNAL DHH0 : std_logic_vector(3 DOWNTO 0);
SIGNAL LCD0 : std_logic_vector(3 DOWNTO 0);
SIGNAL MM0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ModoAtual : std_logic_vector(1 DOWNTO 0);
SIGNAL HH0 : std_logic_vector(3 DOWNTO 0);
SIGNAL MM1 : std_logic_vector(2 DOWNTO 0);
SIGNAL DMM1 : std_logic_vector(2 DOWNTO 0);
SIGNAL TEMPORAL : std_logic_vector(25 DOWNTO 0);
SIGNAL CMM0 : std_logic_vector(3 DOWNTO 0);
SIGNAL contCron : std_logic_vector(31 DOWNTO 0);
SIGNAL contMinuto : std_logic_vector(23 DOWNTO 0);
SIGNAL HH1 : std_logic_vector(1 DOWNTO 0);
SIGNAL CMM1 : std_logic_vector(3 DOWNTO 0);
SIGNAL CHH0 : std_logic_vector(3 DOWNTO 0);
SIGNAL DMM0 : std_logic_vector(3 DOWNTO 0);
SIGNAL CHH1 : std_logic_vector(3 DOWNTO 0);
SIGNAL contHora : std_logic_vector(23 DOWNTO 0);
SIGNAL SS0 : std_logic_vector(5 DOWNTO 0);
SIGNAL LCD1 : std_logic_vector(3 DOWNTO 0);
SIGNAL contModo : std_logic_vector(23 DOWNTO 0);
SIGNAL DHH1 : std_logic_vector(1 DOWNTO 0);
SIGNAL contBuzzer : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_MM0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LedAlarmeDisparado1~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
HEX3_D <= ww_HEX3_D;
LedRelogio <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedRelogio);
LedDespertador <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedDespertador);
LedCronometro <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedCronometro);
LedAlarme <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedAlarme);
LedAlarmeDisparado1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedAlarmeDisparado1);
LedAlarmeDisparado2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedAlarmeDisparado2);
LedAlarmeDisparado3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedAlarmeDisparado3);
LedAlarmeDisparado4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_LedAlarmeDisparado4);
ww_CLOCK_50 <= CLOCK_50;
ww_UPminuto <= UPminuto;
ww_UPhora <= UPhora;
ww_Modo <= Modo;
ww_Alarme <= Alarme;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_MM0[1]~0_combout\ <= NOT \MM0[1]~0_combout\;
\ALT_INV_LedAlarmeDisparado1~reg0_q\ <= NOT \LedAlarmeDisparado1~reg0_q\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X19_Y0_N2
\Buzzer~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Buzzer~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Buzzer~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\PontoLCD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PontoLCD~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PontoLCD~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LedRelogio~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedRelogio~reg0_q\,
	devoe => ww_devoe,
	o => \LedRelogio~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LedDespertador~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedDespertador~reg0_q\,
	devoe => ww_devoe,
	o => \LedDespertador~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LedCronometro~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedCronometro~reg0_q\,
	devoe => ww_devoe,
	o => \LedCronometro~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LedAlarme~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedAlarme~reg0_q\,
	devoe => ww_devoe,
	o => \LedAlarme~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LedAlarmeDisparado1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedAlarmeDisparado1~reg0_q\,
	devoe => ww_devoe,
	o => \LedAlarmeDisparado1~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LedAlarmeDisparado2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedAlarmeDisparado1~reg0_q\,
	devoe => ww_devoe,
	o => \LedAlarmeDisparado2~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LedAlarmeDisparado3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedAlarmeDisparado1~reg0_q\,
	devoe => ww_devoe,
	o => \LedAlarmeDisparado3~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LedAlarmeDisparado4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedAlarmeDisparado1~reg0_q\,
	devoe => ww_devoe,
	o => \LedAlarmeDisparado4~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y23_N0
\Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = contBuzzer(0) $ (VCC)
-- \Add19~1\ = CARRY(contBuzzer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(0),
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X9_Y23_N8
\contBuzzer~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~12_combout\ = (\Add19~0_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~0_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~12_combout\);

-- Location: IOIBUF_X0_Y24_N1
\Alarme~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alarme,
	o => \Alarme~input_o\);

-- Location: LCCOMB_X12_Y24_N4
\DHH0[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0[0]~9_combout\ = !DHH0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DHH0(0),
	combout => \DHH0[0]~9_combout\);

-- Location: LCCOMB_X10_Y25_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (ModoAtual(1)) # (ModoAtual(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ModoAtual(1),
	datad => ModoAtual(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y25_N20
\ModoAtual[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ModoAtual[0]~1_combout\ = !\Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	combout => \ModoAtual[0]~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\Modo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Modo,
	o => \Modo~input_o\);

-- Location: LCCOMB_X9_Y25_N8
\contModo[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[0]~24_combout\ = contModo(0) $ (VCC)
-- \contModo[0]~25\ = CARRY(contModo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contModo(0),
	datad => VCC,
	combout => \contModo[0]~24_combout\,
	cout => \contModo[0]~25\);

-- Location: LCCOMB_X10_Y25_N30
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Equal0~7_combout\) # (\lastModo~q\ $ (\Modo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastModo~q\,
	datac => \Modo~input_o\,
	datad => \Equal0~7_combout\,
	combout => \process_0~1_combout\);

-- Location: FF_X9_Y25_N9
\contModo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[0]~24_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(0));

-- Location: LCCOMB_X9_Y25_N10
\contModo[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[1]~26_combout\ = (contModo(1) & (!\contModo[0]~25\)) # (!contModo(1) & ((\contModo[0]~25\) # (GND)))
-- \contModo[1]~27\ = CARRY((!\contModo[0]~25\) # (!contModo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(1),
	datad => VCC,
	cin => \contModo[0]~25\,
	combout => \contModo[1]~26_combout\,
	cout => \contModo[1]~27\);

-- Location: FF_X9_Y25_N11
\contModo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[1]~26_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(1));

-- Location: LCCOMB_X9_Y25_N12
\contModo[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[2]~28_combout\ = (contModo(2) & (\contModo[1]~27\ $ (GND))) # (!contModo(2) & (!\contModo[1]~27\ & VCC))
-- \contModo[2]~29\ = CARRY((contModo(2) & !\contModo[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(2),
	datad => VCC,
	cin => \contModo[1]~27\,
	combout => \contModo[2]~28_combout\,
	cout => \contModo[2]~29\);

-- Location: FF_X9_Y25_N13
\contModo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[2]~28_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(2));

-- Location: LCCOMB_X9_Y25_N14
\contModo[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[3]~30_combout\ = (contModo(3) & (!\contModo[2]~29\)) # (!contModo(3) & ((\contModo[2]~29\) # (GND)))
-- \contModo[3]~31\ = CARRY((!\contModo[2]~29\) # (!contModo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(3),
	datad => VCC,
	cin => \contModo[2]~29\,
	combout => \contModo[3]~30_combout\,
	cout => \contModo[3]~31\);

-- Location: FF_X9_Y25_N15
\contModo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[3]~30_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(3));

-- Location: LCCOMB_X9_Y25_N16
\contModo[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[4]~32_combout\ = (contModo(4) & (\contModo[3]~31\ $ (GND))) # (!contModo(4) & (!\contModo[3]~31\ & VCC))
-- \contModo[4]~33\ = CARRY((contModo(4) & !\contModo[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(4),
	datad => VCC,
	cin => \contModo[3]~31\,
	combout => \contModo[4]~32_combout\,
	cout => \contModo[4]~33\);

-- Location: FF_X9_Y25_N17
\contModo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[4]~32_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(4));

-- Location: LCCOMB_X9_Y25_N18
\contModo[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[5]~34_combout\ = (contModo(5) & (!\contModo[4]~33\)) # (!contModo(5) & ((\contModo[4]~33\) # (GND)))
-- \contModo[5]~35\ = CARRY((!\contModo[4]~33\) # (!contModo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(5),
	datad => VCC,
	cin => \contModo[4]~33\,
	combout => \contModo[5]~34_combout\,
	cout => \contModo[5]~35\);

-- Location: FF_X9_Y25_N19
\contModo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[5]~34_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(5));

-- Location: LCCOMB_X9_Y25_N20
\contModo[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[6]~36_combout\ = (contModo(6) & (\contModo[5]~35\ $ (GND))) # (!contModo(6) & (!\contModo[5]~35\ & VCC))
-- \contModo[6]~37\ = CARRY((contModo(6) & !\contModo[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(6),
	datad => VCC,
	cin => \contModo[5]~35\,
	combout => \contModo[6]~36_combout\,
	cout => \contModo[6]~37\);

-- Location: FF_X9_Y25_N21
\contModo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[6]~36_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(6));

-- Location: LCCOMB_X9_Y25_N22
\contModo[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[7]~38_combout\ = (contModo(7) & (!\contModo[6]~37\)) # (!contModo(7) & ((\contModo[6]~37\) # (GND)))
-- \contModo[7]~39\ = CARRY((!\contModo[6]~37\) # (!contModo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(7),
	datad => VCC,
	cin => \contModo[6]~37\,
	combout => \contModo[7]~38_combout\,
	cout => \contModo[7]~39\);

-- Location: FF_X9_Y25_N23
\contModo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[7]~38_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(7));

-- Location: LCCOMB_X9_Y25_N24
\contModo[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[8]~40_combout\ = (contModo(8) & (\contModo[7]~39\ $ (GND))) # (!contModo(8) & (!\contModo[7]~39\ & VCC))
-- \contModo[8]~41\ = CARRY((contModo(8) & !\contModo[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(8),
	datad => VCC,
	cin => \contModo[7]~39\,
	combout => \contModo[8]~40_combout\,
	cout => \contModo[8]~41\);

-- Location: FF_X9_Y25_N25
\contModo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[8]~40_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(8));

-- Location: LCCOMB_X9_Y25_N26
\contModo[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[9]~42_combout\ = (contModo(9) & (!\contModo[8]~41\)) # (!contModo(9) & ((\contModo[8]~41\) # (GND)))
-- \contModo[9]~43\ = CARRY((!\contModo[8]~41\) # (!contModo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(9),
	datad => VCC,
	cin => \contModo[8]~41\,
	combout => \contModo[9]~42_combout\,
	cout => \contModo[9]~43\);

-- Location: FF_X9_Y25_N27
\contModo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[9]~42_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(9));

-- Location: LCCOMB_X9_Y25_N28
\contModo[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[10]~44_combout\ = (contModo(10) & (\contModo[9]~43\ $ (GND))) # (!contModo(10) & (!\contModo[9]~43\ & VCC))
-- \contModo[10]~45\ = CARRY((contModo(10) & !\contModo[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(10),
	datad => VCC,
	cin => \contModo[9]~43\,
	combout => \contModo[10]~44_combout\,
	cout => \contModo[10]~45\);

-- Location: FF_X9_Y25_N29
\contModo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[10]~44_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(10));

-- Location: LCCOMB_X9_Y25_N30
\contModo[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[11]~46_combout\ = (contModo(11) & (!\contModo[10]~45\)) # (!contModo(11) & ((\contModo[10]~45\) # (GND)))
-- \contModo[11]~47\ = CARRY((!\contModo[10]~45\) # (!contModo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(11),
	datad => VCC,
	cin => \contModo[10]~45\,
	combout => \contModo[11]~46_combout\,
	cout => \contModo[11]~47\);

-- Location: FF_X9_Y25_N31
\contModo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[11]~46_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(11));

-- Location: LCCOMB_X9_Y24_N0
\contModo[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[12]~48_combout\ = (contModo(12) & (\contModo[11]~47\ $ (GND))) # (!contModo(12) & (!\contModo[11]~47\ & VCC))
-- \contModo[12]~49\ = CARRY((contModo(12) & !\contModo[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(12),
	datad => VCC,
	cin => \contModo[11]~47\,
	combout => \contModo[12]~48_combout\,
	cout => \contModo[12]~49\);

-- Location: FF_X9_Y24_N1
\contModo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[12]~48_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(12));

-- Location: LCCOMB_X9_Y24_N2
\contModo[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[13]~50_combout\ = (contModo(13) & (!\contModo[12]~49\)) # (!contModo(13) & ((\contModo[12]~49\) # (GND)))
-- \contModo[13]~51\ = CARRY((!\contModo[12]~49\) # (!contModo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(13),
	datad => VCC,
	cin => \contModo[12]~49\,
	combout => \contModo[13]~50_combout\,
	cout => \contModo[13]~51\);

-- Location: FF_X9_Y24_N3
\contModo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[13]~50_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(13));

-- Location: LCCOMB_X9_Y24_N4
\contModo[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[14]~52_combout\ = (contModo(14) & (\contModo[13]~51\ $ (GND))) # (!contModo(14) & (!\contModo[13]~51\ & VCC))
-- \contModo[14]~53\ = CARRY((contModo(14) & !\contModo[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(14),
	datad => VCC,
	cin => \contModo[13]~51\,
	combout => \contModo[14]~52_combout\,
	cout => \contModo[14]~53\);

-- Location: FF_X9_Y24_N5
\contModo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[14]~52_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(14));

-- Location: LCCOMB_X9_Y24_N6
\contModo[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[15]~54_combout\ = (contModo(15) & (!\contModo[14]~53\)) # (!contModo(15) & ((\contModo[14]~53\) # (GND)))
-- \contModo[15]~55\ = CARRY((!\contModo[14]~53\) # (!contModo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(15),
	datad => VCC,
	cin => \contModo[14]~53\,
	combout => \contModo[15]~54_combout\,
	cout => \contModo[15]~55\);

-- Location: FF_X9_Y24_N7
\contModo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[15]~54_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(15));

-- Location: LCCOMB_X9_Y24_N8
\contModo[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[16]~56_combout\ = (contModo(16) & (\contModo[15]~55\ $ (GND))) # (!contModo(16) & (!\contModo[15]~55\ & VCC))
-- \contModo[16]~57\ = CARRY((contModo(16) & !\contModo[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(16),
	datad => VCC,
	cin => \contModo[15]~55\,
	combout => \contModo[16]~56_combout\,
	cout => \contModo[16]~57\);

-- Location: FF_X9_Y24_N9
\contModo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[16]~56_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(16));

-- Location: LCCOMB_X9_Y24_N10
\contModo[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[17]~58_combout\ = (contModo(17) & (!\contModo[16]~57\)) # (!contModo(17) & ((\contModo[16]~57\) # (GND)))
-- \contModo[17]~59\ = CARRY((!\contModo[16]~57\) # (!contModo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(17),
	datad => VCC,
	cin => \contModo[16]~57\,
	combout => \contModo[17]~58_combout\,
	cout => \contModo[17]~59\);

-- Location: FF_X9_Y24_N11
\contModo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[17]~58_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(17));

-- Location: LCCOMB_X9_Y24_N12
\contModo[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[18]~60_combout\ = (contModo(18) & (\contModo[17]~59\ $ (GND))) # (!contModo(18) & (!\contModo[17]~59\ & VCC))
-- \contModo[18]~61\ = CARRY((contModo(18) & !\contModo[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(18),
	datad => VCC,
	cin => \contModo[17]~59\,
	combout => \contModo[18]~60_combout\,
	cout => \contModo[18]~61\);

-- Location: FF_X9_Y24_N13
\contModo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[18]~60_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(18));

-- Location: LCCOMB_X9_Y24_N14
\contModo[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[19]~62_combout\ = (contModo(19) & (!\contModo[18]~61\)) # (!contModo(19) & ((\contModo[18]~61\) # (GND)))
-- \contModo[19]~63\ = CARRY((!\contModo[18]~61\) # (!contModo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(19),
	datad => VCC,
	cin => \contModo[18]~61\,
	combout => \contModo[19]~62_combout\,
	cout => \contModo[19]~63\);

-- Location: FF_X9_Y24_N15
\contModo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[19]~62_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(19));

-- Location: LCCOMB_X9_Y24_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!contModo(18) & (!contModo(19) & (!contModo(16) & !contModo(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(18),
	datab => contModo(19),
	datac => contModo(16),
	datad => contModo(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X9_Y24_N16
\contModo[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[20]~64_combout\ = (contModo(20) & (\contModo[19]~63\ $ (GND))) # (!contModo(20) & (!\contModo[19]~63\ & VCC))
-- \contModo[20]~65\ = CARRY((contModo(20) & !\contModo[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(20),
	datad => VCC,
	cin => \contModo[19]~63\,
	combout => \contModo[20]~64_combout\,
	cout => \contModo[20]~65\);

-- Location: FF_X9_Y24_N17
\contModo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[20]~64_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(20));

-- Location: LCCOMB_X9_Y24_N18
\contModo[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[21]~66_combout\ = (contModo(21) & (!\contModo[20]~65\)) # (!contModo(21) & ((\contModo[20]~65\) # (GND)))
-- \contModo[21]~67\ = CARRY((!\contModo[20]~65\) # (!contModo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contModo(21),
	datad => VCC,
	cin => \contModo[20]~65\,
	combout => \contModo[21]~66_combout\,
	cout => \contModo[21]~67\);

-- Location: FF_X9_Y24_N19
\contModo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[21]~66_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(21));

-- Location: LCCOMB_X9_Y24_N20
\contModo[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[22]~68_combout\ = (contModo(22) & (\contModo[21]~67\ $ (GND))) # (!contModo(22) & (!\contModo[21]~67\ & VCC))
-- \contModo[22]~69\ = CARRY((contModo(22) & !\contModo[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(22),
	datad => VCC,
	cin => \contModo[21]~67\,
	combout => \contModo[22]~68_combout\,
	cout => \contModo[22]~69\);

-- Location: FF_X9_Y24_N21
\contModo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[22]~68_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(22));

-- Location: LCCOMB_X9_Y24_N22
\contModo[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contModo[23]~70_combout\ = contModo(23) $ (\contModo[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contModo(23),
	cin => \contModo[22]~69\,
	combout => \contModo[23]~70_combout\);

-- Location: FF_X9_Y24_N23
\contModo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contModo[23]~70_combout\,
	sclr => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contModo(23));

-- Location: LCCOMB_X9_Y24_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!contModo(23) & (!contModo(21) & (!contModo(22) & !contModo(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(23),
	datab => contModo(21),
	datac => contModo(22),
	datad => contModo(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X9_Y25_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (contModo(7) & (!contModo(4) & (contModo(6) & contModo(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(7),
	datab => contModo(4),
	datac => contModo(6),
	datad => contModo(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y25_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (contModo(1) & (!contModo(3) & (contModo(0) & contModo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(1),
	datab => contModo(3),
	datac => contModo(0),
	datad => contModo(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y24_N28
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!contModo(15) & (!contModo(12) & (!contModo(14) & !contModo(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(15),
	datab => contModo(12),
	datac => contModo(14),
	datad => contModo(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X9_Y25_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (contModo(9) & (contModo(8) & (!contModo(11) & !contModo(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contModo(9),
	datab => contModo(8),
	datac => contModo(11),
	datad => contModo(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y25_N28
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X10_Y25_N12
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X10_Y25_N26
\lastModo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastModo~0_combout\ = (\Equal0~7_combout\ & (!\Modo~input_o\)) # (!\Equal0~7_combout\ & ((\lastModo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Modo~input_o\,
	datac => \lastModo~q\,
	datad => \Equal0~7_combout\,
	combout => \lastModo~0_combout\);

-- Location: FF_X10_Y25_N27
lastModo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lastModo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastModo~q\);

-- Location: LCCOMB_X10_Y25_N18
\ModoAtual[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ModoAtual[1]~0_combout\ = (\lastModo~q\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastModo~q\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \ModoAtual[1]~0_combout\);

-- Location: FF_X10_Y25_N21
\ModoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ModoAtual[0]~1_combout\,
	ena => \ModoAtual[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ModoAtual(0));

-- Location: LCCOMB_X10_Y25_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!ModoAtual(1) & ModoAtual(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ModoAtual(1),
	datad => ModoAtual(0),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X10_Y25_N22
\ModoAtual[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ModoAtual[1]~feeder_combout\ = \Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~1_combout\,
	combout => \ModoAtual[1]~feeder_combout\);

-- Location: FF_X10_Y25_N23
\ModoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ModoAtual[1]~feeder_combout\,
	ena => \ModoAtual[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ModoAtual(1));

-- Location: LCCOMB_X11_Y25_N8
\contHora[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[0]~24_combout\ = contHora(0) $ (VCC)
-- \contHora[0]~25\ = CARRY(contHora(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(0),
	datad => VCC,
	combout => \contHora[0]~24_combout\,
	cout => \contHora[0]~25\);

-- Location: IOIBUF_X0_Y23_N1
\UPhora~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPhora,
	o => \UPhora~input_o\);

-- Location: LCCOMB_X11_Y24_N10
\contHora[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[17]~58_combout\ = (contHora(17) & (!\contHora[16]~57\)) # (!contHora(17) & ((\contHora[16]~57\) # (GND)))
-- \contHora[17]~59\ = CARRY((!\contHora[16]~57\) # (!contHora(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(17),
	datad => VCC,
	cin => \contHora[16]~57\,
	combout => \contHora[17]~58_combout\,
	cout => \contHora[17]~59\);

-- Location: LCCOMB_X11_Y24_N12
\contHora[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[18]~60_combout\ = (contHora(18) & (\contHora[17]~59\ $ (GND))) # (!contHora(18) & (!\contHora[17]~59\ & VCC))
-- \contHora[18]~61\ = CARRY((contHora(18) & !\contHora[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(18),
	datad => VCC,
	cin => \contHora[17]~59\,
	combout => \contHora[18]~60_combout\,
	cout => \contHora[18]~61\);

-- Location: FF_X11_Y24_N13
\contHora[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[18]~60_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(18));

-- Location: LCCOMB_X11_Y24_N14
\contHora[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[19]~62_combout\ = (contHora(19) & (!\contHora[18]~61\)) # (!contHora(19) & ((\contHora[18]~61\) # (GND)))
-- \contHora[19]~63\ = CARRY((!\contHora[18]~61\) # (!contHora(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(19),
	datad => VCC,
	cin => \contHora[18]~61\,
	combout => \contHora[19]~62_combout\,
	cout => \contHora[19]~63\);

-- Location: FF_X11_Y24_N15
\contHora[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[19]~62_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(19));

-- Location: LCCOMB_X11_Y24_N16
\contHora[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[20]~64_combout\ = (contHora(20) & (\contHora[19]~63\ $ (GND))) # (!contHora(20) & (!\contHora[19]~63\ & VCC))
-- \contHora[20]~65\ = CARRY((contHora(20) & !\contHora[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(20),
	datad => VCC,
	cin => \contHora[19]~63\,
	combout => \contHora[20]~64_combout\,
	cout => \contHora[20]~65\);

-- Location: FF_X11_Y24_N17
\contHora[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[20]~64_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(20));

-- Location: LCCOMB_X11_Y24_N18
\contHora[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[21]~66_combout\ = (contHora(21) & (!\contHora[20]~65\)) # (!contHora(21) & ((\contHora[20]~65\) # (GND)))
-- \contHora[21]~67\ = CARRY((!\contHora[20]~65\) # (!contHora(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(21),
	datad => VCC,
	cin => \contHora[20]~65\,
	combout => \contHora[21]~66_combout\,
	cout => \contHora[21]~67\);

-- Location: FF_X11_Y24_N19
\contHora[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[21]~66_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(21));

-- Location: LCCOMB_X11_Y24_N20
\contHora[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[22]~68_combout\ = (contHora(22) & (\contHora[21]~67\ $ (GND))) # (!contHora(22) & (!\contHora[21]~67\ & VCC))
-- \contHora[22]~69\ = CARRY((contHora(22) & !\contHora[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(22),
	datad => VCC,
	cin => \contHora[21]~67\,
	combout => \contHora[22]~68_combout\,
	cout => \contHora[22]~69\);

-- Location: FF_X11_Y24_N21
\contHora[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[22]~68_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(22));

-- Location: LCCOMB_X11_Y24_N22
\contHora[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[23]~70_combout\ = contHora(23) $ (\contHora[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(23),
	cin => \contHora[22]~69\,
	combout => \contHora[23]~70_combout\);

-- Location: FF_X11_Y24_N23
\contHora[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[23]~70_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(23));

-- Location: LCCOMB_X12_Y24_N8
\Equal13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (!contHora(20) & (!contHora(23) & (!contHora(22) & !contHora(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(20),
	datab => contHora(23),
	datac => contHora(22),
	datad => contHora(21),
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X11_Y25_N4
\Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (contHora(1) & (contHora(0) & (!contHora(3) & contHora(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(1),
	datab => contHora(0),
	datac => contHora(3),
	datad => contHora(2),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X11_Y24_N24
\Equal13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (!contHora(15) & (!contHora(12) & (!contHora(14) & !contHora(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(15),
	datab => contHora(12),
	datac => contHora(14),
	datad => contHora(13),
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X11_Y25_N6
\Equal13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (contHora(7) & (contHora(5) & (contHora(6) & !contHora(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(7),
	datab => contHora(5),
	datac => contHora(6),
	datad => contHora(4),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X11_Y25_N0
\Equal13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (!contHora(11) & (!contHora(10) & (contHora(9) & contHora(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(11),
	datab => contHora(10),
	datac => contHora(9),
	datad => contHora(8),
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X11_Y24_N30
\Equal13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~0_combout\ & (\Equal13~3_combout\ & (\Equal13~1_combout\ & \Equal13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~3_combout\,
	datac => \Equal13~1_combout\,
	datad => \Equal13~2_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X11_Y24_N28
\Equal13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (\Equal13~6_combout\ & (\Equal13~4_combout\ & \Equal13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal13~6_combout\,
	datac => \Equal13~4_combout\,
	datad => \Equal13~5_combout\,
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X12_Y24_N24
\lastHora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastHora~0_combout\ = (\Equal13~7_combout\ & (!\UPhora~input_o\)) # (!\Equal13~7_combout\ & ((\lastHora~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UPhora~input_o\,
	datac => \lastHora~q\,
	datad => \Equal13~7_combout\,
	combout => \lastHora~0_combout\);

-- Location: FF_X12_Y24_N25
lastHora : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lastHora~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastHora~q\);

-- Location: LCCOMB_X11_Y24_N26
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\Equal13~7_combout\) # (\lastHora~q\ $ (\UPhora~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastHora~q\,
	datac => \UPhora~input_o\,
	datad => \Equal13~7_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X11_Y25_N9
\contHora[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[0]~24_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(0));

-- Location: LCCOMB_X11_Y25_N10
\contHora[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[1]~26_combout\ = (contHora(1) & (!\contHora[0]~25\)) # (!contHora(1) & ((\contHora[0]~25\) # (GND)))
-- \contHora[1]~27\ = CARRY((!\contHora[0]~25\) # (!contHora(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(1),
	datad => VCC,
	cin => \contHora[0]~25\,
	combout => \contHora[1]~26_combout\,
	cout => \contHora[1]~27\);

-- Location: FF_X11_Y25_N11
\contHora[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[1]~26_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(1));

-- Location: LCCOMB_X11_Y25_N12
\contHora[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[2]~28_combout\ = (contHora(2) & (\contHora[1]~27\ $ (GND))) # (!contHora(2) & (!\contHora[1]~27\ & VCC))
-- \contHora[2]~29\ = CARRY((contHora(2) & !\contHora[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(2),
	datad => VCC,
	cin => \contHora[1]~27\,
	combout => \contHora[2]~28_combout\,
	cout => \contHora[2]~29\);

-- Location: FF_X11_Y25_N13
\contHora[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[2]~28_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(2));

-- Location: LCCOMB_X11_Y25_N14
\contHora[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[3]~30_combout\ = (contHora(3) & (!\contHora[2]~29\)) # (!contHora(3) & ((\contHora[2]~29\) # (GND)))
-- \contHora[3]~31\ = CARRY((!\contHora[2]~29\) # (!contHora(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(3),
	datad => VCC,
	cin => \contHora[2]~29\,
	combout => \contHora[3]~30_combout\,
	cout => \contHora[3]~31\);

-- Location: FF_X11_Y25_N15
\contHora[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[3]~30_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(3));

-- Location: LCCOMB_X11_Y25_N16
\contHora[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[4]~32_combout\ = (contHora(4) & (\contHora[3]~31\ $ (GND))) # (!contHora(4) & (!\contHora[3]~31\ & VCC))
-- \contHora[4]~33\ = CARRY((contHora(4) & !\contHora[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(4),
	datad => VCC,
	cin => \contHora[3]~31\,
	combout => \contHora[4]~32_combout\,
	cout => \contHora[4]~33\);

-- Location: FF_X11_Y25_N17
\contHora[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[4]~32_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(4));

-- Location: LCCOMB_X11_Y25_N18
\contHora[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[5]~34_combout\ = (contHora(5) & (!\contHora[4]~33\)) # (!contHora(5) & ((\contHora[4]~33\) # (GND)))
-- \contHora[5]~35\ = CARRY((!\contHora[4]~33\) # (!contHora(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(5),
	datad => VCC,
	cin => \contHora[4]~33\,
	combout => \contHora[5]~34_combout\,
	cout => \contHora[5]~35\);

-- Location: FF_X11_Y25_N19
\contHora[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[5]~34_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(5));

-- Location: LCCOMB_X11_Y25_N20
\contHora[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[6]~36_combout\ = (contHora(6) & (\contHora[5]~35\ $ (GND))) # (!contHora(6) & (!\contHora[5]~35\ & VCC))
-- \contHora[6]~37\ = CARRY((contHora(6) & !\contHora[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(6),
	datad => VCC,
	cin => \contHora[5]~35\,
	combout => \contHora[6]~36_combout\,
	cout => \contHora[6]~37\);

-- Location: FF_X11_Y25_N21
\contHora[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[6]~36_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(6));

-- Location: LCCOMB_X11_Y25_N22
\contHora[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[7]~38_combout\ = (contHora(7) & (!\contHora[6]~37\)) # (!contHora(7) & ((\contHora[6]~37\) # (GND)))
-- \contHora[7]~39\ = CARRY((!\contHora[6]~37\) # (!contHora(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(7),
	datad => VCC,
	cin => \contHora[6]~37\,
	combout => \contHora[7]~38_combout\,
	cout => \contHora[7]~39\);

-- Location: FF_X11_Y25_N23
\contHora[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[7]~38_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(7));

-- Location: LCCOMB_X11_Y25_N24
\contHora[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[8]~40_combout\ = (contHora(8) & (\contHora[7]~39\ $ (GND))) # (!contHora(8) & (!\contHora[7]~39\ & VCC))
-- \contHora[8]~41\ = CARRY((contHora(8) & !\contHora[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(8),
	datad => VCC,
	cin => \contHora[7]~39\,
	combout => \contHora[8]~40_combout\,
	cout => \contHora[8]~41\);

-- Location: FF_X11_Y25_N25
\contHora[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[8]~40_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(8));

-- Location: LCCOMB_X11_Y25_N26
\contHora[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[9]~42_combout\ = (contHora(9) & (!\contHora[8]~41\)) # (!contHora(9) & ((\contHora[8]~41\) # (GND)))
-- \contHora[9]~43\ = CARRY((!\contHora[8]~41\) # (!contHora(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(9),
	datad => VCC,
	cin => \contHora[8]~41\,
	combout => \contHora[9]~42_combout\,
	cout => \contHora[9]~43\);

-- Location: FF_X11_Y25_N27
\contHora[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[9]~42_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(9));

-- Location: LCCOMB_X11_Y25_N28
\contHora[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[10]~44_combout\ = (contHora(10) & (\contHora[9]~43\ $ (GND))) # (!contHora(10) & (!\contHora[9]~43\ & VCC))
-- \contHora[10]~45\ = CARRY((contHora(10) & !\contHora[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(10),
	datad => VCC,
	cin => \contHora[9]~43\,
	combout => \contHora[10]~44_combout\,
	cout => \contHora[10]~45\);

-- Location: FF_X11_Y25_N29
\contHora[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[10]~44_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(10));

-- Location: LCCOMB_X11_Y25_N30
\contHora[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[11]~46_combout\ = (contHora(11) & (!\contHora[10]~45\)) # (!contHora(11) & ((\contHora[10]~45\) # (GND)))
-- \contHora[11]~47\ = CARRY((!\contHora[10]~45\) # (!contHora(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(11),
	datad => VCC,
	cin => \contHora[10]~45\,
	combout => \contHora[11]~46_combout\,
	cout => \contHora[11]~47\);

-- Location: FF_X11_Y25_N31
\contHora[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[11]~46_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(11));

-- Location: LCCOMB_X11_Y24_N0
\contHora[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[12]~48_combout\ = (contHora(12) & (\contHora[11]~47\ $ (GND))) # (!contHora(12) & (!\contHora[11]~47\ & VCC))
-- \contHora[12]~49\ = CARRY((contHora(12) & !\contHora[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(12),
	datad => VCC,
	cin => \contHora[11]~47\,
	combout => \contHora[12]~48_combout\,
	cout => \contHora[12]~49\);

-- Location: FF_X11_Y24_N1
\contHora[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[12]~48_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(12));

-- Location: LCCOMB_X11_Y24_N2
\contHora[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[13]~50_combout\ = (contHora(13) & (!\contHora[12]~49\)) # (!contHora(13) & ((\contHora[12]~49\) # (GND)))
-- \contHora[13]~51\ = CARRY((!\contHora[12]~49\) # (!contHora(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(13),
	datad => VCC,
	cin => \contHora[12]~49\,
	combout => \contHora[13]~50_combout\,
	cout => \contHora[13]~51\);

-- Location: FF_X11_Y24_N3
\contHora[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[13]~50_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(13));

-- Location: LCCOMB_X11_Y24_N4
\contHora[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[14]~52_combout\ = (contHora(14) & (\contHora[13]~51\ $ (GND))) # (!contHora(14) & (!\contHora[13]~51\ & VCC))
-- \contHora[14]~53\ = CARRY((contHora(14) & !\contHora[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(14),
	datad => VCC,
	cin => \contHora[13]~51\,
	combout => \contHora[14]~52_combout\,
	cout => \contHora[14]~53\);

-- Location: FF_X11_Y24_N5
\contHora[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[14]~52_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(14));

-- Location: LCCOMB_X11_Y24_N6
\contHora[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[15]~54_combout\ = (contHora(15) & (!\contHora[14]~53\)) # (!contHora(15) & ((\contHora[14]~53\) # (GND)))
-- \contHora[15]~55\ = CARRY((!\contHora[14]~53\) # (!contHora(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contHora(15),
	datad => VCC,
	cin => \contHora[14]~53\,
	combout => \contHora[15]~54_combout\,
	cout => \contHora[15]~55\);

-- Location: FF_X11_Y24_N7
\contHora[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[15]~54_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(15));

-- Location: LCCOMB_X11_Y24_N8
\contHora[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contHora[16]~56_combout\ = (contHora(16) & (\contHora[15]~55\ $ (GND))) # (!contHora(16) & (!\contHora[15]~55\ & VCC))
-- \contHora[16]~57\ = CARRY((contHora(16) & !\contHora[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contHora(16),
	datad => VCC,
	cin => \contHora[15]~55\,
	combout => \contHora[16]~56_combout\,
	cout => \contHora[16]~57\);

-- Location: FF_X11_Y24_N9
\contHora[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[16]~56_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(16));

-- Location: FF_X11_Y24_N11
\contHora[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contHora[17]~58_combout\,
	sclr => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contHora(17));

-- Location: LCCOMB_X12_Y24_N6
\Equal13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (!contHora(17) & (!contHora(16) & (!contHora(19) & !contHora(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contHora(17),
	datab => contHora(16),
	datac => contHora(19),
	datad => contHora(18),
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X12_Y24_N14
\DHH0[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0[3]~2_combout\ = (\Equal13~5_combout\ & (\lastHora~q\ & (\Equal13~6_combout\ & \Equal13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~5_combout\,
	datab => \lastHora~q\,
	datac => \Equal13~6_combout\,
	datad => \Equal13~4_combout\,
	combout => \DHH0[3]~2_combout\);

-- Location: LCCOMB_X12_Y24_N0
\DHH0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0[3]~3_combout\ = (!ModoAtual(1) & (\DHH0[3]~2_combout\ & ModoAtual(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datac => \DHH0[3]~2_combout\,
	datad => ModoAtual(0),
	combout => \DHH0[3]~3_combout\);

-- Location: FF_X12_Y24_N5
\DHH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH0[0]~9_combout\,
	ena => \DHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH0(0));

-- Location: LCCOMB_X12_Y24_N30
\DHH0[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0[3]~4_combout\ = (DHH0(1) & (DHH1(1) & (!DHH1(0) & !DHH0(3)))) # (!DHH0(1) & (((DHH0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH1(1),
	datab => DHH1(0),
	datac => DHH0(1),
	datad => DHH0(3),
	combout => \DHH0[3]~4_combout\);

-- Location: LCCOMB_X12_Y24_N16
\DHH0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0~8_combout\ = (DHH0(1) & ((DHH0(2) & ((!DHH0(0)))) # (!DHH0(2) & (!\DHH0[3]~4_combout\ & DHH0(0))))) # (!DHH0(1) & (((DHH0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DHH0[3]~4_combout\,
	datab => DHH0(1),
	datac => DHH0(2),
	datad => DHH0(0),
	combout => \DHH0~8_combout\);

-- Location: FF_X12_Y24_N17
\DHH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH0~8_combout\,
	ena => \DHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH0(2));

-- Location: LCCOMB_X12_Y24_N26
\DHH0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0~5_combout\ = (DHH0(0) & (!DHH0(1) & ((DHH0(2)) # (!\DHH0[3]~4_combout\)))) # (!DHH0(0) & (((DHH0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DHH0[3]~4_combout\,
	datab => DHH0(0),
	datac => DHH0(1),
	datad => DHH0(2),
	combout => \DHH0~5_combout\);

-- Location: FF_X12_Y24_N27
\DHH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH0~5_combout\,
	ena => \DHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH0(1));

-- Location: LCCOMB_X12_Y24_N12
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (DHH0(0) & DHH0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DHH0(0),
	datad => DHH0(1),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X12_Y24_N2
\DHH0[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0[3]~6_combout\ = (DHH0(0) & (\DHH0[3]~4_combout\ & !DHH0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DHH0(0),
	datac => \DHH0[3]~4_combout\,
	datad => DHH0(2),
	combout => \DHH0[3]~6_combout\);

-- Location: LCCOMB_X12_Y24_N22
\DHH0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH0~7_combout\ = (!\DHH0[3]~6_combout\ & (DHH0(3) $ (((\Add8~0_combout\ & DHH0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \DHH0[3]~6_combout\,
	datac => DHH0(3),
	datad => DHH0(2),
	combout => \DHH0~7_combout\);

-- Location: FF_X12_Y24_N23
\DHH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH0~7_combout\,
	ena => \DHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH0(3));

-- Location: LCCOMB_X12_Y24_N28
\DHH1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH1[1]~2_combout\ = (DHH0(3) & (!DHH0(1) & (DHH0(0) & !DHH0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH0(3),
	datab => DHH0(1),
	datac => DHH0(0),
	datad => DHH0(2),
	combout => \DHH1[1]~2_combout\);

-- Location: LCCOMB_X12_Y24_N20
\DHH1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH1[0]~3_combout\ = (\DHH0[3]~6_combout\ & ((DHH1(0) & ((!\DHH0[3]~3_combout\))) # (!DHH1(0) & (\DHH1[1]~2_combout\ & \DHH0[3]~3_combout\)))) # (!\DHH0[3]~6_combout\ & (((DHH1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DHH1[1]~2_combout\,
	datab => \DHH0[3]~6_combout\,
	datac => DHH1(0),
	datad => \DHH0[3]~3_combout\,
	combout => \DHH1[0]~3_combout\);

-- Location: FF_X12_Y24_N21
\DHH1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH1(0));

-- Location: LCCOMB_X12_Y24_N18
\DHH1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH1[0]~5_combout\ = (!ModoAtual(1) & (\DHH0[3]~6_combout\ & (\DHH0[3]~2_combout\ & ModoAtual(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datab => \DHH0[3]~6_combout\,
	datac => \DHH0[3]~2_combout\,
	datad => ModoAtual(0),
	combout => \DHH1[0]~5_combout\);

-- Location: LCCOMB_X12_Y24_N10
\DHH1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DHH1[1]~4_combout\ = (\DHH1[0]~5_combout\ & (\DHH1[1]~2_combout\ & (DHH1(0) $ (DHH1(1))))) # (!\DHH1[0]~5_combout\ & (((DHH1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH1(0),
	datab => \DHH1[1]~2_combout\,
	datac => DHH1(1),
	datad => \DHH1[0]~5_combout\,
	combout => \DHH1[1]~4_combout\);

-- Location: FF_X12_Y24_N11
\DHH1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DHH1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DHH1(1));

-- Location: LCCOMB_X17_Y24_N12
\HH0[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[0]~12_combout\ = !HH0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HH0(0),
	combout => \HH0[0]~12_combout\);

-- Location: LCCOMB_X17_Y21_N18
\SS0[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[0]~6_combout\ = SS0(0) $ (VCC)
-- \SS0[0]~7\ = CARRY(SS0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SS0(0),
	datad => VCC,
	combout => \SS0[0]~6_combout\,
	cout => \SS0[0]~7\);

-- Location: LCCOMB_X19_Y22_N6
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = TEMPORAL(0) $ (VCC)
-- \Add12~1\ = CARRY(TEMPORAL(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: FF_X19_Y22_N7
\TEMPORAL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(0));

-- Location: LCCOMB_X19_Y22_N8
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (TEMPORAL(1) & (!\Add12~1\)) # (!TEMPORAL(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!TEMPORAL(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: FF_X19_Y22_N9
\TEMPORAL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(1));

-- Location: LCCOMB_X19_Y22_N10
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (TEMPORAL(2) & (\Add12~3\ $ (GND))) # (!TEMPORAL(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((TEMPORAL(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: FF_X19_Y22_N11
\TEMPORAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(2));

-- Location: LCCOMB_X19_Y22_N12
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (TEMPORAL(3) & (!\Add12~5\)) # (!TEMPORAL(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!TEMPORAL(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: FF_X19_Y22_N13
\TEMPORAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(3));

-- Location: LCCOMB_X19_Y22_N14
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (TEMPORAL(4) & (\Add12~7\ $ (GND))) # (!TEMPORAL(4) & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((TEMPORAL(4) & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: FF_X19_Y22_N15
\TEMPORAL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(4));

-- Location: LCCOMB_X19_Y22_N16
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (TEMPORAL(5) & (!\Add12~9\)) # (!TEMPORAL(5) & ((\Add12~9\) # (GND)))
-- \Add12~11\ = CARRY((!\Add12~9\) # (!TEMPORAL(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: FF_X19_Y22_N17
\TEMPORAL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(5));

-- Location: LCCOMB_X19_Y22_N2
\Equal15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~6_combout\ = (TEMPORAL(2) & (TEMPORAL(5) & (TEMPORAL(4) & TEMPORAL(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(2),
	datab => TEMPORAL(5),
	datac => TEMPORAL(4),
	datad => TEMPORAL(3),
	combout => \Equal15~6_combout\);

-- Location: LCCOMB_X19_Y22_N18
\Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (TEMPORAL(6) & (\Add12~11\ $ (GND))) # (!TEMPORAL(6) & (!\Add12~11\ & VCC))
-- \Add12~13\ = CARRY((TEMPORAL(6) & !\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: FF_X19_Y22_N19
\TEMPORAL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(6));

-- Location: LCCOMB_X19_Y22_N20
\Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (TEMPORAL(7) & (!\Add12~13\)) # (!TEMPORAL(7) & ((\Add12~13\) # (GND)))
-- \Add12~15\ = CARRY((!\Add12~13\) # (!TEMPORAL(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(7),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X19_Y22_N22
\Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (TEMPORAL(8) & (\Add12~15\ $ (GND))) # (!TEMPORAL(8) & (!\Add12~15\ & VCC))
-- \Add12~17\ = CARRY((TEMPORAL(8) & !\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X19_Y22_N24
\Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (TEMPORAL(9) & (!\Add12~17\)) # (!TEMPORAL(9) & ((\Add12~17\) # (GND)))
-- \Add12~19\ = CARRY((!\Add12~17\) # (!TEMPORAL(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(9),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: FF_X19_Y22_N25
\TEMPORAL[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(9));

-- Location: LCCOMB_X19_Y22_N26
\Add12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = (TEMPORAL(10) & (\Add12~19\ $ (GND))) # (!TEMPORAL(10) & (!\Add12~19\ & VCC))
-- \Add12~21\ = CARRY((TEMPORAL(10) & !\Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(10),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: FF_X19_Y22_N27
\TEMPORAL[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(10));

-- Location: LCCOMB_X19_Y22_N28
\Add12~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (TEMPORAL(11) & (!\Add12~21\)) # (!TEMPORAL(11) & ((\Add12~21\) # (GND)))
-- \Add12~23\ = CARRY((!\Add12~21\) # (!TEMPORAL(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~22_combout\,
	cout => \Add12~23\);

-- Location: FF_X19_Y22_N29
\TEMPORAL[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(11));

-- Location: LCCOMB_X19_Y22_N30
\Add12~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (TEMPORAL(12) & (\Add12~23\ $ (GND))) # (!TEMPORAL(12) & (!\Add12~23\ & VCC))
-- \Add12~25\ = CARRY((TEMPORAL(12) & !\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: LCCOMB_X20_Y21_N20
\TEMPORAL~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~15_combout\ = (\Add12~24_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~7_combout\,
	datac => \Add12~24_combout\,
	datad => \Equal15~4_combout\,
	combout => \TEMPORAL~15_combout\);

-- Location: FF_X20_Y21_N21
\TEMPORAL[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(12));

-- Location: LCCOMB_X19_Y21_N0
\Add12~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (TEMPORAL(13) & (!\Add12~25\)) # (!TEMPORAL(13) & ((\Add12~25\) # (GND)))
-- \Add12~27\ = CARRY((!\Add12~25\) # (!TEMPORAL(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(13),
	datad => VCC,
	cin => \Add12~25\,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X20_Y21_N18
\TEMPORAL~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~14_combout\ = (\Add12~26_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~26_combout\,
	combout => \TEMPORAL~14_combout\);

-- Location: FF_X20_Y21_N19
\TEMPORAL[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(13));

-- Location: LCCOMB_X19_Y21_N2
\Add12~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (TEMPORAL(14) & (\Add12~27\ $ (GND))) # (!TEMPORAL(14) & (!\Add12~27\ & VCC))
-- \Add12~29\ = CARRY((TEMPORAL(14) & !\Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(14),
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: LCCOMB_X20_Y21_N22
\TEMPORAL~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~13_combout\ = (\Add12~28_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~28_combout\,
	combout => \TEMPORAL~13_combout\);

-- Location: FF_X20_Y21_N23
\TEMPORAL[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(14));

-- Location: LCCOMB_X19_Y21_N4
\Add12~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (TEMPORAL(15) & (!\Add12~29\)) # (!TEMPORAL(15) & ((\Add12~29\) # (GND)))
-- \Add12~31\ = CARRY((!\Add12~29\) # (!TEMPORAL(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(15),
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~30_combout\,
	cout => \Add12~31\);

-- Location: LCCOMB_X20_Y21_N12
\TEMPORAL~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~12_combout\ = (\Add12~30_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~30_combout\,
	combout => \TEMPORAL~12_combout\);

-- Location: FF_X20_Y21_N13
\TEMPORAL[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(15));

-- Location: LCCOMB_X19_Y21_N6
\Add12~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~32_combout\ = (TEMPORAL(16) & (\Add12~31\ $ (GND))) # (!TEMPORAL(16) & (!\Add12~31\ & VCC))
-- \Add12~33\ = CARRY((TEMPORAL(16) & !\Add12~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(16),
	datad => VCC,
	cin => \Add12~31\,
	combout => \Add12~32_combout\,
	cout => \Add12~33\);

-- Location: FF_X19_Y21_N7
\TEMPORAL[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(16));

-- Location: LCCOMB_X19_Y21_N8
\Add12~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~34_combout\ = (TEMPORAL(17) & (!\Add12~33\)) # (!TEMPORAL(17) & ((\Add12~33\) # (GND)))
-- \Add12~35\ = CARRY((!\Add12~33\) # (!TEMPORAL(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(17),
	datad => VCC,
	cin => \Add12~33\,
	combout => \Add12~34_combout\,
	cout => \Add12~35\);

-- Location: LCCOMB_X19_Y21_N30
\TEMPORAL~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~11_combout\ = (\Add12~34_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datac => \Add12~34_combout\,
	datad => \Equal15~4_combout\,
	combout => \TEMPORAL~11_combout\);

-- Location: FF_X19_Y21_N31
\TEMPORAL[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(17));

-- Location: LCCOMB_X19_Y21_N10
\Add12~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (TEMPORAL(18) & (\Add12~35\ $ (GND))) # (!TEMPORAL(18) & (!\Add12~35\ & VCC))
-- \Add12~37\ = CARRY((TEMPORAL(18) & !\Add12~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(18),
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~36_combout\,
	cout => \Add12~37\);

-- Location: FF_X19_Y21_N11
\TEMPORAL[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(18));

-- Location: LCCOMB_X19_Y21_N12
\Add12~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~38_combout\ = (TEMPORAL(19) & (!\Add12~37\)) # (!TEMPORAL(19) & ((\Add12~37\) # (GND)))
-- \Add12~39\ = CARRY((!\Add12~37\) # (!TEMPORAL(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(19),
	datad => VCC,
	cin => \Add12~37\,
	combout => \Add12~38_combout\,
	cout => \Add12~39\);

-- Location: LCCOMB_X20_Y21_N0
\TEMPORAL~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~10_combout\ = (\Add12~38_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~38_combout\,
	combout => \TEMPORAL~10_combout\);

-- Location: FF_X20_Y21_N1
\TEMPORAL[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(19));

-- Location: LCCOMB_X19_Y21_N14
\Add12~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (TEMPORAL(20) & (\Add12~39\ $ (GND))) # (!TEMPORAL(20) & (!\Add12~39\ & VCC))
-- \Add12~41\ = CARRY((TEMPORAL(20) & !\Add12~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(20),
	datad => VCC,
	cin => \Add12~39\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: LCCOMB_X19_Y21_N28
\TEMPORAL~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~21_combout\ = (\Add12~40_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datac => \Add12~40_combout\,
	datad => \Equal15~4_combout\,
	combout => \TEMPORAL~21_combout\);

-- Location: FF_X19_Y21_N29
\TEMPORAL[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(20));

-- Location: LCCOMB_X19_Y21_N16
\Add12~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (TEMPORAL(21) & (!\Add12~41\)) # (!TEMPORAL(21) & ((\Add12~41\) # (GND)))
-- \Add12~43\ = CARRY((!\Add12~41\) # (!TEMPORAL(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(21),
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~42_combout\,
	cout => \Add12~43\);

-- Location: LCCOMB_X20_Y21_N14
\TEMPORAL~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~20_combout\ = (\Add12~42_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~7_combout\,
	datac => \Add12~42_combout\,
	datad => \Equal15~4_combout\,
	combout => \TEMPORAL~20_combout\);

-- Location: FF_X20_Y21_N15
\TEMPORAL[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(21));

-- Location: LCCOMB_X20_Y21_N30
\Equal15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (!TEMPORAL(18) & (TEMPORAL(19) & (TEMPORAL(21) & TEMPORAL(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(18),
	datab => TEMPORAL(19),
	datac => TEMPORAL(21),
	datad => TEMPORAL(20),
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X19_Y21_N18
\Add12~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~44_combout\ = (TEMPORAL(22) & (\Add12~43\ $ (GND))) # (!TEMPORAL(22) & (!\Add12~43\ & VCC))
-- \Add12~45\ = CARRY((TEMPORAL(22) & !\Add12~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(22),
	datad => VCC,
	cin => \Add12~43\,
	combout => \Add12~44_combout\,
	cout => \Add12~45\);

-- Location: LCCOMB_X20_Y21_N26
\TEMPORAL~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~19_combout\ = (\Add12~44_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~44_combout\,
	combout => \TEMPORAL~19_combout\);

-- Location: FF_X20_Y21_N27
\TEMPORAL[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(22));

-- Location: LCCOMB_X19_Y21_N20
\Add12~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (TEMPORAL(23) & (!\Add12~45\)) # (!TEMPORAL(23) & ((\Add12~45\) # (GND)))
-- \Add12~47\ = CARRY((!\Add12~45\) # (!TEMPORAL(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TEMPORAL(23),
	datad => VCC,
	cin => \Add12~45\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: LCCOMB_X20_Y21_N24
\TEMPORAL~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~18_combout\ = (\Add12~46_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~46_combout\,
	combout => \TEMPORAL~18_combout\);

-- Location: FF_X20_Y21_N25
\TEMPORAL[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(23));

-- Location: LCCOMB_X19_Y21_N22
\Add12~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (TEMPORAL(24) & (\Add12~47\ $ (GND))) # (!TEMPORAL(24) & (!\Add12~47\ & VCC))
-- \Add12~49\ = CARRY((TEMPORAL(24) & !\Add12~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(24),
	datad => VCC,
	cin => \Add12~47\,
	combout => \Add12~48_combout\,
	cout => \Add12~49\);

-- Location: FF_X19_Y21_N23
\TEMPORAL[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(24));

-- Location: LCCOMB_X19_Y21_N24
\Add12~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~50_combout\ = TEMPORAL(25) $ (\Add12~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(25),
	cin => \Add12~49\,
	combout => \Add12~50_combout\);

-- Location: LCCOMB_X19_Y21_N26
\TEMPORAL~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~17_combout\ = (\Add12~50_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add12~50_combout\,
	combout => \TEMPORAL~17_combout\);

-- Location: FF_X19_Y21_N27
\TEMPORAL[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TEMPORAL~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(25));

-- Location: LCCOMB_X20_Y21_N16
\Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (TEMPORAL(22) & (TEMPORAL(23) & (!TEMPORAL(24) & TEMPORAL(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(22),
	datab => TEMPORAL(23),
	datac => TEMPORAL(24),
	datad => TEMPORAL(25),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X20_Y21_N8
\Equal15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (TEMPORAL(15) & (!TEMPORAL(16) & (TEMPORAL(14) & TEMPORAL(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(15),
	datab => TEMPORAL(16),
	datac => TEMPORAL(14),
	datad => TEMPORAL(17),
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X20_Y21_N6
\Equal15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (!TEMPORAL(11) & (TEMPORAL(13) & (!TEMPORAL(10) & TEMPORAL(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(11),
	datab => TEMPORAL(13),
	datac => TEMPORAL(10),
	datad => TEMPORAL(12),
	combout => \Equal15~3_combout\);

-- Location: LCCOMB_X20_Y21_N28
\Equal15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\Equal15~1_combout\ & (\Equal15~0_combout\ & (\Equal15~2_combout\ & \Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~1_combout\,
	datab => \Equal15~0_combout\,
	datac => \Equal15~2_combout\,
	datad => \Equal15~3_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCCOMB_X20_Y22_N0
\TEMPORAL~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TEMPORAL~16_combout\ = (\Add12~14_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~7_combout\,
	datac => \Add12~14_combout\,
	datad => \Equal15~4_combout\,
	combout => \TEMPORAL~16_combout\);

-- Location: FF_X19_Y22_N1
\TEMPORAL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TEMPORAL~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(7));

-- Location: FF_X19_Y22_N23
\TEMPORAL[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add12~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMPORAL(8));

-- Location: LCCOMB_X19_Y22_N0
\Equal15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = (!TEMPORAL(8) & (!TEMPORAL(9) & (!TEMPORAL(7) & TEMPORAL(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(8),
	datab => TEMPORAL(9),
	datac => TEMPORAL(7),
	datad => TEMPORAL(6),
	combout => \Equal15~5_combout\);

-- Location: LCCOMB_X19_Y22_N4
\Equal15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~7_combout\ = (TEMPORAL(0) & (TEMPORAL(1) & (\Equal15~6_combout\ & \Equal15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMPORAL(0),
	datab => TEMPORAL(1),
	datac => \Equal15~6_combout\,
	datad => \Equal15~5_combout\,
	combout => \Equal15~7_combout\);

-- Location: LCCOMB_X17_Y21_N4
\SS0[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[2]~12_combout\ = ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)) # (!\Equal16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal16~1_combout\,
	datac => \Equal15~7_combout\,
	datad => \Equal15~4_combout\,
	combout => \SS0[2]~12_combout\);

-- Location: LCCOMB_X20_Y21_N10
\Equal15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~8_combout\ = (\Equal15~4_combout\ & \Equal15~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datad => \Equal15~7_combout\,
	combout => \Equal15~8_combout\);

-- Location: IOIBUF_X0_Y23_N15
\UPminuto~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPminuto,
	o => \UPminuto~input_o\);

-- Location: LCCOMB_X15_Y24_N8
\contMinuto[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[0]~24_combout\ = contMinuto(0) $ (VCC)
-- \contMinuto[0]~25\ = CARRY(contMinuto(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(0),
	datad => VCC,
	combout => \contMinuto[0]~24_combout\,
	cout => \contMinuto[0]~25\);

-- Location: LCCOMB_X14_Y24_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Equal12~7_combout\) # (\lastMinuto~q\ $ (\UPminuto~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastMinuto~q\,
	datac => \UPminuto~input_o\,
	datad => \Equal12~7_combout\,
	combout => \process_0~0_combout\);

-- Location: FF_X15_Y24_N9
\contMinuto[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[0]~24_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(0));

-- Location: LCCOMB_X15_Y24_N10
\contMinuto[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[1]~26_combout\ = (contMinuto(1) & (!\contMinuto[0]~25\)) # (!contMinuto(1) & ((\contMinuto[0]~25\) # (GND)))
-- \contMinuto[1]~27\ = CARRY((!\contMinuto[0]~25\) # (!contMinuto(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(1),
	datad => VCC,
	cin => \contMinuto[0]~25\,
	combout => \contMinuto[1]~26_combout\,
	cout => \contMinuto[1]~27\);

-- Location: FF_X15_Y24_N11
\contMinuto[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[1]~26_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(1));

-- Location: LCCOMB_X15_Y24_N12
\contMinuto[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[2]~28_combout\ = (contMinuto(2) & (\contMinuto[1]~27\ $ (GND))) # (!contMinuto(2) & (!\contMinuto[1]~27\ & VCC))
-- \contMinuto[2]~29\ = CARRY((contMinuto(2) & !\contMinuto[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(2),
	datad => VCC,
	cin => \contMinuto[1]~27\,
	combout => \contMinuto[2]~28_combout\,
	cout => \contMinuto[2]~29\);

-- Location: FF_X15_Y24_N13
\contMinuto[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[2]~28_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(2));

-- Location: LCCOMB_X15_Y24_N14
\contMinuto[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[3]~30_combout\ = (contMinuto(3) & (!\contMinuto[2]~29\)) # (!contMinuto(3) & ((\contMinuto[2]~29\) # (GND)))
-- \contMinuto[3]~31\ = CARRY((!\contMinuto[2]~29\) # (!contMinuto(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(3),
	datad => VCC,
	cin => \contMinuto[2]~29\,
	combout => \contMinuto[3]~30_combout\,
	cout => \contMinuto[3]~31\);

-- Location: FF_X15_Y24_N15
\contMinuto[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[3]~30_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(3));

-- Location: LCCOMB_X15_Y24_N16
\contMinuto[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[4]~32_combout\ = (contMinuto(4) & (\contMinuto[3]~31\ $ (GND))) # (!contMinuto(4) & (!\contMinuto[3]~31\ & VCC))
-- \contMinuto[4]~33\ = CARRY((contMinuto(4) & !\contMinuto[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(4),
	datad => VCC,
	cin => \contMinuto[3]~31\,
	combout => \contMinuto[4]~32_combout\,
	cout => \contMinuto[4]~33\);

-- Location: FF_X15_Y24_N17
\contMinuto[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[4]~32_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(4));

-- Location: LCCOMB_X15_Y24_N18
\contMinuto[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[5]~34_combout\ = (contMinuto(5) & (!\contMinuto[4]~33\)) # (!contMinuto(5) & ((\contMinuto[4]~33\) # (GND)))
-- \contMinuto[5]~35\ = CARRY((!\contMinuto[4]~33\) # (!contMinuto(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(5),
	datad => VCC,
	cin => \contMinuto[4]~33\,
	combout => \contMinuto[5]~34_combout\,
	cout => \contMinuto[5]~35\);

-- Location: FF_X15_Y24_N19
\contMinuto[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[5]~34_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(5));

-- Location: LCCOMB_X15_Y24_N20
\contMinuto[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[6]~36_combout\ = (contMinuto(6) & (\contMinuto[5]~35\ $ (GND))) # (!contMinuto(6) & (!\contMinuto[5]~35\ & VCC))
-- \contMinuto[6]~37\ = CARRY((contMinuto(6) & !\contMinuto[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(6),
	datad => VCC,
	cin => \contMinuto[5]~35\,
	combout => \contMinuto[6]~36_combout\,
	cout => \contMinuto[6]~37\);

-- Location: FF_X15_Y24_N21
\contMinuto[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[6]~36_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(6));

-- Location: LCCOMB_X15_Y24_N22
\contMinuto[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[7]~38_combout\ = (contMinuto(7) & (!\contMinuto[6]~37\)) # (!contMinuto(7) & ((\contMinuto[6]~37\) # (GND)))
-- \contMinuto[7]~39\ = CARRY((!\contMinuto[6]~37\) # (!contMinuto(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(7),
	datad => VCC,
	cin => \contMinuto[6]~37\,
	combout => \contMinuto[7]~38_combout\,
	cout => \contMinuto[7]~39\);

-- Location: FF_X15_Y24_N23
\contMinuto[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[7]~38_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(7));

-- Location: LCCOMB_X15_Y24_N24
\contMinuto[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[8]~40_combout\ = (contMinuto(8) & (\contMinuto[7]~39\ $ (GND))) # (!contMinuto(8) & (!\contMinuto[7]~39\ & VCC))
-- \contMinuto[8]~41\ = CARRY((contMinuto(8) & !\contMinuto[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(8),
	datad => VCC,
	cin => \contMinuto[7]~39\,
	combout => \contMinuto[8]~40_combout\,
	cout => \contMinuto[8]~41\);

-- Location: FF_X15_Y24_N25
\contMinuto[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[8]~40_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(8));

-- Location: LCCOMB_X15_Y24_N26
\contMinuto[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[9]~42_combout\ = (contMinuto(9) & (!\contMinuto[8]~41\)) # (!contMinuto(9) & ((\contMinuto[8]~41\) # (GND)))
-- \contMinuto[9]~43\ = CARRY((!\contMinuto[8]~41\) # (!contMinuto(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(9),
	datad => VCC,
	cin => \contMinuto[8]~41\,
	combout => \contMinuto[9]~42_combout\,
	cout => \contMinuto[9]~43\);

-- Location: FF_X15_Y24_N27
\contMinuto[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[9]~42_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(9));

-- Location: LCCOMB_X15_Y24_N28
\contMinuto[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[10]~44_combout\ = (contMinuto(10) & (\contMinuto[9]~43\ $ (GND))) # (!contMinuto(10) & (!\contMinuto[9]~43\ & VCC))
-- \contMinuto[10]~45\ = CARRY((contMinuto(10) & !\contMinuto[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(10),
	datad => VCC,
	cin => \contMinuto[9]~43\,
	combout => \contMinuto[10]~44_combout\,
	cout => \contMinuto[10]~45\);

-- Location: FF_X15_Y24_N29
\contMinuto[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[10]~44_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(10));

-- Location: LCCOMB_X15_Y24_N30
\contMinuto[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[11]~46_combout\ = (contMinuto(11) & (!\contMinuto[10]~45\)) # (!contMinuto(11) & ((\contMinuto[10]~45\) # (GND)))
-- \contMinuto[11]~47\ = CARRY((!\contMinuto[10]~45\) # (!contMinuto(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(11),
	datad => VCC,
	cin => \contMinuto[10]~45\,
	combout => \contMinuto[11]~46_combout\,
	cout => \contMinuto[11]~47\);

-- Location: FF_X15_Y24_N31
\contMinuto[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[11]~46_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(11));

-- Location: LCCOMB_X15_Y23_N0
\contMinuto[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[12]~48_combout\ = (contMinuto(12) & (\contMinuto[11]~47\ $ (GND))) # (!contMinuto(12) & (!\contMinuto[11]~47\ & VCC))
-- \contMinuto[12]~49\ = CARRY((contMinuto(12) & !\contMinuto[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(12),
	datad => VCC,
	cin => \contMinuto[11]~47\,
	combout => \contMinuto[12]~48_combout\,
	cout => \contMinuto[12]~49\);

-- Location: FF_X15_Y23_N1
\contMinuto[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[12]~48_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(12));

-- Location: LCCOMB_X15_Y23_N2
\contMinuto[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[13]~50_combout\ = (contMinuto(13) & (!\contMinuto[12]~49\)) # (!contMinuto(13) & ((\contMinuto[12]~49\) # (GND)))
-- \contMinuto[13]~51\ = CARRY((!\contMinuto[12]~49\) # (!contMinuto(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(13),
	datad => VCC,
	cin => \contMinuto[12]~49\,
	combout => \contMinuto[13]~50_combout\,
	cout => \contMinuto[13]~51\);

-- Location: FF_X15_Y23_N3
\contMinuto[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[13]~50_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(13));

-- Location: LCCOMB_X15_Y23_N4
\contMinuto[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[14]~52_combout\ = (contMinuto(14) & (\contMinuto[13]~51\ $ (GND))) # (!contMinuto(14) & (!\contMinuto[13]~51\ & VCC))
-- \contMinuto[14]~53\ = CARRY((contMinuto(14) & !\contMinuto[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(14),
	datad => VCC,
	cin => \contMinuto[13]~51\,
	combout => \contMinuto[14]~52_combout\,
	cout => \contMinuto[14]~53\);

-- Location: FF_X15_Y23_N5
\contMinuto[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[14]~52_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(14));

-- Location: LCCOMB_X15_Y23_N6
\contMinuto[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[15]~54_combout\ = (contMinuto(15) & (!\contMinuto[14]~53\)) # (!contMinuto(15) & ((\contMinuto[14]~53\) # (GND)))
-- \contMinuto[15]~55\ = CARRY((!\contMinuto[14]~53\) # (!contMinuto(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(15),
	datad => VCC,
	cin => \contMinuto[14]~53\,
	combout => \contMinuto[15]~54_combout\,
	cout => \contMinuto[15]~55\);

-- Location: FF_X15_Y23_N7
\contMinuto[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[15]~54_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(15));

-- Location: LCCOMB_X15_Y23_N8
\contMinuto[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[16]~56_combout\ = (contMinuto(16) & (\contMinuto[15]~55\ $ (GND))) # (!contMinuto(16) & (!\contMinuto[15]~55\ & VCC))
-- \contMinuto[16]~57\ = CARRY((contMinuto(16) & !\contMinuto[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(16),
	datad => VCC,
	cin => \contMinuto[15]~55\,
	combout => \contMinuto[16]~56_combout\,
	cout => \contMinuto[16]~57\);

-- Location: FF_X15_Y23_N9
\contMinuto[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[16]~56_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(16));

-- Location: LCCOMB_X15_Y23_N10
\contMinuto[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[17]~58_combout\ = (contMinuto(17) & (!\contMinuto[16]~57\)) # (!contMinuto(17) & ((\contMinuto[16]~57\) # (GND)))
-- \contMinuto[17]~59\ = CARRY((!\contMinuto[16]~57\) # (!contMinuto(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(17),
	datad => VCC,
	cin => \contMinuto[16]~57\,
	combout => \contMinuto[17]~58_combout\,
	cout => \contMinuto[17]~59\);

-- Location: FF_X15_Y23_N11
\contMinuto[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[17]~58_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(17));

-- Location: LCCOMB_X15_Y23_N12
\contMinuto[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[18]~60_combout\ = (contMinuto(18) & (\contMinuto[17]~59\ $ (GND))) # (!contMinuto(18) & (!\contMinuto[17]~59\ & VCC))
-- \contMinuto[18]~61\ = CARRY((contMinuto(18) & !\contMinuto[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(18),
	datad => VCC,
	cin => \contMinuto[17]~59\,
	combout => \contMinuto[18]~60_combout\,
	cout => \contMinuto[18]~61\);

-- Location: FF_X15_Y23_N13
\contMinuto[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[18]~60_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(18));

-- Location: LCCOMB_X15_Y23_N14
\contMinuto[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[19]~62_combout\ = (contMinuto(19) & (!\contMinuto[18]~61\)) # (!contMinuto(19) & ((\contMinuto[18]~61\) # (GND)))
-- \contMinuto[19]~63\ = CARRY((!\contMinuto[18]~61\) # (!contMinuto(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(19),
	datad => VCC,
	cin => \contMinuto[18]~61\,
	combout => \contMinuto[19]~62_combout\,
	cout => \contMinuto[19]~63\);

-- Location: FF_X15_Y23_N15
\contMinuto[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[19]~62_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(19));

-- Location: LCCOMB_X15_Y23_N16
\contMinuto[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[20]~64_combout\ = (contMinuto(20) & (\contMinuto[19]~63\ $ (GND))) # (!contMinuto(20) & (!\contMinuto[19]~63\ & VCC))
-- \contMinuto[20]~65\ = CARRY((contMinuto(20) & !\contMinuto[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(20),
	datad => VCC,
	cin => \contMinuto[19]~63\,
	combout => \contMinuto[20]~64_combout\,
	cout => \contMinuto[20]~65\);

-- Location: FF_X15_Y23_N17
\contMinuto[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[20]~64_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(20));

-- Location: LCCOMB_X15_Y23_N18
\contMinuto[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[21]~66_combout\ = (contMinuto(21) & (!\contMinuto[20]~65\)) # (!contMinuto(21) & ((\contMinuto[20]~65\) # (GND)))
-- \contMinuto[21]~67\ = CARRY((!\contMinuto[20]~65\) # (!contMinuto(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(21),
	datad => VCC,
	cin => \contMinuto[20]~65\,
	combout => \contMinuto[21]~66_combout\,
	cout => \contMinuto[21]~67\);

-- Location: FF_X15_Y23_N19
\contMinuto[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[21]~66_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(21));

-- Location: LCCOMB_X15_Y23_N20
\contMinuto[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[22]~68_combout\ = (contMinuto(22) & (\contMinuto[21]~67\ $ (GND))) # (!contMinuto(22) & (!\contMinuto[21]~67\ & VCC))
-- \contMinuto[22]~69\ = CARRY((contMinuto(22) & !\contMinuto[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contMinuto(22),
	datad => VCC,
	cin => \contMinuto[21]~67\,
	combout => \contMinuto[22]~68_combout\,
	cout => \contMinuto[22]~69\);

-- Location: FF_X15_Y23_N21
\contMinuto[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[22]~68_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(22));

-- Location: LCCOMB_X15_Y23_N22
\contMinuto[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contMinuto[23]~70_combout\ = contMinuto(23) $ (\contMinuto[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(23),
	cin => \contMinuto[22]~69\,
	combout => \contMinuto[23]~70_combout\);

-- Location: FF_X15_Y23_N23
\contMinuto[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contMinuto[23]~70_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contMinuto(23));

-- Location: LCCOMB_X15_Y23_N24
\Equal12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (!contMinuto(23) & (!contMinuto(21) & (!contMinuto(22) & !contMinuto(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(23),
	datab => contMinuto(21),
	datac => contMinuto(22),
	datad => contMinuto(20),
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X15_Y23_N26
\Equal12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (!contMinuto(17) & (!contMinuto(16) & (!contMinuto(19) & !contMinuto(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(17),
	datab => contMinuto(16),
	datac => contMinuto(19),
	datad => contMinuto(18),
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X15_Y24_N6
\Equal12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (contMinuto(7) & (contMinuto(5) & (contMinuto(6) & !contMinuto(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(7),
	datab => contMinuto(5),
	datac => contMinuto(6),
	datad => contMinuto(4),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X15_Y24_N0
\Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (contMinuto(2) & (contMinuto(0) & (!contMinuto(3) & contMinuto(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(2),
	datab => contMinuto(0),
	datac => contMinuto(3),
	datad => contMinuto(1),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X15_Y24_N4
\Equal12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (contMinuto(9) & (!contMinuto(10) & (!contMinuto(11) & contMinuto(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(9),
	datab => contMinuto(10),
	datac => contMinuto(11),
	datad => contMinuto(8),
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X15_Y23_N28
\Equal12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (!contMinuto(15) & (!contMinuto(12) & (!contMinuto(14) & !contMinuto(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contMinuto(15),
	datab => contMinuto(12),
	datac => contMinuto(14),
	datad => contMinuto(13),
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X15_Y24_N2
\Equal12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\Equal12~1_combout\ & (\Equal12~0_combout\ & (\Equal12~2_combout\ & \Equal12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal12~2_combout\,
	datad => \Equal12~3_combout\,
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X14_Y24_N2
\Equal12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~7_combout\ = (\Equal12~6_combout\ & (\Equal12~5_combout\ & \Equal12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal12~6_combout\,
	datac => \Equal12~5_combout\,
	datad => \Equal12~4_combout\,
	combout => \Equal12~7_combout\);

-- Location: LCCOMB_X14_Y24_N16
\lastMinuto~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastMinuto~0_combout\ = (\Equal12~7_combout\ & (!\UPminuto~input_o\)) # (!\Equal12~7_combout\ & ((\lastMinuto~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UPminuto~input_o\,
	datac => \lastMinuto~q\,
	datad => \Equal12~7_combout\,
	combout => \lastMinuto~0_combout\);

-- Location: FF_X14_Y24_N17
lastMinuto : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lastMinuto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastMinuto~q\);

-- Location: LCCOMB_X16_Y24_N0
\DMM0[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0[3]~2_combout\ = (\lastMinuto~q\ & (\Equal12~6_combout\ & (\Equal12~5_combout\ & \Equal12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastMinuto~q\,
	datab => \Equal12~6_combout\,
	datac => \Equal12~5_combout\,
	datad => \Equal12~4_combout\,
	combout => \DMM0[3]~2_combout\);

-- Location: LCCOMB_X17_Y21_N2
\SS0[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[2]~13_combout\ = (\Equal15~8_combout\) # ((!ModoAtual(1) & (!ModoAtual(0) & \DMM0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datab => ModoAtual(0),
	datac => \Equal15~8_combout\,
	datad => \DMM0[3]~2_combout\,
	combout => \SS0[2]~13_combout\);

-- Location: FF_X17_Y21_N19
\SS0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[0]~6_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(0));

-- Location: LCCOMB_X17_Y21_N20
\SS0[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[1]~8_combout\ = (SS0(1) & (!\SS0[0]~7\)) # (!SS0(1) & ((\SS0[0]~7\) # (GND)))
-- \SS0[1]~9\ = CARRY((!\SS0[0]~7\) # (!SS0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SS0(1),
	datad => VCC,
	cin => \SS0[0]~7\,
	combout => \SS0[1]~8_combout\,
	cout => \SS0[1]~9\);

-- Location: FF_X17_Y21_N21
\SS0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[1]~8_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(1));

-- Location: LCCOMB_X17_Y21_N22
\SS0[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[2]~10_combout\ = (SS0(2) & (\SS0[1]~9\ $ (GND))) # (!SS0(2) & (!\SS0[1]~9\ & VCC))
-- \SS0[2]~11\ = CARRY((SS0(2) & !\SS0[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SS0(2),
	datad => VCC,
	cin => \SS0[1]~9\,
	combout => \SS0[2]~10_combout\,
	cout => \SS0[2]~11\);

-- Location: FF_X17_Y21_N23
\SS0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[2]~10_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(2));

-- Location: LCCOMB_X17_Y21_N24
\SS0[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[3]~14_combout\ = (SS0(3) & (!\SS0[2]~11\)) # (!SS0(3) & ((\SS0[2]~11\) # (GND)))
-- \SS0[3]~15\ = CARRY((!\SS0[2]~11\) # (!SS0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SS0(3),
	datad => VCC,
	cin => \SS0[2]~11\,
	combout => \SS0[3]~14_combout\,
	cout => \SS0[3]~15\);

-- Location: FF_X17_Y21_N25
\SS0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[3]~14_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(3));

-- Location: LCCOMB_X17_Y21_N26
\SS0[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[4]~16_combout\ = (SS0(4) & (\SS0[3]~15\ $ (GND))) # (!SS0(4) & (!\SS0[3]~15\ & VCC))
-- \SS0[4]~17\ = CARRY((SS0(4) & !\SS0[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SS0(4),
	datad => VCC,
	cin => \SS0[3]~15\,
	combout => \SS0[4]~16_combout\,
	cout => \SS0[4]~17\);

-- Location: FF_X17_Y21_N27
\SS0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[4]~16_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(4));

-- Location: LCCOMB_X17_Y21_N28
\SS0[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS0[5]~18_combout\ = \SS0[4]~17\ $ (SS0(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => SS0(5),
	cin => \SS0[4]~17\,
	combout => \SS0[5]~18_combout\);

-- Location: FF_X17_Y21_N29
\SS0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SS0[5]~18_combout\,
	sclr => \SS0[2]~12_combout\,
	ena => \SS0[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS0(5));

-- Location: LCCOMB_X17_Y21_N12
\Equal16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (SS0(2)) # (((!SS0(1)) # (!SS0(3))) # (!SS0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SS0(2),
	datab => SS0(0),
	datac => SS0(3),
	datad => SS0(1),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
\Equal16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = ((\Equal16~0_combout\) # (!SS0(4))) # (!SS0(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SS0(5),
	datac => SS0(4),
	datad => \Equal16~0_combout\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X17_Y25_N22
\MM0[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM0[0]~4_combout\ = !MM0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MM0(0),
	combout => \MM0[0]~4_combout\);

-- Location: LCCOMB_X17_Y25_N20
\MM0[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM0[1]~0_combout\ = (\Equal2~0_combout\ & ((\Equal16~1_combout\) # ((!\Equal15~8_combout\)))) # (!\Equal2~0_combout\ & (!\DMM0[3]~2_combout\ & ((\Equal16~1_combout\) # (!\Equal15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal16~1_combout\,
	datac => \DMM0[3]~2_combout\,
	datad => \Equal15~8_combout\,
	combout => \MM0[1]~0_combout\);

-- Location: FF_X17_Y25_N23
\MM0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM0[0]~4_combout\,
	ena => \ALT_INV_MM0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM0(0));

-- Location: LCCOMB_X17_Y25_N18
\MM0[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM0[2]~2_combout\ = MM0(2) $ (((MM0(1) & (MM0(0) & !\MM0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM0(1),
	datab => MM0(0),
	datac => MM0(2),
	datad => \MM0[1]~0_combout\,
	combout => \MM0[2]~2_combout\);

-- Location: FF_X17_Y25_N19
\MM0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM0[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM0(2));

-- Location: LCCOMB_X17_Y25_N4
\MM0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM0~3_combout\ = (MM0(0) & ((MM0(2) & (MM0(3) $ (MM0(1)))) # (!MM0(2) & (MM0(3) & MM0(1))))) # (!MM0(0) & (((MM0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM0(0),
	datab => MM0(2),
	datac => MM0(3),
	datad => MM0(1),
	combout => \MM0~3_combout\);

-- Location: FF_X17_Y25_N5
\MM0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM0~3_combout\,
	ena => \ALT_INV_MM0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM0(3));

-- Location: LCCOMB_X17_Y25_N12
\MM0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM0~1_combout\ = (MM0(0) & (!MM0(1) & ((MM0(2)) # (!MM0(3))))) # (!MM0(0) & (((MM0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM0(0),
	datab => MM0(3),
	datac => MM0(1),
	datad => MM0(2),
	combout => \MM0~1_combout\);

-- Location: FF_X17_Y25_N13
\MM0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM0~1_combout\,
	ena => \ALT_INV_MM0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM0(1));

-- Location: LCCOMB_X17_Y25_N30
\Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (MM0(1)) # (((MM0(2)) # (!MM0(0))) # (!MM0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM0(1),
	datab => MM0(3),
	datac => MM0(0),
	datad => MM0(2),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X19_Y25_N26
\MM1[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM1[0]~4_combout\ = !MM1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MM1(0),
	combout => \MM1[0]~4_combout\);

-- Location: LCCOMB_X19_Y25_N28
\MM1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM1[1]~0_combout\ = (\Equal15~7_combout\ & (!\Equal16~1_combout\ & \Equal15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~7_combout\,
	datac => \Equal16~1_combout\,
	datad => \Equal15~4_combout\,
	combout => \MM1[1]~0_combout\);

-- Location: LCCOMB_X19_Y25_N22
\MM1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM1[1]~1_combout\ = (!\Equal17~0_combout\ & ((\MM1[1]~0_combout\) # ((!\Equal2~0_combout\ & \DMM0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \DMM0[3]~2_combout\,
	datad => \MM1[1]~0_combout\,
	combout => \MM1[1]~1_combout\);

-- Location: FF_X19_Y25_N27
\MM1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM1[0]~4_combout\,
	ena => \MM1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM1(0));

-- Location: LCCOMB_X19_Y25_N16
\MM1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM1~2_combout\ = (MM1(0) & (!MM1(1) & !MM1(2))) # (!MM1(0) & (MM1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM1(0),
	datac => MM1(1),
	datad => MM1(2),
	combout => \MM1~2_combout\);

-- Location: FF_X19_Y25_N17
\MM1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM1~2_combout\,
	ena => \MM1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM1(1));

-- Location: LCCOMB_X19_Y25_N30
\MM1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MM1~3_combout\ = (MM1(0) & (!MM1(2) & MM1(1))) # (!MM1(0) & (MM1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM1(0),
	datac => MM1(2),
	datad => MM1(1),
	combout => \MM1~3_combout\);

-- Location: FF_X19_Y25_N31
\MM1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MM1~3_combout\,
	ena => \MM1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MM1(2));

-- Location: LCCOMB_X17_Y24_N30
\HH0[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[2]~4_combout\ = (!\Equal17~0_combout\ & (MM1(2) & (MM1(0) & !MM1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~0_combout\,
	datab => MM1(2),
	datac => MM1(0),
	datad => MM1(1),
	combout => \HH0[2]~4_combout\);

-- Location: LCCOMB_X17_Y24_N4
\HH0[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[2]~5_combout\ = (!\Equal16~1_combout\ & (\Equal15~7_combout\ & (\HH0[2]~4_combout\ & \Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~1_combout\,
	datab => \Equal15~7_combout\,
	datac => \HH0[2]~4_combout\,
	datad => \Equal15~4_combout\,
	combout => \HH0[2]~5_combout\);

-- Location: LCCOMB_X17_Y24_N22
\HH0[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[2]~10_combout\ = (\HH0[2]~5_combout\) # ((!ModoAtual(0) & (!ModoAtual(1) & \DHH0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(0),
	datab => ModoAtual(1),
	datac => \HH0[2]~5_combout\,
	datad => \DHH0[3]~2_combout\,
	combout => \HH0[2]~10_combout\);

-- Location: FF_X17_Y24_N13
\HH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH0[0]~12_combout\,
	ena => \HH0[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH0(0));

-- Location: LCCOMB_X17_Y24_N28
\HH0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0~11_combout\ = (HH0(1) & ((HH0(2) & ((!HH0(0)))) # (!HH0(2) & (!\HH0[2]~6_combout\ & HH0(0))))) # (!HH0(1) & (((HH0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH0[2]~6_combout\,
	datab => HH0(1),
	datac => HH0(2),
	datad => HH0(0),
	combout => \HH0~11_combout\);

-- Location: FF_X17_Y24_N29
\HH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH0~11_combout\,
	ena => \HH0[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH0(2));

-- Location: LCCOMB_X16_Y24_N10
\HH0[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[2]~8_combout\ = (\HH0[2]~6_combout\ & (HH0(0) & !HH0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH0[2]~6_combout\,
	datac => HH0(0),
	datad => HH0(2),
	combout => \HH0[2]~8_combout\);

-- Location: LCCOMB_X17_Y24_N24
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (HH0(1) & HH0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HH0(1),
	datad => HH0(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X17_Y24_N26
\HH0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0~9_combout\ = (!\HH0[2]~8_combout\ & (HH0(3) $ (((\Add4~0_combout\ & HH0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH0[2]~8_combout\,
	datab => \Add4~0_combout\,
	datac => HH0(3),
	datad => HH0(2),
	combout => \HH0~9_combout\);

-- Location: FF_X17_Y24_N27
\HH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH0~9_combout\,
	ena => \HH0[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH0(3));

-- Location: LCCOMB_X17_Y24_N18
\HH1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH1[0]~0_combout\ = ((!\HH0[2]~5_combout\ & ((\Equal2~0_combout\) # (!\DHH0[3]~2_combout\)))) # (!\HH0[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH0[2]~8_combout\,
	datab => \Equal2~0_combout\,
	datac => \HH0[2]~5_combout\,
	datad => \DHH0[3]~2_combout\,
	combout => \HH1[0]~0_combout\);

-- Location: LCCOMB_X17_Y24_N14
\HH1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH1[1]~3_combout\ = (\HH1[0]~0_combout\ & (((HH1(1))))) # (!\HH1[0]~0_combout\ & (\HH1[1]~1_combout\ & (HH1(0) $ (HH1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH1[1]~1_combout\,
	datab => HH1(0),
	datac => HH1(1),
	datad => \HH1[0]~0_combout\,
	combout => \HH1[1]~3_combout\);

-- Location: FF_X17_Y24_N15
\HH1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH1[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH1(1));

-- Location: LCCOMB_X17_Y24_N6
\HH0[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0[2]~6_combout\ = (HH0(3) & (((!HH0(1))))) # (!HH0(3) & (!HH1(0) & (HH1(1) & HH0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HH0(3),
	datab => HH1(0),
	datac => HH1(1),
	datad => HH0(1),
	combout => \HH0[2]~6_combout\);

-- Location: LCCOMB_X17_Y24_N2
\HH0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH0~7_combout\ = (HH0(1) & (((!HH0(0))))) # (!HH0(1) & (HH0(0) & ((HH0(2)) # (!\HH0[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH0[2]~6_combout\,
	datab => HH0(2),
	datac => HH0(1),
	datad => HH0(0),
	combout => \HH0~7_combout\);

-- Location: FF_X17_Y24_N3
\HH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH0~7_combout\,
	ena => \HH0[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH0(1));

-- Location: LCCOMB_X17_Y24_N8
\HH1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH1[1]~1_combout\ = (HH0(0) & (!HH0(1) & (HH0(3) & !HH0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HH0(0),
	datab => HH0(1),
	datac => HH0(3),
	datad => HH0(2),
	combout => \HH1[1]~1_combout\);

-- Location: LCCOMB_X17_Y24_N16
\HH1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HH1[0]~2_combout\ = (HH1(0) & ((\HH1[0]~0_combout\))) # (!HH1(0) & (\HH1[1]~1_combout\ & !\HH1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH1[1]~1_combout\,
	datac => HH1(0),
	datad => \HH1[0]~0_combout\,
	combout => \HH1[0]~2_combout\);

-- Location: FF_X17_Y24_N17
\HH1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HH1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HH1(0));

-- Location: LCCOMB_X17_Y24_N20
\LedAlarmeDisparado1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~0_combout\ = (DHH1(1) & (HH1(1) & (HH1(0) $ (!DHH1(0))))) # (!DHH1(1) & (!HH1(1) & (HH1(0) $ (!DHH1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH1(1),
	datab => HH1(0),
	datac => HH1(1),
	datad => DHH1(0),
	combout => \LedAlarmeDisparado1~0_combout\);

-- Location: LCCOMB_X16_Y22_N22
\DMM1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM1[0]~5_combout\ = !DMM1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DMM1(0),
	combout => \DMM1[0]~5_combout\);

-- Location: LCCOMB_X16_Y25_N12
\DMM0[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0[0]~7_combout\ = !DMM0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DMM0(0),
	combout => \DMM0[0]~7_combout\);

-- Location: LCCOMB_X16_Y25_N2
\DMM0[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0[3]~6_combout\ = (ModoAtual(0) & (!ModoAtual(1) & \DMM0[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(0),
	datac => ModoAtual(1),
	datad => \DMM0[3]~2_combout\,
	combout => \DMM0[3]~6_combout\);

-- Location: FF_X16_Y25_N13
\DMM0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM0[0]~7_combout\,
	ena => \DMM0[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM0(0));

-- Location: LCCOMB_X16_Y25_N18
\DMM0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0~3_combout\ = (DMM0(1) & (((!DMM0(0))))) # (!DMM0(1) & (DMM0(0) & ((DMM0(2)) # (!DMM0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(3),
	datab => DMM0(2),
	datac => DMM0(1),
	datad => DMM0(0),
	combout => \DMM0~3_combout\);

-- Location: FF_X16_Y25_N19
\DMM0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM0~3_combout\,
	ena => \DMM0[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM0(1));

-- Location: LCCOMB_X16_Y25_N8
\DMM0[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0[2]~4_combout\ = DMM0(2) $ (((DMM0(0) & (DMM0(1) & \DMM0[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(0),
	datab => DMM0(1),
	datac => DMM0(2),
	datad => \DMM0[3]~6_combout\,
	combout => \DMM0[2]~4_combout\);

-- Location: FF_X16_Y25_N9
\DMM0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM0[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM0(2));

-- Location: LCCOMB_X16_Y25_N6
\DMM0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM0~5_combout\ = (DMM0(0) & ((DMM0(2) & (DMM0(3) $ (DMM0(1)))) # (!DMM0(2) & (DMM0(3) & DMM0(1))))) # (!DMM0(0) & (((DMM0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(0),
	datab => DMM0(2),
	datac => DMM0(3),
	datad => DMM0(1),
	combout => \DMM0~5_combout\);

-- Location: FF_X16_Y25_N7
\DMM0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM0~5_combout\,
	ena => \DMM0[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM0(3));

-- Location: LCCOMB_X16_Y25_N24
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (DMM0(3) & (!DMM0(1) & (!DMM0(2) & DMM0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(3),
	datab => DMM0(1),
	datac => DMM0(2),
	datad => DMM0(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X16_Y22_N30
\DMM1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM1[2]~4_combout\ = (\Equal7~0_combout\ & (!ModoAtual(1) & (ModoAtual(0) & \DMM0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => ModoAtual(1),
	datac => ModoAtual(0),
	datad => \DMM0[3]~2_combout\,
	combout => \DMM1[2]~4_combout\);

-- Location: FF_X16_Y22_N23
\DMM1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM1[0]~5_combout\,
	ena => \DMM1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM1(0));

-- Location: LCCOMB_X16_Y22_N10
\DMM1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM1~3_combout\ = (DMM1(0) & (!DMM1(2) & DMM1(1))) # (!DMM1(0) & (DMM1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM1(0),
	datac => DMM1(2),
	datad => DMM1(1),
	combout => \DMM1~3_combout\);

-- Location: FF_X16_Y22_N11
\DMM1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM1~3_combout\,
	ena => \DMM1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM1(2));

-- Location: LCCOMB_X16_Y22_N24
\DMM1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DMM1~2_combout\ = (DMM1(0) & (!DMM1(1) & !DMM1(2))) # (!DMM1(0) & (DMM1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM1(0),
	datac => DMM1(1),
	datad => DMM1(2),
	combout => \DMM1~2_combout\);

-- Location: FF_X16_Y22_N25
\DMM1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DMM1~2_combout\,
	ena => \DMM1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DMM1(1));

-- Location: LCCOMB_X16_Y22_N20
\LedAlarmeDisparado1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~1_combout\ = (DMM1(0) & (MM1(0) & (DMM1(1) $ (!MM1(1))))) # (!DMM1(0) & (!MM1(0) & (DMM1(1) $ (!MM1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM1(0),
	datab => DMM1(1),
	datac => MM1(1),
	datad => MM1(0),
	combout => \LedAlarmeDisparado1~1_combout\);

-- Location: LCCOMB_X16_Y24_N22
\LedAlarmeDisparado1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~3_combout\ = (HH0(1) & (DHH0(1) & (HH0(2) $ (!DHH0(2))))) # (!HH0(1) & (!DHH0(1) & (HH0(2) $ (!DHH0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HH0(1),
	datab => HH0(2),
	datac => DHH0(1),
	datad => DHH0(2),
	combout => \LedAlarmeDisparado1~3_combout\);

-- Location: LCCOMB_X16_Y24_N12
\LedAlarmeDisparado1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~2_combout\ = (DHH0(0) & (HH0(0) & (MM1(2) $ (!DMM1(2))))) # (!DHH0(0) & (!HH0(0) & (MM1(2) $ (!DMM1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH0(0),
	datab => MM1(2),
	datac => HH0(0),
	datad => DMM1(2),
	combout => \LedAlarmeDisparado1~2_combout\);

-- Location: LCCOMB_X16_Y24_N28
\LedAlarmeDisparado1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~4_combout\ = (\LedAlarmeDisparado1~0_combout\ & (\LedAlarmeDisparado1~1_combout\ & (\LedAlarmeDisparado1~3_combout\ & \LedAlarmeDisparado1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LedAlarmeDisparado1~0_combout\,
	datab => \LedAlarmeDisparado1~1_combout\,
	datac => \LedAlarmeDisparado1~3_combout\,
	datad => \LedAlarmeDisparado1~2_combout\,
	combout => \LedAlarmeDisparado1~4_combout\);

-- Location: LCCOMB_X17_Y25_N26
\LedAlarmeDisparado1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~5_combout\ = (DMM0(2) & (MM0(2) & (MM0(1) $ (!DMM0(1))))) # (!DMM0(2) & (!MM0(2) & (MM0(1) $ (!DMM0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(2),
	datab => MM0(2),
	datac => MM0(1),
	datad => DMM0(1),
	combout => \LedAlarmeDisparado1~5_combout\);

-- Location: LCCOMB_X17_Y25_N16
\LedAlarmeDisparado1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~6_combout\ = (DMM0(0) & (MM0(0) & (HH0(3) $ (!DHH0(3))))) # (!DMM0(0) & (!MM0(0) & (HH0(3) $ (!DHH0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(0),
	datab => HH0(3),
	datac => MM0(0),
	datad => DHH0(3),
	combout => \LedAlarmeDisparado1~6_combout\);

-- Location: LCCOMB_X17_Y25_N14
\LedAlarmeDisparado1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~7_combout\ = (\LedAlarmeDisparado1~5_combout\ & (\LedAlarmeDisparado1~6_combout\ & (MM0(3) $ (!DMM0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LedAlarmeDisparado1~5_combout\,
	datab => MM0(3),
	datac => DMM0(3),
	datad => \LedAlarmeDisparado1~6_combout\,
	combout => \LedAlarmeDisparado1~7_combout\);

-- Location: LCCOMB_X16_Y24_N24
\LedAlarmeDisparado1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarmeDisparado1~8_combout\ = (\Alarme~input_o\ & ((\LedAlarmeDisparado1~reg0_q\) # ((\LedAlarmeDisparado1~4_combout\ & \LedAlarmeDisparado1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alarme~input_o\,
	datab => \LedAlarmeDisparado1~4_combout\,
	datac => \LedAlarmeDisparado1~reg0_q\,
	datad => \LedAlarmeDisparado1~7_combout\,
	combout => \LedAlarmeDisparado1~8_combout\);

-- Location: FF_X16_Y24_N25
\LedAlarmeDisparado1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LedAlarmeDisparado1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedAlarmeDisparado1~reg0_q\);

-- Location: FF_X9_Y23_N9
\contBuzzer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~12_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(0));

-- Location: LCCOMB_X10_Y23_N2
\Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (contBuzzer(1) & (!\Add19~1\)) # (!contBuzzer(1) & ((\Add19~1\) # (GND)))
-- \Add19~3\ = CARRY((!\Add19~1\) # (!contBuzzer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(1),
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: FF_X10_Y23_N3
\contBuzzer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~2_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(1));

-- Location: LCCOMB_X10_Y23_N4
\Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (contBuzzer(2) & (\Add19~3\ $ (GND))) # (!contBuzzer(2) & (!\Add19~3\ & VCC))
-- \Add19~5\ = CARRY((contBuzzer(2) & !\Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: FF_X10_Y23_N5
\contBuzzer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~4_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(2));

-- Location: LCCOMB_X10_Y23_N6
\Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (contBuzzer(3) & (!\Add19~5\)) # (!contBuzzer(3) & ((\Add19~5\) # (GND)))
-- \Add19~7\ = CARRY((!\Add19~5\) # (!contBuzzer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: FF_X10_Y23_N7
\contBuzzer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~6_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(3));

-- Location: LCCOMB_X10_Y23_N8
\Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = (contBuzzer(4) & (\Add19~7\ $ (GND))) # (!contBuzzer(4) & (!\Add19~7\ & VCC))
-- \Add19~9\ = CARRY((contBuzzer(4) & !\Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(4),
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: FF_X10_Y23_N9
\contBuzzer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~8_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(4));

-- Location: LCCOMB_X10_Y23_N10
\Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (contBuzzer(5) & (!\Add19~9\)) # (!contBuzzer(5) & ((\Add19~9\) # (GND)))
-- \Add19~11\ = CARRY((!\Add19~9\) # (!contBuzzer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(5),
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: FF_X10_Y23_N11
\contBuzzer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~10_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(5));

-- Location: LCCOMB_X10_Y23_N12
\Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = (contBuzzer(6) & (\Add19~11\ $ (GND))) # (!contBuzzer(6) & (!\Add19~11\ & VCC))
-- \Add19~13\ = CARRY((contBuzzer(6) & !\Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(6),
	datad => VCC,
	cin => \Add19~11\,
	combout => \Add19~12_combout\,
	cout => \Add19~13\);

-- Location: FF_X10_Y23_N13
\contBuzzer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~12_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(6));

-- Location: LCCOMB_X10_Y23_N14
\Add19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~14_combout\ = (contBuzzer(7) & (!\Add19~13\)) # (!contBuzzer(7) & ((\Add19~13\) # (GND)))
-- \Add19~15\ = CARRY((!\Add19~13\) # (!contBuzzer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(7),
	datad => VCC,
	cin => \Add19~13\,
	combout => \Add19~14_combout\,
	cout => \Add19~15\);

-- Location: LCCOMB_X9_Y23_N24
\contBuzzer~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~11_combout\ = (\Add19~14_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~14_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~11_combout\);

-- Location: FF_X9_Y23_N25
\contBuzzer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~11_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(7));

-- Location: LCCOMB_X9_Y23_N22
\Equal28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~8_combout\ = (!contBuzzer(6) & (!contBuzzer(5) & (!contBuzzer(4) & contBuzzer(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(6),
	datab => contBuzzer(5),
	datac => contBuzzer(4),
	datad => contBuzzer(7),
	combout => \Equal28~8_combout\);

-- Location: LCCOMB_X10_Y23_N16
\Add19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~16_combout\ = (contBuzzer(8) & (\Add19~15\ $ (GND))) # (!contBuzzer(8) & (!\Add19~15\ & VCC))
-- \Add19~17\ = CARRY((contBuzzer(8) & !\Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(8),
	datad => VCC,
	cin => \Add19~15\,
	combout => \Add19~16_combout\,
	cout => \Add19~17\);

-- Location: FF_X10_Y23_N17
\contBuzzer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~16_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(8));

-- Location: LCCOMB_X10_Y23_N18
\Add19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~18_combout\ = (contBuzzer(9) & (!\Add19~17\)) # (!contBuzzer(9) & ((\Add19~17\) # (GND)))
-- \Add19~19\ = CARRY((!\Add19~17\) # (!contBuzzer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(9),
	datad => VCC,
	cin => \Add19~17\,
	combout => \Add19~18_combout\,
	cout => \Add19~19\);

-- Location: FF_X10_Y23_N19
\contBuzzer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~18_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(9));

-- Location: LCCOMB_X10_Y23_N20
\Add19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~20_combout\ = (contBuzzer(10) & (\Add19~19\ $ (GND))) # (!contBuzzer(10) & (!\Add19~19\ & VCC))
-- \Add19~21\ = CARRY((contBuzzer(10) & !\Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(10),
	datad => VCC,
	cin => \Add19~19\,
	combout => \Add19~20_combout\,
	cout => \Add19~21\);

-- Location: FF_X10_Y23_N21
\contBuzzer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~20_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(10));

-- Location: LCCOMB_X10_Y23_N22
\Add19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~22_combout\ = (contBuzzer(11) & (!\Add19~21\)) # (!contBuzzer(11) & ((\Add19~21\) # (GND)))
-- \Add19~23\ = CARRY((!\Add19~21\) # (!contBuzzer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(11),
	datad => VCC,
	cin => \Add19~21\,
	combout => \Add19~22_combout\,
	cout => \Add19~23\);

-- Location: FF_X10_Y23_N23
\contBuzzer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~22_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(11));

-- Location: LCCOMB_X10_Y23_N24
\Add19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~24_combout\ = (contBuzzer(12) & (\Add19~23\ $ (GND))) # (!contBuzzer(12) & (!\Add19~23\ & VCC))
-- \Add19~25\ = CARRY((contBuzzer(12) & !\Add19~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(12),
	datad => VCC,
	cin => \Add19~23\,
	combout => \Add19~24_combout\,
	cout => \Add19~25\);

-- Location: LCCOMB_X9_Y23_N16
\contBuzzer~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~10_combout\ = (!\Equal28~10_combout\ & \Add19~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~10_combout\,
	datac => \Add19~24_combout\,
	combout => \contBuzzer~10_combout\);

-- Location: FF_X9_Y23_N17
\contBuzzer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~10_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(12));

-- Location: LCCOMB_X10_Y23_N26
\Add19~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~26_combout\ = (contBuzzer(13) & (!\Add19~25\)) # (!contBuzzer(13) & ((\Add19~25\) # (GND)))
-- \Add19~27\ = CARRY((!\Add19~25\) # (!contBuzzer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(13),
	datad => VCC,
	cin => \Add19~25\,
	combout => \Add19~26_combout\,
	cout => \Add19~27\);

-- Location: LCCOMB_X9_Y23_N14
\contBuzzer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~9_combout\ = (!\Equal28~10_combout\ & \Add19~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~10_combout\,
	datad => \Add19~26_combout\,
	combout => \contBuzzer~9_combout\);

-- Location: FF_X9_Y23_N15
\contBuzzer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~9_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(13));

-- Location: LCCOMB_X10_Y23_N28
\Add19~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~28_combout\ = (contBuzzer(14) & (\Add19~27\ $ (GND))) # (!contBuzzer(14) & (!\Add19~27\ & VCC))
-- \Add19~29\ = CARRY((contBuzzer(14) & !\Add19~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(14),
	datad => VCC,
	cin => \Add19~27\,
	combout => \Add19~28_combout\,
	cout => \Add19~29\);

-- Location: LCCOMB_X9_Y23_N20
\contBuzzer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~8_combout\ = (!\Equal28~10_combout\ & \Add19~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~10_combout\,
	datad => \Add19~28_combout\,
	combout => \contBuzzer~8_combout\);

-- Location: FF_X9_Y23_N21
\contBuzzer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~8_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(14));

-- Location: LCCOMB_X10_Y23_N30
\Add19~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~30_combout\ = (contBuzzer(15) & (!\Add19~29\)) # (!contBuzzer(15) & ((\Add19~29\) # (GND)))
-- \Add19~31\ = CARRY((!\Add19~29\) # (!contBuzzer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(15),
	datad => VCC,
	cin => \Add19~29\,
	combout => \Add19~30_combout\,
	cout => \Add19~31\);

-- Location: LCCOMB_X9_Y23_N10
\contBuzzer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~7_combout\ = (\Add19~30_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~30_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~7_combout\);

-- Location: FF_X9_Y23_N11
\contBuzzer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~7_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(15));

-- Location: LCCOMB_X9_Y23_N26
\Equal28~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~5_combout\ = (contBuzzer(15) & (contBuzzer(14) & (contBuzzer(13) & contBuzzer(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(15),
	datab => contBuzzer(14),
	datac => contBuzzer(13),
	datad => contBuzzer(12),
	combout => \Equal28~5_combout\);

-- Location: LCCOMB_X9_Y23_N4
\Equal28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~6_combout\ = (!contBuzzer(10) & !contBuzzer(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contBuzzer(10),
	datad => contBuzzer(11),
	combout => \Equal28~6_combout\);

-- Location: LCCOMB_X9_Y23_N18
\Equal28~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~7_combout\ = (\Equal28~5_combout\ & (!contBuzzer(9) & (\Equal28~6_combout\ & !contBuzzer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~5_combout\,
	datab => contBuzzer(9),
	datac => \Equal28~6_combout\,
	datad => contBuzzer(8),
	combout => \Equal28~7_combout\);

-- Location: LCCOMB_X9_Y23_N30
\Equal28~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~9_combout\ = (!contBuzzer(2) & (!contBuzzer(1) & (!contBuzzer(0) & !contBuzzer(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(2),
	datab => contBuzzer(1),
	datac => contBuzzer(0),
	datad => contBuzzer(3),
	combout => \Equal28~9_combout\);

-- Location: LCCOMB_X10_Y22_N0
\Add19~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~32_combout\ = (contBuzzer(16) & (\Add19~31\ $ (GND))) # (!contBuzzer(16) & (!\Add19~31\ & VCC))
-- \Add19~33\ = CARRY((contBuzzer(16) & !\Add19~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(16),
	datad => VCC,
	cin => \Add19~31\,
	combout => \Add19~32_combout\,
	cout => \Add19~33\);

-- Location: FF_X10_Y22_N1
\contBuzzer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~32_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(16));

-- Location: LCCOMB_X10_Y22_N2
\Add19~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~34_combout\ = (contBuzzer(17) & (!\Add19~33\)) # (!contBuzzer(17) & ((\Add19~33\) # (GND)))
-- \Add19~35\ = CARRY((!\Add19~33\) # (!contBuzzer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(17),
	datad => VCC,
	cin => \Add19~33\,
	combout => \Add19~34_combout\,
	cout => \Add19~35\);

-- Location: LCCOMB_X9_Y22_N2
\contBuzzer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~6_combout\ = (!\Equal28~10_combout\ & \Add19~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal28~10_combout\,
	datad => \Add19~34_combout\,
	combout => \contBuzzer~6_combout\);

-- Location: FF_X9_Y22_N3
\contBuzzer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~6_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(17));

-- Location: LCCOMB_X10_Y22_N4
\Add19~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~36_combout\ = (contBuzzer(18) & (\Add19~35\ $ (GND))) # (!contBuzzer(18) & (!\Add19~35\ & VCC))
-- \Add19~37\ = CARRY((contBuzzer(18) & !\Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(18),
	datad => VCC,
	cin => \Add19~35\,
	combout => \Add19~36_combout\,
	cout => \Add19~37\);

-- Location: FF_X10_Y22_N5
\contBuzzer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~36_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(18));

-- Location: LCCOMB_X10_Y22_N6
\Add19~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~38_combout\ = (contBuzzer(19) & (!\Add19~37\)) # (!contBuzzer(19) & ((\Add19~37\) # (GND)))
-- \Add19~39\ = CARRY((!\Add19~37\) # (!contBuzzer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(19),
	datad => VCC,
	cin => \Add19~37\,
	combout => \Add19~38_combout\,
	cout => \Add19~39\);

-- Location: LCCOMB_X9_Y22_N16
\contBuzzer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~5_combout\ = (!\Equal28~10_combout\ & \Add19~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal28~10_combout\,
	datad => \Add19~38_combout\,
	combout => \contBuzzer~5_combout\);

-- Location: FF_X9_Y22_N17
\contBuzzer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~5_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(19));

-- Location: LCCOMB_X10_Y22_N8
\Add19~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~40_combout\ = (contBuzzer(20) & (\Add19~39\ $ (GND))) # (!contBuzzer(20) & (!\Add19~39\ & VCC))
-- \Add19~41\ = CARRY((contBuzzer(20) & !\Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(20),
	datad => VCC,
	cin => \Add19~39\,
	combout => \Add19~40_combout\,
	cout => \Add19~41\);

-- Location: LCCOMB_X9_Y22_N0
\contBuzzer~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~4_combout\ = (\Add19~40_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~40_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~4_combout\);

-- Location: FF_X9_Y22_N1
\contBuzzer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~4_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(20));

-- Location: LCCOMB_X10_Y22_N10
\Add19~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~42_combout\ = (contBuzzer(21) & (!\Add19~41\)) # (!contBuzzer(21) & ((\Add19~41\) # (GND)))
-- \Add19~43\ = CARRY((!\Add19~41\) # (!contBuzzer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(21),
	datad => VCC,
	cin => \Add19~41\,
	combout => \Add19~42_combout\,
	cout => \Add19~43\);

-- Location: LCCOMB_X9_Y22_N6
\contBuzzer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~3_combout\ = (\Add19~42_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~42_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~3_combout\);

-- Location: FF_X9_Y22_N7
\contBuzzer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~3_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(21));

-- Location: LCCOMB_X10_Y22_N12
\Add19~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~44_combout\ = (contBuzzer(22) & (\Add19~43\ $ (GND))) # (!contBuzzer(22) & (!\Add19~43\ & VCC))
-- \Add19~45\ = CARRY((contBuzzer(22) & !\Add19~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(22),
	datad => VCC,
	cin => \Add19~43\,
	combout => \Add19~44_combout\,
	cout => \Add19~45\);

-- Location: LCCOMB_X9_Y22_N24
\contBuzzer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~2_combout\ = (\Add19~44_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~44_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~2_combout\);

-- Location: FF_X9_Y22_N25
\contBuzzer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~2_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(22));

-- Location: LCCOMB_X10_Y22_N14
\Add19~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~46_combout\ = (contBuzzer(23) & (!\Add19~45\)) # (!contBuzzer(23) & ((\Add19~45\) # (GND)))
-- \Add19~47\ = CARRY((!\Add19~45\) # (!contBuzzer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(23),
	datad => VCC,
	cin => \Add19~45\,
	combout => \Add19~46_combout\,
	cout => \Add19~47\);

-- Location: LCCOMB_X9_Y22_N26
\contBuzzer~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~1_combout\ = (\Add19~46_combout\ & !\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~46_combout\,
	datad => \Equal28~10_combout\,
	combout => \contBuzzer~1_combout\);

-- Location: FF_X9_Y22_N27
\contBuzzer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~1_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(23));

-- Location: LCCOMB_X9_Y22_N22
\Equal28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~2_combout\ = (contBuzzer(21) & (contBuzzer(22) & (contBuzzer(23) & contBuzzer(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(21),
	datab => contBuzzer(22),
	datac => contBuzzer(23),
	datad => contBuzzer(20),
	combout => \Equal28~2_combout\);

-- Location: LCCOMB_X10_Y22_N16
\Add19~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~48_combout\ = (contBuzzer(24) & (\Add19~47\ $ (GND))) # (!contBuzzer(24) & (!\Add19~47\ & VCC))
-- \Add19~49\ = CARRY((contBuzzer(24) & !\Add19~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(24),
	datad => VCC,
	cin => \Add19~47\,
	combout => \Add19~48_combout\,
	cout => \Add19~49\);

-- Location: FF_X10_Y22_N17
\contBuzzer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~48_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(24));

-- Location: LCCOMB_X10_Y22_N18
\Add19~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~50_combout\ = (contBuzzer(25) & (!\Add19~49\)) # (!contBuzzer(25) & ((\Add19~49\) # (GND)))
-- \Add19~51\ = CARRY((!\Add19~49\) # (!contBuzzer(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(25),
	datad => VCC,
	cin => \Add19~49\,
	combout => \Add19~50_combout\,
	cout => \Add19~51\);

-- Location: LCCOMB_X9_Y22_N18
\contBuzzer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contBuzzer~0_combout\ = (!\Equal28~10_combout\ & \Add19~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal28~10_combout\,
	datad => \Add19~50_combout\,
	combout => \contBuzzer~0_combout\);

-- Location: FF_X9_Y22_N19
\contBuzzer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contBuzzer~0_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(25));

-- Location: LCCOMB_X10_Y22_N20
\Add19~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~52_combout\ = (contBuzzer(26) & (\Add19~51\ $ (GND))) # (!contBuzzer(26) & (!\Add19~51\ & VCC))
-- \Add19~53\ = CARRY((contBuzzer(26) & !\Add19~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(26),
	datad => VCC,
	cin => \Add19~51\,
	combout => \Add19~52_combout\,
	cout => \Add19~53\);

-- Location: FF_X10_Y22_N21
\contBuzzer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~52_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(26));

-- Location: LCCOMB_X10_Y22_N22
\Add19~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~54_combout\ = (contBuzzer(27) & (!\Add19~53\)) # (!contBuzzer(27) & ((\Add19~53\) # (GND)))
-- \Add19~55\ = CARRY((!\Add19~53\) # (!contBuzzer(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(27),
	datad => VCC,
	cin => \Add19~53\,
	combout => \Add19~54_combout\,
	cout => \Add19~55\);

-- Location: FF_X10_Y22_N23
\contBuzzer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~54_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(27));

-- Location: LCCOMB_X10_Y22_N24
\Add19~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~56_combout\ = (contBuzzer(28) & (\Add19~55\ $ (GND))) # (!contBuzzer(28) & (!\Add19~55\ & VCC))
-- \Add19~57\ = CARRY((contBuzzer(28) & !\Add19~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(28),
	datad => VCC,
	cin => \Add19~55\,
	combout => \Add19~56_combout\,
	cout => \Add19~57\);

-- Location: FF_X10_Y22_N25
\contBuzzer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~56_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(28));

-- Location: LCCOMB_X10_Y22_N26
\Add19~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~58_combout\ = (contBuzzer(29) & (!\Add19~57\)) # (!contBuzzer(29) & ((\Add19~57\) # (GND)))
-- \Add19~59\ = CARRY((!\Add19~57\) # (!contBuzzer(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(29),
	datad => VCC,
	cin => \Add19~57\,
	combout => \Add19~58_combout\,
	cout => \Add19~59\);

-- Location: FF_X10_Y22_N27
\contBuzzer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~58_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(29));

-- Location: LCCOMB_X10_Y22_N28
\Add19~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~60_combout\ = (contBuzzer(30) & (\Add19~59\ $ (GND))) # (!contBuzzer(30) & (!\Add19~59\ & VCC))
-- \Add19~61\ = CARRY((contBuzzer(30) & !\Add19~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contBuzzer(30),
	datad => VCC,
	cin => \Add19~59\,
	combout => \Add19~60_combout\,
	cout => \Add19~61\);

-- Location: FF_X10_Y22_N29
\contBuzzer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~60_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(30));

-- Location: LCCOMB_X10_Y22_N30
\Add19~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~62_combout\ = contBuzzer(31) $ (\Add19~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(31),
	cin => \Add19~61\,
	combout => \Add19~62_combout\);

-- Location: FF_X10_Y22_N31
\contBuzzer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add19~62_combout\,
	ena => \LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contBuzzer(31));

-- Location: LCCOMB_X9_Y22_N20
\Equal28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (!contBuzzer(28) & (!contBuzzer(30) & (!contBuzzer(31) & !contBuzzer(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(28),
	datab => contBuzzer(30),
	datac => contBuzzer(31),
	datad => contBuzzer(29),
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X9_Y22_N8
\Equal28~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~3_combout\ = (!contBuzzer(18) & (contBuzzer(17) & (!contBuzzer(16) & contBuzzer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(18),
	datab => contBuzzer(17),
	datac => contBuzzer(16),
	datad => contBuzzer(19),
	combout => \Equal28~3_combout\);

-- Location: LCCOMB_X9_Y22_N12
\Equal28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~1_combout\ = (!contBuzzer(27) & (contBuzzer(25) & (!contBuzzer(26) & !contBuzzer(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contBuzzer(27),
	datab => contBuzzer(25),
	datac => contBuzzer(26),
	datad => contBuzzer(24),
	combout => \Equal28~1_combout\);

-- Location: LCCOMB_X9_Y22_N10
\Equal28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~4_combout\ = (\Equal28~2_combout\ & (\Equal28~0_combout\ & (\Equal28~3_combout\ & \Equal28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~2_combout\,
	datab => \Equal28~0_combout\,
	datac => \Equal28~3_combout\,
	datad => \Equal28~1_combout\,
	combout => \Equal28~4_combout\);

-- Location: LCCOMB_X9_Y23_N12
\Equal28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~10_combout\ = (\Equal28~8_combout\ & (\Equal28~7_combout\ & (\Equal28~9_combout\ & \Equal28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~8_combout\,
	datab => \Equal28~7_combout\,
	datac => \Equal28~9_combout\,
	datad => \Equal28~4_combout\,
	combout => \Equal28~10_combout\);

-- Location: LCCOMB_X9_Y23_N28
\Buzzer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Buzzer~2_combout\ = \Buzzer~reg0_q\ $ (\Equal28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Buzzer~reg0_q\,
	datad => \Equal28~10_combout\,
	combout => \Buzzer~2_combout\);

-- Location: FF_X9_Y23_N29
\Buzzer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Buzzer~2_combout\,
	sclr => \ALT_INV_LedAlarmeDisparado1~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buzzer~reg0_q\);

-- Location: LCCOMB_X20_Y21_N4
\PontoLCD~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PontoLCD~2_combout\ = (\Equal15~7_combout\ & ((\PontoLCD~reg0_q\ & ((!\Equal15~4_combout\))) # (!\PontoLCD~reg0_q\ & (!\Equal2~0_combout\ & \Equal15~4_combout\)))) # (!\Equal15~7_combout\ & (((\PontoLCD~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal15~7_combout\,
	datac => \PontoLCD~reg0_q\,
	datad => \Equal15~4_combout\,
	combout => \PontoLCD~2_combout\);

-- Location: FF_X20_Y21_N5
\PontoLCD~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PontoLCD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PontoLCD~reg0_q\);

-- Location: LCCOMB_X17_Y25_N28
\LCD0[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD0[2]~2_combout\ = (\Equal2~0_combout\ & (DMM0(2))) # (!\Equal2~0_combout\ & ((MM0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(2),
	datab => \Equal2~0_combout\,
	datad => MM0(2),
	combout => \LCD0[2]~2_combout\);

-- Location: LCCOMB_X16_Y23_N12
\Equal21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = ((CMM0(2)) # ((CMM0(1)) # (!CMM0(0)))) # (!CMM0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(3),
	datab => CMM0(2),
	datac => CMM0(1),
	datad => CMM0(0),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = contCron(0) $ (VCC)
-- \Add14~1\ = CARRY(contCron(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(0),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X20_Y24_N24
\Add14~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~24_combout\ = (contCron(12) & (\Add14~23\ $ (GND))) # (!contCron(12) & (!\Add14~23\ & VCC))
-- \Add14~25\ = CARRY((contCron(12) & !\Add14~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(12),
	datad => VCC,
	cin => \Add14~23\,
	combout => \Add14~24_combout\,
	cout => \Add14~25\);

-- Location: LCCOMB_X20_Y24_N26
\Add14~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~26_combout\ = (contCron(13) & (!\Add14~25\)) # (!contCron(13) & ((\Add14~25\) # (GND)))
-- \Add14~27\ = CARRY((!\Add14~25\) # (!contCron(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(13),
	datad => VCC,
	cin => \Add14~25\,
	combout => \Add14~26_combout\,
	cout => \Add14~27\);

-- Location: LCCOMB_X19_Y24_N30
\contCron~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~4_combout\ = (\Add14~26_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~9_combout\,
	datac => \Equal19~4_combout\,
	datad => \Add14~26_combout\,
	combout => \contCron~4_combout\);

-- Location: FF_X19_Y24_N31
\contCron[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~4_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(13));

-- Location: LCCOMB_X20_Y24_N28
\Add14~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~28_combout\ = (contCron(14) & (\Add14~27\ $ (GND))) # (!contCron(14) & (!\Add14~27\ & VCC))
-- \Add14~29\ = CARRY((contCron(14) & !\Add14~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(14),
	datad => VCC,
	cin => \Add14~27\,
	combout => \Add14~28_combout\,
	cout => \Add14~29\);

-- Location: LCCOMB_X19_Y24_N8
\contCron[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron[14]~feeder_combout\ = \Add14~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add14~28_combout\,
	combout => \contCron[14]~feeder_combout\);

-- Location: FF_X19_Y24_N9
\contCron[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron[14]~feeder_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(14));

-- Location: LCCOMB_X20_Y24_N30
\Add14~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~30_combout\ = (contCron(15) & (!\Add14~29\)) # (!contCron(15) & ((\Add14~29\) # (GND)))
-- \Add14~31\ = CARRY((!\Add14~29\) # (!contCron(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(15),
	datad => VCC,
	cin => \Add14~29\,
	combout => \Add14~30_combout\,
	cout => \Add14~31\);

-- Location: LCCOMB_X19_Y24_N24
\contCron~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~3_combout\ = (\Add14~30_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~9_combout\,
	datac => \Add14~30_combout\,
	datad => \Equal19~4_combout\,
	combout => \contCron~3_combout\);

-- Location: FF_X19_Y24_N25
\contCron[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~3_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(15));

-- Location: LCCOMB_X20_Y23_N0
\Add14~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~32_combout\ = (contCron(16) & (\Add14~31\ $ (GND))) # (!contCron(16) & (!\Add14~31\ & VCC))
-- \Add14~33\ = CARRY((contCron(16) & !\Add14~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(16),
	datad => VCC,
	cin => \Add14~31\,
	combout => \Add14~32_combout\,
	cout => \Add14~33\);

-- Location: LCCOMB_X21_Y23_N28
\contCron~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~2_combout\ = (\Add14~32_combout\ & ((\Equal19~4_combout\) # (\Equal19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~4_combout\,
	datac => \Add14~32_combout\,
	datad => \Equal19~9_combout\,
	combout => \contCron~2_combout\);

-- Location: FF_X21_Y23_N29
\contCron[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~2_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(16));

-- Location: LCCOMB_X20_Y23_N2
\Add14~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~34_combout\ = (contCron(17) & (!\Add14~33\)) # (!contCron(17) & ((\Add14~33\) # (GND)))
-- \Add14~35\ = CARRY((!\Add14~33\) # (!contCron(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(17),
	datad => VCC,
	cin => \Add14~33\,
	combout => \Add14~34_combout\,
	cout => \Add14~35\);

-- Location: LCCOMB_X21_Y23_N30
\contCron~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~1_combout\ = (\Add14~34_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~9_combout\,
	datac => \Equal19~4_combout\,
	datad => \Add14~34_combout\,
	combout => \contCron~1_combout\);

-- Location: FF_X21_Y23_N31
\contCron[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~1_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(17));

-- Location: LCCOMB_X20_Y23_N4
\Add14~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~36_combout\ = (contCron(18) & (\Add14~35\ $ (GND))) # (!contCron(18) & (!\Add14~35\ & VCC))
-- \Add14~37\ = CARRY((contCron(18) & !\Add14~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(18),
	datad => VCC,
	cin => \Add14~35\,
	combout => \Add14~36_combout\,
	cout => \Add14~37\);

-- Location: LCCOMB_X21_Y23_N20
\contCron~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~0_combout\ = (\Add14~36_combout\ & ((\Equal19~4_combout\) # (\Equal19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~4_combout\,
	datac => \Add14~36_combout\,
	datad => \Equal19~9_combout\,
	combout => \contCron~0_combout\);

-- Location: FF_X21_Y23_N21
\contCron[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~0_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(18));

-- Location: LCCOMB_X20_Y23_N6
\Add14~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~38_combout\ = (contCron(19) & (!\Add14~37\)) # (!contCron(19) & ((\Add14~37\) # (GND)))
-- \Add14~39\ = CARRY((!\Add14~37\) # (!contCron(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(19),
	datad => VCC,
	cin => \Add14~37\,
	combout => \Add14~38_combout\,
	cout => \Add14~39\);

-- Location: FF_X20_Y23_N7
\contCron[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~38_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(19));

-- Location: LCCOMB_X20_Y23_N8
\Add14~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~40_combout\ = (contCron(20) & (\Add14~39\ $ (GND))) # (!contCron(20) & (!\Add14~39\ & VCC))
-- \Add14~41\ = CARRY((contCron(20) & !\Add14~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(20),
	datad => VCC,
	cin => \Add14~39\,
	combout => \Add14~40_combout\,
	cout => \Add14~41\);

-- Location: FF_X20_Y23_N9
\contCron[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~40_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(20));

-- Location: LCCOMB_X20_Y23_N10
\Add14~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~42_combout\ = (contCron(21) & (!\Add14~41\)) # (!contCron(21) & ((\Add14~41\) # (GND)))
-- \Add14~43\ = CARRY((!\Add14~41\) # (!contCron(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(21),
	datad => VCC,
	cin => \Add14~41\,
	combout => \Add14~42_combout\,
	cout => \Add14~43\);

-- Location: FF_X20_Y23_N11
\contCron[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~42_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(21));

-- Location: LCCOMB_X20_Y23_N12
\Add14~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~44_combout\ = (contCron(22) & (\Add14~43\ $ (GND))) # (!contCron(22) & (!\Add14~43\ & VCC))
-- \Add14~45\ = CARRY((contCron(22) & !\Add14~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(22),
	datad => VCC,
	cin => \Add14~43\,
	combout => \Add14~44_combout\,
	cout => \Add14~45\);

-- Location: FF_X20_Y23_N13
\contCron[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~44_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(22));

-- Location: LCCOMB_X20_Y23_N14
\Add14~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~46_combout\ = (contCron(23) & (!\Add14~45\)) # (!contCron(23) & ((\Add14~45\) # (GND)))
-- \Add14~47\ = CARRY((!\Add14~45\) # (!contCron(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(23),
	datad => VCC,
	cin => \Add14~45\,
	combout => \Add14~46_combout\,
	cout => \Add14~47\);

-- Location: FF_X20_Y23_N15
\contCron[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~46_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(23));

-- Location: LCCOMB_X20_Y23_N16
\Add14~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~48_combout\ = (contCron(24) & (\Add14~47\ $ (GND))) # (!contCron(24) & (!\Add14~47\ & VCC))
-- \Add14~49\ = CARRY((contCron(24) & !\Add14~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(24),
	datad => VCC,
	cin => \Add14~47\,
	combout => \Add14~48_combout\,
	cout => \Add14~49\);

-- Location: FF_X20_Y23_N17
\contCron[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~48_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(24));

-- Location: LCCOMB_X20_Y23_N18
\Add14~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~50_combout\ = (contCron(25) & (!\Add14~49\)) # (!contCron(25) & ((\Add14~49\) # (GND)))
-- \Add14~51\ = CARRY((!\Add14~49\) # (!contCron(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(25),
	datad => VCC,
	cin => \Add14~49\,
	combout => \Add14~50_combout\,
	cout => \Add14~51\);

-- Location: FF_X20_Y23_N19
\contCron[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~50_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(25));

-- Location: LCCOMB_X20_Y23_N20
\Add14~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~52_combout\ = (contCron(26) & (\Add14~51\ $ (GND))) # (!contCron(26) & (!\Add14~51\ & VCC))
-- \Add14~53\ = CARRY((contCron(26) & !\Add14~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(26),
	datad => VCC,
	cin => \Add14~51\,
	combout => \Add14~52_combout\,
	cout => \Add14~53\);

-- Location: FF_X20_Y23_N21
\contCron[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~52_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(26));

-- Location: LCCOMB_X20_Y23_N22
\Add14~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~54_combout\ = (contCron(27) & (!\Add14~53\)) # (!contCron(27) & ((\Add14~53\) # (GND)))
-- \Add14~55\ = CARRY((!\Add14~53\) # (!contCron(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(27),
	datad => VCC,
	cin => \Add14~53\,
	combout => \Add14~54_combout\,
	cout => \Add14~55\);

-- Location: FF_X20_Y23_N23
\contCron[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~54_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(27));

-- Location: LCCOMB_X19_Y23_N22
\Equal19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (contCron(26)) # ((contCron(27)) # ((contCron(24)) # (contCron(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(26),
	datab => contCron(27),
	datac => contCron(24),
	datad => contCron(25),
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X19_Y23_N24
\Equal19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~2_combout\ = (contCron(22)) # ((contCron(20)) # ((contCron(21)) # (contCron(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(22),
	datab => contCron(20),
	datac => contCron(21),
	datad => contCron(23),
	combout => \Equal19~2_combout\);

-- Location: LCCOMB_X20_Y23_N24
\Add14~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~56_combout\ = (contCron(28) & (\Add14~55\ $ (GND))) # (!contCron(28) & (!\Add14~55\ & VCC))
-- \Add14~57\ = CARRY((contCron(28) & !\Add14~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(28),
	datad => VCC,
	cin => \Add14~55\,
	combout => \Add14~56_combout\,
	cout => \Add14~57\);

-- Location: FF_X20_Y23_N25
\contCron[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~56_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(28));

-- Location: LCCOMB_X20_Y23_N26
\Add14~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~58_combout\ = (contCron(29) & (!\Add14~57\)) # (!contCron(29) & ((\Add14~57\) # (GND)))
-- \Add14~59\ = CARRY((!\Add14~57\) # (!contCron(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(29),
	datad => VCC,
	cin => \Add14~57\,
	combout => \Add14~58_combout\,
	cout => \Add14~59\);

-- Location: FF_X20_Y23_N27
\contCron[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~58_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(29));

-- Location: LCCOMB_X20_Y23_N28
\Add14~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~60_combout\ = (contCron(30) & (\Add14~59\ $ (GND))) # (!contCron(30) & (!\Add14~59\ & VCC))
-- \Add14~61\ = CARRY((contCron(30) & !\Add14~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(30),
	datad => VCC,
	cin => \Add14~59\,
	combout => \Add14~60_combout\,
	cout => \Add14~61\);

-- Location: FF_X20_Y23_N29
\contCron[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~60_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(30));

-- Location: LCCOMB_X20_Y23_N30
\Add14~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~62_combout\ = contCron(31) $ (\Add14~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(31),
	cin => \Add14~61\,
	combout => \Add14~62_combout\);

-- Location: FF_X20_Y23_N31
\contCron[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~62_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(31));

-- Location: LCCOMB_X19_Y23_N4
\Equal19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (contCron(28)) # ((contCron(30)) # ((contCron(29)) # (contCron(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(28),
	datab => contCron(30),
	datac => contCron(29),
	datad => contCron(31),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X21_Y23_N22
\Equal19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~3_combout\ = (((contCron(19)) # (!contCron(16))) # (!contCron(18))) # (!contCron(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(17),
	datab => contCron(18),
	datac => contCron(19),
	datad => contCron(16),
	combout => \Equal19~3_combout\);

-- Location: LCCOMB_X19_Y23_N18
\Equal19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~4_combout\ = (\Equal19~1_combout\) # ((\Equal19~2_combout\) # ((\Equal19~0_combout\) # (\Equal19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datab => \Equal19~2_combout\,
	datac => \Equal19~0_combout\,
	datad => \Equal19~3_combout\,
	combout => \Equal19~4_combout\);

-- Location: LCCOMB_X19_Y24_N26
\contCron~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~7_combout\ = (\Add14~0_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~9_combout\,
	datab => \Add14~0_combout\,
	datad => \Equal19~4_combout\,
	combout => \contCron~7_combout\);

-- Location: FF_X19_Y24_N27
\contCron[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~7_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(0));

-- Location: LCCOMB_X20_Y24_N2
\Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (contCron(1) & (!\Add14~1\)) # (!contCron(1) & ((\Add14~1\) # (GND)))
-- \Add14~3\ = CARRY((!\Add14~1\) # (!contCron(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(1),
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: FF_X20_Y24_N3
\contCron[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~2_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(1));

-- Location: LCCOMB_X20_Y24_N4
\Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (contCron(2) & (\Add14~3\ $ (GND))) # (!contCron(2) & (!\Add14~3\ & VCC))
-- \Add14~5\ = CARRY((contCron(2) & !\Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(2),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: FF_X20_Y24_N5
\contCron[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~4_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(2));

-- Location: LCCOMB_X20_Y24_N6
\Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (contCron(3) & (!\Add14~5\)) # (!contCron(3) & ((\Add14~5\) # (GND)))
-- \Add14~7\ = CARRY((!\Add14~5\) # (!contCron(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: FF_X20_Y24_N7
\contCron[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(3));

-- Location: LCCOMB_X20_Y24_N8
\Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (contCron(4) & (\Add14~7\ $ (GND))) # (!contCron(4) & (!\Add14~7\ & VCC))
-- \Add14~9\ = CARRY((contCron(4) & !\Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(4),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: FF_X20_Y24_N9
\contCron[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~8_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(4));

-- Location: LCCOMB_X20_Y24_N10
\Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (contCron(5) & (!\Add14~9\)) # (!contCron(5) & ((\Add14~9\) # (GND)))
-- \Add14~11\ = CARRY((!\Add14~9\) # (!contCron(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(5),
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X19_Y23_N0
\contCron~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~6_combout\ = (\Add14~10_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal19~9_combout\,
	datac => \Add14~10_combout\,
	datad => \Equal19~4_combout\,
	combout => \contCron~6_combout\);

-- Location: FF_X19_Y23_N1
\contCron[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(5));

-- Location: LCCOMB_X20_Y24_N12
\Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = (contCron(6) & (\Add14~11\ $ (GND))) # (!contCron(6) & (!\Add14~11\ & VCC))
-- \Add14~13\ = CARRY((contCron(6) & !\Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(6),
	datad => VCC,
	cin => \Add14~11\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: FF_X20_Y24_N13
\contCron[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~12_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(6));

-- Location: LCCOMB_X20_Y24_N14
\Add14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = (contCron(7) & (!\Add14~13\)) # (!contCron(7) & ((\Add14~13\) # (GND)))
-- \Add14~15\ = CARRY((!\Add14~13\) # (!contCron(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(7),
	datad => VCC,
	cin => \Add14~13\,
	combout => \Add14~14_combout\,
	cout => \Add14~15\);

-- Location: FF_X20_Y24_N15
\contCron[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~14_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(7));

-- Location: LCCOMB_X20_Y24_N16
\Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~16_combout\ = (contCron(8) & (\Add14~15\ $ (GND))) # (!contCron(8) & (!\Add14~15\ & VCC))
-- \Add14~17\ = CARRY((contCron(8) & !\Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(8),
	datad => VCC,
	cin => \Add14~15\,
	combout => \Add14~16_combout\,
	cout => \Add14~17\);

-- Location: LCCOMB_X19_Y23_N12
\contCron~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron~5_combout\ = (\Add14~16_combout\ & ((\Equal19~9_combout\) # (\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~16_combout\,
	datac => \Equal19~9_combout\,
	datad => \Equal19~4_combout\,
	combout => \contCron~5_combout\);

-- Location: FF_X19_Y23_N13
\contCron[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron~5_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(8));

-- Location: LCCOMB_X20_Y24_N18
\Add14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~18_combout\ = (contCron(9) & (!\Add14~17\)) # (!contCron(9) & ((\Add14~17\) # (GND)))
-- \Add14~19\ = CARRY((!\Add14~17\) # (!contCron(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(9),
	datad => VCC,
	cin => \Add14~17\,
	combout => \Add14~18_combout\,
	cout => \Add14~19\);

-- Location: FF_X20_Y24_N19
\contCron[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~18_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(9));

-- Location: LCCOMB_X20_Y24_N20
\Add14~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~20_combout\ = (contCron(10) & (\Add14~19\ $ (GND))) # (!contCron(10) & (!\Add14~19\ & VCC))
-- \Add14~21\ = CARRY((contCron(10) & !\Add14~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contCron(10),
	datad => VCC,
	cin => \Add14~19\,
	combout => \Add14~20_combout\,
	cout => \Add14~21\);

-- Location: FF_X20_Y24_N21
\contCron[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~20_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(10));

-- Location: LCCOMB_X20_Y24_N22
\Add14~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~22_combout\ = (contCron(11) & (!\Add14~21\)) # (!contCron(11) & ((\Add14~21\) # (GND)))
-- \Add14~23\ = CARRY((!\Add14~21\) # (!contCron(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contCron(11),
	datad => VCC,
	cin => \Add14~21\,
	combout => \Add14~22_combout\,
	cout => \Add14~23\);

-- Location: FF_X20_Y24_N23
\contCron[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add14~22_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(11));

-- Location: LCCOMB_X19_Y24_N22
\contCron[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contCron[12]~feeder_combout\ = \Add14~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add14~24_combout\,
	combout => \contCron[12]~feeder_combout\);

-- Location: FF_X19_Y24_N23
\contCron[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contCron[12]~feeder_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contCron(12));

-- Location: LCCOMB_X19_Y24_N12
\Equal19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~5_combout\ = (contCron(12)) # ((contCron(14)) # ((!contCron(15)) # (!contCron(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(12),
	datab => contCron(14),
	datac => contCron(13),
	datad => contCron(15),
	combout => \Equal19~5_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Equal19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~6_combout\ = (contCron(10)) # (((contCron(11)) # (contCron(9))) # (!contCron(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(10),
	datab => contCron(8),
	datac => contCron(11),
	datad => contCron(9),
	combout => \Equal19~6_combout\);

-- Location: LCCOMB_X19_Y23_N14
\Equal19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~7_combout\ = ((contCron(6)) # ((contCron(4)) # (contCron(7)))) # (!contCron(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(5),
	datab => contCron(6),
	datac => contCron(4),
	datad => contCron(7),
	combout => \Equal19~7_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Equal19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~8_combout\ = (contCron(2)) # ((contCron(0)) # ((contCron(3)) # (contCron(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contCron(2),
	datab => contCron(0),
	datac => contCron(3),
	datad => contCron(1),
	combout => \Equal19~8_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Equal19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~9_combout\ = (\Equal19~5_combout\) # ((\Equal19~6_combout\) # ((\Equal19~7_combout\) # (\Equal19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~5_combout\,
	datab => \Equal19~6_combout\,
	datac => \Equal19~7_combout\,
	datad => \Equal19~8_combout\,
	combout => \Equal19~9_combout\);

-- Location: LCCOMB_X16_Y23_N18
\CMM0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM0~3_combout\ = (\Equal21~0_combout\ & (\start~q\ & (!\Equal19~9_combout\ & !\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \start~q\,
	datac => \Equal19~9_combout\,
	datad => \Equal19~4_combout\,
	combout => \CMM0~3_combout\);

-- Location: LCCOMB_X16_Y23_N14
\CMM0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM0~4_combout\ = (\CMM0~3_combout\ & (CMM0(0) $ (CMM0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(0),
	datac => CMM0(1),
	datad => \CMM0~3_combout\,
	combout => \CMM0~4_combout\);

-- Location: LCCOMB_X16_Y23_N16
\Equal19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~10_combout\ = (\Equal19~9_combout\) # (\Equal19~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal19~9_combout\,
	datad => \Equal19~4_combout\,
	combout => \Equal19~10_combout\);

-- Location: LCCOMB_X16_Y23_N10
\CMM0[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM0[0]~2_combout\ = (ModoAtual(1) & ((\DMM0[3]~2_combout\) # ((\start~q\ & !\Equal19~10_combout\)))) # (!ModoAtual(1) & (\start~q\ & ((!\Equal19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datab => \start~q\,
	datac => \DMM0[3]~2_combout\,
	datad => \Equal19~10_combout\,
	combout => \CMM0[0]~2_combout\);

-- Location: FF_X16_Y23_N15
\CMM0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM0~4_combout\,
	ena => \CMM0[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM0(1));

-- Location: LCCOMB_X16_Y23_N8
\Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = (CMM0(1) & CMM0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CMM0(1),
	datac => CMM0(0),
	combout => \Add15~0_combout\);

-- Location: LCCOMB_X16_Y23_N26
\CMM0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM0~5_combout\ = (\CMM0~3_combout\ & (CMM0(3) $ (((CMM0(2) & \Add15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(2),
	datab => \Add15~0_combout\,
	datac => CMM0(3),
	datad => \CMM0~3_combout\,
	combout => \CMM0~5_combout\);

-- Location: FF_X16_Y23_N27
\CMM0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM0~5_combout\,
	ena => \CMM0[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM0(3));

-- Location: LCCOMB_X16_Y23_N30
\start~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start~3_combout\ = (CMM0(3) & (!CMM0(1) & !CMM0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(3),
	datac => CMM0(1),
	datad => CMM0(2),
	combout => \start~3_combout\);

-- Location: LCCOMB_X19_Y23_N30
\CMM1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1[2]~0_combout\ = (!\Equal21~0_combout\ & (\start~q\ & (!\Equal19~9_combout\ & !\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \start~q\,
	datac => \Equal19~9_combout\,
	datad => \Equal19~4_combout\,
	combout => \CMM1[2]~0_combout\);

-- Location: LCCOMB_X16_Y24_N16
\CMM1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1~1_combout\ = (\Equal22~0_combout\ & (!CMM1(0) & \CMM1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal22~0_combout\,
	datac => CMM1(0),
	datad => \CMM1[2]~0_combout\,
	combout => \CMM1~1_combout\);

-- Location: LCCOMB_X16_Y24_N20
\CMM1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1[2]~2_combout\ = (\CMM1[2]~0_combout\) # ((\DMM0[3]~2_combout\ & ModoAtual(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DMM0[3]~2_combout\,
	datac => ModoAtual(1),
	datad => \CMM1[2]~0_combout\,
	combout => \CMM1[2]~2_combout\);

-- Location: FF_X16_Y24_N17
\CMM1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM1~1_combout\,
	ena => \CMM1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM1(0));

-- Location: LCCOMB_X16_Y24_N4
\CMM1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1~3_combout\ = (\Equal22~0_combout\ & (\CMM1[2]~0_combout\ & (CMM1(0) $ (CMM1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM1(0),
	datab => \Equal22~0_combout\,
	datac => CMM1(1),
	datad => \CMM1[2]~0_combout\,
	combout => \CMM1~3_combout\);

-- Location: FF_X16_Y24_N5
\CMM1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM1~3_combout\,
	ena => \CMM1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM1(1));

-- Location: LCCOMB_X16_Y23_N20
\Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = (CMM1(0) & CMM1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CMM1(0),
	datad => CMM1(1),
	combout => \Add16~0_combout\);

-- Location: LCCOMB_X16_Y24_N26
\CMM1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1~4_combout\ = (\Equal22~0_combout\ & (\CMM1[2]~0_combout\ & (\Add16~0_combout\ $ (CMM1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \Equal22~0_combout\,
	datac => CMM1(2),
	datad => \CMM1[2]~0_combout\,
	combout => \CMM1~4_combout\);

-- Location: FF_X16_Y24_N27
\CMM1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM1~4_combout\,
	ena => \CMM1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM1(2));

-- Location: LCCOMB_X16_Y24_N30
\Add16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~1_combout\ = CMM1(3) $ (((CMM1(2) & (CMM1(0) & CMM1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM1(2),
	datab => CMM1(0),
	datac => CMM1(1),
	datad => CMM1(3),
	combout => \Add16~1_combout\);

-- Location: LCCOMB_X16_Y24_N2
\CMM1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM1~5_combout\ = (\Add16~1_combout\ & (\Equal22~0_combout\ & \CMM1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~1_combout\,
	datac => \Equal22~0_combout\,
	datad => \CMM1[2]~0_combout\,
	combout => \CMM1~5_combout\);

-- Location: FF_X16_Y24_N3
\CMM1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM1~5_combout\,
	ena => \CMM1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM1(3));

-- Location: LCCOMB_X16_Y24_N8
\Equal22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (CMM1(2)) # (((CMM1(1)) # (!CMM1(3))) # (!CMM1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM1(2),
	datab => CMM1(0),
	datac => CMM1(1),
	datad => CMM1(3),
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X17_Y23_N26
\CHH0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0~2_combout\ = (\Equal23~0_combout\ & (!\Equal22~0_combout\ & (!CHH0(0) & \CMM1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Equal22~0_combout\,
	datac => CHH0(0),
	datad => \CMM1[2]~0_combout\,
	combout => \CHH0~2_combout\);

-- Location: LCCOMB_X17_Y23_N28
\CHH0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0[3]~3_combout\ = (ModoAtual(1) & ((\DMM0[3]~2_combout\) # ((!\Equal22~0_combout\ & \CMM1[2]~0_combout\)))) # (!ModoAtual(1) & (!\Equal22~0_combout\ & ((\CMM1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datab => \Equal22~0_combout\,
	datac => \DMM0[3]~2_combout\,
	datad => \CMM1[2]~0_combout\,
	combout => \CHH0[3]~3_combout\);

-- Location: FF_X17_Y23_N27
\CHH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH0~2_combout\,
	ena => \CHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH0(0));

-- Location: LCCOMB_X17_Y23_N18
\CHH0[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0[3]~4_combout\ = (\Equal23~0_combout\ & (!\Equal22~0_combout\ & \CMM1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Equal22~0_combout\,
	datad => \CMM1[2]~0_combout\,
	combout => \CHH0[3]~4_combout\);

-- Location: LCCOMB_X17_Y23_N8
\CHH0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0~5_combout\ = (\CHH0[3]~4_combout\ & (CHH0(0) $ (CHH0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH0(0),
	datac => CHH0(1),
	datad => \CHH0[3]~4_combout\,
	combout => \CHH0~5_combout\);

-- Location: FF_X17_Y23_N9
\CHH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH0~5_combout\,
	ena => \CHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH0(1));

-- Location: LCCOMB_X17_Y23_N22
\CHH0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0~7_combout\ = (\CHH0[3]~4_combout\ & (CHH0(2) $ (((CHH0(0) & CHH0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH0(0),
	datab => CHH0(1),
	datac => CHH0(2),
	datad => \CHH0[3]~4_combout\,
	combout => \CHH0~7_combout\);

-- Location: FF_X17_Y23_N23
\CHH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH0~7_combout\,
	ena => \CHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH0(2));

-- Location: LCCOMB_X17_Y23_N16
\Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (CHH0(1) & CHH0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CHH0(1),
	datac => CHH0(0),
	combout => \Add17~0_combout\);

-- Location: LCCOMB_X17_Y23_N20
\CHH0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH0~6_combout\ = (\CHH0[3]~4_combout\ & (CHH0(3) $ (((CHH0(2) & \Add17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH0(2),
	datab => \Add17~0_combout\,
	datac => CHH0(3),
	datad => \CHH0[3]~4_combout\,
	combout => \CHH0~6_combout\);

-- Location: FF_X17_Y23_N21
\CHH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH0~6_combout\,
	ena => \CHH0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH0(3));

-- Location: LCCOMB_X17_Y23_N6
\Equal23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (CHH0(2)) # ((CHH0(1)) # ((!CHH0(3)) # (!CHH0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH0(2),
	datab => CHH0(1),
	datac => CHH0(0),
	datad => CHH0(3),
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X19_Y23_N28
\CHH1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1~2_combout\ = (\CMM1[2]~0_combout\ & (!\Equal22~0_combout\ & (!CHH1(0) & !\Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CMM1[2]~0_combout\,
	datab => \Equal22~0_combout\,
	datac => CHH1(0),
	datad => \Equal23~0_combout\,
	combout => \CHH1~2_combout\);

-- Location: LCCOMB_X19_Y23_N20
\CHH1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1[0]~3_combout\ = (\Equal23~0_combout\) # ((\Equal22~0_combout\) # (!\CMM1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datac => \CMM1[2]~0_combout\,
	datad => \Equal22~0_combout\,
	combout => \CHH1[0]~3_combout\);

-- Location: LCCOMB_X19_Y23_N6
\CHH1[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1[0]~4_combout\ = ((ModoAtual(1) & \DMM0[3]~2_combout\)) # (!\CHH1[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ModoAtual(1),
	datac => \DMM0[3]~2_combout\,
	datad => \CHH1[0]~3_combout\,
	combout => \CHH1[0]~4_combout\);

-- Location: FF_X19_Y23_N29
\CHH1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH1~2_combout\,
	ena => \CHH1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH1(0));

-- Location: LCCOMB_X19_Y23_N26
\CHH1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1~5_combout\ = (!\CHH1[0]~3_combout\ & (CHH1(0) $ (CHH1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CHH1(0),
	datac => CHH1(1),
	datad => \CHH1[0]~3_combout\,
	combout => \CHH1~5_combout\);

-- Location: FF_X19_Y23_N27
\CHH1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH1~5_combout\,
	ena => \CHH1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH1(1));

-- Location: LCCOMB_X17_Y23_N14
\Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = (CHH1(0) & CHH1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CHH1(0),
	datad => CHH1(1),
	combout => \Add18~0_combout\);

-- Location: LCCOMB_X19_Y23_N16
\CHH1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1~7_combout\ = (!\CHH1[0]~3_combout\ & (CHH1(2) $ (((CHH1(1) & CHH1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH1(1),
	datab => CHH1(0),
	datac => CHH1(2),
	datad => \CHH1[0]~3_combout\,
	combout => \CHH1~7_combout\);

-- Location: FF_X19_Y23_N17
\CHH1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH1~7_combout\,
	ena => \CHH1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH1(2));

-- Location: LCCOMB_X19_Y23_N10
\CHH1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CHH1~6_combout\ = (!\CHH1[0]~3_combout\ & (CHH1(3) $ (((\Add18~0_combout\ & CHH1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~0_combout\,
	datab => CHH1(2),
	datac => CHH1(3),
	datad => \CHH1[0]~3_combout\,
	combout => \CHH1~6_combout\);

-- Location: FF_X19_Y23_N11
\CHH1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CHH1~6_combout\,
	ena => \CHH1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHH1(3));

-- Location: LCCOMB_X17_Y23_N4
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (CHH1(0) & (CHH1(3) & (!CHH1(2) & !CHH1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH1(0),
	datab => CHH1(3),
	datac => CHH1(2),
	datad => CHH1(1),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X16_Y23_N4
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~2_combout\ & (!\Equal22~0_combout\ & !\Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datac => \Equal22~0_combout\,
	datad => \Equal23~0_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X16_Y23_N2
\start~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start~1_combout\ = (!\Equal23~0_combout\ & (!\Equal21~0_combout\ & (!\Equal22~0_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Equal21~0_combout\,
	datac => \Equal22~0_combout\,
	datad => \process_0~2_combout\,
	combout => \start~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\start~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start~2_combout\ = (ModoAtual(1) & ((\start~q\ & (!\DHH0[3]~2_combout\)) # (!\start~q\ & (\DHH0[3]~2_combout\ & !\start~1_combout\)))) # (!ModoAtual(1) & (\start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ModoAtual(1),
	datab => \start~q\,
	datac => \DHH0[3]~2_combout\,
	datad => \start~1_combout\,
	combout => \start~2_combout\);

-- Location: LCCOMB_X16_Y23_N24
\start~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start~4_combout\ = (\start~2_combout\ & (((!\start~0_combout\) # (!\process_0~3_combout\)) # (!\start~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~3_combout\,
	datab => \process_0~3_combout\,
	datac => \start~0_combout\,
	datad => \start~2_combout\,
	combout => \start~4_combout\);

-- Location: FF_X16_Y23_N25
start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \start~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: LCCOMB_X16_Y23_N22
\start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = (!CMM0(0) & (\start~q\ & (!\Equal19~9_combout\ & !\Equal19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(0),
	datab => \start~q\,
	datac => \Equal19~9_combout\,
	datad => \Equal19~4_combout\,
	combout => \start~0_combout\);

-- Location: FF_X16_Y23_N9
\CMM0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \start~0_combout\,
	sload => VCC,
	ena => \CMM0[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM0(0));

-- Location: LCCOMB_X16_Y23_N28
\CMM0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CMM0~6_combout\ = (\CMM0~3_combout\ & (CMM0(2) $ (((CMM0(0) & CMM0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CMM0(0),
	datab => CMM0(1),
	datac => CMM0(2),
	datad => \CMM0~3_combout\,
	combout => \CMM0~6_combout\);

-- Location: FF_X16_Y23_N29
\CMM0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CMM0~6_combout\,
	ena => \CMM0[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CMM0(2));

-- Location: FF_X17_Y25_N29
\LCD0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD0[2]~2_combout\,
	asdata => CMM0(2),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD0(2));

-- Location: LCCOMB_X17_Y25_N10
\LCD0[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD0[1]~1_combout\ = (\Equal2~0_combout\ & ((DMM0(1)))) # (!\Equal2~0_combout\ & (MM0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MM0(1),
	datab => \Equal2~0_combout\,
	datad => DMM0(1),
	combout => \LCD0[1]~1_combout\);

-- Location: FF_X17_Y25_N11
\LCD0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD0[1]~1_combout\,
	asdata => CMM0(1),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD0(1));

-- Location: LCCOMB_X17_Y25_N2
\LCD0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD0[3]~3_combout\ = (\Equal2~0_combout\ & ((DMM0(3)))) # (!\Equal2~0_combout\ & (MM0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => MM0(3),
	datad => DMM0(3),
	combout => \LCD0[3]~3_combout\);

-- Location: FF_X17_Y25_N3
\LCD0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD0[3]~3_combout\,
	asdata => CMM0(3),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD0(3));

-- Location: LCCOMB_X17_Y25_N8
\LCD0[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD0[0]~0_combout\ = (\Equal2~0_combout\ & (DMM0(0))) # (!\Equal2~0_combout\ & ((MM0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM0(0),
	datab => \Equal2~0_combout\,
	datad => MM0(0),
	combout => \LCD0[0]~0_combout\);

-- Location: FF_X17_Y25_N9
\LCD0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD0[0]~0_combout\,
	asdata => CMM0(0),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD0(0));

-- Location: LCCOMB_X21_Y25_N12
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!LCD0(1) & (!LCD0(3) & (LCD0(2) $ (LCD0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (LCD0(2) & (!LCD0(3) & (LCD0(1) $ (LCD0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X21_Y25_N24
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!LCD0(2) & (LCD0(1) & (!LCD0(3) & !LCD0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y25_N22
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!LCD0(3) & ((LCD0(2) & (LCD0(1) $ (!LCD0(0)))) # (!LCD0(2) & (!LCD0(1) & LCD0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (LCD0(1) & (((!LCD0(3) & LCD0(0))))) # (!LCD0(1) & ((LCD0(2) & (!LCD0(3))) # (!LCD0(2) & ((LCD0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X21_Y25_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!LCD0(2) & (!LCD0(3) & ((LCD0(1)) # (LCD0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y25_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (LCD0(3)) # ((LCD0(2) & ((!LCD0(0)) # (!LCD0(1)))) # (!LCD0(2) & (LCD0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD0(2),
	datab => LCD0(1),
	datac => LCD0(3),
	datad => LCD0(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X16_Y24_N6
\LCD1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD1[2]~2_combout\ = (\Equal2~0_combout\ & (DMM1(2))) # (!\Equal2~0_combout\ & ((MM1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM1(2),
	datab => MM1(2),
	datad => \Equal2~0_combout\,
	combout => \LCD1[2]~2_combout\);

-- Location: FF_X16_Y24_N7
\LCD1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD1[2]~2_combout\,
	asdata => CMM1(2),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD1(2));

-- Location: LCCOMB_X16_Y24_N14
\LCD1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD1~3_combout\ = (ModoAtual(1) & CMM1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ModoAtual(1),
	datad => CMM1(3),
	combout => \LCD1~3_combout\);

-- Location: FF_X16_Y24_N15
\LCD1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD1(3));

-- Location: LCCOMB_X16_Y22_N12
\LCD1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD1[0]~0_combout\ = (\Equal2~0_combout\ & (DMM1(0))) # (!\Equal2~0_combout\ & ((MM1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DMM1(0),
	datab => \Equal2~0_combout\,
	datad => MM1(0),
	combout => \LCD1[0]~0_combout\);

-- Location: FF_X16_Y22_N13
\LCD1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD1[0]~0_combout\,
	asdata => CMM1(0),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD1(0));

-- Location: LCCOMB_X17_Y24_N0
\LCD1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD1[1]~1_combout\ = (\Equal2~0_combout\ & ((DMM1(1)))) # (!\Equal2~0_combout\ & (MM1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => MM1(1),
	datad => DMM1(1),
	combout => \LCD1[1]~1_combout\);

-- Location: FF_X17_Y24_N1
\LCD1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD1[1]~1_combout\,
	asdata => CMM1(1),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD1(1));

-- Location: LCCOMB_X19_Y25_N24
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!LCD1(3) & (!LCD1(1) & (LCD1(2) $ (LCD1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X19_Y25_N2
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (LCD1(2) & (!LCD1(3) & (LCD1(0) $ (LCD1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X19_Y25_N8
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!LCD1(2) & (!LCD1(3) & (!LCD1(0) & LCD1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X19_Y25_N10
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!LCD1(3) & ((LCD1(2) & (LCD1(0) $ (!LCD1(1)))) # (!LCD1(2) & (LCD1(0) & !LCD1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X19_Y25_N12
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (LCD1(1) & (((!LCD1(3) & LCD1(0))))) # (!LCD1(1) & ((LCD1(2) & (!LCD1(3))) # (!LCD1(2) & ((LCD1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X19_Y25_N6
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!LCD1(2) & (!LCD1(3) & ((LCD1(0)) # (LCD1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X19_Y25_N0
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (LCD1(3)) # ((LCD1(2) & ((!LCD1(1)) # (!LCD1(0)))) # (!LCD1(2) & ((LCD1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD1(2),
	datab => LCD1(3),
	datac => LCD1(0),
	datad => LCD1(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X17_Y23_N12
\LCD2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD2[0]~0_combout\ = (\Equal2~0_combout\ & ((DHH0(0)))) # (!\Equal2~0_combout\ & (HH0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HH0(0),
	datab => \Equal2~0_combout\,
	datad => DHH0(0),
	combout => \LCD2[0]~0_combout\);

-- Location: FF_X17_Y23_N13
\LCD2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD2[0]~0_combout\,
	asdata => CHH0(0),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD2(0));

-- Location: LCCOMB_X17_Y25_N24
\LCD2[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD2[3]~3_combout\ = (\Equal2~0_combout\ & (DHH0(3))) # (!\Equal2~0_combout\ & ((HH0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => DHH0(3),
	datad => HH0(3),
	combout => \LCD2[3]~3_combout\);

-- Location: FF_X17_Y25_N25
\LCD2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD2[3]~3_combout\,
	asdata => CHH0(3),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD2(3));

-- Location: LCCOMB_X16_Y24_N18
\LCD2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD2[2]~2_combout\ = (\Equal2~0_combout\ & (DHH0(2))) # (!\Equal2~0_combout\ & ((HH0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => DHH0(2),
	datad => HH0(2),
	combout => \LCD2[2]~2_combout\);

-- Location: FF_X16_Y24_N19
\LCD2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD2[2]~2_combout\,
	asdata => CHH0(2),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD2(2));

-- Location: LCCOMB_X19_Y24_N20
\LCD2[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD2[1]~1_combout\ = (\Equal2~0_combout\ & (DHH0(1))) # (!\Equal2~0_combout\ & ((HH0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH0(1),
	datab => HH0(1),
	datad => \Equal2~0_combout\,
	combout => \LCD2[1]~1_combout\);

-- Location: FF_X19_Y24_N21
\LCD2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD2[1]~1_combout\,
	asdata => CHH0(1),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD2(1));

-- Location: LCCOMB_X30_Y27_N20
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!LCD2(3) & (!LCD2(1) & (LCD2(0) $ (LCD2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y27_N18
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!LCD2(3) & (LCD2(2) & (LCD2(0) $ (LCD2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y27_N4
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!LCD2(0) & (!LCD2(3) & (!LCD2(2) & LCD2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y27_N22
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!LCD2(3) & ((LCD2(0) & (LCD2(2) $ (!LCD2(1)))) # (!LCD2(0) & (LCD2(2) & !LCD2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X30_Y27_N12
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (LCD2(1) & (LCD2(0) & (!LCD2(3)))) # (!LCD2(1) & ((LCD2(2) & ((!LCD2(3)))) # (!LCD2(2) & (LCD2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X30_Y27_N10
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!LCD2(3) & (!LCD2(2) & ((LCD2(0)) # (LCD2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X30_Y27_N16
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (LCD2(3)) # ((LCD2(2) & ((!LCD2(1)) # (!LCD2(0)))) # (!LCD2(2) & ((LCD2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD2(0),
	datab => LCD2(3),
	datac => LCD2(2),
	datad => LCD2(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X17_Y23_N30
\LCD3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD3~2_combout\ = (CHH1(2) & ModoAtual(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHH1(2),
	datac => ModoAtual(1),
	combout => \LCD3~2_combout\);

-- Location: FF_X17_Y23_N31
\LCD3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD3(2));

-- Location: LCCOMB_X17_Y24_N10
\LCD3[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD3[1]~1_combout\ = (\Equal2~0_combout\ & (DHH1(1))) # (!\Equal2~0_combout\ & ((HH1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH1(1),
	datab => HH1(1),
	datad => \Equal2~0_combout\,
	combout => \LCD3[1]~1_combout\);

-- Location: FF_X17_Y24_N11
\LCD3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD3[1]~1_combout\,
	asdata => CHH1(1),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD3(1));

-- Location: LCCOMB_X17_Y23_N24
\LCD3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD3~3_combout\ = (ModoAtual(1) & CHH1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ModoAtual(1),
	datad => CHH1(3),
	combout => \LCD3~3_combout\);

-- Location: FF_X17_Y23_N25
\LCD3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD3(3));

-- Location: LCCOMB_X19_Y24_N14
\LCD3[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCD3[0]~0_combout\ = (\Equal2~0_combout\ & (DHH1(0))) # (!\Equal2~0_combout\ & ((HH1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DHH1(0),
	datab => HH1(0),
	datad => \Equal2~0_combout\,
	combout => \LCD3[0]~0_combout\);

-- Location: FF_X19_Y24_N15
\LCD3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD3[0]~0_combout\,
	asdata => CHH1(0),
	sload => ModoAtual(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCD3(0));

-- Location: LCCOMB_X20_Y25_N20
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!LCD3(1) & (!LCD3(3) & (LCD3(2) $ (LCD3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (LCD3(2) & (!LCD3(3) & (LCD3(1) $ (LCD3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X20_Y25_N24
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!LCD3(2) & (LCD3(1) & (!LCD3(3) & !LCD3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!LCD3(3) & ((LCD3(2) & (LCD3(1) $ (!LCD3(0)))) # (!LCD3(2) & (!LCD3(1) & LCD3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (LCD3(1) & (((!LCD3(3) & LCD3(0))))) # (!LCD3(1) & ((LCD3(2) & (!LCD3(3))) # (!LCD3(2) & ((LCD3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!LCD3(2) & (!LCD3(3) & ((LCD3(1)) # (LCD3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (LCD3(3)) # ((LCD3(2) & ((!LCD3(0)) # (!LCD3(1)))) # (!LCD3(2) & (LCD3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LCD3(2),
	datab => LCD3(1),
	datac => LCD3(3),
	datad => LCD3(0),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X10_Y25_N16
\LedRelogio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedRelogio~0_combout\ = !\Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	combout => \LedRelogio~0_combout\);

-- Location: FF_X10_Y25_N17
\LedRelogio~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LedRelogio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedRelogio~reg0_q\);

-- Location: LCCOMB_X9_Y25_N4
\LedDespertador~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedDespertador~reg0feeder_combout\ = \Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \LedDespertador~reg0feeder_combout\);

-- Location: FF_X9_Y25_N5
\LedDespertador~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LedDespertador~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedDespertador~reg0_q\);

-- Location: FF_X10_Y25_N15
\LedCronometro~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => ModoAtual(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedCronometro~reg0_q\);

-- Location: LCCOMB_X1_Y24_N8
\LedAlarme~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LedAlarme~reg0feeder_combout\ = \Alarme~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Alarme~input_o\,
	combout => \LedAlarme~reg0feeder_combout\);

-- Location: FF_X1_Y24_N9
\LedAlarme~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LedAlarme~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedAlarme~reg0_q\);

-- Location: IOIBUF_X19_Y0_N1
\Buzzer~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Buzzer,
	o => \Buzzer~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\PontoLCD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PontoLCD,
	o => \PontoLCD~input_o\);

ww_HEX0_D(0) <= \HEX0_D[0]~output_o\;

ww_HEX0_D(1) <= \HEX0_D[1]~output_o\;

ww_HEX0_D(2) <= \HEX0_D[2]~output_o\;

ww_HEX0_D(3) <= \HEX0_D[3]~output_o\;

ww_HEX0_D(4) <= \HEX0_D[4]~output_o\;

ww_HEX0_D(5) <= \HEX0_D[5]~output_o\;

ww_HEX0_D(6) <= \HEX0_D[6]~output_o\;

ww_HEX1_D(0) <= \HEX1_D[0]~output_o\;

ww_HEX1_D(1) <= \HEX1_D[1]~output_o\;

ww_HEX1_D(2) <= \HEX1_D[2]~output_o\;

ww_HEX1_D(3) <= \HEX1_D[3]~output_o\;

ww_HEX1_D(4) <= \HEX1_D[4]~output_o\;

ww_HEX1_D(5) <= \HEX1_D[5]~output_o\;

ww_HEX1_D(6) <= \HEX1_D[6]~output_o\;

ww_HEX2_D(0) <= \HEX2_D[0]~output_o\;

ww_HEX2_D(1) <= \HEX2_D[1]~output_o\;

ww_HEX2_D(2) <= \HEX2_D[2]~output_o\;

ww_HEX2_D(3) <= \HEX2_D[3]~output_o\;

ww_HEX2_D(4) <= \HEX2_D[4]~output_o\;

ww_HEX2_D(5) <= \HEX2_D[5]~output_o\;

ww_HEX2_D(6) <= \HEX2_D[6]~output_o\;

ww_HEX3_D(0) <= \HEX3_D[0]~output_o\;

ww_HEX3_D(1) <= \HEX3_D[1]~output_o\;

ww_HEX3_D(2) <= \HEX3_D[2]~output_o\;

ww_HEX3_D(3) <= \HEX3_D[3]~output_o\;

ww_HEX3_D(4) <= \HEX3_D[4]~output_o\;

ww_HEX3_D(5) <= \HEX3_D[5]~output_o\;

ww_HEX3_D(6) <= \HEX3_D[6]~output_o\;

ww_LedRelogio <= \LedRelogio~output_o\;

ww_LedDespertador <= \LedDespertador~output_o\;

ww_LedCronometro <= \LedCronometro~output_o\;

ww_LedAlarme <= \LedAlarme~output_o\;

ww_LedAlarmeDisparado1 <= \LedAlarmeDisparado1~output_o\;

ww_LedAlarmeDisparado2 <= \LedAlarmeDisparado2~output_o\;

ww_LedAlarmeDisparado3 <= \LedAlarmeDisparado3~output_o\;

ww_LedAlarmeDisparado4 <= \LedAlarmeDisparado4~output_o\;

Buzzer <= \Buzzer~output_o\;

PontoLCD <= \PontoLCD~output_o\;
END structure;


