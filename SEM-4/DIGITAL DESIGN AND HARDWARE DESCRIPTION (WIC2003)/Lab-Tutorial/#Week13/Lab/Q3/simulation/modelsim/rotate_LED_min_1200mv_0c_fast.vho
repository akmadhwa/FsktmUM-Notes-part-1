-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "05/22/2017 16:22:49"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rotate_LED_ALL IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 1);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END rotate_LED_ALL;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rotate_LED_ALL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter0|clock_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter0|comp:count[11]~q\ : std_logic;
SIGNAL \counter0|Add0~0_combout\ : std_logic;
SIGNAL \counter0|comp:count[0]~q\ : std_logic;
SIGNAL \counter0|Add0~1\ : std_logic;
SIGNAL \counter0|Add0~2_combout\ : std_logic;
SIGNAL \counter0|comp:count[1]~q\ : std_logic;
SIGNAL \counter0|Add0~3\ : std_logic;
SIGNAL \counter0|Add0~4_combout\ : std_logic;
SIGNAL \counter0|comp:count[2]~q\ : std_logic;
SIGNAL \counter0|Add0~5\ : std_logic;
SIGNAL \counter0|Add0~6_combout\ : std_logic;
SIGNAL \counter0|comp:count[3]~q\ : std_logic;
SIGNAL \counter0|Add0~7\ : std_logic;
SIGNAL \counter0|Add0~8_combout\ : std_logic;
SIGNAL \counter0|comp:count[4]~q\ : std_logic;
SIGNAL \counter0|Add0~9\ : std_logic;
SIGNAL \counter0|Add0~10_combout\ : std_logic;
SIGNAL \counter0|comp:count[5]~q\ : std_logic;
SIGNAL \counter0|Add0~11\ : std_logic;
SIGNAL \counter0|Add0~12_combout\ : std_logic;
SIGNAL \counter0|comp:count[6]~q\ : std_logic;
SIGNAL \counter0|Add0~13\ : std_logic;
SIGNAL \counter0|Add0~14_combout\ : std_logic;
SIGNAL \counter0|count~11_combout\ : std_logic;
SIGNAL \counter0|comp:count[7]~q\ : std_logic;
SIGNAL \counter0|Add0~15\ : std_logic;
SIGNAL \counter0|Add0~16_combout\ : std_logic;
SIGNAL \counter0|comp:count[8]~q\ : std_logic;
SIGNAL \counter0|Add0~17\ : std_logic;
SIGNAL \counter0|Add0~18_combout\ : std_logic;
SIGNAL \counter0|comp:count[9]~q\ : std_logic;
SIGNAL \counter0|Add0~19\ : std_logic;
SIGNAL \counter0|Add0~20_combout\ : std_logic;
SIGNAL \counter0|comp:count[10]~q\ : std_logic;
SIGNAL \counter0|Add0~21\ : std_logic;
SIGNAL \counter0|Add0~22_combout\ : std_logic;
SIGNAL \counter0|Equal0~4_combout\ : std_logic;
SIGNAL \counter0|Equal0~2_combout\ : std_logic;
SIGNAL \counter0|Equal0~3_combout\ : std_logic;
SIGNAL \counter0|Equal0~7_combout\ : std_logic;
SIGNAL \counter0|count~6_combout\ : std_logic;
SIGNAL \counter0|comp:count[17]~q\ : std_logic;
SIGNAL \counter0|Add0~23\ : std_logic;
SIGNAL \counter0|Add0~24_combout\ : std_logic;
SIGNAL \counter0|count~10_combout\ : std_logic;
SIGNAL \counter0|comp:count[12]~q\ : std_logic;
SIGNAL \counter0|Add0~25\ : std_logic;
SIGNAL \counter0|Add0~26_combout\ : std_logic;
SIGNAL \counter0|count~9_combout\ : std_logic;
SIGNAL \counter0|comp:count[13]~q\ : std_logic;
SIGNAL \counter0|Add0~27\ : std_logic;
SIGNAL \counter0|Add0~28_combout\ : std_logic;
SIGNAL \counter0|count~8_combout\ : std_logic;
SIGNAL \counter0|comp:count[14]~q\ : std_logic;
SIGNAL \counter0|Add0~29\ : std_logic;
SIGNAL \counter0|Add0~30_combout\ : std_logic;
SIGNAL \counter0|count~7_combout\ : std_logic;
SIGNAL \counter0|comp:count[15]~q\ : std_logic;
SIGNAL \counter0|Add0~31\ : std_logic;
SIGNAL \counter0|Add0~32_combout\ : std_logic;
SIGNAL \counter0|comp:count[16]~q\ : std_logic;
SIGNAL \counter0|Add0~33\ : std_logic;
SIGNAL \counter0|Add0~34_combout\ : std_logic;
SIGNAL \counter0|Equal0~1_combout\ : std_logic;
SIGNAL \counter0|comp:count[30]~q\ : std_logic;
SIGNAL \counter0|Add0~35\ : std_logic;
SIGNAL \counter0|Add0~36_combout\ : std_logic;
SIGNAL \counter0|comp:count[18]~q\ : std_logic;
SIGNAL \counter0|Add0~37\ : std_logic;
SIGNAL \counter0|Add0~39\ : std_logic;
SIGNAL \counter0|Add0~40_combout\ : std_logic;
SIGNAL \counter0|count~4_combout\ : std_logic;
SIGNAL \counter0|comp:count[20]~q\ : std_logic;
SIGNAL \counter0|Add0~41\ : std_logic;
SIGNAL \counter0|Add0~42_combout\ : std_logic;
SIGNAL \counter0|count~3_combout\ : std_logic;
SIGNAL \counter0|comp:count[21]~q\ : std_logic;
SIGNAL \counter0|Add0~43\ : std_logic;
SIGNAL \counter0|Add0~44_combout\ : std_logic;
SIGNAL \counter0|count~2_combout\ : std_logic;
SIGNAL \counter0|comp:count[22]~q\ : std_logic;
SIGNAL \counter0|Add0~45\ : std_logic;
SIGNAL \counter0|Add0~46_combout\ : std_logic;
SIGNAL \counter0|count~1_combout\ : std_logic;
SIGNAL \counter0|comp:count[23]~q\ : std_logic;
SIGNAL \counter0|Add0~47\ : std_logic;
SIGNAL \counter0|Add0~48_combout\ : std_logic;
SIGNAL \counter0|comp:count[24]~q\ : std_logic;
SIGNAL \counter0|Add0~49\ : std_logic;
SIGNAL \counter0|Add0~51\ : std_logic;
SIGNAL \counter0|Add0~52_combout\ : std_logic;
SIGNAL \counter0|comp:count[26]~q\ : std_logic;
SIGNAL \counter0|Add0~53\ : std_logic;
SIGNAL \counter0|Add0~54_combout\ : std_logic;
SIGNAL \counter0|comp:count[27]~q\ : std_logic;
SIGNAL \counter0|Add0~55\ : std_logic;
SIGNAL \counter0|Add0~56_combout\ : std_logic;
SIGNAL \counter0|comp:count[28]~q\ : std_logic;
SIGNAL \counter0|Add0~57\ : std_logic;
SIGNAL \counter0|Add0~58_combout\ : std_logic;
SIGNAL \counter0|comp:count[29]~q\ : std_logic;
SIGNAL \counter0|Add0~59\ : std_logic;
SIGNAL \counter0|Add0~60_combout\ : std_logic;
SIGNAL \counter0|Equal0~5_combout\ : std_logic;
SIGNAL \counter0|Equal0~6_combout\ : std_logic;
SIGNAL \counter0|count~0_combout\ : std_logic;
SIGNAL \counter0|comp:count[25]~q\ : std_logic;
SIGNAL \counter0|Add0~50_combout\ : std_logic;
SIGNAL \counter0|Equal0~8_combout\ : std_logic;
SIGNAL \counter0|Equal0~9_combout\ : std_logic;
SIGNAL \counter0|count~5_combout\ : std_logic;
SIGNAL \counter0|comp:count[19]~q\ : std_logic;
SIGNAL \counter0|Add0~38_combout\ : std_logic;
SIGNAL \counter0|Equal0~0_combout\ : std_logic;
SIGNAL \counter0|clock_out~3_combout\ : std_logic;
SIGNAL \counter0|clock_out~4_combout\ : std_logic;
SIGNAL \counter0|clock_out~5_combout\ : std_logic;
SIGNAL \counter0|clock_out~6_combout\ : std_logic;
SIGNAL \counter0|clock_out~0_combout\ : std_logic;
SIGNAL \counter0|clock_out~1_combout\ : std_logic;
SIGNAL \counter0|clock_out~2_combout\ : std_logic;
SIGNAL \counter0|LessThan0~6_combout\ : std_logic;
SIGNAL \counter0|LessThan0~7_combout\ : std_logic;
SIGNAL \counter0|LessThan0~1_combout\ : std_logic;
SIGNAL \counter0|LessThan0~2_combout\ : std_logic;
SIGNAL \counter0|LessThan0~0_combout\ : std_logic;
SIGNAL \counter0|LessThan0~3_combout\ : std_logic;
SIGNAL \counter0|LessThan0~4_combout\ : std_logic;
SIGNAL \counter0|LessThan0~5_combout\ : std_logic;
SIGNAL \counter0|clock_out~7_combout\ : std_logic;
SIGNAL \counter0|clock_out~q\ : std_logic;
SIGNAL \counter0|clock_out~clkctrl_outclk\ : std_logic;
SIGNAL \rotate_LED0|s_1[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \rotate_LED0|s_2[0]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_3[0]~0_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0[0]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_1[1]~1_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0[1]~0_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0[5]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_1[5]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_2[5]~0_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0[2]~1_combout\ : std_logic;
SIGNAL \rotate_LED0|s_1[3]~2_combout\ : std_logic;
SIGNAL \rotate_LED0|s_2[3]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_3[3]~feeder_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0[3]~2_combout\ : std_logic;
SIGNAL \rotate_LED0|s_0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rotate_LED0|s_1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rotate_LED0|s_2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rotate_LED0|s_3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rotate_LED0|ALT_INV_s_3\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rotate_LED0|ALT_INV_s_1\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \rotate_LED0|ALT_INV_s_0\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\counter0|clock_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter0|clock_out~q\);
\rotate_LED0|ALT_INV_s_3\(0) <= NOT \rotate_LED0|s_3\(0);
\rotate_LED0|ALT_INV_s_1\(5) <= NOT \rotate_LED0|s_1\(5);
\rotate_LED0|ALT_INV_s_0\(5) <= NOT \rotate_LED0|s_0\(5);
\rotate_LED0|ALT_INV_s_0\(3) <= NOT \rotate_LED0|s_0\(3);
\rotate_LED0|ALT_INV_s_0\(2) <= NOT \rotate_LED0|s_0\(2);
\rotate_LED0|ALT_INV_s_0\(1) <= NOT \rotate_LED0|s_0\(1);
\rotate_LED0|ALT_INV_s_0\(0) <= NOT \rotate_LED0|s_0\(0);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(3),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(3),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(5),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(3),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_1\(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(3),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_1\(5),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(3),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(3),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_3\(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_1\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_2\(5),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_3\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_3\(3),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|ALT_INV_s_0\(2),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_LED0|s_3\(3),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X56_Y5_N25
\counter0|comp:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[11]~q\);

-- Location: LCCOMB_X56_Y5_N2
\counter0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~0_combout\ = \counter0|comp:count[0]~q\ $ (VCC)
-- \counter0|Add0~1\ = CARRY(\counter0|comp:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[0]~q\,
	datad => VCC,
	combout => \counter0|Add0~0_combout\,
	cout => \counter0|Add0~1\);

-- Location: FF_X56_Y5_N3
\counter0|comp:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[0]~q\);

