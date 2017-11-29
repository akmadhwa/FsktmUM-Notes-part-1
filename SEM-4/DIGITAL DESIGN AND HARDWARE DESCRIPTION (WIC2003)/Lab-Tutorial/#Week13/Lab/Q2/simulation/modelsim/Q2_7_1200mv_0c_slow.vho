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

-- DATE "05/17/2017 16:12:45"

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

ENTITY 	rotate_All IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END rotate_All;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rotate_All IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_0|clock_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_0|comp:count[11]~q\ : std_logic;
SIGNAL \counter_0|Add0~0_combout\ : std_logic;
SIGNAL \counter_0|comp:count[0]~q\ : std_logic;
SIGNAL \counter_0|Add0~1\ : std_logic;
SIGNAL \counter_0|Add0~2_combout\ : std_logic;
SIGNAL \counter_0|comp:count[1]~q\ : std_logic;
SIGNAL \counter_0|Add0~3\ : std_logic;
SIGNAL \counter_0|Add0~4_combout\ : std_logic;
SIGNAL \counter_0|comp:count[2]~q\ : std_logic;
SIGNAL \counter_0|Add0~5\ : std_logic;
SIGNAL \counter_0|Add0~6_combout\ : std_logic;
SIGNAL \counter_0|comp:count[3]~q\ : std_logic;
SIGNAL \counter_0|Add0~7\ : std_logic;
SIGNAL \counter_0|Add0~8_combout\ : std_logic;
SIGNAL \counter_0|comp:count[4]~q\ : std_logic;
SIGNAL \counter_0|Add0~9\ : std_logic;
SIGNAL \counter_0|Add0~10_combout\ : std_logic;
SIGNAL \counter_0|comp:count[5]~q\ : std_logic;
SIGNAL \counter_0|Add0~11\ : std_logic;
SIGNAL \counter_0|Add0~12_combout\ : std_logic;
SIGNAL \counter_0|comp:count[6]~q\ : std_logic;
SIGNAL \counter_0|Add0~13\ : std_logic;
SIGNAL \counter_0|Add0~14_combout\ : std_logic;
SIGNAL \counter_0|count~1_combout\ : std_logic;
SIGNAL \counter_0|comp:count[23]~q\ : std_logic;
SIGNAL \counter_0|Add0~23\ : std_logic;
SIGNAL \counter_0|Add0~24_combout\ : std_logic;
SIGNAL \counter_0|count~10_combout\ : std_logic;
SIGNAL \counter_0|comp:count[12]~q\ : std_logic;
SIGNAL \counter_0|Add0~25\ : std_logic;
SIGNAL \counter_0|Add0~26_combout\ : std_logic;
SIGNAL \counter_0|count~9_combout\ : std_logic;
SIGNAL \counter_0|comp:count[13]~q\ : std_logic;
SIGNAL \counter_0|Add0~27\ : std_logic;
SIGNAL \counter_0|Add0~28_combout\ : std_logic;
SIGNAL \counter_0|count~8_combout\ : std_logic;
SIGNAL \counter_0|comp:count[14]~q\ : std_logic;
SIGNAL \counter_0|Add0~29\ : std_logic;
SIGNAL \counter_0|Add0~31\ : std_logic;
SIGNAL \counter_0|Add0~32_combout\ : std_logic;
SIGNAL \counter_0|comp:count[16]~q\ : std_logic;
SIGNAL \counter_0|Add0~33\ : std_logic;
SIGNAL \counter_0|Add0~34_combout\ : std_logic;
SIGNAL \counter_0|count~6_combout\ : std_logic;
SIGNAL \counter_0|comp:count[17]~q\ : std_logic;
SIGNAL \counter_0|Add0~35\ : std_logic;
SIGNAL \counter_0|Add0~36_combout\ : std_logic;
SIGNAL \counter_0|comp:count[18]~q\ : std_logic;
SIGNAL \counter_0|Add0~37\ : std_logic;
SIGNAL \counter_0|Add0~38_combout\ : std_logic;
SIGNAL \counter_0|count~5_combout\ : std_logic;
SIGNAL \counter_0|comp:count[19]~q\ : std_logic;
SIGNAL \counter_0|Add0~39\ : std_logic;
SIGNAL \counter_0|Add0~40_combout\ : std_logic;
SIGNAL \counter_0|count~4_combout\ : std_logic;
SIGNAL \counter_0|comp:count[20]~q\ : std_logic;
SIGNAL \counter_0|Add0~41\ : std_logic;
SIGNAL \counter_0|Add0~42_combout\ : std_logic;
SIGNAL \counter_0|count~3_combout\ : std_logic;
SIGNAL \counter_0|comp:count[21]~q\ : std_logic;
SIGNAL \counter_0|Add0~43\ : std_logic;
SIGNAL \counter_0|Add0~44_combout\ : std_logic;
SIGNAL \counter_0|count~2_combout\ : std_logic;
SIGNAL \counter_0|comp:count[22]~q\ : std_logic;
SIGNAL \counter_0|Add0~45\ : std_logic;
SIGNAL \counter_0|Add0~46_combout\ : std_logic;
SIGNAL \counter_0|comp:count[24]~q\ : std_logic;
SIGNAL \counter_0|Add0~47\ : std_logic;
SIGNAL \counter_0|Add0~48_combout\ : std_logic;
SIGNAL \counter_0|Equal0~8_combout\ : std_logic;
SIGNAL \counter_0|Equal0~0_combout\ : std_logic;
SIGNAL \counter_0|Equal0~9_combout\ : std_logic;
SIGNAL \counter_0|count~7_combout\ : std_logic;
SIGNAL \counter_0|comp:count[15]~q\ : std_logic;
SIGNAL \counter_0|Add0~30_combout\ : std_logic;
SIGNAL \counter_0|Equal0~1_combout\ : std_logic;
SIGNAL \counter_0|comp:count[30]~q\ : std_logic;
SIGNAL \counter_0|Add0~49\ : std_logic;
SIGNAL \counter_0|Add0~51\ : std_logic;
SIGNAL \counter_0|Add0~52_combout\ : std_logic;
SIGNAL \counter_0|comp:count[26]~q\ : std_logic;
SIGNAL \counter_0|Add0~53\ : std_logic;
SIGNAL \counter_0|Add0~54_combout\ : std_logic;
SIGNAL \counter_0|comp:count[27]~q\ : std_logic;
SIGNAL \counter_0|Add0~55\ : std_logic;
SIGNAL \counter_0|Add0~56_combout\ : std_logic;
SIGNAL \counter_0|comp:count[28]~q\ : std_logic;
SIGNAL \counter_0|Add0~57\ : std_logic;
SIGNAL \counter_0|Add0~58_combout\ : std_logic;
SIGNAL \counter_0|comp:count[29]~q\ : std_logic;
SIGNAL \counter_0|Add0~59\ : std_logic;
SIGNAL \counter_0|Add0~60_combout\ : std_logic;
SIGNAL \counter_0|Equal0~5_combout\ : std_logic;
SIGNAL \counter_0|Equal0~6_combout\ : std_logic;
SIGNAL \counter_0|count~11_combout\ : std_logic;
SIGNAL \counter_0|comp:count[7]~q\ : std_logic;
SIGNAL \counter_0|Add0~15\ : std_logic;
SIGNAL \counter_0|Add0~16_combout\ : std_logic;
SIGNAL \counter_0|comp:count[8]~q\ : std_logic;
SIGNAL \counter_0|Add0~17\ : std_logic;
SIGNAL \counter_0|Add0~18_combout\ : std_logic;
SIGNAL \counter_0|comp:count[9]~q\ : std_logic;
SIGNAL \counter_0|Add0~19\ : std_logic;
SIGNAL \counter_0|Add0~20_combout\ : std_logic;
SIGNAL \counter_0|comp:count[10]~q\ : std_logic;
SIGNAL \counter_0|Add0~21\ : std_logic;
SIGNAL \counter_0|Add0~22_combout\ : std_logic;
SIGNAL \counter_0|Equal0~4_combout\ : std_logic;
SIGNAL \counter_0|Equal0~2_combout\ : std_logic;
SIGNAL \counter_0|Equal0~3_combout\ : std_logic;
SIGNAL \counter_0|Equal0~7_combout\ : std_logic;
SIGNAL \counter_0|count~0_combout\ : std_logic;
SIGNAL \counter_0|comp:count[25]~q\ : std_logic;
SIGNAL \counter_0|Add0~50_combout\ : std_logic;
SIGNAL \counter_0|clock_out~3_combout\ : std_logic;
SIGNAL \counter_0|LessThan1~0_combout\ : std_logic;
SIGNAL \counter_0|clock_out~4_combout\ : std_logic;
SIGNAL \counter_0|clock_out~5_combout\ : std_logic;
SIGNAL \counter_0|clock_out~0_combout\ : std_logic;
SIGNAL \counter_0|clock_out~1_combout\ : std_logic;
SIGNAL \counter_0|clock_out~2_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~1_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~0_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~2_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~3_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~4_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~5_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~6_combout\ : std_logic;
SIGNAL \counter_0|LessThan0~7_combout\ : std_logic;
SIGNAL \counter_0|clock_out~6_combout\ : std_logic;
SIGNAL \counter_0|clock_out~q\ : std_logic;
SIGNAL \counter_0|clock_out~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \rotate_0|s_a~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \rotate_0|s_a~2_combout\ : std_logic;
SIGNAL \rotate_0|s_a~3_combout\ : std_logic;
SIGNAL \rotate_0|s_a~4_combout\ : std_logic;
SIGNAL \rotate_0|s_a~5_combout\ : std_logic;
SIGNAL \rotate_0|s_a~6_combout\ : std_logic;
SIGNAL \rotate_0|s_a~7_combout\ : std_logic;
SIGNAL \rotate_0|s_a~0_combout\ : std_logic;
SIGNAL \rotate_0|s_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rotate_0|ALT_INV_s_a\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\counter_0|clock_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter_0|clock_out~q\);
\rotate_0|ALT_INV_s_a\(6) <= NOT \rotate_0|s_a\(6);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|ALT_INV_s_a\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rotate_0|s_a\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: FF_X59_Y72_N25
\counter_0|comp:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[11]~q\);

-- Location: LCCOMB_X59_Y72_N2
\counter_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~0_combout\ = \counter_0|comp:count[0]~q\ $ (VCC)
-- \counter_0|Add0~1\ = CARRY(\counter_0|comp:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[0]~q\,
	datad => VCC,
	combout => \counter_0|Add0~0_combout\,
	cout => \counter_0|Add0~1\);

-- Location: FF_X59_Y72_N3
\counter_0|comp:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[0]~q\);

-- Location: LCCOMB_X59_Y72_N4
\counter_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~2_combout\ = (\counter_0|comp:count[1]~q\ & (!\counter_0|Add0~1\)) # (!\counter_0|comp:count[1]~q\ & ((\counter_0|Add0~1\) # (GND)))
-- \counter_0|Add0~3\ = CARRY((!\counter_0|Add0~1\) # (!\counter_0|comp:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[1]~q\,
	datad => VCC,
	cin => \counter_0|Add0~1\,
	combout => \counter_0|Add0~2_combout\,
	cout => \counter_0|Add0~3\);

-- Location: FF_X59_Y72_N5
\counter_0|comp:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[1]~q\);

-- Location: LCCOMB_X59_Y72_N6
\counter_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~4_combout\ = (\counter_0|comp:count[2]~q\ & (\counter_0|Add0~3\ $ (GND))) # (!\counter_0|comp:count[2]~q\ & (!\counter_0|Add0~3\ & VCC))
-- \counter_0|Add0~5\ = CARRY((\counter_0|comp:count[2]~q\ & !\counter_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[2]~q\,
	datad => VCC,
	cin => \counter_0|Add0~3\,
	combout => \counter_0|Add0~4_combout\,
	cout => \counter_0|Add0~5\);

-- Location: FF_X59_Y72_N7
\counter_0|comp:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[2]~q\);

-- Location: LCCOMB_X59_Y72_N8
\counter_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~6_combout\ = (\counter_0|comp:count[3]~q\ & (!\counter_0|Add0~5\)) # (!\counter_0|comp:count[3]~q\ & ((\counter_0|Add0~5\) # (GND)))
-- \counter_0|Add0~7\ = CARRY((!\counter_0|Add0~5\) # (!\counter_0|comp:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[3]~q\,
	datad => VCC,
	cin => \counter_0|Add0~5\,
	combout => \counter_0|Add0~6_combout\,
	cout => \counter_0|Add0~7\);