-- Location: LCCOMB_X56_Y5_N4
\counter0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~2_combout\ = (\counter0|comp:count[1]~q\ & (!\counter0|Add0~1\)) # (!\counter0|comp:count[1]~q\ & ((\counter0|Add0~1\) # (GND)))
-- \counter0|Add0~3\ = CARRY((!\counter0|Add0~1\) # (!\counter0|comp:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[1]~q\,
	datad => VCC,
	cin => \counter0|Add0~1\,
	combout => \counter0|Add0~2_combout\,
	cout => \counter0|Add0~3\);

-- Location: FF_X56_Y5_N5
\counter0|comp:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[1]~q\);

-- Location: LCCOMB_X56_Y5_N6
\counter0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~4_combout\ = (\counter0|comp:count[2]~q\ & (\counter0|Add0~3\ $ (GND))) # (!\counter0|comp:count[2]~q\ & (!\counter0|Add0~3\ & VCC))
-- \counter0|Add0~5\ = CARRY((\counter0|comp:count[2]~q\ & !\counter0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[2]~q\,
	datad => VCC,
	cin => \counter0|Add0~3\,
	combout => \counter0|Add0~4_combout\,
	cout => \counter0|Add0~5\);

-- Location: FF_X56_Y5_N7
\counter0|comp:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[2]~q\);