-- Location: FF_X59_Y72_N9
\counter_0|comp:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[3]~q\);

-- Location: LCCOMB_X59_Y72_N10
\counter_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~8_combout\ = (\counter_0|comp:count[4]~q\ & (\counter_0|Add0~7\ $ (GND))) # (!\counter_0|comp:count[4]~q\ & (!\counter_0|Add0~7\ & VCC))
-- \counter_0|Add0~9\ = CARRY((\counter_0|comp:count[4]~q\ & !\counter_0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[4]~q\,
	datad => VCC,
	cin => \counter_0|Add0~7\,
	combout => \counter_0|Add0~8_combout\,
	cout => \counter_0|Add0~9\);

-- Location: FF_X59_Y72_N11
\counter_0|comp:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[4]~q\);

-- Location: LCCOMB_X59_Y72_N12
\counter_0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~10_combout\ = (\counter_0|comp:count[5]~q\ & (!\counter_0|Add0~9\)) # (!\counter_0|comp:count[5]~q\ & ((\counter_0|Add0~9\) # (GND)))
-- \counter_0|Add0~11\ = CARRY((!\counter_0|Add0~9\) # (!\counter_0|comp:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[5]~q\,
	datad => VCC,
	cin => \counter_0|Add0~9\,
	combout => \counter_0|Add0~10_combout\,
	cout => \counter_0|Add0~11\);

-- Location: FF_X59_Y72_N13
\counter_0|comp:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[5]~q\);

-- Location: LCCOMB_X59_Y72_N14
\counter_0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~12_combout\ = (\counter_0|comp:count[6]~q\ & (\counter_0|Add0~11\ $ (GND))) # (!\counter_0|comp:count[6]~q\ & (!\counter_0|Add0~11\ & VCC))
-- \counter_0|Add0~13\ = CARRY((\counter_0|comp:count[6]~q\ & !\counter_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[6]~q\,
	datad => VCC,
	cin => \counter_0|Add0~11\,
	combout => \counter_0|Add0~12_combout\,
	cout => \counter_0|Add0~13\);

-- Location: FF_X59_Y72_N15
\counter_0|comp:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[6]~q\);

-- Location: LCCOMB_X59_Y72_N16
\counter_0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~14_combout\ = (\counter_0|comp:count[7]~q\ & (!\counter_0|Add0~13\)) # (!\counter_0|comp:count[7]~q\ & ((\counter_0|Add0~13\) # (GND)))
-- \counter_0|Add0~15\ = CARRY((!\counter_0|Add0~13\) # (!\counter_0|comp:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[7]~q\,
	datad => VCC,
	cin => \counter_0|Add0~13\,
	combout => \counter_0|Add0~14_combout\,
	cout => \counter_0|Add0~15\);

-- Location: LCCOMB_X60_Y71_N12
\counter_0|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~1_combout\ = (\counter_0|Add0~46_combout\ & (((!\counter_0|Equal0~7_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~46_combout\,
	datab => \counter_0|Equal0~9_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~7_combout\,
	combout => \counter_0|count~1_combout\);

-- Location: FF_X60_Y71_N13
\counter_0|comp:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[23]~q\);

-- Location: LCCOMB_X59_Y72_N24
\counter_0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~22_combout\ = (\counter_0|comp:count[11]~q\ & (!\counter_0|Add0~21\)) # (!\counter_0|comp:count[11]~q\ & ((\counter_0|Add0~21\) # (GND)))
-- \counter_0|Add0~23\ = CARRY((!\counter_0|Add0~21\) # (!\counter_0|comp:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[11]~q\,
	datad => VCC,
	cin => \counter_0|Add0~21\,
	combout => \counter_0|Add0~22_combout\,
	cout => \counter_0|Add0~23\);

-- Location: LCCOMB_X59_Y72_N26
\counter_0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~24_combout\ = (\counter_0|comp:count[12]~q\ & (\counter_0|Add0~23\ $ (GND))) # (!\counter_0|comp:count[12]~q\ & (!\counter_0|Add0~23\ & VCC))
-- \counter_0|Add0~25\ = CARRY((\counter_0|comp:count[12]~q\ & !\counter_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[12]~q\,
	datad => VCC,
	cin => \counter_0|Add0~23\,
	combout => \counter_0|Add0~24_combout\,
	cout => \counter_0|Add0~25\);

-- Location: LCCOMB_X60_Y71_N18
\counter_0|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~10_combout\ = (\counter_0|Add0~24_combout\ & (((!\counter_0|Equal0~7_combout\) # (!\counter_0|Equal0~9_combout\)) # (!\counter_0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Equal0~6_combout\,
	datab => \counter_0|Add0~24_combout\,
	datac => \counter_0|Equal0~9_combout\,
	datad => \counter_0|Equal0~7_combout\,
	combout => \counter_0|count~10_combout\);

-- Location: FF_X60_Y71_N19
\counter_0|comp:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[12]~q\);

-- Location: LCCOMB_X59_Y72_N28
\counter_0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~26_combout\ = (\counter_0|comp:count[13]~q\ & (!\counter_0|Add0~25\)) # (!\counter_0|comp:count[13]~q\ & ((\counter_0|Add0~25\) # (GND)))
-- \counter_0|Add0~27\ = CARRY((!\counter_0|Add0~25\) # (!\counter_0|comp:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[13]~q\,
	datad => VCC,
	cin => \counter_0|Add0~25\,
	combout => \counter_0|Add0~26_combout\,
	cout => \counter_0|Add0~27\);

-- Location: LCCOMB_X60_Y71_N24
\counter_0|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~9_combout\ = (\counter_0|Add0~26_combout\ & (((!\counter_0|Equal0~6_combout\) # (!\counter_0|Equal0~9_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~26_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~9_combout\,
	datad => \counter_0|Equal0~6_combout\,
	combout => \counter_0|count~9_combout\);

-- Location: FF_X60_Y71_N25
\counter_0|comp:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[13]~q\);

-- Location: LCCOMB_X59_Y72_N30
\counter_0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~28_combout\ = (\counter_0|comp:count[14]~q\ & (\counter_0|Add0~27\ $ (GND))) # (!\counter_0|comp:count[14]~q\ & (!\counter_0|Add0~27\ & VCC))
-- \counter_0|Add0~29\ = CARRY((\counter_0|comp:count[14]~q\ & !\counter_0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[14]~q\,
	datad => VCC,
	cin => \counter_0|Add0~27\,
	combout => \counter_0|Add0~28_combout\,
	cout => \counter_0|Add0~29\);

-- Location: LCCOMB_X60_Y71_N6
\counter_0|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~8_combout\ = (\counter_0|Add0~28_combout\ & (((!\counter_0|Equal0~7_combout\) # (!\counter_0|Equal0~9_combout\)) # (!\counter_0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Equal0~6_combout\,
	datab => \counter_0|Add0~28_combout\,
	datac => \counter_0|Equal0~9_combout\,
	datad => \counter_0|Equal0~7_combout\,
	combout => \counter_0|count~8_combout\);

-- Location: FF_X60_Y71_N7
\counter_0|comp:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[14]~q\);

-- Location: LCCOMB_X59_Y71_N0
\counter_0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~30_combout\ = (\counter_0|comp:count[15]~q\ & (!\counter_0|Add0~29\)) # (!\counter_0|comp:count[15]~q\ & ((\counter_0|Add0~29\) # (GND)))
-- \counter_0|Add0~31\ = CARRY((!\counter_0|Add0~29\) # (!\counter_0|comp:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[15]~q\,
	datad => VCC,
	cin => \counter_0|Add0~29\,
	combout => \counter_0|Add0~30_combout\,
	cout => \counter_0|Add0~31\);

-- Location: LCCOMB_X59_Y71_N2
\counter_0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~32_combout\ = (\counter_0|comp:count[16]~q\ & (\counter_0|Add0~31\ $ (GND))) # (!\counter_0|comp:count[16]~q\ & (!\counter_0|Add0~31\ & VCC))
-- \counter_0|Add0~33\ = CARRY((\counter_0|comp:count[16]~q\ & !\counter_0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[16]~q\,
	datad => VCC,
	cin => \counter_0|Add0~31\,
	combout => \counter_0|Add0~32_combout\,
	cout => \counter_0|Add0~33\);

-- Location: FF_X59_Y71_N3
\counter_0|comp:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[16]~q\);

-- Location: LCCOMB_X59_Y71_N4
\counter_0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~34_combout\ = (\counter_0|comp:count[17]~q\ & (!\counter_0|Add0~33\)) # (!\counter_0|comp:count[17]~q\ & ((\counter_0|Add0~33\) # (GND)))
-- \counter_0|Add0~35\ = CARRY((!\counter_0|Add0~33\) # (!\counter_0|comp:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[17]~q\,
	datad => VCC,
	cin => \counter_0|Add0~33\,
	combout => \counter_0|Add0~34_combout\,
	cout => \counter_0|Add0~35\);

-- Location: LCCOMB_X61_Y71_N6
\counter_0|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~6_combout\ = (\counter_0|Add0~34_combout\ & (((!\counter_0|Equal0~9_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~34_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~9_combout\,
	combout => \counter_0|count~6_combout\);

-- Location: FF_X61_Y71_N7
\counter_0|comp:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[17]~q\);

-- Location: LCCOMB_X59_Y71_N6
\counter_0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~36_combout\ = (\counter_0|comp:count[18]~q\ & (\counter_0|Add0~35\ $ (GND))) # (!\counter_0|comp:count[18]~q\ & (!\counter_0|Add0~35\ & VCC))
-- \counter_0|Add0~37\ = CARRY((\counter_0|comp:count[18]~q\ & !\counter_0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[18]~q\,
	datad => VCC,
	cin => \counter_0|Add0~35\,
	combout => \counter_0|Add0~36_combout\,
	cout => \counter_0|Add0~37\);

-- Location: FF_X59_Y71_N7
\counter_0|comp:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[18]~q\);

-- Location: LCCOMB_X59_Y71_N8
\counter_0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~38_combout\ = (\counter_0|comp:count[19]~q\ & (!\counter_0|Add0~37\)) # (!\counter_0|comp:count[19]~q\ & ((\counter_0|Add0~37\) # (GND)))
-- \counter_0|Add0~39\ = CARRY((!\counter_0|Add0~37\) # (!\counter_0|comp:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[19]~q\,
	datad => VCC,
	cin => \counter_0|Add0~37\,
	combout => \counter_0|Add0~38_combout\,
	cout => \counter_0|Add0~39\);

-- Location: LCCOMB_X60_Y71_N28
\counter_0|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~5_combout\ = (\counter_0|Add0~38_combout\ & (((!\counter_0|Equal0~6_combout\) # (!\counter_0|Equal0~9_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~38_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~9_combout\,
	datad => \counter_0|Equal0~6_combout\,
	combout => \counter_0|count~5_combout\);

-- Location: FF_X60_Y71_N29
\counter_0|comp:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[19]~q\);

-- Location: LCCOMB_X59_Y71_N10
\counter_0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~40_combout\ = (\counter_0|comp:count[20]~q\ & (\counter_0|Add0~39\ $ (GND))) # (!\counter_0|comp:count[20]~q\ & (!\counter_0|Add0~39\ & VCC))
-- \counter_0|Add0~41\ = CARRY((\counter_0|comp:count[20]~q\ & !\counter_0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[20]~q\,
	datad => VCC,
	cin => \counter_0|Add0~39\,
	combout => \counter_0|Add0~40_combout\,
	cout => \counter_0|Add0~41\);

-- Location: LCCOMB_X60_Y71_N2
\counter_0|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~4_combout\ = (\counter_0|Add0~40_combout\ & (((!\counter_0|Equal0~7_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~40_combout\,
	datab => \counter_0|Equal0~9_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~7_combout\,
	combout => \counter_0|count~4_combout\);

-- Location: FF_X60_Y71_N3
\counter_0|comp:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[20]~q\);

-- Location: LCCOMB_X59_Y71_N12
\counter_0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~42_combout\ = (\counter_0|comp:count[21]~q\ & (!\counter_0|Add0~41\)) # (!\counter_0|comp:count[21]~q\ & ((\counter_0|Add0~41\) # (GND)))
-- \counter_0|Add0~43\ = CARRY((!\counter_0|Add0~41\) # (!\counter_0|comp:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[21]~q\,
	datad => VCC,
	cin => \counter_0|Add0~41\,
	combout => \counter_0|Add0~42_combout\,
	cout => \counter_0|Add0~43\);

-- Location: LCCOMB_X60_Y71_N0
\counter_0|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~3_combout\ = (\counter_0|Add0~42_combout\ & (((!\counter_0|Equal0~7_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~42_combout\,
	datab => \counter_0|Equal0~9_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~7_combout\,
	combout => \counter_0|count~3_combout\);

-- Location: FF_X60_Y71_N1
\counter_0|comp:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[21]~q\);

-- Location: LCCOMB_X59_Y71_N14
\counter_0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~44_combout\ = (\counter_0|comp:count[22]~q\ & (\counter_0|Add0~43\ $ (GND))) # (!\counter_0|comp:count[22]~q\ & (!\counter_0|Add0~43\ & VCC))
-- \counter_0|Add0~45\ = CARRY((\counter_0|comp:count[22]~q\ & !\counter_0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[22]~q\,
	datad => VCC,
	cin => \counter_0|Add0~43\,
	combout => \counter_0|Add0~44_combout\,
	cout => \counter_0|Add0~45\);

-- Location: LCCOMB_X60_Y71_N30
\counter_0|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~2_combout\ = (\counter_0|Add0~44_combout\ & (((!\counter_0|Equal0~6_combout\) # (!\counter_0|Equal0~9_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~44_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~9_combout\,
	datad => \counter_0|Equal0~6_combout\,
	combout => \counter_0|count~2_combout\);

-- Location: FF_X60_Y71_N31
\counter_0|comp:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[22]~q\);

-- Location: LCCOMB_X59_Y71_N16
\counter_0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~46_combout\ = (\counter_0|comp:count[23]~q\ & (!\counter_0|Add0~45\)) # (!\counter_0|comp:count[23]~q\ & ((\counter_0|Add0~45\) # (GND)))
-- \counter_0|Add0~47\ = CARRY((!\counter_0|Add0~45\) # (!\counter_0|comp:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[23]~q\,
	datad => VCC,
	cin => \counter_0|Add0~45\,
	combout => \counter_0|Add0~46_combout\,
	cout => \counter_0|Add0~47\);

-- Location: FF_X59_Y71_N19
\counter_0|comp:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[24]~q\);

-- Location: LCCOMB_X59_Y71_N18
\counter_0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~48_combout\ = (\counter_0|comp:count[24]~q\ & (\counter_0|Add0~47\ $ (GND))) # (!\counter_0|comp:count[24]~q\ & (!\counter_0|Add0~47\ & VCC))
-- \counter_0|Add0~49\ = CARRY((\counter_0|comp:count[24]~q\ & !\counter_0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[24]~q\,
	datad => VCC,
	cin => \counter_0|Add0~47\,
	combout => \counter_0|Add0~48_combout\,
	cout => \counter_0|Add0~49\);

-- Location: LCCOMB_X60_Y71_N4
\counter_0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~8_combout\ = (!\counter_0|Add0~32_combout\ & (\counter_0|Add0~14_combout\ & (!\counter_0|Add0~36_combout\ & !\counter_0|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~32_combout\,
	datab => \counter_0|Add0~14_combout\,
	datac => \counter_0|Add0~36_combout\,
	datad => \counter_0|Add0~48_combout\,
	combout => \counter_0|Equal0~8_combout\);

-- Location: LCCOMB_X60_Y71_N20
\counter_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~0_combout\ = (\counter_0|Add0~44_combout\ & (\counter_0|Add0~38_combout\ & (\counter_0|Add0~40_combout\ & \counter_0|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~44_combout\,
	datab => \counter_0|Add0~38_combout\,
	datac => \counter_0|Add0~40_combout\,
	datad => \counter_0|Add0~42_combout\,
	combout => \counter_0|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y71_N14
\counter_0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~9_combout\ = (\counter_0|Add0~46_combout\ & (\counter_0|Add0~50_combout\ & (\counter_0|Equal0~8_combout\ & \counter_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~46_combout\,
	datab => \counter_0|Add0~50_combout\,
	datac => \counter_0|Equal0~8_combout\,
	datad => \counter_0|Equal0~0_combout\,
	combout => \counter_0|Equal0~9_combout\);

-- Location: LCCOMB_X61_Y71_N12
\counter_0|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~7_combout\ = (\counter_0|Add0~30_combout\ & (((!\counter_0|Equal0~9_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~30_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~9_combout\,
	combout => \counter_0|count~7_combout\);

-- Location: FF_X61_Y71_N13
\counter_0|comp:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[15]~q\);

-- Location: LCCOMB_X60_Y71_N22
\counter_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~1_combout\ = (\counter_0|Add0~30_combout\ & (\counter_0|Add0~28_combout\ & (\counter_0|Add0~26_combout\ & \counter_0|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~30_combout\,
	datab => \counter_0|Add0~28_combout\,
	datac => \counter_0|Add0~26_combout\,
	datad => \counter_0|Add0~24_combout\,
	combout => \counter_0|Equal0~1_combout\);

-- Location: FF_X59_Y71_N31
\counter_0|comp:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[30]~q\);

-- Location: LCCOMB_X59_Y71_N20
\counter_0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~50_combout\ = (\counter_0|comp:count[25]~q\ & (!\counter_0|Add0~49\)) # (!\counter_0|comp:count[25]~q\ & ((\counter_0|Add0~49\) # (GND)))
-- \counter_0|Add0~51\ = CARRY((!\counter_0|Add0~49\) # (!\counter_0|comp:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[25]~q\,
	datad => VCC,
	cin => \counter_0|Add0~49\,
	combout => \counter_0|Add0~50_combout\,
	cout => \counter_0|Add0~51\);

-- Location: LCCOMB_X59_Y71_N22
\counter_0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~52_combout\ = (\counter_0|comp:count[26]~q\ & (\counter_0|Add0~51\ $ (GND))) # (!\counter_0|comp:count[26]~q\ & (!\counter_0|Add0~51\ & VCC))
-- \counter_0|Add0~53\ = CARRY((\counter_0|comp:count[26]~q\ & !\counter_0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[26]~q\,
	datad => VCC,
	cin => \counter_0|Add0~51\,
	combout => \counter_0|Add0~52_combout\,
	cout => \counter_0|Add0~53\);

-- Location: FF_X59_Y71_N23
\counter_0|comp:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[26]~q\);

-- Location: LCCOMB_X59_Y71_N24
\counter_0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~54_combout\ = (\counter_0|comp:count[27]~q\ & (!\counter_0|Add0~53\)) # (!\counter_0|comp:count[27]~q\ & ((\counter_0|Add0~53\) # (GND)))
-- \counter_0|Add0~55\ = CARRY((!\counter_0|Add0~53\) # (!\counter_0|comp:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[27]~q\,
	datad => VCC,
	cin => \counter_0|Add0~53\,
	combout => \counter_0|Add0~54_combout\,
	cout => \counter_0|Add0~55\);

-- Location: FF_X59_Y71_N25
\counter_0|comp:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[27]~q\);

-- Location: LCCOMB_X59_Y71_N26
\counter_0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~56_combout\ = (\counter_0|comp:count[28]~q\ & (\counter_0|Add0~55\ $ (GND))) # (!\counter_0|comp:count[28]~q\ & (!\counter_0|Add0~55\ & VCC))
-- \counter_0|Add0~57\ = CARRY((\counter_0|comp:count[28]~q\ & !\counter_0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[28]~q\,
	datad => VCC,
	cin => \counter_0|Add0~55\,
	combout => \counter_0|Add0~56_combout\,
	cout => \counter_0|Add0~57\);

-- Location: FF_X59_Y71_N27
\counter_0|comp:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[28]~q\);

-- Location: LCCOMB_X59_Y71_N28
\counter_0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~58_combout\ = (\counter_0|comp:count[29]~q\ & (!\counter_0|Add0~57\)) # (!\counter_0|comp:count[29]~q\ & ((\counter_0|Add0~57\) # (GND)))
-- \counter_0|Add0~59\ = CARRY((!\counter_0|Add0~57\) # (!\counter_0|comp:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[29]~q\,
	datad => VCC,
	cin => \counter_0|Add0~57\,
	combout => \counter_0|Add0~58_combout\,
	cout => \counter_0|Add0~59\);

-- Location: FF_X59_Y71_N29
\counter_0|comp:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[29]~q\);

-- Location: LCCOMB_X59_Y71_N30
\counter_0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~60_combout\ = \counter_0|comp:count[30]~q\ $ (!\counter_0|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[30]~q\,
	cin => \counter_0|Add0~59\,
	combout => \counter_0|Add0~60_combout\);

-- Location: LCCOMB_X60_Y71_N10
\counter_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~5_combout\ = (!\counter_0|Add0~54_combout\ & (!\counter_0|Add0~52_combout\ & (!\counter_0|Add0~56_combout\ & !\counter_0|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~54_combout\,
	datab => \counter_0|Add0~52_combout\,
	datac => \counter_0|Add0~56_combout\,
	datad => \counter_0|Add0~58_combout\,
	combout => \counter_0|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y71_N26
\counter_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~6_combout\ = (\counter_0|Equal0~1_combout\ & (!\counter_0|Add0~60_combout\ & (\counter_0|Add0~34_combout\ & \counter_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Equal0~1_combout\,
	datab => \counter_0|Add0~60_combout\,
	datac => \counter_0|Add0~34_combout\,
	datad => \counter_0|Equal0~5_combout\,
	combout => \counter_0|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y71_N2
\counter_0|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~11_combout\ = (\counter_0|Add0~14_combout\ & (((!\counter_0|Equal0~9_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~14_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~9_combout\,
	combout => \counter_0|count~11_combout\);

-- Location: FF_X61_Y71_N3
\counter_0|comp:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[7]~q\);

-- Location: LCCOMB_X59_Y72_N18
\counter_0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~16_combout\ = (\counter_0|comp:count[8]~q\ & (\counter_0|Add0~15\ $ (GND))) # (!\counter_0|comp:count[8]~q\ & (!\counter_0|Add0~15\ & VCC))
-- \counter_0|Add0~17\ = CARRY((\counter_0|comp:count[8]~q\ & !\counter_0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[8]~q\,
	datad => VCC,
	cin => \counter_0|Add0~15\,
	combout => \counter_0|Add0~16_combout\,
	cout => \counter_0|Add0~17\);

-- Location: FF_X59_Y72_N19
\counter_0|comp:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[8]~q\);

-- Location: LCCOMB_X59_Y72_N20
\counter_0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~18_combout\ = (\counter_0|comp:count[9]~q\ & (!\counter_0|Add0~17\)) # (!\counter_0|comp:count[9]~q\ & ((\counter_0|Add0~17\) # (GND)))
-- \counter_0|Add0~19\ = CARRY((!\counter_0|Add0~17\) # (!\counter_0|comp:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_0|comp:count[9]~q\,
	datad => VCC,
	cin => \counter_0|Add0~17\,
	combout => \counter_0|Add0~18_combout\,
	cout => \counter_0|Add0~19\);

-- Location: FF_X59_Y72_N21
\counter_0|comp:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[9]~q\);

-- Location: LCCOMB_X59_Y72_N22
\counter_0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Add0~20_combout\ = (\counter_0|comp:count[10]~q\ & (\counter_0|Add0~19\ $ (GND))) # (!\counter_0|comp:count[10]~q\ & (!\counter_0|Add0~19\ & VCC))
-- \counter_0|Add0~21\ = CARRY((\counter_0|comp:count[10]~q\ & !\counter_0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|comp:count[10]~q\,
	datad => VCC,
	cin => \counter_0|Add0~19\,
	combout => \counter_0|Add0~20_combout\,
	cout => \counter_0|Add0~21\);

-- Location: FF_X59_Y72_N23
\counter_0|comp:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[10]~q\);

-- Location: LCCOMB_X58_Y71_N14
\counter_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~4_combout\ = (!\counter_0|Add0~16_combout\ & (!\counter_0|Add0~18_combout\ & !\counter_0|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~16_combout\,
	datac => \counter_0|Add0~18_combout\,
	datad => \counter_0|Add0~20_combout\,
	combout => \counter_0|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y72_N0
\counter_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~2_combout\ = (!\counter_0|Add0~0_combout\ & (!\counter_0|Add0~6_combout\ & (!\counter_0|Add0~4_combout\ & !\counter_0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~0_combout\,
	datab => \counter_0|Add0~6_combout\,
	datac => \counter_0|Add0~4_combout\,
	datad => \counter_0|Add0~2_combout\,
	combout => \counter_0|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y71_N6
\counter_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~3_combout\ = (!\counter_0|Add0~10_combout\ & (!\counter_0|Add0~12_combout\ & (!\counter_0|Add0~8_combout\ & \counter_0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~10_combout\,
	datab => \counter_0|Add0~12_combout\,
	datac => \counter_0|Add0~8_combout\,
	datad => \counter_0|Equal0~2_combout\,
	combout => \counter_0|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y71_N24
\counter_0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|Equal0~7_combout\ = (!\counter_0|Add0~22_combout\ & (\counter_0|Equal0~4_combout\ & \counter_0|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~22_combout\,
	datac => \counter_0|Equal0~4_combout\,
	datad => \counter_0|Equal0~3_combout\,
	combout => \counter_0|Equal0~7_combout\);

-- Location: LCCOMB_X61_Y71_N4
\counter_0|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|count~0_combout\ = (\counter_0|Add0~50_combout\ & (((!\counter_0|Equal0~9_combout\) # (!\counter_0|Equal0~6_combout\)) # (!\counter_0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~50_combout\,
	datab => \counter_0|Equal0~7_combout\,
	datac => \counter_0|Equal0~6_combout\,
	datad => \counter_0|Equal0~9_combout\,
	combout => \counter_0|count~0_combout\);

-- Location: FF_X61_Y71_N5
\counter_0|comp:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|comp:count[25]~q\);

-- Location: LCCOMB_X58_Y71_N30
\counter_0|clock_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~3_combout\ = (\counter_0|clock_out~q\ & (\counter_0|Add0~50_combout\ & \counter_0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|clock_out~q\,
	datac => \counter_0|Add0~50_combout\,
	datad => \counter_0|Add0~46_combout\,
	combout => \counter_0|clock_out~3_combout\);

-- Location: LCCOMB_X58_Y71_N20
\counter_0|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan1~0_combout\ = (\counter_0|Add0~22_combout\) # (((\counter_0|Add0~14_combout\ & !\counter_0|Equal0~3_combout\)) # (!\counter_0|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~22_combout\,
	datab => \counter_0|Add0~14_combout\,
	datac => \counter_0|Equal0~4_combout\,
	datad => \counter_0|Equal0~3_combout\,
	combout => \counter_0|LessThan1~0_combout\);

-- Location: LCCOMB_X58_Y71_N24
\counter_0|clock_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~4_combout\ = (\counter_0|Add0~34_combout\ & ((\counter_0|Add0~32_combout\) # ((\counter_0|Equal0~1_combout\ & \counter_0|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~32_combout\,
	datab => \counter_0|Add0~34_combout\,
	datac => \counter_0|Equal0~1_combout\,
	datad => \counter_0|LessThan1~0_combout\,
	combout => \counter_0|clock_out~4_combout\);

-- Location: LCCOMB_X58_Y71_N18
\counter_0|clock_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~5_combout\ = (\counter_0|clock_out~3_combout\ & (\counter_0|Equal0~0_combout\ & ((\counter_0|Add0~36_combout\) # (\counter_0|clock_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|clock_out~3_combout\,
	datab => \counter_0|Equal0~0_combout\,
	datac => \counter_0|Add0~36_combout\,
	datad => \counter_0|clock_out~4_combout\,
	combout => \counter_0|clock_out~5_combout\);

-- Location: LCCOMB_X58_Y71_N10
\counter_0|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~0_combout\ = (\counter_0|Add0~52_combout\) # ((\counter_0|Add0~54_combout\) # ((\counter_0|Add0~50_combout\ & \counter_0|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~50_combout\,
	datab => \counter_0|Add0~48_combout\,
	datac => \counter_0|Add0~52_combout\,
	datad => \counter_0|Add0~54_combout\,
	combout => \counter_0|clock_out~0_combout\);

-- Location: LCCOMB_X58_Y71_N12
\counter_0|clock_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~1_combout\ = (\counter_0|Add0~56_combout\) # (\counter_0|clock_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_0|Add0~56_combout\,
	datad => \counter_0|clock_out~0_combout\,
	combout => \counter_0|clock_out~1_combout\);

-- Location: LCCOMB_X58_Y71_N28
\counter_0|clock_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~2_combout\ = (\counter_0|clock_out~q\ & ((\counter_0|Add0~58_combout\) # ((\counter_0|Add0~60_combout\) # (\counter_0|clock_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~58_combout\,
	datab => \counter_0|Add0~60_combout\,
	datac => \counter_0|clock_out~q\,
	datad => \counter_0|clock_out~1_combout\,
	combout => \counter_0|clock_out~2_combout\);

-- Location: LCCOMB_X58_Y71_N4
\counter_0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~1_combout\ = (\counter_0|Add0~12_combout\ & ((\counter_0|Add0~10_combout\) # ((\counter_0|Add0~8_combout\) # (!\counter_0|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~10_combout\,
	datab => \counter_0|Add0~12_combout\,
	datac => \counter_0|Add0~8_combout\,
	datad => \counter_0|Equal0~2_combout\,
	combout => \counter_0|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y71_N26
\counter_0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~0_combout\ = (\counter_0|Add0~22_combout\ & (\counter_0|Add0~24_combout\ & (\counter_0|Add0~28_combout\ & \counter_0|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~22_combout\,
	datab => \counter_0|Add0~24_combout\,
	datac => \counter_0|Add0~28_combout\,
	datad => \counter_0|Add0~26_combout\,
	combout => \counter_0|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y71_N16
\counter_0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~2_combout\ = (\counter_0|Add0~16_combout\) # ((\counter_0|Add0~18_combout\) # ((\counter_0|Add0~14_combout\) # (\counter_0|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~16_combout\,
	datab => \counter_0|Add0~18_combout\,
	datac => \counter_0|Add0~14_combout\,
	datad => \counter_0|Add0~20_combout\,
	combout => \counter_0|LessThan0~2_combout\);

-- Location: LCCOMB_X58_Y71_N0
\counter_0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~3_combout\ = (\counter_0|Add0~32_combout\ & (\counter_0|LessThan0~0_combout\ & ((\counter_0|LessThan0~1_combout\) # (\counter_0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~32_combout\,
	datab => \counter_0|LessThan0~1_combout\,
	datac => \counter_0|LessThan0~0_combout\,
	datad => \counter_0|LessThan0~2_combout\,
	combout => \counter_0|LessThan0~3_combout\);

-- Location: LCCOMB_X58_Y71_N8
\counter_0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~4_combout\ = (\counter_0|Add0~34_combout\) # ((\counter_0|LessThan0~3_combout\) # ((\counter_0|Add0~32_combout\ & \counter_0|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~32_combout\,
	datab => \counter_0|Add0~34_combout\,
	datac => \counter_0|Add0~30_combout\,
	datad => \counter_0|LessThan0~3_combout\,
	combout => \counter_0|LessThan0~4_combout\);

-- Location: LCCOMB_X58_Y71_N22
\counter_0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~5_combout\ = (\counter_0|Add0~36_combout\ & (\counter_0|Equal0~0_combout\ & (\counter_0|LessThan0~4_combout\ & \counter_0|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~36_combout\,
	datab => \counter_0|Equal0~0_combout\,
	datac => \counter_0|LessThan0~4_combout\,
	datad => \counter_0|Add0~48_combout\,
	combout => \counter_0|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y71_N8
\counter_0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~6_combout\ = (\counter_0|Add0~46_combout\ & \counter_0|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_0|Add0~46_combout\,
	datad => \counter_0|Add0~48_combout\,
	combout => \counter_0|LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y71_N16
\counter_0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|LessThan0~7_combout\ = (\counter_0|Add0~50_combout\) # ((\counter_0|Add0~60_combout\) # ((\counter_0|LessThan0~6_combout\) # (!\counter_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|Add0~50_combout\,
	datab => \counter_0|Add0~60_combout\,
	datac => \counter_0|LessThan0~6_combout\,
	datad => \counter_0|Equal0~5_combout\,
	combout => \counter_0|LessThan0~7_combout\);

-- Location: LCCOMB_X58_Y71_N2
\counter_0|clock_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_0|clock_out~6_combout\ = (\counter_0|clock_out~5_combout\) # ((\counter_0|clock_out~2_combout\) # ((!\counter_0|LessThan0~5_combout\ & !\counter_0|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0|clock_out~5_combout\,
	datab => \counter_0|clock_out~2_combout\,
	datac => \counter_0|LessThan0~5_combout\,
	datad => \counter_0|LessThan0~7_combout\,
	combout => \counter_0|clock_out~6_combout\);

-- Location: FF_X58_Y71_N3
\counter_0|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_0|clock_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0|clock_out~q\);

-- Location: CLKCTRL_G14
\counter_0|clock_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_0|clock_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_0|clock_out~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X91_Y69_N2
\rotate_0|s_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~1_combout\ = (\SW[0]~input_o\ & (\rotate_0|s_a\(0))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rotate_0|s_a\(0),
	datad => \rotate_0|s_a\(2),
	combout => \rotate_0|s_a~1_combout\);

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

-- Location: FF_X91_Y69_N3
\rotate_0|s_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(1));

-- Location: LCCOMB_X91_Y69_N28
\rotate_0|s_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~2_combout\ = (\SW[0]~input_o\ & (\rotate_0|s_a\(1))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rotate_0|s_a\(1),
	datad => \rotate_0|s_a\(3),
	combout => \rotate_0|s_a~2_combout\);

-- Location: FF_X91_Y69_N29
\rotate_0|s_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(2));

-- Location: LCCOMB_X91_Y69_N18
\rotate_0|s_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~3_combout\ = (\SW[0]~input_o\ & (\rotate_0|s_a\(2))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate_0|s_a\(2),
	datac => \SW[0]~input_o\,
	datad => \rotate_0|s_a\(4),
	combout => \rotate_0|s_a~3_combout\);

-- Location: FF_X91_Y69_N19
\rotate_0|s_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(3));

-- Location: LCCOMB_X91_Y69_N12
\rotate_0|s_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~4_combout\ = (\SW[0]~input_o\ & (\rotate_0|s_a\(3))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate_0|s_a\(3),
	datac => \SW[0]~input_o\,
	datad => \rotate_0|s_a\(5),
	combout => \rotate_0|s_a~4_combout\);

-- Location: FF_X91_Y69_N13
\rotate_0|s_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(4));

-- Location: LCCOMB_X91_Y69_N6
\rotate_0|s_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~5_combout\ = (\SW[0]~input_o\ & ((\rotate_0|s_a\(4)))) # (!\SW[0]~input_o\ & (!\rotate_0|s_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rotate_0|s_a\(6),
	datad => \rotate_0|s_a\(4),
	combout => \rotate_0|s_a~5_combout\);

-- Location: FF_X91_Y69_N7
\rotate_0|s_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(5));

-- Location: LCCOMB_X91_Y69_N8
\rotate_0|s_a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~6_combout\ = (\SW[0]~input_o\ & (!\rotate_0|s_a\(5))) # (!\SW[0]~input_o\ & ((!\rotate_0|s_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate_0|s_a\(5),
	datab => \SW[0]~input_o\,
	datad => \rotate_0|s_a\(7),
	combout => \rotate_0|s_a~6_combout\);

-- Location: FF_X91_Y69_N9
\rotate_0|s_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(6));

-- Location: LCCOMB_X91_Y69_N10
\rotate_0|s_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~7_combout\ = (\SW[0]~input_o\ & (!\rotate_0|s_a\(6))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rotate_0|s_a\(6),
	datad => \rotate_0|s_a\(0),
	combout => \rotate_0|s_a~7_combout\);

-- Location: FF_X91_Y69_N11
\rotate_0|s_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~7_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(7));

-- Location: LCCOMB_X91_Y69_N20
\rotate_0|s_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotate_0|s_a~0_combout\ = (\SW[0]~input_o\ & (\rotate_0|s_a\(7))) # (!\SW[0]~input_o\ & ((\rotate_0|s_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rotate_0|s_a\(7),
	datad => \rotate_0|s_a\(1),
	combout => \rotate_0|s_a~0_combout\);

-- Location: FF_X91_Y69_N21
\rotate_0|s_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_0|clock_out~clkctrl_outclk\,
	d => \rotate_0|s_a~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotate_0|s_a\(0));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