-- Location: LCCOMB_X56_Y5_N8
\counter0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~6_combout\ = (\counter0|comp:count[3]~q\ & (!\counter0|Add0~5\)) # (!\counter0|comp:count[3]~q\ & ((\counter0|Add0~5\) # (GND)))
-- \counter0|Add0~7\ = CARRY((!\counter0|Add0~5\) # (!\counter0|comp:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[3]~q\,
	datad => VCC,
	cin => \counter0|Add0~5\,
	combout => \counter0|Add0~6_combout\,
	cout => \counter0|Add0~7\);

-- Location: FF_X56_Y5_N9
\counter0|comp:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[3]~q\);

-- Location: LCCOMB_X56_Y5_N10
\counter0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~8_combout\ = (\counter0|comp:count[4]~q\ & (\counter0|Add0~7\ $ (GND))) # (!\counter0|comp:count[4]~q\ & (!\counter0|Add0~7\ & VCC))
-- \counter0|Add0~9\ = CARRY((\counter0|comp:count[4]~q\ & !\counter0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[4]~q\,
	datad => VCC,
	cin => \counter0|Add0~7\,
	combout => \counter0|Add0~8_combout\,
	cout => \counter0|Add0~9\);

-- Location: FF_X56_Y5_N11
\counter0|comp:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[4]~q\);

-- Location: LCCOMB_X56_Y5_N12
\counter0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~10_combout\ = (\counter0|comp:count[5]~q\ & (!\counter0|Add0~9\)) # (!\counter0|comp:count[5]~q\ & ((\counter0|Add0~9\) # (GND)))
-- \counter0|Add0~11\ = CARRY((!\counter0|Add0~9\) # (!\counter0|comp:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[5]~q\,
	datad => VCC,
	cin => \counter0|Add0~9\,
	combout => \counter0|Add0~10_combout\,
	cout => \counter0|Add0~11\);

-- Location: FF_X56_Y5_N13
\counter0|comp:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[5]~q\);

-- Location: LCCOMB_X56_Y5_N14
\counter0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~12_combout\ = (\counter0|comp:count[6]~q\ & (\counter0|Add0~11\ $ (GND))) # (!\counter0|comp:count[6]~q\ & (!\counter0|Add0~11\ & VCC))
-- \counter0|Add0~13\ = CARRY((\counter0|comp:count[6]~q\ & !\counter0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[6]~q\,
	datad => VCC,
	cin => \counter0|Add0~11\,
	combout => \counter0|Add0~12_combout\,
	cout => \counter0|Add0~13\);

-- Location: FF_X56_Y5_N15
\counter0|comp:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[6]~q\);

-- Location: LCCOMB_X56_Y5_N16
\counter0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~14_combout\ = (\counter0|comp:count[7]~q\ & (!\counter0|Add0~13\)) # (!\counter0|comp:count[7]~q\ & ((\counter0|Add0~13\) # (GND)))
-- \counter0|Add0~15\ = CARRY((!\counter0|Add0~13\) # (!\counter0|comp:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[7]~q\,
	datad => VCC,
	cin => \counter0|Add0~13\,
	combout => \counter0|Add0~14_combout\,
	cout => \counter0|Add0~15\);

-- Location: LCCOMB_X55_Y4_N0
\counter0|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~11_combout\ = (\counter0|Add0~14_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~14_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~11_combout\);

-- Location: FF_X55_Y4_N1
\counter0|comp:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[7]~q\);

-- Location: LCCOMB_X56_Y5_N18
\counter0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~16_combout\ = (\counter0|comp:count[8]~q\ & (\counter0|Add0~15\ $ (GND))) # (!\counter0|comp:count[8]~q\ & (!\counter0|Add0~15\ & VCC))
-- \counter0|Add0~17\ = CARRY((\counter0|comp:count[8]~q\ & !\counter0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[8]~q\,
	datad => VCC,
	cin => \counter0|Add0~15\,
	combout => \counter0|Add0~16_combout\,
	cout => \counter0|Add0~17\);

-- Location: FF_X56_Y5_N19
\counter0|comp:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[8]~q\);

-- Location: LCCOMB_X56_Y5_N20
\counter0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~18_combout\ = (\counter0|comp:count[9]~q\ & (!\counter0|Add0~17\)) # (!\counter0|comp:count[9]~q\ & ((\counter0|Add0~17\) # (GND)))
-- \counter0|Add0~19\ = CARRY((!\counter0|Add0~17\) # (!\counter0|comp:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[9]~q\,
	datad => VCC,
	cin => \counter0|Add0~17\,
	combout => \counter0|Add0~18_combout\,
	cout => \counter0|Add0~19\);

-- Location: FF_X56_Y5_N21
\counter0|comp:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[9]~q\);

-- Location: LCCOMB_X56_Y5_N22
\counter0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~20_combout\ = (\counter0|comp:count[10]~q\ & (\counter0|Add0~19\ $ (GND))) # (!\counter0|comp:count[10]~q\ & (!\counter0|Add0~19\ & VCC))
-- \counter0|Add0~21\ = CARRY((\counter0|comp:count[10]~q\ & !\counter0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[10]~q\,
	datad => VCC,
	cin => \counter0|Add0~19\,
	combout => \counter0|Add0~20_combout\,
	cout => \counter0|Add0~21\);

-- Location: FF_X56_Y5_N23
\counter0|comp:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[10]~q\);

-- Location: LCCOMB_X56_Y5_N24
\counter0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~22_combout\ = (\counter0|comp:count[11]~q\ & (!\counter0|Add0~21\)) # (!\counter0|comp:count[11]~q\ & ((\counter0|Add0~21\) # (GND)))
-- \counter0|Add0~23\ = CARRY((!\counter0|Add0~21\) # (!\counter0|comp:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[11]~q\,
	datad => VCC,
	cin => \counter0|Add0~21\,
	combout => \counter0|Add0~22_combout\,
	cout => \counter0|Add0~23\);

-- Location: LCCOMB_X57_Y4_N22
\counter0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~4_combout\ = (!\counter0|Add0~18_combout\ & (!\counter0|Add0~20_combout\ & !\counter0|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|Add0~18_combout\,
	datac => \counter0|Add0~20_combout\,
	datad => \counter0|Add0~16_combout\,
	combout => \counter0|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y5_N0
\counter0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~2_combout\ = (!\counter0|Add0~0_combout\ & (!\counter0|Add0~2_combout\ & (!\counter0|Add0~4_combout\ & !\counter0|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~0_combout\,
	datab => \counter0|Add0~2_combout\,
	datac => \counter0|Add0~4_combout\,
	datad => \counter0|Add0~6_combout\,
	combout => \counter0|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y4_N0
\counter0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~3_combout\ = (!\counter0|Add0~10_combout\ & (!\counter0|Add0~12_combout\ & (\counter0|Equal0~2_combout\ & !\counter0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~10_combout\,
	datab => \counter0|Add0~12_combout\,
	datac => \counter0|Equal0~2_combout\,
	datad => \counter0|Add0~8_combout\,
	combout => \counter0|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y3_N10
\counter0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~7_combout\ = (!\counter0|Add0~22_combout\ & (\counter0|Equal0~4_combout\ & \counter0|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~22_combout\,
	datac => \counter0|Equal0~4_combout\,
	datad => \counter0|Equal0~3_combout\,
	combout => \counter0|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y4_N16
\counter0|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~6_combout\ = (\counter0|Add0~34_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~9_combout\)) # (!\counter0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~34_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Equal0~9_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~6_combout\);

-- Location: FF_X55_Y4_N17
\counter0|comp:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[17]~q\);

-- Location: LCCOMB_X56_Y5_N26
\counter0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~24_combout\ = (\counter0|comp:count[12]~q\ & (\counter0|Add0~23\ $ (GND))) # (!\counter0|comp:count[12]~q\ & (!\counter0|Add0~23\ & VCC))
-- \counter0|Add0~25\ = CARRY((\counter0|comp:count[12]~q\ & !\counter0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[12]~q\,
	datad => VCC,
	cin => \counter0|Add0~23\,
	combout => \counter0|Add0~24_combout\,
	cout => \counter0|Add0~25\);

-- Location: LCCOMB_X56_Y3_N4
\counter0|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~10_combout\ = (\counter0|Add0~24_combout\ & (((!\counter0|Equal0~6_combout\) # (!\counter0|Equal0~9_combout\)) # (!\counter0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~7_combout\,
	datab => \counter0|Add0~24_combout\,
	datac => \counter0|Equal0~9_combout\,
	datad => \counter0|Equal0~6_combout\,
	combout => \counter0|count~10_combout\);

-- Location: FF_X56_Y3_N5
\counter0|comp:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[12]~q\);

-- Location: LCCOMB_X56_Y5_N28
\counter0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~26_combout\ = (\counter0|comp:count[13]~q\ & (!\counter0|Add0~25\)) # (!\counter0|comp:count[13]~q\ & ((\counter0|Add0~25\) # (GND)))
-- \counter0|Add0~27\ = CARRY((!\counter0|Add0~25\) # (!\counter0|comp:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[13]~q\,
	datad => VCC,
	cin => \counter0|Add0~25\,
	combout => \counter0|Add0~26_combout\,
	cout => \counter0|Add0~27\);

-- Location: LCCOMB_X56_Y3_N14
\counter0|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~9_combout\ = (\counter0|Add0~26_combout\ & (((!\counter0|Equal0~6_combout\) # (!\counter0|Equal0~9_combout\)) # (!\counter0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~7_combout\,
	datab => \counter0|Add0~26_combout\,
	datac => \counter0|Equal0~9_combout\,
	datad => \counter0|Equal0~6_combout\,
	combout => \counter0|count~9_combout\);

-- Location: FF_X56_Y3_N15
\counter0|comp:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[13]~q\);

-- Location: LCCOMB_X56_Y5_N30
\counter0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~28_combout\ = (\counter0|comp:count[14]~q\ & (\counter0|Add0~27\ $ (GND))) # (!\counter0|comp:count[14]~q\ & (!\counter0|Add0~27\ & VCC))
-- \counter0|Add0~29\ = CARRY((\counter0|comp:count[14]~q\ & !\counter0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[14]~q\,
	datad => VCC,
	cin => \counter0|Add0~27\,
	combout => \counter0|Add0~28_combout\,
	cout => \counter0|Add0~29\);

-- Location: LCCOMB_X55_Y4_N2
\counter0|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~8_combout\ = (\counter0|Add0~28_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~28_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~8_combout\);

-- Location: FF_X55_Y4_N3
\counter0|comp:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[14]~q\);

-- Location: LCCOMB_X56_Y4_N0
\counter0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~30_combout\ = (\counter0|comp:count[15]~q\ & (!\counter0|Add0~29\)) # (!\counter0|comp:count[15]~q\ & ((\counter0|Add0~29\) # (GND)))
-- \counter0|Add0~31\ = CARRY((!\counter0|Add0~29\) # (!\counter0|comp:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[15]~q\,
	datad => VCC,
	cin => \counter0|Add0~29\,
	combout => \counter0|Add0~30_combout\,
	cout => \counter0|Add0~31\);

-- Location: LCCOMB_X56_Y3_N0
\counter0|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~7_combout\ = (\counter0|Add0~30_combout\ & (((!\counter0|Equal0~6_combout\) # (!\counter0|Equal0~9_combout\)) # (!\counter0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~7_combout\,
	datab => \counter0|Add0~30_combout\,
	datac => \counter0|Equal0~9_combout\,
	datad => \counter0|Equal0~6_combout\,
	combout => \counter0|count~7_combout\);

-- Location: FF_X56_Y3_N1
\counter0|comp:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[15]~q\);

-- Location: LCCOMB_X56_Y4_N2
\counter0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~32_combout\ = (\counter0|comp:count[16]~q\ & (\counter0|Add0~31\ $ (GND))) # (!\counter0|comp:count[16]~q\ & (!\counter0|Add0~31\ & VCC))
-- \counter0|Add0~33\ = CARRY((\counter0|comp:count[16]~q\ & !\counter0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[16]~q\,
	datad => VCC,
	cin => \counter0|Add0~31\,
	combout => \counter0|Add0~32_combout\,
	cout => \counter0|Add0~33\);

-- Location: FF_X56_Y4_N3
\counter0|comp:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[16]~q\);

-- Location: LCCOMB_X56_Y4_N4
\counter0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~34_combout\ = (\counter0|comp:count[17]~q\ & (!\counter0|Add0~33\)) # (!\counter0|comp:count[17]~q\ & ((\counter0|Add0~33\) # (GND)))
-- \counter0|Add0~35\ = CARRY((!\counter0|Add0~33\) # (!\counter0|comp:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[17]~q\,
	datad => VCC,
	cin => \counter0|Add0~33\,
	combout => \counter0|Add0~34_combout\,
	cout => \counter0|Add0~35\);

-- Location: LCCOMB_X55_Y5_N28
\counter0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~1_combout\ = (\counter0|Add0~24_combout\ & (\counter0|Add0~26_combout\ & (\counter0|Add0~28_combout\ & \counter0|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~24_combout\,
	datab => \counter0|Add0~26_combout\,
	datac => \counter0|Add0~28_combout\,
	datad => \counter0|Add0~30_combout\,
	combout => \counter0|Equal0~1_combout\);

-- Location: FF_X56_Y4_N31
\counter0|comp:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[30]~q\);

-- Location: LCCOMB_X56_Y4_N6
\counter0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~36_combout\ = (\counter0|comp:count[18]~q\ & (\counter0|Add0~35\ $ (GND))) # (!\counter0|comp:count[18]~q\ & (!\counter0|Add0~35\ & VCC))
-- \counter0|Add0~37\ = CARRY((\counter0|comp:count[18]~q\ & !\counter0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[18]~q\,
	datad => VCC,
	cin => \counter0|Add0~35\,
	combout => \counter0|Add0~36_combout\,
	cout => \counter0|Add0~37\);

-- Location: FF_X56_Y4_N7
\counter0|comp:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[18]~q\);

-- Location: LCCOMB_X56_Y4_N8
\counter0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~38_combout\ = (\counter0|comp:count[19]~q\ & (!\counter0|Add0~37\)) # (!\counter0|comp:count[19]~q\ & ((\counter0|Add0~37\) # (GND)))
-- \counter0|Add0~39\ = CARRY((!\counter0|Add0~37\) # (!\counter0|comp:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[19]~q\,
	datad => VCC,
	cin => \counter0|Add0~37\,
	combout => \counter0|Add0~38_combout\,
	cout => \counter0|Add0~39\);

-- Location: LCCOMB_X56_Y4_N10
\counter0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~40_combout\ = (\counter0|comp:count[20]~q\ & (\counter0|Add0~39\ $ (GND))) # (!\counter0|comp:count[20]~q\ & (!\counter0|Add0~39\ & VCC))
-- \counter0|Add0~41\ = CARRY((\counter0|comp:count[20]~q\ & !\counter0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[20]~q\,
	datad => VCC,
	cin => \counter0|Add0~39\,
	combout => \counter0|Add0~40_combout\,
	cout => \counter0|Add0~41\);

-- Location: LCCOMB_X55_Y4_N28
\counter0|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~4_combout\ = (\counter0|Add0~40_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~40_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~4_combout\);

-- Location: FF_X55_Y4_N29
\counter0|comp:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[20]~q\);

-- Location: LCCOMB_X56_Y4_N12
\counter0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~42_combout\ = (\counter0|comp:count[21]~q\ & (!\counter0|Add0~41\)) # (!\counter0|comp:count[21]~q\ & ((\counter0|Add0~41\) # (GND)))
-- \counter0|Add0~43\ = CARRY((!\counter0|Add0~41\) # (!\counter0|comp:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[21]~q\,
	datad => VCC,
	cin => \counter0|Add0~41\,
	combout => \counter0|Add0~42_combout\,
	cout => \counter0|Add0~43\);

-- Location: LCCOMB_X55_Y4_N26
\counter0|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~3_combout\ = (\counter0|Add0~42_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~42_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~3_combout\);

-- Location: FF_X55_Y4_N27
\counter0|comp:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[21]~q\);

-- Location: LCCOMB_X56_Y4_N14
\counter0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~44_combout\ = (\counter0|comp:count[22]~q\ & (\counter0|Add0~43\ $ (GND))) # (!\counter0|comp:count[22]~q\ & (!\counter0|Add0~43\ & VCC))
-- \counter0|Add0~45\ = CARRY((\counter0|comp:count[22]~q\ & !\counter0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[22]~q\,
	datad => VCC,
	cin => \counter0|Add0~43\,
	combout => \counter0|Add0~44_combout\,
	cout => \counter0|Add0~45\);

-- Location: LCCOMB_X55_Y4_N12
\counter0|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~2_combout\ = (\counter0|Add0~44_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~44_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~2_combout\);

-- Location: FF_X55_Y4_N13
\counter0|comp:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[22]~q\);

-- Location: LCCOMB_X56_Y4_N16
\counter0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~46_combout\ = (\counter0|comp:count[23]~q\ & (!\counter0|Add0~45\)) # (!\counter0|comp:count[23]~q\ & ((\counter0|Add0~45\) # (GND)))
-- \counter0|Add0~47\ = CARRY((!\counter0|Add0~45\) # (!\counter0|comp:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[23]~q\,
	datad => VCC,
	cin => \counter0|Add0~45\,
	combout => \counter0|Add0~46_combout\,
	cout => \counter0|Add0~47\);

-- Location: LCCOMB_X55_Y4_N6
\counter0|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~1_combout\ = (\counter0|Add0~46_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~46_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~1_combout\);

-- Location: FF_X55_Y4_N7
\counter0|comp:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[23]~q\);

-- Location: LCCOMB_X56_Y4_N18
\counter0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~48_combout\ = (\counter0|comp:count[24]~q\ & (\counter0|Add0~47\ $ (GND))) # (!\counter0|comp:count[24]~q\ & (!\counter0|Add0~47\ & VCC))
-- \counter0|Add0~49\ = CARRY((\counter0|comp:count[24]~q\ & !\counter0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[24]~q\,
	datad => VCC,
	cin => \counter0|Add0~47\,
	combout => \counter0|Add0~48_combout\,
	cout => \counter0|Add0~49\);

-- Location: FF_X56_Y4_N19
\counter0|comp:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[24]~q\);

-- Location: LCCOMB_X56_Y4_N20
\counter0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~50_combout\ = (\counter0|comp:count[25]~q\ & (!\counter0|Add0~49\)) # (!\counter0|comp:count[25]~q\ & ((\counter0|Add0~49\) # (GND)))
-- \counter0|Add0~51\ = CARRY((!\counter0|Add0~49\) # (!\counter0|comp:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[25]~q\,
	datad => VCC,
	cin => \counter0|Add0~49\,
	combout => \counter0|Add0~50_combout\,
	cout => \counter0|Add0~51\);

-- Location: LCCOMB_X56_Y4_N22
\counter0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~52_combout\ = (\counter0|comp:count[26]~q\ & (\counter0|Add0~51\ $ (GND))) # (!\counter0|comp:count[26]~q\ & (!\counter0|Add0~51\ & VCC))
-- \counter0|Add0~53\ = CARRY((\counter0|comp:count[26]~q\ & !\counter0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[26]~q\,
	datad => VCC,
	cin => \counter0|Add0~51\,
	combout => \counter0|Add0~52_combout\,
	cout => \counter0|Add0~53\);

-- Location: FF_X56_Y4_N23
\counter0|comp:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[26]~q\);

-- Location: LCCOMB_X56_Y4_N24
\counter0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~54_combout\ = (\counter0|comp:count[27]~q\ & (!\counter0|Add0~53\)) # (!\counter0|comp:count[27]~q\ & ((\counter0|Add0~53\) # (GND)))
-- \counter0|Add0~55\ = CARRY((!\counter0|Add0~53\) # (!\counter0|comp:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[27]~q\,
	datad => VCC,
	cin => \counter0|Add0~53\,
	combout => \counter0|Add0~54_combout\,
	cout => \counter0|Add0~55\);

-- Location: FF_X56_Y4_N25
\counter0|comp:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[27]~q\);

-- Location: LCCOMB_X56_Y4_N26
\counter0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~56_combout\ = (\counter0|comp:count[28]~q\ & (\counter0|Add0~55\ $ (GND))) # (!\counter0|comp:count[28]~q\ & (!\counter0|Add0~55\ & VCC))
-- \counter0|Add0~57\ = CARRY((\counter0|comp:count[28]~q\ & !\counter0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[28]~q\,
	datad => VCC,
	cin => \counter0|Add0~55\,
	combout => \counter0|Add0~56_combout\,
	cout => \counter0|Add0~57\);

-- Location: FF_X56_Y4_N27
\counter0|comp:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[28]~q\);

-- Location: LCCOMB_X56_Y4_N28
\counter0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~58_combout\ = (\counter0|comp:count[29]~q\ & (!\counter0|Add0~57\)) # (!\counter0|comp:count[29]~q\ & ((\counter0|Add0~57\) # (GND)))
-- \counter0|Add0~59\ = CARRY((!\counter0|Add0~57\) # (!\counter0|comp:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter0|comp:count[29]~q\,
	datad => VCC,
	cin => \counter0|Add0~57\,
	combout => \counter0|Add0~58_combout\,
	cout => \counter0|Add0~59\);

-- Location: FF_X56_Y4_N29
\counter0|comp:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[29]~q\);

-- Location: LCCOMB_X56_Y4_N30
\counter0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~60_combout\ = \counter0|comp:count[30]~q\ $ (!\counter0|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|comp:count[30]~q\,
	cin => \counter0|Add0~59\,
	combout => \counter0|Add0~60_combout\);

-- Location: LCCOMB_X55_Y4_N10
\counter0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~5_combout\ = (!\counter0|Add0~54_combout\ & (!\counter0|Add0~52_combout\ & (!\counter0|Add0~58_combout\ & !\counter0|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~54_combout\,
	datab => \counter0|Add0~52_combout\,
	datac => \counter0|Add0~58_combout\,
	datad => \counter0|Add0~56_combout\,
	combout => \counter0|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y4_N18
\counter0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~6_combout\ = (\counter0|Add0~34_combout\ & (\counter0|Equal0~1_combout\ & (!\counter0|Add0~60_combout\ & \counter0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~34_combout\,
	datab => \counter0|Equal0~1_combout\,
	datac => \counter0|Add0~60_combout\,
	datad => \counter0|Equal0~5_combout\,
	combout => \counter0|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y4_N4
\counter0|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~0_combout\ = (\counter0|Add0~50_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~9_combout\)) # (!\counter0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~50_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Equal0~9_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~0_combout\);

-- Location: FF_X55_Y4_N5
\counter0|comp:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[25]~q\);

-- Location: LCCOMB_X55_Y4_N20
\counter0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~8_combout\ = (!\counter0|Add0~32_combout\ & (\counter0|Add0~14_combout\ & (!\counter0|Add0~36_combout\ & !\counter0|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~32_combout\,
	datab => \counter0|Add0~14_combout\,
	datac => \counter0|Add0~36_combout\,
	datad => \counter0|Add0~48_combout\,
	combout => \counter0|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y4_N30
\counter0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~9_combout\ = (\counter0|Add0~50_combout\ & (\counter0|Add0~46_combout\ & (\counter0|Equal0~0_combout\ & \counter0|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~50_combout\,
	datab => \counter0|Add0~46_combout\,
	datac => \counter0|Equal0~0_combout\,
	datad => \counter0|Equal0~8_combout\,
	combout => \counter0|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y4_N22
\counter0|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|count~5_combout\ = (\counter0|Add0~38_combout\ & (((!\counter0|Equal0~7_combout\) # (!\counter0|Equal0~6_combout\)) # (!\counter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Equal0~9_combout\,
	datab => \counter0|Equal0~6_combout\,
	datac => \counter0|Add0~38_combout\,
	datad => \counter0|Equal0~7_combout\,
	combout => \counter0|count~5_combout\);

-- Location: FF_X55_Y4_N23
\counter0|comp:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|comp:count[19]~q\);

-- Location: LCCOMB_X55_Y4_N14
\counter0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Equal0~0_combout\ = (\counter0|Add0~38_combout\ & (\counter0|Add0~42_combout\ & (\counter0|Add0~44_combout\ & \counter0|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~38_combout\,
	datab => \counter0|Add0~42_combout\,
	datac => \counter0|Add0~44_combout\,
	datad => \counter0|Add0~40_combout\,
	combout => \counter0|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y4_N14
\counter0|clock_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~3_combout\ = (\counter0|Add0~22_combout\) # (((\counter0|Add0~14_combout\ & !\counter0|Equal0~3_combout\)) # (!\counter0|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~22_combout\,
	datab => \counter0|Add0~14_combout\,
	datac => \counter0|Equal0~4_combout\,
	datad => \counter0|Equal0~3_combout\,
	combout => \counter0|clock_out~3_combout\);

-- Location: LCCOMB_X57_Y4_N10
\counter0|clock_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~4_combout\ = (\counter0|Add0~34_combout\ & ((\counter0|Add0~32_combout\) # ((\counter0|clock_out~3_combout\ & \counter0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~32_combout\,
	datab => \counter0|Add0~34_combout\,
	datac => \counter0|clock_out~3_combout\,
	datad => \counter0|Equal0~1_combout\,
	combout => \counter0|clock_out~4_combout\);

-- Location: LCCOMB_X57_Y4_N18
\counter0|clock_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~5_combout\ = (\counter0|Add0~46_combout\ & ((\counter0|Add0~36_combout\) # (\counter0|clock_out~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|Add0~36_combout\,
	datac => \counter0|Add0~46_combout\,
	datad => \counter0|clock_out~4_combout\,
	combout => \counter0|clock_out~5_combout\);

-- Location: LCCOMB_X57_Y4_N16
\counter0|clock_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~6_combout\ = (\counter0|clock_out~q\ & (\counter0|Equal0~0_combout\ & (\counter0|Add0~50_combout\ & \counter0|clock_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|clock_out~q\,
	datab => \counter0|Equal0~0_combout\,
	datac => \counter0|Add0~50_combout\,
	datad => \counter0|clock_out~5_combout\,
	combout => \counter0|clock_out~6_combout\);

-- Location: LCCOMB_X57_Y4_N12
\counter0|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~0_combout\ = (\counter0|Add0~52_combout\) # ((\counter0|Add0~54_combout\) # ((\counter0|Add0~48_combout\ & \counter0|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~48_combout\,
	datab => \counter0|Add0~52_combout\,
	datac => \counter0|Add0~50_combout\,
	datad => \counter0|Add0~54_combout\,
	combout => \counter0|clock_out~0_combout\);

-- Location: LCCOMB_X57_Y4_N20
\counter0|clock_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~1_combout\ = (\counter0|Add0~56_combout\) # (\counter0|clock_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|Add0~56_combout\,
	datad => \counter0|clock_out~0_combout\,
	combout => \counter0|clock_out~1_combout\);

-- Location: LCCOMB_X57_Y4_N30
\counter0|clock_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~2_combout\ = (\counter0|clock_out~q\ & ((\counter0|Add0~58_combout\) # ((\counter0|Add0~60_combout\) # (\counter0|clock_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~58_combout\,
	datab => \counter0|Add0~60_combout\,
	datac => \counter0|clock_out~q\,
	datad => \counter0|clock_out~1_combout\,
	combout => \counter0|clock_out~2_combout\);

-- Location: LCCOMB_X55_Y4_N8
\counter0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~6_combout\ = (\counter0|Add0~46_combout\ & \counter0|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|Add0~46_combout\,
	datad => \counter0|Add0~48_combout\,
	combout => \counter0|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y4_N24
\counter0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~7_combout\ = (\counter0|Add0~60_combout\) # ((\counter0|Add0~50_combout\) # ((\counter0|LessThan0~6_combout\) # (!\counter0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~60_combout\,
	datab => \counter0|Add0~50_combout\,
	datac => \counter0|LessThan0~6_combout\,
	datad => \counter0|Equal0~5_combout\,
	combout => \counter0|LessThan0~7_combout\);

-- Location: LCCOMB_X57_Y4_N24
\counter0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~1_combout\ = (\counter0|Add0~12_combout\ & ((\counter0|Add0~10_combout\) # ((\counter0|Add0~8_combout\) # (!\counter0|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~10_combout\,
	datab => \counter0|Add0~12_combout\,
	datac => \counter0|Equal0~2_combout\,
	datad => \counter0|Add0~8_combout\,
	combout => \counter0|LessThan0~1_combout\);

-- Location: LCCOMB_X57_Y4_N4
\counter0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~2_combout\ = (\counter0|Add0~14_combout\) # ((\counter0|Add0~18_combout\) # ((\counter0|Add0~20_combout\) # (\counter0|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~14_combout\,
	datab => \counter0|Add0~18_combout\,
	datac => \counter0|Add0~20_combout\,
	datad => \counter0|Add0~16_combout\,
	combout => \counter0|LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y4_N2
\counter0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~0_combout\ = (\counter0|Add0~22_combout\ & (\counter0|Add0~24_combout\ & (\counter0|Add0~28_combout\ & \counter0|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~22_combout\,
	datab => \counter0|Add0~24_combout\,
	datac => \counter0|Add0~28_combout\,
	datad => \counter0|Add0~26_combout\,
	combout => \counter0|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\counter0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~3_combout\ = (\counter0|Add0~32_combout\ & (\counter0|LessThan0~0_combout\ & ((\counter0|LessThan0~1_combout\) # (\counter0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~32_combout\,
	datab => \counter0|LessThan0~1_combout\,
	datac => \counter0|LessThan0~2_combout\,
	datad => \counter0|LessThan0~0_combout\,
	combout => \counter0|LessThan0~3_combout\);

-- Location: LCCOMB_X57_Y4_N8
\counter0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~4_combout\ = (\counter0|Add0~34_combout\) # ((\counter0|LessThan0~3_combout\) # ((\counter0|Add0~32_combout\ & \counter0|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~32_combout\,
	datab => \counter0|Add0~34_combout\,
	datac => \counter0|LessThan0~3_combout\,
	datad => \counter0|Add0~30_combout\,
	combout => \counter0|LessThan0~4_combout\);

-- Location: LCCOMB_X57_Y4_N6
\counter0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|LessThan0~5_combout\ = (\counter0|Add0~48_combout\ & (\counter0|Add0~36_combout\ & (\counter0|LessThan0~4_combout\ & \counter0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|Add0~48_combout\,
	datab => \counter0|Add0~36_combout\,
	datac => \counter0|LessThan0~4_combout\,
	datad => \counter0|Equal0~0_combout\,
	combout => \counter0|LessThan0~5_combout\);

-- Location: LCCOMB_X57_Y4_N28
\counter0|clock_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|clock_out~7_combout\ = (\counter0|clock_out~6_combout\) # ((\counter0|clock_out~2_combout\) # ((!\counter0|LessThan0~7_combout\ & !\counter0|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|clock_out~6_combout\,
	datab => \counter0|clock_out~2_combout\,
	datac => \counter0|LessThan0~7_combout\,
	datad => \counter0|LessThan0~5_combout\,
	combout => \counter0|clock_out~7_combout\);

-- Location: FF_X57_Y4_N29
\counter0|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|clock_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|clock_out~q\);

-- Location: CLKCTRL_G17
\counter0|clock_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter0|clock_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter0|clock_out~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y22_N2
\rotate_LED0|s_1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_1[0]~0_combout\ = !\rotate_LED0|s_0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_0\(0),
	combout => \rotate_LED0|s_1[0]~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y22_N3
\rotate_LED0|s_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_1[0]~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_1\(0));

-- Location: LCCOMB_X114_Y22_N30
\rotate_LED0|s_2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_2[0]~feeder_combout\ = \rotate_LED0|s_1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_1\(0),
	combout => \rotate_LED0|s_2[0]~feeder_combout\);

-- Location: FF_X114_Y22_N31
\rotate_LED0|s_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_2[0]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_2\(0));

-- Location: LCCOMB_X114_Y22_N4
\rotate_LED0|s_3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_3[0]~0_combout\ = !\rotate_LED0|s_2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rotate_LED0|s_2\(0),
	combout => \rotate_LED0|s_3[0]~0_combout\);

-- Location: FF_X114_Y22_N5
\rotate_LED0|s_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_3[0]~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_3\(0));

-- Location: LCCOMB_X114_Y22_N12
\rotate_LED0|s_0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_0[0]~feeder_combout\ = \rotate_LED0|s_3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rotate_LED0|s_3\(0),
	combout => \rotate_LED0|s_0[0]~feeder_combout\);

-- Location: FF_X114_Y22_N13
\rotate_LED0|s_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_0[0]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_0\(0));

-- Location: LCCOMB_X114_Y22_N28
\rotate_LED0|s_1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_1[1]~1_combout\ = !\rotate_LED0|s_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_0\(1),
	combout => \rotate_LED0|s_1[1]~1_combout\);

-- Location: FF_X114_Y22_N29
\rotate_LED0|s_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_1[1]~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_1\(1));

-- Location: LCCOMB_X114_Y22_N6
\rotate_LED0|s_0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_0[1]~0_combout\ = !\rotate_LED0|s_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_1\(1),
	combout => \rotate_LED0|s_0[1]~0_combout\);

-- Location: FF_X114_Y22_N7
\rotate_LED0|s_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_0[1]~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_0\(1));

-- Location: LCCOMB_X114_Y22_N20
\rotate_LED0|s_0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_0[5]~feeder_combout\ = \rotate_LED0|s_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_0\(2),
	combout => \rotate_LED0|s_0[5]~feeder_combout\);

-- Location: FF_X114_Y22_N21
\rotate_LED0|s_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_0[5]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_0\(5));

-- Location: LCCOMB_X114_Y22_N0
\rotate_LED0|s_1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_1[5]~feeder_combout\ = \rotate_LED0|s_0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_0\(5),
	combout => \rotate_LED0|s_1[5]~feeder_combout\);

-- Location: FF_X114_Y22_N1
\rotate_LED0|s_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_1[5]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_1\(5));

-- Location: LCCOMB_X114_Y22_N14
\rotate_LED0|s_2[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_2[5]~0_combout\ = !\rotate_LED0|s_1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_1\(5),
	combout => \rotate_LED0|s_2[5]~0_combout\);

-- Location: FF_X114_Y22_N15
\rotate_LED0|s_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_2[5]~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_2\(5));

-- Location: LCCOMB_X114_Y22_N16
\rotate_LED0|s_0[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_0[2]~1_combout\ = !\rotate_LED0|s_2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rotate_LED0|s_2\(5),
	combout => \rotate_LED0|s_0[2]~1_combout\);

-- Location: FF_X114_Y22_N17
\rotate_LED0|s_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_0[2]~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_0\(2));

-- Location: LCCOMB_X114_Y22_N18
\rotate_LED0|s_1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_1[3]~2_combout\ = !\rotate_LED0|s_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_0\(3),
	combout => \rotate_LED0|s_1[3]~2_combout\);

-- Location: FF_X114_Y22_N19
\rotate_LED0|s_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_1[3]~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_1\(3));

-- Location: LCCOMB_X114_Y22_N24
\rotate_LED0|s_2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_2[3]~feeder_combout\ = \rotate_LED0|s_1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_1\(3),
	combout => \rotate_LED0|s_2[3]~feeder_combout\);

-- Location: FF_X114_Y22_N25
\rotate_LED0|s_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_2[3]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_2\(3));

-- Location: LCCOMB_X114_Y22_N22
\rotate_LED0|s_3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_3[3]~feeder_combout\ = \rotate_LED0|s_2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rotate_LED0|s_2\(3),
	combout => \rotate_LED0|s_3[3]~feeder_combout\);

-- Location: FF_X114_Y22_N23
\rotate_LED0|s_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_3[3]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_3\(3));

-- Location: LCCOMB_X114_Y22_N10
\rotate_LED0|s_0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_LED0|s_0[3]~2_combout\ = !\rotate_LED0|s_3\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rotate_LED0|s_3\(3),
	combout => \rotate_LED0|s_0[3]~2_combout\);

-- Location: FF_X114_Y22_N11
\rotate_LED0|s_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter0|clock_out~clkctrl_outclk\,
	d => \rotate_LED0|s_0[3]~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_LED0|s_0\(3));

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


